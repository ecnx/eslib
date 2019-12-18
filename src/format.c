/* ------------------------------------------------------------------
 * ES Lib - Portable Minimalist C Library
 * ------------------------------------------------------------------ */

#include <errno.h>
#include <stdarg.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>

#if ARCH == x86_64
#define ARCH_64_BIT 1
#else
#define ARCH_64_BIT 0
#endif

static int atou_r ( const char *nptr, unsigned int *value, int base )
{
    unsigned char parsed = 0;
    unsigned int result;
    unsigned char digit;

    for ( result = 0; *nptr; nptr++ )
    {
        if ( *nptr >= '0' && *nptr <= '9' )
        {
            digit = *nptr - '0';

        } else if ( base == 16 && *nptr >= 'A' && *nptr <= 'F' )
        {
            digit = *nptr - 'A' + 10;

        } else if ( base == 16 && *nptr >= 'a' && *nptr <= 'f' )
        {
            digit = *nptr - 'a' + 10;

        } else if ( parsed )
        {
            break;

        } else
        {
            return -1;
        }

        result = ( result * base ) + digit;
        parsed = 1;
    }

    *value = result;
    return parsed ? 1 : -1;
}

static int atoi_r ( const char *nptr, int *value )
{
    unsigned char parsed = 0;
    unsigned char neg = 0;
    int result;

    if ( *nptr == '-' )
    {
        neg = 1;
        nptr++;
    }

    for ( result = 0; *nptr; nptr++ )
    {
        if ( *nptr >= '0' && *nptr <= '9' )
        {
            result = ( result * 10 ) + *nptr - '0';
            parsed = 1;

        } else if ( parsed )
        {
            break;

        } else
        {
            return -1;
        }
    }

    *value = neg ? -result : result;
    return parsed ? 1 : -1;
}

#if ARCH_64_BIT == 1
static int atolu_r ( const char *nptr, unsigned long *value, int base )
{
    unsigned char parsed = 0;
    unsigned long result;
    unsigned char digit;

    for ( result = 0; *nptr; nptr++ )
    {
        if ( *nptr >= '0' && *nptr <= '9' )
        {
            digit = *nptr - '0';

        } else if ( base == 16 && *nptr >= 'A' && *nptr <= 'F' )
        {
            digit = *nptr - 'A' + 10;

        } else if ( base == 16 && *nptr >= 'a' && *nptr <= 'f' )
        {
            digit = *nptr - 'a' + 10;

        } else if ( parsed )
        {
            break;

        } else
        {
            return -1;
        }

        result = ( result * base ) + digit;
        parsed = 1;
    }

    *value = result;
    return parsed ? 1 : -1;
}
#endif

#if ARCH_64_BIT == 1
static int atoli_r ( const char *nptr, long *value )
{
    unsigned char parsed = 0;
    unsigned char neg = 0;
    long result;

    if ( *nptr == '-' )
    {
        neg = 1;
        nptr++;
    }

    for ( result = 0; *nptr; nptr++ )
    {
        if ( *nptr >= '0' && *nptr <= '9' )
        {
            result = ( result * 10 ) + *nptr - '0';
            parsed = 1;

        } else if ( parsed )
        {
            break;

        } else
        {
            return -1;
        }
    }

    *value = neg ? -result : result;
    return parsed ? 1 : -1;
}
#endif

static void strrev ( char *str )
{
    size_t i;
    size_t j;
    char a;
    size_t len;

    len = strlen ( str );
    for ( i = 0, j = len - 1; i < j; i++, j-- )
    {
        a = str[i];
        str[i] = str[j];
        str[j] = a;
    }
}

static int utoa_r ( unsigned int sum, char *str, int len, int base )
{
    int i = 0;
    unsigned char digit;

    if ( !len )
    {
        return -1;
    }

    do
    {
        if ( ( digit = sum % base ) < 0xA )
        {
            str[i++] = '0' + digit;
        } else
        {
            str[i++] = 'a' + digit - 0xA;
        }
        sum /= base;

    } while ( sum && i + 1 < len );

    if ( i + 1 == len && sum )
    {
        return -1;
    }

    str[i] = '\0';
    strrev ( str );
    return 0;
}

static int itoa_r ( int sum, char *str, int len )
{
    int i = 0;
    unsigned char digit;

    if ( !len )
    {
        return -1;
    }

    if ( sum < 0 )
    {
        *( str++ ) = '-';
        if ( !--len )
        {
            return -1;
        }
        sum = -sum;
    }

    do
    {
        digit = sum % 10;
        if ( digit < 0xA )
        {
            str[i++] = '0' + digit;
        } else
        {
            str[i++] = 'A' + digit - 0xA;
        }
        sum /= 10;

    } while ( sum && i + 1 < len );

    if ( i + 1 == len && sum )
    {
        return -1;
    }

    str[i] = '\0';
    strrev ( str );
    return 0;
}

#if ARCH_64_BIT == 1
static int lutoa_r ( unsigned long sum, char *str, int len, int base )
{
    int i = 0;
    unsigned char digit;

    if ( !len )
    {
        return -1;
    }

    do
    {
        if ( ( digit = sum % base ) < 0xA )
        {
            str[i++] = '0' + digit;
        } else
        {
            str[i++] = 'a' + digit - 0xA;
        }
        sum /= base;

    } while ( sum && i + 1 < len );

    if ( i + 1 == len && sum )
    {
        return -1;
    }

    str[i] = '\0';
    strrev ( str );
    return 0;
}
#endif

#if ARCH_64_BIT == 1
static int litoa_r ( long sum, char *str, int len )
{
    int i = 0;
    unsigned char digit;

    if ( !len )
    {
        return -1;
    }

    if ( sum < 0 )
    {
        *( str++ ) = '-';
        if ( !--len )
        {
            return -1;
        }
        sum = -sum;
    }

    do
    {
        digit = sum % 10;
        if ( digit < 0xA )
        {
            str[i++] = '0' + digit;
        } else
        {
            str[i++] = 'A' + digit - 0xA;
        }
        sum /= 10;

    } while ( sum && i + 1 < len );

    if ( i + 1 == len && sum )
    {
        return -1;
    }

    str[i] = '\0';
    strrev ( str );
    return 0;
}
#endif

static int snprintf_in ( char *str, size_t size, const char *format, va_list argp )
{
    char *s;
    size_t len;

    if ( !size )
    {
        return -1;
    }

    for ( str[0] = '\0'; *format; format++ )
    {
        len = strlen ( str );
        if ( *format != '%' )
        {
            if ( len + 1 >= size )
            {
                return -1;
            }
            str[len++] = *format;
            str[len] = '\0';
            continue;
        }

        format++;

        while ( ( *format >= '0' && *format <= '9' ) || *format == '-' || *format == '.' )
        {
            format++;
        }

        if ( !*format )
        {
            return -1;
        }

        switch ( *format )
        {
        case 'c':
            if ( len + 1 >= size )
            {
                return -1;
            }
            str[len++] = va_arg ( argp, int );
            str[len] = '\0';
            break;
        case 'i':
        case 'd':
            if ( itoa_r ( va_arg ( argp, unsigned int ), str + len, size - len ) < 0 )
            {
                return -1;
            }
            break;
        case 'u':
            if ( utoa_r ( va_arg ( argp, unsigned int ), str + len, size - len, 10 ) < 0 )
            {
                return -1;
            }
            break;
        case 's':
            if ( !( s = va_arg ( argp, char * ) ) )
            {
                if ( len + 6 >= size )
                {
                    return -1;
                }
                memcpy ( str + len, "(null)", 7 );
            } else
            {
                if ( len + strlen ( s ) >= size )
                {
                    return -1;
                }
                memcpy ( str + len, s, strlen ( s ) + 1 );
            }
            break;
        case 'x':
            if ( utoa_r ( va_arg ( argp, unsigned int ), str + len, size - len, 16 ) < 0 )
            {
                return -1;
            }
            break;
        case 'o':
            if ( utoa_r ( va_arg ( argp, unsigned int ), str + len, size - len, 8 ) < 0 )
            {
                return -1;
            }
            break;
        case 'l':
            if ( !*++format )
            {
                return -1;
            }
            if ( *format == 'u' )
            {
#if ARCH_64_BIT == 1
                if ( lutoa_r ( va_arg ( argp, unsigned long ), str + len, size - len, 10 ) < 0 )
                {
                    return -1;
                }
#else
                if ( utoa_r ( va_arg ( argp, unsigned int ), str + len, size - len, 10 ) < 0 )
                {
                    return -1;
                }
#endif
            } else if ( *format == 'i' || *format == 'd' )
            {
#if ARCH_64_BIT == 1
                if ( litoa_r ( va_arg ( argp, long ), str + len, size - len ) < 0 )
                {
                    return -1;
                }
#else
                if ( itoa_r ( va_arg ( argp, int ), str + len, size - len ) < 0 )
                {
                    return -1;
                }
#endif
            } else if ( *format == 'x' )
            {
#if ARCH_64_BIT == 1
                if ( lutoa_r ( va_arg ( argp, unsigned long ), str + len, size - len, 16 ) < 0 )
                {
                    return -1;
                }
#else
                if ( utoa_r ( va_arg ( argp, unsigned int ), str + len, size - len, 16 ) < 0 )
                {
                    return -1;
                }
#endif
            } else if ( *format == 'o' )
            {
#if ARCH_64_BIT == 1
                if ( lutoa_r ( va_arg ( argp, unsigned long ), str + len, size - len, 8 ) < 0 )
                {
                    return -1;
                }
#else
                if ( utoa_r ( va_arg ( argp, unsigned int ), str + len, size - len, 8 ) < 0 )
                {
                    return -1;
                }
#endif
            } else
            {
                return -1;
            }
            break;
        case '%':
            if ( len + 1 >= size )
            {
                return -1;
            }
            str[len++] = '%';
            str[len] = '\0';
            break;
        default:
            va_arg ( argp, int );
        }
    }

    return strlen ( str );
}

int printf ( const char *format, ... )
{
    int ret;
    va_list argp;
    char str[2048];
    va_start ( argp, format );
    if ( snprintf_in ( str, sizeof ( str ), format, argp ) < 0 )
    {
        va_end ( argp );
        return -1;
    }
    ret = write ( 1, str, strlen ( str ) );
    va_end ( argp );
    return ret;
}

int snprintf ( char *str, size_t size, const char *format, ... )
{
    int ret;
    va_list argp;
    va_start ( argp, format );
    ret = snprintf_in ( str, size, format, argp );
    va_end ( argp );
    return ret;
}

int vsnprintf ( char *str, size_t size, const char *format, va_list ap )
{
    return snprintf_in ( str, size, format, ap );
}

int vsscanf ( const char *s, const char *format, va_list argp )
{
    void *value;

    value = va_arg ( argp, void * );

    while ( *s == '\n' || *s == '\r' || *s == '\x20' || *s == '\t' )
    {
        s++;
    }

    if ( !strcmp ( format, "%u" ) )
    {
        return atou_r ( s, ( unsigned int * ) value, 10 );

    } else if ( !strcmp ( format, "%i" ) || !strcmp ( format, "%d" ) )
    {
        return atoi_r ( s, ( int * ) value );

    } else if ( !strcmp ( format, "%lu" ) )
    {
#if ARCH_64_BIT == 1
        return atolu_r ( s, ( unsigned long * ) value, 10 );
#else
        return atou_r ( s, ( unsigned int * ) value, 10 );
#endif

    } else if ( !strcmp ( format, "%li" ) || !strcmp ( format, "%ld" ) )
    {
#if ARCH_64_BIT == 1
        return atoli_r ( s, ( long * ) value );
#else
        return atoi_r ( s, ( int * ) value );
#endif
    } else if ( !strcmp ( format, "%x" ) )
    {
        return atou_r ( s, ( unsigned int * ) value, 16 );

    } else if ( !strcmp ( format, "%o" ) )
    {
        return atou_r ( s, ( unsigned int * ) value, 8 );

    } else if ( !strcmp ( format, "%lx" ) )
    {
#if ARCH_64_BIT == 1
        return atolu_r ( s, ( unsigned long * ) value, 16 );
#else
        return atou_r ( s, ( unsigned int * ) value, 16 );
#endif
    } else if ( !strcmp ( format, "%lo" ) )
    {
#if ARCH_64_BIT == 1
        return atolu_r ( s, ( unsigned long * ) value, 8 );
#else
        return atou_r ( s, ( unsigned int * ) value, 8 );
#endif
    } else
    {
        return -1;
    }
}

int sscanf ( const char *s, const char *format, ... )
{
    int ret;
    va_list argp;
    va_start ( argp, format );
    ret = vsscanf ( s, format, argp );
    va_end ( argp );
    return ret;
}

int __isoc99_sscanf ( const char *s, const char *format, ... )
{
    int ret;
    va_list argp;
    va_start ( argp, format );
    ret = vsscanf ( s, format, argp );
    va_end ( argp );
    return ret;
}

long strtol ( const char *nptr, char **endptr, int base )
{
    unsigned char parsed = 0;
    unsigned long result;
    unsigned char digit;

    while ( *nptr == '\n' || *nptr == '\r' || *nptr == '\x20' || *nptr == '\t' )
    {
        nptr++;
    }

    for ( result = 0; *nptr; nptr++ )
    {
        if ( *nptr >= '0' && *nptr <= '9' )
        {
            digit = *nptr - '0';

        } else if ( base == 16 && *nptr >= 'A' && *nptr <= 'F' )
        {
            digit = *nptr - 'A' + 10;

        } else if ( base == 16 && *nptr >= 'a' && *nptr <= 'f' )
        {
            digit = *nptr - 'a' + 10;

        } else if ( parsed )
        {
            break;

        } else
        {
            return -1;
        }

        result = ( result * base ) + digit;
        parsed = 1;
    }

    if ( endptr )
    {
        *endptr = ( char * ) nptr;
    }

    return result;
}

void perror ( const char *s )
{
    char str[2048];
    if ( snprintf ( str, sizeof ( str ), "fail: %s (%i)\n", s, errno ) > 0 )
    {
        write ( 2, str, strlen ( str ) );
    }
}

#ifndef putchar
int putchar ( int c )
{
    char c1 = ( char ) c;
    write ( 1, &c1, 1 );
    return c;
}
#endif

int puts ( const char *s )
{
    char nl = '\n';
    ssize_t len;

    if ( ( len = write ( 1, s, strlen ( s ) ) ) < 0 )
    {
        return -1;
    }

    if ( write ( 1, &nl, sizeof ( nl ) ) < 0 )
    {
        return -1;
    }

    return len + 1;
}
