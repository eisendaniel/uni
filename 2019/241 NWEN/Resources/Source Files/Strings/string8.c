#include <stdio.h>
#include <string.h>

int main(void)
{
	char s1[] = "World";
	char s2[] = "world";
	char s3[] = "world";
	
	int r1 = strcmp(s1, s2);
	int r2 = strcmp(s2, s1);
	int r3 = strcmp(s2, s3);
	printf("r1 = %d\n", r1);
	printf("r2 = %d\n", r2);
	printf("r3 = %d\n", r3);
	
	return 0;
}
