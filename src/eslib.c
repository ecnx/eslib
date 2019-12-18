/* ------------------------------------------------------------------
 * ES Lib - Portable Minimalist C Library
 * ------------------------------------------------------------------ */

#include <fcntl.h>
#include <stdlib.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <sys/time.h>
#include <sys/wait.h>
#include <time.h>
#include <unistd.h>
#include <string.h>
#include <stdarg.h>

int daemon ( int nochdir, int noclose )
{
    int status;

    /* fork current process */
    if ( ( status = fork (  ) ) < 0 )
    {
        return -1;

    } else if ( status > 0 )
    {
        exit ( 0 );
    }

    /* start new session */
    setsid (  );

    /* clear any inherited umask(2) value */
    umask ( 0 );

    /* optionally chdir to root */
    if ( !nochdir )
    {
        chdir ( "/" );
    }

    /* skip redirecting fds if needed */
    if ( noclose )
    {
        return 0;
    }

    close ( 0 );
    close ( 1 );
    close ( 2 );

    if ( open ( "/dev/null", O_RDWR ) < 0 )
    {
        return -1;
    }

    dup ( 0 );
    dup ( 0 );

    return 0;
}

unsigned int sleep ( unsigned int seconds )
{
    struct timespec ts = { seconds, 0 };
    return nanosleep ( &ts, &ts ) < 0 ? ts.tv_sec : 0;
}

int usleep ( useconds_t usec )
{
    struct timespec req = {
        ( long int ) ( usec / 1000000 ),
        ( long int ) ( usec % 1000000 ) * 1000ul
    };

    return nanosleep ( &req, NULL );
}

#if ARCH != x86_32 && ARCH != MIPS
pid_t waitpid ( pid_t pid, int *wstatus, int options )
{
    return wait4 ( pid, wstatus, options, NULL );
}
#endif

extern int _mknod ( const char *path, mode_t mode, dev_t dev );

int mkfifo ( const char *path, mode_t mode )
{
    return _mknod ( path, mode | S_IFIFO, 0 );
}

typedef void ( *sighandler_t ) ( int );

#if ARCH != x86_32 && ARCH != MIPS
sighandler_t signal ( int signum, sighandler_t handler )
{
    UNUSED ( signum );
    UNUSED ( handler );
    return NULL;
}
#endif

extern char **eslib_envp;

char *getenv ( const char *name )
{
    size_t i;
    size_t len;

    for ( i = 0, len = strlen ( name ); eslib_envp[i]; i++ )
    {
        if ( strstr ( eslib_envp[i], name ) == eslib_envp[i] && eslib_envp[i][len] == '=' )
        {
            return eslib_envp[i] + len + 1;
        }
    }

    return NULL;
}

extern int eslib_errno;

int *__errno_location ( void )
{
    return &eslib_errno;
}

int *__errno ( void )
{
    return &eslib_errno;
}

extern int main ( int argc, char *argv[] );

int eslib_start ( int argc, char *argv[] )
{
    eslib_envp = argv;

    while ( *eslib_envp )
    {
        eslib_envp++;
    }

    eslib_envp++;
    return main ( argc, argv );
}

#if ARCH != MIPS
extern int _execve ( const char *filename, char *const argv[], char *const envp[] );

int execve ( const char *filename, char *const argv[], char *const envp[] )
{
    return envp ? _execve ( filename, argv, envp ) : _execve ( filename, argv, eslib_envp );
}

int execvp ( const char *filename, char *const argv[] )
{
    return _execve ( filename, argv, eslib_envp );
}
#else
int execvp ( const char *filename, char *const argv[] )
{
    return execve ( filename, argv, eslib_envp );
}
#endif

static unsigned long int eslib_rand_next = 1;

/*
 *  int rand()
 *      Taken from the K&R C programming language book. Page 46.
 *      returns a pseudo-random integer of 0..32767. Note that
 *      this is compatible with the System V function rand(), not
 *      with the bsd function rand() that returns 0..(2**31)-1.
 */
int rand (  )
{
    eslib_rand_next = eslib_rand_next * 1103515245 + 12345;
    return ( ( unsigned int ) ( eslib_rand_next / 65536 ) % 32768 );
}

/*
 *  srand(seed)
 *      companion routine to rand(). Initializes the seed.
 */
void srand ( unsigned int seed )
{
    eslib_rand_next = seed;
}

#if ARCH != MIPS && ARCH != x86_64
time_t time ( time_t * tloc )
{
    struct timeval tv;
    gettimeofday ( &tv, NULL );
    if ( tloc )
    {
        *tloc = tv.tv_sec;
    }
    return tv.tv_sec;
}
#endif

int system ( const char *command )
{
    int status;
    pid_t pid;

    char *args[] = {
        "/bin/sh",
        "-c",
        ( char * ) command,
        NULL
    };

    if ( !( pid = fork (  ) ) )
    {
        exit ( execvp ( args[0], args ) );

    } else if ( pid < 0 )
    {
        return -1;
    }

    waitpid ( pid, &status, 0 );
    return status;
}

extern int _open ( const char *filename, int flags, mode_t mode );

int open ( const char *filename, int flags, ... )
{
    mode_t mode = 0;
    va_list argp;

    if ( flags & O_CREAT )
    {
        va_start ( argp, flags );
        mode = va_arg ( argp, mode_t );
        va_end ( argp );
    }

    return _open ( filename, flags, mode );
}

int __xstat ( const char *pathname, struct stat *statbuf )
{
    return stat ( pathname, statbuf );
}
