#include <cstdlib>
#include <unistd.h>
#include <iostream>
#include <vector>
#include <stdlib.h>
#include <time.h>
#include <stdio.h>

const long unsigned int touchCount = 100000000;
const int a = 1664525; // multiplier for random number generator 
const int c = 1013904223; // increment for random number generator
const int m = 2^32; // modulus for random number generator

const std::string SEQUENTIAL("sequential");
const std::string RANDOM("random");

int main(int argc, char **argv)
{
	std::vector<int> data;
	std::vector<int> index;
	if (argc == 4)
	{
		const int PAGE_SIZE = atoi(argv[1]); // obtained by getconf PAGESIZE
		const int NUM_PAGES_IN_GB = 1024 * 1024 * 1024 / PAGE_SIZE;
		const int NUM_INTS_IN_PAGE = PAGE_SIZE / sizeof(int);

		int numGB = atoi(argv[3]);			// read dataset size in GB
		unsigned int size = numGB * NUM_PAGES_IN_GB * NUM_INTS_IN_PAGE; // number of element in the array
		std::cout << "Allocating " << numGB << "GB" << std::endl;

		unsigned int counter = 0;
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
		if (SEQUENTIAL == argv[2]) {
			for (int j = 0; j < touchCount; j++) {
				index[j] = (j * 4) % size;
			}
		} else if (RANDOM == argv[2]) {
			srand(42);
			for (int j = 0; j < touchCount; j++) {
				index[j] = rand();
			}
		}


		std::cout << "Waiting ..." << std::endl ;
		sleep(5);
		//std::cout << "touch " << touchCount << " times NUM_INTS_IN_PAGE: "<< NUM_INTS_IN_PAGE 
		//	<< " NUM_PAGES_IN_GB: " << NUM_PAGES_IN_GB << std::endl;

		if (SEQUENTIAL == argv[2]) {
			// std::cout << "Start sequential processing..." << std::endl;
			for (int j = 0; j < touchCount; j++) {
				sum += data[index[j] % size];
			}
		} else if (RANDOM == argv[2]) {
			// std::cout << "Start random processing..." << std::endl;
			for (unsigned int j = 0; j < touchCount; j++) {
				//seed = (seed * a + c) % size;
				//sum += data[seed];
				sum += data[index[j] % size];
			}
		}

		std::cout << "Result: " << sum << std::endl;
	} else {
		std::cout << "Usage: ./microbenchmark <page_size> <access_pattern> <dataset_size> " << std::endl;
		std::cout << "<page_size> - 4096 or 65536" << std::endl;
		std::cout << "<access_pattern> - sequential or random" << std::endl;
	}
	return 0;
}
