#include <cstdlib>
#include <unistd.h>
#include <iostream>
#include <vector>
#include <stdlib.h>
#include <time.h>
#include <stdio.h>

// const int PAGE_SIZE = 4096;
// const int NUM_PAGES_IN_GB = 1024 * 1024 * 1024 / PAGE_SIZE;
// const int NUM_INTS_IN_PAGE = (PAGE_SIZE - 16) / sizeof(int);

const std::string SEQUENTIAL("sequential");
const std::string RANDOM("random");

// this program creates an array of integers of specified size
// the array is filled with random numbers
// then the program issues requests to elements located in the random page
//
// this program takes one argument: test dataset size in GB
int main(int argc, char **argv)
{
    std::vector<int *> data;
    if (argc == 4)
    {
        const int PAGE_SIZE = atoi(argv[1]); // obtained by getconf PAGESIZE
        const int NUM_PAGES_IN_GB = 1024 * 1024 * 1024 / PAGE_SIZE;
        const int NUM_INTS_IN_PAGE = (PAGE_SIZE - 16) / sizeof(int);

        int numGB = atoi(argv[3]);          // read dataset size in GB
        int size = numGB * NUM_PAGES_IN_GB; // size is the number of pages in the test dataset
        const long unsigned int touchCount = std::min(100000000, size);

        std::cout << "Allocating " << numGB << "GB" << std::endl;

        int counter = 0;

        data.resize(size, NULL);

        while (size > counter)
        {
            int *arr = new int[NUM_INTS_IN_PAGE];
            for (int i = 0; i < NUM_INTS_IN_PAGE; i++)
            {
                arr[i] = i;
            }
            data[counter] = arr;
            counter++;
//            if (counter % (NUM_PAGES_IN_GB / 4) == 0)
//            {
//                std::cout << "Allocated " << double(counter) / NUM_PAGES_IN_GB << "GB" << std::endl;
//            }
        }

        //std::cout << "Waiting ..." << std::endl;
        //sleep(10);
        std::cout << "touch " << touchCount << " times NUM_INTS_IN_PAGE: "<< NUM_INTS_IN_PAGE 
		<< " NUM_PAGES_IN_GB: " << NUM_PAGES_IN_GB << std::endl;

        int sum = 0;
        if (SEQUENTIAL == argv[2])
        {
            std::cout << "Start sequential processing..." << std::endl;
            for (int j = 0; j < touchCount; j++)
            {
                sum += data[j % size][j % NUM_INTS_IN_PAGE];
            }
        }
        else if (RANDOM == argv[2])
        {
            std::cout << "Start random processing..." << std::endl;
            srand(42);
            for (int j = 0; j < touchCount; j++)
            {
                sum += data[rand() % size][rand() % NUM_INTS_IN_PAGE];
            }
        }

        std::cout << "Result: " << sum << std::endl;
    }
    else
    {
        std::cout << "Usage: ./microbenchmark <page_size> <access_pattern> <dataset_size> " << std::endl;
        std::cout << "<page_size> - 4096 or 65536" << std::endl;
        std::cout << "<access_pattern> - sequential or random" << std::endl;
    }
    return 0;
}
