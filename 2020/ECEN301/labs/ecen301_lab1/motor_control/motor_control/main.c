/*
	main.c
	
	Created	: 7/21/2020 4:39:06 PM
	Author	: eisendani 
*/
#include "AT89C51AC3.h"

void main(void)
{
	
	while (1) 
	{
		char con = P2;
		char vel = con & 0b01111111; //mask speed value 0-127
		
		if (con & 0b10000000)
		{
			P1 = 128+vel;
		} else {
			P1 = 128-vel; 
		}
	}
}


/*
a,b) forward (469mV) @ 4, back (-407mV) @ 5
c) 5V drives a 8.8V
*/