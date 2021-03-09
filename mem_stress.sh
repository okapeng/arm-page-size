#!/bin/bash -x

if [ -z "$1" ]
        then
        echo "No argument supplied"
        exit
fi

MEMORY=$1

./triple_run.sh ./microbenchmark_counter random $MEMORY
sleep 2
./multi-microbench.sh ./microbenchmark_counter ./microbenchmark_manual random $MEMORY
sleep 2
./multi-microbench.sh ./microbenchmark_counter ./microbenchmark_manual random $MEMORY
sleep 2
./multi-microbench.sh ./microbenchmark_counter ./microbenchmark_manual random $MEMORY
sleep 2
./multi-microbench.sh ./microbenchmark_counter ./microbenchmark_manual random $MEMORY
sleep 2
./multi-microbench.sh ./microbenchmark_counter ./microbenchmark_manual random $MEMORY
