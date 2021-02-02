#!/bin/bash -x 

./triple_run.sh ./time_microbenchmark sequential 7
./triple_run.sh ./time_microbenchmark random 7
./multi-microbench.sh ./time_microbenchmark ./time_microbenchmark sequential 7
sleep 1
./multi-microbench.sh ./time_microbenchmark ./time_microbenchmark random 7
