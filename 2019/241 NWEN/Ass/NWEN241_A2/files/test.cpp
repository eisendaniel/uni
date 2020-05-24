#include <string>
using namespace std;

int main(int argc, char const *argv[]) {
	string seasons[4] = {"Winter", "Spring", "Summer", "Fall"};
	string *strPtr;
	strPtr = new string[5];

	for (int i = 0; i < 4; i++) {
		strPtr[i] = seasons[i];
	}
	return 0;
}
