/*
	main.c
	
	Created	: 7/21/2020 10:37:15 AM
	Author	: eisendani 
*/
#include "AT89C51AC3.h"
#define true 1
#define false 0

void WriteToPort(unsigned char this){
	P1 = this;
}

void main(void)
{
	/* Replace with your application code */
	while (1) 
	{
		unsigned char send = P2;
		WriteToPort(send);
	}
}
