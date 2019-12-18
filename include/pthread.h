/* ------------------------------------------------------------------
 * ES Lib - Portable Minimalist C Library
 * ------------------------------------------------------------------ */

#include <eslib.h>

#ifndef ESLIB_PTHREAD_H
#define ESLIB_PTHREAD_H

typedef long pthread_t;
typedef void pthread_attr_t;
typedef void *( *start_routine_t ) ( void * );

int pthread_create ( pthread_t * thread, const pthread_attr_t * attr, start_routine_t start_routine,
    void *arg );

#endif
