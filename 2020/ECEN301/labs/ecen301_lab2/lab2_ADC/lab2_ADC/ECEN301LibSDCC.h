//
// ECEN301LibSDCC.h
//
// Created: 6/14/2019 9:55:30 AM
// Author : hamish

void delay(unsigned int time);
void initLCD(void);
void writeCharLCD(char c);
void writeLineLCD(char *s);
void clearLCD(void);
unsigned char getLCDPos(void);
void setLCDPos(unsigned char p);
unsigned char sampleKeypad(void);
int sampleADC(void);
void initSerial(unsigned int baud);
void writeCharSerial(char c);
void writeLineSerial(char *s);
char readCharSerial(void);
void readLineSerial(char *s, int max);
