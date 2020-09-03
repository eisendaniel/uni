/*
	main.c
	
	Created	: 8/4/2020 11:34:30 AM
	Author	: eisendani 
*/
#include "AT89C51AC3.h"
#include "ECEN301LibSDCC.h"
#include <stdint.h>
#include <stdio.h>

volatile unsigned int count = 0;

void ISR (void) __interrupt (0)
{
	count++;
}

void main(void)
{
	IEN0 =  0b10000001; //enable external interrupt 0
	IEN1 = 0; //disable SPI and ACD inter
	TCON =  0b00000001; //set to select falling edge active
	
	char str[16];
	
	initLCD();
	
	while (1)
	{
		clearLCD();
		sprintf(str, "%d", count);
		writeLineLCD(str);
		delay(10000);
	}
}
