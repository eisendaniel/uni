;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (MINGW64)
;--------------------------------------------------------
	.module ECEN301LibSDCC
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _EN
	.globl _RW
	.globl _RS
	.globl _PADCL
	.globl _B7
	.globl _B6
	.globl _B5
	.globl _B4
	.globl _B3
	.globl _B2
	.globl _B1
	.globl _B0
	.globl _ESPI
	.globl _EADC
	.globl _A7
	.globl _A6
	.globl _A5
	.globl _A4
	.globl _A3
	.globl _A2
	.globl _A1
	.globl _A0
	.globl _ACC7
	.globl _ACC6
	.globl _ACC5
	.globl _ACC4
	.globl _ACC3
	.globl _ACC2
	.globl _ACC1
	.globl _ACC0
	.globl _CF
	.globl _CR
	.globl _CCF4
	.globl _CCF3
	.globl _CCF2
	.globl _CCF1
	.globl _CCF0
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _CT2
	.globl _CPRL2
	.globl _MOSI
	.globl _SCK
	.globl _MISO
	.globl _P4_4
	.globl _P4_3
	.globl _P4_2
	.globl _P4_1
	.globl _P4_0
	.globl _PPC
	.globl _PT2
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _EC
	.globl _ET2
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _A15
	.globl _A14
	.globl _A13
	.globl _A12
	.globl _A11
	.globl _A10
	.globl _A9
	.globl _A8
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _FE
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _CEX4
	.globl _CEX3
	.globl _CEX2
	.globl _CEX1
	.globl _CEX0
	.globl _ECI
	.globl _T2EX
	.globl _T2
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _AD7
	.globl _AD6
	.globl _AD5
	.globl _AD4
	.globl _AD3
	.globl _AD2
	.globl _AD1
	.globl _AD0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _DATA
	.globl _CCAP4H
	.globl _CCAP3H
	.globl _CCAP2H
	.globl _CCAP1H
	.globl _CCAP0H
	.globl _CH
	.globl _IPL1
	.globl _IPH1
	.globl _ADCF
	.globl _ADDH
	.globl _ADDL
	.globl _ADCON
	.globl _ADCLK
	.globl _B
	.globl _CCAP4L
	.globl _CCAP3L
	.globl _CCAP2L
	.globl _CCAP1L
	.globl _CCAP0L
	.globl _CL
	.globl _IEN1
	.globl _A
	.globl _ACC
	.globl _CCAPM4
	.globl _CCAPM3
	.globl _CCAPM2
	.globl _CCAPM1
	.globl _CCAPM0
	.globl _CMOD
	.globl _CCON
	.globl _SPDAT
	.globl _SPSCR
	.globl _SPCON
	.globl _EECON
	.globl _FCON
	.globl _PSW
	.globl _CANEN2
	.globl _CANEN1
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2MOD
	.globl _T2CON
	.globl _P4
	.globl _SADEN
	.globl _IPL0
	.globl _IPH0
	.globl _P3
	.globl _SADDR
	.globl _IEN0
	.globl _WDTPRG
	.globl _WDTRST
	.globl _AUXR1
	.globl _P2
	.globl _CKCON1
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _CKCON0
	.globl _AUXR
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _readLineSerial_PARM_2
	.globl _posLCD
	.globl _delay
	.globl _initLCD
	.globl _writeCharLCD
	.globl _writeLineLCD
	.globl _clearLCD
	.globl _getLCDPos
	.globl _setLCDPos
	.globl _sampleKeypad
	.globl _sampleADC
	.globl _initSerial
	.globl _writeCharSerial
	.globl _writeLineSerial
	.globl _readCharSerial
	.globl _readLineSerial
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_AUXR	=	0x008e
_CKCON0	=	0x008f
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_CKCON1	=	0x009f
_P2	=	0x00a0
_AUXR1	=	0x00a2
_WDTRST	=	0x00a6
_WDTPRG	=	0x00a7
_IEN0	=	0x00a8
_SADDR	=	0x00a9
_P3	=	0x00b0
_IPH0	=	0x00b7
_IPL0	=	0x00b8
_SADEN	=	0x00b9
_P4	=	0x00c0
_T2CON	=	0x00c8
_T2MOD	=	0x00c9
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
_CANEN1	=	0x00ce
_CANEN2	=	0x00cf
_PSW	=	0x00d0
_FCON	=	0x00d1
_EECON	=	0x00d2
_SPCON	=	0x00d4
_SPSCR	=	0x00d5
_SPDAT	=	0x00d6
_CCON	=	0x00d8
_CMOD	=	0x00d9
_CCAPM0	=	0x00da
_CCAPM1	=	0x00db
_CCAPM2	=	0x00dc
_CCAPM3	=	0x00dd
_CCAPM4	=	0x00de
_ACC	=	0x00e0
_A	=	0x00e0
_IEN1	=	0x00e8
_CL	=	0x00e9
_CCAP0L	=	0x00ea
_CCAP1L	=	0x00eb
_CCAP2L	=	0x00ec
_CCAP3L	=	0x00ed
_CCAP4L	=	0x00ee
_B	=	0x00f0
_ADCLK	=	0x00f2
_ADCON	=	0x00f3
_ADDL	=	0x00f4
_ADDH	=	0x00f5
_ADCF	=	0x00f6
_IPH1	=	0x00f7
_IPL1	=	0x00f8
_CH	=	0x00f9
_CCAP0H	=	0x00fa
_CCAP1H	=	0x00fb
_CCAP2H	=	0x00fc
_CCAP3H	=	0x00fd
_CCAP4H	=	0x00fe
_DATA	=	0x0080
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_AD0	=	0x0080
_AD1	=	0x0081
_AD2	=	0x0082
_AD3	=	0x0083
_AD4	=	0x0084
_AD5	=	0x0085
_AD6	=	0x0086
_AD7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_T2	=	0x0090
_T2EX	=	0x0091
_ECI	=	0x0092
_CEX0	=	0x0093
_CEX1	=	0x0094
_CEX2	=	0x0095
_CEX3	=	0x0096
_CEX4	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_FE	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_A8	=	0x00a0
_A9	=	0x00a1
_A10	=	0x00a2
_A11	=	0x00a3
_A12	=	0x00a4
_A13	=	0x00a5
_A14	=	0x00a6
_A15	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_ET2	=	0x00ad
_EC	=	0x00ae
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_PT2	=	0x00bd
_PPC	=	0x00be
_P4_0	=	0x00c0
_P4_1	=	0x00c1
_P4_2	=	0x00c2
_P4_3	=	0x00c3
_P4_4	=	0x00c4
_MISO	=	0x00c2
_SCK	=	0x00c3
_MOSI	=	0x00c4
_CPRL2	=	0x00c8
_CT2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_CCF0	=	0x00d8
_CCF1	=	0x00d9
_CCF2	=	0x00da
_CCF3	=	0x00db
_CCF4	=	0x00dc
_CR	=	0x00de
_CF	=	0x00df
_ACC0	=	0x00e0
_ACC1	=	0x00e1
_ACC2	=	0x00e2
_ACC3	=	0x00e3
_ACC4	=	0x00e4
_ACC5	=	0x00e5
_ACC6	=	0x00e6
_ACC7	=	0x00e7
_A0	=	0x00e0
_A1	=	0x00e1
_A2	=	0x00e2
_A3	=	0x00e3
_A4	=	0x00e4
_A5	=	0x00e5
_A6	=	0x00e6
_A7	=	0x00e7
_EADC	=	0x00e8
_ESPI	=	0x00e9
_B0	=	0x00f0
_B1	=	0x00f1
_B2	=	0x00f2
_B3	=	0x00f3
_B4	=	0x00f4
_B5	=	0x00f5
_B6	=	0x00f6
_B7	=	0x00f7
_PADCL	=	0x00f9
_RS	=	0x00c0
_RW	=	0x00c1
_EN	=	0x00c2
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_posLCD::
	.ds 1
_writeLineLCD_i_65536_25:
	.ds 1
_sampleKeypad_Key_65536_36:
	.ds 1
_sampleKeypad_key_131072_37:
	.ds 1
_sampleADC_sample_65536_50:
	.ds 2
_readLineSerial_PARM_2:
	.ds 2
_readLineSerial_s_65536_59:
	.ds 3
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'sampleKeypad'
;------------------------------------------------------------
;Key                       Allocated with name '_sampleKeypad_Key_65536_36'
;key                       Allocated with name '_sampleKeypad_key_131072_37'
;------------------------------------------------------------
;	ECEN301LibSDCC.c:136: for(static unsigned char key = 0; key < 255; key++);
	mov	_sampleKeypad_key_131072_37,#0x00
;------------------------------------------------------------
;Allocation info for local variables in function 'sampleADC'
;------------------------------------------------------------
;sample                    Allocated with name '_sampleADC_sample_65536_50'
;------------------------------------------------------------
;	ECEN301LibSDCC.c:197: static int sample = 0;
	clr	a
	mov	_sampleADC_sample_65536_50,a
	mov	(_sampleADC_sample_65536_50 + 1),a
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;time                      Allocated to registers r6 r7 
;i                         Allocated to registers r4 r5 
;------------------------------------------------------------
;	ECEN301LibSDCC.c:34: void delay(unsigned int time)
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r6,dpl
	mov	r7,dph
;	ECEN301LibSDCC.c:37: for(i=0;i<time;i++){
	mov	r4,#0x00
	mov	r5,#0x00
00103$:
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	subb	a,r7
	jnc	00105$
	inc	r4
	cjne	r4,#0x00,00103$
	inc	r5
	sjmp	00103$
00105$:
;	ECEN301LibSDCC.c:40: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'initLCD'
;------------------------------------------------------------
;	ECEN301LibSDCC.c:44: void initLCD(){
;	-----------------------------------------
;	 function initLCD
;	-----------------------------------------
_initLCD:
;	ECEN301LibSDCC.c:45: RS = 0;
;	assignBit
	clr	_RS
;	ECEN301LibSDCC.c:46: RW = 0;
;	assignBit
	clr	_RW
;	ECEN301LibSDCC.c:47: DATA = 0x30;
	mov	_DATA,#0x30
;	ECEN301LibSDCC.c:48: EN = 1; delay(300); EN = 0; delay(100);
;	assignBit
	setb	_EN
	mov	dptr,#0x012c
	lcall	_delay
;	assignBit
	clr	_EN
	mov	dptr,#0x0064
	lcall	_delay
;	ECEN301LibSDCC.c:49: EN = 1; delay(300); EN = 0; delay(100);
;	assignBit
	setb	_EN
	mov	dptr,#0x012c
	lcall	_delay
;	assignBit
	clr	_EN
	mov	dptr,#0x0064
	lcall	_delay
;	ECEN301LibSDCC.c:50: EN = 1; delay(300); EN = 0; delay(100);
;	assignBit
	setb	_EN
	mov	dptr,#0x012c
	lcall	_delay
;	assignBit
	clr	_EN
	mov	dptr,#0x0064
	lcall	_delay
;	ECEN301LibSDCC.c:52: DATA = 0x38;
	mov	_DATA,#0x38
;	ECEN301LibSDCC.c:53: EN = 1; delay(100); EN = 0; delay(100); // function set
;	assignBit
	setb	_EN
	mov	dptr,#0x0064
	lcall	_delay
;	assignBit
	clr	_EN
	mov	dptr,#0x0064
	lcall	_delay
;	ECEN301LibSDCC.c:54: DATA = 0x08;
	mov	_DATA,#0x08
;	ECEN301LibSDCC.c:55: EN = 1; delay(300); EN = 0; delay(100); // on off control turn display off
;	assignBit
	setb	_EN
	mov	dptr,#0x012c
	lcall	_delay
;	assignBit
	clr	_EN
	mov	dptr,#0x0064
	lcall	_delay
;	ECEN301LibSDCC.c:56: DATA = 0x01;
	mov	_DATA,#0x01
;	ECEN301LibSDCC.c:57: EN = 1; delay(300); EN = 0; delay(100); // clear display
;	assignBit
	setb	_EN
	mov	dptr,#0x012c
	lcall	_delay
;	assignBit
	clr	_EN
	mov	dptr,#0x0064
	lcall	_delay
;	ECEN301LibSDCC.c:58: DATA = 0x06;
	mov	_DATA,#0x06
;	ECEN301LibSDCC.c:59: EN = 1; delay(300); EN = 0; delay(100); // entry mode set, increment, no shift
;	assignBit
	setb	_EN
	mov	dptr,#0x012c
	lcall	_delay
;	assignBit
	clr	_EN
	mov	dptr,#0x0064
	lcall	_delay
;	ECEN301LibSDCC.c:60: DATA = 0x0C;
	mov	_DATA,#0x0c
;	ECEN301LibSDCC.c:61: EN = 1; delay(300); EN = 0; delay(100); // display on/off control, display on, no cursor, no blink
;	assignBit
	setb	_EN
	mov	dptr,#0x012c
	lcall	_delay
;	assignBit
	clr	_EN
	mov	dptr,#0x0064
	lcall	_delay
;	ECEN301LibSDCC.c:62: posLCD = 0;
	mov	_posLCD,#0x00
;	ECEN301LibSDCC.c:63: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'writeCharLCD'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;------------------------------------------------------------
;	ECEN301LibSDCC.c:65: void writeCharLCD(char c){
;	-----------------------------------------
;	 function writeCharLCD
;	-----------------------------------------
_writeCharLCD:
	mov	r7,dpl
;	ECEN301LibSDCC.c:66: if(posLCD == 16){ // go to second line
	mov	a,#0x10
	cjne	a,_posLCD,00104$
;	ECEN301LibSDCC.c:67: setLCDPos(0x10);
	mov	dpl,#0x10
	push	ar7
	lcall	_setLCDPos
	pop	ar7
	sjmp	00105$
00104$:
;	ECEN301LibSDCC.c:68: }else if(posLCD == 32){
	mov	a,#0x20
	cjne	a,_posLCD,00105$
;	ECEN301LibSDCC.c:69: setLCDPos(0);	// return to first line
	mov	dpl,#0x00
	push	ar7
	lcall	_setLCDPos
	pop	ar7
00105$:
;	ECEN301LibSDCC.c:71: RS = 1;
;	assignBit
	setb	_RS
;	ECEN301LibSDCC.c:72: RW = 0;
;	assignBit
	clr	_RW
;	ECEN301LibSDCC.c:73: DATA = c;
	mov	_DATA,r7
;	ECEN301LibSDCC.c:74: EN = 1;
;	assignBit
	setb	_EN
;	ECEN301LibSDCC.c:75: delay(50);
	mov	dptr,#0x0032
	lcall	_delay
;	ECEN301LibSDCC.c:76: EN = 0;
;	assignBit
	clr	_EN
;	ECEN301LibSDCC.c:77: delay(50);
	mov	dptr,#0x0032
	lcall	_delay
;	ECEN301LibSDCC.c:78: posLCD++;
	inc	_posLCD
;	ECEN301LibSDCC.c:79: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'writeLineLCD'
;------------------------------------------------------------
;i                         Allocated with name '_writeLineLCD_i_65536_25'
;s                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	ECEN301LibSDCC.c:81: void writeLineLCD(char *s){
;	-----------------------------------------
;	 function writeLineLCD
;	-----------------------------------------
_writeLineLCD:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	ECEN301LibSDCC.c:83: for(i=0;i<32;i++){
	mov	_writeLineLCD_i_65536_25,#0x00
00104$:
;	ECEN301LibSDCC.c:84: if(s[i] == 0){
	mov	a,_writeLineLCD_i_65536_25
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r4,a
	jz	00106$
;	ECEN301LibSDCC.c:87: writeCharLCD(s[i]);
	mov	dpl,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_writeCharLCD
	pop	ar5
	pop	ar6
	pop	ar7
;	ECEN301LibSDCC.c:83: for(i=0;i<32;i++){
	inc	_writeLineLCD_i_65536_25
	mov	a,#0x100 - 0x20
	add	a,_writeLineLCD_i_65536_25
	jnc	00104$
00106$:
;	ECEN301LibSDCC.c:89: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'clearLCD'
;------------------------------------------------------------
;	ECEN301LibSDCC.c:91: void clearLCD(){
;	-----------------------------------------
;	 function clearLCD
;	-----------------------------------------
_clearLCD:
;	ECEN301LibSDCC.c:92: RS = 0;
;	assignBit
	clr	_RS
;	ECEN301LibSDCC.c:93: RW = 0;
;	assignBit
	clr	_RW
;	ECEN301LibSDCC.c:94: DATA = 0x01;
	mov	_DATA,#0x01
;	ECEN301LibSDCC.c:95: EN = 1;
;	assignBit
	setb	_EN
;	ECEN301LibSDCC.c:96: delay(50);
	mov	dptr,#0x0032
	lcall	_delay
;	ECEN301LibSDCC.c:97: EN = 0;
;	assignBit
	clr	_EN
;	ECEN301LibSDCC.c:98: delay(100);
	mov	dptr,#0x0064
	lcall	_delay
;	ECEN301LibSDCC.c:99: posLCD = 0;
	mov	_posLCD,#0x00
;	ECEN301LibSDCC.c:100: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getLCDPos'
;------------------------------------------------------------
;	ECEN301LibSDCC.c:102: unsigned char getLCDPos(){
;	-----------------------------------------
;	 function getLCDPos
;	-----------------------------------------
_getLCDPos:
;	ECEN301LibSDCC.c:103: return posLCD;
	mov	dpl,_posLCD
;	ECEN301LibSDCC.c:104: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setLCDPos'
;------------------------------------------------------------
;p                         Allocated to registers r7 
;------------------------------------------------------------
;	ECEN301LibSDCC.c:106: void setLCDPos(unsigned char p){
;	-----------------------------------------
;	 function setLCDPos
;	-----------------------------------------
_setLCDPos:
	mov	r7,dpl
;	ECEN301LibSDCC.c:107: if(posLCD < 32){
	mov	a,#0x100 - 0x20
	add	a,_posLCD
	jc	00106$
;	ECEN301LibSDCC.c:108: posLCD = p;
	mov	_posLCD,r7
;	ECEN301LibSDCC.c:109: if(posLCD < 16){
	mov	a,#0x100 - 0x10
	add	a,_posLCD
	jc	00102$
;	ECEN301LibSDCC.c:110: DATA = 0x80 + posLCD;
	mov	r7,_posLCD
	mov	a,#0x80
	add	a,r7
	mov	_DATA,a
;	ECEN301LibSDCC.c:111: RS = 0;
;	assignBit
	clr	_RS
;	ECEN301LibSDCC.c:112: RW = 0;
;	assignBit
	clr	_RW
;	ECEN301LibSDCC.c:113: EN = 1;
;	assignBit
	setb	_EN
;	ECEN301LibSDCC.c:114: delay(100);
	mov	dptr,#0x0064
	lcall	_delay
;	ECEN301LibSDCC.c:115: EN = 0;
;	assignBit
	clr	_EN
;	ECEN301LibSDCC.c:116: delay(50);
	mov	dptr,#0x0032
	ljmp	_delay
00102$:
;	ECEN301LibSDCC.c:119: DATA = 0xC0 + posLCD - 16;
	mov	r7,_posLCD
	mov	a,#0xb0
	add	a,r7
	mov	_DATA,a
;	ECEN301LibSDCC.c:120: RS = 0;
;	assignBit
	clr	_RS
;	ECEN301LibSDCC.c:121: RW = 0;
;	assignBit
	clr	_RW
;	ECEN301LibSDCC.c:122: EN = 1;
;	assignBit
	setb	_EN
;	ECEN301LibSDCC.c:123: delay(100);
	mov	dptr,#0x0064
	lcall	_delay
;	ECEN301LibSDCC.c:124: EN = 0;
;	assignBit
	clr	_EN
;	ECEN301LibSDCC.c:125: delay(50);
	mov	dptr,#0x0032
;	ECEN301LibSDCC.c:128: }
	ljmp	_delay
00106$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sampleKeypad'
;------------------------------------------------------------
;Key                       Allocated with name '_sampleKeypad_Key_65536_36'
;key                       Allocated with name '_sampleKeypad_key_131072_37'
;------------------------------------------------------------
;	ECEN301LibSDCC.c:132: unsigned char sampleKeypad(){
;	-----------------------------------------
;	 function sampleKeypad
;	-----------------------------------------
_sampleKeypad:
;	ECEN301LibSDCC.c:137: P2_0 = TRUE;
00127$:
;	ECEN301LibSDCC.c:136: for(static unsigned char key = 0; key < 255; key++);
	mov	a,#0x100 - 0xff
	add	a,_sampleKeypad_key_131072_37
	jc	00101$
	inc	_sampleKeypad_key_131072_37
	sjmp	00127$
00101$:
;	ECEN301LibSDCC.c:137: P2_0 = TRUE;
;	assignBit
	setb	_P2_0
;	ECEN301LibSDCC.c:138: P2_1 = TRUE;
;	assignBit
	setb	_P2_1
;	ECEN301LibSDCC.c:139: P2_2 = TRUE;
;	assignBit
	setb	_P2_2
;	ECEN301LibSDCC.c:140: P2_3 = TRUE;
;	assignBit
	setb	_P2_3
;	ECEN301LibSDCC.c:141: Key = 13;
	mov	_sampleKeypad_Key_65536_36,#0x0d
;	ECEN301LibSDCC.c:143: P2_0 = FALSE;
;	assignBit
	clr	_P2_0
;	ECEN301LibSDCC.c:144: if(!P2_4){ 
	jb	_P2_4,00103$
;	ECEN301LibSDCC.c:145: Key = 1;
	mov	_sampleKeypad_Key_65536_36,#0x01
00103$:
;	ECEN301LibSDCC.c:147: if(!P2_5){
	jb	_P2_5,00105$
;	ECEN301LibSDCC.c:148: Key = 2;
	mov	_sampleKeypad_Key_65536_36,#0x02
00105$:
;	ECEN301LibSDCC.c:150: if(!P2_6){
	jb	_P2_6,00107$
;	ECEN301LibSDCC.c:151: Key = 3;
	mov	_sampleKeypad_Key_65536_36,#0x03
00107$:
;	ECEN301LibSDCC.c:153: P2_0 = TRUE;
;	assignBit
	setb	_P2_0
;	ECEN301LibSDCC.c:155: P2_1 = FALSE;
;	assignBit
	clr	_P2_1
;	ECEN301LibSDCC.c:156: if(!P2_4){
	jb	_P2_4,00109$
;	ECEN301LibSDCC.c:157: Key = 4;
	mov	_sampleKeypad_Key_65536_36,#0x04
00109$:
;	ECEN301LibSDCC.c:159: if(!P2_5){
	jb	_P2_5,00111$
;	ECEN301LibSDCC.c:160: Key = 5;
	mov	_sampleKeypad_Key_65536_36,#0x05
00111$:
;	ECEN301LibSDCC.c:162: if(!P2_6){
	jb	_P2_6,00113$
;	ECEN301LibSDCC.c:163: Key = 6;
	mov	_sampleKeypad_Key_65536_36,#0x06
00113$:
;	ECEN301LibSDCC.c:165: P2_1 = TRUE;
;	assignBit
	setb	_P2_1
;	ECEN301LibSDCC.c:167: P2_2 = FALSE;
;	assignBit
	clr	_P2_2
;	ECEN301LibSDCC.c:168: if(!P2_4){
	jb	_P2_4,00115$
;	ECEN301LibSDCC.c:169: Key = 7;
	mov	_sampleKeypad_Key_65536_36,#0x07
00115$:
;	ECEN301LibSDCC.c:171: if(!P2_5){
	jb	_P2_5,00117$
;	ECEN301LibSDCC.c:172: Key = 8;
	mov	_sampleKeypad_Key_65536_36,#0x08
00117$:
;	ECEN301LibSDCC.c:174: if(!P2_6){
	jb	_P2_6,00119$
;	ECEN301LibSDCC.c:175: Key = 9;
	mov	_sampleKeypad_Key_65536_36,#0x09
00119$:
;	ECEN301LibSDCC.c:177: P2_2 = TRUE;
;	assignBit
	setb	_P2_2
;	ECEN301LibSDCC.c:179: P2_3 = FALSE;
;	assignBit
	clr	_P2_3
;	ECEN301LibSDCC.c:180: if(!P2_4){
	jb	_P2_4,00121$
;	ECEN301LibSDCC.c:181: Key = 10;
	mov	_sampleKeypad_Key_65536_36,#0x0a
00121$:
;	ECEN301LibSDCC.c:183: if(!P2_5){
	jb	_P2_5,00123$
;	ECEN301LibSDCC.c:184: Key = 0;
	mov	_sampleKeypad_Key_65536_36,#0x00
00123$:
;	ECEN301LibSDCC.c:186: if(!P2_6){
	jb	_P2_6,00125$
;	ECEN301LibSDCC.c:187: Key = 12;
	mov	_sampleKeypad_Key_65536_36,#0x0c
00125$:
;	ECEN301LibSDCC.c:189: P2_3 = TRUE;
;	assignBit
	setb	_P2_3
;	ECEN301LibSDCC.c:191: return Key;
	mov	dpl,_sampleKeypad_Key_65536_36
;	ECEN301LibSDCC.c:192: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sampleADC'
;------------------------------------------------------------
;sample                    Allocated with name '_sampleADC_sample_65536_50'
;------------------------------------------------------------
;	ECEN301LibSDCC.c:196: int sampleADC(){
;	-----------------------------------------
;	 function sampleADC
;	-----------------------------------------
_sampleADC:
;	ECEN301LibSDCC.c:198: ADCF |= 0x01;
	mov	r6,_ADCF
	orl	ar6,#0x01
	mov	_ADCF,r6
;	ECEN301LibSDCC.c:199: ADCON = 0x20;
	mov	_ADCON,#0x20
;	ECEN301LibSDCC.c:200: ADCON |= 0x08;
	mov	r6,_ADCON
	orl	ar6,#0x08
	mov	_ADCON,r6
;	ECEN301LibSDCC.c:201: while(ADCON & 0x10 != 0x10);
00101$:
	mov	a,_ADCON
	clr	a
	jnz	00101$
;	ECEN301LibSDCC.c:202: ADCON &= 0xEF;
	anl	_ADCON,#0xef
;	ECEN301LibSDCC.c:203: sample = (ADDH << 2) + ADDL;
	mov	r6,_ADDH
	mov	r7,#0x00
	mov	a,r6
	add	a,r6
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,r6
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	r4,_ADDL
	mov	r5,#0x00
	mov	a,r4
	add	a,r6
	mov	_sampleADC_sample_65536_50,a
	mov	a,r5
	addc	a,r7
	mov	(_sampleADC_sample_65536_50 + 1),a
;	ECEN301LibSDCC.c:204: return sample;
	mov	dpl,_sampleADC_sample_65536_50
	mov	dph,(_sampleADC_sample_65536_50 + 1)
;	ECEN301LibSDCC.c:205: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'initSerial'
;------------------------------------------------------------
;baud                      Allocated to registers r4 r5 
;------------------------------------------------------------
;	ECEN301LibSDCC.c:209: void initSerial(unsigned int baud){
;	-----------------------------------------
;	 function initSerial
;	-----------------------------------------
_initSerial:
	mov	r6,dpl
	mov	r7,dph
;	ECEN301LibSDCC.c:210: TMOD |= 0x20;
	mov	r4,_TMOD
	orl	ar4,#0x20
	mov	_TMOD,r4
;	ECEN301LibSDCC.c:211: TMOD &= 0x2F;
	anl	_TMOD,#0x2f
;	ECEN301LibSDCC.c:212: SM0 = FALSE;
;	assignBit
	clr	_SM0
;	ECEN301LibSDCC.c:213: SM1 = TRUE;
;	assignBit
	setb	_SM1
;	ECEN301LibSDCC.c:214: PCON |= 0x80;
	mov	r4,_PCON
	orl	ar4,#0x80
	mov	_PCON,r4
;	ECEN301LibSDCC.c:216: baud = 62500/baud;
	mov	__divslong_PARM_2,r6
	mov	(__divslong_PARM_2 + 1),r7
	mov	(__divslong_PARM_2 + 2),#0x00
	mov	(__divslong_PARM_2 + 3),#0x00
	mov	dptr,#0xf424
	clr	a
	mov	b,a
	lcall	__divslong
	mov	r4,dpl
;	ECEN301LibSDCC.c:217: TH1 = (unsigned char)(256 - baud);
	clr	c
	clr	a
	subb	a,r4
	mov	r4,a
	mov	_TH1,r4
;	ECEN301LibSDCC.c:219: REN = TRUE;
;	assignBit
	setb	_REN
;	ECEN301LibSDCC.c:220: TR1 = TRUE; 
;	assignBit
	setb	_TR1
;	ECEN301LibSDCC.c:221: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'writeCharSerial'
;------------------------------------------------------------
;c                         Allocated to registers 
;------------------------------------------------------------
;	ECEN301LibSDCC.c:223: void writeCharSerial(char c){
;	-----------------------------------------
;	 function writeCharSerial
;	-----------------------------------------
_writeCharSerial:
	mov	_SBUF,dpl
;	ECEN301LibSDCC.c:225: while(TI == FALSE);
00101$:
;	ECEN301LibSDCC.c:226: TI = FALSE;
;	assignBit
	jbc	_TI,00114$
	sjmp	00101$
00114$:
;	ECEN301LibSDCC.c:227: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'writeLineSerial'
;------------------------------------------------------------
;s                         Allocated to registers r5 r6 r7 
;i                         Allocated to registers r4 
;------------------------------------------------------------
;	ECEN301LibSDCC.c:229: void writeLineSerial(char *s){
;	-----------------------------------------
;	 function writeLineSerial
;	-----------------------------------------
_writeLineSerial:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	ECEN301LibSDCC.c:231: while(s[i] != 0){
	mov	r4,#0x00
00101$:
	mov	a,r4
	add	a,r5
	mov	r1,a
	clr	a
	addc	a,r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r3,a
	jz	00103$
;	ECEN301LibSDCC.c:232: writeCharSerial(s[i]);
	mov	dpl,r3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_writeCharSerial
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	ECEN301LibSDCC.c:233: i++;
	inc	r4
	sjmp	00101$
00103$:
;	ECEN301LibSDCC.c:235: writeCharSerial(0x0D); // CR
	mov	dpl,#0x0d
	lcall	_writeCharSerial
;	ECEN301LibSDCC.c:236: writeCharSerial(0x0A); // LF
	mov	dpl,#0x0a
;	ECEN301LibSDCC.c:238: }
	ljmp	_writeCharSerial
;------------------------------------------------------------
;Allocation info for local variables in function 'readCharSerial'
;------------------------------------------------------------
;serChar                   Allocated to registers 
;------------------------------------------------------------
;	ECEN301LibSDCC.c:240: char readCharSerial(){
;	-----------------------------------------
;	 function readCharSerial
;	-----------------------------------------
_readCharSerial:
;	ECEN301LibSDCC.c:242: while (RI == FALSE);
00101$:
	jnb	_RI,00101$
;	ECEN301LibSDCC.c:243: serChar = SBUF;
	mov	dpl,_SBUF
;	ECEN301LibSDCC.c:244: RI = FALSE;
;	assignBit
	clr	_RI
;	ECEN301LibSDCC.c:245: return serChar;
;	ECEN301LibSDCC.c:246: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'readLineSerial'
;------------------------------------------------------------
;max                       Allocated with name '_readLineSerial_PARM_2'
;s                         Allocated with name '_readLineSerial_s_65536_59'
;i                         Allocated to registers r4 
;serChar                   Allocated to registers r2 
;------------------------------------------------------------
;	ECEN301LibSDCC.c:248: void readLineSerial(char *s, int max){
;	-----------------------------------------
;	 function readLineSerial
;	-----------------------------------------
_readLineSerial:
	mov	_readLineSerial_s_65536_59,dpl
	mov	(_readLineSerial_s_65536_59 + 1),dph
	mov	(_readLineSerial_s_65536_59 + 2),b
;	ECEN301LibSDCC.c:249: unsigned char i = 0;
	mov	r4,#0x00
;	ECEN301LibSDCC.c:251: while(i < max){
	mov	r3,#0x00
00105$:
	mov	ar1,r3
	mov	r2,#0x00
	clr	c
	mov	a,r1
	subb	a,_readLineSerial_PARM_2
	mov	a,r2
	xrl	a,#0x80
	mov	b,(_readLineSerial_PARM_2 + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00107$
;	ECEN301LibSDCC.c:252: serChar = readCharSerial();
	push	ar4
	push	ar3
	lcall	_readCharSerial
	mov	r2,dpl
	pop	ar3
	pop	ar4
;	ECEN301LibSDCC.c:253: if (serChar == 0x0D || serChar == 0x0A){
	cjne	r2,#0x0d,00123$
	sjmp	00101$
00123$:
	cjne	r2,#0x0a,00102$
00101$:
;	ECEN301LibSDCC.c:254: s[i] = 0;
	mov	a,r4
	add	a,_readLineSerial_s_65536_59
	mov	r0,a
	clr	a
	addc	a,(_readLineSerial_s_65536_59 + 1)
	mov	r1,a
	mov	r7,(_readLineSerial_s_65536_59 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	clr	a
	lcall	__gptrput
;	ECEN301LibSDCC.c:255: break;
	sjmp	00107$
00102$:
;	ECEN301LibSDCC.c:257: s[i] = serChar;
	mov	a,r3
	add	a,_readLineSerial_s_65536_59
	mov	r5,a
	clr	a
	addc	a,(_readLineSerial_s_65536_59 + 1)
	mov	r6,a
	mov	r7,(_readLineSerial_s_65536_59 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
;	ECEN301LibSDCC.c:259: i++;
	inc	r3
	mov	ar4,r3
	sjmp	00105$
00107$:
;	ECEN301LibSDCC.c:261: s[max] = 0;
	mov	a,_readLineSerial_PARM_2
	add	a,_readLineSerial_s_65536_59
	mov	r5,a
	mov	a,(_readLineSerial_PARM_2 + 1)
	addc	a,(_readLineSerial_s_65536_59 + 1)
	mov	r6,a
	mov	r7,(_readLineSerial_s_65536_59 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
;	ECEN301LibSDCC.c:262: }
	ljmp	__gptrput
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
