#!/bin/bash -x 

if [ -z "$1" ]
	then
	echo "Please specify the microbenchmark to run"
	exit 
fi

BENCHMARK=$1 # specify the benchmark to run
ACCESS_PATTERN=$2 # specify the access pattern, random or sequential
MEMORY=$3 # specify memory size for each process in GB

for i in {1..10}
do
	$BENCHMARK $ACCESS_PATTERN $MEMORY & pid=$!
	wait $pid
	echo "process $i terminates"
done
