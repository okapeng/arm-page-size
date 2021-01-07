#!/bin/bash -x 
if [ -z "$1" ]
	then
	echo "No argument supplied"
	exit 
fi
if [ -z "$2" ]
	then
	echo "No argument supplied"
	exit 
fi
if [ -z "$3" ]
	then
	echo "No argument supplied"
	exit 
fi
if [ -z "$4" ]
	then
	echo "No argument supplied"
	exit 
fi
if [ -z "$5" ]
	then
	echo "No argument supplied"
	exit 
fi

# trap ctrl-c and call ctrl_c()
trap ctrl_c INT

function ctrl_c() {
	if [! -z "$pid_0" ]; then
		echo -n "Killing process 0..."
		kill $pid_0
	fi
	if [! -z "$pid_1" ]; then
		echo -n "Killing process 1..."
		kill $pid_1
	fi
	if [! -z "$pid_2" ]; then
		echo -n "Killing process 2..."
		kill $pid_2
	fi
	if [! -z "$pid_3" ]; then
		echo -n "Killing process 3..."
		kill $pid_3
	fi
	echo "Trapped CTRL-C"
}

BENCHMARK_measure=$1 # specify the menchmark to run
BENCHMARK=$2 # specify the menchmark to run on background
MEMORY=$5 # specify memory size for each process in GB
PAGE_SIZE=$3 # specify page size 4096 or 65536
ACCESS_PATTERN=$4 # specify the access pattern, random or sequential

$BENCHMARK_measure $PAGE_SIZE $ACCESS_PATTERN $MEMORY & pid_0=$!
$BENCHMARK $PAGE_SIZE $ACCESS_PATTERN $MEMORY & pid_1=$!
$BENCHMARK $PAGE_SIZE $ACCESS_PATTERN $MEMORY & pid_2=$!
$BENCHMARK $PAGE_SIZE $ACCESS_PATTERN $MEMORY & pid_3=$!

echo "pid is $(pid_0)"
wait $pid_0
echo "process 0 terminate" 

