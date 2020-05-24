#include <stdio.h>
#include <string.h>

int main(void)
{
	char str[100];
	char hello[] = "Hello";
	char world[] = "world";

	strncpy(str, hello, sizeof(str));
	strcat(str, " ");
	strcat(str, world);
	strcat(str, ".\n");
	printf("%s", str);

	return 0;
}
