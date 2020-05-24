#include <stdio.h>
#include <string.h>

int main(void)
{
	char str[100];

	strncpy(str, "Hello world.\n", sizeof(str));
	printf("%s", str);

	return 0;
}
