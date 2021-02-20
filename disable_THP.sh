#!/bin/bash -x 

sh -c "echo never > /sys/kernel/mm/transparent_hugepage/enabled"
sh -c "echo never > /sys/kernel/mm/transparent_hugepage/defrag"
cat /sys/kernel/mm/transparent_hugepage/enabled
cat /proc/meminfo |grep Anon
