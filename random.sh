#!/bin/bash -x 

if [ -z "$1" ]
	then
	echo "No argument supplied"
	exit 
fi

MEMORY=$1

./triple_run.sh ./time_microbenchmark random $MEMORY
sleep 1
./multi-microbench.sh ./time_microbenchmark ./time_microbenchmark random $MEMORY
sleep 1
./multi-microbench.sh ./time_microbenchmark ./time_microbenchmark random $MEMORY
sleep 1
./multi-microbench.sh ./time_microbenchmark ./time_microbenchmark random $MEMORY
