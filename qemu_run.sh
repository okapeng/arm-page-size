#!/bin/bash

if [ -z "$1" ]
        then
        echo "Please enter the page size of the system"
        exit
fi

if [ -z "$2" ]
        then
        echo "THP is enabled"
        ./enable_THP.sh
        THP="_THP"
        else
        echo "THP is disabled"
        ./disable_THP.sh
        THP=""
fi

PAGESIZE=$1
MEMORY=10
OUTPUT=/mnt/output/${PAGESIZE}KB

mkdir -p $OUTPUT
echo "Start characterizing sequential microbenchmark"
./triple_run.sh ./time_microbenchmark sequential $MEMORY >> $OUTPUT/seq${THP}_$PAGESIZE.txt
sleep 2
echo "Start characterizing random microbenchmark"
./triple_run.sh ./time_microbenchmark random $MEMORY >> $OUTPUT/rand${THP}_$PAGESIZE.txt


