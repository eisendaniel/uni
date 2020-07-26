/*
	main.c
	
	Created	: 7/21/2020 12:30:39 PM
	Author	: eisendani 
*/
#include "AT89C51AC3.h"
#include "ECEN301LibSDCC.h"

void main()
{
	unsigned char key;
	while (1)
	{
		key = sampleKeypad();
		P1 = key;
	}
}