cmd_util/hweight.o := gcc -Wp,-MD,util/.hweight.o.d -Wp,-MT,util/hweight.o -Wbad-function-cast -Wdeclaration-after-statement -Wformat-security -Wformat-y2k -Winit-self -Wmissing-declarations -Wmissing-prototypes -Wnested-externs -Wno-system-headers -Wold-style-definition -Wpacked -Wredundant-decls -Wstrict-prototypes -Wswitch-default -Wswitch-enum -Wundef -Wwrite-strings -Wformat -Wstrict-aliasing=3 -Wshadow -Iarch/arm64/include/generated -DHAVE_SYSCALL_TABLE_SUPPORT -DHAVE_PERF_REGS_SUPPORT -DHAVE_ARCH_REGS_QUERY_REGISTER_OFFSET -Werror -O6 -fno-omit-frame-pointer -ggdb3 -funwind-tables -Wall -Wextra -std=gnu99 -fstack-protector-all -D_FORTIFY_SOURCE=2 -I/users/ivy_wang/tools/perf/lib/include -I/users/ivy_wang/tools/perf/util/include -I/users/ivy_wang/tools/perf/arch/arm64/include -I/users/ivy_wang/tools/include/ -I/users/ivy_wang/tools/arch/arm64/include/uapi -I/users/ivy_wang/tools/include/uapi -I/users/ivy_wang/tools/arch/arm64/include/ -I/users/ivy_wang/tools/arch/arm64/ -I/users/ivy_wang/tools/perf/util -I/users/ivy_wang/tools/perf -I/users/ivy_wang/tools/lib/ -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DHAVE_SYNC_COMPARE_AND_SWAP_SUPPORT -DHAVE_PTHREAD_ATTR_SETAFFINITY_NP -DHAVE_PTHREAD_BARRIER -DHAVE_EVENTFD -DHAVE_GET_CURRENT_DIR_NAME -DHAVE_DWARF_GETLOCATIONS_SUPPORT -DHAVE_GLIBC_SUPPORT -DHAVE_AIO_SUPPORT -DHAVE_SCHED_GETCPU_SUPPORT -DHAVE_SETNS_SUPPORT -DHAVE_LIBELF_SUPPORT -DHAVE_LIBELF_MMAP_SUPPORT -DHAVE_ELF_GETPHDRNUM_SUPPORT -DHAVE_GELF_GETNOTE_SUPPORT -DHAVE_ELF_GETSHDRSTRNDX_SUPPORT -DHAVE_DWARF_SUPPORT -DHAVE_LIBBPF_SUPPORT -DHAVE_BPF_PROLOGUE -DHAVE_SDT_EVENT -DHAVE_JITDUMP -DHAVE_LIBUNWIND_AARCH64_SUPPORT -DHAVE_DWARF_UNWIND_SUPPORT -DHAVE_LIBUNWIND_SUPPORT -DHAVE_LIBCRYPTO_SUPPORT -DHAVE_SLANG_SUPPORT -DHAVE_GTK2_SUPPORT -DHAVE_LIBPERL_SUPPORT -DHAVE_TIMERFD_SUPPORT -DHAVE_LIBPYTHON_SUPPORT -DHAVE_CPLUS_DEMANGLE_SUPPORT -DHAVE_LIBBFD_SUPPORT -DHAVE_ZLIB_SUPPORT -DHAVE_LZMA_SUPPORT -DHAVE_ZSTD_SUPPORT -DHAVE_LIBCAP_SUPPORT -DHAVE_BACKTRACE_SUPPORT -DHAVE_LIBNUMA_SUPPORT -DDISASM_FOUR_ARGS_SIGNATURE -DHAVE_LIBBABELTRACE_SUPPORT -DHAVE_AUXTRACE_SUPPORT -D"BUILD_STR(s)=$(pound)s" -Wno-unused-parameter -DETC_PERFCONFIG="BUILD_STR(etc/perfconfig)" -c -o util/hweight.o ../lib/hweight.c

source_util/hweight.o := ../lib/hweight.c

deps_util/hweight.o := \
  /usr/include/stdc-predef.h \
  /users/ivy_wang/tools/include/linux/bitops.h \
  /usr/include/aarch64-linux-gnu/asm/types.h \
  /usr/include/asm-generic/types.h \
  /usr/include/asm-generic/int-ll64.h \
  /users/ivy_wang/tools/arch/arm64/include/uapi/asm/bitsperlong.h \
  /users/ivy_wang/tools/include/asm-generic/bitsperlong.h \
  /users/ivy_wang/tools/include/uapi/asm-generic/bitsperlong.h \
  /usr/lib/gcc/aarch64-linux-gnu/7/include-fixed/limits.h \
  /usr/lib/gcc/aarch64-linux-gnu/7/include-fixed/syslimits.h \
  /usr/include/limits.h \
  /usr/include/aarch64-linux-gnu/bits/libc-header-start.h \
  /usr/include/features.h \
  /usr/include/aarch64-linux-gnu/sys/cdefs.h \
  /usr/include/aarch64-linux-gnu/bits/wordsize.h \
  /usr/include/aarch64-linux-gnu/bits/long-double.h \
  /usr/include/aarch64-linux-gnu/gnu/stubs.h \
  /usr/include/aarch64-linux-gnu/gnu/stubs-lp64.h \
  /usr/include/aarch64-linux-gnu/bits/posix1_lim.h \
  /usr/include/aarch64-linux-gnu/bits/local_lim.h \
  /usr/include/linux/limits.h \
  /usr/include/aarch64-linux-gnu/bits/posix2_lim.h \
  /usr/include/aarch64-linux-gnu/bits/xopen_lim.h \
  /usr/include/aarch64-linux-gnu/bits/uio_lim.h \
  /users/ivy_wang/tools/include/linux/bits.h \
  /users/ivy_wang/tools/include/linux/const.h \
  /users/ivy_wang/tools/include/uapi/linux/const.h \
  /users/ivy_wang/tools/include/linux/compiler.h \
  /users/ivy_wang/tools/include/linux/compiler-gcc.h \
  /users/ivy_wang/tools/include/linux/types.h \
  /usr/lib/gcc/aarch64-linux-gnu/7/include/stdbool.h \
  /usr/lib/gcc/aarch64-linux-gnu/7/include/stddef.h \
  /usr/lib/gcc/aarch64-linux-gnu/7/include/stdint.h \
  /usr/include/stdint.h \
  /usr/include/aarch64-linux-gnu/bits/types.h \
  /usr/include/aarch64-linux-gnu/bits/typesizes.h \
  /usr/include/aarch64-linux-gnu/bits/wchar.h \
  /usr/include/aarch64-linux-gnu/bits/stdint-intn.h \
  /usr/include/aarch64-linux-gnu/bits/stdint-uintn.h \
  /usr/include/aarch64-linux-gnu/asm/posix_types.h \
  /usr/include/asm-generic/posix_types.h \
  /users/ivy_wang/tools/include/asm-generic/bitops.h \
  /users/ivy_wang/tools/include/asm-generic/bitops/__ffs.h \
  /users/ivy_wang/tools/include/asm-generic/bitops/__ffz.h \
  /users/ivy_wang/tools/include/asm-generic/bitops/fls.h \
  /users/ivy_wang/tools/include/asm-generic/bitops/__fls.h \
  /users/ivy_wang/tools/include/asm-generic/bitops/fls64.h \
  /users/ivy_wang/tools/include/asm-generic/bitops/find.h \
  /users/ivy_wang/tools/include/asm-generic/bitops/hweight.h \
  /users/ivy_wang/tools/include/asm-generic/bitops/arch_hweight.h \
  /users/ivy_wang/tools/include/asm-generic/bitops/const_hweight.h \
  /users/ivy_wang/tools/include/asm-generic/bitops/atomic.h \
  /users/ivy_wang/tools/include/asm-generic/bitops/non-atomic.h \

util/hweight.o: $(deps_util/hweight.o)

$(deps_util/hweight.o):
