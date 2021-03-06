#include <cstdlib>
#include <unistd.h>
#include <iostream>
#include <vector>
#include <stdlib.h>
#include <time.h>
#include <stdio.h>

const long unsigned int touchCount = 500000000;
const long unsigned int NUM_INTS_PER_GB = 268435456;

const std::string SEQUENTIAL("sequential");
const std::string RANDOM("random");

int main(int argc, char **argv)
{
	std::vector<int> data;
	std::vector<int> index;
	if (argc == 3)
	{
		int numGB = atoi(argv[2]);			// read dataset size in GB
		long unsigned int size = numGB * NUM_INTS_PER_GB; // number of element in the array
		std::cout << "Process " << getpid() << " allocates " << numGB << " GB, array size " << size << std::endl;
		unsigned long int counter = 0;
		int seed = 43;
		int sum = 0;

		data.resize(size, 0);
		index.resize(touchCount, 0);

		// Initialise data
		while (size > counter) {
			data[counter] = counter;
			counter++;
		}

		// Initialise access stream 
		if (SEQUENTIAL == argv[1]) {
			for (int j = 0; j < touchCount; j++) {
				index[j] = (j * 4) % size;
			}
		} else if (RANDOM == argv[1]) {
			srand(42);
			for (int j = 0; j < touchCount; j++) {
				index[j] = rand();
			}
		}


		//std::cout << "Waiting ..." << std::endl;
		//sleep(5);
		//std::cout << "start access " << touchCount << std::endl;
		for (int j = 0; j < touchCount; j++) {
			sum += data[index[j] % size];
		}

		/*if (SEQUENTIAL == argv[2]) {
			// std::cout << "Start sequential processing..." << std::endl;
			for (int j = 0; j < touchCount; j++) {
				sum += data[index[j] % size];
			}
		} else if (RANDOM == argv[2]) {
			// std::cout << "Start random processing..." << std::endl;
			for (unsigned int j = 0; j < touchCount; j++) {
				sum += data[index[j] % size];
			}
		}*/

		//std::cout << "Result: " << sum << std::endl;
	} else {
		std::cout << "Usage: ./microbenchmark <page_size> <access_pattern> <dataset_size> " << std::endl;
		std::cout << "<page_size> - 4096 or 65536" << std::endl;
		std::cout << "<access_pattern> - sequential or random" << std::endl;
	}
	return 0;
}
