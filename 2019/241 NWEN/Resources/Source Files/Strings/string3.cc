#include <iostream>
#include <string>

int main () {
// This is the copy constructor. This constructor creates a new string as a copy of source.
  std::string source("source string");
  std::string output(source);
  std::cout << output << std::endl;

  return 0;
}
