/*
 * Copyright (c) 1982, 1986, 1993
 *  The Regents of the University of California.  All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 4. Neither the name of the University nor the names of its contributors
 *    may be used to endorse or promote products derived from this software
 *    without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE REGENTS OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 *
 *  @(#)tcp.h   8.1 (Berkeley) 6/10/93
 */

#include <eslib.h>
#include <endian.h>

#ifndef _NETINET_TCP_H
#define _NETINET_TCP_H  1

typedef uint32_t tcp_seq;

struct tcphdr
{
    __extension__ union
    {
        struct
        {
            uint16_t th_sport;  /* source port */
            uint16_t th_dport;  /* destination port */
            tcp_seq th_seq;     /* sequence number */
            tcp_seq th_ack;     /* acknowledgement number */
#if __BYTE_ORDER == __LITTLE_ENDIAN
            uint8_t th_x2:4;    /* (unused) */
            uint8_t th_off:4;   /* data offset */
#elif __BYTE_ORDER == __BIG_ENDIAN
            uint8_t th_off:4;   /* data offset */
            uint8_t th_x2:4;    /* (unused) */
#endif
            uint8_t th_flags;
#define TH_FIN  0x01
#define TH_SYN  0x02
#define TH_RST  0x04
#define TH_PUSH 0x08
#define TH_ACK  0x10
#define TH_URG  0x20
            uint16_t th_win;    /* window */
            uint16_t th_sum;    /* checksum */
            uint16_t th_urp;    /* urgent pointer */
        };
        struct
        {
            uint16_t source;
            uint16_t dest;
            uint32_t seq;
            uint32_t ack_seq;
#if __BYTE_ORDER == __LITTLE_ENDIAN
            uint16_t res1:4;
            uint16_t doff:4;
            uint16_t fin:1;
            uint16_t syn:1;
            uint16_t rst:1;
            uint16_t psh:1;
            uint16_t ack:1;
            uint16_t urg:1;
            uint16_t res2:2;
#elif __BYTE_ORDER == __BIG_ENDIAN
            uint16_t doff:4;
            uint16_t res1:4;
            uint16_t res2:2;
            uint16_t urg:1;
            uint16_t ack:1;
            uint16_t psh:1;
            uint16_t rst:1;
            uint16_t syn:1;
            uint16_t fin:1;
#else
#error "Adjust your <bits/endian.h> defines"
#endif
            uint16_t window;
            uint16_t check;
            uint16_t urg_ptr;
        };
    };
};

#endif
