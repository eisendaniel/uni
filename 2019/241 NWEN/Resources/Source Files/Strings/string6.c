#include <stdio.h>
#include <string.h>

int main(void)
{
	char str[100];
	char hello[] = "Hello";
	char world[] = "world";

	strncpy(str, hello " " world ".\n", sizeof(str));
	printf("%s", str);

	return 0;
}
