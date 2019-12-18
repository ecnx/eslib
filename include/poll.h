/* ------------------------------------------------------------------
 * ES Lib - Portable Minimalist C Library
 * ------------------------------------------------------------------ */

#include <eslib.h>
#include <stddef.h>

#ifndef ESLIB_POLL_H
#define ESLIB_POLL_H

/* These are specified by iBCS2 */
#define POLLIN      0x0001
#define POLLPRI     0x0002
#define POLLOUT     0x0004
#define POLLERR     0x0008
#define POLLHUP     0x0010
#define POLLNVAL    0x0020

struct pollfd
{
    int fd;                     /* file descriptor */
    short events;               /* requested events */
    short revents;              /* returned events */
};

int poll ( struct pollfd *fds, nfds_t nfds, int timeout );

#endif
