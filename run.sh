#!/bin/bash -x 

./triple_run.sh ./microbenchmark sequential 10
./triple_run.sh ./time_microbenchmark sequential 10
./triple_run.sh ./microbenchmark random 10
./triple_run.sh ./time_microbenchmark random 10
./multi-microbench.sh ./microbenchmark ./microbenchmark_manual sequential 10
sleep 1
./multi-microbench.sh ./microbenchmark ./microbenchmark_manual sequential 10
sleep 1
./multi-microbench.sh ./microbenchmark ./microbenchmark_manual sequential 10
sleep 1
./multi-microbench.sh ./time_microbenchmark ./time_microbenchmark sequential 10
sleep 1
./multi-microbench.sh ./microbenchmark ./microbenchmark_manual random 10
sleep 1
./multi-microbench.sh ./microbenchmark ./microbenchmark_manual random 10
sleep 1
./multi-microbench.sh ./microbenchmark ./microbenchmark_manual random 10
sleep 1
./multi-microbench.sh ./time_microbenchmark ./time_microbenchmark random 10
