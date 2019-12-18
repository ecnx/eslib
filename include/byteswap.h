/* ------------------------------------------------------------------
 * ES Lib - Portable Minimalist C Library
 * ------------------------------------------------------------------ */

#include <eslib.h>

#ifndef ESLIB_BYTE_SWAP_H
#define ESLIB_BYTE_SWAP_H

/* Swap bytes in 16 bit value.  */
#define __bswap_constant_16(x) \
  ((((x) >> 8) & 0xff) | (((x) & 0xff) << 8))

#define __bswap_16(x) __bswap_constant_16 (x)

/* Swap bytes in 32 bit value.  */
#define __bswap_constant_32(x) \
  ((((x) & 0xff000000) >> 24) | (((x) & 0x00ff0000) >>  8) | \
   (((x) & 0x0000ff00) <<  8) | (((x) & 0x000000ff) << 24))

#define __bswap_32(x) __bswap_constant_32 (x)

#if defined __GNUC__ && __GNUC__ >= 2
/* Swap bytes in 64 bit value.  */
#define __bswap_64(x)                                 \
     (__extension__                               \
      ({ union { unsigned long long int __ll;                     \
         unsigned long int __l[2]; } __bswap_64_v, __bswap_64_r;      \
     __bswap_64_v.__ll = (x);                         \
     __bswap_64_r.__l[0] = __bswap_32 (__bswap_64_v.__l[1]);          \
     __bswap_64_r.__l[1] = __bswap_32 (__bswap_64_v.__l[0]);          \
     __bswap_64_r.__ll; }))
#endif

#endif
