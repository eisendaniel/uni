/* 
	Header file for the Atmel AT89C51AC3 microcontroller
	Original Version: T89C51AC3 (Modified T89C51AC2 - SMF, VUW, Jase 2006, JE 2018)
	
	New Version: 	AT89C51AC3.h
	Revision 1:		Modified to enable compatibility with SDCC 
	Date:			3/4/2019 
	Author:			Hamish Colenso
*/

#ifndef AT89C51AC3_H
#define AT89C51AC3_H

/* BYTE addressable registers */
__sfr	__at	0x80	P0		;
__sfr	__at	0x81	SP		;
__sfr	__at	0x82	DPL		;
__sfr	__at	0x83	DPH		;
__sfr	__at	0x87	PCON	;
__sfr	__at	0x88	TCON	;
__sfr	__at	0x89	TMOD	;
__sfr	__at	0x8A	TL0		;
__sfr	__at	0x8B	TL1		;
__sfr	__at	0x8C	TH0		;
__sfr	__at	0x8D	TH1		;
__sfr	__at	0x8E	AUXR	;
__sfr	__at	0x8F	CKCON0	; 	// VUW addition - JE 2018
__sfr	__at	0x90	P1		;
__sfr	__at	0x98	SCON	;
__sfr	__at	0x99	SBUF	;
__sfr	__at	0x9F	CKCON1	; 	// VUW addition - JE 2018
__sfr	__at	0xA0	P2		;
__sfr	__at	0xA2	AUXR1	;
__sfr	__at	0xA6	WDTRST	;
__sfr	__at	0xA7	WDTPRG	;
__sfr	__at	0xA8	IEN0	;
__sfr	__at	0xA9	SADDR	;
__sfr	__at	0xB0	P3		;
__sfr	__at	0xB7	IPH0	;
__sfr	__at	0xB8	IPL0	;
__sfr	__at	0xB9	SADEN	;
__sfr	__at	0xC0	P4		;
__sfr	__at	0xC8	T2CON	;
__sfr	__at	0xC9	T2MOD	;
__sfr	__at	0xCA	RCAP2L	;
__sfr	__at	0xCB	RCAP2H	;
__sfr	__at	0xCC	TL2		;
__sfr	__at	0xCD	TH2		;
__sfr	__at	0xCE	CANEN1	;
__sfr	__at	0xCF	CANEN2	;
__sfr	__at	0xD0	PSW		;
__sfr	__at	0xD1	FCON	;
__sfr	__at	0xD2	EECON	;
__sfr	__at	0xD4	SPCON	; 	// added by Jase
__sfr	__at	0xD5	SPSCR	; 	// added by Jase
__sfr	__at	0xD6	SPDAT	; 	// added by Jase
__sfr	__at	0xD8	CCON	;
__sfr	__at	0xD9	CMOD	;
__sfr	__at	0xDA	CCAPM0	;
__sfr	__at	0xDB	CCAPM1	;
__sfr	__at	0xDC	CCAPM2	;
__sfr	__at	0xDD	CCAPM3	;
__sfr	__at	0xDE	CCAPM4	;
__sfr	__at	0xE0	ACC		;
__sfr	__at	0xE0	A		; 	// redefinition of ACC to A added by Hamish
__sfr	__at	0xE8	IEN1	;
__sfr	__at	0xE9	CL		;
__sfr	__at	0xEA	CCAP0L	;
__sfr	__at	0xEB	CCAP1L	;
__sfr	__at	0xEC	CCAP2L	;
__sfr	__at	0xED	CCAP3L	;
__sfr	__at	0xEE	CCAP4L	;
__sfr	__at	0xF0	B		;
__sfr	__at	0xF2	ADCLK	;
__sfr	__at	0xF3	ADCON	;
__sfr	__at	0xF4	ADDL	;
__sfr	__at	0xF5	ADDH	;
__sfr	__at	0xF6	ADCF	;
__sfr	__at	0xF7	IPH1	;
__sfr	__at	0xF8	IPL1	;
__sfr	__at	0xF9	CH		;
__sfr	__at	0xFA	CCAP0H	;
__sfr	__at	0xFB	CCAP1H	;
__sfr	__at	0xFC	CCAP2H	;
__sfr	__at	0xFD	CCAP3H	;
__sfr	__at	0xFE	CCAP4H	;

/* BIT addressable registers */

// Port 0
__sbit	__at	0x80	P0_0	;
__sbit	__at	0x81	P0_1	;
__sbit	__at	0x82	P0_2	;
__sbit	__at	0x83	P0_3	;
__sbit	__at	0x84	P0_4	;
__sbit	__at	0x85	P0_5	;
__sbit	__at	0x86	P0_6	;
__sbit	__at	0x87	P0_7	;
// Alternative Functions Port 0
__sbit	__at	0x80	AD0		;	// Changed to match the AT89C51AC3 Datasheet text (Hamish 2019)
__sbit	__at	0x81	AD1		;	// Changed to match the AT89C51AC3 Datasheet text (Hamish 2019)
__sbit	__at	0x82	AD2		;	// Changed to match the AT89C51AC3 Datasheet text (Hamish 2019)
__sbit	__at	0x83	AD3		;	// Changed to match the AT89C51AC3 Datasheet text (Hamish 2019)
__sbit	__at	0x84	AD4		;	// Changed to match the AT89C51AC3 Datasheet text (Hamish 2019)
__sbit	__at	0x85	AD5		;	// Changed to match the AT89C51AC3 Datasheet text (Hamish 2019)
__sbit	__at	0x86	AD6		;	// Changed to match the AT89C51AC3 Datasheet text (Hamish 2019)
__sbit	__at	0x87	AD7		;	// Changed to match the AT89C51AC3 Datasheet text (Hamish 2019)
// TCON
__sbit	__at	0x88	IT0		;
__sbit	__at	0x89	IE0		;
__sbit	__at	0x8A	IT1		;
__sbit	__at	0x8B	IE1		;
__sbit	__at	0x8C	TR0		;
__sbit	__at	0x8D	TF0		;
__sbit	__at	0x8E	TR1		;
__sbit	__at	0x8F	TF1		;
// Port 1
__sbit	__at	0x90	P1_0	;
__sbit	__at	0x91	P1_1	;
__sbit	__at	0x92	P1_2	;
__sbit	__at	0x93	P1_3	;
__sbit	__at	0x94	P1_4	;
__sbit	__at	0x95	P1_5	;
__sbit	__at	0x96	P1_6	;
__sbit	__at	0x97	P1_7	;
// Alternative Functions Port 1
__sbit	__at	0x90	T2		;
__sbit	__at	0x91	T2EX	;
__sbit	__at	0x92	ECI		;
__sbit	__at	0x93	CEX0	;
__sbit	__at	0x94	CEX1	;
__sbit	__at	0x95	CEX2	;
__sbit	__at	0x96	CEX3	;
__sbit	__at	0x97	CEX4	;
// SCON
__sbit	__at	0x98	RI		;
__sbit	__at	0x99	TI		;
__sbit	__at	0x9A	RB8		;
__sbit	__at	0x9B	TB8		;
__sbit	__at	0x9C	REN		;
__sbit	__at	0x9D	SM2		;
__sbit	__at	0x9E	SM1		;
__sbit	__at	0x9F	SM0		;
// Alternative Functions SCON
__sbit	__at	0x9F	FE		;
// Port 2
__sbit	__at	0xA0	P2_0	;
__sbit	__at	0xA1	P2_1	;
__sbit	__at	0xA2	P2_2	;
__sbit	__at	0xA3	P2_3	;
__sbit	__at	0xA4	P2_4	;
__sbit	__at	0xA5	P2_5	;
__sbit	__at	0xA6	P2_6	;
__sbit	__at	0xA7	P2_7	;
// Alternative Functions Port 2
__sbit	__at	0xA0	A8		;	// Changed to match the AT89C51AC3 Datasheet text (Hamish 2019)
__sbit	__at	0xA1	A9		;	// Changed to match the AT89C51AC3 Datasheet text (Hamish 2019)
__sbit	__at	0xA2	A10		;	// Changed to match the AT89C51AC3 Datasheet text (Hamish 2019)
__sbit	__at	0xA3	A11		;	// Changed to match the AT89C51AC3 Datasheet text (Hamish 2019)
__sbit	__at	0xA4	A12		;	// Changed to match the AT89C51AC3 Datasheet text (Hamish 2019)
__sbit	__at	0xA5	A13		;	// Changed to match the AT89C51AC3 Datasheet text (Hamish 2019)
__sbit	__at	0xA6	A14		;	// Changed to match the AT89C51AC3 Datasheet text (Hamish 2019)
__sbit	__at	0xA7	A15		;	// Changed to match the AT89C51AC3 Datasheet text (Hamish 2019)
// Interrupt Enable 0 IEN0
__sbit	__at	0xA8	EX0		;
__sbit	__at	0xA9	ET0		;
__sbit	__at	0xAA	EX1		;
__sbit	__at	0xAB	ET1		;
__sbit	__at	0xAC	ES		;
__sbit	__at	0xAD	ET2		;
__sbit	__at	0xAE	EC		;
__sbit	__at	0xAF	EA		;
// Port 3
__sbit	__at	0xB0	P3_0	;
__sbit	__at	0xB1	P3_1	;
__sbit	__at	0xB2	P3_2	;
__sbit	__at	0xB3	P3_3	;
__sbit	__at	0xB4	P3_4	;
__sbit	__at	0xB5	P3_5	;
__sbit	__at	0xB6	P3_6	;
__sbit	__at	0xB7	P3_7	;
// Alternative Functions Port 3
__sbit	__at	0xB0	RXD		;
__sbit	__at	0xB1	TXD		;
__sbit	__at	0xB2	INT0	;
__sbit	__at	0xB3	INT1	;
__sbit	__at	0xB4	T0		;
__sbit	__at	0xB5	T1		;
__sbit	__at	0xB6	WR		;
__sbit	__at	0xB7	RD		;
// Interrupt priority low register 0 IPL0
__sbit	__at	0xB8	PX0		;
__sbit	__at	0xB9	PT0		;
__sbit	__at	0xBA	PX1		;
__sbit	__at	0xBB	PT1		;
__sbit	__at	0xBC	PS		;
__sbit	__at	0xBD	PT2		;
__sbit	__at	0xBE	PPC		;
// Port 4
__sbit	__at	0xC0	P4_0	;
__sbit	__at	0xC1	P4_1	;
__sbit	__at	0xC2	P4_2	;
__sbit	__at	0xC3	P4_3	;
__sbit	__at	0xC4	P4_4	;
// Alternative Functions Port 4
__sbit	__at	0xC2	MISO	;
__sbit	__at	0xC3	SCK		;
__sbit	__at	0xC4	MOSI	;
// Timer 2 Control T2CON
__sbit	__at	0xC8	CPRL2	;
__sbit	__at	0xC9	CT2		;
__sbit	__at	0xCA	TR2		;
__sbit	__at	0xCB	EXEN2	;
__sbit	__at	0xCC	TCLK	;
__sbit	__at	0xCD	RCLK	;
__sbit	__at	0xCE	EXF2	;
__sbit	__at	0xCF	TF2		;
// Program Status Word PSW
__sbit	__at	0xD0	P		;
__sbit	__at	0xD1	F1		;
__sbit	__at	0xD2	OV		;
__sbit	__at	0xD3	RS0		;
__sbit	__at	0xD4	RS1		;
__sbit	__at	0xD5	F0		;
__sbit	__at	0xD6	AC		;
__sbit	__at	0xD7	CY		;
// Counter Control CCON
__sbit	__at	0xD8	CCF0	;
__sbit	__at	0xD9	CCF1	;
__sbit	__at	0xDA	CCF2	;
__sbit	__at	0xDB	CCF3	;
__sbit	__at	0xDC	CCF4	;
//__sbit	__at	0xDD		;
__sbit	__at	0xDE	CR		;
__sbit	__at	0xDF	CF		;
// Accumulator ACC
__sbit	__at	0xE0	ACC0	;
__sbit	__at	0xE1	ACC1	;
__sbit	__at	0xE2	ACC2	;
__sbit	__at	0xE3	ACC3	;
__sbit	__at	0xE4	ACC4	;
__sbit	__at	0xE5	ACC5	;
__sbit	__at	0xE6	ACC6	;
__sbit	__at	0xE7	ACC7	;
// Accumulator alternate definition
__sbit	__at	0xE0	A0		;
__sbit	__at	0xE1	A1		;
__sbit	__at	0xE2	A2		;
__sbit	__at	0xE3	A3		;
__sbit	__at	0xE4	A4		;
__sbit	__at	0xE5	A5		;
__sbit	__at	0xE6	A6		;
__sbit	__at	0xE7	A7		;
// Interrupt Enable 1 IEN1
__sbit	__at	0xE8	EADC	;
__sbit	__at	0xE9	ESPI	;	// VUW: Addition - JE 2018
// B Register
__sbit	__at	0xF0	B0		;
__sbit	__at	0xF1	B1		;
__sbit	__at	0xF2	B2		;
__sbit	__at	0xF3	B3		;
__sbit	__at	0xF4	B4		;
__sbit	__at	0xF5	B5		;
__sbit	__at	0xF6	B6		;
__sbit	__at	0xF7	B7		;
// Interrupt priority low register 1 IPL1
__sbit	__at	0xF9	PADCL	;
// Interrupt Vectors
// SDCC defines interrupt vectors as a decimal number
// to calculate the address of the interrupt vector
// address = ( number * 8 ) + 3;
#define	IE0_VECTOR	0				// 0x03 external interrupt 0
#define	TF0_VECTOR	1				// 0x0b timer 0
#define	IE1_VECTOR	2				// 0x13 external interrupt 1
#define	TF1_VECTOR	3				// 0x1b timer 1
#define	SI0_VECTOR	4				// 0x23 serial port 0
#define	TF2_VECTOR	5				// 0x2b timer 2
#define	PCA_VECTOR	6				// 0x33 programmable counter array
#define ADC_VECTOR	8				// 0x43 analogue to digital converter
#define SPI_VECTOR	10				// 0x53 serial peripherial interface
/*
#define	RESET	0
#define	EXTINT0	0x03
#define TIMER0	0x0B
#define	EXTINT1	0x13
#define	TIMER1	0x1B
#define	SERIAL	0x23
#define	TIMER2	0x2B
#define PCA	0x33
#define ADC	0x43
#define SPI	0x53 			// VUW: Addition //jase edition
*/
// BIT definitions for bits that are not directly accessible
// These are masks to the individual bits. It is incomplete.

/* PCON bits */
#define IDL             0x01
#define PD              0x02
#define GF0             0x04
#define GF1             0x08
#define SMOD            0x80

#define IDL_            0x01
#define PD_             0x02
#define GF0_            0x04
#define GF1_            0x08
#define SMOD_           0x80

/* TMOD bits */
#define M0_0            0x01
#define M1_0            0x02
#define C_T0            0x04
#define GATE0           0x08
#define M0_1            0x10
#define M1_1            0x20
#define C_T1            0x40
#define GATE1           0x80

#define M0_0_           0x01
#define M1_0_           0x02
#define C_T0_           0x04
#define GATE0_          0x08
#define M0_1_           0x10
#define M1_1_           0x20
#define C_T1_           0x40
#define GATE1_          0x80

#define T0_M0           0x01
#define T0_M1           0x02
#define T0_CT           0x04
#define T0_GATE         0x08
#define T1_M0           0x10
#define T1_M1           0x20
#define T1_CT           0x40
#define T1_GATE         0x80

#define T0_M0_          0x01
#define T0_M1_          0x02
#define T0_CT_          0x04
#define T0_GATE_        0x08
#define T1_M0_          0x10
#define T1_M1_          0x20
#define T1_CT_          0x40
#define T1_GATE_        0x80

#define T0_MASK         0x0F
#define T1_MASK         0xF0

#define T0_MASK_        0x0F
#define T1_MASK_        0xF0
// This needs additional registers added as the listing is incomplete.

#endif