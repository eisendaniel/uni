                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _Sample_ADC
                                     13 	.globl _floorf
                                     14 	.globl _sprintf
                                     15 	.globl _clearLCD
                                     16 	.globl _writeLineLCD
                                     17 	.globl _initLCD
                                     18 	.globl _delay
                                     19 	.globl _PADCL
                                     20 	.globl _B7
                                     21 	.globl _B6
                                     22 	.globl _B5
                                     23 	.globl _B4
                                     24 	.globl _B3
                                     25 	.globl _B2
                                     26 	.globl _B1
                                     27 	.globl _B0
                                     28 	.globl _ESPI
                                     29 	.globl _EADC
                                     30 	.globl _A7
                                     31 	.globl _A6
                                     32 	.globl _A5
                                     33 	.globl _A4
                                     34 	.globl _A3
                                     35 	.globl _A2
                                     36 	.globl _A1
                                     37 	.globl _A0
                                     38 	.globl _ACC7
                                     39 	.globl _ACC6
                                     40 	.globl _ACC5
                                     41 	.globl _ACC4
                                     42 	.globl _ACC3
                                     43 	.globl _ACC2
                                     44 	.globl _ACC1
                                     45 	.globl _ACC0
                                     46 	.globl _CF
                                     47 	.globl _CR
                                     48 	.globl _CCF4
                                     49 	.globl _CCF3
                                     50 	.globl _CCF2
                                     51 	.globl _CCF1
                                     52 	.globl _CCF0
                                     53 	.globl _CY
                                     54 	.globl _AC
                                     55 	.globl _F0
                                     56 	.globl _RS1
                                     57 	.globl _RS0
                                     58 	.globl _OV
                                     59 	.globl _F1
                                     60 	.globl _P
                                     61 	.globl _TF2
                                     62 	.globl _EXF2
                                     63 	.globl _RCLK
                                     64 	.globl _TCLK
                                     65 	.globl _EXEN2
                                     66 	.globl _TR2
                                     67 	.globl _CT2
                                     68 	.globl _CPRL2
                                     69 	.globl _MOSI
                                     70 	.globl _SCK
                                     71 	.globl _MISO
                                     72 	.globl _P4_4
                                     73 	.globl _P4_3
                                     74 	.globl _P4_2
                                     75 	.globl _P4_1
                                     76 	.globl _P4_0
                                     77 	.globl _PPC
                                     78 	.globl _PT2
                                     79 	.globl _PS
                                     80 	.globl _PT1
                                     81 	.globl _PX1
                                     82 	.globl _PT0
                                     83 	.globl _PX0
                                     84 	.globl _RD
                                     85 	.globl _WR
                                     86 	.globl _T1
                                     87 	.globl _T0
                                     88 	.globl _INT1
                                     89 	.globl _INT0
                                     90 	.globl _TXD
                                     91 	.globl _RXD
                                     92 	.globl _P3_7
                                     93 	.globl _P3_6
                                     94 	.globl _P3_5
                                     95 	.globl _P3_4
                                     96 	.globl _P3_3
                                     97 	.globl _P3_2
                                     98 	.globl _P3_1
                                     99 	.globl _P3_0
                                    100 	.globl _EA
                                    101 	.globl _EC
                                    102 	.globl _ET2
                                    103 	.globl _ES
                                    104 	.globl _ET1
                                    105 	.globl _EX1
                                    106 	.globl _ET0
                                    107 	.globl _EX0
                                    108 	.globl _A15
                                    109 	.globl _A14
                                    110 	.globl _A13
                                    111 	.globl _A12
                                    112 	.globl _A11
                                    113 	.globl _A10
                                    114 	.globl _A9
                                    115 	.globl _A8
                                    116 	.globl _P2_7
                                    117 	.globl _P2_6
                                    118 	.globl _P2_5
                                    119 	.globl _P2_4
                                    120 	.globl _P2_3
                                    121 	.globl _P2_2
                                    122 	.globl _P2_1
                                    123 	.globl _P2_0
                                    124 	.globl _FE
                                    125 	.globl _SM0
                                    126 	.globl _SM1
                                    127 	.globl _SM2
                                    128 	.globl _REN
                                    129 	.globl _TB8
                                    130 	.globl _RB8
                                    131 	.globl _TI
                                    132 	.globl _RI
                                    133 	.globl _CEX4
                                    134 	.globl _CEX3
                                    135 	.globl _CEX2
                                    136 	.globl _CEX1
                                    137 	.globl _CEX0
                                    138 	.globl _ECI
                                    139 	.globl _T2EX
                                    140 	.globl _T2
                                    141 	.globl _P1_7
                                    142 	.globl _P1_6
                                    143 	.globl _P1_5
                                    144 	.globl _P1_4
                                    145 	.globl _P1_3
                                    146 	.globl _P1_2
                                    147 	.globl _P1_1
                                    148 	.globl _P1_0
                                    149 	.globl _TF1
                                    150 	.globl _TR1
                                    151 	.globl _TF0
                                    152 	.globl _TR0
                                    153 	.globl _IE1
                                    154 	.globl _IT1
                                    155 	.globl _IE0
                                    156 	.globl _IT0
                                    157 	.globl _AD7
                                    158 	.globl _AD6
                                    159 	.globl _AD5
                                    160 	.globl _AD4
                                    161 	.globl _AD3
                                    162 	.globl _AD2
                                    163 	.globl _AD1
                                    164 	.globl _AD0
                                    165 	.globl _P0_7
                                    166 	.globl _P0_6
                                    167 	.globl _P0_5
                                    168 	.globl _P0_4
                                    169 	.globl _P0_3
                                    170 	.globl _P0_2
                                    171 	.globl _P0_1
                                    172 	.globl _P0_0
                                    173 	.globl _CCAP4H
                                    174 	.globl _CCAP3H
                                    175 	.globl _CCAP2H
                                    176 	.globl _CCAP1H
                                    177 	.globl _CCAP0H
                                    178 	.globl _CH
                                    179 	.globl _IPL1
                                    180 	.globl _IPH1
                                    181 	.globl _ADCF
                                    182 	.globl _ADDH
                                    183 	.globl _ADDL
                                    184 	.globl _ADCON
                                    185 	.globl _ADCLK
                                    186 	.globl _B
                                    187 	.globl _CCAP4L
                                    188 	.globl _CCAP3L
                                    189 	.globl _CCAP2L
                                    190 	.globl _CCAP1L
                                    191 	.globl _CCAP0L
                                    192 	.globl _CL
                                    193 	.globl _IEN1
                                    194 	.globl _A
                                    195 	.globl _ACC
                                    196 	.globl _CCAPM4
                                    197 	.globl _CCAPM3
                                    198 	.globl _CCAPM2
                                    199 	.globl _CCAPM1
                                    200 	.globl _CCAPM0
                                    201 	.globl _CMOD
                                    202 	.globl _CCON
                                    203 	.globl _SPDAT
                                    204 	.globl _SPSCR
                                    205 	.globl _SPCON
                                    206 	.globl _EECON
                                    207 	.globl _FCON
                                    208 	.globl _PSW
                                    209 	.globl _CANEN2
                                    210 	.globl _CANEN1
                                    211 	.globl _TH2
                                    212 	.globl _TL2
                                    213 	.globl _RCAP2H
                                    214 	.globl _RCAP2L
                                    215 	.globl _T2MOD
                                    216 	.globl _T2CON
                                    217 	.globl _P4
                                    218 	.globl _SADEN
                                    219 	.globl _IPL0
                                    220 	.globl _IPH0
                                    221 	.globl _P3
                                    222 	.globl _SADDR
                                    223 	.globl _IEN0
                                    224 	.globl _WDTPRG
                                    225 	.globl _WDTRST
                                    226 	.globl _AUXR1
                                    227 	.globl _P2
                                    228 	.globl _CKCON1
                                    229 	.globl _SBUF
                                    230 	.globl _SCON
                                    231 	.globl _P1
                                    232 	.globl _CKCON0
                                    233 	.globl _AUXR
                                    234 	.globl _TH1
                                    235 	.globl _TH0
                                    236 	.globl _TL1
                                    237 	.globl _TL0
                                    238 	.globl _TMOD
                                    239 	.globl _TCON
                                    240 	.globl _PCON
                                    241 	.globl _DPH
                                    242 	.globl _DPL
                                    243 	.globl _SP
                                    244 	.globl _P0
                                    245 ;--------------------------------------------------------
                                    246 ; special function registers
                                    247 ;--------------------------------------------------------
                                    248 	.area RSEG    (ABS,DATA)
      000000                        249 	.org 0x0000
                           000080   250 _P0	=	0x0080
                           000081   251 _SP	=	0x0081
                           000082   252 _DPL	=	0x0082
                           000083   253 _DPH	=	0x0083
                           000087   254 _PCON	=	0x0087
                           000088   255 _TCON	=	0x0088
                           000089   256 _TMOD	=	0x0089
                           00008A   257 _TL0	=	0x008a
                           00008B   258 _TL1	=	0x008b
                           00008C   259 _TH0	=	0x008c
                           00008D   260 _TH1	=	0x008d
                           00008E   261 _AUXR	=	0x008e
                           00008F   262 _CKCON0	=	0x008f
                           000090   263 _P1	=	0x0090
                           000098   264 _SCON	=	0x0098
                           000099   265 _SBUF	=	0x0099
                           00009F   266 _CKCON1	=	0x009f
                           0000A0   267 _P2	=	0x00a0
                           0000A2   268 _AUXR1	=	0x00a2
                           0000A6   269 _WDTRST	=	0x00a6
                           0000A7   270 _WDTPRG	=	0x00a7
                           0000A8   271 _IEN0	=	0x00a8
                           0000A9   272 _SADDR	=	0x00a9
                           0000B0   273 _P3	=	0x00b0
                           0000B7   274 _IPH0	=	0x00b7
                           0000B8   275 _IPL0	=	0x00b8
                           0000B9   276 _SADEN	=	0x00b9
                           0000C0   277 _P4	=	0x00c0
                           0000C8   278 _T2CON	=	0x00c8
                           0000C9   279 _T2MOD	=	0x00c9
                           0000CA   280 _RCAP2L	=	0x00ca
                           0000CB   281 _RCAP2H	=	0x00cb
                           0000CC   282 _TL2	=	0x00cc
                           0000CD   283 _TH2	=	0x00cd
                           0000CE   284 _CANEN1	=	0x00ce
                           0000CF   285 _CANEN2	=	0x00cf
                           0000D0   286 _PSW	=	0x00d0
                           0000D1   287 _FCON	=	0x00d1
                           0000D2   288 _EECON	=	0x00d2
                           0000D4   289 _SPCON	=	0x00d4
                           0000D5   290 _SPSCR	=	0x00d5
                           0000D6   291 _SPDAT	=	0x00d6
                           0000D8   292 _CCON	=	0x00d8
                           0000D9   293 _CMOD	=	0x00d9
                           0000DA   294 _CCAPM0	=	0x00da
                           0000DB   295 _CCAPM1	=	0x00db
                           0000DC   296 _CCAPM2	=	0x00dc
                           0000DD   297 _CCAPM3	=	0x00dd
                           0000DE   298 _CCAPM4	=	0x00de
                           0000E0   299 _ACC	=	0x00e0
                           0000E0   300 _A	=	0x00e0
                           0000E8   301 _IEN1	=	0x00e8
                           0000E9   302 _CL	=	0x00e9
                           0000EA   303 _CCAP0L	=	0x00ea
                           0000EB   304 _CCAP1L	=	0x00eb
                           0000EC   305 _CCAP2L	=	0x00ec
                           0000ED   306 _CCAP3L	=	0x00ed
                           0000EE   307 _CCAP4L	=	0x00ee
                           0000F0   308 _B	=	0x00f0
                           0000F2   309 _ADCLK	=	0x00f2
                           0000F3   310 _ADCON	=	0x00f3
                           0000F4   311 _ADDL	=	0x00f4
                           0000F5   312 _ADDH	=	0x00f5
                           0000F6   313 _ADCF	=	0x00f6
                           0000F7   314 _IPH1	=	0x00f7
                           0000F8   315 _IPL1	=	0x00f8
                           0000F9   316 _CH	=	0x00f9
                           0000FA   317 _CCAP0H	=	0x00fa
                           0000FB   318 _CCAP1H	=	0x00fb
                           0000FC   319 _CCAP2H	=	0x00fc
                           0000FD   320 _CCAP3H	=	0x00fd
                           0000FE   321 _CCAP4H	=	0x00fe
                                    322 ;--------------------------------------------------------
                                    323 ; special function bits
                                    324 ;--------------------------------------------------------
                                    325 	.area RSEG    (ABS,DATA)
      000000                        326 	.org 0x0000
                           000080   327 _P0_0	=	0x0080
                           000081   328 _P0_1	=	0x0081
                           000082   329 _P0_2	=	0x0082
                           000083   330 _P0_3	=	0x0083
                           000084   331 _P0_4	=	0x0084
                           000085   332 _P0_5	=	0x0085
                           000086   333 _P0_6	=	0x0086
                           000087   334 _P0_7	=	0x0087
                           000080   335 _AD0	=	0x0080
                           000081   336 _AD1	=	0x0081
                           000082   337 _AD2	=	0x0082
                           000083   338 _AD3	=	0x0083
                           000084   339 _AD4	=	0x0084
                           000085   340 _AD5	=	0x0085
                           000086   341 _AD6	=	0x0086
                           000087   342 _AD7	=	0x0087
                           000088   343 _IT0	=	0x0088
                           000089   344 _IE0	=	0x0089
                           00008A   345 _IT1	=	0x008a
                           00008B   346 _IE1	=	0x008b
                           00008C   347 _TR0	=	0x008c
                           00008D   348 _TF0	=	0x008d
                           00008E   349 _TR1	=	0x008e
                           00008F   350 _TF1	=	0x008f
                           000090   351 _P1_0	=	0x0090
                           000091   352 _P1_1	=	0x0091
                           000092   353 _P1_2	=	0x0092
                           000093   354 _P1_3	=	0x0093
                           000094   355 _P1_4	=	0x0094
                           000095   356 _P1_5	=	0x0095
                           000096   357 _P1_6	=	0x0096
                           000097   358 _P1_7	=	0x0097
                           000090   359 _T2	=	0x0090
                           000091   360 _T2EX	=	0x0091
                           000092   361 _ECI	=	0x0092
                           000093   362 _CEX0	=	0x0093
                           000094   363 _CEX1	=	0x0094
                           000095   364 _CEX2	=	0x0095
                           000096   365 _CEX3	=	0x0096
                           000097   366 _CEX4	=	0x0097
                           000098   367 _RI	=	0x0098
                           000099   368 _TI	=	0x0099
                           00009A   369 _RB8	=	0x009a
                           00009B   370 _TB8	=	0x009b
                           00009C   371 _REN	=	0x009c
                           00009D   372 _SM2	=	0x009d
                           00009E   373 _SM1	=	0x009e
                           00009F   374 _SM0	=	0x009f
                           00009F   375 _FE	=	0x009f
                           0000A0   376 _P2_0	=	0x00a0
                           0000A1   377 _P2_1	=	0x00a1
                           0000A2   378 _P2_2	=	0x00a2
                           0000A3   379 _P2_3	=	0x00a3
                           0000A4   380 _P2_4	=	0x00a4
                           0000A5   381 _P2_5	=	0x00a5
                           0000A6   382 _P2_6	=	0x00a6
                           0000A7   383 _P2_7	=	0x00a7
                           0000A0   384 _A8	=	0x00a0
                           0000A1   385 _A9	=	0x00a1
                           0000A2   386 _A10	=	0x00a2
                           0000A3   387 _A11	=	0x00a3
                           0000A4   388 _A12	=	0x00a4
                           0000A5   389 _A13	=	0x00a5
                           0000A6   390 _A14	=	0x00a6
                           0000A7   391 _A15	=	0x00a7
                           0000A8   392 _EX0	=	0x00a8
                           0000A9   393 _ET0	=	0x00a9
                           0000AA   394 _EX1	=	0x00aa
                           0000AB   395 _ET1	=	0x00ab
                           0000AC   396 _ES	=	0x00ac
                           0000AD   397 _ET2	=	0x00ad
                           0000AE   398 _EC	=	0x00ae
                           0000AF   399 _EA	=	0x00af
                           0000B0   400 _P3_0	=	0x00b0
                           0000B1   401 _P3_1	=	0x00b1
                           0000B2   402 _P3_2	=	0x00b2
                           0000B3   403 _P3_3	=	0x00b3
                           0000B4   404 _P3_4	=	0x00b4
                           0000B5   405 _P3_5	=	0x00b5
                           0000B6   406 _P3_6	=	0x00b6
                           0000B7   407 _P3_7	=	0x00b7
                           0000B0   408 _RXD	=	0x00b0
                           0000B1   409 _TXD	=	0x00b1
                           0000B2   410 _INT0	=	0x00b2
                           0000B3   411 _INT1	=	0x00b3
                           0000B4   412 _T0	=	0x00b4
                           0000B5   413 _T1	=	0x00b5
                           0000B6   414 _WR	=	0x00b6
                           0000B7   415 _RD	=	0x00b7
                           0000B8   416 _PX0	=	0x00b8
                           0000B9   417 _PT0	=	0x00b9
                           0000BA   418 _PX1	=	0x00ba
                           0000BB   419 _PT1	=	0x00bb
                           0000BC   420 _PS	=	0x00bc
                           0000BD   421 _PT2	=	0x00bd
                           0000BE   422 _PPC	=	0x00be
                           0000C0   423 _P4_0	=	0x00c0
                           0000C1   424 _P4_1	=	0x00c1
                           0000C2   425 _P4_2	=	0x00c2
                           0000C3   426 _P4_3	=	0x00c3
                           0000C4   427 _P4_4	=	0x00c4
                           0000C2   428 _MISO	=	0x00c2
                           0000C3   429 _SCK	=	0x00c3
                           0000C4   430 _MOSI	=	0x00c4
                           0000C8   431 _CPRL2	=	0x00c8
                           0000C9   432 _CT2	=	0x00c9
                           0000CA   433 _TR2	=	0x00ca
                           0000CB   434 _EXEN2	=	0x00cb
                           0000CC   435 _TCLK	=	0x00cc
                           0000CD   436 _RCLK	=	0x00cd
                           0000CE   437 _EXF2	=	0x00ce
                           0000CF   438 _TF2	=	0x00cf
                           0000D0   439 _P	=	0x00d0
                           0000D1   440 _F1	=	0x00d1
                           0000D2   441 _OV	=	0x00d2
                           0000D3   442 _RS0	=	0x00d3
                           0000D4   443 _RS1	=	0x00d4
                           0000D5   444 _F0	=	0x00d5
                           0000D6   445 _AC	=	0x00d6
                           0000D7   446 _CY	=	0x00d7
                           0000D8   447 _CCF0	=	0x00d8
                           0000D9   448 _CCF1	=	0x00d9
                           0000DA   449 _CCF2	=	0x00da
                           0000DB   450 _CCF3	=	0x00db
                           0000DC   451 _CCF4	=	0x00dc
                           0000DE   452 _CR	=	0x00de
                           0000DF   453 _CF	=	0x00df
                           0000E0   454 _ACC0	=	0x00e0
                           0000E1   455 _ACC1	=	0x00e1
                           0000E2   456 _ACC2	=	0x00e2
                           0000E3   457 _ACC3	=	0x00e3
                           0000E4   458 _ACC4	=	0x00e4
                           0000E5   459 _ACC5	=	0x00e5
                           0000E6   460 _ACC6	=	0x00e6
                           0000E7   461 _ACC7	=	0x00e7
                           0000E0   462 _A0	=	0x00e0
                           0000E1   463 _A1	=	0x00e1
                           0000E2   464 _A2	=	0x00e2
                           0000E3   465 _A3	=	0x00e3
                           0000E4   466 _A4	=	0x00e4
                           0000E5   467 _A5	=	0x00e5
                           0000E6   468 _A6	=	0x00e6
                           0000E7   469 _A7	=	0x00e7
                           0000E8   470 _EADC	=	0x00e8
                           0000E9   471 _ESPI	=	0x00e9
                           0000F0   472 _B0	=	0x00f0
                           0000F1   473 _B1	=	0x00f1
                           0000F2   474 _B2	=	0x00f2
                           0000F3   475 _B3	=	0x00f3
                           0000F4   476 _B4	=	0x00f4
                           0000F5   477 _B5	=	0x00f5
                           0000F6   478 _B6	=	0x00f6
                           0000F7   479 _B7	=	0x00f7
                           0000F9   480 _PADCL	=	0x00f9
                                    481 ;--------------------------------------------------------
                                    482 ; overlayable register banks
                                    483 ;--------------------------------------------------------
                                    484 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        485 	.ds 8
                                    486 ;--------------------------------------------------------
                                    487 ; internal ram data
                                    488 ;--------------------------------------------------------
                                    489 	.area DSEG    (DATA)
      000008                        490 _Sample_ADC_sample_65536_52:
      000008                        491 	.ds 2
      00000A                        492 _main_str_65536_53:
      00000A                        493 	.ds 16
      00001A                        494 _main_upper_131072_54:
      00001A                        495 	.ds 2
                                    496 ;--------------------------------------------------------
                                    497 ; overlayable items in internal ram 
                                    498 ;--------------------------------------------------------
                                    499 ;--------------------------------------------------------
                                    500 ; Stack segment in internal ram 
                                    501 ;--------------------------------------------------------
                                    502 	.area	SSEG
      000061                        503 __start__stack:
      000061                        504 	.ds	1
                                    505 
                                    506 ;--------------------------------------------------------
                                    507 ; indirectly addressable internal ram data
                                    508 ;--------------------------------------------------------
                                    509 	.area ISEG    (DATA)
                                    510 ;--------------------------------------------------------
                                    511 ; absolute internal ram data
                                    512 ;--------------------------------------------------------
                                    513 	.area IABS    (ABS,DATA)
                                    514 	.area IABS    (ABS,DATA)
                                    515 ;--------------------------------------------------------
                                    516 ; bit data
                                    517 ;--------------------------------------------------------
                                    518 	.area BSEG    (BIT)
                                    519 ;--------------------------------------------------------
                                    520 ; paged external ram data
                                    521 ;--------------------------------------------------------
                                    522 	.area PSEG    (PAG,XDATA)
                                    523 ;--------------------------------------------------------
                                    524 ; external ram data
                                    525 ;--------------------------------------------------------
                                    526 	.area XSEG    (XDATA)
                                    527 ;--------------------------------------------------------
                                    528 ; absolute external ram data
                                    529 ;--------------------------------------------------------
                                    530 	.area XABS    (ABS,XDATA)
                                    531 ;--------------------------------------------------------
                                    532 ; external initialized ram data
                                    533 ;--------------------------------------------------------
                                    534 	.area XISEG   (XDATA)
                                    535 	.area HOME    (CODE)
                                    536 	.area GSINIT0 (CODE)
                                    537 	.area GSINIT1 (CODE)
                                    538 	.area GSINIT2 (CODE)
                                    539 	.area GSINIT3 (CODE)
                                    540 	.area GSINIT4 (CODE)
                                    541 	.area GSINIT5 (CODE)
                                    542 	.area GSINIT  (CODE)
                                    543 	.area GSFINAL (CODE)
                                    544 	.area CSEG    (CODE)
                                    545 ;--------------------------------------------------------
                                    546 ; interrupt vector 
                                    547 ;--------------------------------------------------------
                                    548 	.area HOME    (CODE)
      000000                        549 __interrupt_vect:
      000000 02 00 06         [24]  550 	ljmp	__sdcc_gsinit_startup
                                    551 ;--------------------------------------------------------
                                    552 ; global & static initialisations
                                    553 ;--------------------------------------------------------
                                    554 	.area HOME    (CODE)
                                    555 	.area GSINIT  (CODE)
                                    556 	.area GSFINAL (CODE)
                                    557 	.area GSINIT  (CODE)
                                    558 	.globl __sdcc_gsinit_startup
                                    559 	.globl __sdcc_program_startup
                                    560 	.globl __start__stack
                                    561 	.globl __mcs51_genXINIT
                                    562 	.globl __mcs51_genXRAMCLEAR
                                    563 	.globl __mcs51_genRAMCLEAR
                                    564 ;------------------------------------------------------------
                                    565 ;Allocation info for local variables in function 'Sample_ADC'
                                    566 ;------------------------------------------------------------
                                    567 ;sample                    Allocated with name '_Sample_ADC_sample_65536_52'
                                    568 ;------------------------------------------------------------
                                    569 ;	main.c:16: static unsigned int sample = 0;
      00005F E4               [12]  570 	clr	a
      000060 F5 08            [12]  571 	mov	_Sample_ADC_sample_65536_52,a
      000062 F5 09            [12]  572 	mov	(_Sample_ADC_sample_65536_52 + 1),a
                                    573 	.area GSFINAL (CODE)
      00006C 02 00 03         [24]  574 	ljmp	__sdcc_program_startup
                                    575 ;--------------------------------------------------------
                                    576 ; Home
                                    577 ;--------------------------------------------------------
                                    578 	.area HOME    (CODE)
                                    579 	.area HOME    (CODE)
      000003                        580 __sdcc_program_startup:
      000003 02 00 A9         [24]  581 	ljmp	_main
                                    582 ;	return from main will return to caller
                                    583 ;--------------------------------------------------------
                                    584 ; code
                                    585 ;--------------------------------------------------------
                                    586 	.area CSEG    (CODE)
                                    587 ;------------------------------------------------------------
                                    588 ;Allocation info for local variables in function 'Sample_ADC'
                                    589 ;------------------------------------------------------------
                                    590 ;sample                    Allocated with name '_Sample_ADC_sample_65536_52'
                                    591 ;------------------------------------------------------------
                                    592 ;	main.c:14: unsigned int Sample_ADC()
                                    593 ;	-----------------------------------------
                                    594 ;	 function Sample_ADC
                                    595 ;	-----------------------------------------
      00006F                        596 _Sample_ADC:
                           000007   597 	ar7 = 0x07
                           000006   598 	ar6 = 0x06
                           000005   599 	ar5 = 0x05
                           000004   600 	ar4 = 0x04
                           000003   601 	ar3 = 0x03
                           000002   602 	ar2 = 0x02
                           000001   603 	ar1 = 0x01
                           000000   604 	ar0 = 0x00
                                    605 ;	main.c:17: ADCF  =  0b0000001; //select input
      00006F 75 F6 01         [24]  606 	mov	_ADCF,#0x01
                                    607 ;	main.c:18: ADCON =  0b0000000; //clear control
      000072 75 F3 00         [24]  608 	mov	_ADCON,#0x00
                                    609 ;	main.c:19: ADCON |= 0b1100000; //set psidle and enable ADC
      000075 AE F3            [24]  610 	mov	r6,_ADCON
      000077 43 06 60         [24]  611 	orl	ar6,#0x60
      00007A 8E F3            [24]  612 	mov	_ADCON,r6
                                    613 ;	main.c:20: ADCON |= 0b0001000; //start
      00007C AE F3            [24]  614 	mov	r6,_ADCON
      00007E 43 06 08         [24]  615 	orl	ar6,#0x08
      000081 8E F3            [24]  616 	mov	_ADCON,r6
                                    617 ;	main.c:22: ADCON &= 0b1101111;
      000083 53 F3 6F         [24]  618 	anl	_ADCON,#0x6f
                                    619 ;	main.c:23: sample = (ADDH << 2) + ADDL;
      000086 AE F5            [24]  620 	mov	r6,_ADDH
      000088 7F 00            [12]  621 	mov	r7,#0x00
      00008A EE               [12]  622 	mov	a,r6
      00008B 2E               [12]  623 	add	a,r6
      00008C FE               [12]  624 	mov	r6,a
      00008D EF               [12]  625 	mov	a,r7
      00008E 33               [12]  626 	rlc	a
      00008F FF               [12]  627 	mov	r7,a
      000090 EE               [12]  628 	mov	a,r6
      000091 2E               [12]  629 	add	a,r6
      000092 FE               [12]  630 	mov	r6,a
      000093 EF               [12]  631 	mov	a,r7
      000094 33               [12]  632 	rlc	a
      000095 FF               [12]  633 	mov	r7,a
      000096 AC F4            [24]  634 	mov	r4,_ADDL
      000098 7D 00            [12]  635 	mov	r5,#0x00
      00009A EC               [12]  636 	mov	a,r4
      00009B 2E               [12]  637 	add	a,r6
      00009C F5 08            [12]  638 	mov	_Sample_ADC_sample_65536_52,a
      00009E ED               [12]  639 	mov	a,r5
      00009F 3F               [12]  640 	addc	a,r7
      0000A0 F5 09            [12]  641 	mov	(_Sample_ADC_sample_65536_52 + 1),a
                                    642 ;	main.c:24: return sample;
      0000A2 85 08 82         [24]  643 	mov	dpl,_Sample_ADC_sample_65536_52
      0000A5 85 09 83         [24]  644 	mov	dph,(_Sample_ADC_sample_65536_52 + 1)
                                    645 ;	main.c:25: }
      0000A8 22               [24]  646 	ret
                                    647 ;------------------------------------------------------------
                                    648 ;Allocation info for local variables in function 'main'
                                    649 ;------------------------------------------------------------
                                    650 ;str                       Allocated with name '_main_str_65536_53'
                                    651 ;reading                   Allocated to registers r4 r5 r6 r7 
                                    652 ;upper                     Allocated with name '_main_upper_131072_54'
                                    653 ;lower                     Allocated to registers r6 r7 
                                    654 ;------------------------------------------------------------
                                    655 ;	main.c:29: void main()
                                    656 ;	-----------------------------------------
                                    657 ;	 function main
                                    658 ;	-----------------------------------------
      0000A9                        659 _main:
                                    660 ;	main.c:32: initLCD();
      0000A9 12 01 D1         [24]  661 	lcall	_initLCD
                                    662 ;	main.c:33: while (1) {
      0000AC                        663 00102$:
                                    664 ;	main.c:34: float reading = Sample_ADC()*3.6 / 1023.0;
      0000AC 12 00 6F         [24]  665 	lcall	_Sample_ADC
      0000AF 12 09 11         [24]  666 	lcall	___uint2fs
      0000B2 AC 82            [24]  667 	mov	r4,dpl
      0000B4 AD 83            [24]  668 	mov	r5,dph
      0000B6 AE F0            [24]  669 	mov	r6,b
      0000B8 FF               [12]  670 	mov	r7,a
      0000B9 C0 04            [24]  671 	push	ar4
      0000BB C0 05            [24]  672 	push	ar5
      0000BD C0 06            [24]  673 	push	ar6
      0000BF C0 07            [24]  674 	push	ar7
      0000C1 90 66 66         [24]  675 	mov	dptr,#0x6666
      0000C4 75 F0 66         [24]  676 	mov	b,#0x66
      0000C7 74 40            [12]  677 	mov	a,#0x40
      0000C9 12 05 68         [24]  678 	lcall	___fsmul
      0000CC AC 82            [24]  679 	mov	r4,dpl
      0000CE AD 83            [24]  680 	mov	r5,dph
      0000D0 AE F0            [24]  681 	mov	r6,b
      0000D2 FF               [12]  682 	mov	r7,a
      0000D3 E5 81            [12]  683 	mov	a,sp
      0000D5 24 FC            [12]  684 	add	a,#0xfc
      0000D7 F5 81            [12]  685 	mov	sp,a
      0000D9 E4               [12]  686 	clr	a
      0000DA C0 E0            [24]  687 	push	acc
      0000DC 74 C0            [12]  688 	mov	a,#0xc0
      0000DE C0 E0            [24]  689 	push	acc
      0000E0 74 7F            [12]  690 	mov	a,#0x7f
      0000E2 C0 E0            [24]  691 	push	acc
      0000E4 74 44            [12]  692 	mov	a,#0x44
      0000E6 C0 E0            [24]  693 	push	acc
      0000E8 8C 82            [24]  694 	mov	dpl,r4
      0000EA 8D 83            [24]  695 	mov	dph,r5
      0000EC 8E F0            [24]  696 	mov	b,r6
      0000EE EF               [12]  697 	mov	a,r7
      0000EF 12 11 0A         [24]  698 	lcall	___fsdiv
      0000F2 AC 82            [24]  699 	mov	r4,dpl
      0000F4 AD 83            [24]  700 	mov	r5,dph
      0000F6 AE F0            [24]  701 	mov	r6,b
      0000F8 FF               [12]  702 	mov	r7,a
      0000F9 E5 81            [12]  703 	mov	a,sp
      0000FB 24 FC            [12]  704 	add	a,#0xfc
      0000FD F5 81            [12]  705 	mov	sp,a
                                    706 ;	main.c:35: unsigned int upper = floorf(reading);
      0000FF 8C 82            [24]  707 	mov	dpl,r4
      000101 8D 83            [24]  708 	mov	dph,r5
      000103 8E F0            [24]  709 	mov	b,r6
      000105 EF               [12]  710 	mov	a,r7
      000106 C0 07            [24]  711 	push	ar7
      000108 C0 06            [24]  712 	push	ar6
      00010A C0 05            [24]  713 	push	ar5
      00010C C0 04            [24]  714 	push	ar4
      00010E 12 08 2D         [24]  715 	lcall	_floorf
      000111 12 09 1D         [24]  716 	lcall	___fs2uint
                                    717 ;	main.c:36: unsigned int lower = floorf((reading - (float)upper)*1000.0);
      000114 85 82 1A         [24]  718 	mov	_main_upper_131072_54,dpl
      000117 85 83 1B         [24]  719 	mov  (_main_upper_131072_54 + 1),dph
      00011A 12 09 11         [24]  720 	lcall	___uint2fs
      00011D A8 82            [24]  721 	mov	r0,dpl
      00011F A9 83            [24]  722 	mov	r1,dph
      000121 AA F0            [24]  723 	mov	r2,b
      000123 FB               [12]  724 	mov	r3,a
      000124 D0 04            [24]  725 	pop	ar4
      000126 D0 05            [24]  726 	pop	ar5
      000128 D0 06            [24]  727 	pop	ar6
      00012A D0 07            [24]  728 	pop	ar7
      00012C C0 00            [24]  729 	push	ar0
      00012E C0 01            [24]  730 	push	ar1
      000130 C0 02            [24]  731 	push	ar2
      000132 C0 03            [24]  732 	push	ar3
      000134 8C 82            [24]  733 	mov	dpl,r4
      000136 8D 83            [24]  734 	mov	dph,r5
      000138 8E F0            [24]  735 	mov	b,r6
      00013A EF               [12]  736 	mov	a,r7
      00013B 12 04 F8         [24]  737 	lcall	___fssub
      00013E AC 82            [24]  738 	mov	r4,dpl
      000140 AD 83            [24]  739 	mov	r5,dph
      000142 AE F0            [24]  740 	mov	r6,b
      000144 FF               [12]  741 	mov	r7,a
      000145 E5 81            [12]  742 	mov	a,sp
      000147 24 FC            [12]  743 	add	a,#0xfc
      000149 F5 81            [12]  744 	mov	sp,a
      00014B C0 04            [24]  745 	push	ar4
      00014D C0 05            [24]  746 	push	ar5
      00014F C0 06            [24]  747 	push	ar6
      000151 C0 07            [24]  748 	push	ar7
      000153 90 00 00         [24]  749 	mov	dptr,#0x0000
      000156 75 F0 7A         [24]  750 	mov	b,#0x7a
      000159 74 44            [12]  751 	mov	a,#0x44
      00015B 12 05 68         [24]  752 	lcall	___fsmul
      00015E AC 82            [24]  753 	mov	r4,dpl
      000160 AD 83            [24]  754 	mov	r5,dph
      000162 AE F0            [24]  755 	mov	r6,b
      000164 FF               [12]  756 	mov	r7,a
      000165 E5 81            [12]  757 	mov	a,sp
      000167 24 FC            [12]  758 	add	a,#0xfc
      000169 F5 81            [12]  759 	mov	sp,a
      00016B 8C 82            [24]  760 	mov	dpl,r4
      00016D 8D 83            [24]  761 	mov	dph,r5
      00016F 8E F0            [24]  762 	mov	b,r6
      000171 EF               [12]  763 	mov	a,r7
      000172 12 08 2D         [24]  764 	lcall	_floorf
      000175 12 09 1D         [24]  765 	lcall	___fs2uint
      000178 AE 82            [24]  766 	mov	r6,dpl
      00017A AF 83            [24]  767 	mov	r7,dph
                                    768 ;	main.c:37: sprintf(str, "V : %d.%d", upper, lower);
      00017C C0 06            [24]  769 	push	ar6
      00017E C0 07            [24]  770 	push	ar7
      000180 C0 1A            [24]  771 	push	_main_upper_131072_54
      000182 C0 1B            [24]  772 	push	(_main_upper_131072_54 + 1)
      000184 74 7D            [12]  773 	mov	a,#___str_0
      000186 C0 E0            [24]  774 	push	acc
      000188 74 13            [12]  775 	mov	a,#(___str_0 >> 8)
      00018A C0 E0            [24]  776 	push	acc
      00018C 74 80            [12]  777 	mov	a,#0x80
      00018E C0 E0            [24]  778 	push	acc
      000190 74 0A            [12]  779 	mov	a,#_main_str_65536_53
      000192 C0 E0            [24]  780 	push	acc
      000194 74 00            [12]  781 	mov	a,#(_main_str_65536_53 >> 8)
      000196 C0 E0            [24]  782 	push	acc
      000198 74 40            [12]  783 	mov	a,#0x40
      00019A C0 E0            [24]  784 	push	acc
      00019C 12 07 DF         [24]  785 	lcall	_sprintf
      00019F E5 81            [12]  786 	mov	a,sp
      0001A1 24 F6            [12]  787 	add	a,#0xf6
      0001A3 F5 81            [12]  788 	mov	sp,a
                                    789 ;	main.c:38: writeLineLCD(str);;
      0001A5 90 00 0A         [24]  790 	mov	dptr,#_main_str_65536_53
      0001A8 75 F0 40         [24]  791 	mov	b,#0x40
      0001AB 12 02 A6         [24]  792 	lcall	_writeLineLCD
                                    793 ;	main.c:39: delay(100000);
      0001AE 90 86 A0         [24]  794 	mov	dptr,#0x86a0
      0001B1 12 01 BA         [24]  795 	lcall	_delay
                                    796 ;	main.c:40: clearLCD();
      0001B4 12 02 DE         [24]  797 	lcall	_clearLCD
                                    798 ;	main.c:42: }
      0001B7 02 00 AC         [24]  799 	ljmp	00102$
                                    800 	.area CSEG    (CODE)
                                    801 	.area CONST   (CODE)
      00137D                        802 ___str_0:
      00137D 56 20 3A 20 25 64 2E   803 	.ascii "V : %d.%d"
             25 64
      001386 00                     804 	.db 0x00
                                    805 	.area XINIT   (CODE)
                                    806 	.area CABS    (ABS,CODE)
