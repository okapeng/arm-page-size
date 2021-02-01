cmd_str_error_r.o := gcc -Wp,-MD,./.str_error_r.o.d -Wp,-MT,str_error_r.o -Wbad-function-cast -Wdeclaration-after-statement -Wformat-security -Wformat-y2k -Winit-self -Wmissing-declarations -Wmissing-prototypes -Wnested-externs -Wno-system-headers -Wold-style-definition -Wpacked -Wredundant-decls -Wstrict-prototypes -Wswitch-default -Wswitch-enum -Wundef -Wwrite-strings -Wformat -Wstrict-aliasing=3 -Wshadow -ggdb3 -Wall -Wextra -std=gnu99 -U_FORTIFY_SOURCE -fPIC -Werror -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -I/users/ivy_wang/tools/lib/api -I/users/ivy_wang/tools/include -D"BUILD_STR(s)=$(pound)s" -c -o str_error_r.o ../str_error_r.c

source_str_error_r.o := ../str_error_r.c

deps_str_error_r.o := \
  /usr/include/stdc-predef.h \
  /usr/include/string.h \
  /usr/include/aarch64-linux-gnu/bits/libc-header-start.h \
  /usr/include/features.h \
  /usr/include/aarch64-linux-gnu/sys/cdefs.h \
  /usr/include/aarch64-linux-gnu/bits/wordsize.h \
  /usr/include/aarch64-linux-gnu/bits/long-double.h \
  /usr/include/aarch64-linux-gnu/gnu/stubs.h \
  /usr/include/aarch64-linux-gnu/gnu/stubs-lp64.h \
  /usr/lib/gcc/aarch64-linux-gnu/7/include/stddef.h \
  /usr/include/aarch64-linux-gnu/bits/types/locale_t.h \
  /usr/include/aarch64-linux-gnu/bits/types/__locale_t.h \
  /usr/include/strings.h \
  /usr/include/stdio.h \
  /usr/include/aarch64-linux-gnu/bits/types.h \
  /usr/include/aarch64-linux-gnu/bits/typesizes.h \
  /usr/include/aarch64-linux-gnu/bits/types/__FILE.h \
  /usr/include/aarch64-linux-gnu/bits/types/FILE.h \
  /usr/include/aarch64-linux-gnu/bits/libio.h \
  /usr/include/aarch64-linux-gnu/bits/_G_config.h \
  /usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h \
  /usr/lib/gcc/aarch64-linux-gnu/7/include/stdarg.h \
  /usr/include/aarch64-linux-gnu/bits/stdio_lim.h \
  /usr/include/aarch64-linux-gnu/bits/sys_errlist.h \
  /users/ivy_wang/tools/include/linux/string.h \
  /users/ivy_wang/tools/include/linux/types.h \
  /usr/lib/gcc/aarch64-linux-gnu/7/include/stdbool.h \
  /usr/lib/gcc/aarch64-linux-gnu/7/include/stdint.h \
  /usr/include/stdint.h \
  /usr/include/aarch64-linux-gnu/bits/wchar.h \
  /usr/include/aarch64-linux-gnu/bits/stdint-intn.h \
  /usr/include/aarch64-linux-gnu/bits/stdint-uintn.h \
  /usr/include/aarch64-linux-gnu/asm/types.h \
  /usr/include/asm-generic/types.h \
  /usr/include/asm-generic/int-ll64.h \
  /usr/include/aarch64-linux-gnu/asm/bitsperlong.h \
  /users/ivy_wang/tools/include/asm-generic/bitsperlong.h \
  /users/ivy_wang/tools/include/uapi/asm-generic/bitsperlong.h \
  /usr/include/aarch64-linux-gnu/asm/posix_types.h \
  /usr/include/asm-generic/posix_types.h \

str_error_r.o: $(deps_str_error_r.o)

$(deps_str_error_r.o):
