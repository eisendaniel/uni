/*
	main.c
	
	Created	: 7/21/2020 2:43:27 PM
	Author	: eisendani 
*/
#include "AT89C51AC3.h"
#include <math.h>

#define STEP 2048.0

void main(void)
{
	/* Replace with your application code */
	while (1)
	{
		for (int i = 0; i < STEP; ++i){
			int val = 127.0 * sinf(((2*PI)/STEP)*i) + 128.0;
			P1 = val;
		}
	}
}
