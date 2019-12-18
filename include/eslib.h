/* ------------------------------------------------------------------
 * ES Lib - Portable Minimalist C Library
 * ------------------------------------------------------------------ */

#ifndef ESLIB_MAIN_H
#define ESLIB_MAIN_H

#if !defined EL && !defined EB
#error "Endian not set"
#endif

#ifndef ARCH
#error "Arch not set"
#endif

#ifndef UNUSED
#define UNUSED(x) (void)(x)
#endif

#define x86_64      1
#define x86_32      2
#define MIPS        3
#define ARM         4


#define __LITTLE_ENDIAN 1234
#define __BIG_ENDIAN 4321

#if defined EL
#define __BYTE_ORDER __LITTLE_ENDIAN
#elif defined EB
#define __BYTE_ORDER __BIG_ENDIAN
#else
#error "Endian not set"
#endif

#endif
