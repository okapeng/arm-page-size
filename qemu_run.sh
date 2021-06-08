MEMORY=10
echo "Start characterizing sequential microbenchmark"
./triple_run.sh ./time_microbenchmark sequential $MEMORY >> /mnt/4kb_4kb_seq.out
sleep 2
echo "Start characterizing random microbenchmark"
./triple_run.sh ./time_microbenchmark random $MEMORY >> /mnt/4kb_4kb_rand.out
