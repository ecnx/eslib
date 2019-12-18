.section .text.restart_syscall
.global restart_syscall
restart_syscall:
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.exit
.global exit
exit:
    push    %ebx
    mov     8(%esp), %ebx
    mov     $1, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.fork
.global fork
fork:
    push    %ebx
    mov     8(%esp), %ebx
    mov     $2, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.read
.global read
read:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $3, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.write
.global write
write:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $4, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text._open
.global _open
_open:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $5, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.close
.global close
close:
    push    %ebx
    mov     8(%esp), %ebx
    mov     $6, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.waitpid
.global waitpid
waitpid:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $7, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.creat
.global creat
creat:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $8, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.link
.global link
link:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $9, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.unlink
.global unlink
unlink:
    push    %ebx
    mov     8(%esp), %ebx
    mov     $10, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text._execve
.global _execve
_execve:
    push    %ebx
    push    %esi
    mov     24(%esp), %esi
    mov     20(%esp), %edx
    mov     16(%esp), %ecx
    mov     12(%esp), %ebx
    mov     $11, %eax
    int     $0x80
    pop     %ebx
    pop     %esi
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.chdir
.global chdir
chdir:
    push    %ebx
    mov     8(%esp), %ebx
    mov     $12, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text._time
.global _time
_time:
    push    %ebx
    mov     8(%esp), %ebx
    mov     $13, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text._mknod
.global _mknod
_mknod:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $14, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.chmod
.global chmod
chmod:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $15, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.lchown16
.global lchown16
lchown16:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $16, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.stat
.global stat
stat:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $18, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.lseek
.global lseek
lseek:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $19, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.getpid
.global getpid
getpid:
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.mount
.global mount
mount:
    push    %ebx
    push    %esi
    push    %edi
    mov     32(%esp), %edi
    mov     28(%esp), %esi
    mov     24(%esp), %edx
    mov     20(%esp), %ecx
    mov     16(%esp), %ebx
    mov     $21, %eax
    int     $0x80
    pop     %ebx
    pop     %esi
    pop     %edi
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.oldumount
.global oldumount
oldumount:
    push    %ebx
    mov     8(%esp), %ebx
    mov     $22, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.setuid16
.global setuid16
setuid16:
    push    %ebx
    mov     8(%esp), %ebx
    mov     $23, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.getuid16
.global getuid16
getuid16:
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.stime
.global stime
stime:
    push    %ebx
    mov     8(%esp), %ebx
    mov     $25, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.ptrace
.global ptrace
ptrace:
    push    %ebx
    push    %esi
    mov     24(%esp), %esi
    mov     20(%esp), %edx
    mov     16(%esp), %ecx
    mov     12(%esp), %ebx
    mov     $26, %eax
    int     $0x80
    pop     %ebx
    pop     %esi
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.alarm
.global alarm
alarm:
    push    %ebx
    mov     8(%esp), %ebx
    mov     $27, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.fstat
.global fstat
fstat:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $28, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.pause
.global pause
pause:
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.utime
.global utime
utime:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $30, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.access
.global access
access:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $33, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.nice
.global nice
nice:
    push    %ebx
    mov     8(%esp), %ebx
    mov     $34, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.sync
.global sync
sync:
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.kill
.global kill
kill:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $37, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.rename
.global rename
rename:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $38, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.mkdir
.global mkdir
mkdir:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $39, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.rmdir
.global rmdir
rmdir:
    push    %ebx
    mov     8(%esp), %ebx
    mov     $40, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.dup
.global dup
dup:
    push    %ebx
    mov     8(%esp), %ebx
    mov     $41, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.pipe
.global pipe
pipe:
    push    %ebx
    mov     8(%esp), %ebx
    mov     $42, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.times
.global times
times:
    push    %ebx
    mov     8(%esp), %ebx
    mov     $43, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text._brk
.global _brk
_brk:
    push    %ebx
    mov     8(%esp), %ebx
    mov     $45, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.setgid16
.global setgid16
setgid16:
    push    %ebx
    mov     8(%esp), %ebx
    mov     $46, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.getgid16
.global getgid16
getgid16:
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.signal
.global signal
signal:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $48, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.geteuid16
.global geteuid16
geteuid16:
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.getegid16
.global getegid16
getegid16:
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.acct
.global acct
acct:
    push    %ebx
    mov     8(%esp), %ebx
    mov     $51, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.umount
.global umount
umount:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $52, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.ioctl
.global ioctl
ioctl:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $54, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.fcntl
.global fcntl
fcntl:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $55, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.setpgid
.global setpgid
setpgid:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $57, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.olduname
.global olduname
olduname:
    push    %ebx
    mov     8(%esp), %ebx
    mov     $59, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.umask
.global umask
umask:
    push    %ebx
    mov     8(%esp), %ebx
    mov     $60, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.chroot
.global chroot
chroot:
    push    %ebx
    mov     8(%esp), %ebx
    mov     $61, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.ustat
.global ustat
ustat:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $62, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.dup2
.global dup2
dup2:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $63, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.getppid
.global getppid
getppid:
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.getpgrp
.global getpgrp
getpgrp:
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.setsid
.global setsid
setsid:
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.sigaction
.global sigaction
sigaction:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $67, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.sgetmask
.global sgetmask
sgetmask:
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.ssetmask
.global ssetmask
ssetmask:
    push    %ebx
    mov     8(%esp), %ebx
    mov     $69, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.setreuid16
.global setreuid16
setreuid16:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $70, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.setregid16
.global setregid16
setregid16:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $71, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.sigsuspend
.global sigsuspend
sigsuspend:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $72, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.sigpending
.global sigpending
sigpending:
    push    %ebx
    mov     8(%esp), %ebx
    mov     $73, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.sethostname
.global sethostname
sethostname:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $74, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.setrlimit
.global setrlimit
setrlimit:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $75, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.old_getrlimit
.global old_getrlimit
old_getrlimit:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $76, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.getrusage
.global getrusage
getrusage:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $77, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.gettimeofday
.global gettimeofday
gettimeofday:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $78, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.settimeofday
.global settimeofday
settimeofday:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $79, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.getgroups16
.global getgroups16
getgroups16:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $80, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.setgroups16
.global setgroups16
setgroups16:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $81, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.old_select
.global old_select
old_select:
    push    %ebx
    mov     8(%esp), %ebx
    mov     $82, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.symlink
.global symlink
symlink:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $83, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.lstat
.global lstat
lstat:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $84, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.readlink
.global readlink
readlink:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $85, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.uselib
.global uselib
uselib:
    push    %ebx
    mov     8(%esp), %ebx
    mov     $86, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.swapon
.global swapon
swapon:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $87, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.reboot
.global reboot
reboot:
    push    %ebx
    push    %esi
    mov     24(%esp), %esi
    mov     20(%esp), %edx
    mov     16(%esp), %ecx
    mov     12(%esp), %ebx
    mov     $88, %eax
    int     $0x80
    pop     %ebx
    pop     %esi
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.old_readdir
.global old_readdir
old_readdir:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $89, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.old_mmap
.global old_mmap
old_mmap:
    push    %ebx
    mov     8(%esp), %ebx
    mov     $90, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.munmap
.global munmap
munmap:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $91, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.truncate
.global truncate
truncate:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $92, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.ftruncate
.global ftruncate
ftruncate:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $93, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.fchmod
.global fchmod
fchmod:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $94, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.fchown16
.global fchown16
fchown16:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $95, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.getpriority
.global getpriority
getpriority:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $96, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.setpriority
.global setpriority
setpriority:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $97, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.statfs
.global statfs
statfs:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $99, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.fstatfs
.global fstatfs
fstatfs:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $100, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.ioperm
.global ioperm
ioperm:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $101, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.socketcall
.global socketcall
socketcall:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $102, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.syslog
.global syslog
syslog:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $103, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.setitimer
.global setitimer
setitimer:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $104, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.getitimer
.global getitimer
getitimer:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $105, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.newstat
.global newstat
newstat:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $106, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.newlstat
.global newlstat
newlstat:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $107, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.newfstat
.global newfstat
newfstat:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $108, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.uname
.global uname
uname:
    push    %ebx
    mov     8(%esp), %ebx
    mov     $109, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.iopl
.global iopl
iopl:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $110, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.vhangup
.global vhangup
vhangup:
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.vm86old
.global vm86old
vm86old:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $113, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.wait4
.global wait4
wait4:
    push    %ebx
    push    %esi
    mov     24(%esp), %esi
    mov     20(%esp), %edx
    mov     16(%esp), %ecx
    mov     12(%esp), %ebx
    mov     $114, %eax
    int     $0x80
    pop     %ebx
    pop     %esi
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.swapoff
.global swapoff
swapoff:
    push    %ebx
    mov     8(%esp), %ebx
    mov     $115, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.sysinfo
.global sysinfo
sysinfo:
    push    %ebx
    mov     8(%esp), %ebx
    mov     $116, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.ipc
.global ipc
ipc:
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.fsync
.global fsync
fsync:
    push    %ebx
    mov     8(%esp), %ebx
    mov     $118, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.sigreturn
.global sigreturn
sigreturn:
    push    %ebx
    mov     8(%esp), %ebx
    mov     $119, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text._clone
.global _clone
_clone:
    push    %ebx
    push    %esi
    push    %edi
    mov     32(%esp), %edi
    mov     28(%esp), %esi
    mov     24(%esp), %edx
    mov     20(%esp), %ecx
    mov     16(%esp), %ebx
    mov     $120, %eax
    int     $0x80
    pop     %ebx
    pop     %esi
    pop     %edi
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.setdomainname
.global setdomainname
setdomainname:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $121, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.newuname
.global newuname
newuname:
    push    %ebx
    mov     8(%esp), %ebx
    mov     $122, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.modify_ldt
.global modify_ldt
modify_ldt:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $123, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.adjtimex
.global adjtimex
adjtimex:
    push    %ebx
    mov     8(%esp), %ebx
    mov     $124, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.mprotect
.global mprotect
mprotect:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $125, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.sigprocmask
.global sigprocmask
sigprocmask:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $126, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.init_module
.global init_module
init_module:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $128, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.delete_module
.global delete_module
delete_module:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $129, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.quotactl
.global quotactl
quotactl:
    push    %ebx
    push    %esi
    mov     24(%esp), %esi
    mov     20(%esp), %edx
    mov     16(%esp), %ecx
    mov     12(%esp), %ebx
    mov     $131, %eax
    int     $0x80
    pop     %ebx
    pop     %esi
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.getpgid
.global getpgid
getpgid:
    push    %ebx
    mov     8(%esp), %ebx
    mov     $132, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.fchdir
.global fchdir
fchdir:
    push    %ebx
    mov     8(%esp), %ebx
    mov     $133, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.bdflush
.global bdflush
bdflush:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $134, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.sysfs
.global sysfs
sysfs:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $135, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.personality
.global personality
personality:
    push    %ebx
    mov     8(%esp), %ebx
    mov     $136, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.setfsuid16
.global setfsuid16
setfsuid16:
    push    %ebx
    mov     8(%esp), %ebx
    mov     $138, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.setfsgid16
.global setfsgid16
setfsgid16:
    push    %ebx
    mov     8(%esp), %ebx
    mov     $139, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.llseek
.global llseek
llseek:
    push    %ebx
    push    %esi
    push    %edi
    mov     32(%esp), %edi
    mov     28(%esp), %esi
    mov     24(%esp), %edx
    mov     20(%esp), %ecx
    mov     16(%esp), %ebx
    mov     $140, %eax
    int     $0x80
    pop     %ebx
    pop     %esi
    pop     %edi
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.getdents
.global getdents
getdents:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $141, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.select
.global select
select:
    push    %ebx
    push    %esi
    push    %edi
    mov     32(%esp), %edi
    mov     28(%esp), %esi
    mov     24(%esp), %edx
    mov     20(%esp), %ecx
    mov     16(%esp), %ebx
    mov     $142, %eax
    int     $0x80
    pop     %ebx
    pop     %esi
    pop     %edi
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.flock
.global flock
flock:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $143, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.msync
.global msync
msync:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $144, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.readv
.global readv
readv:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $145, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.writev
.global writev
writev:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $146, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.getsid
.global getsid
getsid:
    push    %ebx
    mov     8(%esp), %ebx
    mov     $147, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.fdatasync
.global fdatasync
fdatasync:
    push    %ebx
    mov     8(%esp), %ebx
    mov     $148, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.sysctl
.global sysctl
sysctl:
    push    %ebx
    mov     8(%esp), %ebx
    mov     $149, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.mlock
.global mlock
mlock:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $150, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.munlock
.global munlock
munlock:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $151, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.mlockall
.global mlockall
mlockall:
    push    %ebx
    mov     8(%esp), %ebx
    mov     $152, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.munlockall
.global munlockall
munlockall:
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.sched_setparam
.global sched_setparam
sched_setparam:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $154, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.sched_getparam
.global sched_getparam
sched_getparam:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $155, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.sched_setscheduler
.global sched_setscheduler
sched_setscheduler:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $156, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.sched_getscheduler
.global sched_getscheduler
sched_getscheduler:
    push    %ebx
    mov     8(%esp), %ebx
    mov     $157, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.sched_yield
.global sched_yield
sched_yield:
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.sched_get_priority_max
.global sched_get_priority_max
sched_get_priority_max:
    push    %ebx
    mov     8(%esp), %ebx
    mov     $159, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.sched_get_priority_min
.global sched_get_priority_min
sched_get_priority_min:
    push    %ebx
    mov     8(%esp), %ebx
    mov     $160, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.sched_rr_get_interval
.global sched_rr_get_interval
sched_rr_get_interval:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $161, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.nanosleep
.global nanosleep
nanosleep:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $162, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.mremap
.global mremap
mremap:
    push    %ebx
    push    %esi
    push    %edi
    mov     32(%esp), %edi
    mov     28(%esp), %esi
    mov     24(%esp), %edx
    mov     20(%esp), %ecx
    mov     16(%esp), %ebx
    mov     $163, %eax
    int     $0x80
    pop     %ebx
    pop     %esi
    pop     %edi
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.setresuid16
.global setresuid16
setresuid16:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $164, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.getresuid16
.global getresuid16
getresuid16:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $165, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.vm86
.global vm86
vm86:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $166, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.poll
.global poll
poll:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $168, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.nfsservctl
.global nfsservctl
nfsservctl:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $169, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.setresgid16
.global setresgid16
setresgid16:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $170, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.getresgid16
.global getresgid16
getresgid16:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $171, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.prctl
.global prctl
prctl:
    push    %ebx
    push    %esi
    push    %edi
    mov     32(%esp), %edi
    mov     28(%esp), %esi
    mov     24(%esp), %edx
    mov     20(%esp), %ecx
    mov     16(%esp), %ebx
    mov     $172, %eax
    int     $0x80
    pop     %ebx
    pop     %esi
    pop     %edi
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.rt_sigreturn
.global rt_sigreturn
rt_sigreturn:
    push    %ebx
    mov     8(%esp), %ebx
    mov     $173, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.rt_sigaction
.global rt_sigaction
rt_sigaction:
    push    %ebx
    push    %esi
    mov     24(%esp), %esi
    mov     20(%esp), %edx
    mov     16(%esp), %ecx
    mov     12(%esp), %ebx
    mov     $174, %eax
    int     $0x80
    pop     %ebx
    pop     %esi
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.rt_sigprocmask
.global rt_sigprocmask
rt_sigprocmask:
    push    %ebx
    push    %esi
    mov     24(%esp), %esi
    mov     20(%esp), %edx
    mov     16(%esp), %ecx
    mov     12(%esp), %ebx
    mov     $175, %eax
    int     $0x80
    pop     %ebx
    pop     %esi
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.rt_sigpending
.global rt_sigpending
rt_sigpending:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $176, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.rt_sigtimedwait
.global rt_sigtimedwait
rt_sigtimedwait:
    push    %ebx
    push    %esi
    mov     24(%esp), %esi
    mov     20(%esp), %edx
    mov     16(%esp), %ecx
    mov     12(%esp), %ebx
    mov     $177, %eax
    int     $0x80
    pop     %ebx
    pop     %esi
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.rt_sigqueueinfo
.global rt_sigqueueinfo
rt_sigqueueinfo:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $178, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.rt_sigsuspend
.global rt_sigsuspend
rt_sigsuspend:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $179, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.pread64
.global pread64
pread64:
    push    %ebx
    push    %esi
    mov     24(%esp), %esi
    mov     20(%esp), %edx
    mov     16(%esp), %ecx
    mov     12(%esp), %ebx
    mov     $180, %eax
    int     $0x80
    pop     %ebx
    pop     %esi
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.pwrite64
.global pwrite64
pwrite64:
    push    %ebx
    push    %esi
    mov     24(%esp), %esi
    mov     20(%esp), %edx
    mov     16(%esp), %ecx
    mov     12(%esp), %ebx
    mov     $181, %eax
    int     $0x80
    pop     %ebx
    pop     %esi
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.chown16
.global chown16
chown16:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $182, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.getcwd
.global getcwd
getcwd:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $183, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.capget
.global capget
capget:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $184, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.capset
.global capset
capset:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $185, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.sigaltstack
.global sigaltstack
sigaltstack:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $186, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.sendfile
.global sendfile
sendfile:
    push    %ebx
    push    %esi
    mov     24(%esp), %esi
    mov     20(%esp), %edx
    mov     16(%esp), %ecx
    mov     12(%esp), %ebx
    mov     $187, %eax
    int     $0x80
    pop     %ebx
    pop     %esi
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.vfork
.global vfork
vfork:
    push    %ebx
    mov     8(%esp), %ebx
    mov     $190, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.getrlimit
.global getrlimit
getrlimit:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $191, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.mmap_pgoff
.global mmap_pgoff
mmap_pgoff:
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.truncate64
.global truncate64
truncate64:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $193, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.ftruncate64
.global ftruncate64
ftruncate64:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $194, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.stat64
.global stat64
stat64:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $195, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.lstat64
.global lstat64
lstat64:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $196, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.fstat64
.global fstat64
fstat64:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $197, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.lchown
.global lchown
lchown:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $198, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.getuid
.global getuid
getuid:
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.getgid
.global getgid
getgid:
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.geteuid
.global geteuid
geteuid:
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.getegid
.global getegid
getegid:
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.setreuid
.global setreuid
setreuid:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $203, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.setregid
.global setregid
setregid:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $204, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.getgroups
.global getgroups
getgroups:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $205, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.setgroups
.global setgroups
setgroups:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $206, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.fchown
.global fchown
fchown:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $207, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.setresuid
.global setresuid
setresuid:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $208, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.getresuid
.global getresuid
getresuid:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $209, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.setresgid
.global setresgid
setresgid:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $210, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.getresgid
.global getresgid
getresgid:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $211, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.chown
.global chown
chown:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $212, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.setuid
.global setuid
setuid:
    push    %ebx
    mov     8(%esp), %ebx
    mov     $213, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.setgid
.global setgid
setgid:
    push    %ebx
    mov     8(%esp), %ebx
    mov     $214, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.setfsuid
.global setfsuid
setfsuid:
    push    %ebx
    mov     8(%esp), %ebx
    mov     $215, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.setfsgid
.global setfsgid
setfsgid:
    push    %ebx
    mov     8(%esp), %ebx
    mov     $216, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.pivot_root
.global pivot_root
pivot_root:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $217, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.mincore
.global mincore
mincore:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $218, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.madvise
.global madvise
madvise:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $219, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.getdents64
.global getdents64
getdents64:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $220, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.fcntl64
.global fcntl64
fcntl64:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $221, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.gettid
.global gettid
gettid:
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.readahead
.global readahead
readahead:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $225, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.setxattr
.global setxattr
setxattr:
    push    %ebx
    push    %esi
    push    %edi
    mov     32(%esp), %edi
    mov     28(%esp), %esi
    mov     24(%esp), %edx
    mov     20(%esp), %ecx
    mov     16(%esp), %ebx
    mov     $226, %eax
    int     $0x80
    pop     %ebx
    pop     %esi
    pop     %edi
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.lsetxattr
.global lsetxattr
lsetxattr:
    push    %ebx
    push    %esi
    push    %edi
    mov     32(%esp), %edi
    mov     28(%esp), %esi
    mov     24(%esp), %edx
    mov     20(%esp), %ecx
    mov     16(%esp), %ebx
    mov     $227, %eax
    int     $0x80
    pop     %ebx
    pop     %esi
    pop     %edi
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.fsetxattr
.global fsetxattr
fsetxattr:
    push    %ebx
    push    %esi
    push    %edi
    mov     32(%esp), %edi
    mov     28(%esp), %esi
    mov     24(%esp), %edx
    mov     20(%esp), %ecx
    mov     16(%esp), %ebx
    mov     $228, %eax
    int     $0x80
    pop     %ebx
    pop     %esi
    pop     %edi
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.getxattr
.global getxattr
getxattr:
    push    %ebx
    push    %esi
    mov     24(%esp), %esi
    mov     20(%esp), %edx
    mov     16(%esp), %ecx
    mov     12(%esp), %ebx
    mov     $229, %eax
    int     $0x80
    pop     %ebx
    pop     %esi
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.lgetxattr
.global lgetxattr
lgetxattr:
    push    %ebx
    push    %esi
    mov     24(%esp), %esi
    mov     20(%esp), %edx
    mov     16(%esp), %ecx
    mov     12(%esp), %ebx
    mov     $230, %eax
    int     $0x80
    pop     %ebx
    pop     %esi
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.fgetxattr
.global fgetxattr
fgetxattr:
    push    %ebx
    push    %esi
    mov     24(%esp), %esi
    mov     20(%esp), %edx
    mov     16(%esp), %ecx
    mov     12(%esp), %ebx
    mov     $231, %eax
    int     $0x80
    pop     %ebx
    pop     %esi
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.listxattr
.global listxattr
listxattr:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $232, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.llistxattr
.global llistxattr
llistxattr:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $233, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.flistxattr
.global flistxattr
flistxattr:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $234, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.removexattr
.global removexattr
removexattr:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $235, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.lremovexattr
.global lremovexattr
lremovexattr:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $236, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.fremovexattr
.global fremovexattr
fremovexattr:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $237, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.tkill
.global tkill
tkill:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $238, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.sendfile64
.global sendfile64
sendfile64:
    push    %ebx
    push    %esi
    mov     24(%esp), %esi
    mov     20(%esp), %edx
    mov     16(%esp), %ecx
    mov     12(%esp), %ebx
    mov     $239, %eax
    int     $0x80
    pop     %ebx
    pop     %esi
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.futex
.global futex
futex:
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.sched_setaffinity
.global sched_setaffinity
sched_setaffinity:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $241, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.sched_getaffinity
.global sched_getaffinity
sched_getaffinity:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $242, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.set_thread_area
.global set_thread_area
set_thread_area:
    push    %ebx
    mov     8(%esp), %ebx
    mov     $243, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.get_thread_area
.global get_thread_area
get_thread_area:
    push    %ebx
    mov     8(%esp), %ebx
    mov     $244, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.io_setup
.global io_setup
io_setup:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $245, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.io_destroy
.global io_destroy
io_destroy:
    push    %ebx
    mov     8(%esp), %ebx
    mov     $246, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.io_getevents
.global io_getevents
io_getevents:
    push    %ebx
    push    %esi
    push    %edi
    mov     32(%esp), %edi
    mov     28(%esp), %esi
    mov     24(%esp), %edx
    mov     20(%esp), %ecx
    mov     16(%esp), %ebx
    mov     $247, %eax
    int     $0x80
    pop     %ebx
    pop     %esi
    pop     %edi
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.io_submit
.global io_submit
io_submit:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $248, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.io_cancel
.global io_cancel
io_cancel:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $249, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.fadvise64
.global fadvise64
fadvise64:
    push    %ebx
    push    %esi
    mov     24(%esp), %esi
    mov     20(%esp), %edx
    mov     16(%esp), %ecx
    mov     12(%esp), %ebx
    mov     $250, %eax
    int     $0x80
    pop     %ebx
    pop     %esi
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.exit_group
.global exit_group
exit_group:
    push    %ebx
    mov     8(%esp), %ebx
    mov     $252, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.lookup_dcookie
.global lookup_dcookie
lookup_dcookie:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $253, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.epoll_create
.global epoll_create
epoll_create:
    push    %ebx
    mov     8(%esp), %ebx
    mov     $254, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.epoll_ctl
.global epoll_ctl
epoll_ctl:
    push    %ebx
    push    %esi
    mov     24(%esp), %esi
    mov     20(%esp), %edx
    mov     16(%esp), %ecx
    mov     12(%esp), %ebx
    mov     $255, %eax
    int     $0x80
    pop     %ebx
    pop     %esi
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.epoll_wait
.global epoll_wait
epoll_wait:
    push    %ebx
    push    %esi
    mov     24(%esp), %esi
    mov     20(%esp), %edx
    mov     16(%esp), %ecx
    mov     12(%esp), %ebx
    mov     $256, %eax
    int     $0x80
    pop     %ebx
    pop     %esi
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.remap_file_pages
.global remap_file_pages
remap_file_pages:
    push    %ebx
    push    %esi
    push    %edi
    mov     32(%esp), %edi
    mov     28(%esp), %esi
    mov     24(%esp), %edx
    mov     20(%esp), %ecx
    mov     16(%esp), %ebx
    mov     $257, %eax
    int     $0x80
    pop     %ebx
    pop     %esi
    pop     %edi
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.set_tid_address
.global set_tid_address
set_tid_address:
    push    %ebx
    mov     8(%esp), %ebx
    mov     $258, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.timer_create
.global timer_create
timer_create:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $259, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.timer_settime
.global timer_settime
timer_settime:
    push    %ebx
    push    %esi
    mov     24(%esp), %esi
    mov     20(%esp), %edx
    mov     16(%esp), %ecx
    mov     12(%esp), %ebx
    mov     $260, %eax
    int     $0x80
    pop     %ebx
    pop     %esi
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.timer_gettime
.global timer_gettime
timer_gettime:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $261, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.timer_getoverrun
.global timer_getoverrun
timer_getoverrun:
    push    %ebx
    mov     8(%esp), %ebx
    mov     $262, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.timer_delete
.global timer_delete
timer_delete:
    push    %ebx
    mov     8(%esp), %ebx
    mov     $263, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.clock_settime
.global clock_settime
clock_settime:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $264, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.clock_gettime
.global clock_gettime
clock_gettime:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $265, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.clock_getres
.global clock_getres
clock_getres:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $266, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.clock_nanosleep
.global clock_nanosleep
clock_nanosleep:
    push    %ebx
    push    %esi
    mov     24(%esp), %esi
    mov     20(%esp), %edx
    mov     16(%esp), %ecx
    mov     12(%esp), %ebx
    mov     $267, %eax
    int     $0x80
    pop     %ebx
    pop     %esi
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.statfs64
.global statfs64
statfs64:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $268, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.fstatfs64
.global fstatfs64
fstatfs64:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $269, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.tgkill
.global tgkill
tgkill:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $270, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.utimes
.global utimes
utimes:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $271, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.fadvise64_64
.global fadvise64_64
fadvise64_64:
    push    %ebx
    push    %esi
    mov     24(%esp), %esi
    mov     20(%esp), %edx
    mov     16(%esp), %ecx
    mov     12(%esp), %ebx
    mov     $272, %eax
    int     $0x80
    pop     %ebx
    pop     %esi
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.mbind
.global mbind
mbind:
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.get_mempolicy
.global get_mempolicy
get_mempolicy:
    push    %ebx
    push    %esi
    push    %edi
    mov     32(%esp), %edi
    mov     28(%esp), %esi
    mov     24(%esp), %edx
    mov     20(%esp), %ecx
    mov     16(%esp), %ebx
    mov     $275, %eax
    int     $0x80
    pop     %ebx
    pop     %esi
    pop     %edi
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.set_mempolicy
.global set_mempolicy
set_mempolicy:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $276, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.mq_open
.global mq_open
mq_open:
    push    %ebx
    push    %esi
    mov     24(%esp), %esi
    mov     20(%esp), %edx
    mov     16(%esp), %ecx
    mov     12(%esp), %ebx
    mov     $277, %eax
    int     $0x80
    pop     %ebx
    pop     %esi
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.mq_unlink
.global mq_unlink
mq_unlink:
    push    %ebx
    mov     8(%esp), %ebx
    mov     $278, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.mq_timedsend
.global mq_timedsend
mq_timedsend:
    push    %ebx
    push    %esi
    push    %edi
    mov     32(%esp), %edi
    mov     28(%esp), %esi
    mov     24(%esp), %edx
    mov     20(%esp), %ecx
    mov     16(%esp), %ebx
    mov     $279, %eax
    int     $0x80
    pop     %ebx
    pop     %esi
    pop     %edi
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.mq_timedreceive
.global mq_timedreceive
mq_timedreceive:
    push    %ebx
    push    %esi
    push    %edi
    mov     32(%esp), %edi
    mov     28(%esp), %esi
    mov     24(%esp), %edx
    mov     20(%esp), %ecx
    mov     16(%esp), %ebx
    mov     $280, %eax
    int     $0x80
    pop     %ebx
    pop     %esi
    pop     %edi
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.mq_notify
.global mq_notify
mq_notify:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $281, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.mq_getsetattr
.global mq_getsetattr
mq_getsetattr:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $282, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.kexec_load
.global kexec_load
kexec_load:
    push    %ebx
    push    %esi
    mov     24(%esp), %esi
    mov     20(%esp), %edx
    mov     16(%esp), %ecx
    mov     12(%esp), %ebx
    mov     $283, %eax
    int     $0x80
    pop     %ebx
    pop     %esi
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.waitid
.global waitid
waitid:
    push    %ebx
    push    %esi
    push    %edi
    mov     32(%esp), %edi
    mov     28(%esp), %esi
    mov     24(%esp), %edx
    mov     20(%esp), %ecx
    mov     16(%esp), %ebx
    mov     $284, %eax
    int     $0x80
    pop     %ebx
    pop     %esi
    pop     %edi
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.add_key
.global add_key
add_key:
    push    %ebx
    push    %esi
    push    %edi
    mov     32(%esp), %edi
    mov     28(%esp), %esi
    mov     24(%esp), %edx
    mov     20(%esp), %ecx
    mov     16(%esp), %ebx
    mov     $286, %eax
    int     $0x80
    pop     %ebx
    pop     %esi
    pop     %edi
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.request_key
.global request_key
request_key:
    push    %ebx
    push    %esi
    mov     24(%esp), %esi
    mov     20(%esp), %edx
    mov     16(%esp), %ecx
    mov     12(%esp), %ebx
    mov     $287, %eax
    int     $0x80
    pop     %ebx
    pop     %esi
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.keyctl
.global keyctl
keyctl:
    push    %ebx
    push    %esi
    push    %edi
    mov     32(%esp), %edi
    mov     28(%esp), %esi
    mov     24(%esp), %edx
    mov     20(%esp), %ecx
    mov     16(%esp), %ebx
    mov     $288, %eax
    int     $0x80
    pop     %ebx
    pop     %esi
    pop     %edi
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.ioprio_set
.global ioprio_set
ioprio_set:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $289, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.ioprio_get
.global ioprio_get
ioprio_get:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $290, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.inotify_init
.global inotify_init
inotify_init:
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.inotify_add_watch
.global inotify_add_watch
inotify_add_watch:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $292, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.inotify_rm_watch
.global inotify_rm_watch
inotify_rm_watch:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $293, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.migrate_pages
.global migrate_pages
migrate_pages:
    push    %ebx
    push    %esi
    mov     24(%esp), %esi
    mov     20(%esp), %edx
    mov     16(%esp), %ecx
    mov     12(%esp), %ebx
    mov     $294, %eax
    int     $0x80
    pop     %ebx
    pop     %esi
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.openat
.global openat
openat:
    push    %ebx
    push    %esi
    mov     24(%esp), %esi
    mov     20(%esp), %edx
    mov     16(%esp), %ecx
    mov     12(%esp), %ebx
    mov     $295, %eax
    int     $0x80
    pop     %ebx
    pop     %esi
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.mkdirat
.global mkdirat
mkdirat:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $296, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.mknodat
.global mknodat
mknodat:
    push    %ebx
    push    %esi
    mov     24(%esp), %esi
    mov     20(%esp), %edx
    mov     16(%esp), %ecx
    mov     12(%esp), %ebx
    mov     $297, %eax
    int     $0x80
    pop     %ebx
    pop     %esi
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.fchownat
.global fchownat
fchownat:
    push    %ebx
    push    %esi
    push    %edi
    mov     32(%esp), %edi
    mov     28(%esp), %esi
    mov     24(%esp), %edx
    mov     20(%esp), %ecx
    mov     16(%esp), %ebx
    mov     $298, %eax
    int     $0x80
    pop     %ebx
    pop     %esi
    pop     %edi
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.futimesat
.global futimesat
futimesat:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $299, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.fstatat64
.global fstatat64
fstatat64:
    push    %ebx
    push    %esi
    mov     24(%esp), %esi
    mov     20(%esp), %edx
    mov     16(%esp), %ecx
    mov     12(%esp), %ebx
    mov     $300, %eax
    int     $0x80
    pop     %ebx
    pop     %esi
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.unlinkat
.global unlinkat
unlinkat:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $301, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.renameat
.global renameat
renameat:
    push    %ebx
    push    %esi
    mov     24(%esp), %esi
    mov     20(%esp), %edx
    mov     16(%esp), %ecx
    mov     12(%esp), %ebx
    mov     $302, %eax
    int     $0x80
    pop     %ebx
    pop     %esi
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.linkat
.global linkat
linkat:
    push    %ebx
    push    %esi
    push    %edi
    mov     32(%esp), %edi
    mov     28(%esp), %esi
    mov     24(%esp), %edx
    mov     20(%esp), %ecx
    mov     16(%esp), %ebx
    mov     $303, %eax
    int     $0x80
    pop     %ebx
    pop     %esi
    pop     %edi
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.symlinkat
.global symlinkat
symlinkat:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $304, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.readlinkat
.global readlinkat
readlinkat:
    push    %ebx
    push    %esi
    mov     24(%esp), %esi
    mov     20(%esp), %edx
    mov     16(%esp), %ecx
    mov     12(%esp), %ebx
    mov     $305, %eax
    int     $0x80
    pop     %ebx
    pop     %esi
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.fchmodat
.global fchmodat
fchmodat:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $306, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.faccessat
.global faccessat
faccessat:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $307, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.pselect6
.global pselect6
pselect6:
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.ppoll
.global ppoll
ppoll:
    push    %ebx
    push    %esi
    push    %edi
    mov     32(%esp), %edi
    mov     28(%esp), %esi
    mov     24(%esp), %edx
    mov     20(%esp), %ecx
    mov     16(%esp), %ebx
    mov     $309, %eax
    int     $0x80
    pop     %ebx
    pop     %esi
    pop     %edi
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.unshare
.global unshare
unshare:
    push    %ebx
    mov     8(%esp), %ebx
    mov     $310, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.set_robust_list
.global set_robust_list
set_robust_list:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $311, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.get_robust_list
.global get_robust_list
get_robust_list:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $312, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.splice
.global splice
splice:
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.sync_file_range
.global sync_file_range
sync_file_range:
    push    %ebx
    push    %esi
    mov     24(%esp), %esi
    mov     20(%esp), %edx
    mov     16(%esp), %ecx
    mov     12(%esp), %ebx
    mov     $314, %eax
    int     $0x80
    pop     %ebx
    pop     %esi
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.tee
.global tee
tee:
    push    %ebx
    push    %esi
    mov     24(%esp), %esi
    mov     20(%esp), %edx
    mov     16(%esp), %ecx
    mov     12(%esp), %ebx
    mov     $315, %eax
    int     $0x80
    pop     %ebx
    pop     %esi
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.vmsplice
.global vmsplice
vmsplice:
    push    %ebx
    push    %esi
    mov     24(%esp), %esi
    mov     20(%esp), %edx
    mov     16(%esp), %ecx
    mov     12(%esp), %ebx
    mov     $316, %eax
    int     $0x80
    pop     %ebx
    pop     %esi
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.move_pages
.global move_pages
move_pages:
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.getcpu
.global getcpu
getcpu:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $318, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.epoll_pwait
.global epoll_pwait
epoll_pwait:
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.utimensat
.global utimensat
utimensat:
    push    %ebx
    push    %esi
    mov     24(%esp), %esi
    mov     20(%esp), %edx
    mov     16(%esp), %ecx
    mov     12(%esp), %ebx
    mov     $320, %eax
    int     $0x80
    pop     %ebx
    pop     %esi
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.signalfd
.global signalfd
signalfd:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $321, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.timerfd_create
.global timerfd_create
timerfd_create:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $322, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.eventfd
.global eventfd
eventfd:
    push    %ebx
    mov     8(%esp), %ebx
    mov     $323, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.fallocate
.global fallocate
fallocate:
    push    %ebx
    push    %esi
    mov     24(%esp), %esi
    mov     20(%esp), %edx
    mov     16(%esp), %ecx
    mov     12(%esp), %ebx
    mov     $324, %eax
    int     $0x80
    pop     %ebx
    pop     %esi
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.timerfd_settime
.global timerfd_settime
timerfd_settime:
    push    %ebx
    push    %esi
    mov     24(%esp), %esi
    mov     20(%esp), %edx
    mov     16(%esp), %ecx
    mov     12(%esp), %ebx
    mov     $325, %eax
    int     $0x80
    pop     %ebx
    pop     %esi
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.timerfd_gettime
.global timerfd_gettime
timerfd_gettime:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $326, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.signalfd4
.global signalfd4
signalfd4:
    push    %ebx
    push    %esi
    mov     24(%esp), %esi
    mov     20(%esp), %edx
    mov     16(%esp), %ecx
    mov     12(%esp), %ebx
    mov     $327, %eax
    int     $0x80
    pop     %ebx
    pop     %esi
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.eventfd2
.global eventfd2
eventfd2:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $328, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.epoll_create1
.global epoll_create1
epoll_create1:
    push    %ebx
    mov     8(%esp), %ebx
    mov     $329, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.dup3
.global dup3
dup3:
    push    %ebx
    mov     16(%esp), %edx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $330, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.pipe2
.global pipe2
pipe2:
    push    %ebx
    mov     12(%esp), %ecx
    mov     8(%esp), %ebx
    mov     $331, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.inotify_init1
.global inotify_init1
inotify_init1:
    push    %ebx
    mov     8(%esp), %ebx
    mov     $332, %eax
    int     $0x80
    pop     %ebx
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.preadv
.global preadv
preadv:
    push    %ebx
    push    %esi
    push    %edi
    mov     32(%esp), %edi
    mov     28(%esp), %esi
    mov     24(%esp), %edx
    mov     20(%esp), %ecx
    mov     16(%esp), %ebx
    mov     $333, %eax
    int     $0x80
    pop     %ebx
    pop     %esi
    pop     %edi
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.pwritev
.global pwritev
pwritev:
    push    %ebx
    push    %esi
    push    %edi
    mov     32(%esp), %edi
    mov     28(%esp), %esi
    mov     24(%esp), %edx
    mov     20(%esp), %ecx
    mov     16(%esp), %ebx
    mov     $334, %eax
    int     $0x80
    pop     %ebx
    pop     %esi
    pop     %edi
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.rt_tgsigqueueinfo
.global rt_tgsigqueueinfo
rt_tgsigqueueinfo:
    push    %ebx
    push    %esi
    mov     24(%esp), %esi
    mov     20(%esp), %edx
    mov     16(%esp), %ecx
    mov     12(%esp), %ebx
    mov     $335, %eax
    int     $0x80
    pop     %ebx
    pop     %esi
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.perf_event_open
.global perf_event_open
perf_event_open:
    push    %ebx
    push    %esi
    push    %edi
    mov     32(%esp), %edi
    mov     28(%esp), %esi
    mov     24(%esp), %edx
    mov     20(%esp), %ecx
    mov     16(%esp), %ebx
    mov     $336, %eax
    int     $0x80
    pop     %ebx
    pop     %esi
    pop     %edi
    test    %eax, %eax
    js      syscall_set_errno
    ret
.section .text.recvmmsg
.global recvmmsg
recvmmsg:
    push    %ebx
    push    %esi
    push    %edi
    mov     32(%esp), %edi
    mov     28(%esp), %esi
    mov     24(%esp), %edx
    mov     20(%esp), %ecx
    mov     16(%esp), %ebx
    mov     $337, %eax
    int     $0x80
    pop     %ebx
    pop     %esi
    pop     %edi
    test    %eax, %eax
    js      syscall_set_errno
    ret
