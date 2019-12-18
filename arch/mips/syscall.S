.section .text.exit
.global exit
exit:
    li      $v0, 4001
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.fork
.global fork
fork:
    li      $v0, 4002
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.read
.global read
read:
    li      $v0, 4003
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.write
.global write
write:
    li      $v0, 4004
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text._open
.global _open
_open:
    li      $v0, 4005
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.close
.global close
close:
    li      $v0, 4006
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.waitpid
.global waitpid
waitpid:
    li      $v0, 4007
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.creat
.global creat
creat:
    li      $v0, 4008
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.link
.global link
link:
    li      $v0, 4009
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.unlink
.global unlink
unlink:
    li      $v0, 4010
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.execve
.global execve
execve:
    li      $v0, 4011
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.chdir
.global chdir
chdir:
    li      $v0, 4012
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.time
.global time
time:
    li      $v0, 4013
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text._mknod
.global _mknod
_mknod:
    li      $v0, 4014
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.chmod
.global chmod
chmod:
    li      $v0, 4015
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.lchown
.global lchown
lchown:
    li      $v0, 4016
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.lseek
.global lseek
lseek:
    li      $v0, 4019
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.getpid
.global getpid
getpid:
    li      $v0, 4020
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.mount
.global mount
mount:
    li      $v0, 4021
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.umount
.global umount
umount:
    li      $v0, 4022
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.setuid
.global setuid
setuid:
    li      $v0, 4023
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.getuid
.global getuid
getuid:
    li      $v0, 4024
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.stime
.global stime
stime:
    li      $v0, 4025
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.ptrace
.global ptrace
ptrace:
    li      $v0, 4026
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.alarm
.global alarm
alarm:
    li      $v0, 4027
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.pause
.global pause
pause:
    li      $v0, 4029
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.utime
.global utime
utime:
    li      $v0, 4030
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.access
.global access
access:
    li      $v0, 4033
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.nice
.global nice
nice:
    li      $v0, 4034
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.sync
.global sync
sync:
    li      $v0, 4036
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.kill
.global kill
kill:
    li      $v0, 4037
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.rename
.global rename
rename:
    li      $v0, 4038
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.mkdir
.global mkdir
mkdir:
    li      $v0, 4039
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.rmdir
.global rmdir
rmdir:
    li      $v0, 4040
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.dup
.global dup
dup:
    li      $v0, 4041
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text._pipe
.global _pipe
_pipe:
    li      $v0, 4042
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.times
.global times
times:
    li      $v0, 4043
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text._brk
.global _brk
_brk:
    li      $v0, 4045
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.setgid
.global setgid
setgid:
    li      $v0, 4046
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.getgid
.global getgid
getgid:
    li      $v0, 4047
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.signal
.global signal
signal:
    li      $v0, 4048
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.geteuid
.global geteuid
geteuid:
    li      $v0, 4049
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.getegid
.global getegid
getegid:
    li      $v0, 4050
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.acct
.global acct
acct:
    li      $v0, 4051
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.ioctl
.global ioctl
ioctl:
    li      $v0, 4054
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.fcntl
.global fcntl
fcntl:
    li      $v0, 4055
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.setpgid
.global setpgid
setpgid:
    li      $v0, 4057
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.ulimit
.global ulimit
ulimit:
    li      $v0, 4058
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.umask
.global umask
umask:
    li      $v0, 4060
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.chroot
.global chroot
chroot:
    li      $v0, 4061
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.ustat
.global ustat
ustat:
    li      $v0, 4062
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.dup2
.global dup2
dup2:
    li      $v0, 4063
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.getppid
.global getppid
getppid:
    li      $v0, 4064
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.getpgrp
.global getpgrp
getpgrp:
    li      $v0, 4065
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.setsid
.global setsid
setsid:
    li      $v0, 4066
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.sigaction
.global sigaction
sigaction:
    li      $v0, 4067
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.sgetmask
.global sgetmask
sgetmask:
    li      $v0, 4068
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.ssetmask
.global ssetmask
ssetmask:
    li      $v0, 4069
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.setreuid
.global setreuid
setreuid:
    li      $v0, 4070
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.setregid
.global setregid
setregid:
    li      $v0, 4071
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.sigsuspend
.global sigsuspend
sigsuspend:
    li      $v0, 4072
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.sigpending
.global sigpending
sigpending:
    li      $v0, 4073
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.sethostname
.global sethostname
sethostname:
    li      $v0, 4074
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.setrlimit
.global setrlimit
setrlimit:
    li      $v0, 4075
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.getrlimit
.global getrlimit
getrlimit:
    li      $v0, 4076
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.getrusage
.global getrusage
getrusage:
    li      $v0, 4077
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.gettimeofday
.global gettimeofday
gettimeofday:
    li      $v0, 4078
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.settimeofday
.global settimeofday
settimeofday:
    li      $v0, 4079
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.getgroups
.global getgroups
getgroups:
    li      $v0, 4080
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.setgroups
.global setgroups
setgroups:
    li      $v0, 4081
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.reserved82
.global reserved82
reserved82:
    li      $v0, 4082
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.symlink
.global symlink
symlink:
    li      $v0, 4083
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.readlink
.global readlink
readlink:
    li      $v0, 4085
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.uselib
.global uselib
uselib:
    li      $v0, 4086
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.swapon
.global swapon
swapon:
    li      $v0, 4087
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.reboot
.global reboot
reboot:
    li      $v0, 4088
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text._readdir
.global _readdir
_readdir:
    li      $v0, 4089
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.mmap
.global mmap
mmap:
    li      $v0, 4090
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.munmap
.global munmap
munmap:
    li      $v0, 4091
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.truncate
.global truncate
truncate:
    li      $v0, 4092
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.ftruncate
.global ftruncate
ftruncate:
    li      $v0, 4093
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.fchmod
.global fchmod
fchmod:
    li      $v0, 4094
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.fchown
.global fchown
fchown:
    li      $v0, 4095
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.getpriority
.global getpriority
getpriority:
    li      $v0, 4096
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.setpriority
.global setpriority
setpriority:
    li      $v0, 4097
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.profil
.global profil
profil:
    li      $v0, 4098
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.statfs
.global statfs
statfs:
    li      $v0, 4099
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.fstatfs
.global fstatfs
fstatfs:
    li      $v0, 4100
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.ioperm
.global ioperm
ioperm:
    li      $v0, 4101
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.socketcall
.global socketcall
socketcall:
    li      $v0, 4102
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.syslog
.global syslog
syslog:
    li      $v0, 4103
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.setitimer
.global setitimer
setitimer:
    li      $v0, 4104
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.getitimer
.global getitimer
getitimer:
    li      $v0, 4105
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.stat
.global stat
stat:
    li      $v0, 4106
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.lstat
.global lstat
lstat:
    li      $v0, 4107
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.fstat
.global fstat
fstat:
    li      $v0, 4108
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.iopl
.global iopl
iopl:
    li      $v0, 4110
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.vhangup
.global vhangup
vhangup:
    li      $v0, 4111
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.idle
.global idle
idle:
    li      $v0, 4112
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.vm86
.global vm86
vm86:
    li      $v0, 4113
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.wait4
.global wait4
wait4:
    li      $v0, 4114
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.swapoff
.global swapoff
swapoff:
    li      $v0, 4115
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.sysinfo
.global sysinfo
sysinfo:
    li      $v0, 4116
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.ipc
.global ipc
ipc:
    li      $v0, 4117
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.fsync
.global fsync
fsync:
    li      $v0, 4118
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.sigreturn
.global sigreturn
sigreturn:
    li      $v0, 4119
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text._clone
.global _clone
_clone:
    li      $v0, 4120
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.setdomainname
.global setdomainname
setdomainname:
    li      $v0, 4121
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.uname
.global uname
uname:
    li      $v0, 4122
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.modify_ldt
.global modify_ldt
modify_ldt:
    li      $v0, 4123
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.adjtimex
.global adjtimex
adjtimex:
    li      $v0, 4124
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.mprotect
.global mprotect
mprotect:
    li      $v0, 4125
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.sigprocmask
.global sigprocmask
sigprocmask:
    li      $v0, 4126
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.create_module
.global create_module
create_module:
    li      $v0, 4127
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.init_module
.global init_module
init_module:
    li      $v0, 4128
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.delete_module
.global delete_module
delete_module:
    li      $v0, 4129
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.get_kernel_syms
.global get_kernel_syms
get_kernel_syms:
    li      $v0, 4130
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.quotactl
.global quotactl
quotactl:
    li      $v0, 4131
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.getpgid
.global getpgid
getpgid:
    li      $v0, 4132
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.fchdir
.global fchdir
fchdir:
    li      $v0, 4133
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.bdflush
.global bdflush
bdflush:
    li      $v0, 4134
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.sysfs
.global sysfs
sysfs:
    li      $v0, 4135
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.personality
.global personality
personality:
    li      $v0, 4136
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.afs_syscall
.global afs_syscall
afs_syscall:
    li      $v0, 4137
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.setfsuid
.global setfsuid
setfsuid:
    li      $v0, 4138
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.setfsgid
.global setfsgid
setfsgid:
    li      $v0, 4139
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.llseek
.global llseek
llseek:
    li      $v0, 4140
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.getdents
.global getdents
getdents:
    li      $v0, 4141
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.select
.global select
select:
    li      $v0, 4142
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.flock
.global flock
flock:
    li      $v0, 4143
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.msync
.global msync
msync:
    li      $v0, 4144
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.readv
.global readv
readv:
    li      $v0, 4145
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.writev
.global writev
writev:
    li      $v0, 4146
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.cacheflush
.global cacheflush
cacheflush:
    li      $v0, 4147
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.cachectl
.global cachectl
cachectl:
    li      $v0, 4148
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.sysmips
.global sysmips
sysmips:
    li      $v0, 4149
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.unused150
.global unused150
unused150:
    li      $v0, 4150
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.getsid
.global getsid
getsid:
    li      $v0, 4151
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.fdatasync
.global fdatasync
fdatasync:
    li      $v0, 4152
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text._sysctl
.global _sysctl
_sysctl:
    li      $v0, 4153
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.mlock
.global mlock
mlock:
    li      $v0, 4154
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.munlock
.global munlock
munlock:
    li      $v0, 4155
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.mlockall
.global mlockall
mlockall:
    li      $v0, 4156
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.munlockall
.global munlockall
munlockall:
    li      $v0, 4157
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.sched_setparam
.global sched_setparam
sched_setparam:
    li      $v0, 4158
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.sched_getparam
.global sched_getparam
sched_getparam:
    li      $v0, 4159
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.sched_setscheduler
.global sched_setscheduler
sched_setscheduler:
    li      $v0, 4160
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.sched_getscheduler
.global sched_getscheduler
sched_getscheduler:
    li      $v0, 4161
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.sched_yield
.global sched_yield
sched_yield:
    li      $v0, 4162
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.sched_get_priority_max
.global sched_get_priority_max
sched_get_priority_max:
    li      $v0, 4163
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.sched_get_priority_min
.global sched_get_priority_min
sched_get_priority_min:
    li      $v0, 4164
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.sched_rr_get_interval
.global sched_rr_get_interval
sched_rr_get_interval:
    li      $v0, 4165
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.nanosleep
.global nanosleep
nanosleep:
    li      $v0, 4166
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.mremap
.global mremap
mremap:
    li      $v0, 4167
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.accept
.global accept
accept:
    li      $v0, 4168
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.bind
.global bind
bind:
    li      $v0, 4169
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.connect
.global connect
connect:
    li      $v0, 4170
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.getpeername
.global getpeername
getpeername:
    li      $v0, 4171
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.getsockname
.global getsockname
getsockname:
    li      $v0, 4172
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.getsockopt
.global getsockopt
getsockopt:
    li      $v0, 4173
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.listen
.global listen
listen:
    li      $v0, 4174
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.recv
.global recv
recv:
    li      $v0, 4175
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.recvfrom
.global recvfrom
recvfrom:
    li      $v0, 4176
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.recvmsg
.global recvmsg
recvmsg:
    li      $v0, 4177
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.send
.global send
send:
    li      $v0, 4178
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.sendmsg
.global sendmsg
sendmsg:
    li      $v0, 4179
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.sendto
.global sendto
sendto:
    li      $v0, 4180
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.setsockopt
.global setsockopt
setsockopt:
    li      $v0, 4181
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.shutdown
.global shutdown
shutdown:
    li      $v0, 4182
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.socket
.global socket
socket:
    li      $v0, 4183
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.socketpair
.global socketpair
socketpair:
    li      $v0, 4184
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.setresuid
.global setresuid
setresuid:
    li      $v0, 4185
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.getresuid
.global getresuid
getresuid:
    li      $v0, 4186
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.query_module
.global query_module
query_module:
    li      $v0, 4187
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.poll
.global poll
poll:
    li      $v0, 4188
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.nfsservctl
.global nfsservctl
nfsservctl:
    li      $v0, 4189
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.setresgid
.global setresgid
setresgid:
    li      $v0, 4190
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.getresgid
.global getresgid
getresgid:
    li      $v0, 4191
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.prctl
.global prctl
prctl:
    li      $v0, 4192
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.rt_sigreturn
.global rt_sigreturn
rt_sigreturn:
    li      $v0, 4193
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.rt_sigaction
.global rt_sigaction
rt_sigaction:
    li      $v0, 4194
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.rt_sigprocmask
.global rt_sigprocmask
rt_sigprocmask:
    li      $v0, 4195
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.rt_sigpending
.global rt_sigpending
rt_sigpending:
    li      $v0, 4196
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.rt_sigtimedwait
.global rt_sigtimedwait
rt_sigtimedwait:
    li      $v0, 4197
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.rt_sigqueueinfo
.global rt_sigqueueinfo
rt_sigqueueinfo:
    li      $v0, 4198
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.rt_sigsuspend
.global rt_sigsuspend
rt_sigsuspend:
    li      $v0, 4199
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.pread64
.global pread64
pread64:
    li      $v0, 4200
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.pwrite64
.global pwrite64
pwrite64:
    li      $v0, 4201
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.chown
.global chown
chown:
    li      $v0, 4202
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.getcwd
.global getcwd
getcwd:
    li      $v0, 4203
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.capget
.global capget
capget:
    li      $v0, 4204
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.capset
.global capset
capset:
    li      $v0, 4205
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.sigaltstack
.global sigaltstack
sigaltstack:
    li      $v0, 4206
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.sendfile
.global sendfile
sendfile:
    li      $v0, 4207
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.getpmsg
.global getpmsg
getpmsg:
    li      $v0, 4208
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.putpmsg
.global putpmsg
putpmsg:
    li      $v0, 4209
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.mmap2
.global mmap2
mmap2:
    li      $v0, 4210
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.truncate64
.global truncate64
truncate64:
    li      $v0, 4211
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.ftruncate64
.global ftruncate64
ftruncate64:
    li      $v0, 4212
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.stat64
.global stat64
stat64:
    li      $v0, 4213
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.lstat64
.global lstat64
lstat64:
    li      $v0, 4214
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.fstat64
.global fstat64
fstat64:
    li      $v0, 4215
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.pivot_root
.global pivot_root
pivot_root:
    li      $v0, 4216
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.mincore
.global mincore
mincore:
    li      $v0, 4217
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.madvise
.global madvise
madvise:
    li      $v0, 4218
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.getdents64
.global getdents64
getdents64:
    li      $v0, 4219
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.fcntl64
.global fcntl64
fcntl64:
    li      $v0, 4220
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.reserved221
.global reserved221
reserved221:
    li      $v0, 4221
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.gettid
.global gettid
gettid:
    li      $v0, 4222
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.readahead
.global readahead
readahead:
    li      $v0, 4223
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.setxattr
.global setxattr
setxattr:
    li      $v0, 4224
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.lsetxattr
.global lsetxattr
lsetxattr:
    li      $v0, 4225
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.fsetxattr
.global fsetxattr
fsetxattr:
    li      $v0, 4226
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.getxattr
.global getxattr
getxattr:
    li      $v0, 4227
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.lgetxattr
.global lgetxattr
lgetxattr:
    li      $v0, 4228
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.fgetxattr
.global fgetxattr
fgetxattr:
    li      $v0, 4229
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.listxattr
.global listxattr
listxattr:
    li      $v0, 4230
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.llistxattr
.global llistxattr
llistxattr:
    li      $v0, 4231
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.flistxattr
.global flistxattr
flistxattr:
    li      $v0, 4232
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.removexattr
.global removexattr
removexattr:
    li      $v0, 4233
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.lremovexattr
.global lremovexattr
lremovexattr:
    li      $v0, 4234
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.fremovexattr
.global fremovexattr
fremovexattr:
    li      $v0, 4235
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.tkill
.global tkill
tkill:
    li      $v0, 4236
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.sendfile64
.global sendfile64
sendfile64:
    li      $v0, 4237
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.futex
.global futex
futex:
    li      $v0, 4238
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.sched_setaffinity
.global sched_setaffinity
sched_setaffinity:
    li      $v0, 4239
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.sched_getaffinity
.global sched_getaffinity
sched_getaffinity:
    li      $v0, 4240
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.io_setup
.global io_setup
io_setup:
    li      $v0, 4241
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.io_destroy
.global io_destroy
io_destroy:
    li      $v0, 4242
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.io_getevents
.global io_getevents
io_getevents:
    li      $v0, 4243
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.io_submit
.global io_submit
io_submit:
    li      $v0, 4244
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.io_cancel
.global io_cancel
io_cancel:
    li      $v0, 4245
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.exit_group
.global exit_group
exit_group:
    li      $v0, 4246
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.lookup_dcookie
.global lookup_dcookie
lookup_dcookie:
    li      $v0, 4247
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.epoll_create
.global epoll_create
epoll_create:
    li      $v0, 4248
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.epoll_ctl
.global epoll_ctl
epoll_ctl:
    li      $v0, 4249
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.epoll_wait
.global epoll_wait
epoll_wait:
    li      $v0, 4250
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.remap_file_pages
.global remap_file_pages
remap_file_pages:
    li      $v0, 4251
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.set_tid_address
.global set_tid_address
set_tid_address:
    li      $v0, 4252
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.restart_syscall
.global restart_syscall
restart_syscall:
    li      $v0, 4253
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.fadvise64
.global fadvise64
fadvise64:
    li      $v0, 4254
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.statfs64
.global statfs64
statfs64:
    li      $v0, 4255
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.fstatfs64
.global fstatfs64
fstatfs64:
    li      $v0, 4256
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.timer_create
.global timer_create
timer_create:
    li      $v0, 4257
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.timer_settime
.global timer_settime
timer_settime:
    li      $v0, 4258
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.timer_gettime
.global timer_gettime
timer_gettime:
    li      $v0, 4259
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.timer_getoverrun
.global timer_getoverrun
timer_getoverrun:
    li      $v0, 4260
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.timer_delete
.global timer_delete
timer_delete:
    li      $v0, 4261
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.clock_settime
.global clock_settime
clock_settime:
    li      $v0, 4262
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.clock_gettime
.global clock_gettime
clock_gettime:
    li      $v0, 4263
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.clock_getres
.global clock_getres
clock_getres:
    li      $v0, 4264
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.clock_nanosleep
.global clock_nanosleep
clock_nanosleep:
    li      $v0, 4265
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.tgkill
.global tgkill
tgkill:
    li      $v0, 4266
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.utimes
.global utimes
utimes:
    li      $v0, 4267
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.mbind
.global mbind
mbind:
    li      $v0, 4268
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.get_mempolicy
.global get_mempolicy
get_mempolicy:
    li      $v0, 4269
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.set_mempolicy
.global set_mempolicy
set_mempolicy:
    li      $v0, 4270
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.mq_open
.global mq_open
mq_open:
    li      $v0, 4271
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.mq_unlink
.global mq_unlink
mq_unlink:
    li      $v0, 4272
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.mq_timedsend
.global mq_timedsend
mq_timedsend:
    li      $v0, 4273
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.mq_timedreceive
.global mq_timedreceive
mq_timedreceive:
    li      $v0, 4274
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.mq_notify
.global mq_notify
mq_notify:
    li      $v0, 4275
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.mq_getsetattr
.global mq_getsetattr
mq_getsetattr:
    li      $v0, 4276
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.vserver
.global vserver
vserver:
    li      $v0, 4277
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.waitid
.global waitid
waitid:
    li      $v0, 4278
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.sys_setaltroot
.global sys_setaltroot
sys_setaltroot:
    li      $v0, 4279
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.add_key
.global add_key
add_key:
    li      $v0, 4280
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.request_key
.global request_key
request_key:
    li      $v0, 4281
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.keyctl
.global keyctl
keyctl:
    li      $v0, 4282
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.set_thread_area
.global set_thread_area
set_thread_area:
    li      $v0, 4283
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.inotify_init
.global inotify_init
inotify_init:
    li      $v0, 4284
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.inotify_add_watch
.global inotify_add_watch
inotify_add_watch:
    li      $v0, 4285
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.inotify_rm_watch
.global inotify_rm_watch
inotify_rm_watch:
    li      $v0, 4286
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.migrate_pages
.global migrate_pages
migrate_pages:
    li      $v0, 4287
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.openat
.global openat
openat:
    li      $v0, 4288
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.mkdirat
.global mkdirat
mkdirat:
    li      $v0, 4289
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.mknodat
.global mknodat
mknodat:
    li      $v0, 4290
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.fchownat
.global fchownat
fchownat:
    li      $v0, 4291
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.futimesat
.global futimesat
futimesat:
    li      $v0, 4292
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.fstatat64
.global fstatat64
fstatat64:
    li      $v0, 4293
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.unlinkat
.global unlinkat
unlinkat:
    li      $v0, 4294
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.renameat
.global renameat
renameat:
    li      $v0, 4295
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.linkat
.global linkat
linkat:
    li      $v0, 4296
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.symlinkat
.global symlinkat
symlinkat:
    li      $v0, 4297
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.readlinkat
.global readlinkat
readlinkat:
    li      $v0, 4298
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.fchmodat
.global fchmodat
fchmodat:
    li      $v0, 4299
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.faccessat
.global faccessat
faccessat:
    li      $v0, 4300
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.pselect6
.global pselect6
pselect6:
    li      $v0, 4301
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.ppoll
.global ppoll
ppoll:
    li      $v0, 4302
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.unshare
.global unshare
unshare:
    li      $v0, 4303
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.splice
.global splice
splice:
    li      $v0, 4304
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.sync_file_range
.global sync_file_range
sync_file_range:
    li      $v0, 4305
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.tee
.global tee
tee:
    li      $v0, 4306
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.vmsplice
.global vmsplice
vmsplice:
    li      $v0, 4307
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.move_pages
.global move_pages
move_pages:
    li      $v0, 4308
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.set_robust_list
.global set_robust_list
set_robust_list:
    li      $v0, 4309
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.get_robust_list
.global get_robust_list
get_robust_list:
    li      $v0, 4310
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.kexec_load
.global kexec_load
kexec_load:
    li      $v0, 4311
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.getcpu
.global getcpu
getcpu:
    li      $v0, 4312
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.epoll_pwait
.global epoll_pwait
epoll_pwait:
    li      $v0, 4313
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.ioprio_set
.global ioprio_set
ioprio_set:
    li      $v0, 4314
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.ioprio_get
.global ioprio_get
ioprio_get:
    li      $v0, 4315
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.utimensat
.global utimensat
utimensat:
    li      $v0, 4316
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.signalfd
.global signalfd
signalfd:
    li      $v0, 4317
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.timerfd
.global timerfd
timerfd:
    li      $v0, 4318
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.eventfd
.global eventfd
eventfd:
    li      $v0, 4319
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.fallocate
.global fallocate
fallocate:
    li      $v0, 4320
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.timerfd_create
.global timerfd_create
timerfd_create:
    li      $v0, 4321
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.timerfd_gettime
.global timerfd_gettime
timerfd_gettime:
    li      $v0, 4322
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.timerfd_settime
.global timerfd_settime
timerfd_settime:
    li      $v0, 4323
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.signalfd4
.global signalfd4
signalfd4:
    li      $v0, 4324
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.eventfd2
.global eventfd2
eventfd2:
    li      $v0, 4325
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.epoll_create1
.global epoll_create1
epoll_create1:
    li      $v0, 4326
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.dup3
.global dup3
dup3:
    li      $v0, 4327
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.pipe2
.global pipe2
pipe2:
    li      $v0, 4328
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.inotify_init1
.global inotify_init1
inotify_init1:
    li      $v0, 4329
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.preadv
.global preadv
preadv:
    li      $v0, 4330
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.pwritev
.global pwritev
pwritev:
    li      $v0, 4331
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.rt_tgsigqueueinfo
.global rt_tgsigqueueinfo
rt_tgsigqueueinfo:
    li      $v0, 4332
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.perf_event_open
.global perf_event_open
perf_event_open:
    li      $v0, 4333
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.accept4
.global accept4
accept4:
    li      $v0, 4334
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.recvmmsg
.global recvmmsg
recvmmsg:
    li      $v0, 4335
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.fanotify_init
.global fanotify_init
fanotify_init:
    li      $v0, 4336
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.fanotify_mark
.global fanotify_mark
fanotify_mark:
    li      $v0, 4337
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.prlimit64
.global prlimit64
prlimit64:
    li      $v0, 4338
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.name_to_handle_at
.global name_to_handle_at
name_to_handle_at:
    li      $v0, 4339
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.open_by_handle_at
.global open_by_handle_at
open_by_handle_at:
    li      $v0, 4340
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.clock_adjtime
.global clock_adjtime
clock_adjtime:
    li      $v0, 4341
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.syncfs
.global syncfs
syncfs:
    li      $v0, 4342
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.sendmmsg
.global sendmmsg
sendmmsg:
    li      $v0, 4343
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.setns
.global setns
setns:
    li      $v0, 4344
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.process_vm_readv
.global process_vm_readv
process_vm_readv:
    li      $v0, 4345
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.process_vm_writev
.global process_vm_writev
process_vm_writev:
    li      $v0, 4346
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.kcmp
.global kcmp
kcmp:
    li      $v0, 4347
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.finit_module
.global finit_module
finit_module:
    li      $v0, 4348
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.sched_setattr
.global sched_setattr
sched_setattr:
    li      $v0, 4349
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.sched_getattr
.global sched_getattr
sched_getattr:
    li      $v0, 4350
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.renameat2
.global renameat2
renameat2:
    li      $v0, 4351
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.seccomp
.global seccomp
seccomp:
    li      $v0, 4352
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.getrandom
.global getrandom
getrandom:
    li      $v0, 4353
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.memfd_create
.global memfd_create
memfd_create:
    li      $v0, 4354
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.bpf
.global bpf
bpf:
    li      $v0, 4355
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.execveat
.global execveat
execveat:
    li      $v0, 4356
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.userfaultfd
.global userfaultfd
userfaultfd:
    li      $v0, 4357
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.membarrier
.global membarrier
membarrier:
    li      $v0, 4358
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.mlock2
.global mlock2
mlock2:
    li      $v0, 4359
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.copy_file_range
.global copy_file_range
copy_file_range:
    li      $v0, 4360
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.preadv2
.global preadv2
preadv2:
    li      $v0, 4361
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.pwritev2
.global pwritev2
pwritev2:
    li      $v0, 4362
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.pkey_mprotect
.global pkey_mprotect
pkey_mprotect:
    li      $v0, 4363
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.pkey_alloc
.global pkey_alloc
pkey_alloc:
    li      $v0, 4364
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.pkey_free
.global pkey_free
pkey_free:
    li      $v0, 4365
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.statx
.global statx
statx:
    li      $v0, 4366
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.rseq
.global rseq
rseq:
    li      $v0, 4367
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
.section .text.io_pgetevents
.global io_pgetevents
io_pgetevents:
    li      $v0, 4368
    syscall
    bne     $a3, $zero, syscall_set_errno
    jr      $ra
