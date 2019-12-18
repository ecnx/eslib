/* ------------------------------------------------------------------
 * ES Lib - Portable Minimalist C Library
 * ------------------------------------------------------------------ */

#include <eslib.h>

#ifndef ESLIB_STDDEF_H
#define ESLIB_STDDEF_H

#define NULL ((void*) 0)

typedef long off_t;
typedef unsigned long size_t;
typedef long ssize_t;
typedef unsigned long time_t;
typedef int suseconds_t;
typedef unsigned int useconds_t;
typedef unsigned int mode_t;
typedef unsigned int ino_t;
typedef int pid_t;
typedef long dev_t;
typedef long nfds_t;
typedef unsigned long socklen_t;
typedef unsigned short sa_family_t;

#endif
