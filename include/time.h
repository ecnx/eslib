/* ------------------------------------------------------------------
 * ES Lib - Portable Minimalist C Library
 * ------------------------------------------------------------------ */

#include <eslib.h>
#include <stddef.h>

#ifndef ESLIB_TIME_H
#define ESLIB_TIME_H

struct tm
{
    int tm_sec;                 /* Seconds (0-60) */
    int tm_min;                 /* Minutes (0-59) */
    int tm_hour;                /* Hours (0-23) */
    int tm_mday;                /* Day of the month (1-31) */
    int tm_mon;                 /* Month (0-11) */
    int tm_year;                /* Year - 1900 */
    int tm_wday;                /* Day of the week (0-6, Sunday = 0) */
    int tm_yday;                /* Day in the year (0-365, 1 Jan = 0) */
    int tm_isdst;               /* Daylight saving time */
};

struct timespec
{
    time_t tv_sec;              /* seconds */
    long tv_nsec;               /* nanoseconds */
};

int nanosleep ( const struct timespec *req, struct timespec *rem );
time_t time ( time_t * tloc );
struct tm *gmtime_r ( const time_t * timep, struct tm *result );
struct tm *localtime_r ( const time_t * timep, struct tm *result );
size_t strftime ( char *s, size_t max, const char *format, const struct tm *tm );

#endif
