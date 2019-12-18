/* ------------------------------------------------------------------
 * ES Lib - Portable Minimalist C Library
 * ------------------------------------------------------------------ */

#include <stdlib.h>

#ifndef ESLIB_DIRENT_H
#define ESLIB_DIRENT_H

struct dirent
{
    ino_t d_ino;
    off_t d_off;
    unsigned short d_reclen;
    unsigned char d_type;
    char d_name[256];
};

struct eslib_linux_dirent
{
    long d_ino;
    off_t d_off;
    unsigned short d_reclen;
    char d_name[];
};

struct __dirstream
{
    int fd;
    int nread;
    int bpos;
    struct dirent entry;
    char buffer[4096];
};

typedef struct __dirstream DIR;

int getdents ( unsigned int fd, struct dirent *dirp, unsigned int count );
DIR *opendir ( const char *name );
struct dirent *readdir ( DIR * dirp );

int closedir ( DIR * dirp );

#endif
