/* ------------------------------------------------------------------
 * ES Lib - Portable Minimalist C Library
 * ------------------------------------------------------------------ */

#include <eslib.h>
#include <stddef.h>
#include <stdarg.h>

#ifndef ESLIB_STDIO_H
#define ESLIB_STDIO_H

struct eslib_file
{
    int fd;
};

typedef struct eslib_file FILE;

int printf ( const char *format, ... );
int snprintf ( char *str, size_t size, const char *format, ... );
int vsnprintf ( char *str, size_t size, const char *format, va_list ap );
int vsscanf ( const char *s, const char *format, va_list argp );
int sscanf ( const char *s, const char *format, ... );
long strtol ( const char *nptr, char **endptr, int base );
void perror ( const char *s );
int putchar ( int c );
int puts ( const char *s );
int rename ( const char *oldpath, const char *newpath );
void setbuf ( FILE * stream, char *buf );
struct eslib_file *fopen ( const char *pathname, const char *mode );
int fprintf ( struct eslib_file *stream, const char *format, ... );
size_t fread ( void *ptr, size_t size, size_t nmemb, struct eslib_file *stream );
size_t fwrite ( const void *ptr, size_t size, size_t nmemb, struct eslib_file *stream );
void setbuf ( struct eslib_file *stream, char *buf );
int fflush ( struct eslib_file *stream );
int _IO_putc ( int c, struct eslib_file *stream );
int fputs ( const char *s, struct eslib_file *stream );
int fseek ( struct eslib_file *stream, long offset, int whence );
long ftell ( struct eslib_file *stream );
void rewind ( struct eslib_file *stream );
int fclose ( struct eslib_file *stream );
int remove ( const char *file );

extern struct eslib_file *stdin;
extern struct eslib_file *stdout;
extern struct eslib_file *stderr;

#endif
