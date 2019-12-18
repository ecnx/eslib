.data
.global eslib_errno
    .align  8
    .size   eslib_errno, 4
eslib_errno:
    .int    0
.global eslib_envp
    .align  8
    .size   eslib_envp, 8
eslib_envp:
    .long   0

.section .text._start
.global _start
_start:
    xor     %rbp, %rbp
    pop     %rdi
    mov     %rsp, %rsi
    and     $0xfffffffffffffff0, %rsp
    call    eslib_start
    mov     %rax, %rdi
    jmp     exit

.section .text.thread_startup
.global thread_startup
thread_startup:
    sub     $8, %rsp
    mov     (%rsp), %rax
    sub     $8, %rsp
    mov     (%rsp), %rdi
    add     $16, %rsp
    call    *%rax
    mov     %rax, %rdi
    jmp     exit

.section .text.syscall_set_errno
.global syscall_set_errno
syscall_set_errno:
    neg    %rax
    mov    %eax, eslib_errno
    mov    $-1, %rax
    ret

.section .text.memset
.global memset
memset:
    push    %rdi
    test    %rdx, %rdx
    je      memset_fini
    mov     %rsi, %rax
    add     %rdi, %rdx
memset_loop:
    movb    %al, (%rdi)
    inc     %rdi
    cmp     %rdi, %rdx
    jne     memset_loop
    mov     %rsi, %rax
memset_fini:
    pop     %rax
    ret

.section .text.memcpy
.global memcpy
memcpy:
    push %rdi
    test    %rdx, %rdx
    je      memcpy_fini
    add     %rdi, %rdx
memcpy_loop:
    movb    (%rsi), %al
    movb    %al, (%rdi)
    inc     %rdi
    inc     %rsi
    cmp     %rdi, %rdx
    jne     memcpy_loop
memcpy_fini:
    pop     %rax
    ret

.section .text.strlen
.global strlen
strlen:
    push    %rbx
    mov     %rdi, %rax
    inc     %rax
strlen_loop:
    mov     (%rdi), %bl
    inc     %rdi
    test    %bl, %bl
    jne     strlen_loop
    xchg    %rdi, %rax
    sub     %rdi, %rax
    pop     %rbx
    ret
