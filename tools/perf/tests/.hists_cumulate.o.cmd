cmd_tests/hists_cumulate.o := gcc -Wp,-MD,tests/.hists_cumulate.o.d -Wp,-MT,tests/hists_cumulate.o -Wbad-function-cast -Wdeclaration-after-statement -Wformat-security -Wformat-y2k -Winit-self -Wmissing-declarations -Wmissing-prototypes -Wnested-externs -Wno-system-headers -Wold-style-definition -Wpacked -Wredundant-decls -Wstrict-prototypes -Wswitch-default -Wswitch-enum -Wundef -Wwrite-strings -Wformat -Wstrict-aliasing=3 -Wshadow -Iarch/arm64/include/generated -DHAVE_SYSCALL_TABLE_SUPPORT -DHAVE_PERF_REGS_SUPPORT -DHAVE_ARCH_REGS_QUERY_REGISTER_OFFSET -Werror -O6 -fno-omit-frame-pointer -ggdb3 -funwind-tables -Wall -Wextra -std=gnu99 -fstack-protector-all -D_FORTIFY_SOURCE=2 -I/users/ivy_wang/tools/perf/lib/include -I/users/ivy_wang/tools/perf/util/include -I/users/ivy_wang/tools/perf/arch/arm64/include -I/users/ivy_wang/tools/include/ -I/users/ivy_wang/tools/arch/arm64/include/uapi -I/users/ivy_wang/tools/include/uapi -I/users/ivy_wang/tools/arch/arm64/include/ -I/users/ivy_wang/tools/arch/arm64/ -I/users/ivy_wang/tools/perf/util -I/users/ivy_wang/tools/perf -I/users/ivy_wang/tools/lib/ -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DHAVE_SYNC_COMPARE_AND_SWAP_SUPPORT -DHAVE_PTHREAD_ATTR_SETAFFINITY_NP -DHAVE_PTHREAD_BARRIER -DHAVE_EVENTFD -DHAVE_GET_CURRENT_DIR_NAME -DHAVE_DWARF_GETLOCATIONS_SUPPORT -DHAVE_GLIBC_SUPPORT -DHAVE_AIO_SUPPORT -DHAVE_SCHED_GETCPU_SUPPORT -DHAVE_SETNS_SUPPORT -DHAVE_LIBELF_SUPPORT -DHAVE_LIBELF_MMAP_SUPPORT -DHAVE_ELF_GETPHDRNUM_SUPPORT -DHAVE_GELF_GETNOTE_SUPPORT -DHAVE_ELF_GETSHDRSTRNDX_SUPPORT -DHAVE_DWARF_SUPPORT -DHAVE_LIBBPF_SUPPORT -DHAVE_BPF_PROLOGUE -DHAVE_SDT_EVENT -DHAVE_JITDUMP -DHAVE_LIBUNWIND_AARCH64_SUPPORT -DHAVE_DWARF_UNWIND_SUPPORT -DHAVE_LIBUNWIND_SUPPORT -DHAVE_LIBCRYPTO_SUPPORT -DHAVE_SLANG_SUPPORT -DHAVE_GTK2_SUPPORT -DHAVE_LIBPERL_SUPPORT -DHAVE_TIMERFD_SUPPORT -DHAVE_LIBPYTHON_SUPPORT -DHAVE_CPLUS_DEMANGLE_SUPPORT -DHAVE_LIBBFD_SUPPORT -DHAVE_ZLIB_SUPPORT -DHAVE_LZMA_SUPPORT -DHAVE_ZSTD_SUPPORT -DHAVE_LIBCAP_SUPPORT -DHAVE_BACKTRACE_SUPPORT -DHAVE_LIBNUMA_SUPPORT -DDISASM_FOUR_ARGS_SIGNATURE -DHAVE_LIBBABELTRACE_SUPPORT -DHAVE_AUXTRACE_SUPPORT -D"BUILD_STR(s)=$(pound)s" -c -o tests/hists_cumulate.o tests/hists_cumulate.c

source_tests/hists_cumulate.o := tests/hists_cumulate.c

deps_tests/hists_cumulate.o := \
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
  /users/ivy_wang/tools/perf/util/dso.h \
  /usr/include/pthread.h \
  /usr/include/endian.h \
  /usr/include/aarch64-linux-gnu/bits/endian.h \
  /usr/include/aarch64-linux-gnu/bits/byteswap.h \
  /usr/include/aarch64-linux-gnu/bits/byteswap-16.h \
  /usr/include/aarch64-linux-gnu/bits/uintn-identity.h \
  /usr/include/sched.h \
  /usr/include/aarch64-linux-gnu/bits/types/time_t.h \
  /usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h \
  /usr/include/aarch64-linux-gnu/bits/sched.h \
  /usr/include/aarch64-linux-gnu/bits/cpu-set.h \
  /usr/include/time.h \
  /usr/include/aarch64-linux-gnu/bits/time.h \
  /usr/include/aarch64-linux-gnu/bits/timex.h \
  /usr/include/aarch64-linux-gnu/bits/types/struct_timeval.h \
  /usr/include/aarch64-linux-gnu/bits/types/clock_t.h \
  /usr/include/aarch64-linux-gnu/bits/types/struct_tm.h \
  /usr/include/aarch64-linux-gnu/bits/types/clockid_t.h \
  /usr/include/aarch64-linux-gnu/bits/types/timer_t.h \
  /usr/include/aarch64-linux-gnu/bits/types/struct_itimerspec.h \
  /usr/include/aarch64-linux-gnu/bits/types/locale_t.h \
  /usr/include/aarch64-linux-gnu/bits/types/__locale_t.h \
  /usr/include/aarch64-linux-gnu/bits/pthreadtypes.h \
  /usr/include/aarch64-linux-gnu/bits/thread-shared-types.h \
  /usr/include/aarch64-linux-gnu/bits/pthreadtypes-arch.h \
  /usr/include/aarch64-linux-gnu/bits/setjmp.h \
  /users/ivy_wang/tools/include/linux/refcount.h \
  /users/ivy_wang/tools/include/linux/atomic.h \
  /users/ivy_wang/tools/include/asm/atomic.h \
  /users/ivy_wang/tools/include/asm-generic/atomic-gcc.h \
  /users/ivy_wang/tools/include/linux/kernel.h \
  /usr/include/assert.h \
  /usr/include/byteswap.h \
  /users/ivy_wang/tools/include/linux/rbtree.h \
  /usr/include/linux/stddef.h \
  /usr/include/aarch64-linux-gnu/sys/types.h \
  /usr/include/aarch64-linux-gnu/sys/select.h \
  /usr/include/aarch64-linux-gnu/bits/select.h \
  /usr/include/aarch64-linux-gnu/bits/types/sigset_t.h \
  /usr/include/aarch64-linux-gnu/bits/types/__sigset_t.h \
  /usr/include/aarch64-linux-gnu/bits/select2.h \
  /usr/include/aarch64-linux-gnu/sys/sysmacros.h \
  /usr/include/aarch64-linux-gnu/bits/sysmacros.h \
  /usr/include/stdio.h \
  /usr/include/aarch64-linux-gnu/bits/types/__FILE.h \
  /usr/include/aarch64-linux-gnu/bits/types/FILE.h \
  /usr/include/aarch64-linux-gnu/bits/libio.h \
  /usr/include/aarch64-linux-gnu/bits/_G_config.h \
  /usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h \
  /usr/include/aarch64-linux-gnu/bits/stdio_lim.h \
  /usr/include/aarch64-linux-gnu/bits/sys_errlist.h \
  /usr/include/aarch64-linux-gnu/bits/stdio.h \
  /usr/include/aarch64-linux-gnu/bits/stdio2.h \
  /users/ivy_wang/tools/include/linux/bitops.h \
  /usr/lib/gcc/aarch64-linux-gnu/7/include-fixed/limits.h \
  /usr/lib/gcc/aarch64-linux-gnu/7/include-fixed/syslimits.h \
  /usr/include/limits.h \
  /usr/include/aarch64-linux-gnu/bits/posix1_lim.h \
  /usr/include/aarch64-linux-gnu/bits/local_lim.h \
  /usr/include/linux/limits.h \
  /usr/include/aarch64-linux-gnu/bits/posix2_lim.h \
  /usr/include/aarch64-linux-gnu/bits/xopen_lim.h \
  /usr/include/aarch64-linux-gnu/bits/uio_lim.h \
  /users/ivy_wang/tools/include/linux/bits.h \
  /users/ivy_wang/tools/include/linux/const.h \
  /users/ivy_wang/tools/include/uapi/linux/const.h \
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
  /users/ivy_wang/tools/perf/util/build-id.h \
  /users/ivy_wang/tools/perf/util/tool.h \
  /users/ivy_wang/tools/perf/util/event.h \
  /users/ivy_wang/tools/perf/lib/include/perf/event.h \
  /users/ivy_wang/tools/include/uapi/linux/perf_event.h \
  /usr/include/linux/ioctl.h \
  /usr/include/aarch64-linux-gnu/asm/ioctl.h \
  /usr/include/asm-generic/ioctl.h \
  /usr/include/aarch64-linux-gnu/asm/byteorder.h \
  /usr/include/linux/byteorder/little_endian.h \
  /usr/include/linux/swab.h \
  /users/ivy_wang/tools/perf/util/include/asm/swab.h \
  /users/ivy_wang/tools/include/uapi/linux/bpf.h \
  /users/ivy_wang/tools/include/uapi/linux/bpf_common.h \
  /users/ivy_wang/tools/perf/util/perf_regs.h \
  /users/ivy_wang/tools/perf/arch/arm64/include/perf_regs.h \
  /usr/include/stdlib.h \
  /usr/include/aarch64-linux-gnu/bits/waitflags.h \
  /usr/include/aarch64-linux-gnu/bits/waitstatus.h \
  /usr/include/aarch64-linux-gnu/bits/floatn.h \
  /usr/include/aarch64-linux-gnu/bits/floatn-common.h \
  /usr/include/alloca.h \
  /usr/include/aarch64-linux-gnu/bits/stdlib-bsearch.h \
  /usr/include/aarch64-linux-gnu/bits/stdlib-float.h \
  /usr/include/aarch64-linux-gnu/bits/stdlib.h \
  /users/ivy_wang/tools/arch/arm64/include/uapi/asm/perf_regs.h \
  /users/ivy_wang/tools/perf/util/map.h \
  /users/ivy_wang/tools/include/linux/list.h \
  /users/ivy_wang/tools/include/linux/poison.h \
  /usr/include/string.h \
  /usr/include/strings.h \
  /usr/include/aarch64-linux-gnu/bits/strings_fortified.h \
  /usr/include/aarch64-linux-gnu/bits/string_fortified.h \
  /users/ivy_wang/tools/perf/util/symbol.h \
  /users/ivy_wang/tools/perf/util/path.h \
  /users/ivy_wang/tools/perf/util/symbol_conf.h \
  /usr/include/libelf.h \
  /usr/include/elf.h \
  /usr/include/aarch64-linux-gnu/bits/auxv.h \
  /usr/include/gelf.h \
  /users/ivy_wang/tools/perf/util/sort.h \
  /usr/include/regex.h \
  /users/ivy_wang/tools/perf/util/map_symbol.h \
  /users/ivy_wang/tools/perf/util/callchain.h \
  /users/ivy_wang/tools/perf/util/branch.h \
  /users/ivy_wang/tools/perf/util/values.h \
  /users/ivy_wang/tools/perf/util/hist.h \
  /users/ivy_wang/tools/perf/util/evsel.h \
  /users/ivy_wang/tools/perf/lib/include/internal/evsel.h \
  /users/ivy_wang/tools/perf/lib/include/perf/evsel.h \
  /users/ivy_wang/tools/perf/lib/include/perf/core.h \
  /users/ivy_wang/tools/perf/lib/include/internal/cpumap.h \
  /users/ivy_wang/tools/perf/util/color.h \
  /users/ivy_wang/tools/perf/util/events_stats.h \
  /users/ivy_wang/tools/perf/util/auxtrace.h \
  /usr/include/errno.h \
  /usr/include/aarch64-linux-gnu/bits/errno.h \
  /usr/include/linux/errno.h \
  /users/ivy_wang/tools/include/uapi/asm/errno.h \
  /users/ivy_wang/tools/include/uapi/asm-generic/errno.h \
  /users/ivy_wang/tools/include/uapi/asm-generic/errno-base.h \
  /users/ivy_wang/tools/include/asm/barrier.h \
  /users/ivy_wang/tools/include/asm/../../arch/arm64/include/asm/barrier.h \
  /users/ivy_wang/tools/perf/util/../ui/keysyms.h \
  /users/ivy_wang/tools/perf/util/../ui/libslang.h \
  /usr/include/slang.h \
  /users/ivy_wang/tools/perf/util/evsel.h \
  /users/ivy_wang/tools/perf/util/evlist.h \
  /users/ivy_wang/tools/lib/api/fd/array.h \
  /users/ivy_wang/tools/perf/lib/include/internal/evlist.h \
  /usr/include/signal.h \
  /usr/include/aarch64-linux-gnu/bits/signum.h \
  /usr/include/aarch64-linux-gnu/bits/signum-generic.h \
  /usr/include/aarch64-linux-gnu/bits/types/sig_atomic_t.h \
  /usr/include/aarch64-linux-gnu/bits/types/siginfo_t.h \
  /usr/include/aarch64-linux-gnu/bits/types/__sigval_t.h \
  /usr/include/aarch64-linux-gnu/bits/siginfo-arch.h \
  /usr/include/aarch64-linux-gnu/bits/siginfo-consts.h \
  /usr/include/aarch64-linux-gnu/bits/siginfo-consts-arch.h \
  /usr/include/aarch64-linux-gnu/bits/types/sigval_t.h \
  /usr/include/aarch64-linux-gnu/bits/types/sigevent_t.h \
  /usr/include/aarch64-linux-gnu/bits/sigevent-consts.h \
  /usr/include/aarch64-linux-gnu/bits/sigaction.h \
  /usr/include/aarch64-linux-gnu/bits/sigcontext.h \
  /usr/include/aarch64-linux-gnu/asm/sigcontext.h \
  /usr/include/aarch64-linux-gnu/bits/types/stack_t.h \
  /usr/include/aarch64-linux-gnu/sys/ucontext.h \
  /usr/include/aarch64-linux-gnu/sys/procfs.h \
  /usr/include/aarch64-linux-gnu/sys/time.h \
  /usr/include/aarch64-linux-gnu/sys/user.h \
  /usr/include/aarch64-linux-gnu/bits/sigstack.h \
  /usr/include/aarch64-linux-gnu/bits/ss_flags.h \
  /usr/include/aarch64-linux-gnu/bits/types/struct_sigstack.h \
  /usr/include/aarch64-linux-gnu/bits/sigthread.h \
  /usr/include/unistd.h \
  /usr/include/aarch64-linux-gnu/bits/posix_opt.h \
  /usr/include/aarch64-linux-gnu/bits/environments.h \
  /usr/include/aarch64-linux-gnu/bits/confname.h \
  /usr/include/aarch64-linux-gnu/bits/getopt_posix.h \
  /usr/include/aarch64-linux-gnu/bits/getopt_core.h \
  /usr/include/aarch64-linux-gnu/bits/unistd.h \
  /users/ivy_wang/tools/perf/util/machine.h \
  /users/ivy_wang/tools/perf/util/map_groups.h \
  /users/ivy_wang/tools/perf/util/rwsem.h \
  /users/ivy_wang/tools/perf/util/dsos.h \
  /users/ivy_wang/tools/perf/util/thread.h \
  /users/ivy_wang/tools/perf/util/srccode.h \
  /users/ivy_wang/tools/perf/util/strlist.h \
  /users/ivy_wang/tools/perf/util/rblist.h \
  /users/ivy_wang/tools/perf/util/intlist.h \
  /users/ivy_wang/tools/perf/util/parse-events.h \
  /users/ivy_wang/tools/perf/tests/tests.h \
  /users/ivy_wang/tools/perf/tests/hists_common.h \

tests/hists_cumulate.o: $(deps_tests/hists_cumulate.o)

$(deps_tests/hists_cumulate.o):
