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

.text
.global _start
_start:
    xor     %ebp, %ebp
    pop     %esi
    mov     %esp, %ecx
    and     $0xfffffff0, %esp
    push    %ecx
    push    %esi
    call    eslib_start
    mov     %eax, %ebx
    mov     $1, %eax
    int     $0x80

.section .text.syscall_set_errno
.global syscall_set_errno
syscall_set_errno:
    neg    %eax
    mov    %eax, eslib_errno
    mov    $-1, %eax
    ret

