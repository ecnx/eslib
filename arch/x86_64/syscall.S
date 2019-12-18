.section .text.read
.global read
read:
    mov     $0, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.write
.global write
write:
    mov     $1, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text._open
.global _open
_open:
    mov     $2, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.close
.global close
close:
    mov     $3, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.stat
.global stat
stat:
    mov     $4, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.fstat
.global fstat
fstat:
    mov     $5, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.lstat
.global lstat
lstat:
    mov     $6, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.poll
.global poll
poll:
    mov     $7, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.lseek
.global lseek
lseek:
    mov     $8, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.mmap
.global mmap
mmap:
    mov     $9, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.mprotect
.global mprotect
mprotect:
    mov     $10, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.munmap
.global munmap
munmap:
    mov     $11, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text._brk
.global _brk
_brk:
    mov     $12, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.rt_sigaction
.global rt_sigaction
rt_sigaction:
    mov     $13, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.rt_sigprocmask
.global rt_sigprocmask
rt_sigprocmask:
    mov     $14, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.rt_sigreturn
.global rt_sigreturn
rt_sigreturn:
    mov     $15, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.ioctl
.global ioctl
ioctl:
    mov     $16, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.pread64
.global pread64
pread64:
    mov     $17, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.pwrite64
.global pwrite64
pwrite64:
    mov     $18, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.readv
.global readv
readv:
    mov     $19, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.writev
.global writev
writev:
    mov     $20, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.access
.global access
access:
    mov     $21, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.pipe
.global pipe
pipe:
    mov     $22, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.select
.global select
select:
    mov     $23, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.sched_yield
.global sched_yield
sched_yield:
    mov     $24, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.mremap
.global mremap
mremap:
    mov     $25, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.msync
.global msync
msync:
    mov     $26, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.mincore
.global mincore
mincore:
    mov     $27, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.madvise
.global madvise
madvise:
    mov     $28, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.shmget
.global shmget
shmget:
    mov     $29, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.shmat
.global shmat
shmat:
    mov     $30, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.shmctl
.global shmctl
shmctl:
    mov     $31, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.dup
.global dup
dup:
    mov     $32, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.dup2
.global dup2
dup2:
    mov     $33, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.pause
.global pause
pause:
    mov     $34, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.nanosleep
.global nanosleep
nanosleep:
    mov     $35, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.getitimer
.global getitimer
getitimer:
    mov     $36, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.alarm
.global alarm
alarm:
    mov     $37, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.setitimer
.global setitimer
setitimer:
    mov     $38, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.getpid
.global getpid
getpid:
    mov     $39, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.sendfile
.global sendfile
sendfile:
    mov     $40, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.socket
.global socket
socket:
    mov     $41, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.connect
.global connect
connect:
    mov     $42, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.accept
.global accept
accept:
    mov     $43, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.sendto
.global sendto
sendto:
    mov     $44, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.recvfrom
.global recvfrom
recvfrom:
    mov     $45, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.sendmsg
.global sendmsg
sendmsg:
    mov     $46, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.recvmsg
.global recvmsg
recvmsg:
    mov     $47, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.shutdown
.global shutdown
shutdown:
    mov     $48, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.bind
.global bind
bind:
    mov     $49, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.listen
.global listen
listen:
    mov     $50, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.getsockname
.global getsockname
getsockname:
    mov     $51, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.getpeername
.global getpeername
getpeername:
    mov     $52, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.socketpair
.global socketpair
socketpair:
    mov     $53, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.setsockopt
.global setsockopt
setsockopt:
    mov     $54, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.getsockopt
.global getsockopt
getsockopt:
    mov     $55, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text._clone
.global _clone
_clone:
    mov     $56, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.fork
.global fork
fork:
    mov     $57, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.vfork
.global vfork
vfork:
    mov     $58, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text._execve
.global _execve
_execve:
    mov     $59, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.exit
.global exit
exit:
    mov     $60, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.wait4
.global wait4
wait4:
    mov     $61, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.kill
.global kill
kill:
    mov     $62, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.uname
.global uname
uname:
    mov     $63, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.semget
.global semget
semget:
    mov     $64, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.semop
.global semop
semop:
    mov     $65, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.semctl
.global semctl
semctl:
    mov     $66, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.shmdt
.global shmdt
shmdt:
    mov     $67, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.msgget
.global msgget
msgget:
    mov     $68, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.msgsnd
.global msgsnd
msgsnd:
    mov     $69, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.msgrcv
.global msgrcv
msgrcv:
    mov     $70, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.msgctl
.global msgctl
msgctl:
    mov     $71, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.fcntl
.global fcntl
fcntl:
    mov     $72, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.flock
.global flock
flock:
    mov     $73, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.fsync
.global fsync
fsync:
    mov     $74, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.fdatasync
.global fdatasync
fdatasync:
    mov     $75, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.truncate
.global truncate
truncate:
    mov     $76, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.ftruncate
.global ftruncate
ftruncate:
    mov     $77, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.getdents
.global getdents
getdents:
    mov     $78, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.getcwd
.global getcwd
getcwd:
    mov     $79, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.chdir
.global chdir
chdir:
    mov     $80, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.fchdir
.global fchdir
fchdir:
    mov     $81, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.rename
.global rename
rename:
    mov     $82, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.mkdir
.global mkdir
mkdir:
    mov     $83, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.rmdir
.global rmdir
rmdir:
    mov     $84, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.creat
.global creat
creat:
    mov     $85, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.link
.global link
link:
    mov     $86, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.unlink
.global unlink
unlink:
    mov     $87, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.symlink
.global symlink
symlink:
    mov     $88, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.readlink
.global readlink
readlink:
    mov     $89, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.chmod
.global chmod
chmod:
    mov     $90, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.fchmod
.global fchmod
fchmod:
    mov     $91, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.chown
.global chown
chown:
    mov     $92, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.fchown
.global fchown
fchown:
    mov     $93, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.lchown
.global lchown
lchown:
    mov     $94, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.umask
.global umask
umask:
    mov     $95, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.gettimeofday
.global gettimeofday
gettimeofday:
    mov     $96, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.getrlimit
.global getrlimit
getrlimit:
    mov     $97, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.getrusage
.global getrusage
getrusage:
    mov     $98, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.sysinfo
.global sysinfo
sysinfo:
    mov     $99, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.times
.global times
times:
    mov     $100, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.ptrace
.global ptrace
ptrace:
    mov     $101, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.getuid
.global getuid
getuid:
    mov     $102, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.syslog
.global syslog
syslog:
    mov     $103, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.getgid
.global getgid
getgid:
    mov     $104, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.setuid
.global setuid
setuid:
    mov     $105, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.setgid
.global setgid
setgid:
    mov     $106, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.geteuid
.global geteuid
geteuid:
    mov     $107, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.getegid
.global getegid
getegid:
    mov     $108, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.setpgid
.global setpgid
setpgid:
    mov     $109, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.getppid
.global getppid
getppid:
    mov     $110, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.getpgrp
.global getpgrp
getpgrp:
    mov     $111, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.setsid
.global setsid
setsid:
    mov     $112, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.setreuid
.global setreuid
setreuid:
    mov     $113, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.setregid
.global setregid
setregid:
    mov     $114, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.getgroups
.global getgroups
getgroups:
    mov     $115, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.setgroups
.global setgroups
setgroups:
    mov     $116, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.setresuid
.global setresuid
setresuid:
    mov     $117, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.getresuid
.global getresuid
getresuid:
    mov     $118, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.setresgid
.global setresgid
setresgid:
    mov     $119, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.getresgid
.global getresgid
getresgid:
    mov     $120, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.getpgid
.global getpgid
getpgid:
    mov     $121, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.setfsuid
.global setfsuid
setfsuid:
    mov     $122, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.setfsgid
.global setfsgid
setfsgid:
    mov     $123, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.getsid
.global getsid
getsid:
    mov     $124, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.capget
.global capget
capget:
    mov     $125, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.capset
.global capset
capset:
    mov     $126, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.rt_sigpending
.global rt_sigpending
rt_sigpending:
    mov     $127, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.rt_sigtimedwait
.global rt_sigtimedwait
rt_sigtimedwait:
    mov     $128, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.rt_sigqueueinfo
.global rt_sigqueueinfo
rt_sigqueueinfo:
    mov     $129, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.rt_sigsuspend
.global rt_sigsuspend
rt_sigsuspend:
    mov     $130, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.sigaltstack
.global sigaltstack
sigaltstack:
    mov     $131, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.utime
.global utime
utime:
    mov     $132, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text._mknod
.global _mknod
_mknod:
    mov     $133, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.uselib
.global uselib
uselib:
    mov     $134, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.personality
.global personality
personality:
    mov     $135, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.ustat
.global ustat
ustat:
    mov     $136, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.statfs
.global statfs
statfs:
    mov     $137, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.fstatfs
.global fstatfs
fstatfs:
    mov     $138, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.sysfs
.global sysfs
sysfs:
    mov     $139, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.getpriority
.global getpriority
getpriority:
    mov     $140, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.setpriority
.global setpriority
setpriority:
    mov     $141, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.sched_setparam
.global sched_setparam
sched_setparam:
    mov     $142, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.sched_getparam
.global sched_getparam
sched_getparam:
    mov     $143, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.sched_setscheduler
.global sched_setscheduler
sched_setscheduler:
    mov     $144, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.sched_getscheduler
.global sched_getscheduler
sched_getscheduler:
    mov     $145, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.sched_get_priority_max
.global sched_get_priority_max
sched_get_priority_max:
    mov     $146, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.sched_get_priority_min
.global sched_get_priority_min
sched_get_priority_min:
    mov     $147, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.sched_rr_get_interval
.global sched_rr_get_interval
sched_rr_get_interval:
    mov     $148, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.mlock
.global mlock
mlock:
    mov     $149, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.munlock
.global munlock
munlock:
    mov     $150, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.mlockall
.global mlockall
mlockall:
    mov     $151, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.munlockall
.global munlockall
munlockall:
    mov     $152, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.vhangup
.global vhangup
vhangup:
    mov     $153, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.modify_ldt
.global modify_ldt
modify_ldt:
    mov     $154, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.pivot_root
.global pivot_root
pivot_root:
    mov     $155, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text._sysctl
.global _sysctl
_sysctl:
    mov     $156, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.prctl
.global prctl
prctl:
    mov     $157, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.arch_prctl
.global arch_prctl
arch_prctl:
    mov     $158, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.adjtimex
.global adjtimex
adjtimex:
    mov     $159, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.setrlimit
.global setrlimit
setrlimit:
    mov     $160, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.chroot
.global chroot
chroot:
    mov     $161, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.sync
.global sync
sync:
    mov     $162, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.acct
.global acct
acct:
    mov     $163, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.settimeofday
.global settimeofday
settimeofday:
    mov     $164, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.mount
.global mount
mount:
    mov     $165, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.umount2
.global umount2
umount2:
    mov     $166, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.swapon
.global swapon
swapon:
    mov     $167, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.swapoff
.global swapoff
swapoff:
    mov     $168, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.reboot
.global reboot
reboot:
    mov     $169, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.sethostname
.global sethostname
sethostname:
    mov     $170, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.setdomainname
.global setdomainname
setdomainname:
    mov     $171, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.iopl
.global iopl
iopl:
    mov     $172, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.ioperm
.global ioperm
ioperm:
    mov     $173, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.create_module
.global create_module
create_module:
    mov     $174, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.init_module
.global init_module
init_module:
    mov     $175, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.delete_module
.global delete_module
delete_module:
    mov     $176, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.get_kernel_syms
.global get_kernel_syms
get_kernel_syms:
    mov     $177, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.query_module
.global query_module
query_module:
    mov     $178, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.quotactl
.global quotactl
quotactl:
    mov     $179, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.nfsservctl
.global nfsservctl
nfsservctl:
    mov     $180, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.getpmsg
.global getpmsg
getpmsg:
    mov     $181, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.putpmsg
.global putpmsg
putpmsg:
    mov     $182, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.afs_syscall
.global afs_syscall
afs_syscall:
    mov     $183, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.tuxcall
.global tuxcall
tuxcall:
    mov     $184, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.security
.global security
security:
    mov     $185, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.gettid
.global gettid
gettid:
    mov     $186, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.readahead
.global readahead
readahead:
    mov     $187, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.setxattr
.global setxattr
setxattr:
    mov     $188, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.lsetxattr
.global lsetxattr
lsetxattr:
    mov     $189, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.fsetxattr
.global fsetxattr
fsetxattr:
    mov     $190, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.getxattr
.global getxattr
getxattr:
    mov     $191, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.lgetxattr
.global lgetxattr
lgetxattr:
    mov     $192, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.fgetxattr
.global fgetxattr
fgetxattr:
    mov     $193, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.listxattr
.global listxattr
listxattr:
    mov     $194, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.llistxattr
.global llistxattr
llistxattr:
    mov     $195, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.flistxattr
.global flistxattr
flistxattr:
    mov     $196, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.removexattr
.global removexattr
removexattr:
    mov     $197, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.lremovexattr
.global lremovexattr
lremovexattr:
    mov     $198, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.fremovexattr
.global fremovexattr
fremovexattr:
    mov     $199, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.tkill
.global tkill
tkill:
    mov     $200, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.time
.global time
time:
    mov     $201, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.futex
.global futex
futex:
    mov     $202, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.sched_setaffinity
.global sched_setaffinity
sched_setaffinity:
    mov     $203, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.sched_getaffinity
.global sched_getaffinity
sched_getaffinity:
    mov     $204, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.set_thread_area
.global set_thread_area
set_thread_area:
    mov     $205, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.io_setup
.global io_setup
io_setup:
    mov     $206, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.io_destroy
.global io_destroy
io_destroy:
    mov     $207, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.io_getevents
.global io_getevents
io_getevents:
    mov     $208, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.io_submit
.global io_submit
io_submit:
    mov     $209, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.io_cancel
.global io_cancel
io_cancel:
    mov     $210, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.get_thread_area
.global get_thread_area
get_thread_area:
    mov     $211, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.lookup_dcookie
.global lookup_dcookie
lookup_dcookie:
    mov     $212, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.epoll_create
.global epoll_create
epoll_create:
    mov     $213, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.epoll_ctl_old
.global epoll_ctl_old
epoll_ctl_old:
    mov     $214, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.epoll_wait_old
.global epoll_wait_old
epoll_wait_old:
    mov     $215, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.remap_file_pages
.global remap_file_pages
remap_file_pages:
    mov     $216, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.getdents64
.global getdents64
getdents64:
    mov     $217, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.set_tid_address
.global set_tid_address
set_tid_address:
    mov     $218, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.restart_syscall
.global restart_syscall
restart_syscall:
    mov     $219, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.semtimedop
.global semtimedop
semtimedop:
    mov     $220, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.fadvise64
.global fadvise64
fadvise64:
    mov     $221, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.timer_create
.global timer_create
timer_create:
    mov     $222, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.timer_settime
.global timer_settime
timer_settime:
    mov     $223, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.timer_gettime
.global timer_gettime
timer_gettime:
    mov     $224, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.timer_getoverrun
.global timer_getoverrun
timer_getoverrun:
    mov     $225, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.timer_delete
.global timer_delete
timer_delete:
    mov     $226, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.clock_settime
.global clock_settime
clock_settime:
    mov     $227, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.clock_gettime
.global clock_gettime
clock_gettime:
    mov     $228, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.clock_getres
.global clock_getres
clock_getres:
    mov     $229, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.clock_nanosleep
.global clock_nanosleep
clock_nanosleep:
    mov     $230, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.exit_group
.global exit_group
exit_group:
    mov     $231, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.epoll_wait
.global epoll_wait
epoll_wait:
    mov     $232, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.epoll_ctl
.global epoll_ctl
epoll_ctl:
    mov     $233, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.tgkill
.global tgkill
tgkill:
    mov     $234, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.utimes
.global utimes
utimes:
    mov     $235, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.vserver
.global vserver
vserver:
    mov     $236, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.mbind
.global mbind
mbind:
    mov     $237, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.set_mempolicy
.global set_mempolicy
set_mempolicy:
    mov     $238, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.get_mempolicy
.global get_mempolicy
get_mempolicy:
    mov     $239, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.mq_open
.global mq_open
mq_open:
    mov     $240, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.mq_unlink
.global mq_unlink
mq_unlink:
    mov     $241, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.mq_timedsend
.global mq_timedsend
mq_timedsend:
    mov     $242, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.mq_timedreceive
.global mq_timedreceive
mq_timedreceive:
    mov     $243, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.mq_notify
.global mq_notify
mq_notify:
    mov     $244, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.mq_getsetattr
.global mq_getsetattr
mq_getsetattr:
    mov     $245, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.kexec_load
.global kexec_load
kexec_load:
    mov     $246, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.waitid
.global waitid
waitid:
    mov     $247, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.add_key
.global add_key
add_key:
    mov     $248, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.request_key
.global request_key
request_key:
    mov     $249, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.keyctl
.global keyctl
keyctl:
    mov     $250, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.ioprio_set
.global ioprio_set
ioprio_set:
    mov     $251, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.ioprio_get
.global ioprio_get
ioprio_get:
    mov     $252, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.inotify_init
.global inotify_init
inotify_init:
    mov     $253, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.inotify_add_watch
.global inotify_add_watch
inotify_add_watch:
    mov     $254, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.inotify_rm_watch
.global inotify_rm_watch
inotify_rm_watch:
    mov     $255, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.migrate_pages
.global migrate_pages
migrate_pages:
    mov     $256, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.openat
.global openat
openat:
    mov     $257, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.mkdirat
.global mkdirat
mkdirat:
    mov     $258, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.mknodat
.global mknodat
mknodat:
    mov     $259, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.fchownat
.global fchownat
fchownat:
    mov     $260, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.futimesat
.global futimesat
futimesat:
    mov     $261, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.newfstatat
.global newfstatat
newfstatat:
    mov     $262, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.unlinkat
.global unlinkat
unlinkat:
    mov     $263, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.renameat
.global renameat
renameat:
    mov     $264, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.linkat
.global linkat
linkat:
    mov     $265, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.symlinkat
.global symlinkat
symlinkat:
    mov     $266, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.readlinkat
.global readlinkat
readlinkat:
    mov     $267, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.fchmodat
.global fchmodat
fchmodat:
    mov     $268, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.faccessat
.global faccessat
faccessat:
    mov     $269, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.pselect6
.global pselect6
pselect6:
    mov     $270, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.ppoll
.global ppoll
ppoll:
    mov     $271, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.unshare
.global unshare
unshare:
    mov     $272, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.set_robust_list
.global set_robust_list
set_robust_list:
    mov     $273, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.get_robust_list
.global get_robust_list
get_robust_list:
    mov     $274, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.splice
.global splice
splice:
    mov     $275, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.tee
.global tee
tee:
    mov     $276, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.sync_file_range
.global sync_file_range
sync_file_range:
    mov     $277, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.vmsplice
.global vmsplice
vmsplice:
    mov     $278, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.move_pages
.global move_pages
move_pages:
    mov     $279, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.utimensat
.global utimensat
utimensat:
    mov     $280, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.epoll_pwait
.global epoll_pwait
epoll_pwait:
    mov     $281, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.signalfd
.global signalfd
signalfd:
    mov     $282, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.timerfd_create
.global timerfd_create
timerfd_create:
    mov     $283, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.eventfd
.global eventfd
eventfd:
    mov     $284, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.fallocate
.global fallocate
fallocate:
    mov     $285, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.timerfd_settime
.global timerfd_settime
timerfd_settime:
    mov     $286, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.timerfd_gettime
.global timerfd_gettime
timerfd_gettime:
    mov     $287, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.accept4
.global accept4
accept4:
    mov     $288, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.signalfd4
.global signalfd4
signalfd4:
    mov     $289, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.eventfd2
.global eventfd2
eventfd2:
    mov     $290, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.epoll_create1
.global epoll_create1
epoll_create1:
    mov     $291, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.dup3
.global dup3
dup3:
    mov     $292, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.pipe2
.global pipe2
pipe2:
    mov     $293, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.inotify_init1
.global inotify_init1
inotify_init1:
    mov     $294, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.preadv
.global preadv
preadv:
    mov     $295, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.pwritev
.global pwritev
pwritev:
    mov     $296, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.rt_tgsigqueueinfo
.global rt_tgsigqueueinfo
rt_tgsigqueueinfo:
    mov     $297, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.perf_event_open
.global perf_event_open
perf_event_open:
    mov     $298, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.recvmmsg
.global recvmmsg
recvmmsg:
    mov     $299, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.fanotify_init
.global fanotify_init
fanotify_init:
    mov     $300, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.fanotify_mark
.global fanotify_mark
fanotify_mark:
    mov     $301, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.prlimit64
.global prlimit64
prlimit64:
    mov     $302, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.name_to_handle_at
.global name_to_handle_at
name_to_handle_at:
    mov     $303, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.open_by_handle_at
.global open_by_handle_at
open_by_handle_at:
    mov     $304, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.clock_adjtime
.global clock_adjtime
clock_adjtime:
    mov     $305, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.syncfs
.global syncfs
syncfs:
    mov     $306, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.sendmmsg
.global sendmmsg
sendmmsg:
    mov     $307, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.setns
.global setns
setns:
    mov     $308, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.getcpu
.global getcpu
getcpu:
    mov     $309, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.process_vm_readv
.global process_vm_readv
process_vm_readv:
    mov     $310, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.process_vm_writev
.global process_vm_writev
process_vm_writev:
    mov     $311, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.kcmp
.global kcmp
kcmp:
    mov     $312, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.finit_module
.global finit_module
finit_module:
    mov     $313, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.sched_setattr
.global sched_setattr
sched_setattr:
    mov     $314, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.sched_getattr
.global sched_getattr
sched_getattr:
    mov     $315, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.renameat2
.global renameat2
renameat2:
    mov     $316, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.seccomp
.global seccomp
seccomp:
    mov     $317, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.getrandom
.global getrandom
getrandom:
    mov     $318, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.memfd_create
.global memfd_create
memfd_create:
    mov     $319, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.kexec_file_load
.global kexec_file_load
kexec_file_load:
    mov     $320, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.bpf
.global bpf
bpf:
    mov     $321, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.stub_execveat
.global stub_execveat
stub_execveat:
    mov     $322, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.userfaultfd
.global userfaultfd
userfaultfd:
    mov     $323, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.membarrier
.global membarrier
membarrier:
    mov     $324, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.mlock2
.global mlock2
mlock2:
    mov     $325, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.copy_file_range
.global copy_file_range
copy_file_range:
    mov     $326, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.preadv2
.global preadv2
preadv2:
    mov     $327, %rax
    mov     %rcx, %r10
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
.section .text.pwritev2
.global pwritev2
pwritev2:
    mov     $328, %rax
    syscall
    test    %rax, %rax
    js      syscall_set_errno
    ret
