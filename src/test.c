/* ------------------------------------------------------------------
 * ES Lib - Portable Minimalist C Library
 * ------------------------------------------------------------------ */

#include <stdio.h>
#include <ctype.h>
#include <errno.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <string.h>

#define ASSERT(X) if (!(X)) { test_status = __LINE__; return; }

static int test_status;

void test_tolower ( void )
{
    ASSERT ( tolower ( 'A' ) == 'a' );
    ASSERT ( tolower ( '0' ) == '0' );
    ASSERT ( tolower ( 'f' ) == 'f' );
    ASSERT ( tolower ( 'L' ) == 'l' );
}

void test_toupper ( void )
{
    ASSERT ( toupper ( 'a' ) == 'A' );
    ASSERT ( toupper ( '7' ) == '7' );
    ASSERT ( toupper ( 'F' ) == 'F' );
    ASSERT ( toupper ( 'l' ) == 'L' );
}

void test_errno ( void )
{
    int fd;

    fd = open ( "/dev/null", O_RDONLY );
    ASSERT ( fd > 0 );
    close ( fd );

    ASSERT ( open ( "/proc/nonexistent", O_RDONLY ) < 0 );
    ASSERT ( errno == ENOENT );

    ASSERT ( read ( 256, &fd, sizeof ( fd ) ) < 0 );
    ASSERT ( errno == EBADF );
}

void test_file ( void )
{
    FILE *file;
    char data[] = { 1, 2, 3, 4 };
    char data2[4];
    char data3[4];

    file = fopen ( "/tmp/testfile", "w+" );
    ASSERT ( file != NULL );
    ASSERT ( fwrite ( data, sizeof ( char ), sizeof ( data ), file ) == 4 );
    rewind ( file );
    ASSERT ( fread ( data2, sizeof ( char ), sizeof ( data2 ), file ) == 4 );
    ASSERT ( memcmp ( data, data2, sizeof ( data ) ) == 0 );
    ASSERT ( fseek ( file, 1, SEEK_SET ) == 0 );
    ASSERT ( ftell ( file ) == 1 );
    ASSERT ( fread ( data3, sizeof ( char ), 2, file ) == 2 );
    ASSERT ( data3[0] == 2 && data3[1] == 3 );
    fclose ( file );
    ASSERT ( remove ( "/tmp/testfile" ) >= 0 );
    file = fopen ( "/tmp/testfile", "r" );
    ASSERT ( file == NULL );
    ASSERT ( errno == ENOENT );

    file = fopen ( "/tmp/testfile", "w+" );
    ASSERT ( file != NULL );
    ASSERT ( fwrite ( data, sizeof ( char ), sizeof ( data ), file ) == 4 );
    fclose ( file );
    file = fopen ( "/tmp/testfile", "a+" );
    ASSERT ( fwrite ( data, sizeof ( char ), sizeof ( data ), file ) == 4 );
    ASSERT ( file != NULL );
    ASSERT ( ftell ( file ) == 8 );
    fclose ( file );
}

void test_snprintf ( void )
{
    char str[2048];
    ASSERT ( snprintf ( str, sizeof ( str ), "%u", 1872 ) > 0 );
    ASSERT ( strcmp ( str, "1872" ) == 0 );
    ASSERT ( snprintf ( str, 7, "%u", 187282 ) == 6 );
    ASSERT ( strcmp ( str, "187282" ) == 0 );
    ASSERT ( snprintf ( str, sizeof ( str ), "%i", -36772 ) > 0 );
    ASSERT ( strcmp ( str, "-36772" ) == 0 );
    ASSERT ( snprintf ( str, sizeof ( str ), "%d-%s/%c abc %u", 1001, "epcss", 'u', 1901 ) > 0 );
    ASSERT ( strcmp ( str, "1001-epcss/u abc 1901" ) == 0 );
    ASSERT ( snprintf ( str, sizeof ( str ), "0x%x", 0xEC8172 ) > 0 );
    ASSERT ( strcmp ( str, "0xec8172" ) == 0 );
    ASSERT ( snprintf ( str, sizeof ( str ), "%o", 027152 ) > 0 );
    ASSERT ( strcmp ( str, "27152" ) == 0 );
}

void test_sscanf ( void )
{
    int value;
    ASSERT ( sscanf ( "18271", "%i", &value ) );
    ASSERT ( value == 18271 );
    ASSERT ( sscanf ( "A818C", "%x", &value ) );
    ASSERT ( value == 0xA818C );
    ASSERT ( sscanf ( "2131", "%o", &value ) );
    ASSERT ( value == 02131 );
}

void test_strerror ( void )
{
    ASSERT ( strcmp ( strerror ( ENOENT ), "No such file or directory" ) == 0 );
    ASSERT ( strcmp ( strerror ( ENOTDIR ), "Not a directory" ) == 0 );
    ASSERT ( strcmp ( strerror ( EAGAIN ), "Resource temporarily unavailable" ) == 0 );
}

void test_mem ( void )
{
    char data[6] = { 0, 8, 1, 4, 2, 9 };
    char data1[6] = { 1, 3, 8, 4, 9, 10 };
    char data2[6] = { 8, 7, 6, 3, 1, 9 };
    char data3[6] = { 8, 7, 8, 7, 6, 3 };

    memset ( data, '\0', sizeof ( data ) );
    ASSERT ( data[0] == 0 && data[1] == 0 && data[2] == 0
        && data[3] == 0 && data[4] == 0 && data[5] == 0 );

    ASSERT ( memcpy ( data, data1, sizeof ( data ) ) == data );
    ASSERT ( memcmp ( data, data1, sizeof ( data ) ) == 0 );

    ASSERT ( data[0] == data1[0] && data[1] == data1[1] && data[2] == data1[2]
        && data[3] == data1[3] && data[4] == data1[4] && data[5] == data1[5] );

    ASSERT ( memmove ( data2 + 2, data2, 4 ) == data2 + 2 )
        ASSERT ( memcmp ( data2, data3, sizeof ( data2 ) ) == 0 );
}

void test_strlen ( void )
{
    ASSERT ( strlen ( "a test" ) == 6 );
    ASSERT ( strlen ( "a bit longer test" ) == 17 );
    ASSERT ( strlen ( "" ) == 0 );
}

void test_strcmp ( void )
{
    ASSERT ( strcmp ( "one string", "one string" ) == 0 );
    ASSERT ( strcmp ( "one", "one string" ) != 0 );
    ASSERT ( strcmp ( "one string", "one" ) != 0 );
    ASSERT ( strcmp ( "ab", "ac" ) != 0 );
}

void test_strncmp ( void )
{
    ASSERT ( strncmp ( "some string", "some string", 11 ) == 0 );
    ASSERT ( strncmp ( "some string plus", "some string", 11 ) == 0 );
    ASSERT ( strncmp ( "some stXing plus", "some string", 10 ) != 0 );
}

void test_strstr ( void )
{
    const char *msg = "this is a some text for the test";
    ASSERT ( strstr ( msg, "nothing" ) == NULL );
    ASSERT ( strstr ( msg, "is" ) == msg + 2 );
    ASSERT ( strstr ( msg, "is a" ) == msg + 5 );
}

void test_strchr ( void )
{
    const char *msg = "this is a short long message for a test";
    ASSERT ( strchr ( msg, '?' ) == NULL );
    ASSERT ( strchr ( msg, 't' ) == msg );
    ASSERT ( strchr ( msg, 'h' ) == msg + 1 );
}

void test_strrchr ( void )
{
    const char *msg = "a simple test";
    ASSERT ( strrchr ( msg, 'e' ) == msg + strlen ( msg ) - 3 );
    ASSERT ( strrchr ( msg, 't' ) == msg + strlen ( msg ) - 1 );
}

void test_strncpy ( void )
{
    const char *msg = "a little test message";
    char msg2[2048];
    strncpy ( msg2, msg, sizeof ( msg2 ) );
    ASSERT ( strcmp ( msg, msg2 ) == 0 );
}

typedef void ( *testfunc ) ( void );

int main ( void )
{
    size_t i;
    size_t nfailed = 0;
    const testfunc tests[] = {
        test_tolower,
        test_toupper,
        test_errno,
        test_file,
        test_snprintf,
        test_sscanf,
        test_mem,
        test_strlen,
        test_strerror,
        test_strcmp,
        test_strncmp,
        test_strstr,
        test_strchr,
        test_strrchr,
        test_strncpy
    };

    printf ( "sizeof(off_t) = %u\n", ( unsigned int ) sizeof ( off_t ) );

    for ( i = 0; i < sizeof ( tests ) / sizeof ( testfunc ); i++ )
    {
        printf ( "Test #%lu : ", ( unsigned long ) i );
        test_status = 0;
        tests[i] (  );
        if ( test_status )
        {
            nfailed++;
            printf ( "FAILURE (at line %i)\n", test_status );
        } else
        {
            printf ( "SUCCESS\n" );
        }
    }

    if ( nfailed )
    {
        printf ( "Error: %lu test failed!\n", ( unsigned long ) nfailed );
    } else
    {
        printf ( "All tests were successful.\n" );
    }

    return 0;
}
