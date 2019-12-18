/* ------------------------------------------------------------------
 * ES Libc - Portable Minimalist C Library
 * ------------------------------------------------------------------ */

#include <errno.h>
#include <fcntl.h>
#include <stdarg.h>
#include <string.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <unistd.h>
#include <stdio.h>

extern void *malloc ( size_t len );
extern void free ( void *addr );

struct eslib_file *fopen ( const char *pathname, const char *mode )
{
    int noplus;
    struct eslib_file *file;

    mode_t open_mode;

    noplus = !strchr ( mode, '+' );

    if ( strchr ( mode, 'r' ) )
    {
        open_mode = noplus ? O_RDONLY : O_RDWR;

    } else if ( strchr ( mode, 'w' ) )
    {
        open_mode = O_CREAT | O_TRUNC | ( noplus ? O_WRONLY : O_RDWR );

    } else if ( strchr ( mode, 'a' ) )
    {
        open_mode = O_CREAT | O_APPEND | ( noplus ? O_WRONLY : O_RDWR );

    } else
    {
        errno = EINVAL;
        return NULL;
    }

    if ( !( file = ( struct eslib_file * ) malloc ( sizeof ( struct eslib_file ) ) ) )
    {
        errno = ENOMEM;
        return NULL;
    }

    if ( ( file->fd = open ( pathname, open_mode, 0644 ) ) < 0 )
    {
        free ( file );
        return NULL;
    }

    return file;
}

extern int vsnprintf ( char *str, size_t size, const char *format, va_list ap );

int fprintf ( struct eslib_file *stream, const char *format, ... )
{
    int ret;
    char str[32768];
    va_list argp;
    va_start ( argp, format );
    if ( ( ret = vsnprintf ( str, sizeof ( str ), format, argp ) ) < 0 )
    {
        va_end ( argp );
        return ret;
    }
    va_end ( argp );
    if ( write ( stream->fd, str, strlen ( str ) ) < 0 )
    {
        return -1;
    }
    return ret;
}

size_t fread ( void *ptr, size_t size, size_t nmemb, struct eslib_file * stream )
{
    ssize_t ret;

    if ( ( ret = read ( stream->fd, ptr, size * nmemb ) ) < 0 )
    {
        return 0;
    }

    return ret / size;
}

size_t fwrite ( const void *ptr, size_t size, size_t nmemb, struct eslib_file * stream )
{
    ssize_t ret;

    if ( ( ret = write ( stream->fd, ptr, size * nmemb ) ) < 0 )
    {
        return 0;
    }

    return ret / size;
}

void setbuf ( struct eslib_file *stream, char *buf )
{
    UNUSED ( stream );
    UNUSED ( buf );
}

int fflush ( struct eslib_file *stream )
{
    UNUSED ( stream );
    return 0;
}

int _IO_putc ( int c, struct eslib_file *stream )
{
    char c1 = ( char ) c;

    write ( stream->fd, &c1, 1 );

    return c;
}

int fputs ( const char *s, struct eslib_file *stream )
{
    return write ( stream->fd, s, strlen ( s ) ) < 0 ? -1 : 0;
}

int fseek ( struct eslib_file *stream, long offset, int whence )
{
    return lseek ( stream->fd, offset, whence ) < 0 ? -1 : 0;
}

long ftell ( struct eslib_file *stream )
{
    return lseek ( stream->fd, 0L, SEEK_CUR );
}

void rewind ( struct eslib_file *stream )
{
    lseek ( stream->fd, 0L, SEEK_SET );
}

int fclose ( struct eslib_file *stream )
{
    return close ( stream->fd ) < 0 ? -1 : 0;
}

int remove ( const char *file )
{
    return unlink ( file ) < 0 ? rmdir ( file ) : 0;
}

static struct eslib_file eslib_stdin = { 0 };

struct eslib_file *stdin = &eslib_stdin;

static struct eslib_file eslib_stdout = { 1 };

struct eslib_file *stdout = &eslib_stdout;

static struct eslib_file eslib_stderr = { 2 };

struct eslib_file *stderr = &eslib_stderr;
