/*
	main.c
	
	Created	: 7/28/2020 10:03:53 AM
	Author	: eisendani 
*/

/*
Port0: LCD Data
Port1: PWM output (Same port as PORTADC)
Port2: Keypad or I/O Module
Port3: DAC
Port4: LCD Control
PortADC: Motor Encoder input - Thermister input

*/
#include "AT89C51AC3.h"
#include "ECEN301LibSDCC.h"
#include <stdio.h>

void main(void)
{
    char str[32];
    sprintf(str, "hello pineapples %d", 128);

    initLCD();
    writeLineLCD(str);

    unsigned int i = 0;
    while (1) {
        clearLCD();
        i++;
        sprintf(str, "%d", i);
        writeLineLCD(str);
        delay(10000);
    }
}
