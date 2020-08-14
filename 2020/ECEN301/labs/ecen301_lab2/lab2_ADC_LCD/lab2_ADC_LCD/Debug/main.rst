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
                                     12 	.globl _sprintf
                                     13 	.globl _clearLCD
                                     14 	.globl _writeLineLCD
                                     15 	.globl _initLCD
                                     16 	.globl _delay
                                     17 	.globl _PADCL
                                     18 	.globl _B7
                                     19 	.globl _B6
                                     20 	.globl _B5
                                     21 	.globl _B4
                                     22 	.globl _B3
                                     23 	.globl _B2
                                     24 	.globl _B1
                                     25 	.globl _B0
                                     26 	.globl _ESPI
                                     27 	.globl _EADC
                                     28 	.globl _A7
                                     29 	.globl _A6
                                     30 	.globl _A5
                                     31 	.globl _A4
                                     32 	.globl _A3
                                     33 	.globl _A2
                                     34 	.globl _A1
                                     35 	.globl _A0
                                     36 	.globl _ACC7
                                     37 	.globl _ACC6
                                     38 	.globl _ACC5
                                     39 	.globl _ACC4
                                     40 	.globl _ACC3
                                     41 	.globl _ACC2
                                     42 	.globl _ACC1
                                     43 	.globl _ACC0
                                     44 	.globl _CF
                                     45 	.globl _CR
                                     46 	.globl _CCF4
                                     47 	.globl _CCF3
                                     48 	.globl _CCF2
                                     49 	.globl _CCF1
                                     50 	.globl _CCF0
                                     51 	.globl _CY
                                     52 	.globl _AC
                                     53 	.globl _F0
                                     54 	.globl _RS1
                                     55 	.globl _RS0
                                     56 	.globl _OV
                                     57 	.globl _F1
                                     58 	.globl _P
                                     59 	.globl _TF2
                                     60 	.globl _EXF2
                                     61 	.globl _RCLK
                                     62 	.globl _TCLK
                                     63 	.globl _EXEN2
                                     64 	.globl _TR2
                                     65 	.globl _CT2
                                     66 	.globl _CPRL2
                                     67 	.globl _MOSI
                                     68 	.globl _SCK
                                     69 	.globl _MISO
                                     70 	.globl _P4_4
                                     71 	.globl _P4_3
                                     72 	.globl _P4_2
                                     73 	.globl _P4_1
                                     74 	.globl _P4_0
                                     75 	.globl _PPC
                                     76 	.globl _PT2
                                     77 	.globl _PS
                                     78 	.globl _PT1
                                     79 	.globl _PX1
                                     80 	.globl _PT0
                                     81 	.globl _PX0
                                     82 	.globl _RD
                                     83 	.globl _WR
                                     84 	.globl _T1
                                     85 	.globl _T0
                                     86 	.globl _INT1
                                     87 	.globl _INT0
                                     88 	.globl _TXD
                                     89 	.globl _RXD
                                     90 	.globl _P3_7
                                     91 	.globl _P3_6
                                     92 	.globl _P3_5
                                     93 	.globl _P3_4
                                     94 	.globl _P3_3
                                     95 	.globl _P3_2
                                     96 	.globl _P3_1
                                     97 	.globl _P3_0
                                     98 	.globl _EA
                                     99 	.globl _EC
                                    100 	.globl _ET2
                                    101 	.globl _ES
                                    102 	.globl _ET1
                                    103 	.globl _EX1
                                    104 	.globl _ET0
                                    105 	.globl _EX0
                                    106 	.globl _A15
                                    107 	.globl _A14
                                    108 	.globl _A13
                                    109 	.globl _A12
                                    110 	.globl _A11
                                    111 	.globl _A10
                                    112 	.globl _A9
                                    113 	.globl _A8
                                    114 	.globl _P2_7
                                    115 	.globl _P2_6
                                    116 	.globl _P2_5
                                    117 	.globl _P2_4
                                    118 	.globl _P2_3
                                    119 	.globl _P2_2
                                    120 	.globl _P2_1
                                    121 	.globl _P2_0
                                    122 	.globl _FE
                                    123 	.globl _SM0
                                    124 	.globl _SM1
                                    125 	.globl _SM2
                                    126 	.globl _REN
                                    127 	.globl _TB8
                                    128 	.globl _RB8
                                    129 	.globl _TI
                                    130 	.globl _RI
                                    131 	.globl _CEX4
                                    132 	.globl _CEX3
                                    133 	.globl _CEX2
                                    134 	.globl _CEX1
                                    135 	.globl _CEX0
                                    136 	.globl _ECI
                                    137 	.globl _T2EX
                                    138 	.globl _T2
                                    139 	.globl _P1_7
                                    140 	.globl _P1_6
                                    141 	.globl _P1_5
                                    142 	.globl _P1_4
                                    143 	.globl _P1_3
                                    144 	.globl _P1_2
                                    145 	.globl _P1_1
                                    146 	.globl _P1_0
                                    147 	.globl _TF1
                                    148 	.globl _TR1
                                    149 	.globl _TF0
                                    150 	.globl _TR0
                                    151 	.globl _IE1
                                    152 	.globl _IT1
                                    153 	.globl _IE0
                                    154 	.globl _IT0
                                    155 	.globl _AD7
                                    156 	.globl _AD6
                                    157 	.globl _AD5
                                    158 	.globl _AD4
                                    159 	.globl _AD3
                                    160 	.globl _AD2
                                    161 	.globl _AD1
                                    162 	.globl _AD0
                                    163 	.globl _P0_7
                                    164 	.globl _P0_6
                                    165 	.globl _P0_5
                                    166 	.globl _P0_4
                                    167 	.globl _P0_3
                                    168 	.globl _P0_2
                                    169 	.globl _P0_1
                                    170 	.globl _P0_0
                                    171 	.globl _CCAP4H
                                    172 	.globl _CCAP3H
                                    173 	.globl _CCAP2H
                                    174 	.globl _CCAP1H
                                    175 	.globl _CCAP0H
                                    176 	.globl _CH
                                    177 	.globl _IPL1
                                    178 	.globl _IPH1
                                    179 	.globl _ADCF
                                    180 	.globl _ADDH
                                    181 	.globl _ADDL
                                    182 	.globl _ADCON
                                    183 	.globl _ADCLK
                                    184 	.globl _B
                                    185 	.globl _CCAP4L
                                    186 	.globl _CCAP3L
                                    187 	.globl _CCAP2L
                                    188 	.globl _CCAP1L
                                    189 	.globl _CCAP0L
                                    190 	.globl _CL
                                    191 	.globl _IEN1
                                    192 	.globl _A
                                    193 	.globl _ACC
                                    194 	.globl _CCAPM4
                                    195 	.globl _CCAPM3
                                    196 	.globl _CCAPM2
                                    197 	.globl _CCAPM1
                                    198 	.globl _CCAPM0
                                    199 	.globl _CMOD
                                    200 	.globl _CCON
                                    201 	.globl _SPDAT
                                    202 	.globl _SPSCR
                                    203 	.globl _SPCON
                                    204 	.globl _EECON
                                    205 	.globl _FCON
                                    206 	.globl _PSW
                                    207 	.globl _CANEN2
                                    208 	.globl _CANEN1
                                    209 	.globl _TH2
                                    210 	.globl _TL2
                                    211 	.globl _RCAP2H
                                    212 	.globl _RCAP2L
                                    213 	.globl _T2MOD
                                    214 	.globl _T2CON
                                    215 	.globl _P4
                                    216 	.globl _SADEN
                                    217 	.globl _IPL0
                                    218 	.globl _IPH0
                                    219 	.globl _P3
                                    220 	.globl _SADDR
                                    221 	.globl _IEN0
                                    222 	.globl _WDTPRG
                                    223 	.globl _WDTRST
                                    224 	.globl _AUXR1
                                    225 	.globl _P2
                                    226 	.globl _CKCON1
                                    227 	.globl _SBUF
                                    228 	.globl _SCON
                                    229 	.globl _P1
                                    230 	.globl _CKCON0
                                    231 	.globl _AUXR
                                    232 	.globl _TH1
                                    233 	.globl _TH0
                                    234 	.globl _TL1
                                    235 	.globl _TL0
                                    236 	.globl _TMOD
                                    237 	.globl _TCON
                                    238 	.globl _PCON
                                    239 	.globl _DPH
                                    240 	.globl _DPL
                                    241 	.globl _SP
                                    242 	.globl _P0
                                    243 ;--------------------------------------------------------
                                    244 ; special function registers
                                    245 ;--------------------------------------------------------
                                    246 	.area RSEG    (ABS,DATA)
      000000                        247 	.org 0x0000
                           000080   248 _P0	=	0x0080
                           000081   249 _SP	=	0x0081
                           000082   250 _DPL	=	0x0082
                           000083   251 _DPH	=	0x0083
                           000087   252 _PCON	=	0x0087
                           000088   253 _TCON	=	0x0088
                           000089   254 _TMOD	=	0x0089
                           00008A   255 _TL0	=	0x008a
                           00008B   256 _TL1	=	0x008b
                           00008C   257 _TH0	=	0x008c
                           00008D   258 _TH1	=	0x008d
                           00008E   259 _AUXR	=	0x008e
                           00008F   260 _CKCON0	=	0x008f
                           000090   261 _P1	=	0x0090
                           000098   262 _SCON	=	0x0098
                           000099   263 _SBUF	=	0x0099
                           00009F   264 _CKCON1	=	0x009f
                           0000A0   265 _P2	=	0x00a0
                           0000A2   266 _AUXR1	=	0x00a2
                           0000A6   267 _WDTRST	=	0x00a6
                           0000A7   268 _WDTPRG	=	0x00a7
                           0000A8   269 _IEN0	=	0x00a8
                           0000A9   270 _SADDR	=	0x00a9
                           0000B0   271 _P3	=	0x00b0
                           0000B7   272 _IPH0	=	0x00b7
                           0000B8   273 _IPL0	=	0x00b8
                           0000B9   274 _SADEN	=	0x00b9
                           0000C0   275 _P4	=	0x00c0
                           0000C8   276 _T2CON	=	0x00c8
                           0000C9   277 _T2MOD	=	0x00c9
                           0000CA   278 _RCAP2L	=	0x00ca
                           0000CB   279 _RCAP2H	=	0x00cb
                           0000CC   280 _TL2	=	0x00cc
                           0000CD   281 _TH2	=	0x00cd
                           0000CE   282 _CANEN1	=	0x00ce
                           0000CF   283 _CANEN2	=	0x00cf
                           0000D0   284 _PSW	=	0x00d0
                           0000D1   285 _FCON	=	0x00d1
                           0000D2   286 _EECON	=	0x00d2
                           0000D4   287 _SPCON	=	0x00d4
                           0000D5   288 _SPSCR	=	0x00d5
                           0000D6   289 _SPDAT	=	0x00d6
                           0000D8   290 _CCON	=	0x00d8
                           0000D9   291 _CMOD	=	0x00d9
                           0000DA   292 _CCAPM0	=	0x00da
                           0000DB   293 _CCAPM1	=	0x00db
                           0000DC   294 _CCAPM2	=	0x00dc
                           0000DD   295 _CCAPM3	=	0x00dd
                           0000DE   296 _CCAPM4	=	0x00de
                           0000E0   297 _ACC	=	0x00e0
                           0000E0   298 _A	=	0x00e0
                           0000E8   299 _IEN1	=	0x00e8
                           0000E9   300 _CL	=	0x00e9
                           0000EA   301 _CCAP0L	=	0x00ea
                           0000EB   302 _CCAP1L	=	0x00eb
                           0000EC   303 _CCAP2L	=	0x00ec
                           0000ED   304 _CCAP3L	=	0x00ed
                           0000EE   305 _CCAP4L	=	0x00ee
                           0000F0   306 _B	=	0x00f0
                           0000F2   307 _ADCLK	=	0x00f2
                           0000F3   308 _ADCON	=	0x00f3
                           0000F4   309 _ADDL	=	0x00f4
                           0000F5   310 _ADDH	=	0x00f5
                           0000F6   311 _ADCF	=	0x00f6
                           0000F7   312 _IPH1	=	0x00f7
                           0000F8   313 _IPL1	=	0x00f8
                           0000F9   314 _CH	=	0x00f9
                           0000FA   315 _CCAP0H	=	0x00fa
                           0000FB   316 _CCAP1H	=	0x00fb
                           0000FC   317 _CCAP2H	=	0x00fc
                           0000FD   318 _CCAP3H	=	0x00fd
                           0000FE   319 _CCAP4H	=	0x00fe
                                    320 ;--------------------------------------------------------
                                    321 ; special function bits
                                    322 ;--------------------------------------------------------
                                    323 	.area RSEG    (ABS,DATA)
      000000                        324 	.org 0x0000
                           000080   325 _P0_0	=	0x0080
                           000081   326 _P0_1	=	0x0081
                           000082   327 _P0_2	=	0x0082
                           000083   328 _P0_3	=	0x0083
                           000084   329 _P0_4	=	0x0084
                           000085   330 _P0_5	=	0x0085
                           000086   331 _P0_6	=	0x0086
                           000087   332 _P0_7	=	0x0087
                           000080   333 _AD0	=	0x0080
                           000081   334 _AD1	=	0x0081
                           000082   335 _AD2	=	0x0082
                           000083   336 _AD3	=	0x0083
                           000084   337 _AD4	=	0x0084
                           000085   338 _AD5	=	0x0085
                           000086   339 _AD6	=	0x0086
                           000087   340 _AD7	=	0x0087
                           000088   341 _IT0	=	0x0088
                           000089   342 _IE0	=	0x0089
                           00008A   343 _IT1	=	0x008a
                           00008B   344 _IE1	=	0x008b
                           00008C   345 _TR0	=	0x008c
                           00008D   346 _TF0	=	0x008d
                           00008E   347 _TR1	=	0x008e
                           00008F   348 _TF1	=	0x008f
                           000090   349 _P1_0	=	0x0090
                           000091   350 _P1_1	=	0x0091
                           000092   351 _P1_2	=	0x0092
                           000093   352 _P1_3	=	0x0093
                           000094   353 _P1_4	=	0x0094
                           000095   354 _P1_5	=	0x0095
                           000096   355 _P1_6	=	0x0096
                           000097   356 _P1_7	=	0x0097
                           000090   357 _T2	=	0x0090
                           000091   358 _T2EX	=	0x0091
                           000092   359 _ECI	=	0x0092
                           000093   360 _CEX0	=	0x0093
                           000094   361 _CEX1	=	0x0094
                           000095   362 _CEX2	=	0x0095
                           000096   363 _CEX3	=	0x0096
                           000097   364 _CEX4	=	0x0097
                           000098   365 _RI	=	0x0098
                           000099   366 _TI	=	0x0099
                           00009A   367 _RB8	=	0x009a
                           00009B   368 _TB8	=	0x009b
                           00009C   369 _REN	=	0x009c
                           00009D   370 _SM2	=	0x009d
                           00009E   371 _SM1	=	0x009e
                           00009F   372 _SM0	=	0x009f
                           00009F   373 _FE	=	0x009f
                           0000A0   374 _P2_0	=	0x00a0
                           0000A1   375 _P2_1	=	0x00a1
                           0000A2   376 _P2_2	=	0x00a2
                           0000A3   377 _P2_3	=	0x00a3
                           0000A4   378 _P2_4	=	0x00a4
                           0000A5   379 _P2_5	=	0x00a5
                           0000A6   380 _P2_6	=	0x00a6
                           0000A7   381 _P2_7	=	0x00a7
                           0000A0   382 _A8	=	0x00a0
                           0000A1   383 _A9	=	0x00a1
                           0000A2   384 _A10	=	0x00a2
                           0000A3   385 _A11	=	0x00a3
                           0000A4   386 _A12	=	0x00a4
                           0000A5   387 _A13	=	0x00a5
                           0000A6   388 _A14	=	0x00a6
                           0000A7   389 _A15	=	0x00a7
                           0000A8   390 _EX0	=	0x00a8
                           0000A9   391 _ET0	=	0x00a9
                           0000AA   392 _EX1	=	0x00aa
                           0000AB   393 _ET1	=	0x00ab
                           0000AC   394 _ES	=	0x00ac
                           0000AD   395 _ET2	=	0x00ad
                           0000AE   396 _EC	=	0x00ae
                           0000AF   397 _EA	=	0x00af
                           0000B0   398 _P3_0	=	0x00b0
                           0000B1   399 _P3_1	=	0x00b1
                           0000B2   400 _P3_2	=	0x00b2
                           0000B3   401 _P3_3	=	0x00b3
                           0000B4   402 _P3_4	=	0x00b4
                           0000B5   403 _P3_5	=	0x00b5
                           0000B6   404 _P3_6	=	0x00b6
                           0000B7   405 _P3_7	=	0x00b7
                           0000B0   406 _RXD	=	0x00b0
                           0000B1   407 _TXD	=	0x00b1
                           0000B2   408 _INT0	=	0x00b2
                           0000B3   409 _INT1	=	0x00b3
                           0000B4   410 _T0	=	0x00b4
                           0000B5   411 _T1	=	0x00b5
                           0000B6   412 _WR	=	0x00b6
                           0000B7   413 _RD	=	0x00b7
                           0000B8   414 _PX0	=	0x00b8
                           0000B9   415 _PT0	=	0x00b9
                           0000BA   416 _PX1	=	0x00ba
                           0000BB   417 _PT1	=	0x00bb
                           0000BC   418 _PS	=	0x00bc
                           0000BD   419 _PT2	=	0x00bd
                           0000BE   420 _PPC	=	0x00be
                           0000C0   421 _P4_0	=	0x00c0
                           0000C1   422 _P4_1	=	0x00c1
                           0000C2   423 _P4_2	=	0x00c2
                           0000C3   424 _P4_3	=	0x00c3
                           0000C4   425 _P4_4	=	0x00c4
                           0000C2   426 _MISO	=	0x00c2
                           0000C3   427 _SCK	=	0x00c3
                           0000C4   428 _MOSI	=	0x00c4
                           0000C8   429 _CPRL2	=	0x00c8
                           0000C9   430 _CT2	=	0x00c9
                           0000CA   431 _TR2	=	0x00ca
                           0000CB   432 _EXEN2	=	0x00cb
                           0000CC   433 _TCLK	=	0x00cc
                           0000CD   434 _RCLK	=	0x00cd
                           0000CE   435 _EXF2	=	0x00ce
                           0000CF   436 _TF2	=	0x00cf
                           0000D0   437 _P	=	0x00d0
                           0000D1   438 _F1	=	0x00d1
                           0000D2   439 _OV	=	0x00d2
                           0000D3   440 _RS0	=	0x00d3
                           0000D4   441 _RS1	=	0x00d4
                           0000D5   442 _F0	=	0x00d5
                           0000D6   443 _AC	=	0x00d6
                           0000D7   444 _CY	=	0x00d7
                           0000D8   445 _CCF0	=	0x00d8
                           0000D9   446 _CCF1	=	0x00d9
                           0000DA   447 _CCF2	=	0x00da
                           0000DB   448 _CCF3	=	0x00db
                           0000DC   449 _CCF4	=	0x00dc
                           0000DE   450 _CR	=	0x00de
                           0000DF   451 _CF	=	0x00df
                           0000E0   452 _ACC0	=	0x00e0
                           0000E1   453 _ACC1	=	0x00e1
                           0000E2   454 _ACC2	=	0x00e2
                           0000E3   455 _ACC3	=	0x00e3
                           0000E4   456 _ACC4	=	0x00e4
                           0000E5   457 _ACC5	=	0x00e5
                           0000E6   458 _ACC6	=	0x00e6
                           0000E7   459 _ACC7	=	0x00e7
                           0000E0   460 _A0	=	0x00e0
                           0000E1   461 _A1	=	0x00e1
                           0000E2   462 _A2	=	0x00e2
                           0000E3   463 _A3	=	0x00e3
                           0000E4   464 _A4	=	0x00e4
                           0000E5   465 _A5	=	0x00e5
                           0000E6   466 _A6	=	0x00e6
                           0000E7   467 _A7	=	0x00e7
                           0000E8   468 _EADC	=	0x00e8
                           0000E9   469 _ESPI	=	0x00e9
                           0000F0   470 _B0	=	0x00f0
                           0000F1   471 _B1	=	0x00f1
                           0000F2   472 _B2	=	0x00f2
                           0000F3   473 _B3	=	0x00f3
                           0000F4   474 _B4	=	0x00f4
                           0000F5   475 _B5	=	0x00f5
                           0000F6   476 _B6	=	0x00f6
                           0000F7   477 _B7	=	0x00f7
                           0000F9   478 _PADCL	=	0x00f9
                                    479 ;--------------------------------------------------------
                                    480 ; overlayable register banks
                                    481 ;--------------------------------------------------------
                                    482 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        483 	.ds 8
                                    484 ;--------------------------------------------------------
                                    485 ; internal ram data
                                    486 ;--------------------------------------------------------
                                    487 	.area DSEG    (DATA)
      000008                        488 _main_str_65536_29:
      000008                        489 	.ds 32
                                    490 ;--------------------------------------------------------
                                    491 ; overlayable items in internal ram 
                                    492 ;--------------------------------------------------------
                                    493 ;--------------------------------------------------------
                                    494 ; Stack segment in internal ram 
                                    495 ;--------------------------------------------------------
                                    496 	.area	SSEG
      00006D                        497 __start__stack:
      00006D                        498 	.ds	1
                                    499 
                                    500 ;--------------------------------------------------------
                                    501 ; indirectly addressable internal ram data
                                    502 ;--------------------------------------------------------
                                    503 	.area ISEG    (DATA)
                                    504 ;--------------------------------------------------------
                                    505 ; absolute internal ram data
                                    506 ;--------------------------------------------------------
                                    507 	.area IABS    (ABS,DATA)
                                    508 	.area IABS    (ABS,DATA)
                                    509 ;--------------------------------------------------------
                                    510 ; bit data
                                    511 ;--------------------------------------------------------
                                    512 	.area BSEG    (BIT)
                                    513 ;--------------------------------------------------------
                                    514 ; paged external ram data
                                    515 ;--------------------------------------------------------
                                    516 	.area PSEG    (PAG,XDATA)
                                    517 ;--------------------------------------------------------
                                    518 ; external ram data
                                    519 ;--------------------------------------------------------
                                    520 	.area XSEG    (XDATA)
                                    521 ;--------------------------------------------------------
                                    522 ; absolute external ram data
                                    523 ;--------------------------------------------------------
                                    524 	.area XABS    (ABS,XDATA)
                                    525 ;--------------------------------------------------------
                                    526 ; external initialized ram data
                                    527 ;--------------------------------------------------------
                                    528 	.area XISEG   (XDATA)
                                    529 	.area HOME    (CODE)
                                    530 	.area GSINIT0 (CODE)
                                    531 	.area GSINIT1 (CODE)
                                    532 	.area GSINIT2 (CODE)
                                    533 	.area GSINIT3 (CODE)
                                    534 	.area GSINIT4 (CODE)
                                    535 	.area GSINIT5 (CODE)
                                    536 	.area GSINIT  (CODE)
                                    537 	.area GSFINAL (CODE)
                                    538 	.area CSEG    (CODE)
                                    539 ;--------------------------------------------------------
                                    540 ; interrupt vector 
                                    541 ;--------------------------------------------------------
                                    542 	.area HOME    (CODE)
      000000                        543 __interrupt_vect:
      000000 02 00 06         [24]  544 	ljmp	__sdcc_gsinit_startup
                                    545 ;--------------------------------------------------------
                                    546 ; global & static initialisations
                                    547 ;--------------------------------------------------------
                                    548 	.area HOME    (CODE)
                                    549 	.area GSINIT  (CODE)
                                    550 	.area GSFINAL (CODE)
                                    551 	.area GSINIT  (CODE)
                                    552 	.globl __sdcc_gsinit_startup
                                    553 	.globl __sdcc_program_startup
                                    554 	.globl __start__stack
                                    555 	.globl __mcs51_genXINIT
                                    556 	.globl __mcs51_genXRAMCLEAR
                                    557 	.globl __mcs51_genRAMCLEAR
                                    558 	.area GSFINAL (CODE)
      000067 02 00 03         [24]  559 	ljmp	__sdcc_program_startup
                                    560 ;--------------------------------------------------------
                                    561 ; Home
                                    562 ;--------------------------------------------------------
                                    563 	.area HOME    (CODE)
                                    564 	.area HOME    (CODE)
      000003                        565 __sdcc_program_startup:
      000003 02 00 6A         [24]  566 	ljmp	_main
                                    567 ;	return from main will return to caller
                                    568 ;--------------------------------------------------------
                                    569 ; code
                                    570 ;--------------------------------------------------------
                                    571 	.area CSEG    (CODE)
                                    572 ;------------------------------------------------------------
                                    573 ;Allocation info for local variables in function 'main'
                                    574 ;------------------------------------------------------------
                                    575 ;str                       Allocated with name '_main_str_65536_29'
                                    576 ;i                         Allocated to registers 
                                    577 ;------------------------------------------------------------
                                    578 ;	main.c:22: void main(void)
                                    579 ;	-----------------------------------------
                                    580 ;	 function main
                                    581 ;	-----------------------------------------
      00006A                        582 _main:
                           000007   583 	ar7 = 0x07
                           000006   584 	ar6 = 0x06
                           000005   585 	ar5 = 0x05
                           000004   586 	ar4 = 0x04
                           000003   587 	ar3 = 0x03
                           000002   588 	ar2 = 0x02
                           000001   589 	ar1 = 0x01
                           000000   590 	ar0 = 0x00
                                    591 ;	main.c:25: sprintf(str, "hello pineapples %d", 128);
      00006A 74 80            [12]  592 	mov	a,#0x80
      00006C C0 E0            [24]  593 	push	acc
      00006E E4               [12]  594 	clr	a
      00006F C0 E0            [24]  595 	push	acc
      000071 74 94            [12]  596 	mov	a,#___str_0
      000073 C0 E0            [24]  597 	push	acc
      000075 74 0D            [12]  598 	mov	a,#(___str_0 >> 8)
      000077 C0 E0            [24]  599 	push	acc
      000079 74 80            [12]  600 	mov	a,#0x80
      00007B C0 E0            [24]  601 	push	acc
      00007D 74 08            [12]  602 	mov	a,#_main_str_65536_29
      00007F C0 E0            [24]  603 	push	acc
      000081 74 00            [12]  604 	mov	a,#(_main_str_65536_29 >> 8)
      000083 C0 E0            [24]  605 	push	acc
      000085 74 40            [12]  606 	mov	a,#0x40
      000087 C0 E0            [24]  607 	push	acc
      000089 12 05 AD         [24]  608 	lcall	_sprintf
      00008C E5 81            [12]  609 	mov	a,sp
      00008E 24 F8            [12]  610 	add	a,#0xf8
      000090 F5 81            [12]  611 	mov	sp,a
                                    612 ;	main.c:27: initLCD();
      000092 12 01 07         [24]  613 	lcall	_initLCD
                                    614 ;	main.c:28: writeLineLCD(str);
      000095 90 00 08         [24]  615 	mov	dptr,#_main_str_65536_29
      000098 75 F0 40         [24]  616 	mov	b,#0x40
      00009B 12 01 DC         [24]  617 	lcall	_writeLineLCD
                                    618 ;	main.c:31: while (1) 
      00009E 7E 00            [12]  619 	mov	r6,#0x00
      0000A0 7F 00            [12]  620 	mov	r7,#0x00
      0000A2                        621 00102$:
                                    622 ;	main.c:33: clearLCD();
      0000A2 C0 07            [24]  623 	push	ar7
      0000A4 C0 06            [24]  624 	push	ar6
      0000A6 12 02 14         [24]  625 	lcall	_clearLCD
      0000A9 D0 06            [24]  626 	pop	ar6
      0000AB D0 07            [24]  627 	pop	ar7
                                    628 ;	main.c:34: i++;
      0000AD 0E               [12]  629 	inc	r6
      0000AE BE 00 01         [24]  630 	cjne	r6,#0x00,00110$
      0000B1 0F               [12]  631 	inc	r7
      0000B2                        632 00110$:
                                    633 ;	main.c:35: sprintf(str, "%d", i);
      0000B2 C0 07            [24]  634 	push	ar7
      0000B4 C0 06            [24]  635 	push	ar6
      0000B6 C0 06            [24]  636 	push	ar6
      0000B8 C0 07            [24]  637 	push	ar7
      0000BA 74 A8            [12]  638 	mov	a,#___str_1
      0000BC C0 E0            [24]  639 	push	acc
      0000BE 74 0D            [12]  640 	mov	a,#(___str_1 >> 8)
      0000C0 C0 E0            [24]  641 	push	acc
      0000C2 74 80            [12]  642 	mov	a,#0x80
      0000C4 C0 E0            [24]  643 	push	acc
      0000C6 74 08            [12]  644 	mov	a,#_main_str_65536_29
      0000C8 C0 E0            [24]  645 	push	acc
      0000CA 74 00            [12]  646 	mov	a,#(_main_str_65536_29 >> 8)
      0000CC C0 E0            [24]  647 	push	acc
      0000CE 74 40            [12]  648 	mov	a,#0x40
      0000D0 C0 E0            [24]  649 	push	acc
      0000D2 12 05 AD         [24]  650 	lcall	_sprintf
      0000D5 E5 81            [12]  651 	mov	a,sp
      0000D7 24 F8            [12]  652 	add	a,#0xf8
      0000D9 F5 81            [12]  653 	mov	sp,a
                                    654 ;	main.c:36: writeLineLCD(str);
      0000DB 90 00 08         [24]  655 	mov	dptr,#_main_str_65536_29
      0000DE 75 F0 40         [24]  656 	mov	b,#0x40
      0000E1 12 01 DC         [24]  657 	lcall	_writeLineLCD
                                    658 ;	main.c:37: delay(10000);
      0000E4 90 27 10         [24]  659 	mov	dptr,#0x2710
      0000E7 12 00 F0         [24]  660 	lcall	_delay
      0000EA D0 06            [24]  661 	pop	ar6
      0000EC D0 07            [24]  662 	pop	ar7
                                    663 ;	main.c:39: }
      0000EE 80 B2            [24]  664 	sjmp	00102$
                                    665 	.area CSEG    (CODE)
                                    666 	.area CONST   (CODE)
      000D94                        667 ___str_0:
      000D94 68 65 6C 6C 6F 20 70   668 	.ascii "hello pineapples %d"
             69 6E 65 61 70 70 6C
             65 73 20 25 64
      000DA7 00                     669 	.db 0x00
      000DA8                        670 ___str_1:
      000DA8 25 64                  671 	.ascii "%d"
      000DAA 00                     672 	.db 0x00
                                    673 	.area XINIT   (CODE)
                                    674 	.area CABS    (ABS,CODE)
