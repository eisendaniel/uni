//
// ECEN301LibSDCC.c
//
// Modified from phys340libkeil.c
//
// Created: 6/14/2019 9:55:21 AM
// Author : hamish

/*
	C library for the AT89C51AC3 microcontrollers (version 2017)
	Peripherals are to be plugged into the microcontroller as follows:
	Port0: LCD Data
	Port1: PWM output (Same port as PORTADC)
	Port2: Keypad or I/O Module
	Port3: DAC
	Port4: LCD Control
	PortADC: Motor Encoder input - Thermister input   	 
*/
#include "AT89C51AC3.h"
#include "ECEN301LibSDCC.h"
/* 
	variables
*/
__sfr	__at	0x80	DATA;
__sbit	__at	0xC0	RS	;
__sbit	__at	0xC1	RW	;
__sbit	__at	0xC2	EN	;
#define TRUE 1
#define FALSE 0
unsigned char posLCD;
/*
	Misc functions
*/
void delay(unsigned int time)
{
	unsigned int i;
	for(i=0;i<time;i++){
		
	}
}
/* 
	LCD functions
*/
void initLCD(){
	RS = 0;
	RW = 0;
	DATA = 0x30;
	EN = 1; delay(300); EN = 0; delay(100);
	EN = 1; delay(300); EN = 0; delay(100);
	EN = 1; delay(300); EN = 0; delay(100);
	
	DATA = 0x38;
	EN = 1; delay(100); EN = 0; delay(100); // function set
	DATA = 0x08;
	EN = 1; delay(300); EN = 0; delay(100); // on off control turn display off
	DATA = 0x01;
	EN = 1; delay(300); EN = 0; delay(100); // clear display
	DATA = 0x06;
	EN = 1; delay(300); EN = 0; delay(100); // entry mode set, increment, no shift
	DATA = 0x0C;
	EN = 1; delay(300); EN = 0; delay(100); // display on/off control, display on, no cursor, no blink
	posLCD = 0;
}

void writeCharLCD(char c){
	if(posLCD == 16){ // go to second line
		setLCDPos(0x10);
	}else if(posLCD == 32){
		setLCDPos(0);	// return to first line
	}
	RS = 1;
	RW = 0;
	DATA = c;
	EN = 1;
	delay(50);
	EN = 0;
	delay(50);
	posLCD++;
}

void writeLineLCD(char *s){
	static unsigned char i;
	for(i=0;i<32;i++){
		if(s[i] == 0){
			break;
		}
		writeCharLCD(s[i]);
	}
}

void clearLCD(){
	RS = 0;
	RW = 0;
	DATA = 0x01;
	EN = 1;
	delay(50);
	EN = 0;
	delay(100);
	posLCD = 0;
}

unsigned char getLCDPos(){
	return posLCD;
}

void setLCDPos(unsigned char p){
	if(posLCD < 32){
		posLCD = p;
		if(posLCD < 16){
			DATA = 0x80 + posLCD;
			RS = 0;
			RW = 0;
			EN = 1;
			delay(100);
			EN = 0;
			delay(50);
		}
		else{
			DATA = 0xC0 + posLCD - 16;
			RS = 0;
			RW = 0;
			EN = 1;
			delay(100);
			EN = 0;
			delay(50);
		}
	}
}
/* 
	keypad functions
*/
unsigned char sampleKeypad(){
	static unsigned char Key;
	// delay to slow this function down so it is obvious the students have used it
	//for(Key = 0; Key < 0xFF; Key++);		
	for(static unsigned char key = 0; key < 255; key++);
	P2_0 = TRUE;
	P2_1 = TRUE;
	P2_2 = TRUE;
	P2_3 = TRUE;
	Key = 13;
	
	P2_0 = FALSE;
	if(!P2_4){ 
		Key = 1;
	}
	if(!P2_5){
		Key = 2;
	}
	if(!P2_6){
		Key = 3;
	}
	P2_0 = TRUE;
	
	P2_1 = FALSE;
	if(!P2_4){
		Key = 4;
	}
	if(!P2_5){
		Key = 5;
	}
	if(!P2_6){
		Key = 6;
	}
	P2_1 = TRUE;
	
	P2_2 = FALSE;
	if(!P2_4){
		Key = 7;
	}
	if(!P2_5){
		Key = 8;
	}
	if(!P2_6){
		Key = 9;
	}
	P2_2 = TRUE;
	
	P2_3 = FALSE;
	if(!P2_4){
		Key = 10;
	}
	if(!P2_5){
		Key = 0;
	}
	if(!P2_6){
		Key = 12;
	}
	P2_3 = TRUE;
	
	return Key;
}
/* 
	adc functions
*/
int sampleADC(){
	static int sample = 0;
	ADCF |= 0x01;
	ADCON = 0x20;
	ADCON |= 0x08;
	while(ADCON & 0x10 != 0x10);
	ADCON &= 0xEF;
	sample = (ADDH << 2) + ADDL;
	return sample;
}
/*
	serial functions
*/
void initSerial(unsigned int baud){
	TMOD |= 0x20;
	TMOD &= 0x2F;
	SM0 = FALSE;
	SM1 = TRUE;
	PCON |= 0x80;
	
	baud = 62500/baud;
	TH1 = (unsigned char)(256 - baud);
	
	REN = TRUE;
	TR1 = TRUE; 
}

void writeCharSerial(char c){
	SBUF = c;
	while(TI == FALSE);
	TI = FALSE;
}

void writeLineSerial(char *s){
	unsigned char i = 0;
	while(s[i] != 0){
		writeCharSerial(s[i]);
		i++;
	}
	writeCharSerial(0x0D); // CR
	writeCharSerial(0x0A); // LF
	
}

char readCharSerial(){
	char serChar;
	while (RI == FALSE);
	serChar = SBUF;
	RI = FALSE;
	return serChar;
}

void readLineSerial(char *s, int max){
		unsigned char i = 0;
		char serChar;
		while(i < max){
			serChar = readCharSerial();
			if (serChar == 0x0D || serChar == 0x0A){
				s[i] = 0;
				break;
			}else{
				s[i] = serChar;
			}
			i++;
		}
		s[max] = 0;
}