# cannot find fixdep (staticobjs//fixdep)
# using basic dep data

staticobjs/libbpf_errno.o: libbpf_errno.c /usr/include/stdc-predef.h \
 /usr/include/stdio.h \
 /usr/include/aarch64-linux-gnu/bits/libc-header-start.h \
 /usr/include/features.h /usr/include/aarch64-linux-gnu/sys/cdefs.h \
 /usr/include/aarch64-linux-gnu/bits/wordsize.h \
 /usr/include/aarch64-linux-gnu/bits/long-double.h \
 /usr/include/aarch64-linux-gnu/gnu/stubs.h \
 /usr/include/aarch64-linux-gnu/gnu/stubs-lp64.h \
 /usr/lib/gcc/aarch64-linux-gnu/7/include/stddef.h \
 /usr/include/aarch64-linux-gnu/bits/types.h \
 /usr/include/aarch64-linux-gnu/bits/typesizes.h \
 /usr/include/aarch64-linux-gnu/bits/types/__FILE.h \
 /usr/include/aarch64-linux-gnu/bits/types/FILE.h \
 /usr/include/aarch64-linux-gnu/bits/libio.h \
 /usr/include/aarch64-linux-gnu/bits/_G_config.h \
 /usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h \
 /usr/lib/gcc/aarch64-linux-gnu/7/include/stdarg.h \
 /usr/include/aarch64-linux-gnu/bits/stdio_lim.h \
 /usr/include/aarch64-linux-gnu/bits/sys_errlist.h /usr/include/string.h \
 /usr/include/aarch64-linux-gnu/bits/types/locale_t.h \
 /usr/include/aarch64-linux-gnu/bits/types/__locale_t.h \
 /usr/include/strings.h libbpf.h \
 /usr/lib/gcc/aarch64-linux-gnu/7/include/stdint.h /usr/include/stdint.h \
 /usr/include/aarch64-linux-gnu/bits/wchar.h \
 /usr/include/aarch64-linux-gnu/bits/stdint-intn.h \
 /usr/include/aarch64-linux-gnu/bits/stdint-uintn.h \
 /usr/lib/gcc/aarch64-linux-gnu/7/include/stdbool.h \
 /usr/include/aarch64-linux-gnu/sys/types.h \
 /usr/include/aarch64-linux-gnu/bits/types/clock_t.h \
 /usr/include/aarch64-linux-gnu/bits/types/clockid_t.h \
 /usr/include/aarch64-linux-gnu/bits/types/time_t.h \
 /usr/include/aarch64-linux-gnu/bits/types/timer_t.h \
 /usr/include/endian.h /usr/include/aarch64-linux-gnu/bits/endian.h \
 /usr/include/aarch64-linux-gnu/bits/byteswap.h \
 /usr/include/aarch64-linux-gnu/bits/byteswap-16.h \
 /usr/include/aarch64-linux-gnu/bits/uintn-identity.h \
 /usr/include/aarch64-linux-gnu/sys/select.h \
 /usr/include/aarch64-linux-gnu/bits/select.h \
 /usr/include/aarch64-linux-gnu/bits/types/sigset_t.h \
 /usr/include/aarch64-linux-gnu/bits/types/__sigset_t.h \
 /usr/include/aarch64-linux-gnu/bits/types/struct_timeval.h \
 /usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h \
 /usr/include/aarch64-linux-gnu/sys/sysmacros.h \
 /usr/include/aarch64-linux-gnu/bits/sysmacros.h \
 /usr/include/aarch64-linux-gnu/bits/pthreadtypes.h \
 /usr/include/aarch64-linux-gnu/bits/thread-shared-types.h \
 /usr/include/aarch64-linux-gnu/bits/pthreadtypes-arch.h \
 /users/ivy_wang/tools/include/uapi/linux/bpf.h \
 /users/ivy_wang/tools/include/linux/types.h \
 /usr/include/aarch64-linux-gnu/asm/types.h \
 /usr/include/asm-generic/types.h /usr/include/asm-generic/int-ll64.h \
 /users/ivy_wang/tools/include/uapi/asm/bitsperlong.h \
 /users/ivy_wang/tools/arch/arm64/include/uapi/asm/bitsperlong.h \
 /users/ivy_wang/tools/include/asm-generic/bitsperlong.h \
 /users/ivy_wang/tools/include/uapi/asm-generic/bitsperlong.h \
 /usr/include/aarch64-linux-gnu/asm/posix_types.h \
 /usr/include/asm-generic/posix_types.h \
 /users/ivy_wang/tools/include/uapi/linux/bpf_common.h

cmd_staticobjs/libbpf_errno.o := gcc -Wp,-MD,staticobjs/.libbpf_errno.o.d -Wp,-MT,staticobjs/libbpf_errno.o -g -Wall -DHAVE_LIBELF_MMAP_SUPPORT -Wbad-function-cast -Wdeclaration-after-statement -Wformat-security -Wformat-y2k -Winit-self -Wmissing-declarations -Wmissing-prototypes -Wnested-externs -Wno-system-headers -Wold-style-definition -Wpacked -Wredundant-decls -Wstrict-prototypes -Wswitch-default -Wswitch-enum -Wundef -Wwrite-strings -Wformat -Wstrict-aliasing=3 -Wshadow -Werror -Wall -fPIC -I. -I/users/ivy_wang/tools/include -I/users/ivy_wang/tools/include/uapi -fvisibility=hidden -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D"BUILD_STR(s)=$(pound)s" -c -o staticobjs/libbpf_errno.o libbpf_errno.c
