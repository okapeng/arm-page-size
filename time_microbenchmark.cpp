#include <cstdlib>
#include <chrono>
#include <unistd.h>
#include <iomanip>
#include <iostream>
#include <vector>
#include <stdlib.h>
#include <time.h>
#include <stdio.h>

using namespace std::chrono;

const long unsigned int touchCount = 100000000;
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
        std::cout << "Allocating " << numGB << "GB" << std::endl;

        long unsigned int counter = 0;
        int sum = 0;

        data.resize(size, 0);
        index.resize(touchCount, 0);

        while (size > counter)
        {
            data[counter] = 1;
            counter++;
        }
	std::cout << "Set up " << argv[1] << " access stream" << std::endl;

	// Initialise access stream
	if (SEQUENTIAL == argv[1]) {
		for (int j = 0; j < touchCount; j++) {
			index[j] = (j * 4) % size;
		}
	} else if (RANDOM == argv[1]) {
		srand(42);
		for (int j = 0; j < touchCount; j++) {
			index[j] = rand() % size;
		}
	}

	std::cout << "Start " << argv[1] << " access" << std::endl;
	auto start = high_resolution_clock::now();

        for (int j = 0; j < touchCount; j++) {
            sum += data[index[j]];
        }


	uint64_t  time_taken = duration_cast<std::chrono::milliseconds>(
			std::chrono::high_resolution_clock::now()-start).count(); 
	std::cout << "Time taken by program is : " 
		  << time_taken ; 
	std::cout << "ms" << std::endl;
    }
    else
    {
        std::cout << "Usage: ./microbenchmark <page_size> <access_pattern> <dataset_size> " << std::endl;
        std::cout << "<page_size> - 4096 or 65536" << std::endl;
        std::cout << "<access_pattern> - sequential or random" << std::endl;
    }
    return 0;
}
