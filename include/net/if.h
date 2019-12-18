/* ------------------------------------------------------------------
 * ES Lib - Portable Minimalist C Library
 * ------------------------------------------------------------------ */

#include <eslib.h>
#include <endian.h>
#include <sys/socket.h>

#ifndef ESLIB_NET_IF_H
#define ESLIB_NET_IF_H

enum net_device_flags
{
    IFF_UP = 1 << 0,            /* sysfs */
    IFF_BROADCAST = 1 << 1,     /* volatile */
    IFF_DEBUG = 1 << 2, /* sysfs */
    IFF_LOOPBACK = 1 << 3,      /* volatile */
    IFF_POINTOPOINT = 1 << 4,   /* volatile */
    IFF_NOTRAILERS = 1 << 5,    /* sysfs */
    IFF_RUNNING = 1 << 6,       /* volatile */
    IFF_NOARP = 1 << 7, /* sysfs */
    IFF_PROMISC = 1 << 8,       /* sysfs */
    IFF_ALLMULTI = 1 << 9,      /* sysfs */
    IFF_MASTER = 1 << 10,       /* volatile */
    IFF_SLAVE = 1 << 11,        /* volatile */
    IFF_MULTICAST = 1 << 12,    /* sysfs */
    IFF_PORTSEL = 1 << 13,      /* sysfs */
    IFF_AUTOMEDIA = 1 << 14,    /* sysfs */
    IFF_DYNAMIC = 1 << 15,      /* sysfs */
    IFF_LOWER_UP = 1 << 16,     /* volatile */
    IFF_DORMANT = 1 << 17,      /* volatile */
    IFF_ECHO = 1 << 18, /* volatile */
};

struct ifconf
{
    int ifc_len;                /* size of buffer   */
    union
    {
        char *ifcu_buf;
        struct ifreq *ifcu_req;
    } ifc_ifcu;
};

#define ifc_buf ifc_ifcu.ifcu_buf       /* buffer address   */
#define ifc_req ifc_ifcu.ifcu_req       /* array of structures  */

#define IF_NAMESIZE 16

struct if_nameindex
{
    unsigned int if_index;
    char *if_name;
};

struct ifmap
{
    unsigned long int mem_start;
    unsigned long int mem_end;
    unsigned short int base_addr;
    unsigned char irq;
    unsigned char dma;
    unsigned char port;
};

#define IFHWADDRLEN 6
#define IFNAMSIZ    IF_NAMESIZE

struct ifreq
{
    union
    {
        char ifrn_name[IFNAMSIZ];
    } ifr_ifrn;
    union
    {
        struct sockaddr ifru_addr;
        struct sockaddr ifru_dstaddr;
        struct sockaddr ifru_broadaddr;
        struct sockaddr ifru_netmask;
        struct sockaddr ifru_hwaddr;
        short int ifru_flags;
        int ifru_ivalue;
        int ifru_mtu;
        struct ifmap ifru_map;
        char ifru_slave[IFNAMSIZ];
        char ifru_newname[IFNAMSIZ];
        char *ifru_data;
    } ifr_ifru;
};

#define ifr_name    ifr_ifrn.ifrn_name
#define ifr_hwaddr  ifr_ifru.ifru_hwaddr
#define ifr_addr    ifr_ifru.ifru_addr
#define ifr_dstaddr ifr_ifru.ifru_dstaddr
#define ifr_broadaddr   ifr_ifru.ifru_broadaddr
#define ifr_netmask ifr_ifru.ifru_netmask
#define ifr_flags   ifr_ifru.ifru_flags
#define ifr_metric  ifr_ifru.ifru_ivalue
#define ifr_mtu     ifr_ifru.ifru_mtu
#define ifr_map     ifr_ifru.ifru_map
#define ifr_slave   ifr_ifru.ifru_slave
#define ifr_data    ifr_ifru.ifru_data
#define ifr_ifindex ifr_ifru.ifru_ivalue
#define ifr_bandwidth   ifr_ifru.ifru_ivalue
#define ifr_qlen    ifr_ifru.ifru_ivalue
#define ifr_newname ifr_ifru.ifru_newname
#define _IOT_ifreq  _IOT(_IOTS(char),IFNAMSIZ,_IOTS(char),16,0,0)
#define _IOT_ifreq_short _IOT(_IOTS(char),IFNAMSIZ,_IOTS(short),1,0,0)
#define _IOT_ifreq_int  _IOT(_IOTS(char),IFNAMSIZ,_IOTS(int),1,0,0)

#endif
