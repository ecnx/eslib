# PROG Makefile
INCLUDES=-I include
INDENT_FLAGS=-br -ce -i4 -bl -bli0 -bls -c4 -cdw -ci4 -cs -nbfda -l100 -lp -prs -nlp -nut -nbfde -npsl -nss

ESLIBS_OBJ = \
	release/net.o \
	release/udivmodti4.o \
	release/timeutil.o \
	release/file.o \
	release/format.o \
	release/string.o \
	release/folder.o \
	release/strerror.o \
	release/lmem.o \
	release/ctype.o \
	release/eslib.o \
	release/memset.o \
	release/udivdi3.o \
	release/udivti3.o

all: x86_64
allarch: x86_64 x86_32 mipsel mipsel_Os mipseb mipseb_Os arm arm_Os
	@rm release/*.o

mips: mipseb mipseb_Os

internal_udiv64: udiv64 internal
internal_udiv32: udiv32 internal
internal_eabi32: eabi32 internal

internal: prepare
	@echo "  AS    arch/$(ARCH)/syscall.S"
	@$(CC) $(CFLAGS) arch/$(ARCH)/syscall.S -o release/syscall.o
	@echo "  AS    arch/$(ARCH)/start.S"
	@$(CC) $(CFLAGS) arch/$(ARCH)/start.S -o release/start.o
	@echo "  CC    src/pthread.c"
	@$(CC) $(CFLAGS) $(INCLUDES) src/pthread.c -o release/pthread.o
	@echo "  CC    src/string.c"
	@$(CC) $(CFLAGS) $(INCLUDES) src/string.c -o release/string.o
	@echo "  CC    src/format.c"
	@$(CC) $(CFLAGS) $(INCLUDES) src/format.c -o release/format.o
	@echo "  CC    src/net.c"
	@$(CC) $(CFLAGS) $(INCLUDES) src/net.c -o release/net.o
	@echo "  CC    src/timeutil.c"
	@$(CC) $(CFLAGS) $(INCLUDES) src/timeutil.c -o release/timeutil.o
	@echo "  CC    src/strerror.c"
	@$(CC) $(CFLAGS) $(INCLUDES) src/strerror.c -o release/strerror.o
	@echo "  CC    src/ctype.c"
	@$(CC) $(CFLAGS) $(INCLUDES) src/ctype.c -o release/ctype.o
	@echo "  CC    src/file.c"
	@$(CC) $(CFLAGS) $(INCLUDES) src/file.c -o release/file.o
	@echo "  CC    src/folder.c"
	@$(CC) $(CFLAGS) $(INCLUDES) src/folder.c -o release/folder.o
	@echo "  CC    src/eslib.c"
	@$(CC) $(CFLAGS) $(INCLUDES) src/eslib.c -o release/eslib.o
	@echo "  CC    src/lmem.c"
	@$(CC) $(CFLAGS) $(INCLUDES) src/lmem.c -o release/lmem.o
	@echo "  AR    release/libes.a"
	@$(AR) crs release/libes-$(ARCH)$(POSTFIX).a release/*.o

internal_test:
	@echo "  CC    src/test.c"
	@$(CC) $(CFLAGS) $(INCLUDES) src/test.c -o release/test.o
	@echo "  LD    release/test"
	@$(LD) $(LDFLAGS) release/*.o -o release/test

udiv64: prepare
	@echo "  CC    src/udivti3.c"
	@$(CC) $(CFLAGS) $(INCLUDES) src/udivti3.c -o release/udivti3.o
	@echo "  CC    src/udivmodti4.c"
	@$(CC) $(CFLAGS) $(INCLUDES) src/udivmodti4.c -o release/udivmodti4.o

udiv32: prepare
	@echo "  CC    src/udivdi3.c"
	@$(CC) $(CFLAGS) $(INCLUDES) src/udivdi3.c -o release/udivdi3.o

eabi32: prepare
	@echo "  CC    arch/arm/eabi32.c"
	@$(CC) $(CFLAGS) $(INCLUDES) arch/arm/eabi32.c -o release/eabi32.o
	@echo "  AS    arch/arm/eabi32asm.S"
	@$(CC) $(CFLAGS) $(INCLUDES) arch/arm/eabi32asm.S -o release/eabi32asm.o

prepare:
	@mkdir -p release

test:
	@make internal_test \
		CC=gcc \
		LD=gcc \
		ARCH=x86_64 \
		CFLAGS='-c -Wall -Wextra -O3 -ffunction-sections -fdata-sections -DARCH=x86_64 -DEL -D_YUGA_LITTLE_ENDIAN=1 -DCRT_HAS_128BIT' \
		LDFLAGS='-s -Wl,--gc-sections -Wl,--relax -nostdlib -L release'

test_mipseb:
	@make internal_test \
		CC=mips-unknown-linux-gnu-gcc \
		LD=mips-unknown-linux-gnu-gcc \
		AR=mips-unknown-linux-gnu-ar \
		ARCH=mips \
		CFLAGS='-c $(MIPSEB_CFLAGS) -O3 -EB' \
		LDFLAGS='$(MIPSEB_LDFLAGS) -EB'

test_arm:
	@make internal_test \
		CC=arm-linux-gnueabi-gcc \
		LD=arm-linux-gnueabi-gcc \
		AR=arm-linux-gnueabi-gcc \
		ARCH=arm \
		CFLAGS='-marm -c -Wall -Wextra -Os -ffunction-sections -fdata-sections -DEB -DARCH=ARM' \
		LDFLAGS='-s -Wl,--gc-sections -Wl,--relax -nostdlib'

x86_64:
	@make internal_udiv64 \
		CC=gcc \
		AR=ar \
		ARCH=x86_64 \
		CFLAGS='-c -nostdinc -Wall -Wextra -O3 -ffunction-sections -fdata-sections -DARCH=x86_64 -DEL -D_YUGA_LITTLE_ENDIAN=1 -DCRT_HAS_128BIT' \

x86_32:
	@make internal_udiv32 \
		CC=gcc \
		AR=ar \
		ARCH=x86_32 \
		CFLAGS='-c -nostdinc -Wall -Wextra -O3 -ffunction-sections -fdata-sections -DARCH=x86_32 -DEL -m32' \

mipsel:
	@make internal_udiv32 \
		CC=mips-unknown-linux-gnu-gcc \
		AR=mips-unknown-linux-gnu-ar \
		ARCH=mips \
		POSTFIX=el \
		CFLAGS='-c $(MIPSEL_CFLAGS) -O3 -EL' \

mipsel_Os:
	@make internal_udiv32 \
		CC=mips-unknown-linux-gnu-gcc \
		AR=mips-unknown-linux-gnu-ar \
		ARCH=mips \
		POSTFIX=el-Os \
		CFLAGS='-c $(MIPSEL_CFLAGS) -O3 -EL' \

mipseb:
	@make internal_udiv32 \
		CC=mips-unknown-linux-gnu-gcc \
		AR=mips-unknown-linux-gnu-ar \
		ARCH=mips \
		POSTFIX=eb \
		CFLAGS='-c $(MIPSEB_CFLAGS) -O3 -EB' \

mipseb_Os:
	@make internal_udiv32 \
		CC=mips-unknown-linux-gnu-gcc \
		AR=mips-unknown-linux-gnu-ar \
		ARCH=mips \
		POSTFIX=eb-Os \
		CFLAGS='-c $(MIPSEB_CFLAGS) -Os -EB' \

arm:
	@make internal_eabi32 \
		CC=arm-linux-gnueabi-gcc \
		AR=arm-linux-gnueabi-ar \
		ARCH=arm \
		POSTFIX= \
		CFLAGS='-c $(ARM_CFLAGS) -O3' \

arm_Os:
	@make internal_eabi32 \
		CC=arm-linux-gnueabi-gcc \
		AR=arm-linux-gnueabi-ar \
		ARCH=arm \
		POSTFIX=-Os \
		CFLAGS='-c $(ARM_CFLAGS) -Os' \

indent:
	@find . -name '*.h' -exec indent $(INDENT_FLAGS) {} \;
	@find . -name '*.c' -exec indent $(INDENT_FLAGS) {} \;
	@find . -name '*~' -delete

clean:
	@echo "  CLEAN ."
	@rm -rf release

analysis:
	@scan-build make
	@cppcheck --force */*.h
	@cppcheck --force */*.c
