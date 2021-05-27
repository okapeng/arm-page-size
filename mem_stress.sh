#!/bin/bash -x

if [ -z "$1" ]
        then
        echo "No argument supplied"
        exit
fi

MEMORY=$1

./disable_THP.sh
stress-ng --vm 10 --cache 6 --io 2 --vm-bytes 32768K --vm-method incdec -t 1h --page-in --vmstat 120 --thrash --metrics --hdd-opts rd-seq
./triple_run.sh ./microbenchmark_time random $MEMORY
