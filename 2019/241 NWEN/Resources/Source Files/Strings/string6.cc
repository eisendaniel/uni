#include <iostream>
#include <string>

int main () {
// length() and capacity() functions

std::string source("0123456789abcde");
std::cout << "Length: " << source.length() << std::endl;
std::cout << "Capacity: " << source.capacity() << std::endl;

// Now add a new character
source += "f";
std::cout << "Length: " << source.length() << std::endl;
std::cout << "Capacity: " << source.capacity() << std::endl;

return 0;
}
