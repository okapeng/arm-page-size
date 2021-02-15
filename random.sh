#!/bin/bash -x 

./triple_run.sh ./time_microbenchmark random 7
sleep 1
./multi-microbench.sh ./time_microbenchmark ./time_microbenchmark random 7
