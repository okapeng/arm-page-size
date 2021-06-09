#!/bin/bash

if [ -z "$1" ]
        then
        echo "Please enter the page size of the system"
        exit
fi

PAGESIZE=$1
MEMORY=10
OUTPUT=/mnt/output/$PAGESIZE

mkdir -p $OUTPUT
echo "Start characterizing sequential microbenchmark"
./triple_run.sh ./time_microbenchmark sequential $MEMORY >> $OUTPUT/seq_$PAGESIZE.txt
sleep 2
echo "Start characterizing random microbenchmark"
./triple_run.sh ./time_microbenchmark random $MEMORY >> $OUTPUT/rand_$PAGESIZE.txt
