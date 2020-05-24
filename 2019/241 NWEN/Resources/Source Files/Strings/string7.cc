#include <iostream>
#include <string>

int main () {
// length() and capacity() functions

std::string source("012345678");
std::cout << source.length() << std::endl;
std::cout << source.max_size() << std::endl;

std::string sString1("Not Empty");
std::cout << (sString1.empty() ? "true" : "false") << std::endl;

std::string sString2; // empty
std::cout << (sString2.empty() ? "true" : "false")  << std::endl;

return 0;
}
