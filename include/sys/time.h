/* ------------------------------------------------------------------
 * ES Lib - Portable Minimalist C Library
 * ------------------------------------------------------------------ */

#include <eslib.h>

#ifndef ESLIB_SYS_TIME_H
#define ESLIB_SYS_TIME_H

struct timeval
{
    time_t tv_sec;              /* seconds */
    suseconds_t tv_usec;        /* microseconds */
};

struct timezone
{
    int tz_minuteswest;         /* minutes west of Greenwich */
    int tz_dsttime;             /* type of DST correction */
};

int gettimeofday ( struct timeval *tv, struct timezone *tz );
int settimeofday ( const struct timeval *tv, const struct timezone *tz );

#endif
