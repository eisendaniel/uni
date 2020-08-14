;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _Sample_ADC
	.globl _movingAvg
	.globl _sprintf
	.globl _clearLCD
	.globl _writeLineLCD
	.globl _initLCD
	.globl _delay
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
	.globl _movingAvg_PARM_5
	.globl _movingAvg_PARM_4
	.globl _movingAvg_PARM_3
	.globl _movingAvg_PARM_2
	.globl _SD
	.globl _pos
	.globl _sum
	.globl _lower
	.globl _upper
	.globl _sample
	.globl _arrNumbers
	.globl _str
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
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_str::
	.ds 16
_arrNumbers::
	.ds 10
_sample::
	.ds 2
_upper::
	.ds 2
_lower::
	.ds 2
_sum::
	.ds 2
_pos::
	.ds 2
_SD::
	.ds 4
_movingAvg_PARM_2:
	.ds 3
_movingAvg_PARM_3:
	.ds 2
_movingAvg_PARM_4:
	.ds 2
_movingAvg_PARM_5:
	.ds 2
_movingAvg_ptrArrNumbers_65536_52:
	.ds 3
_movingAvg_sloc0_1_0:
	.ds 2
_Sample_ADC_sample_65536_54:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

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
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;------------------------------------------------------------
;Allocation info for local variables in function 'Sample_ADC'
;------------------------------------------------------------
;sample                    Allocated with name '_Sample_ADC_sample_65536_54'
;------------------------------------------------------------
;	main.c:37: static unsigned int sample = 0;
	clr	a
	mov	_Sample_ADC_sample_65536_54,a
	mov	(_Sample_ADC_sample_65536_54 + 1),a
;	main.c:16: unsigned int arrNumbers[5] = {0};
	clr	a
	mov	(_arrNumbers + 0),a
	mov	(_arrNumbers + 1),a
;	main.c:19: unsigned int sum = 0;
	mov	_sum,a
	mov	(_sum + 1),a
;	main.c:20: unsigned short pos= 0;
	mov	_pos,a
	mov	(_pos + 1),a
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'movingAvg'
;------------------------------------------------------------
;ptrSum                    Allocated with name '_movingAvg_PARM_2'
;pos                       Allocated with name '_movingAvg_PARM_3'
;len                       Allocated with name '_movingAvg_PARM_4'
;nextNum                   Allocated with name '_movingAvg_PARM_5'
;ptrArrNumbers             Allocated with name '_movingAvg_ptrArrNumbers_65536_52'
;sloc0                     Allocated with name '_movingAvg_sloc0_1_0'
;------------------------------------------------------------
;	main.c:25: unsigned int movingAvg(unsigned int *ptrArrNumbers,unsigned int *ptrSum,unsigned short pos,unsigned int len,unsigned int nextNum)
;	-----------------------------------------
;	 function movingAvg
;	-----------------------------------------
_movingAvg:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	_movingAvg_ptrArrNumbers_65536_52,dpl
	mov	(_movingAvg_ptrArrNumbers_65536_52 + 1),dph
	mov	(_movingAvg_ptrArrNumbers_65536_52 + 2),b
;	main.c:28: *ptrSum = *ptrSum - ptrArrNumbers[pos] + nextNum;
	mov	r2,_movingAvg_PARM_2
	mov	r3,(_movingAvg_PARM_2 + 1)
	mov	r4,(_movingAvg_PARM_2 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	_movingAvg_sloc0_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_movingAvg_sloc0_1_0 + 1),a
	mov	a,_movingAvg_PARM_3
	add	a,_movingAvg_PARM_3
	mov	r6,a
	mov	a,(_movingAvg_PARM_3 + 1)
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,_movingAvg_ptrArrNumbers_65536_52
	mov	r6,a
	mov	a,r7
	addc	a,(_movingAvg_ptrArrNumbers_65536_52 + 1)
	mov	r7,a
	mov	r5,(_movingAvg_ptrArrNumbers_65536_52 + 2)
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	mov	a,_movingAvg_sloc0_1_0
	clr	c
	subb	a,r0
	mov	r0,a
	mov	a,(_movingAvg_sloc0_1_0 + 1)
	subb	a,r1
	mov	r1,a
	mov	a,_movingAvg_PARM_5
	add	a,r0
	mov	r0,a
	mov	a,(_movingAvg_PARM_5 + 1)
	addc	a,r1
	mov	r1,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
;	main.c:30: ptrArrNumbers[pos] = nextNum;
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	a,_movingAvg_PARM_5
	lcall	__gptrput
	inc	dptr
	mov	a,(_movingAvg_PARM_5 + 1)
	lcall	__gptrput
;	main.c:32: return *ptrSum / len;
	mov	__divuint_PARM_2,_movingAvg_PARM_4
	mov	(__divuint_PARM_2 + 1),(_movingAvg_PARM_4 + 1)
	mov	dpl,r0
	mov	dph,r1
;	main.c:33: }
	ljmp	__divuint
;------------------------------------------------------------
;Allocation info for local variables in function 'Sample_ADC'
;------------------------------------------------------------
;sample                    Allocated with name '_Sample_ADC_sample_65536_54'
;------------------------------------------------------------
;	main.c:35: unsigned int Sample_ADC()
;	-----------------------------------------
;	 function Sample_ADC
;	-----------------------------------------
_Sample_ADC:
;	main.c:38: ADCF  =  0b0000001; //select input
	mov	_ADCF,#0x01
;	main.c:39: ADCON =  0b1101000; //clear control (0),set psidle and enable ADC(110...). Start(00010...)
	mov	_ADCON,#0x68
;	main.c:40: ADCON &= 0b1101111;
	anl	_ADCON,#0x6f
;	main.c:41: sample = (ADDH << 2) + ADDL;
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
	mov	_Sample_ADC_sample_65536_54,a
	mov	a,r5
	addc	a,r7
	mov	(_Sample_ADC_sample_65536_54 + 1),a
;	main.c:42: return sample;
	mov	dpl,_Sample_ADC_sample_65536_54
	mov	dph,(_Sample_ADC_sample_65536_54 + 1)
;	main.c:43: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	main.c:48: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:50: initLCD();
	lcall	_initLCD
;	main.c:51: while (1) {
00107$:
;	main.c:52: sample = Sample_ADC();
	lcall	_Sample_ADC
	mov	_sample,dpl
	mov	(_sample + 1),dph
;	main.c:53: sample = movingAvg(arrNumbers, &sum, pos, 5, sample);
	mov	_movingAvg_PARM_2,#_sum
	mov	(_movingAvg_PARM_2 + 1),#0x00
	mov	(_movingAvg_PARM_2 + 2),#0x40
	mov	_movingAvg_PARM_3,_pos
	mov	(_movingAvg_PARM_3 + 1),(_pos + 1)
	mov	_movingAvg_PARM_4,#0x05
	mov	(_movingAvg_PARM_4 + 1),#0x00
	mov	_movingAvg_PARM_5,_sample
	mov	(_movingAvg_PARM_5 + 1),(_sample + 1)
	mov	dptr,#_arrNumbers
	mov	b,#0x40
	lcall	_movingAvg
	mov	_sample,dpl
	mov	(_sample + 1),dph
;	main.c:54: pos++;
	inc	_pos
	clr	a
	cjne	a,_pos,00123$
	inc	(_pos + 1)
00123$:
;	main.c:55: if (pos >= 5){
	clr	c
	mov	a,_pos
	subb	a,#0x05
	mov	a,(_pos + 1)
	subb	a,#0x00
	jc	00102$
;	main.c:56: pos = 0;
	clr	a
	mov	_pos,a
	mov	(_pos + 1),a
00102$:
;	main.c:59: if (sample >= 669){
	clr	c
	mov	a,_sample
	subb	a,#0x9d
	mov	a,(_sample + 1)
	subb	a,#0x02
	jnc	00125$
	ljmp	00104$
00125$:
;	main.c:60: upper = (unsigned int)((float)sample - 421.0) / 6.4;
	mov	dpl,_sample
	mov	dph,(_sample + 1)
	lcall	___uint2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	clr	a
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#0xd2
	push	acc
	mov	a,#0x43
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fssub
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	___fs2uint
	lcall	___uint2fs
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	a,#0xcd
	push	acc
	dec	a
	push	acc
	push	acc
	mov	a,#0x40
	push	acc
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	___fsdiv
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	___fs2uint
	mov	_upper,dpl
	mov	(_upper + 1),dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:61: lower = ((((float)sample - 421.0) / 6.4) - (float)upper) * 100.0;
	mov	a,#0xcd
	push	acc
	dec	a
	push	acc
	push	acc
	mov	a,#0x40
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsdiv
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,_upper
	mov	dph,(_upper + 1)
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	___uint2fs
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	push	ar0
	push	ar1
	push	ar2
	push	ar3
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fssub
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0x0000
	mov	b,#0xc8
	mov	a,#0x42
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fs2uint
	mov	_lower,dpl
	mov	(_lower + 1),dph
	ljmp	00105$
00104$:
;	main.c:63: upper = (unsigned int)((float)sample - 210.0) / 11.8;
	mov	dpl,_sample
	mov	dph,(_sample + 1)
	lcall	___uint2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	clr	a
	push	acc
	push	acc
	mov	a,#0x52
	push	acc
	mov	a,#0x43
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fssub
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	___fs2uint
	lcall	___uint2fs
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	a,#0xcd
	push	acc
	dec	a
	push	acc
	mov	a,#0x3c
	push	acc
	mov	a,#0x41
	push	acc
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	___fsdiv
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	___fs2uint
	mov	_upper,dpl
	mov	(_upper + 1),dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:64: lower = ((((float)sample - 210.0) / 11.8) - (float)upper) * 100.0;
	mov	a,#0xcd
	push	acc
	dec	a
	push	acc
	mov	a,#0x3c
	push	acc
	mov	a,#0x41
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsdiv
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,_upper
	mov	dph,(_upper + 1)
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	___uint2fs
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	push	ar0
	push	ar1
	push	ar2
	push	ar3
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fssub
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0x0000
	mov	b,#0xc8
	mov	a,#0x42
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fs2uint
	mov	_lower,dpl
	mov	(_lower + 1),dph
00105$:
;	main.c:77: sprintf(str, "T: %d.%d", upper, lower);;
	push	_lower
	push	(_lower + 1)
	push	_upper
	push	(_upper + 1)
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#_str
	push	acc
	mov	a,#(_str >> 8)
	push	acc
	mov	a,#0x40
	push	acc
	lcall	_sprintf
	mov	a,sp
	add	a,#0xf6
	mov	sp,a
;	main.c:78: writeLineLCD(str);;
	mov	dptr,#_str
	mov	b,#0x40
	lcall	_writeLineLCD
;	main.c:79: delay(100000);
	mov	dptr,#0x86a0
	lcall	_delay
;	main.c:80: clearLCD();
	lcall	_clearLCD
;	main.c:83: }
	ljmp	00107$
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "T: %d.%d"
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
