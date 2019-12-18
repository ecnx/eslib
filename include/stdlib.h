/* ------------------------------------------------------------------
 * ES Lib - Portable Minimalist C Library
 * ------------------------------------------------------------------ */

#include <eslib.h>
#include "stddef.h"

#ifndef ESLIB_STDLIB_H
#define ESLIB_STDLIB_H

void *malloc ( size_t size );
void free ( void *ptr );
void *calloc ( size_t nmemb, size_t size );
void *realloc ( void *ptr, size_t size );
void srand ( unsigned int seed );
int rand ( void );
char *getenv ( const char *name );

#endif
