/* ------------------------------------------------------------------
 * ES Libc - Portable Minimalist C Library
 * ------------------------------------------------------------------ */

#include <endian.h>
#include <byteswap.h>
#include <errno.h>
#include <string.h>
#include <sys/socket.h>
#include <sys/types.h>

static int atou_r8 ( const char *nptr, const char *limit, unsigned char *value )
{
    unsigned int result;

    for ( result = 0; nptr < limit; nptr++ )
    {
        if ( *nptr < '0' || *nptr > '9' )
        {
            return -1;
        }

        if ( ( result = result * 10 + *nptr - '0' ) > 255 )
        {
            return -1;
        }
    }

    *value = result;
    return 1;
}

#if __BYTE_ORDER == __LITTLE_ENDIAN
unsigned short htons ( unsigned short hostshort )
{
    return __bswap_16 ( hostshort );
}
#endif

#if __BYTE_ORDER == __LITTLE_ENDIAN
unsigned short ntohs ( unsigned short hostshort )
{
    return htons ( hostshort );
}
#endif

#if __BYTE_ORDER == __LITTLE_ENDIAN
unsigned int htonl ( unsigned int hostlong )
{
    return __bswap_32 ( hostlong );
}
#endif

#if __BYTE_ORDER == __LITTLE_ENDIAN
unsigned int ntohl ( unsigned int hostlong )
{
    return htonl ( hostlong );
}
#endif

int inet_pton ( int af, const char *src, void *dst )
{
    const char *sep;

    if ( af != AF_INET )
    {
        return -1;
    }

    if ( !( sep = strchr ( src, '.' ) ) )
    {
        return -1;
    }

    if ( atou_r8 ( src, sep, ( unsigned char * ) dst ) <= 0 )
    {
        return -1;
    }

    src = sep + 1;

    if ( !( sep = strchr ( src, '.' ) ) )
    {
        return -1;
    }

    if ( atou_r8 ( src, sep, ( ( unsigned char * ) dst ) + 1 ) <= 0 )
    {
        return -1;
    }

    src = sep + 1;

    if ( !( sep = strchr ( src, '.' ) ) )
    {
        return -1;
    }

    if ( atou_r8 ( src, sep++, ( ( unsigned char * ) dst ) + 2 ) <= 0 )
    {
        return -1;
    }

    if ( atou_r8 ( sep, sep + strlen ( sep ), ( ( unsigned char * ) dst ) + 3 ) <= 0 )
    {
        return -1;
    }

    return 1;
}

#if ARCH != MIPS && ARCH != ARM
ssize_t send ( int sockfd, const void *buf, size_t len, int flags )
{
    return sendto ( sockfd, buf, len, flags, NULL, 0 );
}
#endif

#if ARCH != MIPS && ARCH != ARM
ssize_t recv ( int sockfd, void *buf, size_t len, int flags )
{
    return recvfrom ( sockfd, buf, len, flags, NULL, 0 );
}
#endif

struct hostent *gethostbyname ( const char *name )
{
    UNUSED ( name );
    return NULL;
}

#if ARCH == x86_32
enum
{
    SYS_SOCKET = 1,
    SYS_BIND,
    SYS_CONNECT,
    SYS_LISTEN,
    SYS_ACCEPT,
    SYS_GETSOCKNAME,
    SYS_GETPEERNAME,
    SYS_SOCKETPAIR,
    SYS_SEND,
    SYS_RECV,
    SYS_SENDTO,
    SYS_RECVFROM,
    SYS_SHUTDOWN,
    SYS_SETSOCKOPT,
    SYS_GETSOCKOPT,
    SYS_SENDMSG,
    SYS_RECVMSG
};

extern long socketcall ( int call, unsigned long *args );

int socket ( int domain, int type, int protocol )
{
    unsigned long args[3];

    args[0] = ( unsigned long ) domain;
    args[1] = ( unsigned long ) type;
    args[2] = ( unsigned long ) protocol;

    return ( int ) socketcall ( SYS_SOCKET, args );
}

int bind ( int sockfd, const struct sockaddr *my_addr, socklen_t addrlen )
{
    unsigned long args[3];

    args[0] = ( unsigned long ) sockfd;
    args[1] = ( unsigned long ) my_addr;
    args[2] = ( unsigned long ) addrlen;

    return ( int ) socketcall ( SYS_BIND, args );
}

int connect ( int sockfd, const struct sockaddr *serv_addr, socklen_t addrlen )
{
    unsigned long args[3];

    args[0] = ( unsigned long ) sockfd;
    args[1] = ( unsigned long ) serv_addr;
    args[2] = ( unsigned long ) addrlen;

    return ( int ) socketcall ( SYS_CONNECT, args );
}

int listen ( int s, int backlog )
{
    unsigned long args[2];

    args[0] = ( unsigned long ) s;
    args[1] = ( unsigned long ) backlog;

    return ( int ) socketcall ( SYS_LISTEN, args );
}

int accept ( int sock, struct sockaddr *adresse, socklen_t * longueur )
{
    unsigned long args[3];

    args[0] = ( unsigned long ) sock;
    args[1] = ( unsigned long ) adresse;
    args[2] = ( unsigned long ) longueur;

    return ( int ) socketcall ( SYS_ACCEPT, args );
}

int getsockname ( int s, struct sockaddr *name, socklen_t * namelen )
{
    unsigned long args[3];

    args[0] = ( unsigned long ) s;
    args[1] = ( unsigned long ) name;
    args[2] = ( unsigned long ) namelen;

    return ( int ) socketcall ( SYS_GETSOCKNAME, args );
}

int getpeername ( int s, struct sockaddr *name, socklen_t * namelen )
{
    unsigned long args[3];

    args[0] = ( unsigned long ) s;
    args[1] = ( unsigned long ) name;
    args[2] = ( unsigned long ) namelen;

    return ( int ) socketcall ( SYS_GETPEERNAME, args );
}

int socketpair ( int d, int type, int protocol, int sv[2] )
{
    unsigned long args[4];

    args[0] = ( unsigned long ) d;
    args[1] = ( unsigned long ) type;
    args[2] = ( unsigned long ) protocol;
    args[3] = ( unsigned long ) sv;

    return ( int ) socketcall ( SYS_SOCKETPAIR, args );
}

ssize_t sendto ( int socket, const void *message, size_t length, int flags,
    const struct sockaddr *dest_addr, socklen_t dest_len )
{
    unsigned long args[6];

    args[0] = ( unsigned long ) socket;
    args[1] = ( unsigned long ) message;
    args[2] = ( unsigned long ) length;
    args[3] = ( unsigned long ) flags;
    args[4] = ( unsigned long ) dest_addr;
    args[5] = ( unsigned long ) dest_len;

    return socketcall ( SYS_SENDTO, args );
}

ssize_t recvfrom ( int socket, void *buffer, size_t length, int flags,
    struct sockaddr * address, socklen_t * address_len )
{
    unsigned long args[6];

    args[0] = ( unsigned long ) socket;
    args[1] = ( unsigned long ) buffer;
    args[2] = ( unsigned long ) length;
    args[3] = ( unsigned long ) flags;
    args[4] = ( unsigned long ) address;
    args[5] = ( unsigned long ) address_len;

    return socketcall ( SYS_RECVFROM, args );
}

int shutdown ( int socket, int how )
{
    unsigned long args[2];

    args[0] = ( unsigned long ) socket;
    args[1] = ( unsigned long ) how;

    return ( int ) socketcall ( SYS_SHUTDOWN, args );
}

int setsockopt ( int s, int level, int optname, const void *optval, socklen_t optlen )
{
    unsigned long args[5];

    args[0] = ( unsigned long ) s;
    args[1] = ( unsigned long ) level;
    args[2] = ( unsigned long ) optname;
    args[3] = ( unsigned long ) optval;
    args[4] = ( unsigned long ) optlen;

    return ( int ) socketcall ( SYS_SETSOCKOPT, args );
}

int getsockopt ( int s, int level, int optname, void *optval, socklen_t * optlen )
{
    unsigned long args[5];

    args[0] = ( unsigned long ) s;
    args[1] = ( unsigned long ) level;
    args[2] = ( unsigned long ) optname;
    args[3] = ( unsigned long ) optval;
    args[4] = ( unsigned long ) optlen;

    return ( int ) socketcall ( SYS_GETSOCKOPT, args );
}

int sendmsg ( int socket, const void *message, int flags )
{
    unsigned long args[3];

    args[0] = ( unsigned long ) socket;
    args[1] = ( unsigned long ) message;
    args[2] = ( unsigned long ) flags;

    return socketcall ( SYS_SENDMSG, args );
}

int recvmsg ( int socket, const void *message, int flags )
{
    unsigned long args[3];

    args[0] = ( unsigned long ) socket;
    args[1] = ( unsigned long ) message;
    args[2] = ( unsigned long ) flags;

    return socketcall ( SYS_RECVMSG, args );
}
#endif
