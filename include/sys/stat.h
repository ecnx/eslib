/* ------------------------------------------------------------------
 * ES Lib - Portable Minimalist C Library
 * ------------------------------------------------------------------ */

#include <eslib.h>
#include <stddef.h>

#ifndef ESLIB_SYS_STAT_H
#define ESLIB_SYS_STAT_H

#define S_IFMT  00170000
#define S_IFSOCK 0140000
#define S_IFLNK  0120000
#define S_IFREG  0100000
#define S_IFBLK  0060000
#define S_IFDIR  0040000
#define S_IFCHR  0020000
#define S_IFIFO  0010000
#define S_ISUID  0004000
#define S_ISGID  0002000
#define S_ISVTX  0001000

#define S_ISLNK(m)  (((m) & S_IFMT) == S_IFLNK)
#define S_ISREG(m)  (((m) & S_IFMT) == S_IFREG)
#define S_ISDIR(m)  (((m) & S_IFMT) == S_IFDIR)
#define S_ISCHR(m)  (((m) & S_IFMT) == S_IFCHR)
#define S_ISBLK(m)  (((m) & S_IFMT) == S_IFBLK)
#define S_ISFIFO(m) (((m) & S_IFMT) == S_IFIFO)
#define S_ISSOCK(m) (((m) & S_IFMT) == S_IFSOCK)

#define S_IRWXU 00700
#define S_IRUSR 00400
#define S_IWUSR 00200
#define S_IXUSR 00100

#define S_IRWXG 00070
#define S_IRGRP 00040
#define S_IWGRP 00020
#define S_IXGRP 00010

#define S_IRWXO 00007
#define S_IROTH 00004
#define S_IWOTH 00002
#define S_IXOTH 00001

#ifdef st_atime
#undef st_atime
#endif

#ifdef st_mtime
#undef st_mtime
#endif

#ifdef st_ctime
#undef st_ctime
#endif

#if ARCH != ARM
struct stat
{
    unsigned st_dev;
    long st_pad1[3];            /* Reserved for network id */
    long st_ino;
    long st_mode;
    long st_nlink;
    long st_uid;
    long st_gid;
    unsigned st_rdev;
    long st_pad2[2];
    off_t st_size;
    long st_pad3;
    /*
     * Actually this should be timestruc_t st_atime, st_mtime and st_ctime
     * but we don't have it under Linux.
     */
    long st_atime;
    long st_atime_nsec;
    long st_mtime;
    long st_mtime_nsec;
    long st_ctime;
    long st_ctime_nsec;
    long st_blksize;
    long st_blocks;
    long st_pad4[14];
};
#else

struct stat
{
#ifdef EB
    unsigned short st_dev;
    unsigned short __pad1;
#else
    unsigned long st_dev;
#endif
    unsigned long st_ino;
    unsigned short st_mode;
    unsigned short st_nlink;
    unsigned short st_uid;
    unsigned short st_gid;
#ifdef EB
    unsigned short st_rdev;
    unsigned short __pad2;
#else
    unsigned long st_rdev;
#endif
    unsigned long st_size;
    unsigned long st_blksize;
    unsigned long st_blocks;
    unsigned long st_atime;
    unsigned long st_atime_nsec;
    unsigned long st_mtime;
    unsigned long st_mtime_nsec;
    unsigned long st_ctime;
    unsigned long st_ctime_nsec;
    unsigned long __unused4;
    unsigned long __unused5;
};
#endif

mode_t umask ( mode_t mask );
int mkdir ( const char *pathname, mode_t mode );
int chmod ( const char *pathname, mode_t mode );
int fchmod ( int fd, mode_t mode );
int mkfifo ( const char *pathname, mode_t mode );

#endif
