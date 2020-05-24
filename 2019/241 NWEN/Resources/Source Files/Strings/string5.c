#include <stdio.h>
#include <string.h>

#define HELLO	"Hello"
#define WORLD	"world"

int main(void)
{
	char str[100];

	strncpy(str, HELLO " " WORLD ".\n", sizeof(str));
	printf("%s", str);

	return 0;
}
