                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module ECEN301LibSDCC
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _EN
                                     12 	.globl _RW
                                     13 	.globl _RS
                                     14 	.globl _PADCL
                                     15 	.globl _B7
                                     16 	.globl _B6
                                     17 	.globl _B5
                                     18 	.globl _B4
                                     19 	.globl _B3
                                     20 	.globl _B2
                                     21 	.globl _B1
                                     22 	.globl _B0
                                     23 	.globl _ESPI
                                     24 	.globl _EADC
                                     25 	.globl _A7
                                     26 	.globl _A6
                                     27 	.globl _A5
                                     28 	.globl _A4
                                     29 	.globl _A3
                                     30 	.globl _A2
                                     31 	.globl _A1
                                     32 	.globl _A0
                                     33 	.globl _ACC7
                                     34 	.globl _ACC6
                                     35 	.globl _ACC5
                                     36 	.globl _ACC4
                                     37 	.globl _ACC3
                                     38 	.globl _ACC2
                                     39 	.globl _ACC1
                                     40 	.globl _ACC0
                                     41 	.globl _CF
                                     42 	.globl _CR
                                     43 	.globl _CCF4
                                     44 	.globl _CCF3
                                     45 	.globl _CCF2
                                     46 	.globl _CCF1
                                     47 	.globl _CCF0
                                     48 	.globl _CY
                                     49 	.globl _AC
                                     50 	.globl _F0
                                     51 	.globl _RS1
                                     52 	.globl _RS0
                                     53 	.globl _OV
                                     54 	.globl _F1
                                     55 	.globl _P
                                     56 	.globl _TF2
                                     57 	.globl _EXF2
                                     58 	.globl _RCLK
                                     59 	.globl _TCLK
                                     60 	.globl _EXEN2
                                     61 	.globl _TR2
                                     62 	.globl _CT2
                                     63 	.globl _CPRL2
                                     64 	.globl _MOSI
                                     65 	.globl _SCK
                                     66 	.globl _MISO
                                     67 	.globl _P4_4
                                     68 	.globl _P4_3
                                     69 	.globl _P4_2
                                     70 	.globl _P4_1
                                     71 	.globl _P4_0
                                     72 	.globl _PPC
                                     73 	.globl _PT2
                                     74 	.globl _PS
                                     75 	.globl _PT1
                                     76 	.globl _PX1
                                     77 	.globl _PT0
                                     78 	.globl _PX0
                                     79 	.globl _RD
                                     80 	.globl _WR
                                     81 	.globl _T1
                                     82 	.globl _T0
                                     83 	.globl _INT1
                                     84 	.globl _INT0
                                     85 	.globl _TXD
                                     86 	.globl _RXD
                                     87 	.globl _P3_7
                                     88 	.globl _P3_6
                                     89 	.globl _P3_5
                                     90 	.globl _P3_4
                                     91 	.globl _P3_3
                                     92 	.globl _P3_2
                                     93 	.globl _P3_1
                                     94 	.globl _P3_0
                                     95 	.globl _EA
                                     96 	.globl _EC
                                     97 	.globl _ET2
                                     98 	.globl _ES
                                     99 	.globl _ET1
                                    100 	.globl _EX1
                                    101 	.globl _ET0
                                    102 	.globl _EX0
                                    103 	.globl _A15
                                    104 	.globl _A14
                                    105 	.globl _A13
                                    106 	.globl _A12
                                    107 	.globl _A11
                                    108 	.globl _A10
                                    109 	.globl _A9
                                    110 	.globl _A8
                                    111 	.globl _P2_7
                                    112 	.globl _P2_6
                                    113 	.globl _P2_5
                                    114 	.globl _P2_4
                                    115 	.globl _P2_3
                                    116 	.globl _P2_2
                                    117 	.globl _P2_1
                                    118 	.globl _P2_0
                                    119 	.globl _FE
                                    120 	.globl _SM0
                                    121 	.globl _SM1
                                    122 	.globl _SM2
                                    123 	.globl _REN
                                    124 	.globl _TB8
                                    125 	.globl _RB8
                                    126 	.globl _TI
                                    127 	.globl _RI
                                    128 	.globl _CEX4
                                    129 	.globl _CEX3
                                    130 	.globl _CEX2
                                    131 	.globl _CEX1
                                    132 	.globl _CEX0
                                    133 	.globl _ECI
                                    134 	.globl _T2EX
                                    135 	.globl _T2
                                    136 	.globl _P1_7
                                    137 	.globl _P1_6
                                    138 	.globl _P1_5
                                    139 	.globl _P1_4
                                    140 	.globl _P1_3
                                    141 	.globl _P1_2
                                    142 	.globl _P1_1
                                    143 	.globl _P1_0
                                    144 	.globl _TF1
                                    145 	.globl _TR1
                                    146 	.globl _TF0
                                    147 	.globl _TR0
                                    148 	.globl _IE1
                                    149 	.globl _IT1
                                    150 	.globl _IE0
                                    151 	.globl _IT0
                                    152 	.globl _AD7
                                    153 	.globl _AD6
                                    154 	.globl _AD5
                                    155 	.globl _AD4
                                    156 	.globl _AD3
                                    157 	.globl _AD2
                                    158 	.globl _AD1
                                    159 	.globl _AD0
                                    160 	.globl _P0_7
                                    161 	.globl _P0_6
                                    162 	.globl _P0_5
                                    163 	.globl _P0_4
                                    164 	.globl _P0_3
                                    165 	.globl _P0_2
                                    166 	.globl _P0_1
                                    167 	.globl _P0_0
                                    168 	.globl _DATA
                                    169 	.globl _CCAP4H
                                    170 	.globl _CCAP3H
                                    171 	.globl _CCAP2H
                                    172 	.globl _CCAP1H
                                    173 	.globl _CCAP0H
                                    174 	.globl _CH
                                    175 	.globl _IPL1
                                    176 	.globl _IPH1
                                    177 	.globl _ADCF
                                    178 	.globl _ADDH
                                    179 	.globl _ADDL
                                    180 	.globl _ADCON
                                    181 	.globl _ADCLK
                                    182 	.globl _B
                                    183 	.globl _CCAP4L
                                    184 	.globl _CCAP3L
                                    185 	.globl _CCAP2L
                                    186 	.globl _CCAP1L
                                    187 	.globl _CCAP0L
                                    188 	.globl _CL
                                    189 	.globl _IEN1
                                    190 	.globl _A
                                    191 	.globl _ACC
                                    192 	.globl _CCAPM4
                                    193 	.globl _CCAPM3
                                    194 	.globl _CCAPM2
                                    195 	.globl _CCAPM1
                                    196 	.globl _CCAPM0
                                    197 	.globl _CMOD
                                    198 	.globl _CCON
                                    199 	.globl _SPDAT
                                    200 	.globl _SPSCR
                                    201 	.globl _SPCON
                                    202 	.globl _EECON
                                    203 	.globl _FCON
                                    204 	.globl _PSW
                                    205 	.globl _CANEN2
                                    206 	.globl _CANEN1
                                    207 	.globl _TH2
                                    208 	.globl _TL2
                                    209 	.globl _RCAP2H
                                    210 	.globl _RCAP2L
                                    211 	.globl _T2MOD
                                    212 	.globl _T2CON
                                    213 	.globl _P4
                                    214 	.globl _SADEN
                                    215 	.globl _IPL0
                                    216 	.globl _IPH0
                                    217 	.globl _P3
                                    218 	.globl _SADDR
                                    219 	.globl _IEN0
                                    220 	.globl _WDTPRG
                                    221 	.globl _WDTRST
                                    222 	.globl _AUXR1
                                    223 	.globl _P2
                                    224 	.globl _CKCON1
                                    225 	.globl _SBUF
                                    226 	.globl _SCON
                                    227 	.globl _P1
                                    228 	.globl _CKCON0
                                    229 	.globl _AUXR
                                    230 	.globl _TH1
                                    231 	.globl _TH0
                                    232 	.globl _TL1
                                    233 	.globl _TL0
                                    234 	.globl _TMOD
                                    235 	.globl _TCON
                                    236 	.globl _PCON
                                    237 	.globl _DPH
                                    238 	.globl _DPL
                                    239 	.globl _SP
                                    240 	.globl _P0
                                    241 	.globl _readLineSerial_PARM_2
                                    242 	.globl _posLCD
                                    243 	.globl _delay
                                    244 	.globl _initLCD
                                    245 	.globl _writeCharLCD
                                    246 	.globl _writeLineLCD
                                    247 	.globl _clearLCD
                                    248 	.globl _getLCDPos
                                    249 	.globl _setLCDPos
                                    250 	.globl _sampleKeypad
                                    251 	.globl _sampleADC
                                    252 	.globl _initSerial
                                    253 	.globl _writeCharSerial
                                    254 	.globl _writeLineSerial
                                    255 	.globl _readCharSerial
                                    256 	.globl _readLineSerial
                                    257 ;--------------------------------------------------------
                                    258 ; special function registers
                                    259 ;--------------------------------------------------------
                                    260 	.area RSEG    (ABS,DATA)
      000000                        261 	.org 0x0000
                           000080   262 _P0	=	0x0080
                           000081   263 _SP	=	0x0081
                           000082   264 _DPL	=	0x0082
                           000083   265 _DPH	=	0x0083
                           000087   266 _PCON	=	0x0087
                           000088   267 _TCON	=	0x0088
                           000089   268 _TMOD	=	0x0089
                           00008A   269 _TL0	=	0x008a
                           00008B   270 _TL1	=	0x008b
                           00008C   271 _TH0	=	0x008c
                           00008D   272 _TH1	=	0x008d
                           00008E   273 _AUXR	=	0x008e
                           00008F   274 _CKCON0	=	0x008f
                           000090   275 _P1	=	0x0090
                           000098   276 _SCON	=	0x0098
                           000099   277 _SBUF	=	0x0099
                           00009F   278 _CKCON1	=	0x009f
                           0000A0   279 _P2	=	0x00a0
                           0000A2   280 _AUXR1	=	0x00a2
                           0000A6   281 _WDTRST	=	0x00a6
                           0000A7   282 _WDTPRG	=	0x00a7
                           0000A8   283 _IEN0	=	0x00a8
                           0000A9   284 _SADDR	=	0x00a9
                           0000B0   285 _P3	=	0x00b0
                           0000B7   286 _IPH0	=	0x00b7
                           0000B8   287 _IPL0	=	0x00b8
                           0000B9   288 _SADEN	=	0x00b9
                           0000C0   289 _P4	=	0x00c0
                           0000C8   290 _T2CON	=	0x00c8
                           0000C9   291 _T2MOD	=	0x00c9
                           0000CA   292 _RCAP2L	=	0x00ca
                           0000CB   293 _RCAP2H	=	0x00cb
                           0000CC   294 _TL2	=	0x00cc
                           0000CD   295 _TH2	=	0x00cd
                           0000CE   296 _CANEN1	=	0x00ce
                           0000CF   297 _CANEN2	=	0x00cf
                           0000D0   298 _PSW	=	0x00d0
                           0000D1   299 _FCON	=	0x00d1
                           0000D2   300 _EECON	=	0x00d2
                           0000D4   301 _SPCON	=	0x00d4
                           0000D5   302 _SPSCR	=	0x00d5
                           0000D6   303 _SPDAT	=	0x00d6
                           0000D8   304 _CCON	=	0x00d8
                           0000D9   305 _CMOD	=	0x00d9
                           0000DA   306 _CCAPM0	=	0x00da
                           0000DB   307 _CCAPM1	=	0x00db
                           0000DC   308 _CCAPM2	=	0x00dc
                           0000DD   309 _CCAPM3	=	0x00dd
                           0000DE   310 _CCAPM4	=	0x00de
                           0000E0   311 _ACC	=	0x00e0
                           0000E0   312 _A	=	0x00e0
                           0000E8   313 _IEN1	=	0x00e8
                           0000E9   314 _CL	=	0x00e9
                           0000EA   315 _CCAP0L	=	0x00ea
                           0000EB   316 _CCAP1L	=	0x00eb
                           0000EC   317 _CCAP2L	=	0x00ec
                           0000ED   318 _CCAP3L	=	0x00ed
                           0000EE   319 _CCAP4L	=	0x00ee
                           0000F0   320 _B	=	0x00f0
                           0000F2   321 _ADCLK	=	0x00f2
                           0000F3   322 _ADCON	=	0x00f3
                           0000F4   323 _ADDL	=	0x00f4
                           0000F5   324 _ADDH	=	0x00f5
                           0000F6   325 _ADCF	=	0x00f6
                           0000F7   326 _IPH1	=	0x00f7
                           0000F8   327 _IPL1	=	0x00f8
                           0000F9   328 _CH	=	0x00f9
                           0000FA   329 _CCAP0H	=	0x00fa
                           0000FB   330 _CCAP1H	=	0x00fb
                           0000FC   331 _CCAP2H	=	0x00fc
                           0000FD   332 _CCAP3H	=	0x00fd
                           0000FE   333 _CCAP4H	=	0x00fe
                           000080   334 _DATA	=	0x0080
                                    335 ;--------------------------------------------------------
                                    336 ; special function bits
                                    337 ;--------------------------------------------------------
                                    338 	.area RSEG    (ABS,DATA)
      000000                        339 	.org 0x0000
                           000080   340 _P0_0	=	0x0080
                           000081   341 _P0_1	=	0x0081
                           000082   342 _P0_2	=	0x0082
                           000083   343 _P0_3	=	0x0083
                           000084   344 _P0_4	=	0x0084
                           000085   345 _P0_5	=	0x0085
                           000086   346 _P0_6	=	0x0086
                           000087   347 _P0_7	=	0x0087
                           000080   348 _AD0	=	0x0080
                           000081   349 _AD1	=	0x0081
                           000082   350 _AD2	=	0x0082
                           000083   351 _AD3	=	0x0083
                           000084   352 _AD4	=	0x0084
                           000085   353 _AD5	=	0x0085
                           000086   354 _AD6	=	0x0086
                           000087   355 _AD7	=	0x0087
                           000088   356 _IT0	=	0x0088
                           000089   357 _IE0	=	0x0089
                           00008A   358 _IT1	=	0x008a
                           00008B   359 _IE1	=	0x008b
                           00008C   360 _TR0	=	0x008c
                           00008D   361 _TF0	=	0x008d
                           00008E   362 _TR1	=	0x008e
                           00008F   363 _TF1	=	0x008f
                           000090   364 _P1_0	=	0x0090
                           000091   365 _P1_1	=	0x0091
                           000092   366 _P1_2	=	0x0092
                           000093   367 _P1_3	=	0x0093
                           000094   368 _P1_4	=	0x0094
                           000095   369 _P1_5	=	0x0095
                           000096   370 _P1_6	=	0x0096
                           000097   371 _P1_7	=	0x0097
                           000090   372 _T2	=	0x0090
                           000091   373 _T2EX	=	0x0091
                           000092   374 _ECI	=	0x0092
                           000093   375 _CEX0	=	0x0093
                           000094   376 _CEX1	=	0x0094
                           000095   377 _CEX2	=	0x0095
                           000096   378 _CEX3	=	0x0096
                           000097   379 _CEX4	=	0x0097
                           000098   380 _RI	=	0x0098
                           000099   381 _TI	=	0x0099
                           00009A   382 _RB8	=	0x009a
                           00009B   383 _TB8	=	0x009b
                           00009C   384 _REN	=	0x009c
                           00009D   385 _SM2	=	0x009d
                           00009E   386 _SM1	=	0x009e
                           00009F   387 _SM0	=	0x009f
                           00009F   388 _FE	=	0x009f
                           0000A0   389 _P2_0	=	0x00a0
                           0000A1   390 _P2_1	=	0x00a1
                           0000A2   391 _P2_2	=	0x00a2
                           0000A3   392 _P2_3	=	0x00a3
                           0000A4   393 _P2_4	=	0x00a4
                           0000A5   394 _P2_5	=	0x00a5
                           0000A6   395 _P2_6	=	0x00a6
                           0000A7   396 _P2_7	=	0x00a7
                           0000A0   397 _A8	=	0x00a0
                           0000A1   398 _A9	=	0x00a1
                           0000A2   399 _A10	=	0x00a2
                           0000A3   400 _A11	=	0x00a3
                           0000A4   401 _A12	=	0x00a4
                           0000A5   402 _A13	=	0x00a5
                           0000A6   403 _A14	=	0x00a6
                           0000A7   404 _A15	=	0x00a7
                           0000A8   405 _EX0	=	0x00a8
                           0000A9   406 _ET0	=	0x00a9
                           0000AA   407 _EX1	=	0x00aa
                           0000AB   408 _ET1	=	0x00ab
                           0000AC   409 _ES	=	0x00ac
                           0000AD   410 _ET2	=	0x00ad
                           0000AE   411 _EC	=	0x00ae
                           0000AF   412 _EA	=	0x00af
                           0000B0   413 _P3_0	=	0x00b0
                           0000B1   414 _P3_1	=	0x00b1
                           0000B2   415 _P3_2	=	0x00b2
                           0000B3   416 _P3_3	=	0x00b3
                           0000B4   417 _P3_4	=	0x00b4
                           0000B5   418 _P3_5	=	0x00b5
                           0000B6   419 _P3_6	=	0x00b6
                           0000B7   420 _P3_7	=	0x00b7
                           0000B0   421 _RXD	=	0x00b0
                           0000B1   422 _TXD	=	0x00b1
                           0000B2   423 _INT0	=	0x00b2
                           0000B3   424 _INT1	=	0x00b3
                           0000B4   425 _T0	=	0x00b4
                           0000B5   426 _T1	=	0x00b5
                           0000B6   427 _WR	=	0x00b6
                           0000B7   428 _RD	=	0x00b7
                           0000B8   429 _PX0	=	0x00b8
                           0000B9   430 _PT0	=	0x00b9
                           0000BA   431 _PX1	=	0x00ba
                           0000BB   432 _PT1	=	0x00bb
                           0000BC   433 _PS	=	0x00bc
                           0000BD   434 _PT2	=	0x00bd
                           0000BE   435 _PPC	=	0x00be
                           0000C0   436 _P4_0	=	0x00c0
                           0000C1   437 _P4_1	=	0x00c1
                           0000C2   438 _P4_2	=	0x00c2
                           0000C3   439 _P4_3	=	0x00c3
                           0000C4   440 _P4_4	=	0x00c4
                           0000C2   441 _MISO	=	0x00c2
                           0000C3   442 _SCK	=	0x00c3
                           0000C4   443 _MOSI	=	0x00c4
                           0000C8   444 _CPRL2	=	0x00c8
                           0000C9   445 _CT2	=	0x00c9
                           0000CA   446 _TR2	=	0x00ca
                           0000CB   447 _EXEN2	=	0x00cb
                           0000CC   448 _TCLK	=	0x00cc
                           0000CD   449 _RCLK	=	0x00cd
                           0000CE   450 _EXF2	=	0x00ce
                           0000CF   451 _TF2	=	0x00cf
                           0000D0   452 _P	=	0x00d0
                           0000D1   453 _F1	=	0x00d1
                           0000D2   454 _OV	=	0x00d2
                           0000D3   455 _RS0	=	0x00d3
                           0000D4   456 _RS1	=	0x00d4
                           0000D5   457 _F0	=	0x00d5
                           0000D6   458 _AC	=	0x00d6
                           0000D7   459 _CY	=	0x00d7
                           0000D8   460 _CCF0	=	0x00d8
                           0000D9   461 _CCF1	=	0x00d9
                           0000DA   462 _CCF2	=	0x00da
                           0000DB   463 _CCF3	=	0x00db
                           0000DC   464 _CCF4	=	0x00dc
                           0000DE   465 _CR	=	0x00de
                           0000DF   466 _CF	=	0x00df
                           0000E0   467 _ACC0	=	0x00e0
                           0000E1   468 _ACC1	=	0x00e1
                           0000E2   469 _ACC2	=	0x00e2
                           0000E3   470 _ACC3	=	0x00e3
                           0000E4   471 _ACC4	=	0x00e4
                           0000E5   472 _ACC5	=	0x00e5
                           0000E6   473 _ACC6	=	0x00e6
                           0000E7   474 _ACC7	=	0x00e7
                           0000E0   475 _A0	=	0x00e0
                           0000E1   476 _A1	=	0x00e1
                           0000E2   477 _A2	=	0x00e2
                           0000E3   478 _A3	=	0x00e3
                           0000E4   479 _A4	=	0x00e4
                           0000E5   480 _A5	=	0x00e5
                           0000E6   481 _A6	=	0x00e6
                           0000E7   482 _A7	=	0x00e7
                           0000E8   483 _EADC	=	0x00e8
                           0000E9   484 _ESPI	=	0x00e9
                           0000F0   485 _B0	=	0x00f0
                           0000F1   486 _B1	=	0x00f1
                           0000F2   487 _B2	=	0x00f2
                           0000F3   488 _B3	=	0x00f3
                           0000F4   489 _B4	=	0x00f4
                           0000F5   490 _B5	=	0x00f5
                           0000F6   491 _B6	=	0x00f6
                           0000F7   492 _B7	=	0x00f7
                           0000F9   493 _PADCL	=	0x00f9
                           0000C0   494 _RS	=	0x00c0
                           0000C1   495 _RW	=	0x00c1
                           0000C2   496 _EN	=	0x00c2
                                    497 ;--------------------------------------------------------
                                    498 ; overlayable register banks
                                    499 ;--------------------------------------------------------
                                    500 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        501 	.ds 8
                                    502 ;--------------------------------------------------------
                                    503 ; internal ram data
                                    504 ;--------------------------------------------------------
                                    505 	.area DSEG    (DATA)
      00001C                        506 _posLCD::
      00001C                        507 	.ds 1
      00001D                        508 _writeLineLCD_i_65536_25:
      00001D                        509 	.ds 1
      00001E                        510 _sampleKeypad_Key_65536_36:
      00001E                        511 	.ds 1
      00001F                        512 _sampleKeypad_key_131072_37:
      00001F                        513 	.ds 1
      000020                        514 _sampleADC_sample_65536_50:
      000020                        515 	.ds 2
      000022                        516 _readLineSerial_PARM_2:
      000022                        517 	.ds 2
      000024                        518 _readLineSerial_s_65536_59:
      000024                        519 	.ds 3
                                    520 ;--------------------------------------------------------
                                    521 ; overlayable items in internal ram 
                                    522 ;--------------------------------------------------------
                                    523 	.area	OSEG    (OVR,DATA)
                                    524 	.area	OSEG    (OVR,DATA)
                                    525 	.area	OSEG    (OVR,DATA)
                                    526 ;--------------------------------------------------------
                                    527 ; indirectly addressable internal ram data
                                    528 ;--------------------------------------------------------
                                    529 	.area ISEG    (DATA)
                                    530 ;--------------------------------------------------------
                                    531 ; absolute internal ram data
                                    532 ;--------------------------------------------------------
                                    533 	.area IABS    (ABS,DATA)
                                    534 	.area IABS    (ABS,DATA)
                                    535 ;--------------------------------------------------------
                                    536 ; bit data
                                    537 ;--------------------------------------------------------
                                    538 	.area BSEG    (BIT)
                                    539 ;--------------------------------------------------------
                                    540 ; paged external ram data
                                    541 ;--------------------------------------------------------
                                    542 	.area PSEG    (PAG,XDATA)
                                    543 ;--------------------------------------------------------
                                    544 ; external ram data
                                    545 ;--------------------------------------------------------
                                    546 	.area XSEG    (XDATA)
                                    547 ;--------------------------------------------------------
                                    548 ; absolute external ram data
                                    549 ;--------------------------------------------------------
                                    550 	.area XABS    (ABS,XDATA)
                                    551 ;--------------------------------------------------------
                                    552 ; external initialized ram data
                                    553 ;--------------------------------------------------------
                                    554 	.area XISEG   (XDATA)
                                    555 	.area HOME    (CODE)
                                    556 	.area GSINIT0 (CODE)
                                    557 	.area GSINIT1 (CODE)
                                    558 	.area GSINIT2 (CODE)
                                    559 	.area GSINIT3 (CODE)
                                    560 	.area GSINIT4 (CODE)
                                    561 	.area GSINIT5 (CODE)
                                    562 	.area GSINIT  (CODE)
                                    563 	.area GSFINAL (CODE)
                                    564 	.area CSEG    (CODE)
                                    565 ;--------------------------------------------------------
                                    566 ; global & static initialisations
                                    567 ;--------------------------------------------------------
                                    568 	.area HOME    (CODE)
                                    569 	.area GSINIT  (CODE)
                                    570 	.area GSFINAL (CODE)
                                    571 	.area GSINIT  (CODE)
                                    572 ;------------------------------------------------------------
                                    573 ;Allocation info for local variables in function 'sampleKeypad'
                                    574 ;------------------------------------------------------------
                                    575 ;Key                       Allocated with name '_sampleKeypad_Key_65536_36'
                                    576 ;key                       Allocated with name '_sampleKeypad_key_131072_37'
                                    577 ;------------------------------------------------------------
                                    578 ;	ECEN301LibSDCC.c:136: for(static unsigned char key = 0; key < 255; key++);
      000064 75 1F 00         [24]  579 	mov	_sampleKeypad_key_131072_37,#0x00
                                    580 ;------------------------------------------------------------
                                    581 ;Allocation info for local variables in function 'sampleADC'
                                    582 ;------------------------------------------------------------
                                    583 ;sample                    Allocated with name '_sampleADC_sample_65536_50'
                                    584 ;------------------------------------------------------------
                                    585 ;	ECEN301LibSDCC.c:197: static int sample = 0;
      000067 E4               [12]  586 	clr	a
      000068 F5 20            [12]  587 	mov	_sampleADC_sample_65536_50,a
      00006A F5 21            [12]  588 	mov	(_sampleADC_sample_65536_50 + 1),a
                                    589 ;--------------------------------------------------------
                                    590 ; Home
                                    591 ;--------------------------------------------------------
                                    592 	.area HOME    (CODE)
                                    593 	.area HOME    (CODE)
                                    594 ;--------------------------------------------------------
                                    595 ; code
                                    596 ;--------------------------------------------------------
                                    597 	.area CSEG    (CODE)
                                    598 ;------------------------------------------------------------
                                    599 ;Allocation info for local variables in function 'delay'
                                    600 ;------------------------------------------------------------
                                    601 ;time                      Allocated to registers r6 r7 
                                    602 ;i                         Allocated to registers r4 r5 
                                    603 ;------------------------------------------------------------
                                    604 ;	ECEN301LibSDCC.c:34: void delay(unsigned int time)
                                    605 ;	-----------------------------------------
                                    606 ;	 function delay
                                    607 ;	-----------------------------------------
      0001BA                        608 _delay:
                           000007   609 	ar7 = 0x07
                           000006   610 	ar6 = 0x06
                           000005   611 	ar5 = 0x05
                           000004   612 	ar4 = 0x04
                           000003   613 	ar3 = 0x03
                           000002   614 	ar2 = 0x02
                           000001   615 	ar1 = 0x01
                           000000   616 	ar0 = 0x00
      0001BA AE 82            [24]  617 	mov	r6,dpl
      0001BC AF 83            [24]  618 	mov	r7,dph
                                    619 ;	ECEN301LibSDCC.c:37: for(i=0;i<time;i++){
      0001BE 7C 00            [12]  620 	mov	r4,#0x00
      0001C0 7D 00            [12]  621 	mov	r5,#0x00
      0001C2                        622 00103$:
      0001C2 C3               [12]  623 	clr	c
      0001C3 EC               [12]  624 	mov	a,r4
      0001C4 9E               [12]  625 	subb	a,r6
      0001C5 ED               [12]  626 	mov	a,r5
      0001C6 9F               [12]  627 	subb	a,r7
      0001C7 50 07            [24]  628 	jnc	00105$
      0001C9 0C               [12]  629 	inc	r4
      0001CA BC 00 F5         [24]  630 	cjne	r4,#0x00,00103$
      0001CD 0D               [12]  631 	inc	r5
      0001CE 80 F2            [24]  632 	sjmp	00103$
      0001D0                        633 00105$:
                                    634 ;	ECEN301LibSDCC.c:40: }
      0001D0 22               [24]  635 	ret
                                    636 ;------------------------------------------------------------
                                    637 ;Allocation info for local variables in function 'initLCD'
                                    638 ;------------------------------------------------------------
                                    639 ;	ECEN301LibSDCC.c:44: void initLCD(){
                                    640 ;	-----------------------------------------
                                    641 ;	 function initLCD
                                    642 ;	-----------------------------------------
      0001D1                        643 _initLCD:
                                    644 ;	ECEN301LibSDCC.c:45: RS = 0;
                                    645 ;	assignBit
      0001D1 C2 C0            [12]  646 	clr	_RS
                                    647 ;	ECEN301LibSDCC.c:46: RW = 0;
                                    648 ;	assignBit
      0001D3 C2 C1            [12]  649 	clr	_RW
                                    650 ;	ECEN301LibSDCC.c:47: DATA = 0x30;
      0001D5 75 80 30         [24]  651 	mov	_DATA,#0x30
                                    652 ;	ECEN301LibSDCC.c:48: EN = 1; delay(300); EN = 0; delay(100);
                                    653 ;	assignBit
      0001D8 D2 C2            [12]  654 	setb	_EN
      0001DA 90 01 2C         [24]  655 	mov	dptr,#0x012c
      0001DD 12 01 BA         [24]  656 	lcall	_delay
                                    657 ;	assignBit
      0001E0 C2 C2            [12]  658 	clr	_EN
      0001E2 90 00 64         [24]  659 	mov	dptr,#0x0064
      0001E5 12 01 BA         [24]  660 	lcall	_delay
                                    661 ;	ECEN301LibSDCC.c:49: EN = 1; delay(300); EN = 0; delay(100);
                                    662 ;	assignBit
      0001E8 D2 C2            [12]  663 	setb	_EN
      0001EA 90 01 2C         [24]  664 	mov	dptr,#0x012c
      0001ED 12 01 BA         [24]  665 	lcall	_delay
                                    666 ;	assignBit
      0001F0 C2 C2            [12]  667 	clr	_EN
      0001F2 90 00 64         [24]  668 	mov	dptr,#0x0064
      0001F5 12 01 BA         [24]  669 	lcall	_delay
                                    670 ;	ECEN301LibSDCC.c:50: EN = 1; delay(300); EN = 0; delay(100);
                                    671 ;	assignBit
      0001F8 D2 C2            [12]  672 	setb	_EN
      0001FA 90 01 2C         [24]  673 	mov	dptr,#0x012c
      0001FD 12 01 BA         [24]  674 	lcall	_delay
                                    675 ;	assignBit
      000200 C2 C2            [12]  676 	clr	_EN
      000202 90 00 64         [24]  677 	mov	dptr,#0x0064
      000205 12 01 BA         [24]  678 	lcall	_delay
                                    679 ;	ECEN301LibSDCC.c:52: DATA = 0x38;
      000208 75 80 38         [24]  680 	mov	_DATA,#0x38
                                    681 ;	ECEN301LibSDCC.c:53: EN = 1; delay(100); EN = 0; delay(100); // function set
                                    682 ;	assignBit
      00020B D2 C2            [12]  683 	setb	_EN
      00020D 90 00 64         [24]  684 	mov	dptr,#0x0064
      000210 12 01 BA         [24]  685 	lcall	_delay
                                    686 ;	assignBit
      000213 C2 C2            [12]  687 	clr	_EN
      000215 90 00 64         [24]  688 	mov	dptr,#0x0064
      000218 12 01 BA         [24]  689 	lcall	_delay
                                    690 ;	ECEN301LibSDCC.c:54: DATA = 0x08;
      00021B 75 80 08         [24]  691 	mov	_DATA,#0x08
                                    692 ;	ECEN301LibSDCC.c:55: EN = 1; delay(300); EN = 0; delay(100); // on off control turn display off
                                    693 ;	assignBit
      00021E D2 C2            [12]  694 	setb	_EN
      000220 90 01 2C         [24]  695 	mov	dptr,#0x012c
      000223 12 01 BA         [24]  696 	lcall	_delay
                                    697 ;	assignBit
      000226 C2 C2            [12]  698 	clr	_EN
      000228 90 00 64         [24]  699 	mov	dptr,#0x0064
      00022B 12 01 BA         [24]  700 	lcall	_delay
                                    701 ;	ECEN301LibSDCC.c:56: DATA = 0x01;
      00022E 75 80 01         [24]  702 	mov	_DATA,#0x01
                                    703 ;	ECEN301LibSDCC.c:57: EN = 1; delay(300); EN = 0; delay(100); // clear display
                                    704 ;	assignBit
      000231 D2 C2            [12]  705 	setb	_EN
      000233 90 01 2C         [24]  706 	mov	dptr,#0x012c
      000236 12 01 BA         [24]  707 	lcall	_delay
                                    708 ;	assignBit
      000239 C2 C2            [12]  709 	clr	_EN
      00023B 90 00 64         [24]  710 	mov	dptr,#0x0064
      00023E 12 01 BA         [24]  711 	lcall	_delay
                                    712 ;	ECEN301LibSDCC.c:58: DATA = 0x06;
      000241 75 80 06         [24]  713 	mov	_DATA,#0x06
                                    714 ;	ECEN301LibSDCC.c:59: EN = 1; delay(300); EN = 0; delay(100); // entry mode set, increment, no shift
                                    715 ;	assignBit
      000244 D2 C2            [12]  716 	setb	_EN
      000246 90 01 2C         [24]  717 	mov	dptr,#0x012c
      000249 12 01 BA         [24]  718 	lcall	_delay
                                    719 ;	assignBit
      00024C C2 C2            [12]  720 	clr	_EN
      00024E 90 00 64         [24]  721 	mov	dptr,#0x0064
      000251 12 01 BA         [24]  722 	lcall	_delay
                                    723 ;	ECEN301LibSDCC.c:60: DATA = 0x0C;
      000254 75 80 0C         [24]  724 	mov	_DATA,#0x0c
                                    725 ;	ECEN301LibSDCC.c:61: EN = 1; delay(300); EN = 0; delay(100); // display on/off control, display on, no cursor, no blink
                                    726 ;	assignBit
      000257 D2 C2            [12]  727 	setb	_EN
      000259 90 01 2C         [24]  728 	mov	dptr,#0x012c
      00025C 12 01 BA         [24]  729 	lcall	_delay
                                    730 ;	assignBit
      00025F C2 C2            [12]  731 	clr	_EN
      000261 90 00 64         [24]  732 	mov	dptr,#0x0064
      000264 12 01 BA         [24]  733 	lcall	_delay
                                    734 ;	ECEN301LibSDCC.c:62: posLCD = 0;
      000267 75 1C 00         [24]  735 	mov	_posLCD,#0x00
                                    736 ;	ECEN301LibSDCC.c:63: }
      00026A 22               [24]  737 	ret
                                    738 ;------------------------------------------------------------
                                    739 ;Allocation info for local variables in function 'writeCharLCD'
                                    740 ;------------------------------------------------------------
                                    741 ;c                         Allocated to registers r7 
                                    742 ;------------------------------------------------------------
                                    743 ;	ECEN301LibSDCC.c:65: void writeCharLCD(char c){
                                    744 ;	-----------------------------------------
                                    745 ;	 function writeCharLCD
                                    746 ;	-----------------------------------------
      00026B                        747 _writeCharLCD:
      00026B AF 82            [24]  748 	mov	r7,dpl
                                    749 ;	ECEN301LibSDCC.c:66: if(posLCD == 16){ // go to second line
      00026D 74 10            [12]  750 	mov	a,#0x10
      00026F B5 1C 0C         [24]  751 	cjne	a,_posLCD,00104$
                                    752 ;	ECEN301LibSDCC.c:67: setLCDPos(0x10);
      000272 75 82 10         [24]  753 	mov	dpl,#0x10
      000275 C0 07            [24]  754 	push	ar7
      000277 12 02 FD         [24]  755 	lcall	_setLCDPos
      00027A D0 07            [24]  756 	pop	ar7
      00027C 80 0F            [24]  757 	sjmp	00105$
      00027E                        758 00104$:
                                    759 ;	ECEN301LibSDCC.c:68: }else if(posLCD == 32){
      00027E 74 20            [12]  760 	mov	a,#0x20
      000280 B5 1C 0A         [24]  761 	cjne	a,_posLCD,00105$
                                    762 ;	ECEN301LibSDCC.c:69: setLCDPos(0);	// return to first line
      000283 75 82 00         [24]  763 	mov	dpl,#0x00
      000286 C0 07            [24]  764 	push	ar7
      000288 12 02 FD         [24]  765 	lcall	_setLCDPos
      00028B D0 07            [24]  766 	pop	ar7
      00028D                        767 00105$:
                                    768 ;	ECEN301LibSDCC.c:71: RS = 1;
                                    769 ;	assignBit
      00028D D2 C0            [12]  770 	setb	_RS
                                    771 ;	ECEN301LibSDCC.c:72: RW = 0;
                                    772 ;	assignBit
      00028F C2 C1            [12]  773 	clr	_RW
                                    774 ;	ECEN301LibSDCC.c:73: DATA = c;
      000291 8F 80            [24]  775 	mov	_DATA,r7
                                    776 ;	ECEN301LibSDCC.c:74: EN = 1;
                                    777 ;	assignBit
      000293 D2 C2            [12]  778 	setb	_EN
                                    779 ;	ECEN301LibSDCC.c:75: delay(50);
      000295 90 00 32         [24]  780 	mov	dptr,#0x0032
      000298 12 01 BA         [24]  781 	lcall	_delay
                                    782 ;	ECEN301LibSDCC.c:76: EN = 0;
                                    783 ;	assignBit
      00029B C2 C2            [12]  784 	clr	_EN
                                    785 ;	ECEN301LibSDCC.c:77: delay(50);
      00029D 90 00 32         [24]  786 	mov	dptr,#0x0032
      0002A0 12 01 BA         [24]  787 	lcall	_delay
                                    788 ;	ECEN301LibSDCC.c:78: posLCD++;
      0002A3 05 1C            [12]  789 	inc	_posLCD
                                    790 ;	ECEN301LibSDCC.c:79: }
      0002A5 22               [24]  791 	ret
                                    792 ;------------------------------------------------------------
                                    793 ;Allocation info for local variables in function 'writeLineLCD'
                                    794 ;------------------------------------------------------------
                                    795 ;i                         Allocated with name '_writeLineLCD_i_65536_25'
                                    796 ;s                         Allocated to registers r5 r6 r7 
                                    797 ;------------------------------------------------------------
                                    798 ;	ECEN301LibSDCC.c:81: void writeLineLCD(char *s){
                                    799 ;	-----------------------------------------
                                    800 ;	 function writeLineLCD
                                    801 ;	-----------------------------------------
      0002A6                        802 _writeLineLCD:
      0002A6 AD 82            [24]  803 	mov	r5,dpl
      0002A8 AE 83            [24]  804 	mov	r6,dph
      0002AA AF F0            [24]  805 	mov	r7,b
                                    806 ;	ECEN301LibSDCC.c:83: for(i=0;i<32;i++){
      0002AC 75 1D 00         [24]  807 	mov	_writeLineLCD_i_65536_25,#0x00
      0002AF                        808 00104$:
                                    809 ;	ECEN301LibSDCC.c:84: if(s[i] == 0){
      0002AF E5 1D            [12]  810 	mov	a,_writeLineLCD_i_65536_25
      0002B1 2D               [12]  811 	add	a,r5
      0002B2 FA               [12]  812 	mov	r2,a
      0002B3 E4               [12]  813 	clr	a
      0002B4 3E               [12]  814 	addc	a,r6
      0002B5 FB               [12]  815 	mov	r3,a
      0002B6 8F 04            [24]  816 	mov	ar4,r7
      0002B8 8A 82            [24]  817 	mov	dpl,r2
      0002BA 8B 83            [24]  818 	mov	dph,r3
      0002BC 8C F0            [24]  819 	mov	b,r4
      0002BE 12 11 CD         [24]  820 	lcall	__gptrget
      0002C1 FC               [12]  821 	mov	r4,a
      0002C2 60 19            [24]  822 	jz	00106$
                                    823 ;	ECEN301LibSDCC.c:87: writeCharLCD(s[i]);
      0002C4 8C 82            [24]  824 	mov	dpl,r4
      0002C6 C0 07            [24]  825 	push	ar7
      0002C8 C0 06            [24]  826 	push	ar6
      0002CA C0 05            [24]  827 	push	ar5
      0002CC 12 02 6B         [24]  828 	lcall	_writeCharLCD
      0002CF D0 05            [24]  829 	pop	ar5
      0002D1 D0 06            [24]  830 	pop	ar6
      0002D3 D0 07            [24]  831 	pop	ar7
                                    832 ;	ECEN301LibSDCC.c:83: for(i=0;i<32;i++){
      0002D5 05 1D            [12]  833 	inc	_writeLineLCD_i_65536_25
      0002D7 74 E0            [12]  834 	mov	a,#0x100 - 0x20
      0002D9 25 1D            [12]  835 	add	a,_writeLineLCD_i_65536_25
      0002DB 50 D2            [24]  836 	jnc	00104$
      0002DD                        837 00106$:
                                    838 ;	ECEN301LibSDCC.c:89: }
      0002DD 22               [24]  839 	ret
                                    840 ;------------------------------------------------------------
                                    841 ;Allocation info for local variables in function 'clearLCD'
                                    842 ;------------------------------------------------------------
                                    843 ;	ECEN301LibSDCC.c:91: void clearLCD(){
                                    844 ;	-----------------------------------------
                                    845 ;	 function clearLCD
                                    846 ;	-----------------------------------------
      0002DE                        847 _clearLCD:
                                    848 ;	ECEN301LibSDCC.c:92: RS = 0;
                                    849 ;	assignBit
      0002DE C2 C0            [12]  850 	clr	_RS
                                    851 ;	ECEN301LibSDCC.c:93: RW = 0;
                                    852 ;	assignBit
      0002E0 C2 C1            [12]  853 	clr	_RW
                                    854 ;	ECEN301LibSDCC.c:94: DATA = 0x01;
      0002E2 75 80 01         [24]  855 	mov	_DATA,#0x01
                                    856 ;	ECEN301LibSDCC.c:95: EN = 1;
                                    857 ;	assignBit
      0002E5 D2 C2            [12]  858 	setb	_EN
                                    859 ;	ECEN301LibSDCC.c:96: delay(50);
      0002E7 90 00 32         [24]  860 	mov	dptr,#0x0032
      0002EA 12 01 BA         [24]  861 	lcall	_delay
                                    862 ;	ECEN301LibSDCC.c:97: EN = 0;
                                    863 ;	assignBit
      0002ED C2 C2            [12]  864 	clr	_EN
                                    865 ;	ECEN301LibSDCC.c:98: delay(100);
      0002EF 90 00 64         [24]  866 	mov	dptr,#0x0064
      0002F2 12 01 BA         [24]  867 	lcall	_delay
                                    868 ;	ECEN301LibSDCC.c:99: posLCD = 0;
      0002F5 75 1C 00         [24]  869 	mov	_posLCD,#0x00
                                    870 ;	ECEN301LibSDCC.c:100: }
      0002F8 22               [24]  871 	ret
                                    872 ;------------------------------------------------------------
                                    873 ;Allocation info for local variables in function 'getLCDPos'
                                    874 ;------------------------------------------------------------
                                    875 ;	ECEN301LibSDCC.c:102: unsigned char getLCDPos(){
                                    876 ;	-----------------------------------------
                                    877 ;	 function getLCDPos
                                    878 ;	-----------------------------------------
      0002F9                        879 _getLCDPos:
                                    880 ;	ECEN301LibSDCC.c:103: return posLCD;
      0002F9 85 1C 82         [24]  881 	mov	dpl,_posLCD
                                    882 ;	ECEN301LibSDCC.c:104: }
      0002FC 22               [24]  883 	ret
                                    884 ;------------------------------------------------------------
                                    885 ;Allocation info for local variables in function 'setLCDPos'
                                    886 ;------------------------------------------------------------
                                    887 ;p                         Allocated to registers r7 
                                    888 ;------------------------------------------------------------
                                    889 ;	ECEN301LibSDCC.c:106: void setLCDPos(unsigned char p){
                                    890 ;	-----------------------------------------
                                    891 ;	 function setLCDPos
                                    892 ;	-----------------------------------------
      0002FD                        893 _setLCDPos:
      0002FD AF 82            [24]  894 	mov	r7,dpl
                                    895 ;	ECEN301LibSDCC.c:107: if(posLCD < 32){
      0002FF 74 E0            [12]  896 	mov	a,#0x100 - 0x20
      000301 25 1C            [12]  897 	add	a,_posLCD
      000303 40 3E            [24]  898 	jc	00106$
                                    899 ;	ECEN301LibSDCC.c:108: posLCD = p;
      000305 8F 1C            [24]  900 	mov	_posLCD,r7
                                    901 ;	ECEN301LibSDCC.c:109: if(posLCD < 16){
      000307 74 F0            [12]  902 	mov	a,#0x100 - 0x10
      000309 25 1C            [12]  903 	add	a,_posLCD
      00030B 40 1B            [24]  904 	jc	00102$
                                    905 ;	ECEN301LibSDCC.c:110: DATA = 0x80 + posLCD;
      00030D AF 1C            [24]  906 	mov	r7,_posLCD
      00030F 74 80            [12]  907 	mov	a,#0x80
      000311 2F               [12]  908 	add	a,r7
      000312 F5 80            [12]  909 	mov	_DATA,a
                                    910 ;	ECEN301LibSDCC.c:111: RS = 0;
                                    911 ;	assignBit
      000314 C2 C0            [12]  912 	clr	_RS
                                    913 ;	ECEN301LibSDCC.c:112: RW = 0;
                                    914 ;	assignBit
      000316 C2 C1            [12]  915 	clr	_RW
                                    916 ;	ECEN301LibSDCC.c:113: EN = 1;
                                    917 ;	assignBit
      000318 D2 C2            [12]  918 	setb	_EN
                                    919 ;	ECEN301LibSDCC.c:114: delay(100);
      00031A 90 00 64         [24]  920 	mov	dptr,#0x0064
      00031D 12 01 BA         [24]  921 	lcall	_delay
                                    922 ;	ECEN301LibSDCC.c:115: EN = 0;
                                    923 ;	assignBit
      000320 C2 C2            [12]  924 	clr	_EN
                                    925 ;	ECEN301LibSDCC.c:116: delay(50);
      000322 90 00 32         [24]  926 	mov	dptr,#0x0032
      000325 02 01 BA         [24]  927 	ljmp	_delay
      000328                        928 00102$:
                                    929 ;	ECEN301LibSDCC.c:119: DATA = 0xC0 + posLCD - 16;
      000328 AF 1C            [24]  930 	mov	r7,_posLCD
      00032A 74 B0            [12]  931 	mov	a,#0xb0
      00032C 2F               [12]  932 	add	a,r7
      00032D F5 80            [12]  933 	mov	_DATA,a
                                    934 ;	ECEN301LibSDCC.c:120: RS = 0;
                                    935 ;	assignBit
      00032F C2 C0            [12]  936 	clr	_RS
                                    937 ;	ECEN301LibSDCC.c:121: RW = 0;
                                    938 ;	assignBit
      000331 C2 C1            [12]  939 	clr	_RW
                                    940 ;	ECEN301LibSDCC.c:122: EN = 1;
                                    941 ;	assignBit
      000333 D2 C2            [12]  942 	setb	_EN
                                    943 ;	ECEN301LibSDCC.c:123: delay(100);
      000335 90 00 64         [24]  944 	mov	dptr,#0x0064
      000338 12 01 BA         [24]  945 	lcall	_delay
                                    946 ;	ECEN301LibSDCC.c:124: EN = 0;
                                    947 ;	assignBit
      00033B C2 C2            [12]  948 	clr	_EN
                                    949 ;	ECEN301LibSDCC.c:125: delay(50);
      00033D 90 00 32         [24]  950 	mov	dptr,#0x0032
                                    951 ;	ECEN301LibSDCC.c:128: }
      000340 02 01 BA         [24]  952 	ljmp	_delay
      000343                        953 00106$:
      000343 22               [24]  954 	ret
                                    955 ;------------------------------------------------------------
                                    956 ;Allocation info for local variables in function 'sampleKeypad'
                                    957 ;------------------------------------------------------------
                                    958 ;Key                       Allocated with name '_sampleKeypad_Key_65536_36'
                                    959 ;key                       Allocated with name '_sampleKeypad_key_131072_37'
                                    960 ;------------------------------------------------------------
                                    961 ;	ECEN301LibSDCC.c:132: unsigned char sampleKeypad(){
                                    962 ;	-----------------------------------------
                                    963 ;	 function sampleKeypad
                                    964 ;	-----------------------------------------
      000344                        965 _sampleKeypad:
                                    966 ;	ECEN301LibSDCC.c:137: P2_0 = TRUE;
      000344                        967 00127$:
                                    968 ;	ECEN301LibSDCC.c:136: for(static unsigned char key = 0; key < 255; key++);
      000344 74 01            [12]  969 	mov	a,#0x100 - 0xff
      000346 25 1F            [12]  970 	add	a,_sampleKeypad_key_131072_37
      000348 40 04            [24]  971 	jc	00101$
      00034A 05 1F            [12]  972 	inc	_sampleKeypad_key_131072_37
      00034C 80 F6            [24]  973 	sjmp	00127$
      00034E                        974 00101$:
                                    975 ;	ECEN301LibSDCC.c:137: P2_0 = TRUE;
                                    976 ;	assignBit
      00034E D2 A0            [12]  977 	setb	_P2_0
                                    978 ;	ECEN301LibSDCC.c:138: P2_1 = TRUE;
                                    979 ;	assignBit
      000350 D2 A1            [12]  980 	setb	_P2_1
                                    981 ;	ECEN301LibSDCC.c:139: P2_2 = TRUE;
                                    982 ;	assignBit
      000352 D2 A2            [12]  983 	setb	_P2_2
                                    984 ;	ECEN301LibSDCC.c:140: P2_3 = TRUE;
                                    985 ;	assignBit
      000354 D2 A3            [12]  986 	setb	_P2_3
                                    987 ;	ECEN301LibSDCC.c:141: Key = 13;
      000356 75 1E 0D         [24]  988 	mov	_sampleKeypad_Key_65536_36,#0x0d
                                    989 ;	ECEN301LibSDCC.c:143: P2_0 = FALSE;
                                    990 ;	assignBit
      000359 C2 A0            [12]  991 	clr	_P2_0
                                    992 ;	ECEN301LibSDCC.c:144: if(!P2_4){ 
      00035B 20 A4 03         [24]  993 	jb	_P2_4,00103$
                                    994 ;	ECEN301LibSDCC.c:145: Key = 1;
      00035E 75 1E 01         [24]  995 	mov	_sampleKeypad_Key_65536_36,#0x01
      000361                        996 00103$:
                                    997 ;	ECEN301LibSDCC.c:147: if(!P2_5){
      000361 20 A5 03         [24]  998 	jb	_P2_5,00105$
                                    999 ;	ECEN301LibSDCC.c:148: Key = 2;
      000364 75 1E 02         [24] 1000 	mov	_sampleKeypad_Key_65536_36,#0x02
      000367                       1001 00105$:
                                   1002 ;	ECEN301LibSDCC.c:150: if(!P2_6){
      000367 20 A6 03         [24] 1003 	jb	_P2_6,00107$
                                   1004 ;	ECEN301LibSDCC.c:151: Key = 3;
      00036A 75 1E 03         [24] 1005 	mov	_sampleKeypad_Key_65536_36,#0x03
      00036D                       1006 00107$:
                                   1007 ;	ECEN301LibSDCC.c:153: P2_0 = TRUE;
                                   1008 ;	assignBit
      00036D D2 A0            [12] 1009 	setb	_P2_0
                                   1010 ;	ECEN301LibSDCC.c:155: P2_1 = FALSE;
                                   1011 ;	assignBit
      00036F C2 A1            [12] 1012 	clr	_P2_1
                                   1013 ;	ECEN301LibSDCC.c:156: if(!P2_4){
      000371 20 A4 03         [24] 1014 	jb	_P2_4,00109$
                                   1015 ;	ECEN301LibSDCC.c:157: Key = 4;
      000374 75 1E 04         [24] 1016 	mov	_sampleKeypad_Key_65536_36,#0x04
      000377                       1017 00109$:
                                   1018 ;	ECEN301LibSDCC.c:159: if(!P2_5){
      000377 20 A5 03         [24] 1019 	jb	_P2_5,00111$
                                   1020 ;	ECEN301LibSDCC.c:160: Key = 5;
      00037A 75 1E 05         [24] 1021 	mov	_sampleKeypad_Key_65536_36,#0x05
      00037D                       1022 00111$:
                                   1023 ;	ECEN301LibSDCC.c:162: if(!P2_6){
      00037D 20 A6 03         [24] 1024 	jb	_P2_6,00113$
                                   1025 ;	ECEN301LibSDCC.c:163: Key = 6;
      000380 75 1E 06         [24] 1026 	mov	_sampleKeypad_Key_65536_36,#0x06
      000383                       1027 00113$:
                                   1028 ;	ECEN301LibSDCC.c:165: P2_1 = TRUE;
                                   1029 ;	assignBit
      000383 D2 A1            [12] 1030 	setb	_P2_1
                                   1031 ;	ECEN301LibSDCC.c:167: P2_2 = FALSE;
                                   1032 ;	assignBit
      000385 C2 A2            [12] 1033 	clr	_P2_2
                                   1034 ;	ECEN301LibSDCC.c:168: if(!P2_4){
      000387 20 A4 03         [24] 1035 	jb	_P2_4,00115$
                                   1036 ;	ECEN301LibSDCC.c:169: Key = 7;
      00038A 75 1E 07         [24] 1037 	mov	_sampleKeypad_Key_65536_36,#0x07
      00038D                       1038 00115$:
                                   1039 ;	ECEN301LibSDCC.c:171: if(!P2_5){
      00038D 20 A5 03         [24] 1040 	jb	_P2_5,00117$
                                   1041 ;	ECEN301LibSDCC.c:172: Key = 8;
      000390 75 1E 08         [24] 1042 	mov	_sampleKeypad_Key_65536_36,#0x08
      000393                       1043 00117$:
                                   1044 ;	ECEN301LibSDCC.c:174: if(!P2_6){
      000393 20 A6 03         [24] 1045 	jb	_P2_6,00119$
                                   1046 ;	ECEN301LibSDCC.c:175: Key = 9;
      000396 75 1E 09         [24] 1047 	mov	_sampleKeypad_Key_65536_36,#0x09
      000399                       1048 00119$:
                                   1049 ;	ECEN301LibSDCC.c:177: P2_2 = TRUE;
                                   1050 ;	assignBit
      000399 D2 A2            [12] 1051 	setb	_P2_2
                                   1052 ;	ECEN301LibSDCC.c:179: P2_3 = FALSE;
                                   1053 ;	assignBit
      00039B C2 A3            [12] 1054 	clr	_P2_3
                                   1055 ;	ECEN301LibSDCC.c:180: if(!P2_4){
      00039D 20 A4 03         [24] 1056 	jb	_P2_4,00121$
                                   1057 ;	ECEN301LibSDCC.c:181: Key = 10;
      0003A0 75 1E 0A         [24] 1058 	mov	_sampleKeypad_Key_65536_36,#0x0a
      0003A3                       1059 00121$:
                                   1060 ;	ECEN301LibSDCC.c:183: if(!P2_5){
      0003A3 20 A5 03         [24] 1061 	jb	_P2_5,00123$
                                   1062 ;	ECEN301LibSDCC.c:184: Key = 0;
      0003A6 75 1E 00         [24] 1063 	mov	_sampleKeypad_Key_65536_36,#0x00
      0003A9                       1064 00123$:
                                   1065 ;	ECEN301LibSDCC.c:186: if(!P2_6){
      0003A9 20 A6 03         [24] 1066 	jb	_P2_6,00125$
                                   1067 ;	ECEN301LibSDCC.c:187: Key = 12;
      0003AC 75 1E 0C         [24] 1068 	mov	_sampleKeypad_Key_65536_36,#0x0c
      0003AF                       1069 00125$:
                                   1070 ;	ECEN301LibSDCC.c:189: P2_3 = TRUE;
                                   1071 ;	assignBit
      0003AF D2 A3            [12] 1072 	setb	_P2_3
                                   1073 ;	ECEN301LibSDCC.c:191: return Key;
      0003B1 85 1E 82         [24] 1074 	mov	dpl,_sampleKeypad_Key_65536_36
                                   1075 ;	ECEN301LibSDCC.c:192: }
      0003B4 22               [24] 1076 	ret
                                   1077 ;------------------------------------------------------------
                                   1078 ;Allocation info for local variables in function 'sampleADC'
                                   1079 ;------------------------------------------------------------
                                   1080 ;sample                    Allocated with name '_sampleADC_sample_65536_50'
                                   1081 ;------------------------------------------------------------
                                   1082 ;	ECEN301LibSDCC.c:196: int sampleADC(){
                                   1083 ;	-----------------------------------------
                                   1084 ;	 function sampleADC
                                   1085 ;	-----------------------------------------
      0003B5                       1086 _sampleADC:
                                   1087 ;	ECEN301LibSDCC.c:198: ADCF |= 0x01;
      0003B5 AE F6            [24] 1088 	mov	r6,_ADCF
      0003B7 43 06 01         [24] 1089 	orl	ar6,#0x01
      0003BA 8E F6            [24] 1090 	mov	_ADCF,r6
                                   1091 ;	ECEN301LibSDCC.c:199: ADCON = 0x20;
      0003BC 75 F3 20         [24] 1092 	mov	_ADCON,#0x20
                                   1093 ;	ECEN301LibSDCC.c:200: ADCON |= 0x08;
      0003BF AE F3            [24] 1094 	mov	r6,_ADCON
      0003C1 43 06 08         [24] 1095 	orl	ar6,#0x08
      0003C4 8E F3            [24] 1096 	mov	_ADCON,r6
                                   1097 ;	ECEN301LibSDCC.c:201: while(ADCON & 0x10 != 0x10);
      0003C6                       1098 00101$:
      0003C6 E5 F3            [12] 1099 	mov	a,_ADCON
      0003C8 E4               [12] 1100 	clr	a
      0003C9 70 FB            [24] 1101 	jnz	00101$
                                   1102 ;	ECEN301LibSDCC.c:202: ADCON &= 0xEF;
      0003CB 53 F3 EF         [24] 1103 	anl	_ADCON,#0xef
                                   1104 ;	ECEN301LibSDCC.c:203: sample = (ADDH << 2) + ADDL;
      0003CE AE F5            [24] 1105 	mov	r6,_ADDH
      0003D0 7F 00            [12] 1106 	mov	r7,#0x00
      0003D2 EE               [12] 1107 	mov	a,r6
      0003D3 2E               [12] 1108 	add	a,r6
      0003D4 FE               [12] 1109 	mov	r6,a
      0003D5 EF               [12] 1110 	mov	a,r7
      0003D6 33               [12] 1111 	rlc	a
      0003D7 FF               [12] 1112 	mov	r7,a
      0003D8 EE               [12] 1113 	mov	a,r6
      0003D9 2E               [12] 1114 	add	a,r6
      0003DA FE               [12] 1115 	mov	r6,a
      0003DB EF               [12] 1116 	mov	a,r7
      0003DC 33               [12] 1117 	rlc	a
      0003DD FF               [12] 1118 	mov	r7,a
      0003DE AC F4            [24] 1119 	mov	r4,_ADDL
      0003E0 7D 00            [12] 1120 	mov	r5,#0x00
      0003E2 EC               [12] 1121 	mov	a,r4
      0003E3 2E               [12] 1122 	add	a,r6
      0003E4 F5 20            [12] 1123 	mov	_sampleADC_sample_65536_50,a
      0003E6 ED               [12] 1124 	mov	a,r5
      0003E7 3F               [12] 1125 	addc	a,r7
      0003E8 F5 21            [12] 1126 	mov	(_sampleADC_sample_65536_50 + 1),a
                                   1127 ;	ECEN301LibSDCC.c:204: return sample;
      0003EA 85 20 82         [24] 1128 	mov	dpl,_sampleADC_sample_65536_50
      0003ED 85 21 83         [24] 1129 	mov	dph,(_sampleADC_sample_65536_50 + 1)
                                   1130 ;	ECEN301LibSDCC.c:205: }
      0003F0 22               [24] 1131 	ret
                                   1132 ;------------------------------------------------------------
                                   1133 ;Allocation info for local variables in function 'initSerial'
                                   1134 ;------------------------------------------------------------
                                   1135 ;baud                      Allocated to registers r4 r5 
                                   1136 ;------------------------------------------------------------
                                   1137 ;	ECEN301LibSDCC.c:209: void initSerial(unsigned int baud){
                                   1138 ;	-----------------------------------------
                                   1139 ;	 function initSerial
                                   1140 ;	-----------------------------------------
      0003F1                       1141 _initSerial:
      0003F1 AE 82            [24] 1142 	mov	r6,dpl
      0003F3 AF 83            [24] 1143 	mov	r7,dph
                                   1144 ;	ECEN301LibSDCC.c:210: TMOD |= 0x20;
      0003F5 AC 89            [24] 1145 	mov	r4,_TMOD
      0003F7 43 04 20         [24] 1146 	orl	ar4,#0x20
      0003FA 8C 89            [24] 1147 	mov	_TMOD,r4
                                   1148 ;	ECEN301LibSDCC.c:211: TMOD &= 0x2F;
      0003FC 53 89 2F         [24] 1149 	anl	_TMOD,#0x2f
                                   1150 ;	ECEN301LibSDCC.c:212: SM0 = FALSE;
                                   1151 ;	assignBit
      0003FF C2 9F            [12] 1152 	clr	_SM0
                                   1153 ;	ECEN301LibSDCC.c:213: SM1 = TRUE;
                                   1154 ;	assignBit
      000401 D2 9E            [12] 1155 	setb	_SM1
                                   1156 ;	ECEN301LibSDCC.c:214: PCON |= 0x80;
      000403 AC 87            [24] 1157 	mov	r4,_PCON
      000405 43 04 80         [24] 1158 	orl	ar4,#0x80
      000408 8C 87            [24] 1159 	mov	_PCON,r4
                                   1160 ;	ECEN301LibSDCC.c:216: baud = 62500/baud;
      00040A 8E 57            [24] 1161 	mov	__divslong_PARM_2,r6
      00040C 8F 58            [24] 1162 	mov	(__divslong_PARM_2 + 1),r7
      00040E 75 59 00         [24] 1163 	mov	(__divslong_PARM_2 + 2),#0x00
      000411 75 5A 00         [24] 1164 	mov	(__divslong_PARM_2 + 3),#0x00
      000414 90 F4 24         [24] 1165 	mov	dptr,#0xf424
      000417 E4               [12] 1166 	clr	a
      000418 F5 F0            [12] 1167 	mov	b,a
      00041A 12 06 E0         [24] 1168 	lcall	__divslong
      00041D AC 82            [24] 1169 	mov	r4,dpl
                                   1170 ;	ECEN301LibSDCC.c:217: TH1 = (unsigned char)(256 - baud);
      00041F C3               [12] 1171 	clr	c
      000420 E4               [12] 1172 	clr	a
      000421 9C               [12] 1173 	subb	a,r4
      000422 FC               [12] 1174 	mov	r4,a
      000423 8C 8D            [24] 1175 	mov	_TH1,r4
                                   1176 ;	ECEN301LibSDCC.c:219: REN = TRUE;
                                   1177 ;	assignBit
      000425 D2 9C            [12] 1178 	setb	_REN
                                   1179 ;	ECEN301LibSDCC.c:220: TR1 = TRUE; 
                                   1180 ;	assignBit
      000427 D2 8E            [12] 1181 	setb	_TR1
                                   1182 ;	ECEN301LibSDCC.c:221: }
      000429 22               [24] 1183 	ret
                                   1184 ;------------------------------------------------------------
                                   1185 ;Allocation info for local variables in function 'writeCharSerial'
                                   1186 ;------------------------------------------------------------
                                   1187 ;c                         Allocated to registers 
                                   1188 ;------------------------------------------------------------
                                   1189 ;	ECEN301LibSDCC.c:223: void writeCharSerial(char c){
                                   1190 ;	-----------------------------------------
                                   1191 ;	 function writeCharSerial
                                   1192 ;	-----------------------------------------
      00042A                       1193 _writeCharSerial:
      00042A 85 82 99         [24] 1194 	mov	_SBUF,dpl
                                   1195 ;	ECEN301LibSDCC.c:225: while(TI == FALSE);
      00042D                       1196 00101$:
                                   1197 ;	ECEN301LibSDCC.c:226: TI = FALSE;
                                   1198 ;	assignBit
      00042D 10 99 02         [24] 1199 	jbc	_TI,00114$
      000430 80 FB            [24] 1200 	sjmp	00101$
      000432                       1201 00114$:
                                   1202 ;	ECEN301LibSDCC.c:227: }
      000432 22               [24] 1203 	ret
                                   1204 ;------------------------------------------------------------
                                   1205 ;Allocation info for local variables in function 'writeLineSerial'
                                   1206 ;------------------------------------------------------------
                                   1207 ;s                         Allocated to registers r5 r6 r7 
                                   1208 ;i                         Allocated to registers r4 
                                   1209 ;------------------------------------------------------------
                                   1210 ;	ECEN301LibSDCC.c:229: void writeLineSerial(char *s){
                                   1211 ;	-----------------------------------------
                                   1212 ;	 function writeLineSerial
                                   1213 ;	-----------------------------------------
      000433                       1214 _writeLineSerial:
      000433 AD 82            [24] 1215 	mov	r5,dpl
      000435 AE 83            [24] 1216 	mov	r6,dph
      000437 AF F0            [24] 1217 	mov	r7,b
                                   1218 ;	ECEN301LibSDCC.c:231: while(s[i] != 0){
      000439 7C 00            [12] 1219 	mov	r4,#0x00
      00043B                       1220 00101$:
      00043B EC               [12] 1221 	mov	a,r4
      00043C 2D               [12] 1222 	add	a,r5
      00043D F9               [12] 1223 	mov	r1,a
      00043E E4               [12] 1224 	clr	a
      00043F 3E               [12] 1225 	addc	a,r6
      000440 FA               [12] 1226 	mov	r2,a
      000441 8F 03            [24] 1227 	mov	ar3,r7
      000443 89 82            [24] 1228 	mov	dpl,r1
      000445 8A 83            [24] 1229 	mov	dph,r2
      000447 8B F0            [24] 1230 	mov	b,r3
      000449 12 11 CD         [24] 1231 	lcall	__gptrget
      00044C FB               [12] 1232 	mov	r3,a
      00044D 60 18            [24] 1233 	jz	00103$
                                   1234 ;	ECEN301LibSDCC.c:232: writeCharSerial(s[i]);
      00044F 8B 82            [24] 1235 	mov	dpl,r3
      000451 C0 07            [24] 1236 	push	ar7
      000453 C0 06            [24] 1237 	push	ar6
      000455 C0 05            [24] 1238 	push	ar5
      000457 C0 04            [24] 1239 	push	ar4
      000459 12 04 2A         [24] 1240 	lcall	_writeCharSerial
      00045C D0 04            [24] 1241 	pop	ar4
      00045E D0 05            [24] 1242 	pop	ar5
      000460 D0 06            [24] 1243 	pop	ar6
      000462 D0 07            [24] 1244 	pop	ar7
                                   1245 ;	ECEN301LibSDCC.c:233: i++;
      000464 0C               [12] 1246 	inc	r4
      000465 80 D4            [24] 1247 	sjmp	00101$
      000467                       1248 00103$:
                                   1249 ;	ECEN301LibSDCC.c:235: writeCharSerial(0x0D); // CR
      000467 75 82 0D         [24] 1250 	mov	dpl,#0x0d
      00046A 12 04 2A         [24] 1251 	lcall	_writeCharSerial
                                   1252 ;	ECEN301LibSDCC.c:236: writeCharSerial(0x0A); // LF
      00046D 75 82 0A         [24] 1253 	mov	dpl,#0x0a
                                   1254 ;	ECEN301LibSDCC.c:238: }
      000470 02 04 2A         [24] 1255 	ljmp	_writeCharSerial
                                   1256 ;------------------------------------------------------------
                                   1257 ;Allocation info for local variables in function 'readCharSerial'
                                   1258 ;------------------------------------------------------------
                                   1259 ;serChar                   Allocated to registers 
                                   1260 ;------------------------------------------------------------
                                   1261 ;	ECEN301LibSDCC.c:240: char readCharSerial(){
                                   1262 ;	-----------------------------------------
                                   1263 ;	 function readCharSerial
                                   1264 ;	-----------------------------------------
      000473                       1265 _readCharSerial:
                                   1266 ;	ECEN301LibSDCC.c:242: while (RI == FALSE);
      000473                       1267 00101$:
      000473 30 98 FD         [24] 1268 	jnb	_RI,00101$
                                   1269 ;	ECEN301LibSDCC.c:243: serChar = SBUF;
      000476 85 99 82         [24] 1270 	mov	dpl,_SBUF
                                   1271 ;	ECEN301LibSDCC.c:244: RI = FALSE;
                                   1272 ;	assignBit
      000479 C2 98            [12] 1273 	clr	_RI
                                   1274 ;	ECEN301LibSDCC.c:245: return serChar;
                                   1275 ;	ECEN301LibSDCC.c:246: }
      00047B 22               [24] 1276 	ret
                                   1277 ;------------------------------------------------------------
                                   1278 ;Allocation info for local variables in function 'readLineSerial'
                                   1279 ;------------------------------------------------------------
                                   1280 ;max                       Allocated with name '_readLineSerial_PARM_2'
                                   1281 ;s                         Allocated with name '_readLineSerial_s_65536_59'
                                   1282 ;i                         Allocated to registers r4 
                                   1283 ;serChar                   Allocated to registers r2 
                                   1284 ;------------------------------------------------------------
                                   1285 ;	ECEN301LibSDCC.c:248: void readLineSerial(char *s, int max){
                                   1286 ;	-----------------------------------------
                                   1287 ;	 function readLineSerial
                                   1288 ;	-----------------------------------------
      00047C                       1289 _readLineSerial:
      00047C 85 82 24         [24] 1290 	mov	_readLineSerial_s_65536_59,dpl
      00047F 85 83 25         [24] 1291 	mov	(_readLineSerial_s_65536_59 + 1),dph
      000482 85 F0 26         [24] 1292 	mov	(_readLineSerial_s_65536_59 + 2),b
                                   1293 ;	ECEN301LibSDCC.c:249: unsigned char i = 0;
      000485 7C 00            [12] 1294 	mov	r4,#0x00
                                   1295 ;	ECEN301LibSDCC.c:251: while(i < max){
      000487 7B 00            [12] 1296 	mov	r3,#0x00
      000489                       1297 00105$:
      000489 8B 01            [24] 1298 	mov	ar1,r3
      00048B 7A 00            [12] 1299 	mov	r2,#0x00
      00048D C3               [12] 1300 	clr	c
      00048E E9               [12] 1301 	mov	a,r1
      00048F 95 22            [12] 1302 	subb	a,_readLineSerial_PARM_2
      000491 EA               [12] 1303 	mov	a,r2
      000492 64 80            [12] 1304 	xrl	a,#0x80
      000494 85 23 F0         [24] 1305 	mov	b,(_readLineSerial_PARM_2 + 1)
      000497 63 F0 80         [24] 1306 	xrl	b,#0x80
      00049A 95 F0            [12] 1307 	subb	a,b
      00049C 50 44            [24] 1308 	jnc	00107$
                                   1309 ;	ECEN301LibSDCC.c:252: serChar = readCharSerial();
      00049E C0 04            [24] 1310 	push	ar4
      0004A0 C0 03            [24] 1311 	push	ar3
      0004A2 12 04 73         [24] 1312 	lcall	_readCharSerial
      0004A5 AA 82            [24] 1313 	mov	r2,dpl
      0004A7 D0 03            [24] 1314 	pop	ar3
      0004A9 D0 04            [24] 1315 	pop	ar4
                                   1316 ;	ECEN301LibSDCC.c:253: if (serChar == 0x0D || serChar == 0x0A){
      0004AB BA 0D 02         [24] 1317 	cjne	r2,#0x0d,00123$
      0004AE 80 03            [24] 1318 	sjmp	00101$
      0004B0                       1319 00123$:
      0004B0 BA 0A 16         [24] 1320 	cjne	r2,#0x0a,00102$
      0004B3                       1321 00101$:
                                   1322 ;	ECEN301LibSDCC.c:254: s[i] = 0;
      0004B3 EC               [12] 1323 	mov	a,r4
      0004B4 25 24            [12] 1324 	add	a,_readLineSerial_s_65536_59
      0004B6 F8               [12] 1325 	mov	r0,a
      0004B7 E4               [12] 1326 	clr	a
      0004B8 35 25            [12] 1327 	addc	a,(_readLineSerial_s_65536_59 + 1)
      0004BA F9               [12] 1328 	mov	r1,a
      0004BB AF 26            [24] 1329 	mov	r7,(_readLineSerial_s_65536_59 + 2)
      0004BD 88 82            [24] 1330 	mov	dpl,r0
      0004BF 89 83            [24] 1331 	mov	dph,r1
      0004C1 8F F0            [24] 1332 	mov	b,r7
      0004C3 E4               [12] 1333 	clr	a
      0004C4 12 06 6C         [24] 1334 	lcall	__gptrput
                                   1335 ;	ECEN301LibSDCC.c:255: break;
      0004C7 80 19            [24] 1336 	sjmp	00107$
      0004C9                       1337 00102$:
                                   1338 ;	ECEN301LibSDCC.c:257: s[i] = serChar;
      0004C9 EB               [12] 1339 	mov	a,r3
      0004CA 25 24            [12] 1340 	add	a,_readLineSerial_s_65536_59
      0004CC FD               [12] 1341 	mov	r5,a
      0004CD E4               [12] 1342 	clr	a
      0004CE 35 25            [12] 1343 	addc	a,(_readLineSerial_s_65536_59 + 1)
      0004D0 FE               [12] 1344 	mov	r6,a
      0004D1 AF 26            [24] 1345 	mov	r7,(_readLineSerial_s_65536_59 + 2)
      0004D3 8D 82            [24] 1346 	mov	dpl,r5
      0004D5 8E 83            [24] 1347 	mov	dph,r6
      0004D7 8F F0            [24] 1348 	mov	b,r7
      0004D9 EA               [12] 1349 	mov	a,r2
      0004DA 12 06 6C         [24] 1350 	lcall	__gptrput
                                   1351 ;	ECEN301LibSDCC.c:259: i++;
      0004DD 0B               [12] 1352 	inc	r3
      0004DE 8B 04            [24] 1353 	mov	ar4,r3
      0004E0 80 A7            [24] 1354 	sjmp	00105$
      0004E2                       1355 00107$:
                                   1356 ;	ECEN301LibSDCC.c:261: s[max] = 0;
      0004E2 E5 22            [12] 1357 	mov	a,_readLineSerial_PARM_2
      0004E4 25 24            [12] 1358 	add	a,_readLineSerial_s_65536_59
      0004E6 FD               [12] 1359 	mov	r5,a
      0004E7 E5 23            [12] 1360 	mov	a,(_readLineSerial_PARM_2 + 1)
      0004E9 35 25            [12] 1361 	addc	a,(_readLineSerial_s_65536_59 + 1)
      0004EB FE               [12] 1362 	mov	r6,a
      0004EC AF 26            [24] 1363 	mov	r7,(_readLineSerial_s_65536_59 + 2)
      0004EE 8D 82            [24] 1364 	mov	dpl,r5
      0004F0 8E 83            [24] 1365 	mov	dph,r6
      0004F2 8F F0            [24] 1366 	mov	b,r7
      0004F4 E4               [12] 1367 	clr	a
                                   1368 ;	ECEN301LibSDCC.c:262: }
      0004F5 02 06 6C         [24] 1369 	ljmp	__gptrput
                                   1370 	.area CSEG    (CODE)
                                   1371 	.area CONST   (CODE)
                                   1372 	.area XINIT   (CODE)
                                   1373 	.area CABS    (ABS,CODE)
