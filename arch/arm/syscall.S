.section .text.exit
.global exit
exit:
    stmfd   sp!, {r7}
    movw    r7, #1
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.fork
.global fork
fork:
    stmfd   sp!, {r7}
    movw    r7, #2
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.read
.global read
read:
    stmfd   sp!, {r7}
    movw    r7, #3
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.write
.global write
write:
    stmfd   sp!, {r7}
    movw    r7, #4
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text._open
.global _open
_open:
    stmfd   sp!, {r7}
    movw    r7, #5
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.close
.global close
close:
    stmfd   sp!, {r7}
    movw    r7, #6
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.creat
.global creat
creat:
    stmfd   sp!, {r7}
    movw    r7, #8
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.link
.global link
link:
    stmfd   sp!, {r7}
    movw    r7, #9
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.unlink
.global unlink
unlink:
    stmfd   sp!, {r7}
    movw    r7, #10
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text._execve
.global _execve
_execve:
    stmfd   sp!, {r7}
    movw    r7, #11
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.chdir
.global chdir
chdir:
    stmfd   sp!, {r7}
    movw    r7, #12
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text._time
.global _time
_time:
    stmfd   sp!, {r7}
    movw    r7, #13
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text._mknod
.global _mknod
_mknod:
    stmfd   sp!, {r7}
    movw    r7, #14
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.chmod
.global chmod
chmod:
    stmfd   sp!, {r7}
    movw    r7, #15
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.lchown
.global lchown
lchown:
    stmfd   sp!, {r7}
    movw    r7, #16
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.lseek
.global lseek
lseek:
    stmfd   sp!, {r7}
    movw    r7, #19
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.getpid
.global getpid
getpid:
    stmfd   sp!, {r7}
    movw    r7, #20
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.mount
.global mount
mount:
    mov     ip, sp
    stmfd   sp!, {r4, r7}
    movw    r7, #21
    ldmfd   ip!, {r4}
    svc     #0
    ldmfd   sp!, {r4, r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.umount
.global umount
umount:
    stmfd   sp!, {r7}
    movw    r7, #22
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.setuid
.global setuid
setuid:
    stmfd   sp!, {r7}
    movw    r7, #23
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.getuid
.global getuid
getuid:
    stmfd   sp!, {r7}
    movw    r7, #24
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.stime
.global stime
stime:
    stmfd   sp!, {r7}
    movw    r7, #25
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.ptrace
.global ptrace
ptrace:
    stmfd   sp!, {r7}
    movw    r7, #26
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.alarm
.global alarm
alarm:
    stmfd   sp!, {r7}
    movw    r7, #27
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.pause
.global pause
pause:
    stmfd   sp!, {r7}
    movw    r7, #29
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.utime
.global utime
utime:
    stmfd   sp!, {r7}
    movw    r7, #30
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.access
.global access
access:
    stmfd   sp!, {r7}
    movw    r7, #33
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.nice
.global nice
nice:
    stmfd   sp!, {r7}
    movw    r7, #34
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.sync
.global sync
sync:
    stmfd   sp!, {r7}
    movw    r7, #36
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.kill
.global kill
kill:
    stmfd   sp!, {r7}
    movw    r7, #37
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.rename
.global rename
rename:
    stmfd   sp!, {r7}
    movw    r7, #38
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.mkdir
.global mkdir
mkdir:
    stmfd   sp!, {r7}
    movw    r7, #39
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.rmdir
.global rmdir
rmdir:
    stmfd   sp!, {r7}
    movw    r7, #40
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.dup
.global dup
dup:
    stmfd   sp!, {r7}
    movw    r7, #41
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.pipe
.global pipe
pipe:
    stmfd   sp!, {r7}
    movw    r7, #42
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.times
.global times
times:
    stmfd   sp!, {r7}
    movw    r7, #43
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text._brk
.global _brk
_brk:
    stmfd   sp!, {r7}
    movw    r7, #45
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.setgid
.global setgid
setgid:
    stmfd   sp!, {r7}
    movw    r7, #46
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.getgid
.global getgid
getgid:
    stmfd   sp!, {r7}
    movw    r7, #47
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.geteuid
.global geteuid
geteuid:
    stmfd   sp!, {r7}
    movw    r7, #49
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.getegid
.global getegid
getegid:
    stmfd   sp!, {r7}
    movw    r7, #50
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.acct
.global acct
acct:
    stmfd   sp!, {r7}
    movw    r7, #51
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.umount2
.global umount2
umount2:
    stmfd   sp!, {r7}
    movw    r7, #52
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.ioctl
.global ioctl
ioctl:
    stmfd   sp!, {r7}
    movw    r7, #54
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.fcntl
.global fcntl
fcntl:
    stmfd   sp!, {r7}
    movw    r7, #55
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.setpgid
.global setpgid
setpgid:
    stmfd   sp!, {r7}
    movw    r7, #57
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.umask
.global umask
umask:
    stmfd   sp!, {r7}
    movw    r7, #60
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.chroot
.global chroot
chroot:
    stmfd   sp!, {r7}
    movw    r7, #61
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.ustat
.global ustat
ustat:
    stmfd   sp!, {r7}
    movw    r7, #62
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.dup2
.global dup2
dup2:
    stmfd   sp!, {r7}
    movw    r7, #63
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.getppid
.global getppid
getppid:
    stmfd   sp!, {r7}
    movw    r7, #64
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.getpgrp
.global getpgrp
getpgrp:
    stmfd   sp!, {r7}
    movw    r7, #65
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.setsid
.global setsid
setsid:
    stmfd   sp!, {r7}
    movw    r7, #66
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.sigaction
.global sigaction
sigaction:
    stmfd   sp!, {r7}
    movw    r7, #67
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.setreuid
.global setreuid
setreuid:
    stmfd   sp!, {r7}
    movw    r7, #70
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.setregid
.global setregid
setregid:
    stmfd   sp!, {r7}
    movw    r7, #71
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.sigsuspend
.global sigsuspend
sigsuspend:
    stmfd   sp!, {r7}
    movw    r7, #72
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.sigpending
.global sigpending
sigpending:
    stmfd   sp!, {r7}
    movw    r7, #73
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.sethostname
.global sethostname
sethostname:
    stmfd   sp!, {r7}
    movw    r7, #74
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.setrlimit
.global setrlimit
setrlimit:
    stmfd   sp!, {r7}
    movw    r7, #75
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.getrlimit
.global getrlimit
getrlimit:
    stmfd   sp!, {r7}
    movw    r7, #76
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.getrusage
.global getrusage
getrusage:
    stmfd   sp!, {r7}
    movw    r7, #77
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.gettimeofday
.global gettimeofday
gettimeofday:
    stmfd   sp!, {r7}
    movw    r7, #78
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.settimeofday
.global settimeofday
settimeofday:
    stmfd   sp!, {r7}
    movw    r7, #79
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.getgroups
.global getgroups
getgroups:
    stmfd   sp!, {r7}
    movw    r7, #80
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.setgroups
.global setgroups
setgroups:
    stmfd   sp!, {r7}
    movw    r7, #81
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.select
.global select
select:
    mov     ip, sp
    stmfd   sp!, {r4, r7}
    movw    r7, #82
    ldmfd   ip!, {r4}
    svc     #0
    ldmfd   sp!, {r4, r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.symlink
.global symlink
symlink:
    stmfd   sp!, {r7}
    movw    r7, #83
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.readlink
.global readlink
readlink:
    stmfd   sp!, {r7}
    movw    r7, #85
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.uselib
.global uselib
uselib:
    stmfd   sp!, {r7}
    movw    r7, #86
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.swapon
.global swapon
swapon:
    stmfd   sp!, {r7}
    movw    r7, #87
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.reboot
.global reboot
reboot:
    stmfd   sp!, {r7}
    movw    r7, #88
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text._readdir
.global _readdir
_readdir:
    stmfd   sp!, {r7}
    movw    r7, #89
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.mmap
.global mmap
mmap:
    stmfd   sp!, {r7}
    movw    r7, #90
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.munmap
.global munmap
munmap:
    stmfd   sp!, {r7}
    movw    r7, #91
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.truncate
.global truncate
truncate:
    stmfd   sp!, {r7}
    movw    r7, #92
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.ftruncate
.global ftruncate
ftruncate:
    stmfd   sp!, {r7}
    movw    r7, #93
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.fchmod
.global fchmod
fchmod:
    stmfd   sp!, {r7}
    movw    r7, #94
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.fchown
.global fchown
fchown:
    stmfd   sp!, {r7}
    movw    r7, #95
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.getpriority
.global getpriority
getpriority:
    stmfd   sp!, {r7}
    movw    r7, #96
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.setpriority
.global setpriority
setpriority:
    stmfd   sp!, {r7}
    movw    r7, #97
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.statfs
.global statfs
statfs:
    stmfd   sp!, {r7}
    movw    r7, #99
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.fstatfs
.global fstatfs
fstatfs:
    stmfd   sp!, {r7}
    movw    r7, #100
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.socketcall
.global socketcall
socketcall:
    stmfd   sp!, {r7}
    movw    r7, #102
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.syslog
.global syslog
syslog:
    stmfd   sp!, {r7}
    movw    r7, #103
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.setitimer
.global setitimer
setitimer:
    stmfd   sp!, {r7}
    movw    r7, #104
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.getitimer
.global getitimer
getitimer:
    stmfd   sp!, {r7}
    movw    r7, #105
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.stat
.global stat
stat:
    stmfd   sp!, {r7}
    movw    r7, #106
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.lstat
.global lstat
lstat:
    stmfd   sp!, {r7}
    movw    r7, #107
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.fstat
.global fstat
fstat:
    stmfd   sp!, {r7}
    movw    r7, #108
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.vhangup
.global vhangup
vhangup:
    stmfd   sp!, {r7}
    movw    r7, #111
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.syscall
.global syscall
syscall:
    stmfd   sp!, {r7}
    movw    r7, #113
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.wait4
.global wait4
wait4:
    stmfd   sp!, {r7}
    movw    r7, #114
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.swapoff
.global swapoff
swapoff:
    stmfd   sp!, {r7}
    movw    r7, #115
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.sysinfo
.global sysinfo
sysinfo:
    stmfd   sp!, {r7}
    movw    r7, #116
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.ipc
.global ipc
ipc:
    mov     ip, sp
    stmfd   sp!, {r4, r5, r7}
    movw    r7, #117
    ldmfd   ip!, {r4, r5}
    svc     #0
    ldmfd   sp!, {r4, r5, r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.fsync
.global fsync
fsync:
    stmfd   sp!, {r7}
    movw    r7, #118
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.sigreturn
.global sigreturn
sigreturn:
    stmfd   sp!, {r7}
    movw    r7, #119
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text._clone
.global _clone
_clone:
    mov     ip, sp
    stmfd   sp!, {r4, r7}
    movw    r7, #120
    ldmfd   ip!, {r4}
    svc     #0
    ldmfd   sp!, {r4, r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.setdomainname
.global setdomainname
setdomainname:
    stmfd   sp!, {r7}
    movw    r7, #121
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.uname
.global uname
uname:
    stmfd   sp!, {r7}
    movw    r7, #122
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.adjtimex
.global adjtimex
adjtimex:
    stmfd   sp!, {r7}
    movw    r7, #124
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.mprotect
.global mprotect
mprotect:
    stmfd   sp!, {r7}
    movw    r7, #125
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.sigprocmask
.global sigprocmask
sigprocmask:
    stmfd   sp!, {r7}
    movw    r7, #126
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.init_module
.global init_module
init_module:
    stmfd   sp!, {r7}
    movw    r7, #128
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.delete_module
.global delete_module
delete_module:
    stmfd   sp!, {r7}
    movw    r7, #129
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.quotactl
.global quotactl
quotactl:
    stmfd   sp!, {r7}
    movw    r7, #131
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.getpgid
.global getpgid
getpgid:
    stmfd   sp!, {r7}
    movw    r7, #132
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.fchdir
.global fchdir
fchdir:
    stmfd   sp!, {r7}
    movw    r7, #133
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.bdflush
.global bdflush
bdflush:
    stmfd   sp!, {r7}
    movw    r7, #134
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.sysfs
.global sysfs
sysfs:
    stmfd   sp!, {r7}
    movw    r7, #135
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.personality
.global personality
personality:
    stmfd   sp!, {r7}
    movw    r7, #136
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.setfsuid
.global setfsuid
setfsuid:
    stmfd   sp!, {r7}
    movw    r7, #138
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.setfsgid
.global setfsgid
setfsgid:
    stmfd   sp!, {r7}
    movw    r7, #139
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text._llseek
.global _llseek
_llseek:
    mov     ip, sp
    stmfd   sp!, {r4, r7}
    movw    r7, #140
    ldmfd   ip!, {r4}
    svc     #0
    ldmfd   sp!, {r4, r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.getdents
.global getdents
getdents:
    stmfd   sp!, {r7}
    movw    r7, #141
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text._newselect
.global _newselect
_newselect:
    mov     ip, sp
    stmfd   sp!, {r4, r7}
    movw    r7, #142
    ldmfd   ip!, {r4}
    svc     #0
    ldmfd   sp!, {r4, r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.flock
.global flock
flock:
    stmfd   sp!, {r7}
    movw    r7, #143
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.msync
.global msync
msync:
    stmfd   sp!, {r7}
    movw    r7, #144
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.readv
.global readv
readv:
    stmfd   sp!, {r7}
    movw    r7, #145
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.writev
.global writev
writev:
    stmfd   sp!, {r7}
    movw    r7, #146
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.getsid
.global getsid
getsid:
    stmfd   sp!, {r7}
    movw    r7, #147
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.fdatasync
.global fdatasync
fdatasync:
    stmfd   sp!, {r7}
    movw    r7, #148
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text._sysctl
.global _sysctl
_sysctl:
    stmfd   sp!, {r7}
    movw    r7, #149
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.mlock
.global mlock
mlock:
    stmfd   sp!, {r7}
    movw    r7, #150
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.munlock
.global munlock
munlock:
    stmfd   sp!, {r7}
    movw    r7, #151
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.mlockall
.global mlockall
mlockall:
    stmfd   sp!, {r7}
    movw    r7, #152
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.munlockall
.global munlockall
munlockall:
    stmfd   sp!, {r7}
    movw    r7, #153
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.sched_setparam
.global sched_setparam
sched_setparam:
    stmfd   sp!, {r7}
    movw    r7, #154
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.sched_getparam
.global sched_getparam
sched_getparam:
    stmfd   sp!, {r7}
    movw    r7, #155
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.sched_setscheduler
.global sched_setscheduler
sched_setscheduler:
    stmfd   sp!, {r7}
    movw    r7, #156
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.sched_getscheduler
.global sched_getscheduler
sched_getscheduler:
    stmfd   sp!, {r7}
    movw    r7, #157
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.sched_yield
.global sched_yield
sched_yield:
    stmfd   sp!, {r7}
    movw    r7, #158
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.sched_get_priority_max
.global sched_get_priority_max
sched_get_priority_max:
    stmfd   sp!, {r7}
    movw    r7, #159
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.sched_get_priority_min
.global sched_get_priority_min
sched_get_priority_min:
    stmfd   sp!, {r7}
    movw    r7, #160
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.sched_rr_get_interval
.global sched_rr_get_interval
sched_rr_get_interval:
    stmfd   sp!, {r7}
    movw    r7, #161
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.nanosleep
.global nanosleep
nanosleep:
    stmfd   sp!, {r7}
    movw    r7, #162
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.mremap
.global mremap
mremap:
    mov     ip, sp
    stmfd   sp!, {r4, r7}
    movw    r7, #163
    ldmfd   ip!, {r4}
    svc     #0
    ldmfd   sp!, {r4, r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.setresuid
.global setresuid
setresuid:
    stmfd   sp!, {r7}
    movw    r7, #164
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.getresuid
.global getresuid
getresuid:
    stmfd   sp!, {r7}
    movw    r7, #165
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.poll
.global poll
poll:
    stmfd   sp!, {r7}
    movw    r7, #168
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.setresgid
.global setresgid
setresgid:
    stmfd   sp!, {r7}
    movw    r7, #170
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.getresgid
.global getresgid
getresgid:
    stmfd   sp!, {r7}
    movw    r7, #171
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.prctl
.global prctl
prctl:
    mov     ip, sp
    stmfd   sp!, {r4, r7}
    movw    r7, #172
    ldmfd   ip!, {r4}
    svc     #0
    ldmfd   sp!, {r4, r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.rt_sigreturn
.global rt_sigreturn
rt_sigreturn:
    stmfd   sp!, {r7}
    movw    r7, #173
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.rt_sigaction
.global rt_sigaction
rt_sigaction:
    stmfd   sp!, {r7}
    movw    r7, #174
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.rt_sigprocmask
.global rt_sigprocmask
rt_sigprocmask:
    stmfd   sp!, {r7}
    movw    r7, #175
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.rt_sigpending
.global rt_sigpending
rt_sigpending:
    stmfd   sp!, {r7}
    movw    r7, #176
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.rt_sigtimedwait
.global rt_sigtimedwait
rt_sigtimedwait:
    stmfd   sp!, {r7}
    movw    r7, #177
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.rt_sigqueueinfo
.global rt_sigqueueinfo
rt_sigqueueinfo:
    stmfd   sp!, {r7}
    movw    r7, #178
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.rt_sigsuspend
.global rt_sigsuspend
rt_sigsuspend:
    stmfd   sp!, {r7}
    movw    r7, #179
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.pread64
.global pread64
pread64:
    stmfd   sp!, {r7}
    movw    r7, #180
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.pwrite64
.global pwrite64
pwrite64:
    stmfd   sp!, {r7}
    movw    r7, #181
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.chown
.global chown
chown:
    stmfd   sp!, {r7}
    movw    r7, #182
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.getcwd
.global getcwd
getcwd:
    stmfd   sp!, {r7}
    movw    r7, #183
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.capget
.global capget
capget:
    stmfd   sp!, {r7}
    movw    r7, #184
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.capset
.global capset
capset:
    stmfd   sp!, {r7}
    movw    r7, #185
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.sendfile
.global sendfile
sendfile:
    stmfd   sp!, {r7}
    movw    r7, #187
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.vfork
.global vfork
vfork:
    stmfd   sp!, {r7}
    movw    r7, #190
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.ugetrlimit
.global ugetrlimit
ugetrlimit:
    stmfd   sp!, {r7}
    movw    r7, #191
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.mmap2
.global mmap2
mmap2:
    mov     ip, sp
    stmfd   sp!, {r4, r5, r7}
    movw    r7, #192
    ldmfd   ip!, {r4, r5}
    svc     #0
    ldmfd   sp!, {r4, r5, r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.truncate64
.global truncate64
truncate64:
    stmfd   sp!, {r7}
    movw    r7, #193
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.ftruncate64
.global ftruncate64
ftruncate64:
    stmfd   sp!, {r7}
    movw    r7, #194
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.stat64
.global stat64
stat64:
    stmfd   sp!, {r7}
    movw    r7, #195
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.lstat64
.global lstat64
lstat64:
    stmfd   sp!, {r7}
    movw    r7, #196
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.fstat64
.global fstat64
fstat64:
    stmfd   sp!, {r7}
    movw    r7, #197
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.lchown32
.global lchown32
lchown32:
    stmfd   sp!, {r7}
    movw    r7, #198
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.getuid32
.global getuid32
getuid32:
    stmfd   sp!, {r7}
    movw    r7, #199
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.getgid32
.global getgid32
getgid32:
    stmfd   sp!, {r7}
    movw    r7, #200
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.geteuid32
.global geteuid32
geteuid32:
    stmfd   sp!, {r7}
    movw    r7, #201
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.getegid32
.global getegid32
getegid32:
    stmfd   sp!, {r7}
    movw    r7, #202
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.setreuid32
.global setreuid32
setreuid32:
    stmfd   sp!, {r7}
    movw    r7, #203
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.setregid32
.global setregid32
setregid32:
    stmfd   sp!, {r7}
    movw    r7, #204
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.getgroups32
.global getgroups32
getgroups32:
    stmfd   sp!, {r7}
    movw    r7, #205
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.setgroups32
.global setgroups32
setgroups32:
    stmfd   sp!, {r7}
    movw    r7, #206
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.fchown32
.global fchown32
fchown32:
    stmfd   sp!, {r7}
    movw    r7, #207
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.setresuid32
.global setresuid32
setresuid32:
    stmfd   sp!, {r7}
    movw    r7, #208
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.getresuid32
.global getresuid32
getresuid32:
    stmfd   sp!, {r7}
    movw    r7, #209
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.setresgid32
.global setresgid32
setresgid32:
    stmfd   sp!, {r7}
    movw    r7, #210
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.getresgid32
.global getresgid32
getresgid32:
    stmfd   sp!, {r7}
    movw    r7, #211
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.chown32
.global chown32
chown32:
    stmfd   sp!, {r7}
    movw    r7, #212
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.setuid32
.global setuid32
setuid32:
    stmfd   sp!, {r7}
    movw    r7, #213
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.setgid32
.global setgid32
setgid32:
    stmfd   sp!, {r7}
    movw    r7, #214
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.setfsuid32
.global setfsuid32
setfsuid32:
    stmfd   sp!, {r7}
    movw    r7, #215
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.setfsgid32
.global setfsgid32
setfsgid32:
    stmfd   sp!, {r7}
    movw    r7, #216
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.getdents64
.global getdents64
getdents64:
    stmfd   sp!, {r7}
    movw    r7, #217
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.pivot_root
.global pivot_root
pivot_root:
    stmfd   sp!, {r7}
    movw    r7, #218
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.mincore
.global mincore
mincore:
    stmfd   sp!, {r7}
    movw    r7, #219
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.madvise
.global madvise
madvise:
    stmfd   sp!, {r7}
    movw    r7, #220
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.fcntl64
.global fcntl64
fcntl64:
    stmfd   sp!, {r7}
    movw    r7, #221
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.gettid
.global gettid
gettid:
    stmfd   sp!, {r7}
    movw    r7, #224
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.readahead
.global readahead
readahead:
    stmfd   sp!, {r7}
    movw    r7, #225
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.setxattr
.global setxattr
setxattr:
    mov     ip, sp
    stmfd   sp!, {r4, r7}
    movw    r7, #226
    ldmfd   ip!, {r4}
    svc     #0
    ldmfd   sp!, {r4, r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.lsetxattr
.global lsetxattr
lsetxattr:
    mov     ip, sp
    stmfd   sp!, {r4, r7}
    movw    r7, #227
    ldmfd   ip!, {r4}
    svc     #0
    ldmfd   sp!, {r4, r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.fsetxattr
.global fsetxattr
fsetxattr:
    mov     ip, sp
    stmfd   sp!, {r4, r7}
    movw    r7, #228
    ldmfd   ip!, {r4}
    svc     #0
    ldmfd   sp!, {r4, r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.getxattr
.global getxattr
getxattr:
    stmfd   sp!, {r7}
    movw    r7, #229
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.lgetxattr
.global lgetxattr
lgetxattr:
    stmfd   sp!, {r7}
    movw    r7, #230
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.fgetxattr
.global fgetxattr
fgetxattr:
    stmfd   sp!, {r7}
    movw    r7, #231
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.listxattr
.global listxattr
listxattr:
    stmfd   sp!, {r7}
    movw    r7, #232
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.llistxattr
.global llistxattr
llistxattr:
    stmfd   sp!, {r7}
    movw    r7, #233
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.flistxattr
.global flistxattr
flistxattr:
    stmfd   sp!, {r7}
    movw    r7, #234
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.removexattr
.global removexattr
removexattr:
    stmfd   sp!, {r7}
    movw    r7, #235
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.lremovexattr
.global lremovexattr
lremovexattr:
    stmfd   sp!, {r7}
    movw    r7, #236
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.fremovexattr
.global fremovexattr
fremovexattr:
    stmfd   sp!, {r7}
    movw    r7, #237
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.tkill
.global tkill
tkill:
    stmfd   sp!, {r7}
    movw    r7, #238
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.sendfile64
.global sendfile64
sendfile64:
    stmfd   sp!, {r7}
    movw    r7, #239
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.futex
.global futex
futex:
    mov     ip, sp
    stmfd   sp!, {r4, r5, r7}
    movw    r7, #240
    ldmfd   ip!, {r4, r5}
    svc     #0
    ldmfd   sp!, {r4, r5, r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.sched_setaffinity
.global sched_setaffinity
sched_setaffinity:
    stmfd   sp!, {r7}
    movw    r7, #241
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.sched_getaffinity
.global sched_getaffinity
sched_getaffinity:
    stmfd   sp!, {r7}
    movw    r7, #242
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.io_setup
.global io_setup
io_setup:
    stmfd   sp!, {r7}
    movw    r7, #243
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.io_destroy
.global io_destroy
io_destroy:
    stmfd   sp!, {r7}
    movw    r7, #244
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.io_getevents
.global io_getevents
io_getevents:
    mov     ip, sp
    stmfd   sp!, {r4, r7}
    movw    r7, #245
    ldmfd   ip!, {r4}
    svc     #0
    ldmfd   sp!, {r4, r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.io_submit
.global io_submit
io_submit:
    stmfd   sp!, {r7}
    movw    r7, #246
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.io_cancel
.global io_cancel
io_cancel:
    stmfd   sp!, {r7}
    movw    r7, #247
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.exit_group
.global exit_group
exit_group:
    stmfd   sp!, {r7}
    movw    r7, #248
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.lookup_dcookie
.global lookup_dcookie
lookup_dcookie:
    stmfd   sp!, {r7}
    movw    r7, #249
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.epoll_create
.global epoll_create
epoll_create:
    stmfd   sp!, {r7}
    movw    r7, #250
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.epoll_ctl
.global epoll_ctl
epoll_ctl:
    stmfd   sp!, {r7}
    movw    r7, #251
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.epoll_wait
.global epoll_wait
epoll_wait:
    stmfd   sp!, {r7}
    movw    r7, #252
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.remap_file_pages
.global remap_file_pages
remap_file_pages:
    mov     ip, sp
    stmfd   sp!, {r4, r7}
    movw    r7, #253
    ldmfd   ip!, {r4}
    svc     #0
    ldmfd   sp!, {r4, r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.set_tid_address
.global set_tid_address
set_tid_address:
    stmfd   sp!, {r7}
    movw    r7, #256
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.timer_create
.global timer_create
timer_create:
    stmfd   sp!, {r7}
    movw    r7, #257
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.timer_settime
.global timer_settime
timer_settime:
    stmfd   sp!, {r7}
    movw    r7, #258
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.timer_gettime
.global timer_gettime
timer_gettime:
    stmfd   sp!, {r7}
    movw    r7, #259
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.timer_getoverrun
.global timer_getoverrun
timer_getoverrun:
    stmfd   sp!, {r7}
    movw    r7, #260
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.timer_delete
.global timer_delete
timer_delete:
    stmfd   sp!, {r7}
    movw    r7, #261
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.clock_settime
.global clock_settime
clock_settime:
    stmfd   sp!, {r7}
    movw    r7, #262
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.clock_gettime
.global clock_gettime
clock_gettime:
    stmfd   sp!, {r7}
    movw    r7, #263
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.clock_getres
.global clock_getres
clock_getres:
    stmfd   sp!, {r7}
    movw    r7, #264
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.clock_nanosleep
.global clock_nanosleep
clock_nanosleep:
    stmfd   sp!, {r7}
    movw    r7, #265
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.statfs64
.global statfs64
statfs64:
    stmfd   sp!, {r7}
    movw    r7, #266
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.fstatfs64
.global fstatfs64
fstatfs64:
    stmfd   sp!, {r7}
    movw    r7, #267
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.tgkill
.global tgkill
tgkill:
    stmfd   sp!, {r7}
    movw    r7, #268
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.utimes
.global utimes
utimes:
    stmfd   sp!, {r7}
    movw    r7, #269
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.arm_fadvise64_64
.global arm_fadvise64_64
arm_fadvise64_64:
    stmfd   sp!, {r7}
    movw    r7, #270
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.pciconfig_read
.global pciconfig_read
pciconfig_read:
    mov     ip, sp
    stmfd   sp!, {r4, r7}
    movw    r7, #272
    ldmfd   ip!, {r4}
    svc     #0
    ldmfd   sp!, {r4, r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.pciconfig_write
.global pciconfig_write
pciconfig_write:
    mov     ip, sp
    stmfd   sp!, {r4, r7}
    movw    r7, #273
    ldmfd   ip!, {r4}
    svc     #0
    ldmfd   sp!, {r4, r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.mq_open
.global mq_open
mq_open:
    stmfd   sp!, {r7}
    movw    r7, #274
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.mq_unlink
.global mq_unlink
mq_unlink:
    stmfd   sp!, {r7}
    movw    r7, #275
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.mq_timedsend
.global mq_timedsend
mq_timedsend:
    mov     ip, sp
    stmfd   sp!, {r4, r7}
    movw    r7, #276
    ldmfd   ip!, {r4}
    svc     #0
    ldmfd   sp!, {r4, r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.mq_timedreceive
.global mq_timedreceive
mq_timedreceive:
    mov     ip, sp
    stmfd   sp!, {r4, r7}
    movw    r7, #277
    ldmfd   ip!, {r4}
    svc     #0
    ldmfd   sp!, {r4, r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.mq_notify
.global mq_notify
mq_notify:
    stmfd   sp!, {r7}
    movw    r7, #278
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.mq_getsetattr
.global mq_getsetattr
mq_getsetattr:
    stmfd   sp!, {r7}
    movw    r7, #279
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.waitid
.global waitid
waitid:
    mov     ip, sp
    stmfd   sp!, {r4, r7}
    movw    r7, #280
    ldmfd   ip!, {r4}
    svc     #0
    ldmfd   sp!, {r4, r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.socket
.global socket
socket:
    stmfd   sp!, {r7}
    movw    r7, #281
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.bind
.global bind
bind:
    stmfd   sp!, {r7}
    movw    r7, #282
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.connect
.global connect
connect:
    stmfd   sp!, {r7}
    movw    r7, #283
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.listen
.global listen
listen:
    stmfd   sp!, {r7}
    movw    r7, #284
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.accept
.global accept
accept:
    stmfd   sp!, {r7}
    movw    r7, #285
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.getsockname
.global getsockname
getsockname:
    stmfd   sp!, {r7}
    movw    r7, #286
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.getpeername
.global getpeername
getpeername:
    stmfd   sp!, {r7}
    movw    r7, #287
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.socketpair
.global socketpair
socketpair:
    stmfd   sp!, {r7}
    movw    r7, #288
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.send
.global send
send:
    stmfd   sp!, {r7}
    movw    r7, #289
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.sendto
.global sendto
sendto:
    mov     ip, sp
    stmfd   sp!, {r4, r5, r7}
    movw    r7, #290
    ldmfd   ip!, {r4, r5}
    svc     #0
    ldmfd   sp!, {r4, r5, r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.recv
.global recv
recv:
    stmfd   sp!, {r7}
    movw    r7, #291
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.recvfrom
.global recvfrom
recvfrom:
    mov     ip, sp
    stmfd   sp!, {r4, r5, r7}
    movw    r7, #292
    ldmfd   ip!, {r4, r5}
    svc     #0
    ldmfd   sp!, {r4, r5, r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.shutdown
.global shutdown
shutdown:
    stmfd   sp!, {r7}
    movw    r7, #293
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.setsockopt
.global setsockopt
setsockopt:
    mov     ip, sp
    stmfd   sp!, {r4, r7}
    movw    r7, #294
    ldmfd   ip!, {r4}
    svc     #0
    ldmfd   sp!, {r4, r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.getsockopt
.global getsockopt
getsockopt:
    mov     ip, sp
    stmfd   sp!, {r4, r7}
    movw    r7, #295
    ldmfd   ip!, {r4}
    svc     #0
    ldmfd   sp!, {r4, r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.sendmsg
.global sendmsg
sendmsg:
    stmfd   sp!, {r7}
    movw    r7, #296
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.recvmsg
.global recvmsg
recvmsg:
    stmfd   sp!, {r7}
    movw    r7, #297
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.semop
.global semop
semop:
    stmfd   sp!, {r7}
    movw    r7, #298
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.semget
.global semget
semget:
    stmfd   sp!, {r7}
    movw    r7, #299
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.semctl
.global semctl
semctl:
    stmfd   sp!, {r7}
    movw    r7, #300
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.msgsnd
.global msgsnd
msgsnd:
    stmfd   sp!, {r7}
    movw    r7, #301
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.msgrcv
.global msgrcv
msgrcv:
    mov     ip, sp
    stmfd   sp!, {r4, r7}
    movw    r7, #302
    ldmfd   ip!, {r4}
    svc     #0
    ldmfd   sp!, {r4, r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.msgget
.global msgget
msgget:
    stmfd   sp!, {r7}
    movw    r7, #303
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.msgctl
.global msgctl
msgctl:
    stmfd   sp!, {r7}
    movw    r7, #304
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.shmat
.global shmat
shmat:
    stmfd   sp!, {r7}
    movw    r7, #305
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.shmdt
.global shmdt
shmdt:
    stmfd   sp!, {r7}
    movw    r7, #306
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.shmget
.global shmget
shmget:
    stmfd   sp!, {r7}
    movw    r7, #307
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.shmctl
.global shmctl
shmctl:
    stmfd   sp!, {r7}
    movw    r7, #308
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.add_key
.global add_key
add_key:
    mov     ip, sp
    stmfd   sp!, {r4, r7}
    movw    r7, #309
    ldmfd   ip!, {r4}
    svc     #0
    ldmfd   sp!, {r4, r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.request_key
.global request_key
request_key:
    stmfd   sp!, {r7}
    movw    r7, #310
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.keyctl
.global keyctl
keyctl:
    mov     ip, sp
    stmfd   sp!, {r4, r7}
    movw    r7, #311
    ldmfd   ip!, {r4}
    svc     #0
    ldmfd   sp!, {r4, r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.semtimedop
.global semtimedop
semtimedop:
    stmfd   sp!, {r7}
    movw    r7, #312
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.ioprio_set
.global ioprio_set
ioprio_set:
    stmfd   sp!, {r7}
    movw    r7, #314
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.ioprio_get
.global ioprio_get
ioprio_get:
    stmfd   sp!, {r7}
    movw    r7, #315
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.inotify_init
.global inotify_init
inotify_init:
    stmfd   sp!, {r7}
    movw    r7, #316
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.inotify_add_watch
.global inotify_add_watch
inotify_add_watch:
    stmfd   sp!, {r7}
    movw    r7, #317
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.inotify_rm_watch
.global inotify_rm_watch
inotify_rm_watch:
    stmfd   sp!, {r7}
    movw    r7, #318
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.mbind
.global mbind
mbind:
    mov     ip, sp
    stmfd   sp!, {r4, r5, r7}
    movw    r7, #319
    ldmfd   ip!, {r4, r5}
    svc     #0
    ldmfd   sp!, {r4, r5, r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.get_mempolicy
.global get_mempolicy
get_mempolicy:
    mov     ip, sp
    stmfd   sp!, {r4, r7}
    movw    r7, #320
    ldmfd   ip!, {r4}
    svc     #0
    ldmfd   sp!, {r4, r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.set_mempolicy
.global set_mempolicy
set_mempolicy:
    stmfd   sp!, {r7}
    movw    r7, #321
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.openat
.global openat
openat:
    stmfd   sp!, {r7}
    movw    r7, #322
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.mkdirat
.global mkdirat
mkdirat:
    stmfd   sp!, {r7}
    movw    r7, #323
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.mknodat
.global mknodat
mknodat:
    stmfd   sp!, {r7}
    movw    r7, #324
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.fchownat
.global fchownat
fchownat:
    mov     ip, sp
    stmfd   sp!, {r4, r7}
    movw    r7, #325
    ldmfd   ip!, {r4}
    svc     #0
    ldmfd   sp!, {r4, r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.futimesat
.global futimesat
futimesat:
    stmfd   sp!, {r7}
    movw    r7, #326
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.fstatat64
.global fstatat64
fstatat64:
    stmfd   sp!, {r7}
    movw    r7, #327
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.unlinkat
.global unlinkat
unlinkat:
    stmfd   sp!, {r7}
    movw    r7, #328
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.renameat
.global renameat
renameat:
    stmfd   sp!, {r7}
    movw    r7, #329
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.linkat
.global linkat
linkat:
    mov     ip, sp
    stmfd   sp!, {r4, r7}
    movw    r7, #330
    ldmfd   ip!, {r4}
    svc     #0
    ldmfd   sp!, {r4, r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.symlinkat
.global symlinkat
symlinkat:
    stmfd   sp!, {r7}
    movw    r7, #331
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.readlinkat
.global readlinkat
readlinkat:
    stmfd   sp!, {r7}
    movw    r7, #332
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.fchmodat
.global fchmodat
fchmodat:
    stmfd   sp!, {r7}
    movw    r7, #333
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.faccessat
.global faccessat
faccessat:
    stmfd   sp!, {r7}
    movw    r7, #334
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.pselect6
.global pselect6
pselect6:
    mov     ip, sp
    stmfd   sp!, {r4, r5, r7}
    movw    r7, #335
    ldmfd   ip!, {r4, r5}
    svc     #0
    ldmfd   sp!, {r4, r5, r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.ppoll
.global ppoll
ppoll:
    mov     ip, sp
    stmfd   sp!, {r4, r7}
    movw    r7, #336
    ldmfd   ip!, {r4}
    svc     #0
    ldmfd   sp!, {r4, r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.unshare
.global unshare
unshare:
    stmfd   sp!, {r7}
    movw    r7, #337
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.set_robust_list
.global set_robust_list
set_robust_list:
    stmfd   sp!, {r7}
    movw    r7, #338
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.get_robust_list
.global get_robust_list
get_robust_list:
    stmfd   sp!, {r7}
    movw    r7, #339
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.splice
.global splice
splice:
    mov     ip, sp
    stmfd   sp!, {r4, r5, r7}
    movw    r7, #340
    ldmfd   ip!, {r4, r5}
    svc     #0
    ldmfd   sp!, {r4, r5, r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.sync_file_range2
.global sync_file_range2
sync_file_range2:
    stmfd   sp!, {r7}
    movw    r7, #341
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.tee
.global tee
tee:
    stmfd   sp!, {r7}
    movw    r7, #342
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.vmsplice
.global vmsplice
vmsplice:
    stmfd   sp!, {r7}
    movw    r7, #343
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.move_pages
.global move_pages
move_pages:
    mov     ip, sp
    stmfd   sp!, {r4, r5, r7}
    movw    r7, #344
    ldmfd   ip!, {r4, r5}
    svc     #0
    ldmfd   sp!, {r4, r5, r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.getcpu
.global getcpu
getcpu:
    stmfd   sp!, {r7}
    movw    r7, #345
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.epoll_pwait
.global epoll_pwait
epoll_pwait:
    mov     ip, sp
    stmfd   sp!, {r4, r5, r7}
    movw    r7, #346
    ldmfd   ip!, {r4, r5}
    svc     #0
    ldmfd   sp!, {r4, r5, r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.kexec_load
.global kexec_load
kexec_load:
    stmfd   sp!, {r7}
    movw    r7, #347
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.utimensat
.global utimensat
utimensat:
    stmfd   sp!, {r7}
    movw    r7, #348
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.signalfd
.global signalfd
signalfd:
    stmfd   sp!, {r7}
    movw    r7, #349
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.timerfd_create
.global timerfd_create
timerfd_create:
    stmfd   sp!, {r7}
    movw    r7, #350
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.eventfd
.global eventfd
eventfd:
    stmfd   sp!, {r7}
    movw    r7, #351
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.fallocate
.global fallocate
fallocate:
    stmfd   sp!, {r7}
    movw    r7, #352
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.timerfd_settime
.global timerfd_settime
timerfd_settime:
    stmfd   sp!, {r7}
    movw    r7, #353
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.timerfd_gettime
.global timerfd_gettime
timerfd_gettime:
    stmfd   sp!, {r7}
    movw    r7, #354
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.signalfd4
.global signalfd4
signalfd4:
    stmfd   sp!, {r7}
    movw    r7, #355
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.eventfd2
.global eventfd2
eventfd2:
    stmfd   sp!, {r7}
    movw    r7, #356
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.epoll_create1
.global epoll_create1
epoll_create1:
    stmfd   sp!, {r7}
    movw    r7, #357
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.dup3
.global dup3
dup3:
    stmfd   sp!, {r7}
    movw    r7, #358
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.pipe2
.global pipe2
pipe2:
    stmfd   sp!, {r7}
    movw    r7, #359
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.inotify_init1
.global inotify_init1
inotify_init1:
    stmfd   sp!, {r7}
    movw    r7, #360
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.preadv
.global preadv
preadv:
    mov     ip, sp
    stmfd   sp!, {r4, r7}
    movw    r7, #361
    ldmfd   ip!, {r4}
    svc     #0
    ldmfd   sp!, {r4, r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.pwritev
.global pwritev
pwritev:
    mov     ip, sp
    stmfd   sp!, {r4, r7}
    movw    r7, #362
    ldmfd   ip!, {r4}
    svc     #0
    ldmfd   sp!, {r4, r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.rt_tgsigqueueinfo
.global rt_tgsigqueueinfo
rt_tgsigqueueinfo:
    stmfd   sp!, {r7}
    movw    r7, #363
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.perf_event_open
.global perf_event_open
perf_event_open:
    mov     ip, sp
    stmfd   sp!, {r4, r7}
    movw    r7, #364
    ldmfd   ip!, {r4}
    svc     #0
    ldmfd   sp!, {r4, r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.recvmmsg
.global recvmmsg
recvmmsg:
    mov     ip, sp
    stmfd   sp!, {r4, r7}
    movw    r7, #365
    ldmfd   ip!, {r4}
    svc     #0
    ldmfd   sp!, {r4, r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.accept4
.global accept4
accept4:
    stmfd   sp!, {r7}
    movw    r7, #366
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.fanotify_init
.global fanotify_init
fanotify_init:
    stmfd   sp!, {r7}
    movw    r7, #367
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.fanotify_mark
.global fanotify_mark
fanotify_mark:
    stmfd   sp!, {r7}
    movw    r7, #368
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.prlimit64
.global prlimit64
prlimit64:
    stmfd   sp!, {r7}
    movw    r7, #369
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.name_to_handle_at
.global name_to_handle_at
name_to_handle_at:
    mov     ip, sp
    stmfd   sp!, {r4, r7}
    movw    r7, #370
    ldmfd   ip!, {r4}
    svc     #0
    ldmfd   sp!, {r4, r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.open_by_handle_at
.global open_by_handle_at
open_by_handle_at:
    stmfd   sp!, {r7}
    movw    r7, #371
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.clock_adjtime
.global clock_adjtime
clock_adjtime:
    stmfd   sp!, {r7}
    movw    r7, #372
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.syncfs
.global syncfs
syncfs:
    stmfd   sp!, {r7}
    movw    r7, #373
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.sendmmsg
.global sendmmsg
sendmmsg:
    stmfd   sp!, {r7}
    movw    r7, #374
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.setns
.global setns
setns:
    stmfd   sp!, {r7}
    movw    r7, #375
    svc     #0
    ldmfd   sp!, {r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.process_vm_readv
.global process_vm_readv
process_vm_readv:
    mov     ip, sp
    stmfd   sp!, {r4, r5, r7}
    movw    r7, #376
    ldmfd   ip!, {r4, r5}
    svc     #0
    ldmfd   sp!, {r4, r5, r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
.section .text.process_vm_writev
.global process_vm_writev
process_vm_writev:
    mov     ip, sp
    stmfd   sp!, {r4, r5, r7}
    movw    r7, #377
    ldmfd   ip!, {r4, r5}
    svc     #0
    ldmfd   sp!, {r4, r5, r7}
    cmp     r0, #0
    blt     syscall_set_errno
    bx      lr
