/* ------------------------------------------------------------------
 * ES Lib - Portable Minimalist C Library
 * ------------------------------------------------------------------ */

#include <eslib.h>

#ifndef ESLIB_SOCKET_H
#define ESLIB_SOCKET_H

#define MSG_PEEK 2
#define MSG_NOSIGNAL 0x4000     /* Do not generate SIGPIPE */

enum sock_shutdown_cmd
{
    SHUT_RD,
    SHUT_WR,
    SHUT_RDWR,
};

#if ARCH == MIPS
enum sock_type
{
    SOCK_DGRAM = 1,
    SOCK_STREAM = 2,
    SOCK_RAW = 3,
    SOCK_RDM = 4,
    SOCK_SEQPACKET = 5,
    SOCK_DCCP = 6,
    SOCK_PACKET = 10,
};
#else
enum sock_type
{
    SOCK_STREAM = 1,
    SOCK_DGRAM = 2,
    SOCK_RAW = 3,
    SOCK_RDM = 4,
    SOCK_SEQPACKET = 5,
    SOCK_DCCP = 6,
    SOCK_PACKET = 10,
};
#endif

/* Standard well-defined IP protocols.  */
enum
{
    IPPROTO_IP = 0,             /* Dummy protocol for TCP  */
    IPPROTO_ICMP = 1,   /* Internet Control Message Protocol */
    IPPROTO_IGMP = 2,   /* Internet Group Management Protocol */
    IPPROTO_IPIP = 4,   /* IPIP tunnels (older KA9Q tunnels use 94) */
    IPPROTO_TCP = 6,    /* Transmission Control Protocol */
    IPPROTO_EGP = 8,    /* Exterior Gateway Protocol  */
    IPPROTO_PUP = 12,   /* PUP protocol    */
    IPPROTO_UDP = 17,   /* User Datagram Protocol  */
    IPPROTO_IDP = 22,   /* XNS IDP protocol   */
    IPPROTO_TP = 29,    /* SO Transport Protocol Class 4 */
    IPPROTO_DCCP = 33,  /* Datagram Congestion Control Protocol */
    IPPROTO_IPV6 = 41,  /* IPv6-in-IPv4 tunnelling  */
    IPPROTO_RSVP = 46,  /* RSVP Protocol   */
    IPPROTO_GRE = 47,   /* Cisco GRE tunnels (rfc 1701,1702) */
    IPPROTO_ESP = 50,   /* Encapsulation Security Payload protocol */
    IPPROTO_AH = 51,    /* Authentication Header protocol */
    IPPROTO_MTP = 92,   /* Multicast Transport Protocol  */
    IPPROTO_BEETPH = 94,        /* IP option pseudo header for BEET */
    IPPROTO_ENCAP = 98, /* Encapsulation Header   */
    IPPROTO_PIM = 103,  /* Protocol Independent Multicast */
    IPPROTO_COMP = 108, /* Compression Header Protocol  */
    IPPROTO_SCTP = 132, /* Stream Control Transport Protocol */
    IPPROTO_UDPLITE = 136,      /* UDP-Lite (RFC 3828)   */
    IPPROTO_MPLS = 137, /* MPLS in IP (RFC 4023)  */
    IPPROTO_RAW = 255,  /* Raw IP packets   */
    IPPROTO_MAX
};

#if ARCH == MIPS
#define SOL_SOCKET 0xffff
#define SO_REUSEADDR 0x0004     /* Allow reuse of local addresses.  */
#define SO_TYPE      0x1008     /* Compatible name for SO_STYLE.  */
#define SO_ERROR     0x1007     /* get error status and clear */
#define SO_SNDTIMEO  0x1005     /* send timeout */
#define SO_RCVTIMEO  0x1006     /* receive timeout */
#else
#define SOL_SOCKET   1
#define SO_REUSEADDR 2
#define SO_TYPE      3
#define SO_ERROR     4
#define SO_RCVTIMEO  20
#define SO_SNDTIMEO  21
#endif

/* Internet address. */
struct in_addr
{
    unsigned int s_addr;
};

struct sockaddr
{
    sa_family_t sa_family;      /* address family, AF_xxx */
    char sa_data[14];           /* 14 bytes of protocol address */
};

struct sockaddr_in
{
    short sin_family;           /* e.g. AF_INET */
    unsigned short sin_port;    /* e.g. htons(3490) */
    struct in_addr sin_addr;    /* see struct in_addr, below */
    char sin_zero[8];           /* zero this if you want to */
};

int socket ( int domain, int type, int protocol );
int connect ( int sockfd, const struct sockaddr *addr, socklen_t addrlen );
int accept ( int sockfd, struct sockaddr *addr, socklen_t * addrlen );
ssize_t send ( int sockfd, const void *buf, size_t len, int flags );
ssize_t sendto ( int sockfd, const void *buf, size_t len, int flags,
    const struct sockaddr *dest_addr, socklen_t addrlen );
ssize_t recv ( int sockfd, void *buf, size_t len, int flags );
ssize_t recvfrom ( int sockfd, void *buf, size_t len, int flags, struct sockaddr *src_addr,
    socklen_t * addrlen );
int bind ( int sockfd, const struct sockaddr *addr, socklen_t addrlen );
int listen ( int sockfd, int backlog );
int getsockopt ( int sockfd, int level, int optname, void *optval, socklen_t * optlen );
int setsockopt ( int sockfd, int level, int optname, const void *optval, socklen_t optlen );
int shutdown ( int sockfd, int how );

#endif
