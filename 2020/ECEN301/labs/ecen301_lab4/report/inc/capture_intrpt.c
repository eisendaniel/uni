#include <stdio.h>
#include "AT89C51AC3.h"
#include "ECEN301LibSDCC.h"

#define REVN 480.0
#define CLK 1000000.0

volatile unsigned int curr_val;

void ISR (void) __interrupt (PCA_VECTOR)
{
	
	P1_0 = !P1_0; //debug toggle to show 
	curr_val = (CCAP0H << 8) | CCAP0L; //read the timer value
	CCON &= 0b11111110; //clear flag 
	
	CH = 0; //reset the values
	CL = 0;
}

void main(void)
{
	IEN0 =   0b11000000; //enable interrupts all and PCA
	//setup capture
	CCON =   0b01000000; //set CR to turn in PCA timer
	CCAPM0 = 0b00110001; //set to double edge trigger (match encoder output), and enable CCF0 intrpt bit
	
	initLCD();
	char str[16];
	while (1) {
		/*	Encoder has 480 holes per rev (REVN) that trigger the interrupt 
			Clock speed is at 1Mhz so clock time is 1/1Mhz in seconds (1/60 to get to minutes)
			curr_val stores the timer count at the time of interrupt*/
		clearLCD();
		unsigned int rev_m = (60.0 / (2.0*REVN*(float)curr_val*(1.0/CLK)))*100.0; 
		sprintf(str, "RPM: %u.%u", rev_m/100, rev_m%100);
		writeLineLCD(str);
		delay(10000);
	}
}
