#include <iostream>
#include <string>

int main () {
// This is the copy constructors with index and length parameters

std::string source("my string");
std::cout << "Source String: " << source << std::endl;
std::string output1(source, 3);   // copy from index 3
std::cout << output1<< std::endl;
std::string output2(source, 1, 5);  // copy from index 3, length 4 characters
std::cout << output2 << std::endl;

  return 0;
}
