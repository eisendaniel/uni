#include <stdio.h>
#include <string.h>

int main(void)
{
	char str[100];
	
	strncpy(str, "Hello\0world.\n", sizeof(str));
	printf("String length: %d\n", strlen(str));
	
	return 0;
}