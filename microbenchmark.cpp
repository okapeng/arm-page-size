#include <cstdlib>
#include <string>
#include <unistd.h>
#include <iostream>
#include <vector>
#include <stdlib.h>
#include <time.h>
#include <stdio.h>

const std::string perf_cmd = "/proj/arm-page-walks-PG0/exp/page-size/datastore/linux-5.4.86/tools/perf/perf";
//const std::string perf_cmd = "/mydata/linux-5.4.81/tools/perf/perf";
const std::string parent_pid = "--pid=" + std::to_string(getpid());

const long unsigned int touchCount = 100000000;
const long unsigned int NUM_INTS_PER_GB = 250000000;

const std::string SEQUENTIAL("sequential");
const std::string RANDOM("random");

int main(int argc, char **argv)
{
	std::vector<int> data;
	std::vector<int> index;
	if (argc == 4)
	{
		//const int PAGE_SIZE = atoi(argv[1]); // obtained by getconf PAGESIZE
		//const int NUM_PAGES_IN_GB = 1024 * 1024 * 1024 / PAGE_SIZE;
		//const int NUM_INTS_IN_PAGE = PAGE_SIZE / sizeof(int);

		int numGB = atoi(argv[3]);			// read dataset size in GB
		long unsigned int size = numGB * NUM_INTS_PER_GB; // number of element in the array
		std::cout << "Process " << getpid() << " allocates " << numGB << " GB, array size " << size << std::endl;

		long unsigned int counter = 0;
		int sum = 0;

		data.resize(size, 0);
		index.resize(touchCount, 0);

		// Initialise data
		while (size > counter) {
			data[counter] = counter;
			counter++;
		}

		// Initialise access stream 
		if (SEQUENTIAL == argv[2]) {
			for (unsigned int j = 0; j < touchCount; j++) {
				index[j] = (j * 4) % size;
			}
		} else if (RANDOM == argv[2]) {
			srand(42);
			for (unsigned int j = 0; j < touchCount; j++) {
				index[j] = rand() % size;
			}
		}

		pid_t pid = fork(); // create child process
		switch (pid) {
			case -1:
				perror("fork");
				exit(1);
			case 0 :
			        execl(perf_cmd.c_str(),perf_cmd.c_str(),"stat", 
						"-e instructions,mem_access,dTLB-load-misses,l1d_tlb_refill,iTLB-load-misses,page_walk_l1_stage1_hit,page_walk_l2_stage1_hit", 
						parent_pid.c_str() ,NULL);
			        exit(1);
			default:
				sleep(2);
		}	


		for (int j = 0; j < touchCount; j++) {
			sum += data[index[j]];
		}

	} else {
		std::cout << "Usage: ./microbenchmark <page_size> <access_pattern> <dataset_size> " << std::endl;
		std::cout << "<page_size> - 4096 or 65536" << std::endl;
		std::cout << "<access_pattern> - sequential or random" << std::endl;
	}
	return 0;
}
