/* ------------------------------------------------------------------
 * ES Lib - Portable Minimalist C Library
 * ------------------------------------------------------------------ */

#include <stddef.h>

#ifndef ESLIB_FCNTL_H
#define ESLIB_FCNTL_H

#if ARCH == MIPS
#define O_APPEND    0x0008
#define O_DSYNC     0x0010      /* used to be O_SYNC, see below */
#define O_NONBLOCK  0x0080
#define O_CREAT     0x0100      /* not fcntl */
#define O_TRUNC     0x0200      /* not fcntl */
#define O_EXCL      0x0400      /* not fcntl */
#define O_NOCTTY    0x0800      /* not fcntl */
#define FASYNC      0x1000      /* fcntl, for BSD compatibility */
#define O_LARGEFILE 0x2000      /* allow large file opens */
#define __O_SYNC    0x4000
#define O_SYNC      (__O_SYNC|O_DSYNC)
#define O_DIRECT    0x8000      /* direct disk access hint */
#endif

#if ARCH == ARM
#define O_DIRECTORY  040000     /* must be a directory */
#define O_NOFOLLOW  0100000     /* don't follow links */
#define O_DIRECT    0200000     /* direct disk access hint - currently ignored */
#define O_LARGEFILE 0400000
#endif

#define O_ACCMODE   00000003
#define O_RDONLY    00000000
#define O_WRONLY    00000001
#define O_RDWR      00000002
#ifndef O_CREAT
#define O_CREAT     00000100    /* not fcntl */
#endif
#ifndef O_EXCL
#define O_EXCL      00000200    /* not fcntl */
#endif
#ifndef O_NOCTTY
#define O_NOCTTY    00000400    /* not fcntl */
#endif
#ifndef O_TRUNC
#define O_TRUNC     00001000    /* not fcntl */
#endif
#ifndef O_APPEND
#define O_APPEND    00002000
#endif
#ifndef O_NONBLOCK
#define O_NONBLOCK  00004000
#endif
#ifndef O_DSYNC
#define O_DSYNC     00010000    /* used to be O_SYNC, see below */
#endif
#ifndef FASYNC
#define FASYNC      00020000    /* fcntl, for BSD compatibility */
#endif
#ifndef O_DIRECT
#define O_DIRECT    00040000    /* direct disk access hint */
#endif
#ifndef O_LARGEFILE
#define O_LARGEFILE 00100000
#endif
#ifndef O_DIRECTORY
#define O_DIRECTORY 00200000    /* must be a directory */
#endif
#ifndef O_NOFOLLOW
#define O_NOFOLLOW  00400000    /* don't follow links */
#endif
#ifndef O_NOATIME
#define O_NOATIME   01000000
#endif
#ifndef O_CLOEXEC
#define O_CLOEXEC   02000000    /* set close_on_exec */
#endif

#define F_DUPFD     0   /* dup */
#define F_GETFD     1   /* get close_on_exec */
#define F_SETFD     2   /* set/clear close_on_exec */
#define F_GETFL     3   /* get file->f_flags */
#define F_SETFL     4   /* set file->f_flags */
#define F_GETLK     5
#define F_SETLK     6
#define F_SETLKW    7
#define F_SETOWN    8   /* for sockets. */
#define F_GETOWN    9   /* for sockets. */
#define F_SETSIG    10  /* for sockets. */
#define F_GETSIG    11  /* for sockets. */

int open ( const char *pathname, int flags, ... );
int fcntl ( int fd, int cmd, long arg );

#endif
