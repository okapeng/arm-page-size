cmd_util/dwarf-regs.o := gcc -Wp,-MD,util/.dwarf-regs.o.d -Wp,-MT,util/dwarf-regs.o -Wbad-function-cast -Wdeclaration-after-statement -Wformat-security -Wformat-y2k -Winit-self -Wmissing-declarations -Wmissing-prototypes -Wnested-externs -Wno-system-headers -Wold-style-definition -Wpacked -Wredundant-decls -Wstrict-prototypes -Wswitch-default -Wswitch-enum -Wundef -Wwrite-strings -Wformat -Wstrict-aliasing=3 -Wshadow -Iarch/arm64/include/generated -DHAVE_SYSCALL_TABLE_SUPPORT -DHAVE_PERF_REGS_SUPPORT -DHAVE_ARCH_REGS_QUERY_REGISTER_OFFSET -Werror -O6 -fno-omit-frame-pointer -ggdb3 -funwind-tables -Wall -Wextra -std=gnu99 -fstack-protector-all -D_FORTIFY_SOURCE=2 -I/users/ivy_wang/tools/perf/lib/include -I/users/ivy_wang/tools/perf/util/include -I/users/ivy_wang/tools/perf/arch/arm64/include -I/users/ivy_wang/tools/include/ -I/users/ivy_wang/tools/arch/arm64/include/uapi -I/users/ivy_wang/tools/include/uapi -I/users/ivy_wang/tools/arch/arm64/include/ -I/users/ivy_wang/tools/arch/arm64/ -I/users/ivy_wang/tools/perf/util -I/users/ivy_wang/tools/perf -I/users/ivy_wang/tools/lib/ -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DHAVE_SYNC_COMPARE_AND_SWAP_SUPPORT -DHAVE_PTHREAD_ATTR_SETAFFINITY_NP -DHAVE_PTHREAD_BARRIER -DHAVE_EVENTFD -DHAVE_GET_CURRENT_DIR_NAME -DHAVE_DWARF_GETLOCATIONS_SUPPORT -DHAVE_GLIBC_SUPPORT -DHAVE_AIO_SUPPORT -DHAVE_SCHED_GETCPU_SUPPORT -DHAVE_SETNS_SUPPORT -DHAVE_LIBELF_SUPPORT -DHAVE_LIBELF_MMAP_SUPPORT -DHAVE_ELF_GETPHDRNUM_SUPPORT -DHAVE_GELF_GETNOTE_SUPPORT -DHAVE_ELF_GETSHDRSTRNDX_SUPPORT -DHAVE_DWARF_SUPPORT -DHAVE_LIBBPF_SUPPORT -DHAVE_BPF_PROLOGUE -DHAVE_SDT_EVENT -DHAVE_JITDUMP -DHAVE_LIBUNWIND_AARCH64_SUPPORT -DHAVE_DWARF_UNWIND_SUPPORT -DHAVE_LIBUNWIND_SUPPORT -DHAVE_LIBCRYPTO_SUPPORT -DHAVE_SLANG_SUPPORT -DHAVE_GTK2_SUPPORT -DHAVE_LIBPERL_SUPPORT -DHAVE_TIMERFD_SUPPORT -DHAVE_LIBPYTHON_SUPPORT -DHAVE_CPLUS_DEMANGLE_SUPPORT -DHAVE_LIBBFD_SUPPORT -DHAVE_ZLIB_SUPPORT -DHAVE_LZMA_SUPPORT -DHAVE_ZSTD_SUPPORT -DHAVE_LIBCAP_SUPPORT -DHAVE_BACKTRACE_SUPPORT -DHAVE_LIBNUMA_SUPPORT -DDISASM_FOUR_ARGS_SIGNATURE -DHAVE_LIBBABELTRACE_SUPPORT -DHAVE_AUXTRACE_SUPPORT -D"BUILD_STR(s)=$(pound)s" -c -o util/dwarf-regs.o util/dwarf-regs.c

source_util/dwarf-regs.o := util/dwarf-regs.c

deps_util/dwarf-regs.o := \
  /usr/include/stdc-predef.h \
  /users/ivy_wang/tools/perf/util/debug.h \
  /usr/lib/gcc/aarch64-linux-gnu/7/include/stdarg.h \
  /usr/lib/gcc/aarch64-linux-gnu/7/include/stdbool.h \
  /users/ivy_wang/tools/include/linux/compiler.h \
  /users/ivy_wang/tools/include/linux/compiler-gcc.h \
  /users/ivy_wang/tools/include/linux/types.h \
  /usr/lib/gcc/aarch64-linux-gnu/7/include/stddef.h \
  /usr/lib/gcc/aarch64-linux-gnu/7/include/stdint.h \
  /usr/include/stdint.h \
  /usr/include/aarch64-linux-gnu/bits/libc-header-start.h \
  /usr/include/features.h \
  /usr/include/aarch64-linux-gnu/sys/cdefs.h \
  /usr/include/aarch64-linux-gnu/bits/wordsize.h \
  /usr/include/aarch64-linux-gnu/bits/long-double.h \
  /usr/include/aarch64-linux-gnu/gnu/stubs.h \
  /usr/include/aarch64-linux-gnu/gnu/stubs-lp64.h \
  /usr/include/aarch64-linux-gnu/bits/types.h \
  /usr/include/aarch64-linux-gnu/bits/typesizes.h \
  /usr/include/aarch64-linux-gnu/bits/wchar.h \
  /usr/include/aarch64-linux-gnu/bits/stdint-intn.h \
  /usr/include/aarch64-linux-gnu/bits/stdint-uintn.h \
  /usr/include/aarch64-linux-gnu/asm/types.h \
  /usr/include/asm-generic/types.h \
  /usr/include/asm-generic/int-ll64.h \
  /users/ivy_wang/tools/arch/arm64/include/uapi/asm/bitsperlong.h \
  /users/ivy_wang/tools/include/asm-generic/bitsperlong.h \
  /users/ivy_wang/tools/include/uapi/asm-generic/bitsperlong.h \
  /usr/include/aarch64-linux-gnu/asm/posix_types.h \
  /usr/include/asm-generic/posix_types.h \
  /users/ivy_wang/tools/perf/util/include/dwarf-regs.h \
  /usr/include/elf.h \
  /usr/include/aarch64-linux-gnu/bits/auxv.h \
  /users/ivy_wang/tools/include/linux/kernel.h \
  /usr/include/assert.h \
  /usr/include/endian.h \
  /usr/include/aarch64-linux-gnu/bits/endian.h \
  /usr/include/aarch64-linux-gnu/bits/byteswap.h \
  /usr/include/aarch64-linux-gnu/bits/byteswap-16.h \
  /usr/include/aarch64-linux-gnu/bits/uintn-identity.h \
  /usr/include/byteswap.h \
  util/../arch/x86/include/dwarf-regs-table.h \
  util/../arch/arm/include/dwarf-regs-table.h \
  util/../arch/arm64/include/dwarf-regs-table.h \
  util/../arch/sh/include/dwarf-regs-table.h \
  util/../arch/powerpc/include/dwarf-regs-table.h \
  util/../arch/s390/include/dwarf-regs-table.h \
  util/../arch/sparc/include/dwarf-regs-table.h \
  util/../arch/xtensa/include/dwarf-regs-table.h \

util/dwarf-regs.o: $(deps_util/dwarf-regs.o)

$(deps_util/dwarf-regs.o):
