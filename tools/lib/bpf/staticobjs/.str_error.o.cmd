# cannot find fixdep (staticobjs//fixdep)
# using basic dep data

staticobjs/str_error.o: str_error.c /usr/include/stdc-predef.h \
 /usr/include/string.h \
 /usr/include/aarch64-linux-gnu/bits/libc-header-start.h \
 /usr/include/features.h /usr/include/aarch64-linux-gnu/sys/cdefs.h \
 /usr/include/aarch64-linux-gnu/bits/wordsize.h \
 /usr/include/aarch64-linux-gnu/bits/long-double.h \
 /usr/include/aarch64-linux-gnu/gnu/stubs.h \
 /usr/include/aarch64-linux-gnu/gnu/stubs-lp64.h \
 /usr/lib/gcc/aarch64-linux-gnu/7/include/stddef.h \
 /usr/include/aarch64-linux-gnu/bits/types/locale_t.h \
 /usr/include/aarch64-linux-gnu/bits/types/__locale_t.h \
 /usr/include/strings.h /usr/include/stdio.h \
 /usr/include/aarch64-linux-gnu/bits/types.h \
 /usr/include/aarch64-linux-gnu/bits/typesizes.h \
 /usr/include/aarch64-linux-gnu/bits/types/__FILE.h \
 /usr/include/aarch64-linux-gnu/bits/types/FILE.h \
 /usr/include/aarch64-linux-gnu/bits/libio.h \
 /usr/include/aarch64-linux-gnu/bits/_G_config.h \
 /usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h \
 /usr/lib/gcc/aarch64-linux-gnu/7/include/stdarg.h \
 /usr/include/aarch64-linux-gnu/bits/stdio_lim.h \
 /usr/include/aarch64-linux-gnu/bits/sys_errlist.h str_error.h

cmd_staticobjs/str_error.o := gcc -Wp,-MD,staticobjs/.str_error.o.d -Wp,-MT,staticobjs/str_error.o -g -Wall -DHAVE_LIBELF_MMAP_SUPPORT -Wbad-function-cast -Wdeclaration-after-statement -Wformat-security -Wformat-y2k -Winit-self -Wmissing-declarations -Wmissing-prototypes -Wnested-externs -Wno-system-headers -Wold-style-definition -Wpacked -Wredundant-decls -Wstrict-prototypes -Wswitch-default -Wswitch-enum -Wundef -Wwrite-strings -Wformat -Wstrict-aliasing=3 -Wshadow -Werror -Wall -fPIC -I. -I/users/ivy_wang/tools/include -I/users/ivy_wang/tools/include/uapi -fvisibility=hidden -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D"BUILD_STR(s)=$(pound)s" -c -o staticobjs/str_error.o str_error.c
