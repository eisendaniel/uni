#include <stdio.h>
#include "AT89C51AC3.h"
#include "ECEN301LibSDCC.h"
/*
	timer clk is 2Mhz in X2 mode
	timer increment is 0.5uS (1/2Mhz)
	For a time delay of 100 uS the timer has to make 200 increments.
	2^8 = 256 is the maximum number of counts possible for a 8 bit timer.
	If the timer is started at 6, then the overflow time is 125uS (0.5*250) to get a 1mS value with x8 scale
*/

volatile unsigned long overflows = 0;

void ISR (void) __interrupt (TF0_VECTOR)
{	
	++overflows;
}

void timer_delay(unsigned long t) //t in mS
{
	overflows = 0;
	TR0 = 1; //turn on timer 0
	while(overflows/8 < t);
	TR0 = 0;
}

void main(void)
{
	IEN0 = 0b10000010; //enable interrupts all and TIMER0
	TMOD |= 0b00000010; //sets in 8bit mode
	
	TL0 = 0; //clear timer 8bit
	TH0 = 6; //preset auto-reload to 6, ie for 250 increments

	while (1) {
		P1_0 = 1;
		timer_delay(500);
		P1_0 = 0;
		timer_delay(500);
	}
}
