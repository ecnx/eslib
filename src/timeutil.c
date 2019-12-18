/* ------------------------------------------------------------------
 * ES Lib - Portable Minimalist C Library
 * ------------------------------------------------------------------ */

#include <stdio.h>
#include <string.h>
#include <time.h>

static int padnum2 ( char *s, size_t max, unsigned int num )
{
    if ( max < 2 )
    {
        return -1;
    }

    if ( num < 10 )
    {
        *s++ = '0';
    }

    snprintf ( s, max, "%u", num );
    return 0;
}

size_t strftime ( char *str, size_t max, const char *format, const struct tm * tm )
{
    size_t len;
    unsigned int value;

    if ( !max )
    {
        return 0;
    }

    for ( str[0] = '\0'; *format; format++ )
    {
        len = strlen ( str );
        if ( *format != '%' )
        {
            if ( len + 1 >= max )
            {
                return -1;
            }
            str[len++] = *format;
            str[len] = '\0';
            continue;
        }

        if ( !format[1] )
        {
            return -1;
        }

        switch ( *++format )
        {
        case 'Y':
            value = tm->tm_year + 1900;
            break;
        case 'm':
            value = tm->tm_mon + 1;
            break;
        case 'd':
            value = tm->tm_mday;
            break;
        case 'H':
            value = tm->tm_hour;
            break;
        case 'M':
            value = tm->tm_min;
            break;
        case 'S':
            value = tm->tm_sec;
            break;
        default:
            if ( len + 1 >= max )
            {
                return 0;
            }
            str[len++] = *format;
            str[len] = '\0';
            continue;
        }

        if ( padnum2 ( str + len, max - len, value ) < 0 )
        {
            return 0;
        }
    }

    return strlen ( str );
}

struct tm *gmtime_r ( const time_t * timep, struct tm *result )
{
    time_t time = *timep;
    long day, mins, secs, year, leap;
    day = time / ( 24L * 60 * 60 );
    secs = time % ( 24L * 60 * 60 );
    result->tm_sec = secs % 60;
    mins = secs / 60;
    result->tm_hour = mins / 60;
    result->tm_min = mins % 60;
    result->tm_wday = ( day + 4 ) % 7;
    year = ( ( ( day * 4 ) + 2 ) / 1461 );
    result->tm_year = year + 70;
    leap = !( result->tm_year & 3 );
    day -= ( ( year * 1461 ) + 1 ) / 4;
    result->tm_yday = day;
    day += ( day > 58 + leap ) ? ( ( leap ) ? 1 : 2 ) : 0;
    result->tm_mon = ( ( day * 12 ) + 6 ) / 367;
    result->tm_mday = day + 1 - ( ( result->tm_mon * 367 ) + 5 ) / 12;
    result->tm_isdst = 0;
    return result;
}

struct tm *localtime_r ( const time_t * timep, struct tm *result )
{
    return gmtime_r ( timep, result );
}
