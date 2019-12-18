/* ------------------------------------------------------------------
 * ES Lib - Portable Minimalist C Library
 * ------------------------------------------------------------------ */

#include <errno.h>
#include <string.h>

struct eslib_error_t
{
    int errnum;
    const char *desc;
};

static const struct eslib_error_t eslib_errors[] = {
#ifdef EPERM
    {EPERM, "Operation not permitted"},
#endif
#ifdef ENOENT
    {ENOENT, "No such file or directory"},
#endif
#ifdef ESRCH
    {ESRCH, "No such process"},
#endif
#ifdef EINTR
    {EINTR, "Interrupted system call"},
#endif
#ifdef EIO
    {EIO, "Input/output error"},
#endif
#ifdef ENXIO
    {ENXIO, "No such device or address"},
#endif
#ifdef E2BIG
    {E2BIG, "Argument list too long"},
#endif
#ifdef ENOEXEC
    {ENOEXEC, "Exec format error"},
#endif
#ifdef EBADF
    {EBADF, "Bad file descriptor"},
#endif
#ifdef ECHILD
    {ECHILD, "No child processes"},
#endif
#ifdef EAGAIN
    {EAGAIN, "Resource temporarily unavailable"},
#endif
#ifdef ENOMEM
    {ENOMEM, "Cannot allocate memory"},
#endif
#ifdef EACCES
    {EACCES, "Permission denied"},
#endif
#ifdef EFAULT
    {EFAULT, "Bad address"},
#endif
#ifdef ENOTBLK
    {ENOTBLK, "Block device required"},
#endif
#ifdef EBUSY
    {EBUSY, "Device or resource busy"},
#endif
#ifdef EEXIST
    {EEXIST, "File exists"},
#endif
#ifdef EXDEV
    {EXDEV, "Invalid cross-device link"},
#endif
#ifdef ENODEV
    {ENODEV, "No such device"},
#endif
#ifdef ENOTDIR
    {ENOTDIR, "Not a directory"},
#endif
#ifdef EISDIR
    {EISDIR, "Is a directory"},
#endif
#ifdef EINVAL
    {EINVAL, "Invalid argument"},
#endif
#ifdef ENFILE
    {ENFILE, "Too many open files in system"},
#endif
#ifdef EMFILE
    {EMFILE, "Too many open files"},
#endif
#ifdef ENOTTY
    {ENOTTY, "Inappropriate ioctl for device"},
#endif
#ifdef ETXTBSY
    {ETXTBSY, "Text file busy"},
#endif
#ifdef EFBIG
    {EFBIG, "File too large"},
#endif
#ifdef ENOSPC
    {ENOSPC, "No space left on device"},
#endif
#ifdef ESPIPE
    {ESPIPE, "Illegal seek"},
#endif
#ifdef EROFS
    {EROFS, "Read-only file system"},
#endif
#ifdef EMLINK
    {EMLINK, "Too many links"},
#endif
#ifdef EPIPE
    {EPIPE, "Broken pipe"},
#endif
#ifdef EDOM
    {EDOM, "Numerical argument out of domain"},
#endif
#ifdef ERANGE
    {ERANGE, "Numerical result out of range"},
#endif
#ifdef ENAMETOOLONG
    {ENAMETOOLONG, "File name too long"},
#endif
#ifdef ENOLCK
    {ENOLCK, "No locks available"},
#endif
#ifdef ENOSYS
    {ENOSYS, "Function not implemented"},
#endif
#ifdef ENOTEMPTY
    {ENOTEMPTY, "Directory not empty"},
#endif
#ifdef ELOOP
    {ELOOP, "Too many levels of symbolic links"},
#endif
#ifdef ENOMSG
    {ENOMSG, "No message of desired type"},
#endif
#ifdef EIDRM
    {EIDRM, "Identifier removed"},
#endif
#ifdef ECHRNG
    {ECHRNG, "Channel number out of range"},
#endif
#ifdef EL2NSYNC
    {EL2NSYNC, "Level 2 not synchronized"},
#endif
#ifdef EL3HLT
    {EL3HLT, "Level 3 halted"},
#endif
#ifdef EL3RST
    {EL3RST, "Level 3 reset"},
#endif
#ifdef ELNRNG
    {ELNRNG, "Link number out of range"},
#endif
#ifdef EUNATCH
    {EUNATCH, "Protocol driver not attached"},
#endif
#ifdef ENOCSI
    {ENOCSI, "No CSI structure available"},
#endif
#ifdef EL2HLT
    {EL2HLT, "Level 2 halted"},
#endif
#ifdef EBADE
    {EBADE, "Invalid exchange"},
#endif
#ifdef EBADR
    {EBADR, "Invalid request descriptor"},
#endif
#ifdef EXFULL
    {EXFULL, "Exchange full"},
#endif
#ifdef ENOANO
    {ENOANO, "No anode"},
#endif
#ifdef EBADRQC
    {EBADRQC, "Invalid request code"},
#endif
#ifdef EBADSLT
    {EBADSLT, "Invalid slot"},
#endif
#ifdef EDEADLOCK
    {EDEADLOCK, "Resource deadlock avoided"},
#endif
#ifdef EBFONT
    {EBFONT, "Bad font file format"},
#endif
#ifdef ENOSTR
    {ENOSTR, "Device not a stream"},
#endif
#ifdef ENODATA
    {ENODATA, "No data available"},
#endif
#ifdef ETIME
    {ETIME, "Timer expired"},
#endif
#ifdef ENOSR
    {ENOSR, "Out of streams resources"},
#endif
#ifdef ENONET
    {ENONET, "Machine is not on the network"},
#endif
#ifdef ENOPKG
    {ENOPKG, "Package not installed"},
#endif
#ifdef EREMOTE
    {EREMOTE, "Object is remote"},
#endif
#ifdef ENOLINK
    {ENOLINK, "Link has been severed"},
#endif
#ifdef EADV
    {EADV, "Advertise error"},
#endif
#ifdef ESRMNT
    {ESRMNT, "Srmount error"},
#endif
#ifdef ECOMM
    {ECOMM, "Communication error on send"},
#endif
#ifdef EPROTO
    {EPROTO, "Protocol error"},
#endif
#ifdef EMULTIHOP
    {EMULTIHOP, "Multihop attempted"},
#endif
#ifdef EDOTDOT
    {EDOTDOT, "RFS specific error"},
#endif
#ifdef EBADMSG
    {EBADMSG, "Bad message"},
#endif
#ifdef EOVERFLOW
    {EOVERFLOW, "Value too large for defined data type"},
#endif
#ifdef ENOTUNIQ
    {ENOTUNIQ, "Name not unique on network"},
#endif
#ifdef EBADFD
    {EBADFD, "File descriptor in bad state"},
#endif
#ifdef EREMCHG
    {EREMCHG, "Remote address changed"},
#endif
#ifdef ELIBACC
    {ELIBACC, "Can not access a needed shared library"},
#endif
#ifdef ELIBBAD
    {ELIBBAD, "Accessing a corrupted shared library"},
#endif
#ifdef ELIBSCN
    {ELIBSCN, ".lib section in a.out corrupted"},
#endif
#ifdef ELIBMAX
    {ELIBMAX, "Attempting to link in too many shared libraries"},
#endif
#ifdef ELIBEXEC
    {ELIBEXEC, "Cannot exec a shared library directly"},
#endif
#ifdef EILSEQ
    {EILSEQ, "Invalid or incomplete multibyte or wide character"},
#endif
#ifdef ERESTART
    {ERESTART, "Interrupted system call should be restarted"},
#endif
#ifdef ESTRPIPE
    {ESTRPIPE, "Streams pipe error"},
#endif
#ifdef EUSERS
    {EUSERS, "Too many users"},
#endif
#ifdef ENOTSOCK
    {ENOTSOCK, "Socket operation on non-socket"},
#endif
#ifdef EDESTADDRREQ
    {EDESTADDRREQ, "Destination address required"},
#endif
#ifdef EMSGSIZE
    {EMSGSIZE, "Message too long"},
#endif
#ifdef EPROTOTYPE
    {EPROTOTYPE, "Protocol wrong type for socket"},
#endif
#ifdef ENOPROTOOPT
    {ENOPROTOOPT, "Protocol not available"},
#endif
#ifdef EPROTONOSUPPORT
    {EPROTONOSUPPORT, "Protocol not supported"},
#endif
#ifdef ESOCKTNOSUPPORT
    {ESOCKTNOSUPPORT, "Socket type not supported"},
#endif
#ifdef EPFNOSUPPORT
    {EPFNOSUPPORT, "Protocol family not supported"},
#endif
#ifdef EAFNOSUPPORT
    {EAFNOSUPPORT, "Address family not supported by protocol"},
#endif
#ifdef EADDRINUSE
    {EADDRINUSE, "Address already in use"},
#endif
#ifdef EADDRNOTAVAIL
    {EADDRNOTAVAIL, "Cannot assign requested address"},
#endif
#ifdef ENETDOWN
    {ENETDOWN, "Network is down"},
#endif
#ifdef ENETUNREACH
    {ENETUNREACH, "Network is unreachable"},
#endif
#ifdef ENETRESET
    {ENETRESET, "Network dropped connection on reset"},
#endif
#ifdef ECONNABORTED
    {ECONNABORTED, "Software caused connection abort"},
#endif
#ifdef ECONNRESET
    {ECONNRESET, "Connection reset by peer"},
#endif
#ifdef ENOBUFS
    {ENOBUFS, "No buffer space available"},
#endif
#ifdef EISCONN
    {EISCONN, "Transport endpoint is already connected"},
#endif
#ifdef ENOTCONN
    {ENOTCONN, "Transport endpoint is not connected"},
#endif
#ifdef ESHUTDOWN
    {ESHUTDOWN, "Cannot send after transport endpoint shutdown"},
#endif
#ifdef ETOOMANYREFS
    {ETOOMANYREFS, "Too many references: cannot splice"},
#endif
#ifdef ETIMEDOUT
    {ETIMEDOUT, "Connection timed out"},
#endif
#ifdef ECONNREFUSED
    {ECONNREFUSED, "Connection refused"},
#endif
#ifdef EHOSTDOWN
    {EHOSTDOWN, "Host is down"},
#endif
#ifdef EHOSTUNREACH
    {EHOSTUNREACH, "No route to host"},
#endif
#ifdef EALREADY
    {EALREADY, "Operation already in progress"},
#endif
#ifdef EINPROGRESS
    {EINPROGRESS, "Operation now in progress"},
#endif
#ifdef ESTALE
    {ESTALE, "Stale file handle"},
#endif
#ifdef EUCLEAN
    {EUCLEAN, "Structure needs cleaning"},
#endif
#ifdef ENOTNAM
    {ENOTNAM, "Not a XENIX named type file"},
#endif
#ifdef ENAVAIL
    {ENAVAIL, "No XENIX semaphores available"},
#endif
#ifdef EISNAM
    {EISNAM, "Is a named type file"},
#endif
#ifdef EREMOTEIO
    {EREMOTEIO, "Remote I/O error"},
#endif
#ifdef EDQUOT
    {EDQUOT, "Disk quota exceeded"},
#endif
#ifdef ENOMEDIUM
    {ENOMEDIUM, "No medium found"},
#endif
#ifdef EMEDIUMTYPE
    {EMEDIUMTYPE, "Wrong medium type"},
#endif
#ifdef ECANCELED
    {ECANCELED, "Operation canceled"},
#endif
#ifdef ENOKEY
    {ENOKEY, "Required key not available"},
#endif
#ifdef EKEYEXPIRED
    {EKEYEXPIRED, "Key has expired"},
#endif
#ifdef EKEYREVOKED
    {EKEYREVOKED, "Key has been revoked"},
#endif
#ifdef EKEYREJECTED
    {EKEYREJECTED, "Key was rejected by service"},
#endif
#ifdef EOWNERDEAD
    {EOWNERDEAD, "Owner died"},
#endif
#ifdef ENOTRECOVERABLE
    {ENOTRECOVERABLE, "State not recoverable"},
#endif
#ifdef ERFKILL
    {ERFKILL, "Operation not possible due to RF-kill"},
#endif
#ifdef EHWPOISON
    {EHWPOISON, "Memory page has hardware error"},
#endif
#ifdef ENOTSUP
    {ENOTSUP, "Operation not supported"},
#endif
    {0, "Success"}
};

char *strerror ( int errnum )
{
    size_t i;

    for ( i = 0; i < sizeof ( eslib_errors ) / sizeof ( struct eslib_error_t ); i++ )
    {
        if ( errnum == eslib_errors[i].errnum )
        {
            return ( char * ) eslib_errors[i].desc;
        }
    }

    return ( char * ) "Unknown Error";
}
