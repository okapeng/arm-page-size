#!/bin/bash -x 

if [ -z "$1" ]
	then
	echo "No argument supplied"
	exit 
fi

BENCHMARK=$1 # specify the benchmark to run
ACCESS_PATTERN=$2 # specify the access pattern, random or sequential
MEMORY=$3 # specify memory size for each process in GB

$BENCHMARK $ACCESS_PATTERN $MEMORY & pid_1=$!
wait $pid_1
echo "process 1 terminates"
$BENCHMARK $ACCESS_PATTERN $MEMORY & pid_2=$!
wait $pid_2
echo "process 2 terminates"
$BENCHMARK $ACCESS_PATTERN $MEMORY & pid_3=$!
wait $pid_3
echo "process 3 terminates"
