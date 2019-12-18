/* ------------------------------------------------------------------
 * ES Lib - Portable Minimalist C Library
 * ------------------------------------------------------------------ */

#include <eslib.h>
#include <stddef.h>
#include <sys/stat.h>

#ifndef ESLIB_UNISTD_H
#define ESLIB_UNISTD_H

#define SEEK_SET 0      /* Seek from beginning of file.  */
#define SEEK_CUR 1      /* Seek from current position.  */
#define SEEK_END 2      /* Seek from end of file.  */

off_t lseek ( int fd, off_t offset, int whence );
ssize_t read ( int fd, void *buf, size_t count );
ssize_t write ( int fd, const void *buf, size_t count );
off_t lseek ( int fd, off_t offset, int whence );
int close ( int fd );
int stat ( const char *pathname, struct stat *statbuf );
int fstat ( int fd, struct stat *statbuf );
int lstat ( const char *pathname, struct stat *statbuf );
int unlink ( const char *pathname );
int rmdir ( const char *pathname );
void sync ( void );
int dup ( int oldfd );
int dup2 ( int oldfd, int newfd );
int chdir ( const char *path );
int fchdir ( int fd );
int pipe ( int pipefd[2] );
int symlink ( const char *target, const char *linkpath );
int link ( const char *oldpath, const char *newpath );
char *getcwd ( char *buf, size_t size );
unsigned int sleep ( unsigned int seconds );
int usleep ( useconds_t usec );
pid_t getpid ( void );
pid_t getppid ( void );
void exit ( int status );
int execve ( const char *filename, char *const argv[], char *const envp[] );
int execvp ( const char *file, char *const argv[] );
pid_t fork ( void );
pid_t setsid ( void );
int chroot ( const char *path );
int daemon ( int nochdir, int noclose );
int system ( const char *command );
int truncate ( const char *path, off_t length );
int ftruncate ( int fd, off_t length );

#endif
