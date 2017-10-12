                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
                                      4 ; This file was generated Fri Oct  6 20:44:51 2017
                                      5 ;--------------------------------------------------------
                                      6 	.module dht
                                      7 	.optsdcc -mmcs51 --model-large
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _delay_ms
                                     13 	.globl _delay_us
                                     14 	.globl _gpio_pin_val_read
                                     15 	.globl _gpio_pin_configure
                                     16 	.globl _FSR_SB_ENDBG
                                     17 	.globl _FSR_SB_STP
                                     18 	.globl _FSR_SB_WEN
                                     19 	.globl _FSR_SB_RDYN
                                     20 	.globl _FSR_SB_INFEN
                                     21 	.globl _FSR_SB_RDISMB
                                     22 	.globl _RFCON_SB_RFCKEN
                                     23 	.globl _RFCON_SB_RFCSN
                                     24 	.globl _RFCON_SB_RFCE
                                     25 	.globl _ADCON_SB_BD
                                     26 	.globl _PSW_SB_P
                                     27 	.globl _PSW_SB_F1
                                     28 	.globl _PSW_SB_OV
                                     29 	.globl _PSW_SB_RS0
                                     30 	.globl _PSW_SB_RS1
                                     31 	.globl _PSW_SB_F0
                                     32 	.globl _PSW_SB_AC
                                     33 	.globl _PSW_SB_CY
                                     34 	.globl _T2CON_SB_T2PS
                                     35 	.globl _T2CON_SB_I3FR
                                     36 	.globl _T2CON_SB_I2FR
                                     37 	.globl _T2CON_SB_T2R1
                                     38 	.globl _T2CON_SB_T2R0
                                     39 	.globl _T2CON_SB_T2CM
                                     40 	.globl _T2CON_SB_T2I1
                                     41 	.globl _T2CON_SB_T2I0
                                     42 	.globl _IRCON_SB_EXF2
                                     43 	.globl _IRCON_SB_TF2
                                     44 	.globl _IRCON_SB_TICK
                                     45 	.globl _IRCON_SB_MISCIRQ
                                     46 	.globl _IRCON_SB_WUOPIRQ
                                     47 	.globl _IRCON_SB_SPI_2WIRE
                                     48 	.globl _IRCON_SB_RFIRQ
                                     49 	.globl _IRCON_SB_RFRDY
                                     50 	.globl _IEN1_SB_T2EXTRLD
                                     51 	.globl _IEN1_SB_TICK
                                     52 	.globl _IEN1_SB_MISCIRQ
                                     53 	.globl _IEN1_SB_WUOPIRQ
                                     54 	.globl _IEN1_SB_SPI_2WIRE
                                     55 	.globl _IEN1_SB_RFIRQ
                                     56 	.globl _IEN1_SB_RFRDY
                                     57 	.globl _P3_SB_D7
                                     58 	.globl _P3_SB_D6
                                     59 	.globl _P3_SB_D5
                                     60 	.globl _P3_SB_D4
                                     61 	.globl _P3_SB_D3
                                     62 	.globl _P3_SB_D2
                                     63 	.globl _P3_SB_D1
                                     64 	.globl _P3_SB_D0
                                     65 	.globl _IEN0_SB_GLOBAL
                                     66 	.globl _IEN0_SB_T2
                                     67 	.globl _IEN0_SB_UART
                                     68 	.globl _IEN0_SB_T1
                                     69 	.globl _IEN0_SB_POFIRQ
                                     70 	.globl _IEN0_SB_T0
                                     71 	.globl _IEN0_SB_IFP
                                     72 	.globl _P2_SB_D7
                                     73 	.globl _P2_SB_D6
                                     74 	.globl _P2_SB_D5
                                     75 	.globl _P2_SB_D4
                                     76 	.globl _P2_SB_D3
                                     77 	.globl _P2_SB_D2
                                     78 	.globl _P2_SB_D1
                                     79 	.globl _P2_SB_D0
                                     80 	.globl _S0CON_SB_SM0
                                     81 	.globl _S0CON_SB_SM1
                                     82 	.globl _S0CON_SB_SM20
                                     83 	.globl _S0CON_SB_REN0
                                     84 	.globl _S0CON_SB_TB80
                                     85 	.globl _S0CON_SB_RB80
                                     86 	.globl _S0CON_SB_TI0
                                     87 	.globl _S0CON_SB_RI0
                                     88 	.globl _P1_SB_D7
                                     89 	.globl _P1_SB_D6
                                     90 	.globl _P1_SB_D5
                                     91 	.globl _P1_SB_D4
                                     92 	.globl _P1_SB_D3
                                     93 	.globl _P1_SB_D2
                                     94 	.globl _P1_SB_D1
                                     95 	.globl _P1_SB_D0
                                     96 	.globl _TCON_SB_TF1
                                     97 	.globl _TCON_SB_TR1
                                     98 	.globl _TCON_SB_TF0
                                     99 	.globl _TCON_SB_TR0
                                    100 	.globl _TCON_SB_IE1
                                    101 	.globl _TCON_SB_IT1
                                    102 	.globl _TCON_SB_IE0
                                    103 	.globl _TCON_SB_IT0
                                    104 	.globl _P0_SB_D7
                                    105 	.globl _P0_SB_D6
                                    106 	.globl _P0_SB_D5
                                    107 	.globl _P0_SB_D4
                                    108 	.globl _P0_SB_D3
                                    109 	.globl _P0_SB_D2
                                    110 	.globl _P0_SB_D1
                                    111 	.globl _P0_SB_D0
                                    112 	.globl _ADCDAT
                                    113 	.globl _S0REL
                                    114 	.globl _T2
                                    115 	.globl _T1
                                    116 	.globl _T0
                                    117 	.globl _CRC
                                    118 	.globl _CC3
                                    119 	.globl _CC2
                                    120 	.globl _CC1
                                    121 	.globl _SPIMDAT
                                    122 	.globl _SPIMSTAT
                                    123 	.globl _SPIMCON1
                                    124 	.globl _SPIMCON0
                                    125 	.globl _FCR
                                    126 	.globl _FPCR
                                    127 	.globl _FSR
                                    128 	.globl _B
                                    129 	.globl _ARCON
                                    130 	.globl _MD5
                                    131 	.globl _MD4
                                    132 	.globl _MD3
                                    133 	.globl _MD2
                                    134 	.globl _MD1
                                    135 	.globl _MD0
                                    136 	.globl _RFCON
                                    137 	.globl _SPIRDAT
                                    138 	.globl _SPIRSTAT
                                    139 	.globl _SPIRCON1
                                    140 	.globl _SPIRCON0
                                    141 	.globl _W2CON0
                                    142 	.globl _W2CON1
                                    143 	.globl _ACC
                                    144 	.globl _CCPDATO
                                    145 	.globl _CCPDATIB
                                    146 	.globl _CCPDATIA
                                    147 	.globl _POFCON
                                    148 	.globl _COMPCON
                                    149 	.globl _W2DAT
                                    150 	.globl _W2SADR
                                    151 	.globl _ADCON
                                    152 	.globl _RNGDAT
                                    153 	.globl _RNGCTL
                                    154 	.globl _ADCDATL
                                    155 	.globl _ADCDATH
                                    156 	.globl _ADCCON1
                                    157 	.globl _ADCCON2
                                    158 	.globl _ADCCON3
                                    159 	.globl _PSW
                                    160 	.globl _WUOPC0
                                    161 	.globl _WUOPC1
                                    162 	.globl _TH2
                                    163 	.globl _TL2
                                    164 	.globl _CRCH
                                    165 	.globl _CRCL
                                    166 	.globl __XPAGE
                                    167 	.globl _MPAGE
                                    168 	.globl _T2CON
                                    169 	.globl _CCH3
                                    170 	.globl _CCL3
                                    171 	.globl _CCH2
                                    172 	.globl _CCL2
                                    173 	.globl _CCH1
                                    174 	.globl _CCL1
                                    175 	.globl _CCEN
                                    176 	.globl _IRCON
                                    177 	.globl _SPISDAT
                                    178 	.globl _SPISSTAT
                                    179 	.globl _SPISCON1
                                    180 	.globl _SPISCON0
                                    181 	.globl _S0RELH
                                    182 	.globl _IP1
                                    183 	.globl _IEN1
                                    184 	.globl _SPISRDSZ
                                    185 	.globl _RTC2CPT00
                                    186 	.globl _RTC2CMP1
                                    187 	.globl _RTC2CMP0
                                    188 	.globl _RTC2CON
                                    189 	.globl _PWMCON
                                    190 	.globl _RSTREAS
                                    191 	.globl _P3
                                    192 	.globl _WDSV
                                    193 	.globl _OPMCON
                                    194 	.globl _CLKLFCTRL
                                    195 	.globl _RTC2CPT10
                                    196 	.globl _RTC2CPT01
                                    197 	.globl _S0RELL
                                    198 	.globl _IP0
                                    199 	.globl _IEN0
                                    200 	.globl _MEMCON
                                    201 	.globl _INTEXP
                                    202 	.globl _WUCON
                                    203 	.globl _PWRDWN
                                    204 	.globl _CLKCTRL
                                    205 	.globl _PWMDC1
                                    206 	.globl _PWMDC0
                                    207 	.globl _P2
                                    208 	.globl _P1CON
                                    209 	.globl _P0CON
                                    210 	.globl _S0BUF
                                    211 	.globl _S0CON
                                    212 	.globl _P2CON
                                    213 	.globl _P3DIR
                                    214 	.globl _P2DIR
                                    215 	.globl _P1DIR
                                    216 	.globl _P0DIR
                                    217 	.globl _DPS
                                    218 	.globl _P1
                                    219 	.globl _P3CON
                                    220 	.globl _TH1
                                    221 	.globl _TH0
                                    222 	.globl _TL1
                                    223 	.globl _TL0
                                    224 	.globl _TMOD
                                    225 	.globl _TCON
                                    226 	.globl _PCON
                                    227 	.globl _DPH1
                                    228 	.globl _DPL1
                                    229 	.globl _DPH
                                    230 	.globl _DPL
                                    231 	.globl _SP
                                    232 	.globl _P0
                                    233 	.globl _dht_read_PARM_2
                                    234 	.globl _dht_init
                                    235 	.globl _dht_read
                                    236 ;--------------------------------------------------------
                                    237 ; special function registers
                                    238 ;--------------------------------------------------------
                                    239 	.area RSEG    (ABS,DATA)
      000000                        240 	.org 0x0000
                           000080   241 _P0	=	0x0080
                           000081   242 _SP	=	0x0081
                           000082   243 _DPL	=	0x0082
                           000083   244 _DPH	=	0x0083
                           000084   245 _DPL1	=	0x0084
                           000085   246 _DPH1	=	0x0085
                           000087   247 _PCON	=	0x0087
                           000088   248 _TCON	=	0x0088
                           000089   249 _TMOD	=	0x0089
                           00008A   250 _TL0	=	0x008a
                           00008B   251 _TL1	=	0x008b
                           00008C   252 _TH0	=	0x008c
                           00008D   253 _TH1	=	0x008d
                           00008F   254 _P3CON	=	0x008f
                           000090   255 _P1	=	0x0090
                           000092   256 _DPS	=	0x0092
                           000093   257 _P0DIR	=	0x0093
                           000094   258 _P1DIR	=	0x0094
                           000095   259 _P2DIR	=	0x0095
                           000096   260 _P3DIR	=	0x0096
                           000097   261 _P2CON	=	0x0097
                           000098   262 _S0CON	=	0x0098
                           000099   263 _S0BUF	=	0x0099
                           00009E   264 _P0CON	=	0x009e
                           00009F   265 _P1CON	=	0x009f
                           0000A0   266 _P2	=	0x00a0
                           0000A1   267 _PWMDC0	=	0x00a1
                           0000A2   268 _PWMDC1	=	0x00a2
                           0000A3   269 _CLKCTRL	=	0x00a3
                           0000A4   270 _PWRDWN	=	0x00a4
                           0000A5   271 _WUCON	=	0x00a5
                           0000A6   272 _INTEXP	=	0x00a6
                           0000A7   273 _MEMCON	=	0x00a7
                           0000A8   274 _IEN0	=	0x00a8
                           0000A9   275 _IP0	=	0x00a9
                           0000AA   276 _S0RELL	=	0x00aa
                           0000AB   277 _RTC2CPT01	=	0x00ab
                           0000AC   278 _RTC2CPT10	=	0x00ac
                           0000AD   279 _CLKLFCTRL	=	0x00ad
                           0000AE   280 _OPMCON	=	0x00ae
                           0000AF   281 _WDSV	=	0x00af
                           0000B0   282 _P3	=	0x00b0
                           0000B1   283 _RSTREAS	=	0x00b1
                           0000B2   284 _PWMCON	=	0x00b2
                           0000B3   285 _RTC2CON	=	0x00b3
                           0000B4   286 _RTC2CMP0	=	0x00b4
                           0000B5   287 _RTC2CMP1	=	0x00b5
                           0000B6   288 _RTC2CPT00	=	0x00b6
                           0000B7   289 _SPISRDSZ	=	0x00b7
                           0000B8   290 _IEN1	=	0x00b8
                           0000B9   291 _IP1	=	0x00b9
                           0000BA   292 _S0RELH	=	0x00ba
                           0000BC   293 _SPISCON0	=	0x00bc
                           0000BD   294 _SPISCON1	=	0x00bd
                           0000BE   295 _SPISSTAT	=	0x00be
                           0000BF   296 _SPISDAT	=	0x00bf
                           0000C0   297 _IRCON	=	0x00c0
                           0000C1   298 _CCEN	=	0x00c1
                           0000C2   299 _CCL1	=	0x00c2
                           0000C3   300 _CCH1	=	0x00c3
                           0000C4   301 _CCL2	=	0x00c4
                           0000C5   302 _CCH2	=	0x00c5
                           0000C6   303 _CCL3	=	0x00c6
                           0000C7   304 _CCH3	=	0x00c7
                           0000C8   305 _T2CON	=	0x00c8
                           0000C9   306 _MPAGE	=	0x00c9
                           0000C9   307 __XPAGE	=	0x00c9
                           0000CA   308 _CRCL	=	0x00ca
                           0000CB   309 _CRCH	=	0x00cb
                           0000CC   310 _TL2	=	0x00cc
                           0000CD   311 _TH2	=	0x00cd
                           0000CE   312 _WUOPC1	=	0x00ce
                           0000CF   313 _WUOPC0	=	0x00cf
                           0000D0   314 _PSW	=	0x00d0
                           0000D1   315 _ADCCON3	=	0x00d1
                           0000D2   316 _ADCCON2	=	0x00d2
                           0000D3   317 _ADCCON1	=	0x00d3
                           0000D4   318 _ADCDATH	=	0x00d4
                           0000D5   319 _ADCDATL	=	0x00d5
                           0000D6   320 _RNGCTL	=	0x00d6
                           0000D7   321 _RNGDAT	=	0x00d7
                           0000D8   322 _ADCON	=	0x00d8
                           0000D9   323 _W2SADR	=	0x00d9
                           0000DA   324 _W2DAT	=	0x00da
                           0000DB   325 _COMPCON	=	0x00db
                           0000DC   326 _POFCON	=	0x00dc
                           0000DD   327 _CCPDATIA	=	0x00dd
                           0000DE   328 _CCPDATIB	=	0x00de
                           0000DF   329 _CCPDATO	=	0x00df
                           0000E0   330 _ACC	=	0x00e0
                           0000E1   331 _W2CON1	=	0x00e1
                           0000E2   332 _W2CON0	=	0x00e2
                           0000E4   333 _SPIRCON0	=	0x00e4
                           0000E5   334 _SPIRCON1	=	0x00e5
                           0000E6   335 _SPIRSTAT	=	0x00e6
                           0000E7   336 _SPIRDAT	=	0x00e7
                           0000E8   337 _RFCON	=	0x00e8
                           0000E9   338 _MD0	=	0x00e9
                           0000EA   339 _MD1	=	0x00ea
                           0000EB   340 _MD2	=	0x00eb
                           0000EC   341 _MD3	=	0x00ec
                           0000ED   342 _MD4	=	0x00ed
                           0000EE   343 _MD5	=	0x00ee
                           0000EF   344 _ARCON	=	0x00ef
                           0000F0   345 _B	=	0x00f0
                           0000F8   346 _FSR	=	0x00f8
                           0000F9   347 _FPCR	=	0x00f9
                           0000FA   348 _FCR	=	0x00fa
                           0000FC   349 _SPIMCON0	=	0x00fc
                           0000FD   350 _SPIMCON1	=	0x00fd
                           0000FE   351 _SPIMSTAT	=	0x00fe
                           0000FF   352 _SPIMDAT	=	0x00ff
                           00C3C2   353 _CC1	=	0xc3c2
                           00C5C4   354 _CC2	=	0xc5c4
                           00C7C6   355 _CC3	=	0xc7c6
                           00CBCA   356 _CRC	=	0xcbca
                           008C8A   357 _T0	=	0x8c8a
                           008D8B   358 _T1	=	0x8d8b
                           00CDCC   359 _T2	=	0xcdcc
                           00BAAA   360 _S0REL	=	0xbaaa
                           00D4D5   361 _ADCDAT	=	0xd4d5
                                    362 ;--------------------------------------------------------
                                    363 ; special function bits
                                    364 ;--------------------------------------------------------
                                    365 	.area RSEG    (ABS,DATA)
      000000                        366 	.org 0x0000
                           000080   367 _P0_SB_D0	=	0x0080
                           000081   368 _P0_SB_D1	=	0x0081
                           000082   369 _P0_SB_D2	=	0x0082
                           000083   370 _P0_SB_D3	=	0x0083
                           000084   371 _P0_SB_D4	=	0x0084
                           000085   372 _P0_SB_D5	=	0x0085
                           000086   373 _P0_SB_D6	=	0x0086
                           000087   374 _P0_SB_D7	=	0x0087
                           000088   375 _TCON_SB_IT0	=	0x0088
                           000089   376 _TCON_SB_IE0	=	0x0089
                           00008A   377 _TCON_SB_IT1	=	0x008a
                           00008B   378 _TCON_SB_IE1	=	0x008b
                           00008C   379 _TCON_SB_TR0	=	0x008c
                           00008D   380 _TCON_SB_TF0	=	0x008d
                           00008E   381 _TCON_SB_TR1	=	0x008e
                           00008F   382 _TCON_SB_TF1	=	0x008f
                           000090   383 _P1_SB_D0	=	0x0090
                           000091   384 _P1_SB_D1	=	0x0091
                           000092   385 _P1_SB_D2	=	0x0092
                           000093   386 _P1_SB_D3	=	0x0093
                           000094   387 _P1_SB_D4	=	0x0094
                           000095   388 _P1_SB_D5	=	0x0095
                           000096   389 _P1_SB_D6	=	0x0096
                           000097   390 _P1_SB_D7	=	0x0097
                           000098   391 _S0CON_SB_RI0	=	0x0098
                           000099   392 _S0CON_SB_TI0	=	0x0099
                           00009A   393 _S0CON_SB_RB80	=	0x009a
                           00009B   394 _S0CON_SB_TB80	=	0x009b
                           00009C   395 _S0CON_SB_REN0	=	0x009c
                           00009D   396 _S0CON_SB_SM20	=	0x009d
                           00009E   397 _S0CON_SB_SM1	=	0x009e
                           00009F   398 _S0CON_SB_SM0	=	0x009f
                           0000A0   399 _P2_SB_D0	=	0x00a0
                           0000A1   400 _P2_SB_D1	=	0x00a1
                           0000A2   401 _P2_SB_D2	=	0x00a2
                           0000A3   402 _P2_SB_D3	=	0x00a3
                           0000A4   403 _P2_SB_D4	=	0x00a4
                           0000A5   404 _P2_SB_D5	=	0x00a5
                           0000A6   405 _P2_SB_D6	=	0x00a6
                           0000A7   406 _P2_SB_D7	=	0x00a7
                           0000A8   407 _IEN0_SB_IFP	=	0x00a8
                           0000A9   408 _IEN0_SB_T0	=	0x00a9
                           0000AA   409 _IEN0_SB_POFIRQ	=	0x00aa
                           0000AB   410 _IEN0_SB_T1	=	0x00ab
                           0000AC   411 _IEN0_SB_UART	=	0x00ac
                           0000AD   412 _IEN0_SB_T2	=	0x00ad
                           0000AF   413 _IEN0_SB_GLOBAL	=	0x00af
                           0000B0   414 _P3_SB_D0	=	0x00b0
                           0000B1   415 _P3_SB_D1	=	0x00b1
                           0000B2   416 _P3_SB_D2	=	0x00b2
                           0000B3   417 _P3_SB_D3	=	0x00b3
                           0000B4   418 _P3_SB_D4	=	0x00b4
                           0000B5   419 _P3_SB_D5	=	0x00b5
                           0000B6   420 _P3_SB_D6	=	0x00b6
                           0000B7   421 _P3_SB_D7	=	0x00b7
                           0000B8   422 _IEN1_SB_RFRDY	=	0x00b8
                           0000B9   423 _IEN1_SB_RFIRQ	=	0x00b9
                           0000BA   424 _IEN1_SB_SPI_2WIRE	=	0x00ba
                           0000BB   425 _IEN1_SB_WUOPIRQ	=	0x00bb
                           0000BC   426 _IEN1_SB_MISCIRQ	=	0x00bc
                           0000BD   427 _IEN1_SB_TICK	=	0x00bd
                           0000BF   428 _IEN1_SB_T2EXTRLD	=	0x00bf
                           0000C0   429 _IRCON_SB_RFRDY	=	0x00c0
                           0000C1   430 _IRCON_SB_RFIRQ	=	0x00c1
                           0000C2   431 _IRCON_SB_SPI_2WIRE	=	0x00c2
                           0000C3   432 _IRCON_SB_WUOPIRQ	=	0x00c3
                           0000C4   433 _IRCON_SB_MISCIRQ	=	0x00c4
                           0000C5   434 _IRCON_SB_TICK	=	0x00c5
                           0000C6   435 _IRCON_SB_TF2	=	0x00c6
                           0000C7   436 _IRCON_SB_EXF2	=	0x00c7
                           0000C8   437 _T2CON_SB_T2I0	=	0x00c8
                           0000C9   438 _T2CON_SB_T2I1	=	0x00c9
                           0000CA   439 _T2CON_SB_T2CM	=	0x00ca
                           0000CB   440 _T2CON_SB_T2R0	=	0x00cb
                           0000CC   441 _T2CON_SB_T2R1	=	0x00cc
                           0000CD   442 _T2CON_SB_I2FR	=	0x00cd
                           0000CE   443 _T2CON_SB_I3FR	=	0x00ce
                           0000CF   444 _T2CON_SB_T2PS	=	0x00cf
                           0000D7   445 _PSW_SB_CY	=	0x00d7
                           0000D6   446 _PSW_SB_AC	=	0x00d6
                           0000D5   447 _PSW_SB_F0	=	0x00d5
                           0000D4   448 _PSW_SB_RS1	=	0x00d4
                           0000D3   449 _PSW_SB_RS0	=	0x00d3
                           0000D2   450 _PSW_SB_OV	=	0x00d2
                           0000D1   451 _PSW_SB_F1	=	0x00d1
                           0000D0   452 _PSW_SB_P	=	0x00d0
                           0000DF   453 _ADCON_SB_BD	=	0x00df
                           0000E8   454 _RFCON_SB_RFCE	=	0x00e8
                           0000E9   455 _RFCON_SB_RFCSN	=	0x00e9
                           0000EA   456 _RFCON_SB_RFCKEN	=	0x00ea
                           0000FA   457 _FSR_SB_RDISMB	=	0x00fa
                           0000FB   458 _FSR_SB_INFEN	=	0x00fb
                           0000FC   459 _FSR_SB_RDYN	=	0x00fc
                           0000FD   460 _FSR_SB_WEN	=	0x00fd
                           0000FE   461 _FSR_SB_STP	=	0x00fe
                           0000FF   462 _FSR_SB_ENDBG	=	0x00ff
                                    463 ;--------------------------------------------------------
                                    464 ; overlayable register banks
                                    465 ;--------------------------------------------------------
                                    466 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        467 	.ds 8
                                    468 ;--------------------------------------------------------
                                    469 ; internal ram data
                                    470 ;--------------------------------------------------------
                                    471 	.area DSEG    (DATA)
                                    472 ;--------------------------------------------------------
                                    473 ; overlayable items in internal ram 
                                    474 ;--------------------------------------------------------
                                    475 ;--------------------------------------------------------
                                    476 ; indirectly addressable internal ram data
                                    477 ;--------------------------------------------------------
                                    478 	.area ISEG    (DATA)
                                    479 ;--------------------------------------------------------
                                    480 ; absolute internal ram data
                                    481 ;--------------------------------------------------------
                                    482 	.area IABS    (ABS,DATA)
                                    483 	.area IABS    (ABS,DATA)
                                    484 ;--------------------------------------------------------
                                    485 ; bit data
                                    486 ;--------------------------------------------------------
                                    487 	.area BSEG    (BIT)
                                    488 ;--------------------------------------------------------
                                    489 ; paged external ram data
                                    490 ;--------------------------------------------------------
                                    491 	.area PSEG    (PAG,XDATA)
                                    492 ;--------------------------------------------------------
                                    493 ; external ram data
                                    494 ;--------------------------------------------------------
                                    495 	.area XSEG    (XDATA)
      00009D                        496 _waitpin_val_1_14:
      00009D                        497 	.ds 1
      00009E                        498 _dht_read_PARM_2:
      00009E                        499 	.ds 3
      0000A1                        500 _dht_read_temp_1_19:
      0000A1                        501 	.ds 3
      0000A4                        502 _dht_read_datadht_1_20:
      0000A4                        503 	.ds 5
      0000A9                        504 _dht_read_crcdata_1_20:
      0000A9                        505 	.ds 1
                                    506 ;--------------------------------------------------------
                                    507 ; absolute external ram data
                                    508 ;--------------------------------------------------------
                                    509 	.area XABS    (ABS,XDATA)
                                    510 ;--------------------------------------------------------
                                    511 ; external initialized ram data
                                    512 ;--------------------------------------------------------
                                    513 	.area XISEG   (XDATA)
                                    514 	.area HOME    (CODE)
                                    515 	.area GSINIT0 (CODE)
                                    516 	.area GSINIT1 (CODE)
                                    517 	.area GSINIT2 (CODE)
                                    518 	.area GSINIT3 (CODE)
                                    519 	.area GSINIT4 (CODE)
                                    520 	.area GSINIT5 (CODE)
                                    521 	.area GSINIT  (CODE)
                                    522 	.area GSFINAL (CODE)
                                    523 	.area CSEG    (CODE)
                                    524 ;--------------------------------------------------------
                                    525 ; global & static initialisations
                                    526 ;--------------------------------------------------------
                                    527 	.area HOME    (CODE)
                                    528 	.area GSINIT  (CODE)
                                    529 	.area GSFINAL (CODE)
                                    530 	.area GSINIT  (CODE)
                                    531 ;--------------------------------------------------------
                                    532 ; Home
                                    533 ;--------------------------------------------------------
                                    534 	.area HOME    (CODE)
                                    535 	.area HOME    (CODE)
                                    536 ;--------------------------------------------------------
                                    537 ; code
                                    538 ;--------------------------------------------------------
                                    539 	.area CSEG    (CODE)
                                    540 ;------------------------------------------------------------
                                    541 ;Allocation info for local variables in function 'waitpin'
                                    542 ;------------------------------------------------------------
                                    543 ;val                       Allocated with name '_waitpin_val_1_14'
                                    544 ;readtm                    Allocated with name '_waitpin_readtm_1_15'
                                    545 ;------------------------------------------------------------
                                    546 ;	dht.c:26: static uint8_t waitpin(uint8_t val)
                                    547 ;	-----------------------------------------
                                    548 ;	 function waitpin
                                    549 ;	-----------------------------------------
      001265                        550 _waitpin:
                           000007   551 	ar7 = 0x07
                           000006   552 	ar6 = 0x06
                           000005   553 	ar5 = 0x05
                           000004   554 	ar4 = 0x04
                           000003   555 	ar3 = 0x03
                           000002   556 	ar2 = 0x02
                           000001   557 	ar1 = 0x01
                           000000   558 	ar0 = 0x00
      001265 E5 82            [12]  559 	mov	a,dpl
      001267 90 00 9D         [24]  560 	mov	dptr,#_waitpin_val_1_14
      00126A F0               [24]  561 	movx	@dptr,a
                                    562 ;	dht.c:33: while ((PIN1XVAL(DHTPIN) != val) && (--readtm > 0));	// for P1.X only
      00126B E0               [24]  563 	movx	a,@dptr
      00126C FF               [12]  564 	mov	r7,a
      00126D 7E 50            [12]  565 	mov	r6,#0x50
      00126F                        566 00102$:
      00126F E5 90            [12]  567 	mov	a,_P1
      001271 30 E4 04         [24]  568 	jnb	acc.4,00109$
      001274 7D 01            [12]  569 	mov	r5,#0x01
      001276 80 02            [24]  570 	sjmp	00110$
      001278                        571 00109$:
      001278 7D 00            [12]  572 	mov	r5,#0x00
      00127A                        573 00110$:
      00127A ED               [12]  574 	mov	a,r5
      00127B B5 07 02         [24]  575 	cjne	a,ar7,00125$
      00127E 80 02            [24]  576 	sjmp	00104$
      001280                        577 00125$:
      001280 DE ED            [24]  578 	djnz	r6,00102$
      001282                        579 00104$:
                                    580 ;	dht.c:35: if (readtm == 0) {
      001282 EE               [12]  581 	mov	a,r6
                                    582 ;	dht.c:36: return 0;
      001283 70 03            [24]  583 	jnz	00106$
      001285 F5 82            [12]  584 	mov	dpl,a
      001287 22               [24]  585 	ret
      001288                        586 00106$:
                                    587 ;	dht.c:38: return 1;
      001288 75 82 01         [24]  588 	mov	dpl,#0x01
      00128B 22               [24]  589 	ret
                                    590 ;------------------------------------------------------------
                                    591 ;Allocation info for local variables in function 'dht_init'
                                    592 ;------------------------------------------------------------
                                    593 ;	dht.c:41: void dht_init(void) {
                                    594 ;	-----------------------------------------
                                    595 ;	 function dht_init
                                    596 ;	-----------------------------------------
      00128C                        597 _dht_init:
                                    598 ;	dht.c:45: );
      00128C 90 00 00         [24]  599 	mov	dptr,#_gpio_pin_configure_PARM_2
      00128F E4               [12]  600 	clr	a
      001290 F0               [24]  601 	movx	@dptr,a
      001291 75 82 0C         [24]  602 	mov	dpl,#0x0C
      001294 02 00 00         [24]  603 	ljmp	_gpio_pin_configure
                                    604 ;------------------------------------------------------------
                                    605 ;Allocation info for local variables in function 'dht_read'
                                    606 ;------------------------------------------------------------
                                    607 ;hum                       Allocated with name '_dht_read_PARM_2'
                                    608 ;temp                      Allocated with name '_dht_read_temp_1_19'
                                    609 ;j                         Allocated with name '_dht_read_j_1_20'
                                    610 ;i                         Allocated with name '_dht_read_i_1_20'
                                    611 ;datadht                   Allocated with name '_dht_read_datadht_1_20'
                                    612 ;crcdata                   Allocated with name '_dht_read_crcdata_1_20'
                                    613 ;------------------------------------------------------------
                                    614 ;	dht.c:49: dhterror_t dht_read(int *temp, int *hum) {
                                    615 ;	-----------------------------------------
                                    616 ;	 function dht_read
                                    617 ;	-----------------------------------------
      001297                        618 _dht_read:
      001297 AF F0            [24]  619 	mov	r7,b
      001299 AE 83            [24]  620 	mov	r6,dph
      00129B E5 82            [12]  621 	mov	a,dpl
      00129D 90 00 A1         [24]  622 	mov	dptr,#_dht_read_temp_1_19
      0012A0 F0               [24]  623 	movx	@dptr,a
      0012A1 EE               [12]  624 	mov	a,r6
      0012A2 A3               [24]  625 	inc	dptr
      0012A3 F0               [24]  626 	movx	@dptr,a
      0012A4 EF               [12]  627 	mov	a,r7
      0012A5 A3               [24]  628 	inc	dptr
      0012A6 F0               [24]  629 	movx	@dptr,a
                                    630 ;	dht.c:51: uint8_t datadht[5] = {0,0,0,0,0};
      0012A7 90 00 A4         [24]  631 	mov	dptr,#_dht_read_datadht_1_20
      0012AA E4               [12]  632 	clr	a
      0012AB F0               [24]  633 	movx	@dptr,a
      0012AC 90 00 A5         [24]  634 	mov	dptr,#(_dht_read_datadht_1_20 + 0x0001)
      0012AF F0               [24]  635 	movx	@dptr,a
      0012B0 90 00 A6         [24]  636 	mov	dptr,#(_dht_read_datadht_1_20 + 0x0002)
      0012B3 F0               [24]  637 	movx	@dptr,a
      0012B4 90 00 A7         [24]  638 	mov	dptr,#(_dht_read_datadht_1_20 + 0x0003)
      0012B7 F0               [24]  639 	movx	@dptr,a
      0012B8 90 00 A8         [24]  640 	mov	dptr,#(_dht_read_datadht_1_20 + 0x0004)
      0012BB F0               [24]  641 	movx	@dptr,a
                                    642 ;	dht.c:52: uint8_t crcdata = 0;
      0012BC 90 00 A9         [24]  643 	mov	dptr,#_dht_read_crcdata_1_20
      0012BF F0               [24]  644 	movx	@dptr,a
                                    645 ;	dht.c:59: );
      0012C0 90 00 00         [24]  646 	mov	dptr,#_gpio_pin_configure_PARM_2
      0012C3 04               [12]  647 	inc	a
      0012C4 F0               [24]  648 	movx	@dptr,a
      0012C5 75 82 0C         [24]  649 	mov	dpl,#0x0C
      0012C8 12 00 00         [24]  650 	lcall	_gpio_pin_configure
                                    651 ;	dht.c:61: delay_ms(18);	// reset 1-20ms
      0012CB 90 00 12         [24]  652 	mov	dptr,#0x0012
      0012CE 12 00 00         [24]  653 	lcall	_delay_ms
                                    654 ;	dht.c:67: );
      0012D1 90 00 00         [24]  655 	mov	dptr,#_gpio_pin_configure_PARM_2
      0012D4 E4               [12]  656 	clr	a
      0012D5 F0               [24]  657 	movx	@dptr,a
      0012D6 75 82 0C         [24]  658 	mov	dpl,#0x0C
      0012D9 12 00 00         [24]  659 	lcall	_gpio_pin_configure
                                    660 ;	dht.c:70: if (!waitpin(0)) {
      0012DC 75 82 00         [24]  661 	mov	dpl,#0x00
      0012DF 12 12 65         [24]  662 	lcall	_waitpin
      0012E2 E5 82            [12]  663 	mov	a,dpl
      0012E4 70 04            [24]  664 	jnz	00102$
                                    665 ;	dht.c:71: return DHT_NO_RESPONSE;
      0012E6 75 82 01         [24]  666 	mov	dpl,#0x01
      0012E9 22               [24]  667 	ret
      0012EA                        668 00102$:
                                    669 ;	dht.c:73: if (!waitpin(1)) {
      0012EA 75 82 01         [24]  670 	mov	dpl,#0x01
      0012ED 12 12 65         [24]  671 	lcall	_waitpin
      0012F0 E5 82            [12]  672 	mov	a,dpl
      0012F2 70 04            [24]  673 	jnz	00104$
                                    674 ;	dht.c:74: return DHT_NO_RESPONSE;
      0012F4 75 82 01         [24]  675 	mov	dpl,#0x01
      0012F7 22               [24]  676 	ret
      0012F8                        677 00104$:
                                    678 ;	dht.c:77: if (!waitpin(0)) {
      0012F8 75 82 00         [24]  679 	mov	dpl,#0x00
      0012FB 12 12 65         [24]  680 	lcall	_waitpin
      0012FE E5 82            [12]  681 	mov	a,dpl
      001300 70 04            [24]  682 	jnz	00145$
                                    683 ;	dht.c:78: return DHT_NO_RESPONSE;
      001302 75 82 01         [24]  684 	mov	dpl,#0x01
      001305 22               [24]  685 	ret
                                    686 ;	dht.c:81: for (j = 0; j < 5; j++) {
      001306                        687 00145$:
      001306 7F 00            [12]  688 	mov	r7,#0x00
                                    689 ;	dht.c:82: for(i = 0; i < 8; i++) {
      001308                        690 00143$:
      001308 8F 06            [24]  691 	mov	ar6,r7
      00130A 7D 00            [12]  692 	mov	r5,#0x00
      00130C                        693 00129$:
                                    694 ;	dht.c:83: if (!waitpin(1)) {
      00130C 75 82 01         [24]  695 	mov	dpl,#0x01
      00130F C0 07            [24]  696 	push	ar7
      001311 C0 06            [24]  697 	push	ar6
      001313 C0 05            [24]  698 	push	ar5
      001315 12 12 65         [24]  699 	lcall	_waitpin
      001318 E5 82            [12]  700 	mov	a,dpl
      00131A D0 05            [24]  701 	pop	ar5
      00131C D0 06            [24]  702 	pop	ar6
      00131E D0 07            [24]  703 	pop	ar7
      001320 70 04            [24]  704 	jnz	00108$
                                    705 ;	dht.c:84: return DHT_TIMEOUT_ERROR;
      001322 75 82 02         [24]  706 	mov	dpl,#0x02
      001325 22               [24]  707 	ret
      001326                        708 00108$:
                                    709 ;	dht.c:86: delay_us(30);
      001326 90 00 1E         [24]  710 	mov	dptr,#0x001E
      001329 C0 07            [24]  711 	push	ar7
      00132B C0 06            [24]  712 	push	ar6
      00132D C0 05            [24]  713 	push	ar5
      00132F 12 00 00         [24]  714 	lcall	_delay_us
                                    715 ;	dht.c:87: if (gpio_pin_val_read(DHTPIN))
      001332 75 82 0C         [24]  716 	mov	dpl,#0x0C
      001335 12 00 00         [24]  717 	lcall	_gpio_pin_val_read
      001338 E5 82            [12]  718 	mov	a,dpl
      00133A D0 05            [24]  719 	pop	ar5
      00133C D0 06            [24]  720 	pop	ar6
      00133E D0 07            [24]  721 	pop	ar7
      001340 60 28            [24]  722 	jz	00110$
                                    723 ;	dht.c:88: datadht[j] |= 1 << (7-i);
      001342 EE               [12]  724 	mov	a,r6
      001343 24 A4            [12]  725 	add	a,#_dht_read_datadht_1_20
      001345 FB               [12]  726 	mov	r3,a
      001346 E4               [12]  727 	clr	a
      001347 34 00            [12]  728 	addc	a,#(_dht_read_datadht_1_20 >> 8)
      001349 FC               [12]  729 	mov	r4,a
      00134A 8B 82            [24]  730 	mov	dpl,r3
      00134C 8C 83            [24]  731 	mov	dph,r4
      00134E E0               [24]  732 	movx	a,@dptr
      00134F FA               [12]  733 	mov	r2,a
      001350 74 07            [12]  734 	mov	a,#0x07
      001352 C3               [12]  735 	clr	c
      001353 9D               [12]  736 	subb	a,r5
      001354 F5 F0            [12]  737 	mov	b,a
      001356 05 F0            [12]  738 	inc	b
      001358 74 01            [12]  739 	mov	a,#0x01
      00135A 80 02            [24]  740 	sjmp	00205$
      00135C                        741 00203$:
      00135C 25 E0            [12]  742 	add	a,acc
      00135E                        743 00205$:
      00135E D5 F0 FB         [24]  744 	djnz	b,00203$
      001361 F9               [12]  745 	mov	r1,a
      001362 42 02            [12]  746 	orl	ar2,a
      001364 8B 82            [24]  747 	mov	dpl,r3
      001366 8C 83            [24]  748 	mov	dph,r4
      001368 EA               [12]  749 	mov	a,r2
      001369 F0               [24]  750 	movx	@dptr,a
      00136A                        751 00110$:
                                    752 ;	dht.c:89: if (!waitpin(0)) {
      00136A 75 82 00         [24]  753 	mov	dpl,#0x00
      00136D C0 07            [24]  754 	push	ar7
      00136F C0 06            [24]  755 	push	ar6
      001371 C0 05            [24]  756 	push	ar5
      001373 12 12 65         [24]  757 	lcall	_waitpin
      001376 E5 82            [12]  758 	mov	a,dpl
      001378 D0 05            [24]  759 	pop	ar5
      00137A D0 06            [24]  760 	pop	ar6
      00137C D0 07            [24]  761 	pop	ar7
      00137E 70 04            [24]  762 	jnz	00130$
                                    763 ;	dht.c:90: return DHT_TIMEOUT_ERROR;
      001380 75 82 02         [24]  764 	mov	dpl,#0x02
      001383 22               [24]  765 	ret
      001384                        766 00130$:
                                    767 ;	dht.c:82: for(i = 0; i < 8; i++) {
      001384 0D               [12]  768 	inc	r5
      001385 BD 08 00         [24]  769 	cjne	r5,#0x08,00207$
      001388                        770 00207$:
      001388 50 03            [24]  771 	jnc	00208$
      00138A 02 13 0C         [24]  772 	ljmp	00129$
      00138D                        773 00208$:
                                    774 ;	dht.c:81: for (j = 0; j < 5; j++) {
      00138D 0F               [12]  775 	inc	r7
      00138E BF 05 00         [24]  776 	cjne	r7,#0x05,00209$
      001391                        777 00209$:
      001391 50 03            [24]  778 	jnc	00210$
      001393 02 13 08         [24]  779 	ljmp	00143$
      001396                        780 00210$:
                                    781 ;	dht.c:95: if (datadht[0] == 0 && datadht[1] == 0 && datadht[2] == 0 && datadht[3] == 0) {
      001396 90 00 A4         [24]  782 	mov	dptr,#_dht_read_datadht_1_20
      001399 E0               [24]  783 	movx	a,@dptr
      00139A 70 16            [24]  784 	jnz	00151$
      00139C 90 00 A5         [24]  785 	mov	dptr,#(_dht_read_datadht_1_20 + 0x0001)
      00139F E0               [24]  786 	movx	a,@dptr
      0013A0 70 10            [24]  787 	jnz	00151$
      0013A2 90 00 A6         [24]  788 	mov	dptr,#(_dht_read_datadht_1_20 + 0x0002)
      0013A5 E0               [24]  789 	movx	a,@dptr
      0013A6 70 0A            [24]  790 	jnz	00151$
      0013A8 90 00 A7         [24]  791 	mov	dptr,#(_dht_read_datadht_1_20 + 0x0003)
      0013AB E0               [24]  792 	movx	a,@dptr
      0013AC 70 04            [24]  793 	jnz	00151$
                                    794 ;	dht.c:96: return DHT_NO_VALUE;
      0013AE 75 82 04         [24]  795 	mov	dpl,#0x04
      0013B1 22               [24]  796 	ret
                                    797 ;	dht.c:99: for(i = 0; i < 4; i++) {
      0013B2                        798 00151$:
      0013B2 7F 00            [12]  799 	mov	r7,#0x00
      0013B4                        800 00133$:
                                    801 ;	dht.c:100: crcdata += datadht[i];
      0013B4 EF               [12]  802 	mov	a,r7
      0013B5 24 A4            [12]  803 	add	a,#_dht_read_datadht_1_20
      0013B7 F5 82            [12]  804 	mov	dpl,a
      0013B9 E4               [12]  805 	clr	a
      0013BA 34 00            [12]  806 	addc	a,#(_dht_read_datadht_1_20 >> 8)
      0013BC F5 83            [12]  807 	mov	dph,a
      0013BE E0               [24]  808 	movx	a,@dptr
      0013BF FE               [12]  809 	mov	r6,a
      0013C0 90 00 A9         [24]  810 	mov	dptr,#_dht_read_crcdata_1_20
      0013C3 E0               [24]  811 	movx	a,@dptr
      0013C4 FD               [12]  812 	mov	r5,a
      0013C5 2E               [12]  813 	add	a,r6
      0013C6 F0               [24]  814 	movx	@dptr,a
                                    815 ;	dht.c:99: for(i = 0; i < 4; i++) {
      0013C7 0F               [12]  816 	inc	r7
      0013C8 BF 04 00         [24]  817 	cjne	r7,#0x04,00215$
      0013CB                        818 00215$:
      0013CB 40 E7            [24]  819 	jc	00133$
                                    820 ;	dht.c:102: if ((crcdata & 0xff) != datadht[4]) {	// CRC check
      0013CD 90 00 A9         [24]  821 	mov	dptr,#_dht_read_crcdata_1_20
      0013D0 E0               [24]  822 	movx	a,@dptr
      0013D1 FF               [12]  823 	mov	r7,a
      0013D2 90 00 A8         [24]  824 	mov	dptr,#(_dht_read_datadht_1_20 + 0x0004)
      0013D5 E0               [24]  825 	movx	a,@dptr
      0013D6 FE               [12]  826 	mov	r6,a
      0013D7 EF               [12]  827 	mov	a,r7
      0013D8 B5 06 02         [24]  828 	cjne	a,ar6,00217$
      0013DB 80 04            [24]  829 	sjmp	00122$
      0013DD                        830 00217$:
                                    831 ;	dht.c:103: return DHT_CHECKSUM_ERROR;
      0013DD 75 82 03         [24]  832 	mov	dpl,#0x03
      0013E0 22               [24]  833 	ret
      0013E1                        834 00122$:
                                    835 ;	dht.c:106: if ((datadht[1] == 0) && (datadht[3] == 0)) {
      0013E1 90 00 A5         [24]  836 	mov	dptr,#(_dht_read_datadht_1_20 + 0x0001)
      0013E4 E0               [24]  837 	movx	a,@dptr
      0013E5 70 53            [24]  838 	jnz	00126$
      0013E7 90 00 A7         [24]  839 	mov	dptr,#(_dht_read_datadht_1_20 + 0x0003)
      0013EA E0               [24]  840 	movx	a,@dptr
      0013EB 70 4D            [24]  841 	jnz	00126$
                                    842 ;	dht.c:108: *hum=datadht[2]*10;
      0013ED 90 00 9E         [24]  843 	mov	dptr,#_dht_read_PARM_2
      0013F0 E0               [24]  844 	movx	a,@dptr
      0013F1 FD               [12]  845 	mov	r5,a
      0013F2 A3               [24]  846 	inc	dptr
      0013F3 E0               [24]  847 	movx	a,@dptr
      0013F4 FE               [12]  848 	mov	r6,a
      0013F5 A3               [24]  849 	inc	dptr
      0013F6 E0               [24]  850 	movx	a,@dptr
      0013F7 FF               [12]  851 	mov	r7,a
      0013F8 90 00 A6         [24]  852 	mov	dptr,#(_dht_read_datadht_1_20 + 0x0002)
      0013FB E0               [24]  853 	movx	a,@dptr
      0013FC 75 F0 0A         [24]  854 	mov	b,#0x0A
      0013FF A4               [48]  855 	mul	ab
      001400 FC               [12]  856 	mov	r4,a
      001401 AB F0            [24]  857 	mov	r3,b
      001403 8D 82            [24]  858 	mov	dpl,r5
      001405 8E 83            [24]  859 	mov	dph,r6
      001407 8F F0            [24]  860 	mov	b,r7
      001409 EC               [12]  861 	mov	a,r4
      00140A 12 15 3D         [24]  862 	lcall	__gptrput
      00140D A3               [24]  863 	inc	dptr
      00140E EB               [12]  864 	mov	a,r3
      00140F 12 15 3D         [24]  865 	lcall	__gptrput
                                    866 ;	dht.c:109: *temp=datadht[0]*10;
      001412 90 00 A1         [24]  867 	mov	dptr,#_dht_read_temp_1_19
      001415 E0               [24]  868 	movx	a,@dptr
      001416 FD               [12]  869 	mov	r5,a
      001417 A3               [24]  870 	inc	dptr
      001418 E0               [24]  871 	movx	a,@dptr
      001419 FE               [12]  872 	mov	r6,a
      00141A A3               [24]  873 	inc	dptr
      00141B E0               [24]  874 	movx	a,@dptr
      00141C FF               [12]  875 	mov	r7,a
      00141D 90 00 A4         [24]  876 	mov	dptr,#_dht_read_datadht_1_20
      001420 E0               [24]  877 	movx	a,@dptr
      001421 75 F0 0A         [24]  878 	mov	b,#0x0A
      001424 A4               [48]  879 	mul	ab
      001425 FC               [12]  880 	mov	r4,a
      001426 AB F0            [24]  881 	mov	r3,b
      001428 8D 82            [24]  882 	mov	dpl,r5
      00142A 8E 83            [24]  883 	mov	dph,r6
      00142C 8F F0            [24]  884 	mov	b,r7
      00142E EC               [12]  885 	mov	a,r4
      00142F 12 15 3D         [24]  886 	lcall	__gptrput
      001432 A3               [24]  887 	inc	dptr
      001433 EB               [12]  888 	mov	a,r3
      001434 12 15 3D         [24]  889 	lcall	__gptrput
      001437 02 14 C5         [24]  890 	ljmp	00127$
      00143A                        891 00126$:
                                    892 ;	dht.c:113: *hum = ((unsigned int)datadht[0] << 8) | (unsigned int)datadht[1];
      00143A 90 00 9E         [24]  893 	mov	dptr,#_dht_read_PARM_2
      00143D E0               [24]  894 	movx	a,@dptr
      00143E FD               [12]  895 	mov	r5,a
      00143F A3               [24]  896 	inc	dptr
      001440 E0               [24]  897 	movx	a,@dptr
      001441 FE               [12]  898 	mov	r6,a
      001442 A3               [24]  899 	inc	dptr
      001443 E0               [24]  900 	movx	a,@dptr
      001444 FF               [12]  901 	mov	r7,a
      001445 90 00 A4         [24]  902 	mov	dptr,#_dht_read_datadht_1_20
      001448 E0               [24]  903 	movx	a,@dptr
      001449 FB               [12]  904 	mov	r3,a
      00144A 7C 00            [12]  905 	mov	r4,#0x00
      00144C 90 00 A5         [24]  906 	mov	dptr,#(_dht_read_datadht_1_20 + 0x0001)
      00144F E0               [24]  907 	movx	a,@dptr
      001450 7A 00            [12]  908 	mov	r2,#0x00
      001452 42 04            [12]  909 	orl	ar4,a
      001454 EA               [12]  910 	mov	a,r2
      001455 42 03            [12]  911 	orl	ar3,a
      001457 8D 82            [24]  912 	mov	dpl,r5
      001459 8E 83            [24]  913 	mov	dph,r6
      00145B 8F F0            [24]  914 	mov	b,r7
      00145D EC               [12]  915 	mov	a,r4
      00145E 12 15 3D         [24]  916 	lcall	__gptrput
      001461 A3               [24]  917 	inc	dptr
      001462 EB               [12]  918 	mov	a,r3
      001463 12 15 3D         [24]  919 	lcall	__gptrput
                                    920 ;	dht.c:114: *temp = (((unsigned int)datadht[2] & 0x7F) << 8) | (unsigned int)datadht[3];
      001466 90 00 A1         [24]  921 	mov	dptr,#_dht_read_temp_1_19
      001469 E0               [24]  922 	movx	a,@dptr
      00146A FD               [12]  923 	mov	r5,a
      00146B A3               [24]  924 	inc	dptr
      00146C E0               [24]  925 	movx	a,@dptr
      00146D FE               [12]  926 	mov	r6,a
      00146E A3               [24]  927 	inc	dptr
      00146F E0               [24]  928 	movx	a,@dptr
      001470 FF               [12]  929 	mov	r7,a
      001471 90 00 A6         [24]  930 	mov	dptr,#(_dht_read_datadht_1_20 + 0x0002)
      001474 E0               [24]  931 	movx	a,@dptr
      001475 FC               [12]  932 	mov	r4,a
      001476 53 04 7F         [24]  933 	anl	ar4,#0x7F
      001479 8C 03            [24]  934 	mov	ar3,r4
      00147B 7C 00            [12]  935 	mov	r4,#0x00
      00147D 90 00 A7         [24]  936 	mov	dptr,#(_dht_read_datadht_1_20 + 0x0003)
      001480 E0               [24]  937 	movx	a,@dptr
      001481 F9               [12]  938 	mov	r1,a
      001482 7A 00            [12]  939 	mov	r2,#0x00
      001484 42 04            [12]  940 	orl	ar4,a
      001486 EA               [12]  941 	mov	a,r2
      001487 42 03            [12]  942 	orl	ar3,a
      001489 8D 82            [24]  943 	mov	dpl,r5
      00148B 8E 83            [24]  944 	mov	dph,r6
      00148D 8F F0            [24]  945 	mov	b,r7
      00148F EC               [12]  946 	mov	a,r4
      001490 12 15 3D         [24]  947 	lcall	__gptrput
      001493 A3               [24]  948 	inc	dptr
      001494 EB               [12]  949 	mov	a,r3
      001495 12 15 3D         [24]  950 	lcall	__gptrput
                                    951 ;	dht.c:115: if (datadht[2] & 0x80) *temp *= -1;
      001498 90 00 A6         [24]  952 	mov	dptr,#(_dht_read_datadht_1_20 + 0x0002)
      00149B E0               [24]  953 	movx	a,@dptr
      00149C FC               [12]  954 	mov	r4,a
      00149D 30 E7 25         [24]  955 	jnb	acc.7,00127$
      0014A0 8D 82            [24]  956 	mov	dpl,r5
      0014A2 8E 83            [24]  957 	mov	dph,r6
      0014A4 8F F0            [24]  958 	mov	b,r7
      0014A6 12 16 8E         [24]  959 	lcall	__gptrget
      0014A9 FB               [12]  960 	mov	r3,a
      0014AA A3               [24]  961 	inc	dptr
      0014AB 12 16 8E         [24]  962 	lcall	__gptrget
      0014AE FC               [12]  963 	mov	r4,a
      0014AF C3               [12]  964 	clr	c
      0014B0 E4               [12]  965 	clr	a
      0014B1 9B               [12]  966 	subb	a,r3
      0014B2 FB               [12]  967 	mov	r3,a
      0014B3 E4               [12]  968 	clr	a
      0014B4 9C               [12]  969 	subb	a,r4
      0014B5 FC               [12]  970 	mov	r4,a
      0014B6 8D 82            [24]  971 	mov	dpl,r5
      0014B8 8E 83            [24]  972 	mov	dph,r6
      0014BA 8F F0            [24]  973 	mov	b,r7
      0014BC EB               [12]  974 	mov	a,r3
      0014BD 12 15 3D         [24]  975 	lcall	__gptrput
      0014C0 A3               [24]  976 	inc	dptr
      0014C1 EC               [12]  977 	mov	a,r4
      0014C2 12 15 3D         [24]  978 	lcall	__gptrput
      0014C5                        979 00127$:
                                    980 ;	dht.c:118: return DHT_NO_ERROR;
      0014C5 75 82 00         [24]  981 	mov	dpl,#0x00
      0014C8 22               [24]  982 	ret
                                    983 	.area CSEG    (CODE)
                                    984 	.area CONST   (CODE)
                                    985 	.area XINIT   (CODE)
                                    986 	.area CABS    (ABS,CODE)
