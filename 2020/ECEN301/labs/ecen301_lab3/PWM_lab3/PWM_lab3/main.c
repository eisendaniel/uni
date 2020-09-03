/*
	main.c
	
	Created	: 8/4/2020 10:07:46 AM
	Author	: eisendani 
*/
#include "AT89C51AC3.h"

void main(void)
{
	CR = 1;
	CCAPM0 |= 0b01000010;
	CCAP0H = 128;
	while (1) 
	{
		CCAP0H = P0;
	}
}
