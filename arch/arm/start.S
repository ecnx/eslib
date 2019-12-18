.data
.global eslib_errno
    .align  4
    .size   eslib_errno, 4
eslib_errno:
    .int    0
.global eslib_envp
    .align  4
    .size   eslib_envp, 4
eslib_envp:
    .long   0

.section .text
.global _start
_start:
    ldr     r0, [sp]
    mov     r1, sp
    add     r1, r1, #4
    sub     sp, sp, #4
    bl      eslib_start
    b       exit

.section .text.syscall_set_errno
.global syscall_set_errno
syscall_set_errno:
    ldr     r1, =eslib_errno
    neg     r0, r0
    str     r0, [r1]
    mvn     r0, #0
    bx      lr

.section .text.memset
.global memset
memset:
    cmp     r2, #0
    bxeq    lr
    mov     ip, r0
    add     r2, r2, ip
memset_loop:
    strb    r1, [ip]
    add     ip, ip, #1
    cmp     ip, r2
    bne     memset_loop
    bx      lr

.section .text.memcpy
.global memcpy
memcpy:
    cmp     r2, #0
    bxeq    lr
    push    {r0, lr}
    add     r2, r2, r0
memcpy_loop:
    ldrb    ip, [r1]
    strb    ip, [r0]
    add     r0, r0, #1
    add     r1, r1, #1
    cmp     r0, r2
    bne     memcpy_loop
    pop     {r0, pc}

.section .text.strlen
.global strlen
strlen:
    add     r1, r0, #1
strlen_loop:
    ldrb    ip, [r0]
    add     r0, r0, #1
    cmp     ip, #0
    bne     strlen_loop
    sub     r0, r0, r1
    bx      lr
