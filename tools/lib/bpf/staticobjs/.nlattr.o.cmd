# cannot find fixdep (staticobjs//fixdep)
# using basic dep data

staticobjs/nlattr.o: nlattr.c /usr/include/stdc-predef.h \
 /usr/include/errno.h /usr/include/features.h \
 /usr/include/aarch64-linux-gnu/sys/cdefs.h \
 /usr/include/aarch64-linux-gnu/bits/wordsize.h \
 /usr/include/aarch64-linux-gnu/bits/long-double.h \
 /usr/include/aarch64-linux-gnu/gnu/stubs.h \
 /usr/include/aarch64-linux-gnu/gnu/stubs-lp64.h \
 /usr/include/aarch64-linux-gnu/bits/errno.h /usr/include/linux/errno.h \
 /users/ivy_wang/tools/include/uapi/asm/errno.h \
 /users/ivy_wang/tools/include/uapi/asm-generic/errno.h \
 /users/ivy_wang/tools/include/uapi/asm-generic/errno-base.h nlattr.h \
 /usr/lib/gcc/aarch64-linux-gnu/7/include/stdint.h /usr/include/stdint.h \
 /usr/include/aarch64-linux-gnu/bits/libc-header-start.h \
 /usr/include/aarch64-linux-gnu/bits/types.h \
 /usr/include/aarch64-linux-gnu/bits/typesizes.h \
 /usr/include/aarch64-linux-gnu/bits/wchar.h \
 /usr/include/aarch64-linux-gnu/bits/stdint-intn.h \
 /usr/include/aarch64-linux-gnu/bits/stdint-uintn.h \
 /users/ivy_wang/tools/include/uapi/linux/netlink.h \
 /users/ivy_wang/tools/include/linux/kernel.h \
 /usr/lib/gcc/aarch64-linux-gnu/7/include/stdarg.h \
 /usr/lib/gcc/aarch64-linux-gnu/7/include/stddef.h /usr/include/assert.h \
 /users/ivy_wang/tools/include/linux/compiler.h \
 /users/ivy_wang/tools/include/linux/compiler-gcc.h \
 /users/ivy_wang/tools/include/linux/types.h \
 /usr/lib/gcc/aarch64-linux-gnu/7/include/stdbool.h \
 /usr/include/aarch64-linux-gnu/asm/types.h \
 /usr/include/asm-generic/types.h /usr/include/asm-generic/int-ll64.h \
 /users/ivy_wang/tools/include/uapi/asm/bitsperlong.h \
 /users/ivy_wang/tools/arch/arm64/include/uapi/asm/bitsperlong.h \
 /users/ivy_wang/tools/include/asm-generic/bitsperlong.h \
 /users/ivy_wang/tools/include/uapi/asm-generic/bitsperlong.h \
 /usr/include/aarch64-linux-gnu/asm/posix_types.h \
 /usr/include/asm-generic/posix_types.h /usr/include/endian.h \
 /usr/include/aarch64-linux-gnu/bits/endian.h \
 /usr/include/aarch64-linux-gnu/bits/byteswap.h \
 /usr/include/aarch64-linux-gnu/bits/byteswap-16.h \
 /usr/include/aarch64-linux-gnu/bits/uintn-identity.h \
 /usr/include/byteswap.h /usr/include/linux/socket.h \
 /usr/include/linux/rtnetlink.h \
 /users/ivy_wang/tools/include/uapi/linux/if_link.h \
 /usr/include/linux/if_addr.h /usr/include/linux/neighbour.h \
 /usr/include/string.h \
 /usr/include/aarch64-linux-gnu/bits/types/locale_t.h \
 /usr/include/aarch64-linux-gnu/bits/types/__locale_t.h \
 /usr/include/strings.h /usr/include/stdio.h \
 /usr/include/aarch64-linux-gnu/bits/types/__FILE.h \
 /usr/include/aarch64-linux-gnu/bits/types/FILE.h \
 /usr/include/aarch64-linux-gnu/bits/libio.h \
 /usr/include/aarch64-linux-gnu/bits/_G_config.h \
 /usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h \
 /usr/include/aarch64-linux-gnu/bits/stdio_lim.h \
 /usr/include/aarch64-linux-gnu/bits/sys_errlist.h

cmd_staticobjs/nlattr.o := gcc -Wp,-MD,staticobjs/.nlattr.o.d -Wp,-MT,staticobjs/nlattr.o -g -Wall -DHAVE_LIBELF_MMAP_SUPPORT -Wbad-function-cast -Wdeclaration-after-statement -Wformat-security -Wformat-y2k -Winit-self -Wmissing-declarations -Wmissing-prototypes -Wnested-externs -Wno-system-headers -Wold-style-definition -Wpacked -Wredundant-decls -Wstrict-prototypes -Wswitch-default -Wswitch-enum -Wundef -Wwrite-strings -Wformat -Wstrict-aliasing=3 -Wshadow -Werror -Wall -fPIC -I. -I/users/ivy_wang/tools/include -I/users/ivy_wang/tools/include/uapi -fvisibility=hidden -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D"BUILD_STR(s)=$(pound)s" -c -o staticobjs/nlattr.o nlattr.c
