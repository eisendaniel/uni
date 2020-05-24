#include <stdio.h>
#include <string.h>

int main(void)
{
	char str[100];

	strcpy(str, "Hello world.\n");
	printf("%s", str);

	return 0;
}
