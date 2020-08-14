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
      000028                        506 _posLCD::
      000028                        507 	.ds 1
      000029                        508 _writeLineLCD_i_65536_25:
      000029                        509 	.ds 1
      00002A                        510 _sampleKeypad_Key_65536_36:
      00002A                        511 	.ds 1
      00002B                        512 _sampleKeypad_key_131072_37:
      00002B                        513 	.ds 1
      00002C                        514 _sampleADC_sample_65536_50:
      00002C                        515 	.ds 2
      00002E                        516 _readLineSerial_PARM_2:
      00002E                        517 	.ds 2
      000030                        518 _readLineSerial_s_65536_59:
      000030                        519 	.ds 3
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
      00005F 75 2B 00         [24]  579 	mov	_sampleKeypad_key_131072_37,#0x00
                                    580 ;------------------------------------------------------------
                                    581 ;Allocation info for local variables in function 'sampleADC'
                                    582 ;------------------------------------------------------------
                                    583 ;sample                    Allocated with name '_sampleADC_sample_65536_50'
                                    584 ;------------------------------------------------------------
                                    585 ;	ECEN301LibSDCC.c:197: static int sample = 0;
      000062 E4               [12]  586 	clr	a
      000063 F5 2C            [12]  587 	mov	_sampleADC_sample_65536_50,a
      000065 F5 2D            [12]  588 	mov	(_sampleADC_sample_65536_50 + 1),a
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
      0000F0                        608 _delay:
                           000007   609 	ar7 = 0x07
                           000006   610 	ar6 = 0x06
                           000005   611 	ar5 = 0x05
                           000004   612 	ar4 = 0x04
                           000003   613 	ar3 = 0x03
                           000002   614 	ar2 = 0x02
                           000001   615 	ar1 = 0x01
                           000000   616 	ar0 = 0x00
      0000F0 AE 82            [24]  617 	mov	r6,dpl
      0000F2 AF 83            [24]  618 	mov	r7,dph
                                    619 ;	ECEN301LibSDCC.c:37: for(i=0;i<time;i++){
      0000F4 7C 00            [12]  620 	mov	r4,#0x00
      0000F6 7D 00            [12]  621 	mov	r5,#0x00
      0000F8                        622 00103$:
      0000F8 C3               [12]  623 	clr	c
      0000F9 EC               [12]  624 	mov	a,r4
      0000FA 9E               [12]  625 	subb	a,r6
      0000FB ED               [12]  626 	mov	a,r5
      0000FC 9F               [12]  627 	subb	a,r7
      0000FD 50 07            [24]  628 	jnc	00105$
      0000FF 0C               [12]  629 	inc	r4
      000100 BC 00 F5         [24]  630 	cjne	r4,#0x00,00103$
      000103 0D               [12]  631 	inc	r5
      000104 80 F2            [24]  632 	sjmp	00103$
      000106                        633 00105$:
                                    634 ;	ECEN301LibSDCC.c:40: }
      000106 22               [24]  635 	ret
                                    636 ;------------------------------------------------------------
                                    637 ;Allocation info for local variables in function 'initLCD'
                                    638 ;------------------------------------------------------------
                                    639 ;	ECEN301LibSDCC.c:44: void initLCD(){
                                    640 ;	-----------------------------------------
                                    641 ;	 function initLCD
                                    642 ;	-----------------------------------------
      000107                        643 _initLCD:
                                    644 ;	ECEN301LibSDCC.c:45: RS = 0;
                                    645 ;	assignBit
      000107 C2 C0            [12]  646 	clr	_RS
                                    647 ;	ECEN301LibSDCC.c:46: RW = 0;
                                    648 ;	assignBit
      000109 C2 C1            [12]  649 	clr	_RW
                                    650 ;	ECEN301LibSDCC.c:47: DATA = 0x30;
      00010B 75 80 30         [24]  651 	mov	_DATA,#0x30
                                    652 ;	ECEN301LibSDCC.c:48: EN = 1; delay(300); EN = 0; delay(100);
                                    653 ;	assignBit
      00010E D2 C2            [12]  654 	setb	_EN
      000110 90 01 2C         [24]  655 	mov	dptr,#0x012c
      000113 12 00 F0         [24]  656 	lcall	_delay
                                    657 ;	assignBit
      000116 C2 C2            [12]  658 	clr	_EN
      000118 90 00 64         [24]  659 	mov	dptr,#0x0064
      00011B 12 00 F0         [24]  660 	lcall	_delay
                                    661 ;	ECEN301LibSDCC.c:49: EN = 1; delay(300); EN = 0; delay(100);
                                    662 ;	assignBit
      00011E D2 C2            [12]  663 	setb	_EN
      000120 90 01 2C         [24]  664 	mov	dptr,#0x012c
      000123 12 00 F0         [24]  665 	lcall	_delay
                                    666 ;	assignBit
      000126 C2 C2            [12]  667 	clr	_EN
      000128 90 00 64         [24]  668 	mov	dptr,#0x0064
      00012B 12 00 F0         [24]  669 	lcall	_delay
                                    670 ;	ECEN301LibSDCC.c:50: EN = 1; delay(300); EN = 0; delay(100);
                                    671 ;	assignBit
      00012E D2 C2            [12]  672 	setb	_EN
      000130 90 01 2C         [24]  673 	mov	dptr,#0x012c
      000133 12 00 F0         [24]  674 	lcall	_delay
                                    675 ;	assignBit
      000136 C2 C2            [12]  676 	clr	_EN
      000138 90 00 64         [24]  677 	mov	dptr,#0x0064
      00013B 12 00 F0         [24]  678 	lcall	_delay
                                    679 ;	ECEN301LibSDCC.c:52: DATA = 0x38;
      00013E 75 80 38         [24]  680 	mov	_DATA,#0x38
                                    681 ;	ECEN301LibSDCC.c:53: EN = 1; delay(100); EN = 0; delay(100); // function set
                                    682 ;	assignBit
      000141 D2 C2            [12]  683 	setb	_EN
      000143 90 00 64         [24]  684 	mov	dptr,#0x0064
      000146 12 00 F0         [24]  685 	lcall	_delay
                                    686 ;	assignBit
      000149 C2 C2            [12]  687 	clr	_EN
      00014B 90 00 64         [24]  688 	mov	dptr,#0x0064
      00014E 12 00 F0         [24]  689 	lcall	_delay
                                    690 ;	ECEN301LibSDCC.c:54: DATA = 0x08;
      000151 75 80 08         [24]  691 	mov	_DATA,#0x08
                                    692 ;	ECEN301LibSDCC.c:55: EN = 1; delay(300); EN = 0; delay(100); // on off control turn display off
                                    693 ;	assignBit
      000154 D2 C2            [12]  694 	setb	_EN
      000156 90 01 2C         [24]  695 	mov	dptr,#0x012c
      000159 12 00 F0         [24]  696 	lcall	_delay
                                    697 ;	assignBit
      00015C C2 C2            [12]  698 	clr	_EN
      00015E 90 00 64         [24]  699 	mov	dptr,#0x0064
      000161 12 00 F0         [24]  700 	lcall	_delay
                                    701 ;	ECEN301LibSDCC.c:56: DATA = 0x01;
      000164 75 80 01         [24]  702 	mov	_DATA,#0x01
                                    703 ;	ECEN301LibSDCC.c:57: EN = 1; delay(300); EN = 0; delay(100); // clear display
                                    704 ;	assignBit
      000167 D2 C2            [12]  705 	setb	_EN
      000169 90 01 2C         [24]  706 	mov	dptr,#0x012c
      00016C 12 00 F0         [24]  707 	lcall	_delay
                                    708 ;	assignBit
      00016F C2 C2            [12]  709 	clr	_EN
      000171 90 00 64         [24]  710 	mov	dptr,#0x0064
      000174 12 00 F0         [24]  711 	lcall	_delay
                                    712 ;	ECEN301LibSDCC.c:58: DATA = 0x06;
      000177 75 80 06         [24]  713 	mov	_DATA,#0x06
                                    714 ;	ECEN301LibSDCC.c:59: EN = 1; delay(300); EN = 0; delay(100); // entry mode set, increment, no shift
                                    715 ;	assignBit
      00017A D2 C2            [12]  716 	setb	_EN
      00017C 90 01 2C         [24]  717 	mov	dptr,#0x012c
      00017F 12 00 F0         [24]  718 	lcall	_delay
                                    719 ;	assignBit
      000182 C2 C2            [12]  720 	clr	_EN
      000184 90 00 64         [24]  721 	mov	dptr,#0x0064
      000187 12 00 F0         [24]  722 	lcall	_delay
                                    723 ;	ECEN301LibSDCC.c:60: DATA = 0x0C;
      00018A 75 80 0C         [24]  724 	mov	_DATA,#0x0c
                                    725 ;	ECEN301LibSDCC.c:61: EN = 1; delay(300); EN = 0; delay(100); // display on/off control, display on, no cursor, no blink
                                    726 ;	assignBit
      00018D D2 C2            [12]  727 	setb	_EN
      00018F 90 01 2C         [24]  728 	mov	dptr,#0x012c
      000192 12 00 F0         [24]  729 	lcall	_delay
                                    730 ;	assignBit
      000195 C2 C2            [12]  731 	clr	_EN
      000197 90 00 64         [24]  732 	mov	dptr,#0x0064
      00019A 12 00 F0         [24]  733 	lcall	_delay
                                    734 ;	ECEN301LibSDCC.c:62: posLCD = 0;
      00019D 75 28 00         [24]  735 	mov	_posLCD,#0x00
                                    736 ;	ECEN301LibSDCC.c:63: }
      0001A0 22               [24]  737 	ret
                                    738 ;------------------------------------------------------------
                                    739 ;Allocation info for local variables in function 'writeCharLCD'
                                    740 ;------------------------------------------------------------
                                    741 ;c                         Allocated to registers r7 
                                    742 ;------------------------------------------------------------
                                    743 ;	ECEN301LibSDCC.c:65: void writeCharLCD(char c){
                                    744 ;	-----------------------------------------
                                    745 ;	 function writeCharLCD
                                    746 ;	-----------------------------------------
      0001A1                        747 _writeCharLCD:
      0001A1 AF 82            [24]  748 	mov	r7,dpl
                                    749 ;	ECEN301LibSDCC.c:66: if(posLCD == 16){ // go to second line
      0001A3 74 10            [12]  750 	mov	a,#0x10
      0001A5 B5 28 0C         [24]  751 	cjne	a,_posLCD,00104$
                                    752 ;	ECEN301LibSDCC.c:67: setLCDPos(0x10);
      0001A8 75 82 10         [24]  753 	mov	dpl,#0x10
      0001AB C0 07            [24]  754 	push	ar7
      0001AD 12 02 33         [24]  755 	lcall	_setLCDPos
      0001B0 D0 07            [24]  756 	pop	ar7
      0001B2 80 0F            [24]  757 	sjmp	00105$
      0001B4                        758 00104$:
                                    759 ;	ECEN301LibSDCC.c:68: }else if(posLCD == 32){
      0001B4 74 20            [12]  760 	mov	a,#0x20
      0001B6 B5 28 0A         [24]  761 	cjne	a,_posLCD,00105$
                                    762 ;	ECEN301LibSDCC.c:69: setLCDPos(0);	// return to first line
      0001B9 75 82 00         [24]  763 	mov	dpl,#0x00
      0001BC C0 07            [24]  764 	push	ar7
      0001BE 12 02 33         [24]  765 	lcall	_setLCDPos
      0001C1 D0 07            [24]  766 	pop	ar7
      0001C3                        767 00105$:
                                    768 ;	ECEN301LibSDCC.c:71: RS = 1;
                                    769 ;	assignBit
      0001C3 D2 C0            [12]  770 	setb	_RS
                                    771 ;	ECEN301LibSDCC.c:72: RW = 0;
                                    772 ;	assignBit
      0001C5 C2 C1            [12]  773 	clr	_RW
                                    774 ;	ECEN301LibSDCC.c:73: DATA = c;
      0001C7 8F 80            [24]  775 	mov	_DATA,r7
                                    776 ;	ECEN301LibSDCC.c:74: EN = 1;
                                    777 ;	assignBit
      0001C9 D2 C2            [12]  778 	setb	_EN
                                    779 ;	ECEN301LibSDCC.c:75: delay(50);
      0001CB 90 00 32         [24]  780 	mov	dptr,#0x0032
      0001CE 12 00 F0         [24]  781 	lcall	_delay
                                    782 ;	ECEN301LibSDCC.c:76: EN = 0;
                                    783 ;	assignBit
      0001D1 C2 C2            [12]  784 	clr	_EN
                                    785 ;	ECEN301LibSDCC.c:77: delay(50);
      0001D3 90 00 32         [24]  786 	mov	dptr,#0x0032
      0001D6 12 00 F0         [24]  787 	lcall	_delay
                                    788 ;	ECEN301LibSDCC.c:78: posLCD++;
      0001D9 05 28            [12]  789 	inc	_posLCD
                                    790 ;	ECEN301LibSDCC.c:79: }
      0001DB 22               [24]  791 	ret
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
      0001DC                        802 _writeLineLCD:
      0001DC AD 82            [24]  803 	mov	r5,dpl
      0001DE AE 83            [24]  804 	mov	r6,dph
      0001E0 AF F0            [24]  805 	mov	r7,b
                                    806 ;	ECEN301LibSDCC.c:83: for(i=0;i<32;i++){
      0001E2 75 29 00         [24]  807 	mov	_writeLineLCD_i_65536_25,#0x00
      0001E5                        808 00104$:
                                    809 ;	ECEN301LibSDCC.c:84: if(s[i] == 0){
      0001E5 E5 29            [12]  810 	mov	a,_writeLineLCD_i_65536_25
      0001E7 2D               [12]  811 	add	a,r5
      0001E8 FA               [12]  812 	mov	r2,a
      0001E9 E4               [12]  813 	clr	a
      0001EA 3E               [12]  814 	addc	a,r6
      0001EB FB               [12]  815 	mov	r3,a
      0001EC 8F 04            [24]  816 	mov	ar4,r7
      0001EE 8A 82            [24]  817 	mov	dpl,r2
      0001F0 8B 83            [24]  818 	mov	dph,r3
      0001F2 8C F0            [24]  819 	mov	b,r4
      0001F4 12 0D 74         [24]  820 	lcall	__gptrget
      0001F7 FC               [12]  821 	mov	r4,a
      0001F8 60 19            [24]  822 	jz	00106$
                                    823 ;	ECEN301LibSDCC.c:87: writeCharLCD(s[i]);
      0001FA 8C 82            [24]  824 	mov	dpl,r4
      0001FC C0 07            [24]  825 	push	ar7
      0001FE C0 06            [24]  826 	push	ar6
      000200 C0 05            [24]  827 	push	ar5
      000202 12 01 A1         [24]  828 	lcall	_writeCharLCD
      000205 D0 05            [24]  829 	pop	ar5
      000207 D0 06            [24]  830 	pop	ar6
      000209 D0 07            [24]  831 	pop	ar7
                                    832 ;	ECEN301LibSDCC.c:83: for(i=0;i<32;i++){
      00020B 05 29            [12]  833 	inc	_writeLineLCD_i_65536_25
      00020D 74 E0            [12]  834 	mov	a,#0x100 - 0x20
      00020F 25 29            [12]  835 	add	a,_writeLineLCD_i_65536_25
      000211 50 D2            [24]  836 	jnc	00104$
      000213                        837 00106$:
                                    838 ;	ECEN301LibSDCC.c:89: }
      000213 22               [24]  839 	ret
                                    840 ;------------------------------------------------------------
                                    841 ;Allocation info for local variables in function 'clearLCD'
                                    842 ;------------------------------------------------------------
                                    843 ;	ECEN301LibSDCC.c:91: void clearLCD(){
                                    844 ;	-----------------------------------------
                                    845 ;	 function clearLCD
                                    846 ;	-----------------------------------------
      000214                        847 _clearLCD:
                                    848 ;	ECEN301LibSDCC.c:92: RS = 0;
                                    849 ;	assignBit
      000214 C2 C0            [12]  850 	clr	_RS
                                    851 ;	ECEN301LibSDCC.c:93: RW = 0;
                                    852 ;	assignBit
      000216 C2 C1            [12]  853 	clr	_RW
                                    854 ;	ECEN301LibSDCC.c:94: DATA = 0x01;
      000218 75 80 01         [24]  855 	mov	_DATA,#0x01
                                    856 ;	ECEN301LibSDCC.c:95: EN = 1;
                                    857 ;	assignBit
      00021B D2 C2            [12]  858 	setb	_EN
                                    859 ;	ECEN301LibSDCC.c:96: delay(50);
      00021D 90 00 32         [24]  860 	mov	dptr,#0x0032
      000220 12 00 F0         [24]  861 	lcall	_delay
                                    862 ;	ECEN301LibSDCC.c:97: EN = 0;
                                    863 ;	assignBit
      000223 C2 C2            [12]  864 	clr	_EN
                                    865 ;	ECEN301LibSDCC.c:98: delay(100);
      000225 90 00 64         [24]  866 	mov	dptr,#0x0064
      000228 12 00 F0         [24]  867 	lcall	_delay
                                    868 ;	ECEN301LibSDCC.c:99: posLCD = 0;
      00022B 75 28 00         [24]  869 	mov	_posLCD,#0x00
                                    870 ;	ECEN301LibSDCC.c:100: }
      00022E 22               [24]  871 	ret
                                    872 ;------------------------------------------------------------
                                    873 ;Allocation info for local variables in function 'getLCDPos'
                                    874 ;------------------------------------------------------------
                                    875 ;	ECEN301LibSDCC.c:102: unsigned char getLCDPos(){
                                    876 ;	-----------------------------------------
                                    877 ;	 function getLCDPos
                                    878 ;	-----------------------------------------
      00022F                        879 _getLCDPos:
                                    880 ;	ECEN301LibSDCC.c:103: return posLCD;
      00022F 85 28 82         [24]  881 	mov	dpl,_posLCD
                                    882 ;	ECEN301LibSDCC.c:104: }
      000232 22               [24]  883 	ret
                                    884 ;------------------------------------------------------------
                                    885 ;Allocation info for local variables in function 'setLCDPos'
                                    886 ;------------------------------------------------------------
                                    887 ;p                         Allocated to registers r7 
                                    888 ;------------------------------------------------------------
                                    889 ;	ECEN301LibSDCC.c:106: void setLCDPos(unsigned char p){
                                    890 ;	-----------------------------------------
                                    891 ;	 function setLCDPos
                                    892 ;	-----------------------------------------
      000233                        893 _setLCDPos:
      000233 AF 82            [24]  894 	mov	r7,dpl
                                    895 ;	ECEN301LibSDCC.c:107: if(posLCD < 32){
      000235 74 E0            [12]  896 	mov	a,#0x100 - 0x20
      000237 25 28            [12]  897 	add	a,_posLCD
      000239 40 3E            [24]  898 	jc	00106$
                                    899 ;	ECEN301LibSDCC.c:108: posLCD = p;
      00023B 8F 28            [24]  900 	mov	_posLCD,r7
                                    901 ;	ECEN301LibSDCC.c:109: if(posLCD < 16){
      00023D 74 F0            [12]  902 	mov	a,#0x100 - 0x10
      00023F 25 28            [12]  903 	add	a,_posLCD
      000241 40 1B            [24]  904 	jc	00102$
                                    905 ;	ECEN301LibSDCC.c:110: DATA = 0x80 + posLCD;
      000243 AF 28            [24]  906 	mov	r7,_posLCD
      000245 74 80            [12]  907 	mov	a,#0x80
      000247 2F               [12]  908 	add	a,r7
      000248 F5 80            [12]  909 	mov	_DATA,a
                                    910 ;	ECEN301LibSDCC.c:111: RS = 0;
                                    911 ;	assignBit
      00024A C2 C0            [12]  912 	clr	_RS
                                    913 ;	ECEN301LibSDCC.c:112: RW = 0;
                                    914 ;	assignBit
      00024C C2 C1            [12]  915 	clr	_RW
                                    916 ;	ECEN301LibSDCC.c:113: EN = 1;
                                    917 ;	assignBit
      00024E D2 C2            [12]  918 	setb	_EN
                                    919 ;	ECEN301LibSDCC.c:114: delay(100);
      000250 90 00 64         [24]  920 	mov	dptr,#0x0064
      000253 12 00 F0         [24]  921 	lcall	_delay
                                    922 ;	ECEN301LibSDCC.c:115: EN = 0;
                                    923 ;	assignBit
      000256 C2 C2            [12]  924 	clr	_EN
                                    925 ;	ECEN301LibSDCC.c:116: delay(50);
      000258 90 00 32         [24]  926 	mov	dptr,#0x0032
      00025B 02 00 F0         [24]  927 	ljmp	_delay
      00025E                        928 00102$:
                                    929 ;	ECEN301LibSDCC.c:119: DATA = 0xC0 + posLCD - 16;
      00025E AF 28            [24]  930 	mov	r7,_posLCD
      000260 74 B0            [12]  931 	mov	a,#0xb0
      000262 2F               [12]  932 	add	a,r7
      000263 F5 80            [12]  933 	mov	_DATA,a
                                    934 ;	ECEN301LibSDCC.c:120: RS = 0;
                                    935 ;	assignBit
      000265 C2 C0            [12]  936 	clr	_RS
                                    937 ;	ECEN301LibSDCC.c:121: RW = 0;
                                    938 ;	assignBit
      000267 C2 C1            [12]  939 	clr	_RW
                                    940 ;	ECEN301LibSDCC.c:122: EN = 1;
                                    941 ;	assignBit
      000269 D2 C2            [12]  942 	setb	_EN
                                    943 ;	ECEN301LibSDCC.c:123: delay(100);
      00026B 90 00 64         [24]  944 	mov	dptr,#0x0064
      00026E 12 00 F0         [24]  945 	lcall	_delay
                                    946 ;	ECEN301LibSDCC.c:124: EN = 0;
                                    947 ;	assignBit
      000271 C2 C2            [12]  948 	clr	_EN
                                    949 ;	ECEN301LibSDCC.c:125: delay(50);
      000273 90 00 32         [24]  950 	mov	dptr,#0x0032
                                    951 ;	ECEN301LibSDCC.c:128: }
      000276 02 00 F0         [24]  952 	ljmp	_delay
      000279                        953 00106$:
      000279 22               [24]  954 	ret
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
      00027A                        965 _sampleKeypad:
                                    966 ;	ECEN301LibSDCC.c:137: P2_0 = TRUE;
      00027A                        967 00127$:
                                    968 ;	ECEN301LibSDCC.c:136: for(static unsigned char key = 0; key < 255; key++);
      00027A 74 01            [12]  969 	mov	a,#0x100 - 0xff
      00027C 25 2B            [12]  970 	add	a,_sampleKeypad_key_131072_37
      00027E 40 04            [24]  971 	jc	00101$
      000280 05 2B            [12]  972 	inc	_sampleKeypad_key_131072_37
      000282 80 F6            [24]  973 	sjmp	00127$
      000284                        974 00101$:
                                    975 ;	ECEN301LibSDCC.c:137: P2_0 = TRUE;
                                    976 ;	assignBit
      000284 D2 A0            [12]  977 	setb	_P2_0
                                    978 ;	ECEN301LibSDCC.c:138: P2_1 = TRUE;
                                    979 ;	assignBit
      000286 D2 A1            [12]  980 	setb	_P2_1
                                    981 ;	ECEN301LibSDCC.c:139: P2_2 = TRUE;
                                    982 ;	assignBit
      000288 D2 A2            [12]  983 	setb	_P2_2
                                    984 ;	ECEN301LibSDCC.c:140: P2_3 = TRUE;
                                    985 ;	assignBit
      00028A D2 A3            [12]  986 	setb	_P2_3
                                    987 ;	ECEN301LibSDCC.c:141: Key = 13;
      00028C 75 2A 0D         [24]  988 	mov	_sampleKeypad_Key_65536_36,#0x0d
                                    989 ;	ECEN301LibSDCC.c:143: P2_0 = FALSE;
                                    990 ;	assignBit
      00028F C2 A0            [12]  991 	clr	_P2_0
                                    992 ;	ECEN301LibSDCC.c:144: if(!P2_4){ 
      000291 20 A4 03         [24]  993 	jb	_P2_4,00103$
                                    994 ;	ECEN301LibSDCC.c:145: Key = 1;
      000294 75 2A 01         [24]  995 	mov	_sampleKeypad_Key_65536_36,#0x01
      000297                        996 00103$:
                                    997 ;	ECEN301LibSDCC.c:147: if(!P2_5){
      000297 20 A5 03         [24]  998 	jb	_P2_5,00105$
                                    999 ;	ECEN301LibSDCC.c:148: Key = 2;
      00029A 75 2A 02         [24] 1000 	mov	_sampleKeypad_Key_65536_36,#0x02
      00029D                       1001 00105$:
                                   1002 ;	ECEN301LibSDCC.c:150: if(!P2_6){
      00029D 20 A6 03         [24] 1003 	jb	_P2_6,00107$
                                   1004 ;	ECEN301LibSDCC.c:151: Key = 3;
      0002A0 75 2A 03         [24] 1005 	mov	_sampleKeypad_Key_65536_36,#0x03
      0002A3                       1006 00107$:
                                   1007 ;	ECEN301LibSDCC.c:153: P2_0 = TRUE;
                                   1008 ;	assignBit
      0002A3 D2 A0            [12] 1009 	setb	_P2_0
                                   1010 ;	ECEN301LibSDCC.c:155: P2_1 = FALSE;
                                   1011 ;	assignBit
      0002A5 C2 A1            [12] 1012 	clr	_P2_1
                                   1013 ;	ECEN301LibSDCC.c:156: if(!P2_4){
      0002A7 20 A4 03         [24] 1014 	jb	_P2_4,00109$
                                   1015 ;	ECEN301LibSDCC.c:157: Key = 4;
      0002AA 75 2A 04         [24] 1016 	mov	_sampleKeypad_Key_65536_36,#0x04
      0002AD                       1017 00109$:
                                   1018 ;	ECEN301LibSDCC.c:159: if(!P2_5){
      0002AD 20 A5 03         [24] 1019 	jb	_P2_5,00111$
                                   1020 ;	ECEN301LibSDCC.c:160: Key = 5;
      0002B0 75 2A 05         [24] 1021 	mov	_sampleKeypad_Key_65536_36,#0x05
      0002B3                       1022 00111$:
                                   1023 ;	ECEN301LibSDCC.c:162: if(!P2_6){
      0002B3 20 A6 03         [24] 1024 	jb	_P2_6,00113$
                                   1025 ;	ECEN301LibSDCC.c:163: Key = 6;
      0002B6 75 2A 06         [24] 1026 	mov	_sampleKeypad_Key_65536_36,#0x06
      0002B9                       1027 00113$:
                                   1028 ;	ECEN301LibSDCC.c:165: P2_1 = TRUE;
                                   1029 ;	assignBit
      0002B9 D2 A1            [12] 1030 	setb	_P2_1
                                   1031 ;	ECEN301LibSDCC.c:167: P2_2 = FALSE;
                                   1032 ;	assignBit
      0002BB C2 A2            [12] 1033 	clr	_P2_2
                                   1034 ;	ECEN301LibSDCC.c:168: if(!P2_4){
      0002BD 20 A4 03         [24] 1035 	jb	_P2_4,00115$
                                   1036 ;	ECEN301LibSDCC.c:169: Key = 7;
      0002C0 75 2A 07         [24] 1037 	mov	_sampleKeypad_Key_65536_36,#0x07
      0002C3                       1038 00115$:
                                   1039 ;	ECEN301LibSDCC.c:171: if(!P2_5){
      0002C3 20 A5 03         [24] 1040 	jb	_P2_5,00117$
                                   1041 ;	ECEN301LibSDCC.c:172: Key = 8;
      0002C6 75 2A 08         [24] 1042 	mov	_sampleKeypad_Key_65536_36,#0x08
      0002C9                       1043 00117$:
                                   1044 ;	ECEN301LibSDCC.c:174: if(!P2_6){
      0002C9 20 A6 03         [24] 1045 	jb	_P2_6,00119$
                                   1046 ;	ECEN301LibSDCC.c:175: Key = 9;
      0002CC 75 2A 09         [24] 1047 	mov	_sampleKeypad_Key_65536_36,#0x09
      0002CF                       1048 00119$:
                                   1049 ;	ECEN301LibSDCC.c:177: P2_2 = TRUE;
                                   1050 ;	assignBit
      0002CF D2 A2            [12] 1051 	setb	_P2_2
                                   1052 ;	ECEN301LibSDCC.c:179: P2_3 = FALSE;
                                   1053 ;	assignBit
      0002D1 C2 A3            [12] 1054 	clr	_P2_3
                                   1055 ;	ECEN301LibSDCC.c:180: if(!P2_4){
      0002D3 20 A4 03         [24] 1056 	jb	_P2_4,00121$
                                   1057 ;	ECEN301LibSDCC.c:181: Key = 10;
      0002D6 75 2A 0A         [24] 1058 	mov	_sampleKeypad_Key_65536_36,#0x0a
      0002D9                       1059 00121$:
                                   1060 ;	ECEN301LibSDCC.c:183: if(!P2_5){
      0002D9 20 A5 03         [24] 1061 	jb	_P2_5,00123$
                                   1062 ;	ECEN301LibSDCC.c:184: Key = 0;
      0002DC 75 2A 00         [24] 1063 	mov	_sampleKeypad_Key_65536_36,#0x00
      0002DF                       1064 00123$:
                                   1065 ;	ECEN301LibSDCC.c:186: if(!P2_6){
      0002DF 20 A6 03         [24] 1066 	jb	_P2_6,00125$
                                   1067 ;	ECEN301LibSDCC.c:187: Key = 12;
      0002E2 75 2A 0C         [24] 1068 	mov	_sampleKeypad_Key_65536_36,#0x0c
      0002E5                       1069 00125$:
                                   1070 ;	ECEN301LibSDCC.c:189: P2_3 = TRUE;
                                   1071 ;	assignBit
      0002E5 D2 A3            [12] 1072 	setb	_P2_3
                                   1073 ;	ECEN301LibSDCC.c:191: return Key;
      0002E7 85 2A 82         [24] 1074 	mov	dpl,_sampleKeypad_Key_65536_36
                                   1075 ;	ECEN301LibSDCC.c:192: }
      0002EA 22               [24] 1076 	ret
                                   1077 ;------------------------------------------------------------
                                   1078 ;Allocation info for local variables in function 'sampleADC'
                                   1079 ;------------------------------------------------------------
                                   1080 ;sample                    Allocated with name '_sampleADC_sample_65536_50'
                                   1081 ;------------------------------------------------------------
                                   1082 ;	ECEN301LibSDCC.c:196: int sampleADC(){
                                   1083 ;	-----------------------------------------
                                   1084 ;	 function sampleADC
                                   1085 ;	-----------------------------------------
      0002EB                       1086 _sampleADC:
                                   1087 ;	ECEN301LibSDCC.c:198: ADCF |= 0x01;
      0002EB AE F6            [24] 1088 	mov	r6,_ADCF
      0002ED 43 06 01         [24] 1089 	orl	ar6,#0x01
      0002F0 8E F6            [24] 1090 	mov	_ADCF,r6
                                   1091 ;	ECEN301LibSDCC.c:199: ADCON = 0x20;
      0002F2 75 F3 20         [24] 1092 	mov	_ADCON,#0x20
                                   1093 ;	ECEN301LibSDCC.c:200: ADCON |= 0x08;
      0002F5 AE F3            [24] 1094 	mov	r6,_ADCON
      0002F7 43 06 08         [24] 1095 	orl	ar6,#0x08
      0002FA 8E F3            [24] 1096 	mov	_ADCON,r6
                                   1097 ;	ECEN301LibSDCC.c:201: while(ADCON & 0x10 != 0x10);
      0002FC                       1098 00101$:
      0002FC E5 F3            [12] 1099 	mov	a,_ADCON
      0002FE E4               [12] 1100 	clr	a
      0002FF 70 FB            [24] 1101 	jnz	00101$
                                   1102 ;	ECEN301LibSDCC.c:202: ADCON &= 0xEF;
      000301 53 F3 EF         [24] 1103 	anl	_ADCON,#0xef
                                   1104 ;	ECEN301LibSDCC.c:203: sample = (ADDH << 2) + ADDL;
      000304 AE F5            [24] 1105 	mov	r6,_ADDH
      000306 7F 00            [12] 1106 	mov	r7,#0x00
      000308 EE               [12] 1107 	mov	a,r6
      000309 2E               [12] 1108 	add	a,r6
      00030A FE               [12] 1109 	mov	r6,a
      00030B EF               [12] 1110 	mov	a,r7
      00030C 33               [12] 1111 	rlc	a
      00030D FF               [12] 1112 	mov	r7,a
      00030E EE               [12] 1113 	mov	a,r6
      00030F 2E               [12] 1114 	add	a,r6
      000310 FE               [12] 1115 	mov	r6,a
      000311 EF               [12] 1116 	mov	a,r7
      000312 33               [12] 1117 	rlc	a
      000313 FF               [12] 1118 	mov	r7,a
      000314 AC F4            [24] 1119 	mov	r4,_ADDL
      000316 7D 00            [12] 1120 	mov	r5,#0x00
      000318 EC               [12] 1121 	mov	a,r4
      000319 2E               [12] 1122 	add	a,r6
      00031A F5 2C            [12] 1123 	mov	_sampleADC_sample_65536_50,a
      00031C ED               [12] 1124 	mov	a,r5
      00031D 3F               [12] 1125 	addc	a,r7
      00031E F5 2D            [12] 1126 	mov	(_sampleADC_sample_65536_50 + 1),a
                                   1127 ;	ECEN301LibSDCC.c:204: return sample;
      000320 85 2C 82         [24] 1128 	mov	dpl,_sampleADC_sample_65536_50
      000323 85 2D 83         [24] 1129 	mov	dph,(_sampleADC_sample_65536_50 + 1)
                                   1130 ;	ECEN301LibSDCC.c:205: }
      000326 22               [24] 1131 	ret
                                   1132 ;------------------------------------------------------------
                                   1133 ;Allocation info for local variables in function 'initSerial'
                                   1134 ;------------------------------------------------------------
                                   1135 ;baud                      Allocated to registers r4 r5 
                                   1136 ;------------------------------------------------------------
                                   1137 ;	ECEN301LibSDCC.c:209: void initSerial(unsigned int baud){
                                   1138 ;	-----------------------------------------
                                   1139 ;	 function initSerial
                                   1140 ;	-----------------------------------------
      000327                       1141 _initSerial:
      000327 AE 82            [24] 1142 	mov	r6,dpl
      000329 AF 83            [24] 1143 	mov	r7,dph
                                   1144 ;	ECEN301LibSDCC.c:210: TMOD |= 0x20;
      00032B AC 89            [24] 1145 	mov	r4,_TMOD
      00032D 43 04 20         [24] 1146 	orl	ar4,#0x20
      000330 8C 89            [24] 1147 	mov	_TMOD,r4
                                   1148 ;	ECEN301LibSDCC.c:211: TMOD &= 0x2F;
      000332 53 89 2F         [24] 1149 	anl	_TMOD,#0x2f
                                   1150 ;	ECEN301LibSDCC.c:212: SM0 = FALSE;
                                   1151 ;	assignBit
      000335 C2 9F            [12] 1152 	clr	_SM0
                                   1153 ;	ECEN301LibSDCC.c:213: SM1 = TRUE;
                                   1154 ;	assignBit
      000337 D2 9E            [12] 1155 	setb	_SM1
                                   1156 ;	ECEN301LibSDCC.c:214: PCON |= 0x80;
      000339 AC 87            [24] 1157 	mov	r4,_PCON
      00033B 43 04 80         [24] 1158 	orl	ar4,#0x80
      00033E 8C 87            [24] 1159 	mov	_PCON,r4
                                   1160 ;	ECEN301LibSDCC.c:216: baud = 62500/baud;
      000340 8E 63            [24] 1161 	mov	__divslong_PARM_2,r6
      000342 8F 64            [24] 1162 	mov	(__divslong_PARM_2 + 1),r7
      000344 75 65 00         [24] 1163 	mov	(__divslong_PARM_2 + 2),#0x00
      000347 75 66 00         [24] 1164 	mov	(__divslong_PARM_2 + 3),#0x00
      00034A 90 F4 24         [24] 1165 	mov	dptr,#0xf424
      00034D E4               [12] 1166 	clr	a
      00034E F5 F0            [12] 1167 	mov	b,a
      000350 12 04 AE         [24] 1168 	lcall	__divslong
      000353 AC 82            [24] 1169 	mov	r4,dpl
                                   1170 ;	ECEN301LibSDCC.c:217: TH1 = (unsigned char)(256 - baud);
      000355 C3               [12] 1171 	clr	c
      000356 E4               [12] 1172 	clr	a
      000357 9C               [12] 1173 	subb	a,r4
      000358 FC               [12] 1174 	mov	r4,a
      000359 8C 8D            [24] 1175 	mov	_TH1,r4
                                   1176 ;	ECEN301LibSDCC.c:219: REN = TRUE;
                                   1177 ;	assignBit
      00035B D2 9C            [12] 1178 	setb	_REN
                                   1179 ;	ECEN301LibSDCC.c:220: TR1 = TRUE; 
                                   1180 ;	assignBit
      00035D D2 8E            [12] 1181 	setb	_TR1
                                   1182 ;	ECEN301LibSDCC.c:221: }
      00035F 22               [24] 1183 	ret
                                   1184 ;------------------------------------------------------------
                                   1185 ;Allocation info for local variables in function 'writeCharSerial'
                                   1186 ;------------------------------------------------------------
                                   1187 ;c                         Allocated to registers 
                                   1188 ;------------------------------------------------------------
                                   1189 ;	ECEN301LibSDCC.c:223: void writeCharSerial(char c){
                                   1190 ;	-----------------------------------------
                                   1191 ;	 function writeCharSerial
                                   1192 ;	-----------------------------------------
      000360                       1193 _writeCharSerial:
      000360 85 82 99         [24] 1194 	mov	_SBUF,dpl
                                   1195 ;	ECEN301LibSDCC.c:225: while(TI == FALSE);
      000363                       1196 00101$:
                                   1197 ;	ECEN301LibSDCC.c:226: TI = FALSE;
                                   1198 ;	assignBit
      000363 10 99 02         [24] 1199 	jbc	_TI,00114$
      000366 80 FB            [24] 1200 	sjmp	00101$
      000368                       1201 00114$:
                                   1202 ;	ECEN301LibSDCC.c:227: }
      000368 22               [24] 1203 	ret
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
      000369                       1214 _writeLineSerial:
      000369 AD 82            [24] 1215 	mov	r5,dpl
      00036B AE 83            [24] 1216 	mov	r6,dph
      00036D AF F0            [24] 1217 	mov	r7,b
                                   1218 ;	ECEN301LibSDCC.c:231: while(s[i] != 0){
      00036F 7C 00            [12] 1219 	mov	r4,#0x00
      000371                       1220 00101$:
      000371 EC               [12] 1221 	mov	a,r4
      000372 2D               [12] 1222 	add	a,r5
      000373 F9               [12] 1223 	mov	r1,a
      000374 E4               [12] 1224 	clr	a
      000375 3E               [12] 1225 	addc	a,r6
      000376 FA               [12] 1226 	mov	r2,a
      000377 8F 03            [24] 1227 	mov	ar3,r7
      000379 89 82            [24] 1228 	mov	dpl,r1
      00037B 8A 83            [24] 1229 	mov	dph,r2
      00037D 8B F0            [24] 1230 	mov	b,r3
      00037F 12 0D 74         [24] 1231 	lcall	__gptrget
      000382 FB               [12] 1232 	mov	r3,a
      000383 60 18            [24] 1233 	jz	00103$
                                   1234 ;	ECEN301LibSDCC.c:232: writeCharSerial(s[i]);
      000385 8B 82            [24] 1235 	mov	dpl,r3
      000387 C0 07            [24] 1236 	push	ar7
      000389 C0 06            [24] 1237 	push	ar6
      00038B C0 05            [24] 1238 	push	ar5
      00038D C0 04            [24] 1239 	push	ar4
      00038F 12 03 60         [24] 1240 	lcall	_writeCharSerial
      000392 D0 04            [24] 1241 	pop	ar4
      000394 D0 05            [24] 1242 	pop	ar5
      000396 D0 06            [24] 1243 	pop	ar6
      000398 D0 07            [24] 1244 	pop	ar7
                                   1245 ;	ECEN301LibSDCC.c:233: i++;
      00039A 0C               [12] 1246 	inc	r4
      00039B 80 D4            [24] 1247 	sjmp	00101$
      00039D                       1248 00103$:
                                   1249 ;	ECEN301LibSDCC.c:235: writeCharSerial(0x0D); // CR
      00039D 75 82 0D         [24] 1250 	mov	dpl,#0x0d
      0003A0 12 03 60         [24] 1251 	lcall	_writeCharSerial
                                   1252 ;	ECEN301LibSDCC.c:236: writeCharSerial(0x0A); // LF
      0003A3 75 82 0A         [24] 1253 	mov	dpl,#0x0a
                                   1254 ;	ECEN301LibSDCC.c:238: }
      0003A6 02 03 60         [24] 1255 	ljmp	_writeCharSerial
                                   1256 ;------------------------------------------------------------
                                   1257 ;Allocation info for local variables in function 'readCharSerial'
                                   1258 ;------------------------------------------------------------
                                   1259 ;serChar                   Allocated to registers 
                                   1260 ;------------------------------------------------------------
                                   1261 ;	ECEN301LibSDCC.c:240: char readCharSerial(){
                                   1262 ;	-----------------------------------------
                                   1263 ;	 function readCharSerial
                                   1264 ;	-----------------------------------------
      0003A9                       1265 _readCharSerial:
                                   1266 ;	ECEN301LibSDCC.c:242: while (RI == FALSE);
      0003A9                       1267 00101$:
      0003A9 30 98 FD         [24] 1268 	jnb	_RI,00101$
                                   1269 ;	ECEN301LibSDCC.c:243: serChar = SBUF;
      0003AC 85 99 82         [24] 1270 	mov	dpl,_SBUF
                                   1271 ;	ECEN301LibSDCC.c:244: RI = FALSE;
                                   1272 ;	assignBit
      0003AF C2 98            [12] 1273 	clr	_RI
                                   1274 ;	ECEN301LibSDCC.c:245: return serChar;
                                   1275 ;	ECEN301LibSDCC.c:246: }
      0003B1 22               [24] 1276 	ret
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
      0003B2                       1289 _readLineSerial:
      0003B2 85 82 30         [24] 1290 	mov	_readLineSerial_s_65536_59,dpl
      0003B5 85 83 31         [24] 1291 	mov	(_readLineSerial_s_65536_59 + 1),dph
      0003B8 85 F0 32         [24] 1292 	mov	(_readLineSerial_s_65536_59 + 2),b
                                   1293 ;	ECEN301LibSDCC.c:249: unsigned char i = 0;
      0003BB 7C 00            [12] 1294 	mov	r4,#0x00
                                   1295 ;	ECEN301LibSDCC.c:251: while(i < max){
      0003BD 7B 00            [12] 1296 	mov	r3,#0x00
      0003BF                       1297 00105$:
      0003BF 8B 01            [24] 1298 	mov	ar1,r3
      0003C1 7A 00            [12] 1299 	mov	r2,#0x00
      0003C3 C3               [12] 1300 	clr	c
      0003C4 E9               [12] 1301 	mov	a,r1
      0003C5 95 2E            [12] 1302 	subb	a,_readLineSerial_PARM_2
      0003C7 EA               [12] 1303 	mov	a,r2
      0003C8 64 80            [12] 1304 	xrl	a,#0x80
      0003CA 85 2F F0         [24] 1305 	mov	b,(_readLineSerial_PARM_2 + 1)
      0003CD 63 F0 80         [24] 1306 	xrl	b,#0x80
      0003D0 95 F0            [12] 1307 	subb	a,b
      0003D2 50 44            [24] 1308 	jnc	00107$
                                   1309 ;	ECEN301LibSDCC.c:252: serChar = readCharSerial();
      0003D4 C0 04            [24] 1310 	push	ar4
      0003D6 C0 03            [24] 1311 	push	ar3
      0003D8 12 03 A9         [24] 1312 	lcall	_readCharSerial
      0003DB AA 82            [24] 1313 	mov	r2,dpl
      0003DD D0 03            [24] 1314 	pop	ar3
      0003DF D0 04            [24] 1315 	pop	ar4
                                   1316 ;	ECEN301LibSDCC.c:253: if (serChar == 0x0D || serChar == 0x0A){
      0003E1 BA 0D 02         [24] 1317 	cjne	r2,#0x0d,00123$
      0003E4 80 03            [24] 1318 	sjmp	00101$
      0003E6                       1319 00123$:
      0003E6 BA 0A 16         [24] 1320 	cjne	r2,#0x0a,00102$
      0003E9                       1321 00101$:
                                   1322 ;	ECEN301LibSDCC.c:254: s[i] = 0;
      0003E9 EC               [12] 1323 	mov	a,r4
      0003EA 25 30            [12] 1324 	add	a,_readLineSerial_s_65536_59
      0003EC F8               [12] 1325 	mov	r0,a
      0003ED E4               [12] 1326 	clr	a
      0003EE 35 31            [12] 1327 	addc	a,(_readLineSerial_s_65536_59 + 1)
      0003F0 F9               [12] 1328 	mov	r1,a
      0003F1 AF 32            [24] 1329 	mov	r7,(_readLineSerial_s_65536_59 + 2)
      0003F3 88 82            [24] 1330 	mov	dpl,r0
      0003F5 89 83            [24] 1331 	mov	dph,r1
      0003F7 8F F0            [24] 1332 	mov	b,r7
      0003F9 E4               [12] 1333 	clr	a
      0003FA 12 04 93         [24] 1334 	lcall	__gptrput
                                   1335 ;	ECEN301LibSDCC.c:255: break;
      0003FD 80 19            [24] 1336 	sjmp	00107$
      0003FF                       1337 00102$:
                                   1338 ;	ECEN301LibSDCC.c:257: s[i] = serChar;
      0003FF EB               [12] 1339 	mov	a,r3
      000400 25 30            [12] 1340 	add	a,_readLineSerial_s_65536_59
      000402 FD               [12] 1341 	mov	r5,a
      000403 E4               [12] 1342 	clr	a
      000404 35 31            [12] 1343 	addc	a,(_readLineSerial_s_65536_59 + 1)
      000406 FE               [12] 1344 	mov	r6,a
      000407 AF 32            [24] 1345 	mov	r7,(_readLineSerial_s_65536_59 + 2)
      000409 8D 82            [24] 1346 	mov	dpl,r5
      00040B 8E 83            [24] 1347 	mov	dph,r6
      00040D 8F F0            [24] 1348 	mov	b,r7
      00040F EA               [12] 1349 	mov	a,r2
      000410 12 04 93         [24] 1350 	lcall	__gptrput
                                   1351 ;	ECEN301LibSDCC.c:259: i++;
      000413 0B               [12] 1352 	inc	r3
      000414 8B 04            [24] 1353 	mov	ar4,r3
      000416 80 A7            [24] 1354 	sjmp	00105$
      000418                       1355 00107$:
                                   1356 ;	ECEN301LibSDCC.c:261: s[max] = 0;
      000418 E5 2E            [12] 1357 	mov	a,_readLineSerial_PARM_2
      00041A 25 30            [12] 1358 	add	a,_readLineSerial_s_65536_59
      00041C FD               [12] 1359 	mov	r5,a
      00041D E5 2F            [12] 1360 	mov	a,(_readLineSerial_PARM_2 + 1)
      00041F 35 31            [12] 1361 	addc	a,(_readLineSerial_s_65536_59 + 1)
      000421 FE               [12] 1362 	mov	r6,a
      000422 AF 32            [24] 1363 	mov	r7,(_readLineSerial_s_65536_59 + 2)
      000424 8D 82            [24] 1364 	mov	dpl,r5
      000426 8E 83            [24] 1365 	mov	dph,r6
      000428 8F F0            [24] 1366 	mov	b,r7
      00042A E4               [12] 1367 	clr	a
                                   1368 ;	ECEN301LibSDCC.c:262: }
      00042B 02 04 93         [24] 1369 	ljmp	__gptrput
                                   1370 	.area CSEG    (CODE)
                                   1371 	.area CONST   (CODE)
                                   1372 	.area XINIT   (CODE)
                                   1373 	.area CABS    (ABS,CODE)
