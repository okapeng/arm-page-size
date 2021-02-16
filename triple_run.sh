#!/bin/bash -x 

if [ -z "$1" ]
	then
	echo "No argument supplied"
	exit 
fi

BENCHMARK=$1 # specify the benchmark to run
ACCESS_PATTERN=$2 # specify the access pattern, random or sequential
MEMORY=$3 # specify memory size for each process in GB
NUM_RUNS=20 # number of runs

for i in {1..$NUM_RUNS}
do
	$BENCHMARK $ACCESS_PATTERN $MEMORY & pid=$!
	wait $pid
	echo "process $i terminates"
done
