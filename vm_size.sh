#!/bin/bash -x 

if [ -z "$1" ]
	then
	echo "Please specify the microbenchmark to run"
	exit 
fi

BENCHMARK=$1 # specify the benchmark to run

for i in 1 2 4 8 16 32
do
	for j in {1..5}
	do
		$BENCHMARK sequential $i & pid=$!
		wait $pid
		$BENCHMARK random $i & pid=$!
		wait $pid
	done
	echo "size $i done"
done
