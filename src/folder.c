/* ------------------------------------------------------------------
 * ES Lib - Portable Minimalist C Library
 * ------------------------------------------------------------------ */

#include <errno.h>
#include <fcntl.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <unistd.h>
#include <dirent.h>


extern void *malloc ( size_t len );

DIR *opendir ( const char *name )
{
    DIR *dirp;

    if ( !( dirp = malloc ( sizeof ( DIR ) ) ) )
    {
        return NULL;
    }

    if ( ( dirp->fd = open ( name, O_RDONLY | O_DIRECTORY ) ) < 0 )
    {
        free ( dirp );
        return NULL;
    }

    dirp->nread = 0;
    dirp->bpos = 0;

    return dirp;
}

#if ARCH != MIPS
extern int getdents ( unsigned int fd, struct dirent *dirp, unsigned int count );
#endif

struct dirent *readdir ( DIR * dirp )
{
    size_t len;
    struct eslib_linux_dirent *entry;

    if ( !dirp->nread || dirp->bpos >= dirp->nread )
    {
        if ( ( dirp->nread =
                getdents ( dirp->fd, ( struct dirent * ) dirp->buffer,
                    sizeof ( dirp->buffer ) ) ) <= 0 )
        {
            return NULL;
        }
        dirp->bpos = 0;
    }

    entry = ( struct eslib_linux_dirent * ) ( dirp->buffer + dirp->bpos );
    dirp->bpos += entry->d_reclen;
    dirp->entry.d_ino = entry->d_ino;
    dirp->entry.d_off = entry->d_off;
    dirp->entry.d_reclen = entry->d_reclen;

    if ( ( len = strlen ( entry->d_name ) ) >= sizeof ( dirp->entry.d_name ) )
    {
        len = sizeof ( dirp->entry.d_name ) - 1;
    }

    memcpy ( dirp->entry.d_name, entry->d_name, len + 1 );

    return &dirp->entry;
}

extern void free ( void *addr );

int closedir ( DIR * dirp )
{
    if ( close ( dirp->fd ) < 0 )
    {
        return -1;
    }
    free ( dirp );
    return 0;
}
