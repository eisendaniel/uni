/*
	main.c
	
	Created	: 7/28/2020 10:41:52 AM
	Author	: eisendani 
*/
#include "AT89C51AC3.h"
#include "ECEN301LibSDCC.h"
#include <stdio.h>
#include <math.h>

#define VREF 3.0

/***  Function to sample an analog voltage  ********************************/
float reading;
int upper, lower;

unsigned int Sample_ADC()
{
	static unsigned int sample = 0;
	ADCF  =  0b0000001; //select input
	ADCON =  0b1101000; //clear control (0),set psidle and enable ADC(110...). Start(00010...)
	ADCON &= 0b1101111;
	sample = (ADDH << 2) + ADDL;
	return sample;
}

/**  Main Function  ********************************************************/

void main()
{
	char str[32];
	initLCD();
	while (1) {
		reading = (float)Sample_ADC()*VREF / 1023.0;
		upper = (int)reading;
		lower = (int)((reading - (float)upper) * 100.0);
		sprintf(str, "V : %d.%d", upper, lower);
		writeLineLCD(str);;
		delay(100000);
		clearLCD();
		
	}
}

