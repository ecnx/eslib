/* ------------------------------------------------------------------
 * ES Libc - Portable Minimalist C Library
 * ------------------------------------------------------------------ */

#include <string.h>
#include <stdlib.h>

#if ARCH != MIPS && ARCH != ARM && ARCH != x86_64
size_t strlen ( register const char *s )
{
    register const char *limit;

    for ( limit = s; *limit; ++limit );

    return limit - s;
}
#endif

int strcmp ( register const char *s1, register const char *s2 )
{
    register unsigned char c1, c2;

    do
    {
        c1 = *( ( const unsigned char * ) s1++ );
        c2 = *( ( const unsigned char * ) s2++ );
    }
    while ( c1 && c1 == c2 );

    return c1 - c2;
}

int strncmp ( register const char *s1, register const char *s2, size_t n )
{
    register unsigned char c1, c2;

    if ( !n )
    {
        return 0;
    }

    do
    {
        c1 = *( ( const unsigned char * ) s1++ );
        c2 = *( ( const unsigned char * ) s2++ );
    }
    while ( c1 && c1 == c2 && --n );

    return c1 - c2;
}

void *memmove ( void *dest, const void *src, size_t n )
{
    void *temp;

    if ( !( temp = malloc ( n ) ) )
    {
        return NULL;
    }

    memcpy ( temp, src, n );
    memcpy ( dest, temp, n );
    free ( temp );

    return dest;
}

int memcmp ( const void *s1, const void *s2, size_t n )
{
    register const unsigned char *r_s1 = ( const unsigned char * ) s1;
    register const unsigned char *r_s2 = ( const unsigned char * ) s2;

    while ( n-- )
    {
        if ( *r_s1++ != *r_s2++ )
        {
            return r_s1[-1] < r_s2[-1] ? -1 : 1;
        }
    }

    return 0;
}

char *strchr ( const char *s, int c )
{
    while ( *s )
    {
        if ( *s == c )
        {
            return ( char * ) s;
        }

        s++;
    }

    return NULL;
}

char *strrchr ( const char *s, int c )
{
    size_t i;

    for ( i = strlen ( s ); i--; )
    {
        if ( s[i] == c )
        {
            return ( char * ) ( s + i );
        }
    }

    return NULL;
}

char *strstr ( const char *haystack, const char *needle )
{
    size_t i;
    size_t j;
    size_t haystack_len;
    size_t needle_len;

    haystack_len = strlen ( haystack );
    needle_len = strlen ( needle );

    if ( needle_len > haystack_len )
    {
        return NULL;
    }

    haystack_len -= needle_len;

    for ( i = 0; i <= haystack_len; i++ )
    {
        for ( j = 0; j < needle_len; j++ )
        {
            if ( haystack[i + j] != needle[j] )
            {
                break;
            }
        }

        if ( j == needle_len )
        {
            return ( char * ) ( haystack + i );
        }
    }

    return NULL;
}

char *strncpy ( char *dest, const char *src, size_t n )
{
    size_t i;

    for ( i = 0; i < n && src[i] != '\0'; i++ )
    {
        dest[i] = src[i];
    }

    while ( i < n )
    {
        dest[i++] = '\0';
    }

    return dest;
}

char *strcpy ( char *dest, const char *src )
{
    return memcpy ( dest, src, strlen ( src ) + 1 );
}

#if ARCH != MIPS && ARCH != ARM && ARCH != x86_64
void *memcpy ( void *dest, const void *src, size_t n )
{
    while ( n-- )
    {
        *( ( unsigned char * ) dest++ ) = *( ( const unsigned char * ) src++ );
    }
    return dest;
}
#endif

#if ARCH != MIPS && ARCH != ARM && ARCH != x86_64
void __attribute__ ( ( optimize ( "O0" ) ) ) * memset ( void *s, register int c, register size_t n )
{
    register unsigned char *ptr = ( unsigned char * ) s;
    while ( n-- )
    {
        *( unsigned char * ) ptr++ = c;
    }
    return s;
}
#endif
