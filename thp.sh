#!/bin/bash -x 

if [ -z "$1" ]
	then
	echo "Please enter the size of the memory allocated to the microbenchmarks"
	exit 
fi

MEMORY=$1
./enable_THP.sh
./triple_run.sh ./microbenchmark sequential $MEMORY
./triple_run.sh ./time_microbenchmark sequential $MEMORY
./triple_run.sh ./microbenchmark random $MEMORY
./triple_run.sh ./time_microbenchmark random $MEMORY
