/*
	main.c
	
	Created	: 7/28/2020 10:41:52 AM
	Author	: eisendani 
*/
#include "AT89C51AC3.h"
#include "ECEN301LibSDCC.h"
#include <math.h>
#include <stdio.h>

/***  Function to sample an analog voltage  ********************************/

unsigned int Sample_ADC()
{
    static unsigned int sample = 0;
    ADCF = 0b00000001; //select input
    ADCON = 0b00000000; //clear control
    ADCON |= 0b01100000; //set psidle and enable ADC
    ADCON |= 0b00001000; //start

    ADCON &= 0b1101111; //bitmask clear the end of conversion flag
    sample = (ADDH << 2) + ADDL;
    return sample;
}

/**  Main Function  ********************************************************/

void main()
{
    char str[16];
    initLCD();
    while (1) {
        float reading = (Sample_ADC() * 3.3 / 1023.0);
        unsigned int upper = floorf(reading);
        unsigned int lower = floorf((reading - (float)upper) * 1000.0);
        sprintf(str, "V : %d.%d", upper, lower);
        writeLineLCD(str);
        ;
        delay(100000);
        clearLCD();
    }
}
