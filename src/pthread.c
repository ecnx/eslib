/* ------------------------------------------------------------------
 * ES Lib - Portable Minimalist C Library
 * ------------------------------------------------------------------ */

#define _GNU_SOURCE
#include <sched.h>
#include <sys/mman.h>
#include <string.h>
#include <errno.h>
#include <pthread.h>
#define STACK_SIZE 128*1024

extern void *thread_startup ( void * );

extern pthread_t _clone ( long flags, void *stack, void *parent_id, void *child_tid );

extern void exit ( int status );

int pthread_create ( pthread_t * thread, const pthread_attr_t * attr, start_routine_t start_routine,
    void *arg )
{
    pthread_t ret;
    unsigned char *stack;
#if ARCH != MIPS
    start_routine_t base_routine = thread_startup;
#endif

    UNUSED ( attr );

    if ( ( stack =
            ( unsigned char * ) mmap ( 0, STACK_SIZE, PROT_WRITE | PROT_READ,
                MAP_ANONYMOUS | MAP_PRIVATE | MAP_GROWSDOWN, -1, 0 ) ) == MAP_FAILED )
    {
        return -1;
    }
#if ARCH != MIPS
    stack += STACK_SIZE - sizeof ( start_routine_t );
    memcpy ( stack, &base_routine, sizeof ( start_routine_t ) );
    memcpy ( stack - sizeof ( start_routine_t ), &start_routine, sizeof ( start_routine_t ) );
    memcpy ( stack - sizeof ( start_routine_t ) - sizeof ( void * ), &arg, sizeof ( void * ) );
#else
    stack += STACK_SIZE - 4;
#endif

    if ( ( ret =
            _clone ( CLONE_VM | CLONE_FS | CLONE_FILES | CLONE_SIGHAND | CLONE_PARENT | CLONE_THREAD
                | CLONE_IO, stack, NULL, NULL ) ) < 0 )
    {
        return -1;
    }
#if ARCH == MIPS
    if ( !ret )
    {
        start_routine ( arg );
        exit ( 0 );
    }
#endif

    *thread = ret;
    return 0;
}
