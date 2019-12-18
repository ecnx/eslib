/* ------------------------------------------------------------------
 * ES Lib - Portable Minimalist C Library
 * ------------------------------------------------------------------ */

#include <eslib.h>
#include <stddef.h>

#ifndef ESLIB_SYS_MMAN_H
#define ESLIB_SYS_MMAN_H

#define MAP_FAILED        ((void *) -1) /* Return value of `mmap' in case of an error.  */
#define PROT_READ        0x1    /* Page can be read.  */
#define PROT_WRITE        0x2   /* Page can be written.  */
#define PROT_EXEC        0x4    /* Page can be executed.  */
#define PROT_NONE        0x0    /* Page can not be accessed.  */

#if ARCH == MIPS
#define MAP_SHARED  0x001       /* Share changes */
#define MAP_PRIVATE 0x002       /* Changes are private */
#define MAP_ANONYMOUS   0x0800  /* don't use a file */
#define MAP_GROWSDOWN   0x1000  /* stack-like segment */
#define MS_SYNC     0x0004      /* synchronous memory sync */
#else
#define MAP_SHARED  0x01        /* Share changes */
#define MAP_PRIVATE 0x02        /* Changes are private */
#define MAP_ANONYMOUS   0x20    /* don't use a file */
#define MAP_GROWSDOWN   0x0100  /* stack-like segment */
#define MS_SYNC     4   /* synchronous memory sync */
#endif

#define MREMAP_MAYMOVE  1

void *mmap ( void *addr, size_t length, int prot, int flags, int fd, off_t offset );
int munmap ( void *addr, size_t length );
void *mremap ( void *old_address, size_t old_size, size_t new_size, int flags,
    ... /* void *new_address */  );
int msync ( void *addr, size_t length, int flags );

#endif
