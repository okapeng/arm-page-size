cmd_perf-in.o :=  ld   -r -o perf-in.o  builtin-bench.o builtin-annotate.o builtin-config.o builtin-diff.o builtin-evlist.o builtin-ftrace.o builtin-help.o builtin-sched.o builtin-buildid-list.o builtin-buildid-cache.o builtin-kallsyms.o builtin-list.o builtin-record.o builtin-report.o builtin-stat.o builtin-timechart.o builtin-top.o builtin-script.o builtin-kmem.o builtin-lock.o builtin-kvm.o builtin-inject.o builtin-mem.o builtin-data.o builtin-version.o builtin-c2c.o builtin-trace.o builtin-probe.o bench/perf-in.o tests/perf-in.o perf.o util/perf-in.o arch/perf-in.o ui/perf-in.o scripts/perf-in.o trace/beauty/perf-in.o
