#include <iostream>
#include "Cryption.hpp"


int main(int argc, char const *argv[]) {
  if (argc != 2) {
    std::cerr << "Usage: ./cryption <task_data>" << std::endl;
    return 0;
  }

  executeCryption(argv[1]);
  return 0;
}
