/*
	main.c
	
	Created	: 7/21/2020 12:07:21 PM
	Author	: eisendani 
*/
#include "AT89C51AC3.h"

void write_port(unsigned char this){
	P4 = this;
}

void main(void)
{
	/* Replace with your application code */
	unsigned char test = 0b11111111;
	while (1) 
	{
		write_port(test);
	}
}
