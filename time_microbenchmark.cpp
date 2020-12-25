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
const unsigned int a = 1103515245; // multiplier for random number generator
const unsigned int c = 12345; // increment for random number generator

const std::string SEQUENTIAL("sequential");
const std::string RANDOM("random");

int main(int argc, char **argv)
{
    std::vector<int> data;
    if (argc == 4)
    {
        const int PAGE_SIZE = atoi(argv[1]); // obtained by getconf PAGESIZE
        const int NUM_PAGES_IN_GB = 1024 * 1024 * 1024 / PAGE_SIZE;
        const int NUM_INTS_IN_PAGE = PAGE_SIZE / sizeof(int);

        int numGB = atoi(argv[3]);          // read dataset size in GB
        unsigned int size = numGB * NUM_PAGES_IN_GB * NUM_INTS_IN_PAGE; // size is the number of elements in the test dataset

        std::cout << "Allocating " << numGB << "GB" << std::endl;

        unsigned int counter = 0;
	unsigned int seed = 43;
        int sum = 0;

        data.resize(size, 0);

        while (size > counter)
        {
            data[counter] = 1;
            counter++;
        }

	auto start = high_resolution_clock::now();

        if (SEQUENTIAL == argv[2])
        {
            //std::cout << "Start sequential processing..." << std::endl;
            for (int j = 0; j < touchCount; j++)
            {
                sum += data[j % size];
            }
        }
        else if (RANDOM == argv[2])
        {
            //std::cout << "Start random processing..." << std::endl;
            for (int j = 0; j < touchCount; j++)
            {
		seed = (seed * a + c) % size;
		sum += data[seed];
		// rand = (rand * (2*j+1)) % size;
		// sum += data[rand];
                // sum += data[rand() % size];
            }
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
