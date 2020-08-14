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
                                     13 	.globl _movingAvg
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
                                    245 	.globl _movingAvg_PARM_5
                                    246 	.globl _movingAvg_PARM_4
                                    247 	.globl _movingAvg_PARM_3
                                    248 	.globl _movingAvg_PARM_2
                                    249 	.globl _SD
                                    250 	.globl _pos
                                    251 	.globl _sum
                                    252 	.globl _lower
                                    253 	.globl _upper
                                    254 	.globl _sample
                                    255 	.globl _arrNumbers
                                    256 	.globl _str
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
                                    334 ;--------------------------------------------------------
                                    335 ; special function bits
                                    336 ;--------------------------------------------------------
                                    337 	.area RSEG    (ABS,DATA)
      000000                        338 	.org 0x0000
                           000080   339 _P0_0	=	0x0080
                           000081   340 _P0_1	=	0x0081
                           000082   341 _P0_2	=	0x0082
                           000083   342 _P0_3	=	0x0083
                           000084   343 _P0_4	=	0x0084
                           000085   344 _P0_5	=	0x0085
                           000086   345 _P0_6	=	0x0086
                           000087   346 _P0_7	=	0x0087
                           000080   347 _AD0	=	0x0080
                           000081   348 _AD1	=	0x0081
                           000082   349 _AD2	=	0x0082
                           000083   350 _AD3	=	0x0083
                           000084   351 _AD4	=	0x0084
                           000085   352 _AD5	=	0x0085
                           000086   353 _AD6	=	0x0086
                           000087   354 _AD7	=	0x0087
                           000088   355 _IT0	=	0x0088
                           000089   356 _IE0	=	0x0089
                           00008A   357 _IT1	=	0x008a
                           00008B   358 _IE1	=	0x008b
                           00008C   359 _TR0	=	0x008c
                           00008D   360 _TF0	=	0x008d
                           00008E   361 _TR1	=	0x008e
                           00008F   362 _TF1	=	0x008f
                           000090   363 _P1_0	=	0x0090
                           000091   364 _P1_1	=	0x0091
                           000092   365 _P1_2	=	0x0092
                           000093   366 _P1_3	=	0x0093
                           000094   367 _P1_4	=	0x0094
                           000095   368 _P1_5	=	0x0095
                           000096   369 _P1_6	=	0x0096
                           000097   370 _P1_7	=	0x0097
                           000090   371 _T2	=	0x0090
                           000091   372 _T2EX	=	0x0091
                           000092   373 _ECI	=	0x0092
                           000093   374 _CEX0	=	0x0093
                           000094   375 _CEX1	=	0x0094
                           000095   376 _CEX2	=	0x0095
                           000096   377 _CEX3	=	0x0096
                           000097   378 _CEX4	=	0x0097
                           000098   379 _RI	=	0x0098
                           000099   380 _TI	=	0x0099
                           00009A   381 _RB8	=	0x009a
                           00009B   382 _TB8	=	0x009b
                           00009C   383 _REN	=	0x009c
                           00009D   384 _SM2	=	0x009d
                           00009E   385 _SM1	=	0x009e
                           00009F   386 _SM0	=	0x009f
                           00009F   387 _FE	=	0x009f
                           0000A0   388 _P2_0	=	0x00a0
                           0000A1   389 _P2_1	=	0x00a1
                           0000A2   390 _P2_2	=	0x00a2
                           0000A3   391 _P2_3	=	0x00a3
                           0000A4   392 _P2_4	=	0x00a4
                           0000A5   393 _P2_5	=	0x00a5
                           0000A6   394 _P2_6	=	0x00a6
                           0000A7   395 _P2_7	=	0x00a7
                           0000A0   396 _A8	=	0x00a0
                           0000A1   397 _A9	=	0x00a1
                           0000A2   398 _A10	=	0x00a2
                           0000A3   399 _A11	=	0x00a3
                           0000A4   400 _A12	=	0x00a4
                           0000A5   401 _A13	=	0x00a5
                           0000A6   402 _A14	=	0x00a6
                           0000A7   403 _A15	=	0x00a7
                           0000A8   404 _EX0	=	0x00a8
                           0000A9   405 _ET0	=	0x00a9
                           0000AA   406 _EX1	=	0x00aa
                           0000AB   407 _ET1	=	0x00ab
                           0000AC   408 _ES	=	0x00ac
                           0000AD   409 _ET2	=	0x00ad
                           0000AE   410 _EC	=	0x00ae
                           0000AF   411 _EA	=	0x00af
                           0000B0   412 _P3_0	=	0x00b0
                           0000B1   413 _P3_1	=	0x00b1
                           0000B2   414 _P3_2	=	0x00b2
                           0000B3   415 _P3_3	=	0x00b3
                           0000B4   416 _P3_4	=	0x00b4
                           0000B5   417 _P3_5	=	0x00b5
                           0000B6   418 _P3_6	=	0x00b6
                           0000B7   419 _P3_7	=	0x00b7
                           0000B0   420 _RXD	=	0x00b0
                           0000B1   421 _TXD	=	0x00b1
                           0000B2   422 _INT0	=	0x00b2
                           0000B3   423 _INT1	=	0x00b3
                           0000B4   424 _T0	=	0x00b4
                           0000B5   425 _T1	=	0x00b5
                           0000B6   426 _WR	=	0x00b6
                           0000B7   427 _RD	=	0x00b7
                           0000B8   428 _PX0	=	0x00b8
                           0000B9   429 _PT0	=	0x00b9
                           0000BA   430 _PX1	=	0x00ba
                           0000BB   431 _PT1	=	0x00bb
                           0000BC   432 _PS	=	0x00bc
                           0000BD   433 _PT2	=	0x00bd
                           0000BE   434 _PPC	=	0x00be
                           0000C0   435 _P4_0	=	0x00c0
                           0000C1   436 _P4_1	=	0x00c1
                           0000C2   437 _P4_2	=	0x00c2
                           0000C3   438 _P4_3	=	0x00c3
                           0000C4   439 _P4_4	=	0x00c4
                           0000C2   440 _MISO	=	0x00c2
                           0000C3   441 _SCK	=	0x00c3
                           0000C4   442 _MOSI	=	0x00c4
                           0000C8   443 _CPRL2	=	0x00c8
                           0000C9   444 _CT2	=	0x00c9
                           0000CA   445 _TR2	=	0x00ca
                           0000CB   446 _EXEN2	=	0x00cb
                           0000CC   447 _TCLK	=	0x00cc
                           0000CD   448 _RCLK	=	0x00cd
                           0000CE   449 _EXF2	=	0x00ce
                           0000CF   450 _TF2	=	0x00cf
                           0000D0   451 _P	=	0x00d0
                           0000D1   452 _F1	=	0x00d1
                           0000D2   453 _OV	=	0x00d2
                           0000D3   454 _RS0	=	0x00d3
                           0000D4   455 _RS1	=	0x00d4
                           0000D5   456 _F0	=	0x00d5
                           0000D6   457 _AC	=	0x00d6
                           0000D7   458 _CY	=	0x00d7
                           0000D8   459 _CCF0	=	0x00d8
                           0000D9   460 _CCF1	=	0x00d9
                           0000DA   461 _CCF2	=	0x00da
                           0000DB   462 _CCF3	=	0x00db
                           0000DC   463 _CCF4	=	0x00dc
                           0000DE   464 _CR	=	0x00de
                           0000DF   465 _CF	=	0x00df
                           0000E0   466 _ACC0	=	0x00e0
                           0000E1   467 _ACC1	=	0x00e1
                           0000E2   468 _ACC2	=	0x00e2
                           0000E3   469 _ACC3	=	0x00e3
                           0000E4   470 _ACC4	=	0x00e4
                           0000E5   471 _ACC5	=	0x00e5
                           0000E6   472 _ACC6	=	0x00e6
                           0000E7   473 _ACC7	=	0x00e7
                           0000E0   474 _A0	=	0x00e0
                           0000E1   475 _A1	=	0x00e1
                           0000E2   476 _A2	=	0x00e2
                           0000E3   477 _A3	=	0x00e3
                           0000E4   478 _A4	=	0x00e4
                           0000E5   479 _A5	=	0x00e5
                           0000E6   480 _A6	=	0x00e6
                           0000E7   481 _A7	=	0x00e7
                           0000E8   482 _EADC	=	0x00e8
                           0000E9   483 _ESPI	=	0x00e9
                           0000F0   484 _B0	=	0x00f0
                           0000F1   485 _B1	=	0x00f1
                           0000F2   486 _B2	=	0x00f2
                           0000F3   487 _B3	=	0x00f3
                           0000F4   488 _B4	=	0x00f4
                           0000F5   489 _B5	=	0x00f5
                           0000F6   490 _B6	=	0x00f6
                           0000F7   491 _B7	=	0x00f7
                           0000F9   492 _PADCL	=	0x00f9
                                    493 ;--------------------------------------------------------
                                    494 ; overlayable register banks
                                    495 ;--------------------------------------------------------
                                    496 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        497 	.ds 8
                                    498 ;--------------------------------------------------------
                                    499 ; internal ram data
                                    500 ;--------------------------------------------------------
                                    501 	.area DSEG    (DATA)
      000008                        502 _str::
      000008                        503 	.ds 16
      000018                        504 _arrNumbers::
      000018                        505 	.ds 10
      000022                        506 _sample::
      000022                        507 	.ds 2
      000024                        508 _upper::
      000024                        509 	.ds 2
      000026                        510 _lower::
      000026                        511 	.ds 2
      000028                        512 _sum::
      000028                        513 	.ds 2
      00002A                        514 _pos::
      00002A                        515 	.ds 2
      00002C                        516 _SD::
      00002C                        517 	.ds 4
      000030                        518 _movingAvg_PARM_2:
      000030                        519 	.ds 3
      000033                        520 _movingAvg_PARM_3:
      000033                        521 	.ds 2
      000035                        522 _movingAvg_PARM_4:
      000035                        523 	.ds 2
      000037                        524 _movingAvg_PARM_5:
      000037                        525 	.ds 2
      000039                        526 _movingAvg_ptrArrNumbers_65536_52:
      000039                        527 	.ds 3
      00003C                        528 _movingAvg_sloc0_1_0:
      00003C                        529 	.ds 2
      00003E                        530 _Sample_ADC_sample_65536_54:
      00003E                        531 	.ds 2
                                    532 ;--------------------------------------------------------
                                    533 ; overlayable items in internal ram 
                                    534 ;--------------------------------------------------------
                                    535 ;--------------------------------------------------------
                                    536 ; Stack segment in internal ram 
                                    537 ;--------------------------------------------------------
                                    538 	.area	SSEG
      000085                        539 __start__stack:
      000085                        540 	.ds	1
                                    541 
                                    542 ;--------------------------------------------------------
                                    543 ; indirectly addressable internal ram data
                                    544 ;--------------------------------------------------------
                                    545 	.area ISEG    (DATA)
                                    546 ;--------------------------------------------------------
                                    547 ; absolute internal ram data
                                    548 ;--------------------------------------------------------
                                    549 	.area IABS    (ABS,DATA)
                                    550 	.area IABS    (ABS,DATA)
                                    551 ;--------------------------------------------------------
                                    552 ; bit data
                                    553 ;--------------------------------------------------------
                                    554 	.area BSEG    (BIT)
                                    555 ;--------------------------------------------------------
                                    556 ; paged external ram data
                                    557 ;--------------------------------------------------------
                                    558 	.area PSEG    (PAG,XDATA)
                                    559 ;--------------------------------------------------------
                                    560 ; external ram data
                                    561 ;--------------------------------------------------------
                                    562 	.area XSEG    (XDATA)
                                    563 ;--------------------------------------------------------
                                    564 ; absolute external ram data
                                    565 ;--------------------------------------------------------
                                    566 	.area XABS    (ABS,XDATA)
                                    567 ;--------------------------------------------------------
                                    568 ; external initialized ram data
                                    569 ;--------------------------------------------------------
                                    570 	.area XISEG   (XDATA)
                                    571 	.area HOME    (CODE)
                                    572 	.area GSINIT0 (CODE)
                                    573 	.area GSINIT1 (CODE)
                                    574 	.area GSINIT2 (CODE)
                                    575 	.area GSINIT3 (CODE)
                                    576 	.area GSINIT4 (CODE)
                                    577 	.area GSINIT5 (CODE)
                                    578 	.area GSINIT  (CODE)
                                    579 	.area GSFINAL (CODE)
                                    580 	.area CSEG    (CODE)
                                    581 ;--------------------------------------------------------
                                    582 ; interrupt vector 
                                    583 ;--------------------------------------------------------
                                    584 	.area HOME    (CODE)
      000000                        585 __interrupt_vect:
      000000 02 00 06         [24]  586 	ljmp	__sdcc_gsinit_startup
                                    587 ;--------------------------------------------------------
                                    588 ; global & static initialisations
                                    589 ;--------------------------------------------------------
                                    590 	.area HOME    (CODE)
                                    591 	.area GSINIT  (CODE)
                                    592 	.area GSFINAL (CODE)
                                    593 	.area GSINIT  (CODE)
                                    594 	.globl __sdcc_gsinit_startup
                                    595 	.globl __sdcc_program_startup
                                    596 	.globl __start__stack
                                    597 	.globl __mcs51_genXINIT
                                    598 	.globl __mcs51_genXRAMCLEAR
                                    599 	.globl __mcs51_genRAMCLEAR
                                    600 ;------------------------------------------------------------
                                    601 ;Allocation info for local variables in function 'Sample_ADC'
                                    602 ;------------------------------------------------------------
                                    603 ;sample                    Allocated with name '_Sample_ADC_sample_65536_54'
                                    604 ;------------------------------------------------------------
                                    605 ;	main.c:37: static unsigned int sample = 0;
      00005F E4               [12]  606 	clr	a
      000060 F5 3E            [12]  607 	mov	_Sample_ADC_sample_65536_54,a
      000062 F5 3F            [12]  608 	mov	(_Sample_ADC_sample_65536_54 + 1),a
                                    609 ;	main.c:16: unsigned int arrNumbers[5] = {0};
      000064 E4               [12]  610 	clr	a
      000065 F5 18            [12]  611 	mov	(_arrNumbers + 0),a
      000067 F5 19            [12]  612 	mov	(_arrNumbers + 1),a
                                    613 ;	main.c:19: unsigned int sum = 0;
      000069 F5 28            [12]  614 	mov	_sum,a
      00006B F5 29            [12]  615 	mov	(_sum + 1),a
                                    616 ;	main.c:20: unsigned short pos= 0;
      00006D F5 2A            [12]  617 	mov	_pos,a
      00006F F5 2B            [12]  618 	mov	(_pos + 1),a
                                    619 	.area GSFINAL (CODE)
      000079 02 00 03         [24]  620 	ljmp	__sdcc_program_startup
                                    621 ;--------------------------------------------------------
                                    622 ; Home
                                    623 ;--------------------------------------------------------
                                    624 	.area HOME    (CODE)
                                    625 	.area HOME    (CODE)
      000003                        626 __sdcc_program_startup:
      000003 02 01 28         [24]  627 	ljmp	_main
                                    628 ;	return from main will return to caller
                                    629 ;--------------------------------------------------------
                                    630 ; code
                                    631 ;--------------------------------------------------------
                                    632 	.area CSEG    (CODE)
                                    633 ;------------------------------------------------------------
                                    634 ;Allocation info for local variables in function 'movingAvg'
                                    635 ;------------------------------------------------------------
                                    636 ;ptrSum                    Allocated with name '_movingAvg_PARM_2'
                                    637 ;pos                       Allocated with name '_movingAvg_PARM_3'
                                    638 ;len                       Allocated with name '_movingAvg_PARM_4'
                                    639 ;nextNum                   Allocated with name '_movingAvg_PARM_5'
                                    640 ;ptrArrNumbers             Allocated with name '_movingAvg_ptrArrNumbers_65536_52'
                                    641 ;sloc0                     Allocated with name '_movingAvg_sloc0_1_0'
                                    642 ;------------------------------------------------------------
                                    643 ;	main.c:25: unsigned int movingAvg(unsigned int *ptrArrNumbers,unsigned int *ptrSum,unsigned short pos,unsigned int len,unsigned int nextNum)
                                    644 ;	-----------------------------------------
                                    645 ;	 function movingAvg
                                    646 ;	-----------------------------------------
      00007C                        647 _movingAvg:
                           000007   648 	ar7 = 0x07
                           000006   649 	ar6 = 0x06
                           000005   650 	ar5 = 0x05
                           000004   651 	ar4 = 0x04
                           000003   652 	ar3 = 0x03
                           000002   653 	ar2 = 0x02
                           000001   654 	ar1 = 0x01
                           000000   655 	ar0 = 0x00
      00007C 85 82 39         [24]  656 	mov	_movingAvg_ptrArrNumbers_65536_52,dpl
      00007F 85 83 3A         [24]  657 	mov	(_movingAvg_ptrArrNumbers_65536_52 + 1),dph
      000082 85 F0 3B         [24]  658 	mov	(_movingAvg_ptrArrNumbers_65536_52 + 2),b
                                    659 ;	main.c:28: *ptrSum = *ptrSum - ptrArrNumbers[pos] + nextNum;
      000085 AA 30            [24]  660 	mov	r2,_movingAvg_PARM_2
      000087 AB 31            [24]  661 	mov	r3,(_movingAvg_PARM_2 + 1)
      000089 AC 32            [24]  662 	mov	r4,(_movingAvg_PARM_2 + 2)
      00008B 8A 82            [24]  663 	mov	dpl,r2
      00008D 8B 83            [24]  664 	mov	dph,r3
      00008F 8C F0            [24]  665 	mov	b,r4
      000091 12 13 61         [24]  666 	lcall	__gptrget
      000094 F5 3C            [12]  667 	mov	_movingAvg_sloc0_1_0,a
      000096 A3               [24]  668 	inc	dptr
      000097 12 13 61         [24]  669 	lcall	__gptrget
      00009A F5 3D            [12]  670 	mov	(_movingAvg_sloc0_1_0 + 1),a
      00009C E5 33            [12]  671 	mov	a,_movingAvg_PARM_3
      00009E 25 33            [12]  672 	add	a,_movingAvg_PARM_3
      0000A0 FE               [12]  673 	mov	r6,a
      0000A1 E5 34            [12]  674 	mov	a,(_movingAvg_PARM_3 + 1)
      0000A3 33               [12]  675 	rlc	a
      0000A4 FF               [12]  676 	mov	r7,a
      0000A5 EE               [12]  677 	mov	a,r6
      0000A6 25 39            [12]  678 	add	a,_movingAvg_ptrArrNumbers_65536_52
      0000A8 FE               [12]  679 	mov	r6,a
      0000A9 EF               [12]  680 	mov	a,r7
      0000AA 35 3A            [12]  681 	addc	a,(_movingAvg_ptrArrNumbers_65536_52 + 1)
      0000AC FF               [12]  682 	mov	r7,a
      0000AD AD 3B            [24]  683 	mov	r5,(_movingAvg_ptrArrNumbers_65536_52 + 2)
      0000AF 8E 82            [24]  684 	mov	dpl,r6
      0000B1 8F 83            [24]  685 	mov	dph,r7
      0000B3 8D F0            [24]  686 	mov	b,r5
      0000B5 12 13 61         [24]  687 	lcall	__gptrget
      0000B8 F8               [12]  688 	mov	r0,a
      0000B9 A3               [24]  689 	inc	dptr
      0000BA 12 13 61         [24]  690 	lcall	__gptrget
      0000BD F9               [12]  691 	mov	r1,a
      0000BE E5 3C            [12]  692 	mov	a,_movingAvg_sloc0_1_0
      0000C0 C3               [12]  693 	clr	c
      0000C1 98               [12]  694 	subb	a,r0
      0000C2 F8               [12]  695 	mov	r0,a
      0000C3 E5 3D            [12]  696 	mov	a,(_movingAvg_sloc0_1_0 + 1)
      0000C5 99               [12]  697 	subb	a,r1
      0000C6 F9               [12]  698 	mov	r1,a
      0000C7 E5 37            [12]  699 	mov	a,_movingAvg_PARM_5
      0000C9 28               [12]  700 	add	a,r0
      0000CA F8               [12]  701 	mov	r0,a
      0000CB E5 38            [12]  702 	mov	a,(_movingAvg_PARM_5 + 1)
      0000CD 39               [12]  703 	addc	a,r1
      0000CE F9               [12]  704 	mov	r1,a
      0000CF 8A 82            [24]  705 	mov	dpl,r2
      0000D1 8B 83            [24]  706 	mov	dph,r3
      0000D3 8C F0            [24]  707 	mov	b,r4
      0000D5 E8               [12]  708 	mov	a,r0
      0000D6 12 08 E4         [24]  709 	lcall	__gptrput
      0000D9 A3               [24]  710 	inc	dptr
      0000DA E9               [12]  711 	mov	a,r1
      0000DB 12 08 E4         [24]  712 	lcall	__gptrput
                                    713 ;	main.c:30: ptrArrNumbers[pos] = nextNum;
      0000DE 8E 82            [24]  714 	mov	dpl,r6
      0000E0 8F 83            [24]  715 	mov	dph,r7
      0000E2 8D F0            [24]  716 	mov	b,r5
      0000E4 E5 37            [12]  717 	mov	a,_movingAvg_PARM_5
      0000E6 12 08 E4         [24]  718 	lcall	__gptrput
      0000E9 A3               [24]  719 	inc	dptr
      0000EA E5 38            [12]  720 	mov	a,(_movingAvg_PARM_5 + 1)
      0000EC 12 08 E4         [24]  721 	lcall	__gptrput
                                    722 ;	main.c:32: return *ptrSum / len;
      0000EF 85 35 7B         [24]  723 	mov	__divuint_PARM_2,_movingAvg_PARM_4
      0000F2 85 36 7C         [24]  724 	mov	(__divuint_PARM_2 + 1),(_movingAvg_PARM_4 + 1)
      0000F5 88 82            [24]  725 	mov	dpl,r0
      0000F7 89 83            [24]  726 	mov	dph,r1
                                    727 ;	main.c:33: }
      0000F9 02 07 52         [24]  728 	ljmp	__divuint
                                    729 ;------------------------------------------------------------
                                    730 ;Allocation info for local variables in function 'Sample_ADC'
                                    731 ;------------------------------------------------------------
                                    732 ;sample                    Allocated with name '_Sample_ADC_sample_65536_54'
                                    733 ;------------------------------------------------------------
                                    734 ;	main.c:35: unsigned int Sample_ADC()
                                    735 ;	-----------------------------------------
                                    736 ;	 function Sample_ADC
                                    737 ;	-----------------------------------------
      0000FC                        738 _Sample_ADC:
                                    739 ;	main.c:38: ADCF  =  0b0000001; //select input
      0000FC 75 F6 01         [24]  740 	mov	_ADCF,#0x01
                                    741 ;	main.c:39: ADCON =  0b1101000; //clear control (0),set psidle and enable ADC(110...). Start(00010...)
      0000FF 75 F3 68         [24]  742 	mov	_ADCON,#0x68
                                    743 ;	main.c:40: ADCON &= 0b1101111;
      000102 53 F3 6F         [24]  744 	anl	_ADCON,#0x6f
                                    745 ;	main.c:41: sample = (ADDH << 2) + ADDL;
      000105 AE F5            [24]  746 	mov	r6,_ADDH
      000107 7F 00            [12]  747 	mov	r7,#0x00
      000109 EE               [12]  748 	mov	a,r6
      00010A 2E               [12]  749 	add	a,r6
      00010B FE               [12]  750 	mov	r6,a
      00010C EF               [12]  751 	mov	a,r7
      00010D 33               [12]  752 	rlc	a
      00010E FF               [12]  753 	mov	r7,a
      00010F EE               [12]  754 	mov	a,r6
      000110 2E               [12]  755 	add	a,r6
      000111 FE               [12]  756 	mov	r6,a
      000112 EF               [12]  757 	mov	a,r7
      000113 33               [12]  758 	rlc	a
      000114 FF               [12]  759 	mov	r7,a
      000115 AC F4            [24]  760 	mov	r4,_ADDL
      000117 7D 00            [12]  761 	mov	r5,#0x00
      000119 EC               [12]  762 	mov	a,r4
      00011A 2E               [12]  763 	add	a,r6
      00011B F5 3E            [12]  764 	mov	_Sample_ADC_sample_65536_54,a
      00011D ED               [12]  765 	mov	a,r5
      00011E 3F               [12]  766 	addc	a,r7
      00011F F5 3F            [12]  767 	mov	(_Sample_ADC_sample_65536_54 + 1),a
                                    768 ;	main.c:42: return sample;
      000121 85 3E 82         [24]  769 	mov	dpl,_Sample_ADC_sample_65536_54
      000124 85 3F 83         [24]  770 	mov	dph,(_Sample_ADC_sample_65536_54 + 1)
                                    771 ;	main.c:43: }
      000127 22               [24]  772 	ret
                                    773 ;------------------------------------------------------------
                                    774 ;Allocation info for local variables in function 'main'
                                    775 ;------------------------------------------------------------
                                    776 ;	main.c:48: void main()
                                    777 ;	-----------------------------------------
                                    778 ;	 function main
                                    779 ;	-----------------------------------------
      000128                        780 _main:
                                    781 ;	main.c:50: initLCD();
      000128 12 04 20         [24]  782 	lcall	_initLCD
                                    783 ;	main.c:51: while (1) {
      00012B                        784 00107$:
                                    785 ;	main.c:52: sample = Sample_ADC();
      00012B 12 00 FC         [24]  786 	lcall	_Sample_ADC
      00012E 85 82 22         [24]  787 	mov	_sample,dpl
      000131 85 83 23         [24]  788 	mov	(_sample + 1),dph
                                    789 ;	main.c:53: sample = movingAvg(arrNumbers, &sum, pos, 5, sample);
      000134 75 30 28         [24]  790 	mov	_movingAvg_PARM_2,#_sum
      000137 75 31 00         [24]  791 	mov	(_movingAvg_PARM_2 + 1),#0x00
      00013A 75 32 40         [24]  792 	mov	(_movingAvg_PARM_2 + 2),#0x40
      00013D 85 2A 33         [24]  793 	mov	_movingAvg_PARM_3,_pos
      000140 85 2B 34         [24]  794 	mov	(_movingAvg_PARM_3 + 1),(_pos + 1)
      000143 75 35 05         [24]  795 	mov	_movingAvg_PARM_4,#0x05
      000146 75 36 00         [24]  796 	mov	(_movingAvg_PARM_4 + 1),#0x00
      000149 85 22 37         [24]  797 	mov	_movingAvg_PARM_5,_sample
      00014C 85 23 38         [24]  798 	mov	(_movingAvg_PARM_5 + 1),(_sample + 1)
      00014F 90 00 18         [24]  799 	mov	dptr,#_arrNumbers
      000152 75 F0 40         [24]  800 	mov	b,#0x40
      000155 12 00 7C         [24]  801 	lcall	_movingAvg
      000158 85 82 22         [24]  802 	mov	_sample,dpl
      00015B 85 83 23         [24]  803 	mov	(_sample + 1),dph
                                    804 ;	main.c:54: pos++;
      00015E 05 2A            [12]  805 	inc	_pos
      000160 E4               [12]  806 	clr	a
      000161 B5 2A 02         [24]  807 	cjne	a,_pos,00123$
      000164 05 2B            [12]  808 	inc	(_pos + 1)
      000166                        809 00123$:
                                    810 ;	main.c:55: if (pos >= 5){
      000166 C3               [12]  811 	clr	c
      000167 E5 2A            [12]  812 	mov	a,_pos
      000169 94 05            [12]  813 	subb	a,#0x05
      00016B E5 2B            [12]  814 	mov	a,(_pos + 1)
      00016D 94 00            [12]  815 	subb	a,#0x00
      00016F 40 05            [24]  816 	jc	00102$
                                    817 ;	main.c:56: pos = 0;
      000171 E4               [12]  818 	clr	a
      000172 F5 2A            [12]  819 	mov	_pos,a
      000174 F5 2B            [12]  820 	mov	(_pos + 1),a
      000176                        821 00102$:
                                    822 ;	main.c:59: if (sample >= 669){
      000176 C3               [12]  823 	clr	c
      000177 E5 22            [12]  824 	mov	a,_sample
      000179 94 9D            [12]  825 	subb	a,#0x9d
      00017B E5 23            [12]  826 	mov	a,(_sample + 1)
      00017D 94 02            [12]  827 	subb	a,#0x02
      00017F 50 03            [24]  828 	jnc	00125$
      000181 02 02 A8         [24]  829 	ljmp	00104$
      000184                        830 00125$:
                                    831 ;	main.c:60: upper = (unsigned int)((float)sample - 421.0) / 6.4;
      000184 85 22 82         [24]  832 	mov	dpl,_sample
      000187 85 23 83         [24]  833 	mov	dph,(_sample + 1)
      00018A 12 0A A5         [24]  834 	lcall	___uint2fs
      00018D AC 82            [24]  835 	mov	r4,dpl
      00018F AD 83            [24]  836 	mov	r5,dph
      000191 AE F0            [24]  837 	mov	r6,b
      000193 FF               [12]  838 	mov	r7,a
      000194 E4               [12]  839 	clr	a
      000195 C0 E0            [24]  840 	push	acc
      000197 74 80            [12]  841 	mov	a,#0x80
      000199 C0 E0            [24]  842 	push	acc
      00019B 74 D2            [12]  843 	mov	a,#0xd2
      00019D C0 E0            [24]  844 	push	acc
      00019F 74 43            [12]  845 	mov	a,#0x43
      0001A1 C0 E0            [24]  846 	push	acc
      0001A3 8C 82            [24]  847 	mov	dpl,r4
      0001A5 8D 83            [24]  848 	mov	dph,r5
      0001A7 8E F0            [24]  849 	mov	b,r6
      0001A9 EF               [12]  850 	mov	a,r7
      0001AA 12 07 47         [24]  851 	lcall	___fssub
      0001AD AC 82            [24]  852 	mov	r4,dpl
      0001AF AD 83            [24]  853 	mov	r5,dph
      0001B1 AE F0            [24]  854 	mov	r6,b
      0001B3 FF               [12]  855 	mov	r7,a
      0001B4 E5 81            [12]  856 	mov	a,sp
      0001B6 24 FC            [12]  857 	add	a,#0xfc
      0001B8 F5 81            [12]  858 	mov	sp,a
      0001BA 8C 82            [24]  859 	mov	dpl,r4
      0001BC 8D 83            [24]  860 	mov	dph,r5
      0001BE 8E F0            [24]  861 	mov	b,r6
      0001C0 EF               [12]  862 	mov	a,r7
      0001C1 C0 07            [24]  863 	push	ar7
      0001C3 C0 06            [24]  864 	push	ar6
      0001C5 C0 05            [24]  865 	push	ar5
      0001C7 C0 04            [24]  866 	push	ar4
      0001C9 12 0A B1         [24]  867 	lcall	___fs2uint
      0001CC 12 0A A5         [24]  868 	lcall	___uint2fs
      0001CF A8 82            [24]  869 	mov	r0,dpl
      0001D1 A9 83            [24]  870 	mov	r1,dph
      0001D3 AA F0            [24]  871 	mov	r2,b
      0001D5 FB               [12]  872 	mov	r3,a
      0001D6 74 CD            [12]  873 	mov	a,#0xcd
      0001D8 C0 E0            [24]  874 	push	acc
      0001DA 14               [12]  875 	dec	a
      0001DB C0 E0            [24]  876 	push	acc
      0001DD C0 E0            [24]  877 	push	acc
      0001DF 74 40            [12]  878 	mov	a,#0x40
      0001E1 C0 E0            [24]  879 	push	acc
      0001E3 88 82            [24]  880 	mov	dpl,r0
      0001E5 89 83            [24]  881 	mov	dph,r1
      0001E7 8A F0            [24]  882 	mov	b,r2
      0001E9 EB               [12]  883 	mov	a,r3
      0001EA 12 12 9E         [24]  884 	lcall	___fsdiv
      0001ED A8 82            [24]  885 	mov	r0,dpl
      0001EF A9 83            [24]  886 	mov	r1,dph
      0001F1 AA F0            [24]  887 	mov	r2,b
      0001F3 FB               [12]  888 	mov	r3,a
      0001F4 E5 81            [12]  889 	mov	a,sp
      0001F6 24 FC            [12]  890 	add	a,#0xfc
      0001F8 F5 81            [12]  891 	mov	sp,a
      0001FA 88 82            [24]  892 	mov	dpl,r0
      0001FC 89 83            [24]  893 	mov	dph,r1
      0001FE 8A F0            [24]  894 	mov	b,r2
      000200 EB               [12]  895 	mov	a,r3
      000201 12 0A B1         [24]  896 	lcall	___fs2uint
      000204 85 82 24         [24]  897 	mov	_upper,dpl
      000207 85 83 25         [24]  898 	mov	(_upper + 1),dph
      00020A D0 04            [24]  899 	pop	ar4
      00020C D0 05            [24]  900 	pop	ar5
      00020E D0 06            [24]  901 	pop	ar6
      000210 D0 07            [24]  902 	pop	ar7
                                    903 ;	main.c:61: lower = ((((float)sample - 421.0) / 6.4) - (float)upper) * 100.0;
      000212 74 CD            [12]  904 	mov	a,#0xcd
      000214 C0 E0            [24]  905 	push	acc
      000216 14               [12]  906 	dec	a
      000217 C0 E0            [24]  907 	push	acc
      000219 C0 E0            [24]  908 	push	acc
      00021B 74 40            [12]  909 	mov	a,#0x40
      00021D C0 E0            [24]  910 	push	acc
      00021F 8C 82            [24]  911 	mov	dpl,r4
      000221 8D 83            [24]  912 	mov	dph,r5
      000223 8E F0            [24]  913 	mov	b,r6
      000225 EF               [12]  914 	mov	a,r7
      000226 12 12 9E         [24]  915 	lcall	___fsdiv
      000229 AC 82            [24]  916 	mov	r4,dpl
      00022B AD 83            [24]  917 	mov	r5,dph
      00022D AE F0            [24]  918 	mov	r6,b
      00022F FF               [12]  919 	mov	r7,a
      000230 E5 81            [12]  920 	mov	a,sp
      000232 24 FC            [12]  921 	add	a,#0xfc
      000234 F5 81            [12]  922 	mov	sp,a
      000236 85 24 82         [24]  923 	mov	dpl,_upper
      000239 85 25 83         [24]  924 	mov	dph,(_upper + 1)
      00023C C0 07            [24]  925 	push	ar7
      00023E C0 06            [24]  926 	push	ar6
      000240 C0 05            [24]  927 	push	ar5
      000242 C0 04            [24]  928 	push	ar4
      000244 12 0A A5         [24]  929 	lcall	___uint2fs
      000247 A8 82            [24]  930 	mov	r0,dpl
      000249 A9 83            [24]  931 	mov	r1,dph
      00024B AA F0            [24]  932 	mov	r2,b
      00024D FB               [12]  933 	mov	r3,a
      00024E D0 04            [24]  934 	pop	ar4
      000250 D0 05            [24]  935 	pop	ar5
      000252 D0 06            [24]  936 	pop	ar6
      000254 D0 07            [24]  937 	pop	ar7
      000256 C0 00            [24]  938 	push	ar0
      000258 C0 01            [24]  939 	push	ar1
      00025A C0 02            [24]  940 	push	ar2
      00025C C0 03            [24]  941 	push	ar3
      00025E 8C 82            [24]  942 	mov	dpl,r4
      000260 8D 83            [24]  943 	mov	dph,r5
      000262 8E F0            [24]  944 	mov	b,r6
      000264 EF               [12]  945 	mov	a,r7
      000265 12 07 47         [24]  946 	lcall	___fssub
      000268 AC 82            [24]  947 	mov	r4,dpl
      00026A AD 83            [24]  948 	mov	r5,dph
      00026C AE F0            [24]  949 	mov	r6,b
      00026E FF               [12]  950 	mov	r7,a
      00026F E5 81            [12]  951 	mov	a,sp
      000271 24 FC            [12]  952 	add	a,#0xfc
      000273 F5 81            [12]  953 	mov	sp,a
      000275 C0 04            [24]  954 	push	ar4
      000277 C0 05            [24]  955 	push	ar5
      000279 C0 06            [24]  956 	push	ar6
      00027B C0 07            [24]  957 	push	ar7
      00027D 90 00 00         [24]  958 	mov	dptr,#0x0000
      000280 75 F0 C8         [24]  959 	mov	b,#0xc8
      000283 74 42            [12]  960 	mov	a,#0x42
      000285 12 07 E0         [24]  961 	lcall	___fsmul
      000288 AC 82            [24]  962 	mov	r4,dpl
      00028A AD 83            [24]  963 	mov	r5,dph
      00028C AE F0            [24]  964 	mov	r6,b
      00028E FF               [12]  965 	mov	r7,a
      00028F E5 81            [12]  966 	mov	a,sp
      000291 24 FC            [12]  967 	add	a,#0xfc
      000293 F5 81            [12]  968 	mov	sp,a
      000295 8C 82            [24]  969 	mov	dpl,r4
      000297 8D 83            [24]  970 	mov	dph,r5
      000299 8E F0            [24]  971 	mov	b,r6
      00029B EF               [12]  972 	mov	a,r7
      00029C 12 0A B1         [24]  973 	lcall	___fs2uint
      00029F 85 82 26         [24]  974 	mov	_lower,dpl
      0002A2 85 83 27         [24]  975 	mov	(_lower + 1),dph
      0002A5 02 03 CB         [24]  976 	ljmp	00105$
      0002A8                        977 00104$:
                                    978 ;	main.c:63: upper = (unsigned int)((float)sample - 210.0) / 11.8;
      0002A8 85 22 82         [24]  979 	mov	dpl,_sample
      0002AB 85 23 83         [24]  980 	mov	dph,(_sample + 1)
      0002AE 12 0A A5         [24]  981 	lcall	___uint2fs
      0002B1 AC 82            [24]  982 	mov	r4,dpl
      0002B3 AD 83            [24]  983 	mov	r5,dph
      0002B5 AE F0            [24]  984 	mov	r6,b
      0002B7 FF               [12]  985 	mov	r7,a
      0002B8 E4               [12]  986 	clr	a
      0002B9 C0 E0            [24]  987 	push	acc
      0002BB C0 E0            [24]  988 	push	acc
      0002BD 74 52            [12]  989 	mov	a,#0x52
      0002BF C0 E0            [24]  990 	push	acc
      0002C1 74 43            [12]  991 	mov	a,#0x43
      0002C3 C0 E0            [24]  992 	push	acc
      0002C5 8C 82            [24]  993 	mov	dpl,r4
      0002C7 8D 83            [24]  994 	mov	dph,r5
      0002C9 8E F0            [24]  995 	mov	b,r6
      0002CB EF               [12]  996 	mov	a,r7
      0002CC 12 07 47         [24]  997 	lcall	___fssub
      0002CF AC 82            [24]  998 	mov	r4,dpl
      0002D1 AD 83            [24]  999 	mov	r5,dph
      0002D3 AE F0            [24] 1000 	mov	r6,b
      0002D5 FF               [12] 1001 	mov	r7,a
      0002D6 E5 81            [12] 1002 	mov	a,sp
      0002D8 24 FC            [12] 1003 	add	a,#0xfc
      0002DA F5 81            [12] 1004 	mov	sp,a
      0002DC 8C 82            [24] 1005 	mov	dpl,r4
      0002DE 8D 83            [24] 1006 	mov	dph,r5
      0002E0 8E F0            [24] 1007 	mov	b,r6
      0002E2 EF               [12] 1008 	mov	a,r7
      0002E3 C0 07            [24] 1009 	push	ar7
      0002E5 C0 06            [24] 1010 	push	ar6
      0002E7 C0 05            [24] 1011 	push	ar5
      0002E9 C0 04            [24] 1012 	push	ar4
      0002EB 12 0A B1         [24] 1013 	lcall	___fs2uint
      0002EE 12 0A A5         [24] 1014 	lcall	___uint2fs
      0002F1 A8 82            [24] 1015 	mov	r0,dpl
      0002F3 A9 83            [24] 1016 	mov	r1,dph
      0002F5 AA F0            [24] 1017 	mov	r2,b
      0002F7 FB               [12] 1018 	mov	r3,a
      0002F8 74 CD            [12] 1019 	mov	a,#0xcd
      0002FA C0 E0            [24] 1020 	push	acc
      0002FC 14               [12] 1021 	dec	a
      0002FD C0 E0            [24] 1022 	push	acc
      0002FF 74 3C            [12] 1023 	mov	a,#0x3c
      000301 C0 E0            [24] 1024 	push	acc
      000303 74 41            [12] 1025 	mov	a,#0x41
      000305 C0 E0            [24] 1026 	push	acc
      000307 88 82            [24] 1027 	mov	dpl,r0
      000309 89 83            [24] 1028 	mov	dph,r1
      00030B 8A F0            [24] 1029 	mov	b,r2
      00030D EB               [12] 1030 	mov	a,r3
      00030E 12 12 9E         [24] 1031 	lcall	___fsdiv
      000311 A8 82            [24] 1032 	mov	r0,dpl
      000313 A9 83            [24] 1033 	mov	r1,dph
      000315 AA F0            [24] 1034 	mov	r2,b
      000317 FB               [12] 1035 	mov	r3,a
      000318 E5 81            [12] 1036 	mov	a,sp
      00031A 24 FC            [12] 1037 	add	a,#0xfc
      00031C F5 81            [12] 1038 	mov	sp,a
      00031E 88 82            [24] 1039 	mov	dpl,r0
      000320 89 83            [24] 1040 	mov	dph,r1
      000322 8A F0            [24] 1041 	mov	b,r2
      000324 EB               [12] 1042 	mov	a,r3
      000325 12 0A B1         [24] 1043 	lcall	___fs2uint
      000328 85 82 24         [24] 1044 	mov	_upper,dpl
      00032B 85 83 25         [24] 1045 	mov	(_upper + 1),dph
      00032E D0 04            [24] 1046 	pop	ar4
      000330 D0 05            [24] 1047 	pop	ar5
      000332 D0 06            [24] 1048 	pop	ar6
      000334 D0 07            [24] 1049 	pop	ar7
                                   1050 ;	main.c:64: lower = ((((float)sample - 210.0) / 11.8) - (float)upper) * 100.0;
      000336 74 CD            [12] 1051 	mov	a,#0xcd
      000338 C0 E0            [24] 1052 	push	acc
      00033A 14               [12] 1053 	dec	a
      00033B C0 E0            [24] 1054 	push	acc
      00033D 74 3C            [12] 1055 	mov	a,#0x3c
      00033F C0 E0            [24] 1056 	push	acc
      000341 74 41            [12] 1057 	mov	a,#0x41
      000343 C0 E0            [24] 1058 	push	acc
      000345 8C 82            [24] 1059 	mov	dpl,r4
      000347 8D 83            [24] 1060 	mov	dph,r5
      000349 8E F0            [24] 1061 	mov	b,r6
      00034B EF               [12] 1062 	mov	a,r7
      00034C 12 12 9E         [24] 1063 	lcall	___fsdiv
      00034F AC 82            [24] 1064 	mov	r4,dpl
      000351 AD 83            [24] 1065 	mov	r5,dph
      000353 AE F0            [24] 1066 	mov	r6,b
      000355 FF               [12] 1067 	mov	r7,a
      000356 E5 81            [12] 1068 	mov	a,sp
      000358 24 FC            [12] 1069 	add	a,#0xfc
      00035A F5 81            [12] 1070 	mov	sp,a
      00035C 85 24 82         [24] 1071 	mov	dpl,_upper
      00035F 85 25 83         [24] 1072 	mov	dph,(_upper + 1)
      000362 C0 07            [24] 1073 	push	ar7
      000364 C0 06            [24] 1074 	push	ar6
      000366 C0 05            [24] 1075 	push	ar5
      000368 C0 04            [24] 1076 	push	ar4
      00036A 12 0A A5         [24] 1077 	lcall	___uint2fs
      00036D A8 82            [24] 1078 	mov	r0,dpl
      00036F A9 83            [24] 1079 	mov	r1,dph
      000371 AA F0            [24] 1080 	mov	r2,b
      000373 FB               [12] 1081 	mov	r3,a
      000374 D0 04            [24] 1082 	pop	ar4
      000376 D0 05            [24] 1083 	pop	ar5
      000378 D0 06            [24] 1084 	pop	ar6
      00037A D0 07            [24] 1085 	pop	ar7
      00037C C0 00            [24] 1086 	push	ar0
      00037E C0 01            [24] 1087 	push	ar1
      000380 C0 02            [24] 1088 	push	ar2
      000382 C0 03            [24] 1089 	push	ar3
      000384 8C 82            [24] 1090 	mov	dpl,r4
      000386 8D 83            [24] 1091 	mov	dph,r5
      000388 8E F0            [24] 1092 	mov	b,r6
      00038A EF               [12] 1093 	mov	a,r7
      00038B 12 07 47         [24] 1094 	lcall	___fssub
      00038E AC 82            [24] 1095 	mov	r4,dpl
      000390 AD 83            [24] 1096 	mov	r5,dph
      000392 AE F0            [24] 1097 	mov	r6,b
      000394 FF               [12] 1098 	mov	r7,a
      000395 E5 81            [12] 1099 	mov	a,sp
      000397 24 FC            [12] 1100 	add	a,#0xfc
      000399 F5 81            [12] 1101 	mov	sp,a
      00039B C0 04            [24] 1102 	push	ar4
      00039D C0 05            [24] 1103 	push	ar5
      00039F C0 06            [24] 1104 	push	ar6
      0003A1 C0 07            [24] 1105 	push	ar7
      0003A3 90 00 00         [24] 1106 	mov	dptr,#0x0000
      0003A6 75 F0 C8         [24] 1107 	mov	b,#0xc8
      0003A9 74 42            [12] 1108 	mov	a,#0x42
      0003AB 12 07 E0         [24] 1109 	lcall	___fsmul
      0003AE AC 82            [24] 1110 	mov	r4,dpl
      0003B0 AD 83            [24] 1111 	mov	r5,dph
      0003B2 AE F0            [24] 1112 	mov	r6,b
      0003B4 FF               [12] 1113 	mov	r7,a
      0003B5 E5 81            [12] 1114 	mov	a,sp
      0003B7 24 FC            [12] 1115 	add	a,#0xfc
      0003B9 F5 81            [12] 1116 	mov	sp,a
      0003BB 8C 82            [24] 1117 	mov	dpl,r4
      0003BD 8D 83            [24] 1118 	mov	dph,r5
      0003BF 8E F0            [24] 1119 	mov	b,r6
      0003C1 EF               [12] 1120 	mov	a,r7
      0003C2 12 0A B1         [24] 1121 	lcall	___fs2uint
      0003C5 85 82 26         [24] 1122 	mov	_lower,dpl
      0003C8 85 83 27         [24] 1123 	mov	(_lower + 1),dph
      0003CB                       1124 00105$:
                                   1125 ;	main.c:77: sprintf(str, "T: %d.%d", upper, lower);;
      0003CB C0 26            [24] 1126 	push	_lower
      0003CD C0 27            [24] 1127 	push	(_lower + 1)
      0003CF C0 24            [24] 1128 	push	_upper
      0003D1 C0 25            [24] 1129 	push	(_upper + 1)
      0003D3 74 10            [12] 1130 	mov	a,#___str_0
      0003D5 C0 E0            [24] 1131 	push	acc
      0003D7 74 14            [12] 1132 	mov	a,#(___str_0 >> 8)
      0003D9 C0 E0            [24] 1133 	push	acc
      0003DB 74 80            [12] 1134 	mov	a,#0x80
      0003DD C0 E0            [24] 1135 	push	acc
      0003DF 74 08            [12] 1136 	mov	a,#_str
      0003E1 C0 E0            [24] 1137 	push	acc
      0003E3 74 00            [12] 1138 	mov	a,#(_str >> 8)
      0003E5 C0 E0            [24] 1139 	push	acc
      0003E7 74 40            [12] 1140 	mov	a,#0x40
      0003E9 C0 E0            [24] 1141 	push	acc
      0003EB 12 0A 57         [24] 1142 	lcall	_sprintf
      0003EE E5 81            [12] 1143 	mov	a,sp
      0003F0 24 F6            [12] 1144 	add	a,#0xf6
      0003F2 F5 81            [12] 1145 	mov	sp,a
                                   1146 ;	main.c:78: writeLineLCD(str);;
      0003F4 90 00 08         [24] 1147 	mov	dptr,#_str
      0003F7 75 F0 40         [24] 1148 	mov	b,#0x40
      0003FA 12 04 F5         [24] 1149 	lcall	_writeLineLCD
                                   1150 ;	main.c:79: delay(100000);
      0003FD 90 86 A0         [24] 1151 	mov	dptr,#0x86a0
      000400 12 04 09         [24] 1152 	lcall	_delay
                                   1153 ;	main.c:80: clearLCD();
      000403 12 05 2D         [24] 1154 	lcall	_clearLCD
                                   1155 ;	main.c:83: }
      000406 02 01 2B         [24] 1156 	ljmp	00107$
                                   1157 	.area CSEG    (CODE)
                                   1158 	.area CONST   (CODE)
      001410                       1159 ___str_0:
      001410 54 3A 20 25 64 2E 25  1160 	.ascii "T: %d.%d"
             64
      001418 00                    1161 	.db 0x00
                                   1162 	.area XINIT   (CODE)
                                   1163 	.area CABS    (ABS,CODE)
