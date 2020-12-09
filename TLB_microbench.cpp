#include <cstdlib>
#include <iostream>
#include <vector>
#include <stdlib.h>
#include <time.h>
#include <stdio.h>


const long unsigned int touchCount = 100000000;

const int PAGE_SIZE = 4096;
const int NUM_PAGES_IN_GB = 1024 * 1024 * 1024 / PAGE_SIZE;
const int NUM_INTS_IN_PAGE = (PAGE_SIZE - 16 ) / sizeof(int);


// this program creates an array of integers of specified size 
// the array is filled with random numbers 
// then the program issues requests to elements located in the random page
//
// this program takes one argument: test dataset size in GB
int main(int argc, char** argv) {
  std::vector<int*> data;
  if (argc == 2) {

    int numGB = atoi(argv[1]);             // read dataset size in GB
    int size = numGB * NUM_PAGES_IN_GB;    // size is the number of 4KB pages in the test dataset 
    std::cout << "Allocating " << numGB << "GB" << std::endl;

    int counter = 0;

    data.resize(size, NULL);

    while (size > counter) {
      int* arr = new int[NUM_INTS_IN_PAGE];
      for(int i = 0; i < NUM_INTS_IN_PAGE; i++) {
        arr[i] = i;
      }
      data[counter] = arr;
      counter++;
      if (counter % (1024 * 64) == 0) {
        std::cout << "Allocated " << double(counter) / NUM_PAGES_IN_GB << "GB" << std::endl;
      }
    }


  std::cout << "Start processing..." << std::endl;
  srand(42);
  int sum = 0;
  for(int j = 0; j < touchCount; j++) {
    sum += data[rand() % size][rand() % NUM_INTS_IN_PAGE];
  }
  std::cout << "Result: " << sum << std::endl;
  }
  return 0;
}
