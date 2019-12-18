/* ------------------------------------------------------------------
 * ES Lib - Portable Minimalist C Library
 * ------------------------------------------------------------------ */

#include <eslib.h>
#include <stdint.h>

#ifndef ESLIB_ARPA_INET_H
#define ESLIB_ARPA_INET_H

#if __BYTE_ORDER == __BIG_ENDIAN
#define htonl(hostlong) hostlong
#define htons(hostshort) hostshort
#define ntohl(netlong) netlong
#define ntohs(netshort) netshort
#elif __BYTE_ORDER == __LITTLE_ENDIAN
uint32_t htonl ( uint32_t hostlong );
uint16_t htons ( uint16_t hostshort );
uint32_t ntohl ( uint32_t netlong );
uint16_t ntohs ( uint16_t netshort );
#else
#error "Endian not set"
#endif

int inet_pton ( int af, const char *src, void *dst );

#endif
