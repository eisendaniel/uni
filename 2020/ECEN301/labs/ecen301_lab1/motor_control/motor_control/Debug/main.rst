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
                                     12 	.globl _PADCL
                                     13 	.globl _B7
                                     14 	.globl _B6
                                     15 	.globl _B5
                                     16 	.globl _B4
                                     17 	.globl _B3
                                     18 	.globl _B2
                                     19 	.globl _B1
                                     20 	.globl _B0
                                     21 	.globl _ESPI
                                     22 	.globl _EADC
                                     23 	.globl _A7
                                     24 	.globl _A6
                                     25 	.globl _A5
                                     26 	.globl _A4
                                     27 	.globl _A3
                                     28 	.globl _A2
                                     29 	.globl _A1
                                     30 	.globl _A0
                                     31 	.globl _ACC7
                                     32 	.globl _ACC6
                                     33 	.globl _ACC5
                                     34 	.globl _ACC4
                                     35 	.globl _ACC3
                                     36 	.globl _ACC2
                                     37 	.globl _ACC1
                                     38 	.globl _ACC0
                                     39 	.globl _CF
                                     40 	.globl _CR
                                     41 	.globl _CCF4
                                     42 	.globl _CCF3
                                     43 	.globl _CCF2
                                     44 	.globl _CCF1
                                     45 	.globl _CCF0
                                     46 	.globl _CY
                                     47 	.globl _AC
                                     48 	.globl _F0
                                     49 	.globl _RS1
                                     50 	.globl _RS0
                                     51 	.globl _OV
                                     52 	.globl _F1
                                     53 	.globl _P
                                     54 	.globl _TF2
                                     55 	.globl _EXF2
                                     56 	.globl _RCLK
                                     57 	.globl _TCLK
                                     58 	.globl _EXEN2
                                     59 	.globl _TR2
                                     60 	.globl _CT2
                                     61 	.globl _CPRL2
                                     62 	.globl _MOSI
                                     63 	.globl _SCK
                                     64 	.globl _MISO
                                     65 	.globl _P4_4
                                     66 	.globl _P4_3
                                     67 	.globl _P4_2
                                     68 	.globl _P4_1
                                     69 	.globl _P4_0
                                     70 	.globl _PPC
                                     71 	.globl _PT2
                                     72 	.globl _PS
                                     73 	.globl _PT1
                                     74 	.globl _PX1
                                     75 	.globl _PT0
                                     76 	.globl _PX0
                                     77 	.globl _RD
                                     78 	.globl _WR
                                     79 	.globl _T1
                                     80 	.globl _T0
                                     81 	.globl _INT1
                                     82 	.globl _INT0
                                     83 	.globl _TXD
                                     84 	.globl _RXD
                                     85 	.globl _P3_7
                                     86 	.globl _P3_6
                                     87 	.globl _P3_5
                                     88 	.globl _P3_4
                                     89 	.globl _P3_3
                                     90 	.globl _P3_2
                                     91 	.globl _P3_1
                                     92 	.globl _P3_0
                                     93 	.globl _EA
                                     94 	.globl _EC
                                     95 	.globl _ET2
                                     96 	.globl _ES
                                     97 	.globl _ET1
                                     98 	.globl _EX1
                                     99 	.globl _ET0
                                    100 	.globl _EX0
                                    101 	.globl _A15
                                    102 	.globl _A14
                                    103 	.globl _A13
                                    104 	.globl _A12
                                    105 	.globl _A11
                                    106 	.globl _A10
                                    107 	.globl _A9
                                    108 	.globl _A8
                                    109 	.globl _P2_7
                                    110 	.globl _P2_6
                                    111 	.globl _P2_5
                                    112 	.globl _P2_4
                                    113 	.globl _P2_3
                                    114 	.globl _P2_2
                                    115 	.globl _P2_1
                                    116 	.globl _P2_0
                                    117 	.globl _FE
                                    118 	.globl _SM0
                                    119 	.globl _SM1
                                    120 	.globl _SM2
                                    121 	.globl _REN
                                    122 	.globl _TB8
                                    123 	.globl _RB8
                                    124 	.globl _TI
                                    125 	.globl _RI
                                    126 	.globl _CEX4
                                    127 	.globl _CEX3
                                    128 	.globl _CEX2
                                    129 	.globl _CEX1
                                    130 	.globl _CEX0
                                    131 	.globl _ECI
                                    132 	.globl _T2EX
                                    133 	.globl _T2
                                    134 	.globl _P1_7
                                    135 	.globl _P1_6
                                    136 	.globl _P1_5
                                    137 	.globl _P1_4
                                    138 	.globl _P1_3
                                    139 	.globl _P1_2
                                    140 	.globl _P1_1
                                    141 	.globl _P1_0
                                    142 	.globl _TF1
                                    143 	.globl _TR1
                                    144 	.globl _TF0
                                    145 	.globl _TR0
                                    146 	.globl _IE1
                                    147 	.globl _IT1
                                    148 	.globl _IE0
                                    149 	.globl _IT0
                                    150 	.globl _AD7
                                    151 	.globl _AD6
                                    152 	.globl _AD5
                                    153 	.globl _AD4
                                    154 	.globl _AD3
                                    155 	.globl _AD2
                                    156 	.globl _AD1
                                    157 	.globl _AD0
                                    158 	.globl _P0_7
                                    159 	.globl _P0_6
                                    160 	.globl _P0_5
                                    161 	.globl _P0_4
                                    162 	.globl _P0_3
                                    163 	.globl _P0_2
                                    164 	.globl _P0_1
                                    165 	.globl _P0_0
                                    166 	.globl _CCAP4H
                                    167 	.globl _CCAP3H
                                    168 	.globl _CCAP2H
                                    169 	.globl _CCAP1H
                                    170 	.globl _CCAP0H
                                    171 	.globl _CH
                                    172 	.globl _IPL1
                                    173 	.globl _IPH1
                                    174 	.globl _ADCF
                                    175 	.globl _ADDH
                                    176 	.globl _ADDL
                                    177 	.globl _ADCON
                                    178 	.globl _ADCLK
                                    179 	.globl _B
                                    180 	.globl _CCAP4L
                                    181 	.globl _CCAP3L
                                    182 	.globl _CCAP2L
                                    183 	.globl _CCAP1L
                                    184 	.globl _CCAP0L
                                    185 	.globl _CL
                                    186 	.globl _IEN1
                                    187 	.globl _A
                                    188 	.globl _ACC
                                    189 	.globl _CCAPM4
                                    190 	.globl _CCAPM3
                                    191 	.globl _CCAPM2
                                    192 	.globl _CCAPM1
                                    193 	.globl _CCAPM0
                                    194 	.globl _CMOD
                                    195 	.globl _CCON
                                    196 	.globl _SPDAT
                                    197 	.globl _SPSCR
                                    198 	.globl _SPCON
                                    199 	.globl _EECON
                                    200 	.globl _FCON
                                    201 	.globl _PSW
                                    202 	.globl _CANEN2
                                    203 	.globl _CANEN1
                                    204 	.globl _TH2
                                    205 	.globl _TL2
                                    206 	.globl _RCAP2H
                                    207 	.globl _RCAP2L
                                    208 	.globl _T2MOD
                                    209 	.globl _T2CON
                                    210 	.globl _P4
                                    211 	.globl _SADEN
                                    212 	.globl _IPL0
                                    213 	.globl _IPH0
                                    214 	.globl _P3
                                    215 	.globl _SADDR
                                    216 	.globl _IEN0
                                    217 	.globl _WDTPRG
                                    218 	.globl _WDTRST
                                    219 	.globl _AUXR1
                                    220 	.globl _P2
                                    221 	.globl _CKCON1
                                    222 	.globl _SBUF
                                    223 	.globl _SCON
                                    224 	.globl _P1
                                    225 	.globl _CKCON0
                                    226 	.globl _AUXR
                                    227 	.globl _TH1
                                    228 	.globl _TH0
                                    229 	.globl _TL1
                                    230 	.globl _TL0
                                    231 	.globl _TMOD
                                    232 	.globl _TCON
                                    233 	.globl _PCON
                                    234 	.globl _DPH
                                    235 	.globl _DPL
                                    236 	.globl _SP
                                    237 	.globl _P0
                                    238 ;--------------------------------------------------------
                                    239 ; special function registers
                                    240 ;--------------------------------------------------------
                                    241 	.area RSEG    (ABS,DATA)
      000000                        242 	.org 0x0000
                           000080   243 _P0	=	0x0080
                           000081   244 _SP	=	0x0081
                           000082   245 _DPL	=	0x0082
                           000083   246 _DPH	=	0x0083
                           000087   247 _PCON	=	0x0087
                           000088   248 _TCON	=	0x0088
                           000089   249 _TMOD	=	0x0089
                           00008A   250 _TL0	=	0x008a
                           00008B   251 _TL1	=	0x008b
                           00008C   252 _TH0	=	0x008c
                           00008D   253 _TH1	=	0x008d
                           00008E   254 _AUXR	=	0x008e
                           00008F   255 _CKCON0	=	0x008f
                           000090   256 _P1	=	0x0090
                           000098   257 _SCON	=	0x0098
                           000099   258 _SBUF	=	0x0099
                           00009F   259 _CKCON1	=	0x009f
                           0000A0   260 _P2	=	0x00a0
                           0000A2   261 _AUXR1	=	0x00a2
                           0000A6   262 _WDTRST	=	0x00a6
                           0000A7   263 _WDTPRG	=	0x00a7
                           0000A8   264 _IEN0	=	0x00a8
                           0000A9   265 _SADDR	=	0x00a9
                           0000B0   266 _P3	=	0x00b0
                           0000B7   267 _IPH0	=	0x00b7
                           0000B8   268 _IPL0	=	0x00b8
                           0000B9   269 _SADEN	=	0x00b9
                           0000C0   270 _P4	=	0x00c0
                           0000C8   271 _T2CON	=	0x00c8
                           0000C9   272 _T2MOD	=	0x00c9
                           0000CA   273 _RCAP2L	=	0x00ca
                           0000CB   274 _RCAP2H	=	0x00cb
                           0000CC   275 _TL2	=	0x00cc
                           0000CD   276 _TH2	=	0x00cd
                           0000CE   277 _CANEN1	=	0x00ce
                           0000CF   278 _CANEN2	=	0x00cf
                           0000D0   279 _PSW	=	0x00d0
                           0000D1   280 _FCON	=	0x00d1
                           0000D2   281 _EECON	=	0x00d2
                           0000D4   282 _SPCON	=	0x00d4
                           0000D5   283 _SPSCR	=	0x00d5
                           0000D6   284 _SPDAT	=	0x00d6
                           0000D8   285 _CCON	=	0x00d8
                           0000D9   286 _CMOD	=	0x00d9
                           0000DA   287 _CCAPM0	=	0x00da
                           0000DB   288 _CCAPM1	=	0x00db
                           0000DC   289 _CCAPM2	=	0x00dc
                           0000DD   290 _CCAPM3	=	0x00dd
                           0000DE   291 _CCAPM4	=	0x00de
                           0000E0   292 _ACC	=	0x00e0
                           0000E0   293 _A	=	0x00e0
                           0000E8   294 _IEN1	=	0x00e8
                           0000E9   295 _CL	=	0x00e9
                           0000EA   296 _CCAP0L	=	0x00ea
                           0000EB   297 _CCAP1L	=	0x00eb
                           0000EC   298 _CCAP2L	=	0x00ec
                           0000ED   299 _CCAP3L	=	0x00ed
                           0000EE   300 _CCAP4L	=	0x00ee
                           0000F0   301 _B	=	0x00f0
                           0000F2   302 _ADCLK	=	0x00f2
                           0000F3   303 _ADCON	=	0x00f3
                           0000F4   304 _ADDL	=	0x00f4
                           0000F5   305 _ADDH	=	0x00f5
                           0000F6   306 _ADCF	=	0x00f6
                           0000F7   307 _IPH1	=	0x00f7
                           0000F8   308 _IPL1	=	0x00f8
                           0000F9   309 _CH	=	0x00f9
                           0000FA   310 _CCAP0H	=	0x00fa
                           0000FB   311 _CCAP1H	=	0x00fb
                           0000FC   312 _CCAP2H	=	0x00fc
                           0000FD   313 _CCAP3H	=	0x00fd
                           0000FE   314 _CCAP4H	=	0x00fe
                                    315 ;--------------------------------------------------------
                                    316 ; special function bits
                                    317 ;--------------------------------------------------------
                                    318 	.area RSEG    (ABS,DATA)
      000000                        319 	.org 0x0000
                           000080   320 _P0_0	=	0x0080
                           000081   321 _P0_1	=	0x0081
                           000082   322 _P0_2	=	0x0082
                           000083   323 _P0_3	=	0x0083
                           000084   324 _P0_4	=	0x0084
                           000085   325 _P0_5	=	0x0085
                           000086   326 _P0_6	=	0x0086
                           000087   327 _P0_7	=	0x0087
                           000080   328 _AD0	=	0x0080
                           000081   329 _AD1	=	0x0081
                           000082   330 _AD2	=	0x0082
                           000083   331 _AD3	=	0x0083
                           000084   332 _AD4	=	0x0084
                           000085   333 _AD5	=	0x0085
                           000086   334 _AD6	=	0x0086
                           000087   335 _AD7	=	0x0087
                           000088   336 _IT0	=	0x0088
                           000089   337 _IE0	=	0x0089
                           00008A   338 _IT1	=	0x008a
                           00008B   339 _IE1	=	0x008b
                           00008C   340 _TR0	=	0x008c
                           00008D   341 _TF0	=	0x008d
                           00008E   342 _TR1	=	0x008e
                           00008F   343 _TF1	=	0x008f
                           000090   344 _P1_0	=	0x0090
                           000091   345 _P1_1	=	0x0091
                           000092   346 _P1_2	=	0x0092
                           000093   347 _P1_3	=	0x0093
                           000094   348 _P1_4	=	0x0094
                           000095   349 _P1_5	=	0x0095
                           000096   350 _P1_6	=	0x0096
                           000097   351 _P1_7	=	0x0097
                           000090   352 _T2	=	0x0090
                           000091   353 _T2EX	=	0x0091
                           000092   354 _ECI	=	0x0092
                           000093   355 _CEX0	=	0x0093
                           000094   356 _CEX1	=	0x0094
                           000095   357 _CEX2	=	0x0095
                           000096   358 _CEX3	=	0x0096
                           000097   359 _CEX4	=	0x0097
                           000098   360 _RI	=	0x0098
                           000099   361 _TI	=	0x0099
                           00009A   362 _RB8	=	0x009a
                           00009B   363 _TB8	=	0x009b
                           00009C   364 _REN	=	0x009c
                           00009D   365 _SM2	=	0x009d
                           00009E   366 _SM1	=	0x009e
                           00009F   367 _SM0	=	0x009f
                           00009F   368 _FE	=	0x009f
                           0000A0   369 _P2_0	=	0x00a0
                           0000A1   370 _P2_1	=	0x00a1
                           0000A2   371 _P2_2	=	0x00a2
                           0000A3   372 _P2_3	=	0x00a3
                           0000A4   373 _P2_4	=	0x00a4
                           0000A5   374 _P2_5	=	0x00a5
                           0000A6   375 _P2_6	=	0x00a6
                           0000A7   376 _P2_7	=	0x00a7
                           0000A0   377 _A8	=	0x00a0
                           0000A1   378 _A9	=	0x00a1
                           0000A2   379 _A10	=	0x00a2
                           0000A3   380 _A11	=	0x00a3
                           0000A4   381 _A12	=	0x00a4
                           0000A5   382 _A13	=	0x00a5
                           0000A6   383 _A14	=	0x00a6
                           0000A7   384 _A15	=	0x00a7
                           0000A8   385 _EX0	=	0x00a8
                           0000A9   386 _ET0	=	0x00a9
                           0000AA   387 _EX1	=	0x00aa
                           0000AB   388 _ET1	=	0x00ab
                           0000AC   389 _ES	=	0x00ac
                           0000AD   390 _ET2	=	0x00ad
                           0000AE   391 _EC	=	0x00ae
                           0000AF   392 _EA	=	0x00af
                           0000B0   393 _P3_0	=	0x00b0
                           0000B1   394 _P3_1	=	0x00b1
                           0000B2   395 _P3_2	=	0x00b2
                           0000B3   396 _P3_3	=	0x00b3
                           0000B4   397 _P3_4	=	0x00b4
                           0000B5   398 _P3_5	=	0x00b5
                           0000B6   399 _P3_6	=	0x00b6
                           0000B7   400 _P3_7	=	0x00b7
                           0000B0   401 _RXD	=	0x00b0
                           0000B1   402 _TXD	=	0x00b1
                           0000B2   403 _INT0	=	0x00b2
                           0000B3   404 _INT1	=	0x00b3
                           0000B4   405 _T0	=	0x00b4
                           0000B5   406 _T1	=	0x00b5
                           0000B6   407 _WR	=	0x00b6
                           0000B7   408 _RD	=	0x00b7
                           0000B8   409 _PX0	=	0x00b8
                           0000B9   410 _PT0	=	0x00b9
                           0000BA   411 _PX1	=	0x00ba
                           0000BB   412 _PT1	=	0x00bb
                           0000BC   413 _PS	=	0x00bc
                           0000BD   414 _PT2	=	0x00bd
                           0000BE   415 _PPC	=	0x00be
                           0000C0   416 _P4_0	=	0x00c0
                           0000C1   417 _P4_1	=	0x00c1
                           0000C2   418 _P4_2	=	0x00c2
                           0000C3   419 _P4_3	=	0x00c3
                           0000C4   420 _P4_4	=	0x00c4
                           0000C2   421 _MISO	=	0x00c2
                           0000C3   422 _SCK	=	0x00c3
                           0000C4   423 _MOSI	=	0x00c4
                           0000C8   424 _CPRL2	=	0x00c8
                           0000C9   425 _CT2	=	0x00c9
                           0000CA   426 _TR2	=	0x00ca
                           0000CB   427 _EXEN2	=	0x00cb
                           0000CC   428 _TCLK	=	0x00cc
                           0000CD   429 _RCLK	=	0x00cd
                           0000CE   430 _EXF2	=	0x00ce
                           0000CF   431 _TF2	=	0x00cf
                           0000D0   432 _P	=	0x00d0
                           0000D1   433 _F1	=	0x00d1
                           0000D2   434 _OV	=	0x00d2
                           0000D3   435 _RS0	=	0x00d3
                           0000D4   436 _RS1	=	0x00d4
                           0000D5   437 _F0	=	0x00d5
                           0000D6   438 _AC	=	0x00d6
                           0000D7   439 _CY	=	0x00d7
                           0000D8   440 _CCF0	=	0x00d8
                           0000D9   441 _CCF1	=	0x00d9
                           0000DA   442 _CCF2	=	0x00da
                           0000DB   443 _CCF3	=	0x00db
                           0000DC   444 _CCF4	=	0x00dc
                           0000DE   445 _CR	=	0x00de
                           0000DF   446 _CF	=	0x00df
                           0000E0   447 _ACC0	=	0x00e0
                           0000E1   448 _ACC1	=	0x00e1
                           0000E2   449 _ACC2	=	0x00e2
                           0000E3   450 _ACC3	=	0x00e3
                           0000E4   451 _ACC4	=	0x00e4
                           0000E5   452 _ACC5	=	0x00e5
                           0000E6   453 _ACC6	=	0x00e6
                           0000E7   454 _ACC7	=	0x00e7
                           0000E0   455 _A0	=	0x00e0
                           0000E1   456 _A1	=	0x00e1
                           0000E2   457 _A2	=	0x00e2
                           0000E3   458 _A3	=	0x00e3
                           0000E4   459 _A4	=	0x00e4
                           0000E5   460 _A5	=	0x00e5
                           0000E6   461 _A6	=	0x00e6
                           0000E7   462 _A7	=	0x00e7
                           0000E8   463 _EADC	=	0x00e8
                           0000E9   464 _ESPI	=	0x00e9
                           0000F0   465 _B0	=	0x00f0
                           0000F1   466 _B1	=	0x00f1
                           0000F2   467 _B2	=	0x00f2
                           0000F3   468 _B3	=	0x00f3
                           0000F4   469 _B4	=	0x00f4
                           0000F5   470 _B5	=	0x00f5
                           0000F6   471 _B6	=	0x00f6
                           0000F7   472 _B7	=	0x00f7
                           0000F9   473 _PADCL	=	0x00f9
                                    474 ;--------------------------------------------------------
                                    475 ; overlayable register banks
                                    476 ;--------------------------------------------------------
                                    477 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        478 	.ds 8
                                    479 ;--------------------------------------------------------
                                    480 ; internal ram data
                                    481 ;--------------------------------------------------------
                                    482 	.area DSEG    (DATA)
                                    483 ;--------------------------------------------------------
                                    484 ; overlayable items in internal ram 
                                    485 ;--------------------------------------------------------
                                    486 	.area	OSEG    (OVR,DATA)
                                    487 ;--------------------------------------------------------
                                    488 ; Stack segment in internal ram 
                                    489 ;--------------------------------------------------------
                                    490 	.area	SSEG
      000008                        491 __start__stack:
      000008                        492 	.ds	1
                                    493 
                                    494 ;--------------------------------------------------------
                                    495 ; indirectly addressable internal ram data
                                    496 ;--------------------------------------------------------
                                    497 	.area ISEG    (DATA)
                                    498 ;--------------------------------------------------------
                                    499 ; absolute internal ram data
                                    500 ;--------------------------------------------------------
                                    501 	.area IABS    (ABS,DATA)
                                    502 	.area IABS    (ABS,DATA)
                                    503 ;--------------------------------------------------------
                                    504 ; bit data
                                    505 ;--------------------------------------------------------
                                    506 	.area BSEG    (BIT)
                                    507 ;--------------------------------------------------------
                                    508 ; paged external ram data
                                    509 ;--------------------------------------------------------
                                    510 	.area PSEG    (PAG,XDATA)
                                    511 ;--------------------------------------------------------
                                    512 ; external ram data
                                    513 ;--------------------------------------------------------
                                    514 	.area XSEG    (XDATA)
                                    515 ;--------------------------------------------------------
                                    516 ; absolute external ram data
                                    517 ;--------------------------------------------------------
                                    518 	.area XABS    (ABS,XDATA)
                                    519 ;--------------------------------------------------------
                                    520 ; external initialized ram data
                                    521 ;--------------------------------------------------------
                                    522 	.area XISEG   (XDATA)
                                    523 	.area HOME    (CODE)
                                    524 	.area GSINIT0 (CODE)
                                    525 	.area GSINIT1 (CODE)
                                    526 	.area GSINIT2 (CODE)
                                    527 	.area GSINIT3 (CODE)
                                    528 	.area GSINIT4 (CODE)
                                    529 	.area GSINIT5 (CODE)
                                    530 	.area GSINIT  (CODE)
                                    531 	.area GSFINAL (CODE)
                                    532 	.area CSEG    (CODE)
                                    533 ;--------------------------------------------------------
                                    534 ; interrupt vector 
                                    535 ;--------------------------------------------------------
                                    536 	.area HOME    (CODE)
      000000                        537 __interrupt_vect:
      000000 02 00 06         [24]  538 	ljmp	__sdcc_gsinit_startup
                                    539 ;--------------------------------------------------------
                                    540 ; global & static initialisations
                                    541 ;--------------------------------------------------------
                                    542 	.area HOME    (CODE)
                                    543 	.area GSINIT  (CODE)
                                    544 	.area GSFINAL (CODE)
                                    545 	.area GSINIT  (CODE)
                                    546 	.globl __sdcc_gsinit_startup
                                    547 	.globl __sdcc_program_startup
                                    548 	.globl __start__stack
                                    549 	.globl __mcs51_genXINIT
                                    550 	.globl __mcs51_genXRAMCLEAR
                                    551 	.globl __mcs51_genRAMCLEAR
                                    552 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  553 	ljmp	__sdcc_program_startup
                                    554 ;--------------------------------------------------------
                                    555 ; Home
                                    556 ;--------------------------------------------------------
                                    557 	.area HOME    (CODE)
                                    558 	.area HOME    (CODE)
      000003                        559 __sdcc_program_startup:
      000003 02 00 62         [24]  560 	ljmp	_main
                                    561 ;	return from main will return to caller
                                    562 ;--------------------------------------------------------
                                    563 ; code
                                    564 ;--------------------------------------------------------
                                    565 	.area CSEG    (CODE)
                                    566 ;------------------------------------------------------------
                                    567 ;Allocation info for local variables in function 'main'
                                    568 ;------------------------------------------------------------
                                    569 ;con                       Allocated to registers r7 
                                    570 ;vel                       Allocated to registers r6 
                                    571 ;------------------------------------------------------------
                                    572 ;	main.c:9: void main(void)
                                    573 ;	-----------------------------------------
                                    574 ;	 function main
                                    575 ;	-----------------------------------------
      000062                        576 _main:
                           000007   577 	ar7 = 0x07
                           000006   578 	ar6 = 0x06
                           000005   579 	ar5 = 0x05
                           000004   580 	ar4 = 0x04
                           000003   581 	ar3 = 0x03
                           000002   582 	ar2 = 0x02
                           000001   583 	ar1 = 0x01
                           000000   584 	ar0 = 0x00
                                    585 ;	main.c:14: while (1) 
      000062                        586 00105$:
                                    587 ;	main.c:16: char con = P2;
      000062 AF A0            [24]  588 	mov	r7,_P2
                                    589 ;	main.c:17: char vel = con & 0b01111111;
      000064 74 7F            [12]  590 	mov	a,#0x7f
      000066 5F               [12]  591 	anl	a,r7
      000067 FE               [12]  592 	mov	r6,a
                                    593 ;	main.c:19: if (con & 0b10000000)
      000068 EF               [12]  594 	mov	a,r7
      000069 30 E7 09         [24]  595 	jnb	acc.7,00102$
                                    596 ;	main.c:21: P1 = 128+vel;
      00006C 8E 07            [24]  597 	mov	ar7,r6
      00006E 74 80            [12]  598 	mov	a,#0x80
      000070 2F               [12]  599 	add	a,r7
      000071 F5 90            [12]  600 	mov	_P1,a
      000073 80 ED            [24]  601 	sjmp	00105$
      000075                        602 00102$:
                                    603 ;	main.c:23: P1 = 128-vel; 
      000075 74 80            [12]  604 	mov	a,#0x80
      000077 C3               [12]  605 	clr	c
      000078 9E               [12]  606 	subb	a,r6
      000079 F5 90            [12]  607 	mov	_P1,a
                                    608 ;	main.c:26: }
      00007B 80 E5            [24]  609 	sjmp	00105$
                                    610 	.area CSEG    (CODE)
                                    611 	.area CONST   (CODE)
                                    612 	.area XINIT   (CODE)
                                    613 	.area CABS    (ABS,CODE)
