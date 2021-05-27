#!/bin/bash -x 

if [ -z "$1" ]
	then
	echo "Please enter the size of the memory allocated to the microbenchmarks"
	exit 
fi

MEMORY=$1

./disable_THP.sh
./triple_run.sh ./microbenchmark sequential $MEMORY
./triple_run.sh ./time_microbenchmark sequential $MEMORY
./triple_run.sh ./microbenchmark random $MEMORY
./triple_run.sh ./time_microbenchmark random $MEMORY
./multi-microbench.sh ./microbenchmark ./microbenchmark_manual sequential $MEMORY
sleep 2
./multi-microbench.sh ./microbenchmark ./microbenchmark_manual sequential $MEMORY
sleep 2
./multi-microbench.sh ./microbenchmark ./microbenchmark_manual sequential $MEMORY
sleep 2
./multi-microbench.sh ./microbenchmark ./microbenchmark_manual sequential $MEMORY
sleep 2
./multi-microbench.sh ./microbenchmark ./microbenchmark_manual sequential $MEMORY
sleep 2
./multi-microbench.sh ./microbenchmark ./microbenchmark_manual sequential $MEMORY
sleep 2
./multi-microbench.sh ./time_microbenchmark ./time_microbenchmark sequential $MEMORY
sleep 2
./multi-microbench.sh ./time_microbenchmark ./time_microbenchmark sequential $MEMORY
sleep 2
./multi-microbench.sh ./time_microbenchmark ./time_microbenchmark sequential $MEMORY
sleep 2
./multi-microbench.sh ./microbenchmark ./microbenchmark_manual random $MEMORY
sleep 2
./multi-microbench.sh ./microbenchmark ./microbenchmark_manual random $MEMORY
sleep 2
./multi-microbench.sh ./microbenchmark ./microbenchmark_manual random $MEMORY
sleep 2
./multi-microbench.sh ./microbenchmark ./microbenchmark_manual random $MEMORY
sleep 2
./multi-microbench.sh ./microbenchmark ./microbenchmark_manual random $MEMORY
sleep 2
./multi-microbench.sh ./microbenchmark ./microbenchmark_manual random $MEMORY
sleep 2
./multi-microbench.sh ./time_microbenchmark ./time_microbenchmark random $MEMORY
sleep 2
./multi-microbench.sh ./time_microbenchmark ./time_microbenchmark random $MEMORY
sleep 2
./multi-microbench.sh ./time_microbenchmark ./time_microbenchmark random $MEMORY
