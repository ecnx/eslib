/* ------------------------------------------------------------------
 * ES Lib - Portable Minimalist C Library
 * ------------------------------------------------------------------ */

#include <eslib.h>
#include <stddef.h>
#include <sys/time.h>

#ifndef ESLIB_SYS_WAIT_H
#define ESLIB_SYS_WAIT_H

#define WNOHANG     0x00000001
#define WUNTRACED   0x00000002
#define WSTOPPED    WUNTRACED
#define WEXITED     0x00000004
#define WCONTINUED  0x00000008
#define WNOWAIT     0x01000000  /* Don't reap, just poll status.  */

struct rusage
{
    struct timeval ru_utime;    /* user time used */
    struct timeval ru_stime;    /* system time used */
    long ru_maxrss;             /* maximum resident set size */
    long ru_ixrss;              /* integral shared memory size */
    long ru_idrss;              /* integral unshared data size */
    long ru_isrss;              /* integral unshared stack size */
    long ru_minflt;             /* page reclaims */
    long ru_majflt;             /* page faults */
    long ru_nswap;              /* swaps */
    long ru_inblock;            /* block input operations */
    long ru_oublock;            /* block output operations */
    long ru_msgsnd;             /* messages sent */
    long ru_msgrcv;             /* messages received */
    long ru_nsignals;           /* signals received */
    long ru_nvcsw;              /* voluntary context switches */
    long ru_nivcsw;             /* involuntary " */
};

pid_t waitpid ( pid_t pid, int *wstatus, int options );
pid_t wait4 ( pid_t pid, int *wstatus, int options, struct rusage *rusage );

#endif
