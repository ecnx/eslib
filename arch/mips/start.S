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

.section .text.__start
.global __start
__start:
    lw      $a0, ($sp)
    move    $a1, $sp
    addiu   $a1, $a1, 4
    sub     $sp, $sp, 4
    jal     eslib_start
    move    $a0, $v0
    b       exit

.section .text.syscall_set_errno
.global syscall_set_errno
syscall_set_errno:
    sw      $v0, eslib_errno
    li      $v0, -1
    jr      $ra

.section .text.pipe
.global pipe
pipe:
    sub     $sp, $sp, 4
    sw      $ra, ($sp)
    jal     _pipe
    sw      $v0, ($a0)
    addiu   $a0, $a0, 4
    sw      $v1, ($a0)
    lw      $ra, ($sp)
    addiu   $sp, $sp, 4
    jr      $ra

.section .text.memset
.global memset
memset:
    move    $v0, $a0
    add     $a2, $a2, $a0
    bne     $a0, $a2, memset_loop
    jr      $ra
memset_loop:
    sb      $a1, 0($a0)
    addiu   $a0, $a0, 1
    bne     $a0, $a2, memset_loop
    jr      $ra

.section .text.memcpy
.global memcpy
memcpy:
    move    $v0, $a0
    add     $a2, $a2, $a0
    bne     $a0, $a2, memcpy_loop
    jr      $ra
memcpy_loop:
    lb      $t0, 0($a1)
    sb      $t0, 0($a0)
    addiu   $a0, $a0, 1
    addiu   $a1, $a1, 1
    bne     $a0, $a2, memcpy_loop
    jr      $ra

.section .text.strlen
.global strlen
strlen:
    addiu   $v0, $a0, 1
strlen_loop:
    lb      $t0, 0($a0)
    addiu   $a0, $a0, 1
    bne     $t0, $zero, strlen_loop
    sub     $v0, $a0, $v0
    jr      $ra

