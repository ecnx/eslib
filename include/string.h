/* ------------------------------------------------------------------
 * ES Lib - Portable Minimalist C Library
 * ------------------------------------------------------------------ */

#include <eslib.h>
#include <stddef.h>

#ifndef ESLIB_STRING_H
#define ESLIB_STRING_H

size_t strlen ( register const char *s );
int strcmp ( register const char *s1, register const char *s2 );
int strncmp ( register const char *s1, register const char *s2, size_t n );
void *memmove ( void *dest, const void *src, size_t n );
int memcmp ( const void *s1, const void *s2, size_t n );
char *strchr ( const char *s, int c );
char *strrchr ( const char *s, int c );
char *strstr ( const char *haystack, const char *needle );
char *strncpy ( char *dest, const char *src, size_t n );
char *strcpy ( char *dest, const char *src );
void *memcpy ( void *dest, const void *src, size_t n );
void *memset ( void *s, int c, size_t n );
char *strerror ( int errnum );

#endif
