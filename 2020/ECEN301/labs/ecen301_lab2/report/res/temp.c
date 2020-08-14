/*
	main.c
	
	Created	: 7/28/2020 10:41:52 AM
	Author	: eisendani 
*/
#include "AT89C51AC3.h"
#include "ECEN301LibSDCC.h"
#include <math.h>
#include <stdio.h>

#define VREF 3.0

/***  Function to sample an analog voltage  ********************************/
char str[16];
unsigned int arrNumbers[5] = { 0 };
unsigned int sample, upper, lower;
//unsigned int upperS, lowerS;
unsigned int sum = 0;
unsigned short pos = 0;
//int min = 1000, max=-1000;
float SD;

unsigned int movingAvg(unsigned int* ptrArrNumbers, unsigned int* ptrSum, unsigned short pos, unsigned int len, unsigned int nextNum)
{
    //Subtract the oldest number from the prev sum, add the new number
    *ptrSum = *ptrSum - ptrArrNumbers[pos] + nextNum;
    //Assign the nextNum to the position in the array
    ptrArrNumbers[pos] = nextNum;
    //return the average
    return *ptrSum / len;
}

unsigned int Sample_ADC()
{
    static unsigned int sample = 0;
    ADCF = 0b0000001; //select input
    ADCON = 0b1101000; //clear control (0),set psidle and enable ADC(110...). Start(00010...)
    ADCON &= 0b1101111; //bitmask clear the end of conversion flag
    sample = (ADDH << 2) + ADDL;
    return sample;
}

/**  Main Function  ********************************************************/

void main()
{
    initLCD();
    while (1) {
        sample = Sample_ADC();
        sample = movingAvg(arrNumbers, &sum, pos, 5, sample);
        pos++;
        if (pos >= 5) {
            pos = 0;
        }

        if (sample >= 669) {
            upper = (unsigned int)((float)sample - 421.0) / 6.4;
            lower = ((((float)sample - 421.0) / 6.4) - (float)upper) * 100.0;
        } else {
            upper = (unsigned int)((float)sample - 210.0) / 11.8;
            lower = ((((float)sample - 210.0) / 11.8) - (float)upper) * 100.0;
        }

        //for (int i=0; i<5 ; ++i){
        //SD += powf(arrNumbers[i] - sample, 2.0);
        //}
        //SD = SD / 10.0;
        //
        //upperS = (unsigned int)SD;
        //lowerS = (unsigned int)(SD-upperS)*100.0;

        sprintf(str, "T: %d.%d", upper, lower);
        ;
        writeLineLCD(str);
        ;
        delay(100000);
        clearLCD();
    }
}
