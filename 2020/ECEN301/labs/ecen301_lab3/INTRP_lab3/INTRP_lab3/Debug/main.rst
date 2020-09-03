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
                                     12 	.globl _ISR
                                     13 	.globl _sprintf
                                     14 	.globl _clearLCD
                                     15 	.globl _writeLineLCD
                                     16 	.globl _initLCD
                                     17 	.globl _delay
                                     18 	.globl _PADCL
                                     19 	.globl _B7
                                     20 	.globl _B6
                                     21 	.globl _B5
                                     22 	.globl _B4
                                     23 	.globl _B3
                                     24 	.globl _B2
                                     25 	.globl _B1
                                     26 	.globl _B0
                                     27 	.globl _ESPI
                                     28 	.globl _EADC
                                     29 	.globl _A7
                                     30 	.globl _A6
                                     31 	.globl _A5
                                     32 	.globl _A4
                                     33 	.globl _A3
                                     34 	.globl _A2
                                     35 	.globl _A1
                                     36 	.globl _A0
                                     37 	.globl _ACC7
                                     38 	.globl _ACC6
                                     39 	.globl _ACC5
                                     40 	.globl _ACC4
                                     41 	.globl _ACC3
                                     42 	.globl _ACC2
                                     43 	.globl _ACC1
                                     44 	.globl _ACC0
                                     45 	.globl _CF
                                     46 	.globl _CR
                                     47 	.globl _CCF4
                                     48 	.globl _CCF3
                                     49 	.globl _CCF2
                                     50 	.globl _CCF1
                                     51 	.globl _CCF0
                                     52 	.globl _CY
                                     53 	.globl _AC
                                     54 	.globl _F0
                                     55 	.globl _RS1
                                     56 	.globl _RS0
                                     57 	.globl _OV
                                     58 	.globl _F1
                                     59 	.globl _P
                                     60 	.globl _TF2
                                     61 	.globl _EXF2
                                     62 	.globl _RCLK
                                     63 	.globl _TCLK
                                     64 	.globl _EXEN2
                                     65 	.globl _TR2
                                     66 	.globl _CT2
                                     67 	.globl _CPRL2
                                     68 	.globl _MOSI
                                     69 	.globl _SCK
                                     70 	.globl _MISO
                                     71 	.globl _P4_4
                                     72 	.globl _P4_3
                                     73 	.globl _P4_2
                                     74 	.globl _P4_1
                                     75 	.globl _P4_0
                                     76 	.globl _PPC
                                     77 	.globl _PT2
                                     78 	.globl _PS
                                     79 	.globl _PT1
                                     80 	.globl _PX1
                                     81 	.globl _PT0
                                     82 	.globl _PX0
                                     83 	.globl _RD
                                     84 	.globl _WR
                                     85 	.globl _T1
                                     86 	.globl _T0
                                     87 	.globl _INT1
                                     88 	.globl _INT0
                                     89 	.globl _TXD
                                     90 	.globl _RXD
                                     91 	.globl _P3_7
                                     92 	.globl _P3_6
                                     93 	.globl _P3_5
                                     94 	.globl _P3_4
                                     95 	.globl _P3_3
                                     96 	.globl _P3_2
                                     97 	.globl _P3_1
                                     98 	.globl _P3_0
                                     99 	.globl _EA
                                    100 	.globl _EC
                                    101 	.globl _ET2
                                    102 	.globl _ES
                                    103 	.globl _ET1
                                    104 	.globl _EX1
                                    105 	.globl _ET0
                                    106 	.globl _EX0
                                    107 	.globl _A15
                                    108 	.globl _A14
                                    109 	.globl _A13
                                    110 	.globl _A12
                                    111 	.globl _A11
                                    112 	.globl _A10
                                    113 	.globl _A9
                                    114 	.globl _A8
                                    115 	.globl _P2_7
                                    116 	.globl _P2_6
                                    117 	.globl _P2_5
                                    118 	.globl _P2_4
                                    119 	.globl _P2_3
                                    120 	.globl _P2_2
                                    121 	.globl _P2_1
                                    122 	.globl _P2_0
                                    123 	.globl _FE
                                    124 	.globl _SM0
                                    125 	.globl _SM1
                                    126 	.globl _SM2
                                    127 	.globl _REN
                                    128 	.globl _TB8
                                    129 	.globl _RB8
                                    130 	.globl _TI
                                    131 	.globl _RI
                                    132 	.globl _CEX4
                                    133 	.globl _CEX3
                                    134 	.globl _CEX2
                                    135 	.globl _CEX1
                                    136 	.globl _CEX0
                                    137 	.globl _ECI
                                    138 	.globl _T2EX
                                    139 	.globl _T2
                                    140 	.globl _P1_7
                                    141 	.globl _P1_6
                                    142 	.globl _P1_5
                                    143 	.globl _P1_4
                                    144 	.globl _P1_3
                                    145 	.globl _P1_2
                                    146 	.globl _P1_1
                                    147 	.globl _P1_0
                                    148 	.globl _TF1
                                    149 	.globl _TR1
                                    150 	.globl _TF0
                                    151 	.globl _TR0
                                    152 	.globl _IE1
                                    153 	.globl _IT1
                                    154 	.globl _IE0
                                    155 	.globl _IT0
                                    156 	.globl _AD7
                                    157 	.globl _AD6
                                    158 	.globl _AD5
                                    159 	.globl _AD4
                                    160 	.globl _AD3
                                    161 	.globl _AD2
                                    162 	.globl _AD1
                                    163 	.globl _AD0
                                    164 	.globl _P0_7
                                    165 	.globl _P0_6
                                    166 	.globl _P0_5
                                    167 	.globl _P0_4
                                    168 	.globl _P0_3
                                    169 	.globl _P0_2
                                    170 	.globl _P0_1
                                    171 	.globl _P0_0
                                    172 	.globl _CCAP4H
                                    173 	.globl _CCAP3H
                                    174 	.globl _CCAP2H
                                    175 	.globl _CCAP1H
                                    176 	.globl _CCAP0H
                                    177 	.globl _CH
                                    178 	.globl _IPL1
                                    179 	.globl _IPH1
                                    180 	.globl _ADCF
                                    181 	.globl _ADDH
                                    182 	.globl _ADDL
                                    183 	.globl _ADCON
                                    184 	.globl _ADCLK
                                    185 	.globl _B
                                    186 	.globl _CCAP4L
                                    187 	.globl _CCAP3L
                                    188 	.globl _CCAP2L
                                    189 	.globl _CCAP1L
                                    190 	.globl _CCAP0L
                                    191 	.globl _CL
                                    192 	.globl _IEN1
                                    193 	.globl _A
                                    194 	.globl _ACC
                                    195 	.globl _CCAPM4
                                    196 	.globl _CCAPM3
                                    197 	.globl _CCAPM2
                                    198 	.globl _CCAPM1
                                    199 	.globl _CCAPM0
                                    200 	.globl _CMOD
                                    201 	.globl _CCON
                                    202 	.globl _SPDAT
                                    203 	.globl _SPSCR
                                    204 	.globl _SPCON
                                    205 	.globl _EECON
                                    206 	.globl _FCON
                                    207 	.globl _PSW
                                    208 	.globl _CANEN2
                                    209 	.globl _CANEN1
                                    210 	.globl _TH2
                                    211 	.globl _TL2
                                    212 	.globl _RCAP2H
                                    213 	.globl _RCAP2L
                                    214 	.globl _T2MOD
                                    215 	.globl _T2CON
                                    216 	.globl _P4
                                    217 	.globl _SADEN
                                    218 	.globl _IPL0
                                    219 	.globl _IPH0
                                    220 	.globl _P3
                                    221 	.globl _SADDR
                                    222 	.globl _IEN0
                                    223 	.globl _WDTPRG
                                    224 	.globl _WDTRST
                                    225 	.globl _AUXR1
                                    226 	.globl _P2
                                    227 	.globl _CKCON1
                                    228 	.globl _SBUF
                                    229 	.globl _SCON
                                    230 	.globl _P1
                                    231 	.globl _CKCON0
                                    232 	.globl _AUXR
                                    233 	.globl _TH1
                                    234 	.globl _TH0
                                    235 	.globl _TL1
                                    236 	.globl _TL0
                                    237 	.globl _TMOD
                                    238 	.globl _TCON
                                    239 	.globl _PCON
                                    240 	.globl _DPH
                                    241 	.globl _DPL
                                    242 	.globl _SP
                                    243 	.globl _P0
                                    244 	.globl _count
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
      000008                        490 _count::
      000008                        491 	.ds 2
      00000A                        492 _main_str_65537_32:
      00000A                        493 	.ds 16
                                    494 ;--------------------------------------------------------
                                    495 ; overlayable items in internal ram 
                                    496 ;--------------------------------------------------------
                                    497 ;--------------------------------------------------------
                                    498 ; Stack segment in internal ram 
                                    499 ;--------------------------------------------------------
                                    500 	.area	SSEG
      00005F                        501 __start__stack:
      00005F                        502 	.ds	1
                                    503 
                                    504 ;--------------------------------------------------------
                                    505 ; indirectly addressable internal ram data
                                    506 ;--------------------------------------------------------
                                    507 	.area ISEG    (DATA)
                                    508 ;--------------------------------------------------------
                                    509 ; absolute internal ram data
                                    510 ;--------------------------------------------------------
                                    511 	.area IABS    (ABS,DATA)
                                    512 	.area IABS    (ABS,DATA)
                                    513 ;--------------------------------------------------------
                                    514 ; bit data
                                    515 ;--------------------------------------------------------
                                    516 	.area BSEG    (BIT)
                                    517 ;--------------------------------------------------------
                                    518 ; paged external ram data
                                    519 ;--------------------------------------------------------
                                    520 	.area PSEG    (PAG,XDATA)
                                    521 ;--------------------------------------------------------
                                    522 ; external ram data
                                    523 ;--------------------------------------------------------
                                    524 	.area XSEG    (XDATA)
                                    525 ;--------------------------------------------------------
                                    526 ; absolute external ram data
                                    527 ;--------------------------------------------------------
                                    528 	.area XABS    (ABS,XDATA)
                                    529 ;--------------------------------------------------------
                                    530 ; external initialized ram data
                                    531 ;--------------------------------------------------------
                                    532 	.area XISEG   (XDATA)
                                    533 	.area HOME    (CODE)
                                    534 	.area GSINIT0 (CODE)
                                    535 	.area GSINIT1 (CODE)
                                    536 	.area GSINIT2 (CODE)
                                    537 	.area GSINIT3 (CODE)
                                    538 	.area GSINIT4 (CODE)
                                    539 	.area GSINIT5 (CODE)
                                    540 	.area GSINIT  (CODE)
                                    541 	.area GSFINAL (CODE)
                                    542 	.area CSEG    (CODE)
                                    543 ;--------------------------------------------------------
                                    544 ; interrupt vector 
                                    545 ;--------------------------------------------------------
                                    546 	.area HOME    (CODE)
      000000                        547 __interrupt_vect:
      000000 02 00 09         [24]  548 	ljmp	__sdcc_gsinit_startup
      000003 02 00 72         [24]  549 	ljmp	_ISR
                                    550 ;--------------------------------------------------------
                                    551 ; global & static initialisations
                                    552 ;--------------------------------------------------------
                                    553 	.area HOME    (CODE)
                                    554 	.area GSINIT  (CODE)
                                    555 	.area GSFINAL (CODE)
                                    556 	.area GSINIT  (CODE)
                                    557 	.globl __sdcc_gsinit_startup
                                    558 	.globl __sdcc_program_startup
                                    559 	.globl __start__stack
                                    560 	.globl __mcs51_genXINIT
                                    561 	.globl __mcs51_genXRAMCLEAR
                                    562 	.globl __mcs51_genRAMCLEAR
                                    563 ;	main.c:12: volatile unsigned int count = 0;
      000062 E4               [12]  564 	clr	a
      000063 F5 08            [12]  565 	mov	_count,a
      000065 F5 09            [12]  566 	mov	(_count + 1),a
                                    567 	.area GSFINAL (CODE)
      00006F 02 00 06         [24]  568 	ljmp	__sdcc_program_startup
                                    569 ;--------------------------------------------------------
                                    570 ; Home
                                    571 ;--------------------------------------------------------
                                    572 	.area HOME    (CODE)
                                    573 	.area HOME    (CODE)
      000006                        574 __sdcc_program_startup:
      000006 02 00 86         [24]  575 	ljmp	_main
                                    576 ;	return from main will return to caller
                                    577 ;--------------------------------------------------------
                                    578 ; code
                                    579 ;--------------------------------------------------------
                                    580 	.area CSEG    (CODE)
                                    581 ;------------------------------------------------------------
                                    582 ;Allocation info for local variables in function 'ISR'
                                    583 ;------------------------------------------------------------
                                    584 ;	main.c:14: void ISR (void) __interrupt (0)
                                    585 ;	-----------------------------------------
                                    586 ;	 function ISR
                                    587 ;	-----------------------------------------
      000072                        588 _ISR:
                           000007   589 	ar7 = 0x07
                           000006   590 	ar6 = 0x06
                           000005   591 	ar5 = 0x05
                           000004   592 	ar4 = 0x04
                           000003   593 	ar3 = 0x03
                           000002   594 	ar2 = 0x02
                           000001   595 	ar1 = 0x01
                           000000   596 	ar0 = 0x00
      000072 C0 E0            [24]  597 	push	acc
      000074 C0 D0            [24]  598 	push	psw
                                    599 ;	main.c:16: count++;
      000076 74 01            [12]  600 	mov	a,#0x01
      000078 25 08            [12]  601 	add	a,_count
      00007A F5 08            [12]  602 	mov	_count,a
      00007C E4               [12]  603 	clr	a
      00007D 35 09            [12]  604 	addc	a,(_count + 1)
      00007F F5 09            [12]  605 	mov	(_count + 1),a
                                    606 ;	main.c:17: }
      000081 D0 D0            [24]  607 	pop	psw
      000083 D0 E0            [24]  608 	pop	acc
      000085 32               [24]  609 	reti
                                    610 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    611 ;	eliminated unneeded push/pop dpl
                                    612 ;	eliminated unneeded push/pop dph
                                    613 ;	eliminated unneeded push/pop b
                                    614 ;------------------------------------------------------------
                                    615 ;Allocation info for local variables in function 'main'
                                    616 ;------------------------------------------------------------
                                    617 ;str                       Allocated with name '_main_str_65537_32'
                                    618 ;------------------------------------------------------------
                                    619 ;	main.c:19: void main(void)
                                    620 ;	-----------------------------------------
                                    621 ;	 function main
                                    622 ;	-----------------------------------------
      000086                        623 _main:
                                    624 ;	main.c:21: IEN0 =  0b10000001; //enable external interrupt 0
      000086 75 A8 81         [24]  625 	mov	_IEN0,#0x81
                                    626 ;	main.c:22: IEN1 = 0; //disable SPI and ACD inter
      000089 75 E8 00         [24]  627 	mov	_IEN1,#0x00
                                    628 ;	main.c:23: TCON =  0b00000001; //set to select falling edge active
      00008C 75 88 01         [24]  629 	mov	_TCON,#0x01
                                    630 ;	main.c:27: initLCD();
      00008F 12 00 E2         [24]  631 	lcall	_initLCD
                                    632 ;	main.c:29: while (1)
      000092                        633 00102$:
                                    634 ;	main.c:31: clearLCD();
      000092 12 01 EF         [24]  635 	lcall	_clearLCD
                                    636 ;	main.c:32: sprintf(str, "%d", count);
      000095 C0 08            [24]  637 	push	_count
      000097 C0 09            [24]  638 	push	(_count + 1)
      000099 74 6F            [12]  639 	mov	a,#___str_0
      00009B C0 E0            [24]  640 	push	acc
      00009D 74 0D            [12]  641 	mov	a,#(___str_0 >> 8)
      00009F C0 E0            [24]  642 	push	acc
      0000A1 74 80            [12]  643 	mov	a,#0x80
      0000A3 C0 E0            [24]  644 	push	acc
      0000A5 74 0A            [12]  645 	mov	a,#_main_str_65537_32
      0000A7 C0 E0            [24]  646 	push	acc
      0000A9 74 00            [12]  647 	mov	a,#(_main_str_65537_32 >> 8)
      0000AB C0 E0            [24]  648 	push	acc
      0000AD 74 40            [12]  649 	mov	a,#0x40
      0000AF C0 E0            [24]  650 	push	acc
      0000B1 12 05 88         [24]  651 	lcall	_sprintf
      0000B4 E5 81            [12]  652 	mov	a,sp
      0000B6 24 F8            [12]  653 	add	a,#0xf8
      0000B8 F5 81            [12]  654 	mov	sp,a
                                    655 ;	main.c:33: writeLineLCD(str);
      0000BA 90 00 0A         [24]  656 	mov	dptr,#_main_str_65537_32
      0000BD 75 F0 40         [24]  657 	mov	b,#0x40
      0000C0 12 01 B7         [24]  658 	lcall	_writeLineLCD
                                    659 ;	main.c:34: delay(10000);
      0000C3 90 27 10         [24]  660 	mov	dptr,#0x2710
      0000C6 12 00 CB         [24]  661 	lcall	_delay
                                    662 ;	main.c:36: }
      0000C9 80 C7            [24]  663 	sjmp	00102$
                                    664 	.area CSEG    (CODE)
                                    665 	.area CONST   (CODE)
      000D6F                        666 ___str_0:
      000D6F 25 64                  667 	.ascii "%d"
      000D71 00                     668 	.db 0x00
                                    669 	.area XINIT   (CODE)
                                    670 	.area CABS    (ABS,CODE)
