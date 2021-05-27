#!/bin/bash -x 

sh -c "echo always > /sys/kernel/mm/transparent_hugepage/enabled"
sh -c "echo always > /sys/kernel/mm/transparent_hugepage/defrag"
sh -c "echo 0 > /sys/kernel/mm/transparent_hugepage/khugepaged/scan_sleep_millisecs"
cat /sys/kernel/mm/transparent_hugepage/enabled
cat /proc/meminfo |grep Anon
