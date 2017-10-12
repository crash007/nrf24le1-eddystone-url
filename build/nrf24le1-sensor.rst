                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
                                      4 ; This file was generated Fri Oct  6 20:44:52 2017
                                      5 ;--------------------------------------------------------
                                      6 	.module main
                                      7 	.optsdcc -mmcs51 --model-large
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _month_lookup
                                     13 	.globl _frequency
                                     14 	.globl _channel
                                     15 	.globl _dht_read
                                     16 	.globl _dht_init
                                     17 	.globl _btlesetChannel
                                     18 	.globl _swapbuf
                                     19 	.globl _rf_spi_execute_command
                                     20 	.globl _rf_spi_configure_enable
                                     21 	.globl _rf_write_tx_payload_noack
                                     22 	.globl _rf_write_tx_payload
                                     23 	.globl _rf_read_rx_payload
                                     24 	.globl _rf_read_register_1_byte
                                     25 	.globl _rf_read_register
                                     26 	.globl _rf_write_register
                                     27 	.globl _rf_power_up
                                     28 	.globl _delay_ms
                                     29 	.globl _delay_us
                                     30 	.globl _memcpy
                                     31 	.globl _aesGaloisMultiply
                                     32 	.globl _main
                                     33 	.globl _millisBegin
                                     34 	.globl _isrINTERRUPT_VECTOR_T0
                                     35 	.globl _timer0_configure
                                     36 	.globl _watchdog_start_and_set_timeout_in_ms
                                     37 	.globl _adc_configure
                                     38 	.globl _pwm_configure
                                     39 	.globl _w2_master_random_address_read
                                     40 	.globl _w2_master_write_to
                                     41 	.globl _w2_configure
                                     42 	.globl _uart_wait_for_rx_and_get
                                     43 	.globl _uart_send_wait_for_complete
                                     44 	.globl _uart_configure_manual_baud_calc
                                     45 	.globl _gpio_pin_configure
                                     46 	.globl _FSR_SB_ENDBG
                                     47 	.globl _FSR_SB_STP
                                     48 	.globl _FSR_SB_WEN
                                     49 	.globl _FSR_SB_RDYN
                                     50 	.globl _FSR_SB_INFEN
                                     51 	.globl _FSR_SB_RDISMB
                                     52 	.globl _RFCON_SB_RFCKEN
                                     53 	.globl _RFCON_SB_RFCSN
                                     54 	.globl _RFCON_SB_RFCE
                                     55 	.globl _ADCON_SB_BD
                                     56 	.globl _PSW_SB_P
                                     57 	.globl _PSW_SB_F1
                                     58 	.globl _PSW_SB_OV
                                     59 	.globl _PSW_SB_RS0
                                     60 	.globl _PSW_SB_RS1
                                     61 	.globl _PSW_SB_F0
                                     62 	.globl _PSW_SB_AC
                                     63 	.globl _PSW_SB_CY
                                     64 	.globl _T2CON_SB_T2PS
                                     65 	.globl _T2CON_SB_I3FR
                                     66 	.globl _T2CON_SB_I2FR
                                     67 	.globl _T2CON_SB_T2R1
                                     68 	.globl _T2CON_SB_T2R0
                                     69 	.globl _T2CON_SB_T2CM
                                     70 	.globl _T2CON_SB_T2I1
                                     71 	.globl _T2CON_SB_T2I0
                                     72 	.globl _IRCON_SB_EXF2
                                     73 	.globl _IRCON_SB_TF2
                                     74 	.globl _IRCON_SB_TICK
                                     75 	.globl _IRCON_SB_MISCIRQ
                                     76 	.globl _IRCON_SB_WUOPIRQ
                                     77 	.globl _IRCON_SB_SPI_2WIRE
                                     78 	.globl _IRCON_SB_RFIRQ
                                     79 	.globl _IRCON_SB_RFRDY
                                     80 	.globl _IEN1_SB_T2EXTRLD
                                     81 	.globl _IEN1_SB_TICK
                                     82 	.globl _IEN1_SB_MISCIRQ
                                     83 	.globl _IEN1_SB_WUOPIRQ
                                     84 	.globl _IEN1_SB_SPI_2WIRE
                                     85 	.globl _IEN1_SB_RFIRQ
                                     86 	.globl _IEN1_SB_RFRDY
                                     87 	.globl _P3_SB_D7
                                     88 	.globl _P3_SB_D6
                                     89 	.globl _P3_SB_D5
                                     90 	.globl _P3_SB_D4
                                     91 	.globl _P3_SB_D3
                                     92 	.globl _P3_SB_D2
                                     93 	.globl _P3_SB_D1
                                     94 	.globl _P3_SB_D0
                                     95 	.globl _IEN0_SB_GLOBAL
                                     96 	.globl _IEN0_SB_T2
                                     97 	.globl _IEN0_SB_UART
                                     98 	.globl _IEN0_SB_T1
                                     99 	.globl _IEN0_SB_POFIRQ
                                    100 	.globl _IEN0_SB_T0
                                    101 	.globl _IEN0_SB_IFP
                                    102 	.globl _P2_SB_D7
                                    103 	.globl _P2_SB_D6
                                    104 	.globl _P2_SB_D5
                                    105 	.globl _P2_SB_D4
                                    106 	.globl _P2_SB_D3
                                    107 	.globl _P2_SB_D2
                                    108 	.globl _P2_SB_D1
                                    109 	.globl _P2_SB_D0
                                    110 	.globl _S0CON_SB_SM0
                                    111 	.globl _S0CON_SB_SM1
                                    112 	.globl _S0CON_SB_SM20
                                    113 	.globl _S0CON_SB_REN0
                                    114 	.globl _S0CON_SB_TB80
                                    115 	.globl _S0CON_SB_RB80
                                    116 	.globl _S0CON_SB_TI0
                                    117 	.globl _S0CON_SB_RI0
                                    118 	.globl _P1_SB_D7
                                    119 	.globl _P1_SB_D6
                                    120 	.globl _P1_SB_D5
                                    121 	.globl _P1_SB_D4
                                    122 	.globl _P1_SB_D3
                                    123 	.globl _P1_SB_D2
                                    124 	.globl _P1_SB_D1
                                    125 	.globl _P1_SB_D0
                                    126 	.globl _TCON_SB_TF1
                                    127 	.globl _TCON_SB_TR1
                                    128 	.globl _TCON_SB_TF0
                                    129 	.globl _TCON_SB_TR0
                                    130 	.globl _TCON_SB_IE1
                                    131 	.globl _TCON_SB_IT1
                                    132 	.globl _TCON_SB_IE0
                                    133 	.globl _TCON_SB_IT0
                                    134 	.globl _P0_SB_D7
                                    135 	.globl _P0_SB_D6
                                    136 	.globl _P0_SB_D5
                                    137 	.globl _P0_SB_D4
                                    138 	.globl _P0_SB_D3
                                    139 	.globl _P0_SB_D2
                                    140 	.globl _P0_SB_D1
                                    141 	.globl _P0_SB_D0
                                    142 	.globl _ADCDAT
                                    143 	.globl _S0REL
                                    144 	.globl _T2
                                    145 	.globl _T1
                                    146 	.globl _T0
                                    147 	.globl _CRC
                                    148 	.globl _CC3
                                    149 	.globl _CC2
                                    150 	.globl _CC1
                                    151 	.globl _SPIMDAT
                                    152 	.globl _SPIMSTAT
                                    153 	.globl _SPIMCON1
                                    154 	.globl _SPIMCON0
                                    155 	.globl _FCR
                                    156 	.globl _FPCR
                                    157 	.globl _FSR
                                    158 	.globl _B
                                    159 	.globl _ARCON
                                    160 	.globl _MD5
                                    161 	.globl _MD4
                                    162 	.globl _MD3
                                    163 	.globl _MD2
                                    164 	.globl _MD1
                                    165 	.globl _MD0
                                    166 	.globl _RFCON
                                    167 	.globl _SPIRDAT
                                    168 	.globl _SPIRSTAT
                                    169 	.globl _SPIRCON1
                                    170 	.globl _SPIRCON0
                                    171 	.globl _W2CON0
                                    172 	.globl _W2CON1
                                    173 	.globl _ACC
                                    174 	.globl _CCPDATO
                                    175 	.globl _CCPDATIB
                                    176 	.globl _CCPDATIA
                                    177 	.globl _POFCON
                                    178 	.globl _COMPCON
                                    179 	.globl _W2DAT
                                    180 	.globl _W2SADR
                                    181 	.globl _ADCON
                                    182 	.globl _RNGDAT
                                    183 	.globl _RNGCTL
                                    184 	.globl _ADCDATL
                                    185 	.globl _ADCDATH
                                    186 	.globl _ADCCON1
                                    187 	.globl _ADCCON2
                                    188 	.globl _ADCCON3
                                    189 	.globl _PSW
                                    190 	.globl _WUOPC0
                                    191 	.globl _WUOPC1
                                    192 	.globl _TH2
                                    193 	.globl _TL2
                                    194 	.globl _CRCH
                                    195 	.globl _CRCL
                                    196 	.globl __XPAGE
                                    197 	.globl _MPAGE
                                    198 	.globl _T2CON
                                    199 	.globl _CCH3
                                    200 	.globl _CCL3
                                    201 	.globl _CCH2
                                    202 	.globl _CCL2
                                    203 	.globl _CCH1
                                    204 	.globl _CCL1
                                    205 	.globl _CCEN
                                    206 	.globl _IRCON
                                    207 	.globl _SPISDAT
                                    208 	.globl _SPISSTAT
                                    209 	.globl _SPISCON1
                                    210 	.globl _SPISCON0
                                    211 	.globl _S0RELH
                                    212 	.globl _IP1
                                    213 	.globl _IEN1
                                    214 	.globl _SPISRDSZ
                                    215 	.globl _RTC2CPT00
                                    216 	.globl _RTC2CMP1
                                    217 	.globl _RTC2CMP0
                                    218 	.globl _RTC2CON
                                    219 	.globl _PWMCON
                                    220 	.globl _RSTREAS
                                    221 	.globl _P3
                                    222 	.globl _WDSV
                                    223 	.globl _OPMCON
                                    224 	.globl _CLKLFCTRL
                                    225 	.globl _RTC2CPT10
                                    226 	.globl _RTC2CPT01
                                    227 	.globl _S0RELL
                                    228 	.globl _IP0
                                    229 	.globl _IEN0
                                    230 	.globl _MEMCON
                                    231 	.globl _INTEXP
                                    232 	.globl _WUCON
                                    233 	.globl _PWRDWN
                                    234 	.globl _CLKCTRL
                                    235 	.globl _PWMDC1
                                    236 	.globl _PWMDC0
                                    237 	.globl _P2
                                    238 	.globl _P1CON
                                    239 	.globl _P0CON
                                    240 	.globl _S0BUF
                                    241 	.globl _S0CON
                                    242 	.globl _P2CON
                                    243 	.globl _P3DIR
                                    244 	.globl _P2DIR
                                    245 	.globl _P1DIR
                                    246 	.globl _P0DIR
                                    247 	.globl _DPS
                                    248 	.globl _P1
                                    249 	.globl _P3CON
                                    250 	.globl _TH1
                                    251 	.globl _TH0
                                    252 	.globl _TL1
                                    253 	.globl _TL0
                                    254 	.globl _TMOD
                                    255 	.globl _TCON
                                    256 	.globl _PCON
                                    257 	.globl _DPH1
                                    258 	.globl _DPL1
                                    259 	.globl _DPH
                                    260 	.globl _DPL
                                    261 	.globl _SP
                                    262 	.globl _P0
                                    263 	.globl _beacon
                                    264 	.globl _addr_width
                                    265 	.globl _i
                                    266 	.globl _mcs
                                    267 	.globl _ml
                                    268 	.globl _DHTHum
                                    269 	.globl _DHTTemp
                                    270 	.globl _crc_PARM_2
                                    271 	.globl _advertise_PARM_2
                                    272 	.globl _btleAdvertise_PARM_2
                                    273 	.globl _current
                                    274 	.globl _buffer
                                    275 	.globl _whatHappened_PARM_3
                                    276 	.globl _whatHappened_PARM_2
                                    277 	.globl _openWritingPipe_PARM_5
                                    278 	.globl _openWritingPipe_PARM_4
                                    279 	.globl _openWritingPipe_PARM_3
                                    280 	.globl _openWritingPipe_PARM_2
                                    281 	.globl _openReadingPipe_PARM_6
                                    282 	.globl _openReadingPipe_PARM_5
                                    283 	.globl _openReadingPipe_PARM_4
                                    284 	.globl _openReadingPipe_PARM_3
                                    285 	.globl _openReadingPipe_PARM_2
                                    286 	.globl _setRetries_PARM_2
                                    287 	.globl _write_PARM_3
                                    288 	.globl _write_PARM_2
                                    289 	.globl _read_PARM_2
                                    290 	.globl _radio_temp
                                    291 	.globl _txRxDelay
                                    292 	.globl _pipe0_reading_address
                                    293 	.globl _aesGaloisMultiply_PARM_2
                                    294 	.globl _eepromWrite_PARM_2
                                    295 	.globl _wireRead16_PARM_2
                                    296 	.globl _wireRead8_PARM_2
                                    297 	.globl _wireWrite8_PARM_2
                                    298 	.globl _data_byte
                                    299 	.globl _address_byte
                                    300 	.globl _control_byte
                                    301 	.globl _serialBegin
                                    302 	.globl _putchar
                                    303 	.globl _getchar
                                    304 	.globl _wireWrite8
                                    305 	.globl _wireRead8
                                    306 	.globl _wireRead16
                                    307 	.globl _eepromRead
                                    308 	.globl _eepromWrite
                                    309 	.globl _radioBegin
                                    310 	.globl _read
                                    311 	.globl _write
                                    312 	.globl _setRetries
                                    313 	.globl _setChannel
                                    314 	.globl _setDataRate
                                    315 	.globl _setAutoAck
                                    316 	.globl _setCRCLength
                                    317 	.globl _setPALevel
                                    318 	.globl _setAddressWidth
                                    319 	.globl _openReadingPipe
                                    320 	.globl _openWritingPipe
                                    321 	.globl _available
                                    322 	.globl _startListening
                                    323 	.globl _closeReadingPipe
                                    324 	.globl _stopListening
                                    325 	.globl _whatHappened
                                    326 	.globl _getDynamicPayloadSize
                                    327 	.globl _enableDynamicPayloads
                                    328 	.globl _testRPD
                                    329 	.globl _testCarrier
                                    330 	.globl _getPALevel
                                    331 	.globl _getDataRate
                                    332 	.globl _getCRCLength
                                    333 	.globl _btleBegin
                                    334 	.globl _btleHopChannel
                                    335 	.globl _btleAdvertise
                                    336 	.globl _advertise
                                    337 	.globl _crc
                                    338 	.globl _whiten
                                    339 	.globl _setup
                                    340 	.globl _loop
                                    341 ;--------------------------------------------------------
                                    342 ; special function registers
                                    343 ;--------------------------------------------------------
                                    344 	.area RSEG    (ABS,DATA)
      000000                        345 	.org 0x0000
                           000080   346 _P0	=	0x0080
                           000081   347 _SP	=	0x0081
                           000082   348 _DPL	=	0x0082
                           000083   349 _DPH	=	0x0083
                           000084   350 _DPL1	=	0x0084
                           000085   351 _DPH1	=	0x0085
                           000087   352 _PCON	=	0x0087
                           000088   353 _TCON	=	0x0088
                           000089   354 _TMOD	=	0x0089
                           00008A   355 _TL0	=	0x008a
                           00008B   356 _TL1	=	0x008b
                           00008C   357 _TH0	=	0x008c
                           00008D   358 _TH1	=	0x008d
                           00008F   359 _P3CON	=	0x008f
                           000090   360 _P1	=	0x0090
                           000092   361 _DPS	=	0x0092
                           000093   362 _P0DIR	=	0x0093
                           000094   363 _P1DIR	=	0x0094
                           000095   364 _P2DIR	=	0x0095
                           000096   365 _P3DIR	=	0x0096
                           000097   366 _P2CON	=	0x0097
                           000098   367 _S0CON	=	0x0098
                           000099   368 _S0BUF	=	0x0099
                           00009E   369 _P0CON	=	0x009e
                           00009F   370 _P1CON	=	0x009f
                           0000A0   371 _P2	=	0x00a0
                           0000A1   372 _PWMDC0	=	0x00a1
                           0000A2   373 _PWMDC1	=	0x00a2
                           0000A3   374 _CLKCTRL	=	0x00a3
                           0000A4   375 _PWRDWN	=	0x00a4
                           0000A5   376 _WUCON	=	0x00a5
                           0000A6   377 _INTEXP	=	0x00a6
                           0000A7   378 _MEMCON	=	0x00a7
                           0000A8   379 _IEN0	=	0x00a8
                           0000A9   380 _IP0	=	0x00a9
                           0000AA   381 _S0RELL	=	0x00aa
                           0000AB   382 _RTC2CPT01	=	0x00ab
                           0000AC   383 _RTC2CPT10	=	0x00ac
                           0000AD   384 _CLKLFCTRL	=	0x00ad
                           0000AE   385 _OPMCON	=	0x00ae
                           0000AF   386 _WDSV	=	0x00af
                           0000B0   387 _P3	=	0x00b0
                           0000B1   388 _RSTREAS	=	0x00b1
                           0000B2   389 _PWMCON	=	0x00b2
                           0000B3   390 _RTC2CON	=	0x00b3
                           0000B4   391 _RTC2CMP0	=	0x00b4
                           0000B5   392 _RTC2CMP1	=	0x00b5
                           0000B6   393 _RTC2CPT00	=	0x00b6
                           0000B7   394 _SPISRDSZ	=	0x00b7
                           0000B8   395 _IEN1	=	0x00b8
                           0000B9   396 _IP1	=	0x00b9
                           0000BA   397 _S0RELH	=	0x00ba
                           0000BC   398 _SPISCON0	=	0x00bc
                           0000BD   399 _SPISCON1	=	0x00bd
                           0000BE   400 _SPISSTAT	=	0x00be
                           0000BF   401 _SPISDAT	=	0x00bf
                           0000C0   402 _IRCON	=	0x00c0
                           0000C1   403 _CCEN	=	0x00c1
                           0000C2   404 _CCL1	=	0x00c2
                           0000C3   405 _CCH1	=	0x00c3
                           0000C4   406 _CCL2	=	0x00c4
                           0000C5   407 _CCH2	=	0x00c5
                           0000C6   408 _CCL3	=	0x00c6
                           0000C7   409 _CCH3	=	0x00c7
                           0000C8   410 _T2CON	=	0x00c8
                           0000C9   411 _MPAGE	=	0x00c9
                           0000C9   412 __XPAGE	=	0x00c9
                           0000CA   413 _CRCL	=	0x00ca
                           0000CB   414 _CRCH	=	0x00cb
                           0000CC   415 _TL2	=	0x00cc
                           0000CD   416 _TH2	=	0x00cd
                           0000CE   417 _WUOPC1	=	0x00ce
                           0000CF   418 _WUOPC0	=	0x00cf
                           0000D0   419 _PSW	=	0x00d0
                           0000D1   420 _ADCCON3	=	0x00d1
                           0000D2   421 _ADCCON2	=	0x00d2
                           0000D3   422 _ADCCON1	=	0x00d3
                           0000D4   423 _ADCDATH	=	0x00d4
                           0000D5   424 _ADCDATL	=	0x00d5
                           0000D6   425 _RNGCTL	=	0x00d6
                           0000D7   426 _RNGDAT	=	0x00d7
                           0000D8   427 _ADCON	=	0x00d8
                           0000D9   428 _W2SADR	=	0x00d9
                           0000DA   429 _W2DAT	=	0x00da
                           0000DB   430 _COMPCON	=	0x00db
                           0000DC   431 _POFCON	=	0x00dc
                           0000DD   432 _CCPDATIA	=	0x00dd
                           0000DE   433 _CCPDATIB	=	0x00de
                           0000DF   434 _CCPDATO	=	0x00df
                           0000E0   435 _ACC	=	0x00e0
                           0000E1   436 _W2CON1	=	0x00e1
                           0000E2   437 _W2CON0	=	0x00e2
                           0000E4   438 _SPIRCON0	=	0x00e4
                           0000E5   439 _SPIRCON1	=	0x00e5
                           0000E6   440 _SPIRSTAT	=	0x00e6
                           0000E7   441 _SPIRDAT	=	0x00e7
                           0000E8   442 _RFCON	=	0x00e8
                           0000E9   443 _MD0	=	0x00e9
                           0000EA   444 _MD1	=	0x00ea
                           0000EB   445 _MD2	=	0x00eb
                           0000EC   446 _MD3	=	0x00ec
                           0000ED   447 _MD4	=	0x00ed
                           0000EE   448 _MD5	=	0x00ee
                           0000EF   449 _ARCON	=	0x00ef
                           0000F0   450 _B	=	0x00f0
                           0000F8   451 _FSR	=	0x00f8
                           0000F9   452 _FPCR	=	0x00f9
                           0000FA   453 _FCR	=	0x00fa
                           0000FC   454 _SPIMCON0	=	0x00fc
                           0000FD   455 _SPIMCON1	=	0x00fd
                           0000FE   456 _SPIMSTAT	=	0x00fe
                           0000FF   457 _SPIMDAT	=	0x00ff
                           00C3C2   458 _CC1	=	0xc3c2
                           00C5C4   459 _CC2	=	0xc5c4
                           00C7C6   460 _CC3	=	0xc7c6
                           00CBCA   461 _CRC	=	0xcbca
                           008C8A   462 _T0	=	0x8c8a
                           008D8B   463 _T1	=	0x8d8b
                           00CDCC   464 _T2	=	0xcdcc
                           00BAAA   465 _S0REL	=	0xbaaa
                           00D4D5   466 _ADCDAT	=	0xd4d5
                                    467 ;--------------------------------------------------------
                                    468 ; special function bits
                                    469 ;--------------------------------------------------------
                                    470 	.area RSEG    (ABS,DATA)
      000000                        471 	.org 0x0000
                           000080   472 _P0_SB_D0	=	0x0080
                           000081   473 _P0_SB_D1	=	0x0081
                           000082   474 _P0_SB_D2	=	0x0082
                           000083   475 _P0_SB_D3	=	0x0083
                           000084   476 _P0_SB_D4	=	0x0084
                           000085   477 _P0_SB_D5	=	0x0085
                           000086   478 _P0_SB_D6	=	0x0086
                           000087   479 _P0_SB_D7	=	0x0087
                           000088   480 _TCON_SB_IT0	=	0x0088
                           000089   481 _TCON_SB_IE0	=	0x0089
                           00008A   482 _TCON_SB_IT1	=	0x008a
                           00008B   483 _TCON_SB_IE1	=	0x008b
                           00008C   484 _TCON_SB_TR0	=	0x008c
                           00008D   485 _TCON_SB_TF0	=	0x008d
                           00008E   486 _TCON_SB_TR1	=	0x008e
                           00008F   487 _TCON_SB_TF1	=	0x008f
                           000090   488 _P1_SB_D0	=	0x0090
                           000091   489 _P1_SB_D1	=	0x0091
                           000092   490 _P1_SB_D2	=	0x0092
                           000093   491 _P1_SB_D3	=	0x0093
                           000094   492 _P1_SB_D4	=	0x0094
                           000095   493 _P1_SB_D5	=	0x0095
                           000096   494 _P1_SB_D6	=	0x0096
                           000097   495 _P1_SB_D7	=	0x0097
                           000098   496 _S0CON_SB_RI0	=	0x0098
                           000099   497 _S0CON_SB_TI0	=	0x0099
                           00009A   498 _S0CON_SB_RB80	=	0x009a
                           00009B   499 _S0CON_SB_TB80	=	0x009b
                           00009C   500 _S0CON_SB_REN0	=	0x009c
                           00009D   501 _S0CON_SB_SM20	=	0x009d
                           00009E   502 _S0CON_SB_SM1	=	0x009e
                           00009F   503 _S0CON_SB_SM0	=	0x009f
                           0000A0   504 _P2_SB_D0	=	0x00a0
                           0000A1   505 _P2_SB_D1	=	0x00a1
                           0000A2   506 _P2_SB_D2	=	0x00a2
                           0000A3   507 _P2_SB_D3	=	0x00a3
                           0000A4   508 _P2_SB_D4	=	0x00a4
                           0000A5   509 _P2_SB_D5	=	0x00a5
                           0000A6   510 _P2_SB_D6	=	0x00a6
                           0000A7   511 _P2_SB_D7	=	0x00a7
                           0000A8   512 _IEN0_SB_IFP	=	0x00a8
                           0000A9   513 _IEN0_SB_T0	=	0x00a9
                           0000AA   514 _IEN0_SB_POFIRQ	=	0x00aa
                           0000AB   515 _IEN0_SB_T1	=	0x00ab
                           0000AC   516 _IEN0_SB_UART	=	0x00ac
                           0000AD   517 _IEN0_SB_T2	=	0x00ad
                           0000AF   518 _IEN0_SB_GLOBAL	=	0x00af
                           0000B0   519 _P3_SB_D0	=	0x00b0
                           0000B1   520 _P3_SB_D1	=	0x00b1
                           0000B2   521 _P3_SB_D2	=	0x00b2
                           0000B3   522 _P3_SB_D3	=	0x00b3
                           0000B4   523 _P3_SB_D4	=	0x00b4
                           0000B5   524 _P3_SB_D5	=	0x00b5
                           0000B6   525 _P3_SB_D6	=	0x00b6
                           0000B7   526 _P3_SB_D7	=	0x00b7
                           0000B8   527 _IEN1_SB_RFRDY	=	0x00b8
                           0000B9   528 _IEN1_SB_RFIRQ	=	0x00b9
                           0000BA   529 _IEN1_SB_SPI_2WIRE	=	0x00ba
                           0000BB   530 _IEN1_SB_WUOPIRQ	=	0x00bb
                           0000BC   531 _IEN1_SB_MISCIRQ	=	0x00bc
                           0000BD   532 _IEN1_SB_TICK	=	0x00bd
                           0000BF   533 _IEN1_SB_T2EXTRLD	=	0x00bf
                           0000C0   534 _IRCON_SB_RFRDY	=	0x00c0
                           0000C1   535 _IRCON_SB_RFIRQ	=	0x00c1
                           0000C2   536 _IRCON_SB_SPI_2WIRE	=	0x00c2
                           0000C3   537 _IRCON_SB_WUOPIRQ	=	0x00c3
                           0000C4   538 _IRCON_SB_MISCIRQ	=	0x00c4
                           0000C5   539 _IRCON_SB_TICK	=	0x00c5
                           0000C6   540 _IRCON_SB_TF2	=	0x00c6
                           0000C7   541 _IRCON_SB_EXF2	=	0x00c7
                           0000C8   542 _T2CON_SB_T2I0	=	0x00c8
                           0000C9   543 _T2CON_SB_T2I1	=	0x00c9
                           0000CA   544 _T2CON_SB_T2CM	=	0x00ca
                           0000CB   545 _T2CON_SB_T2R0	=	0x00cb
                           0000CC   546 _T2CON_SB_T2R1	=	0x00cc
                           0000CD   547 _T2CON_SB_I2FR	=	0x00cd
                           0000CE   548 _T2CON_SB_I3FR	=	0x00ce
                           0000CF   549 _T2CON_SB_T2PS	=	0x00cf
                           0000D7   550 _PSW_SB_CY	=	0x00d7
                           0000D6   551 _PSW_SB_AC	=	0x00d6
                           0000D5   552 _PSW_SB_F0	=	0x00d5
                           0000D4   553 _PSW_SB_RS1	=	0x00d4
                           0000D3   554 _PSW_SB_RS0	=	0x00d3
                           0000D2   555 _PSW_SB_OV	=	0x00d2
                           0000D1   556 _PSW_SB_F1	=	0x00d1
                           0000D0   557 _PSW_SB_P	=	0x00d0
                           0000DF   558 _ADCON_SB_BD	=	0x00df
                           0000E8   559 _RFCON_SB_RFCE	=	0x00e8
                           0000E9   560 _RFCON_SB_RFCSN	=	0x00e9
                           0000EA   561 _RFCON_SB_RFCKEN	=	0x00ea
                           0000FA   562 _FSR_SB_RDISMB	=	0x00fa
                           0000FB   563 _FSR_SB_INFEN	=	0x00fb
                           0000FC   564 _FSR_SB_RDYN	=	0x00fc
                           0000FD   565 _FSR_SB_WEN	=	0x00fd
                           0000FE   566 _FSR_SB_STP	=	0x00fe
                           0000FF   567 _FSR_SB_ENDBG	=	0x00ff
                                    568 ;--------------------------------------------------------
                                    569 ; overlayable register banks
                                    570 ;--------------------------------------------------------
                                    571 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        572 	.ds 8
                                    573 ;--------------------------------------------------------
                                    574 ; internal ram data
                                    575 ;--------------------------------------------------------
                                    576 	.area DSEG    (DATA)
      000008                        577 _advertise_sloc0_1_0:
      000008                        578 	.ds 2
                                    579 ;--------------------------------------------------------
                                    580 ; overlayable items in internal ram 
                                    581 ;--------------------------------------------------------
                                    582 	.area	OSEG    (OVR,DATA)
      00000A                        583 _crc_sloc0_1_0:
      00000A                        584 	.ds 3
      00000D                        585 _crc_sloc1_1_0:
      00000D                        586 	.ds 3
                                    587 ;--------------------------------------------------------
                                    588 ; Stack segment in internal ram 
                                    589 ;--------------------------------------------------------
                                    590 	.area	SSEG
      000010                        591 __start__stack:
      000010                        592 	.ds	1
                                    593 
                                    594 ;--------------------------------------------------------
                                    595 ; indirectly addressable internal ram data
                                    596 ;--------------------------------------------------------
                                    597 	.area ISEG    (DATA)
                                    598 ;--------------------------------------------------------
                                    599 ; absolute internal ram data
                                    600 ;--------------------------------------------------------
                                    601 	.area IABS    (ABS,DATA)
                                    602 	.area IABS    (ABS,DATA)
                                    603 ;--------------------------------------------------------
                                    604 ; bit data
                                    605 ;--------------------------------------------------------
                                    606 	.area BSEG    (BIT)
                                    607 ;--------------------------------------------------------
                                    608 ; paged external ram data
                                    609 ;--------------------------------------------------------
                                    610 	.area PSEG    (PAG,XDATA)
                                    611 ;--------------------------------------------------------
                                    612 ; external ram data
                                    613 ;--------------------------------------------------------
                                    614 	.area XSEG    (XDATA)
      000000                        615 _control_byte::
      000000                        616 	.ds 1
      000001                        617 _address_byte::
      000001                        618 	.ds 1
      000002                        619 _data_byte::
      000002                        620 	.ds 1
      000003                        621 _putchar_c_1_102:
      000003                        622 	.ds 1
      000004                        623 _wireWrite8_PARM_2:
      000004                        624 	.ds 1
      000005                        625 _wireWrite8_slave_address_1_105:
      000005                        626 	.ds 1
      000006                        627 _wireRead8_PARM_2:
      000006                        628 	.ds 1
      000007                        629 _wireRead8_slave_address_1_109:
      000007                        630 	.ds 1
      000008                        631 _wireRead8_wr8data_1_110:
      000008                        632 	.ds 1
      000009                        633 _wireRead16_PARM_2:
      000009                        634 	.ds 1
      00000A                        635 _wireRead16_slave_address_1_113:
      00000A                        636 	.ds 1
      00000B                        637 _wireRead16_wr16data_1_114:
      00000B                        638 	.ds 2
      00000D                        639 _eepromRead_address_1_117:
      00000D                        640 	.ds 2
      00000F                        641 _eepromWrite_PARM_2:
      00000F                        642 	.ds 1
      000010                        643 _eepromWrite_address_1_120:
      000010                        644 	.ds 2
      000012                        645 _aesGaloisMultiply_PARM_2:
      000012                        646 	.ds 1
      000013                        647 _aesGaloisMultiply_value1_1_123:
      000013                        648 	.ds 1
      000014                        649 _pipe0_reading_address::
      000014                        650 	.ds 5
      000019                        651 _txRxDelay::
      000019                        652 	.ds 1
      00001A                        653 _radio_temp::
      00001A                        654 	.ds 1
      00001B                        655 _read_PARM_2:
      00001B                        656 	.ds 1
      00001C                        657 _read_buf_1_184:
      00001C                        658 	.ds 3
      00001F                        659 _read_status_1_185:
      00001F                        660 	.ds 1
      000020                        661 _write_PARM_2:
      000020                        662 	.ds 1
      000021                        663 _write_PARM_3:
      000021                        664 	.ds 1
      000022                        665 _write_buf_1_186:
      000022                        666 	.ds 3
      000025                        667 _write_status_1_187:
      000025                        668 	.ds 1
      000026                        669 _setRetries_PARM_2:
      000026                        670 	.ds 1
      000027                        671 _setRetries_delay_ms_1_191:
      000027                        672 	.ds 1
      000028                        673 _setRetries_reg_1_192:
      000028                        674 	.ds 1
      000029                        675 _setChannel_channel_1_193:
      000029                        676 	.ds 1
      00002A                        677 _setDataRate_speed_1_195:
      00002A                        678 	.ds 1
      00002B                        679 _setDataRate_setup_1_196:
      00002B                        680 	.ds 1
      00002C                        681 _setAutoAck_enable_1_200:
      00002C                        682 	.ds 1
      00002D                        683 _setAutoAck_buffer_1_201:
      00002D                        684 	.ds 1
      00002E                        685 _setCRCLength_length_1_202:
      00002E                        686 	.ds 1
      00002F                        687 _setCRCLength_buffer_1_203:
      00002F                        688 	.ds 1
      000030                        689 _setPALevel_level_1_204:
      000030                        690 	.ds 1
      000031                        691 _setPALevel_setup_1_205:
      000031                        692 	.ds 1
      000032                        693 _setAddressWidth_a_width_1_206:
      000032                        694 	.ds 1
      000033                        695 _setAddressWidth_aw_1_207:
      000033                        696 	.ds 1
      000034                        697 _openReadingPipe_PARM_2:
      000034                        698 	.ds 1
      000035                        699 _openReadingPipe_PARM_3:
      000035                        700 	.ds 1
      000036                        701 _openReadingPipe_PARM_4:
      000036                        702 	.ds 1
      000037                        703 _openReadingPipe_PARM_5:
      000037                        704 	.ds 1
      000038                        705 _openReadingPipe_PARM_6:
      000038                        706 	.ds 1
      000039                        707 _openReadingPipe_child_1_209:
      000039                        708 	.ds 1
      00003A                        709 _openReadingPipe_setup_1_210:
      00003A                        710 	.ds 1
      00003B                        711 _openReadingPipe_orpdata_1_210:
      00003B                        712 	.ds 5
      000040                        713 _openWritingPipe_PARM_2:
      000040                        714 	.ds 1
      000041                        715 _openWritingPipe_PARM_3:
      000041                        716 	.ds 1
      000042                        717 _openWritingPipe_PARM_4:
      000042                        718 	.ds 1
      000043                        719 _openWritingPipe_PARM_5:
      000043                        720 	.ds 1
      000044                        721 _openWritingPipe_address1_1_213:
      000044                        722 	.ds 1
      000045                        723 _openWritingPipe_setup_1_214:
      000045                        724 	.ds 1
      000046                        725 _openWritingPipe_owpdata_1_214:
      000046                        726 	.ds 5
      00004B                        727 _available_pipe_num_1_215:
      00004B                        728 	.ds 3
      00004E                        729 _available_buffer_1_216:
      00004E                        730 	.ds 1
      00004F                        731 _startListening_config_1_219:
      00004F                        732 	.ds 1
      000050                        733 _closeReadingPipe_config_1_223:
      000050                        734 	.ds 1
      000051                        735 _stopListening_config_1_225:
      000051                        736 	.ds 1
      000052                        737 _whatHappened_PARM_2:
      000052                        738 	.ds 3
      000055                        739 _whatHappened_PARM_3:
      000055                        740 	.ds 3
      000058                        741 _whatHappened_tx_ok_1_226:
      000058                        742 	.ds 3
      00005B                        743 _getDynamicPayloadSize_dps_1_228:
      00005B                        744 	.ds 1
      00005C                        745 _getPALevel_power_1_232:
      00005C                        746 	.ds 1
      00005D                        747 _getPALevel_result_1_232:
      00005D                        748 	.ds 1
      00005E                        749 _getDataRate_dr_1_238:
      00005E                        750 	.ds 1
      00005F                        751 _getDataRate_result_1_238:
      00005F                        752 	.ds 1
      000060                        753 _getCRCLength_config_1_243:
      000060                        754 	.ds 1
      000061                        755 _getCRCLength_result_1_243:
      000061                        756 	.ds 1
      000062                        757 _buffer::
      000062                        758 	.ds 32
      000082                        759 _current::
      000082                        760 	.ds 1
      000083                        761 _swapbuf_len_1_250:
      000083                        762 	.ds 1
      000084                        763 _swapbuf_a_2_252:
      000084                        764 	.ds 1
      000085                        765 _swapbuf_v_2_252:
      000085                        766 	.ds 1
      000086                        767 _btlesetChannel_num_1_254:
      000086                        768 	.ds 1
      000087                        769 _btleAdvertise_PARM_2:
      000087                        770 	.ds 1
      000088                        771 _btleAdvertise_buf_1_257:
      000088                        772 	.ds 3
      00008B                        773 _advertise_PARM_2:
      00008B                        774 	.ds 1
      00008C                        775 _advertise_buf_1_259:
      00008C                        776 	.ds 3
      00008F                        777 _crc_PARM_2:
      00008F                        778 	.ds 3
      000092                        779 _crc_len_1_261:
      000092                        780 	.ds 1
      000093                        781 _crc_i_1_262:
      000093                        782 	.ds 1
      000094                        783 _crc_d_2_263:
      000094                        784 	.ds 1
      000095                        785 _whiten_len_1_266:
      000095                        786 	.ds 1
      000096                        787 _whiten_i_1_267:
      000096                        788 	.ds 1
      000097                        789 _whiten_lfsr_1_267:
      000097                        790 	.ds 1
      000098                        791 _whiten_res_2_268:
      000098                        792 	.ds 1
      000099                        793 _DHTTemp::
      000099                        794 	.ds 2
      00009B                        795 _DHTHum::
      00009B                        796 	.ds 2
                                    797 ;--------------------------------------------------------
                                    798 ; absolute external ram data
                                    799 ;--------------------------------------------------------
                                    800 	.area XABS    (ABS,XDATA)
                                    801 ;--------------------------------------------------------
                                    802 ; external initialized ram data
                                    803 ;--------------------------------------------------------
                                    804 	.area XISEG   (XDATA)
      0000BE                        805 _ml::
      0000BE                        806 	.ds 4
      0000C2                        807 _mcs::
      0000C2                        808 	.ds 1
      0000C3                        809 _i::
      0000C3                        810 	.ds 2
      0000C5                        811 _addr_width::
      0000C5                        812 	.ds 1
      0000C6                        813 _beacon::
      0000C6                        814 	.ds 17
                                    815 	.area HOME    (CODE)
                                    816 	.area GSINIT0 (CODE)
                                    817 	.area GSINIT1 (CODE)
                                    818 	.area GSINIT2 (CODE)
                                    819 	.area GSINIT3 (CODE)
                                    820 	.area GSINIT4 (CODE)
                                    821 	.area GSINIT5 (CODE)
                                    822 	.area GSINIT  (CODE)
                                    823 	.area GSFINAL (CODE)
                                    824 	.area CSEG    (CODE)
                                    825 ;--------------------------------------------------------
                                    826 ; interrupt vector 
                                    827 ;--------------------------------------------------------
                                    828 	.area HOME    (CODE)
      000000                        829 __interrupt_vect:
      000000 02 00 11         [24]  830 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  831 	reti
      000004                        832 	.ds	7
      00000B 02 00 6D         [24]  833 	ljmp	_isrINTERRUPT_VECTOR_T0
                                    834 ;--------------------------------------------------------
                                    835 ; global & static initialisations
                                    836 ;--------------------------------------------------------
                                    837 	.area HOME    (CODE)
                                    838 	.area GSINIT  (CODE)
                                    839 	.area GSFINAL (CODE)
                                    840 	.area GSINIT  (CODE)
                                    841 	.globl __sdcc_gsinit_startup
                                    842 	.globl __sdcc_program_startup
                                    843 	.globl __start__stack
                                    844 	.globl __mcs51_genXINIT
                                    845 	.globl __mcs51_genXRAMCLEAR
                                    846 	.globl __mcs51_genRAMCLEAR
                                    847 	.area GSFINAL (CODE)
      00006A 02 00 0E         [24]  848 	ljmp	__sdcc_program_startup
                                    849 ;--------------------------------------------------------
                                    850 ; Home
                                    851 ;--------------------------------------------------------
                                    852 	.area HOME    (CODE)
                                    853 	.area HOME    (CODE)
      00000E                        854 __sdcc_program_startup:
      00000E 02 00 CA         [24]  855 	ljmp	_main
                                    856 ;	return from main will return to caller
                                    857 ;--------------------------------------------------------
                                    858 ; code
                                    859 ;--------------------------------------------------------
                                    860 	.area CSEG    (CODE)
                                    861 ;------------------------------------------------------------
                                    862 ;Allocation info for local variables in function 'isrINTERRUPT_VECTOR_T0'
                                    863 ;------------------------------------------------------------
                                    864 ;	include/wiring.h:91: ISR(INTERRUPT_VECTOR_T0){
                                    865 ;	-----------------------------------------
                                    866 ;	 function isrINTERRUPT_VECTOR_T0
                                    867 ;	-----------------------------------------
      00006D                        868 _isrINTERRUPT_VECTOR_T0:
                           000007   869 	ar7 = 0x07
                           000006   870 	ar6 = 0x06
                           000005   871 	ar5 = 0x05
                           000004   872 	ar4 = 0x04
                           000003   873 	ar3 = 0x03
                           000002   874 	ar2 = 0x02
                           000001   875 	ar1 = 0x01
                           000000   876 	ar0 = 0x00
      00006D C0 E0            [24]  877 	push	acc
      00006F C0 82            [24]  878 	push	dpl
      000071 C0 83            [24]  879 	push	dph
      000073 C0 07            [24]  880 	push	ar7
      000075 C0 D0            [24]  881 	push	psw
      000077 75 D0 00         [24]  882 	mov	psw,#0x00
                                    883 ;	include/wiring.h:92: TL0 = TLSTART;
      00007A 75 8A 22         [24]  884 	mov	_TL0,#0x22
                                    885 ;	include/wiring.h:94: if (mcs>=6)
      00007D 90 00 C2         [24]  886 	mov	dptr,#_mcs
      000080 E0               [24]  887 	movx	a,@dptr
      000081 FF               [12]  888 	mov	r7,a
      000082 BF 06 00         [24]  889 	cjne	r7,#0x06,00108$
      000085                        890 00108$:
      000085 40 1B            [24]  891 	jc	00102$
                                    892 ;	include/wiring.h:96: ml++;
      000087 90 00 BE         [24]  893 	mov	dptr,#_ml
      00008A E0               [24]  894 	movx	a,@dptr
      00008B 24 01            [12]  895 	add	a,#0x01
      00008D F0               [24]  896 	movx	@dptr,a
      00008E A3               [24]  897 	inc	dptr
      00008F E0               [24]  898 	movx	a,@dptr
      000090 34 00            [12]  899 	addc	a,#0x00
      000092 F0               [24]  900 	movx	@dptr,a
      000093 A3               [24]  901 	inc	dptr
      000094 E0               [24]  902 	movx	a,@dptr
      000095 34 00            [12]  903 	addc	a,#0x00
      000097 F0               [24]  904 	movx	@dptr,a
      000098 A3               [24]  905 	inc	dptr
      000099 E0               [24]  906 	movx	a,@dptr
      00009A 34 00            [12]  907 	addc	a,#0x00
      00009C F0               [24]  908 	movx	@dptr,a
                                    909 ;	include/wiring.h:97: mcs=0;
      00009D 90 00 C2         [24]  910 	mov	dptr,#_mcs
      0000A0 E4               [12]  911 	clr	a
      0000A1 F0               [24]  912 	movx	@dptr,a
      0000A2                        913 00102$:
                                    914 ;	include/wiring.h:100: mcs++;
      0000A2 90 00 C2         [24]  915 	mov	dptr,#_mcs
      0000A5 E0               [24]  916 	movx	a,@dptr
      0000A6 24 01            [12]  917 	add	a,#0x01
      0000A8 F0               [24]  918 	movx	@dptr,a
      0000A9 D0 D0            [24]  919 	pop	psw
      0000AB D0 07            [24]  920 	pop	ar7
      0000AD D0 83            [24]  921 	pop	dph
      0000AF D0 82            [24]  922 	pop	dpl
      0000B1 D0 E0            [24]  923 	pop	acc
      0000B3 32               [24]  924 	reti
                                    925 ;	eliminated unneeded push/pop b
                                    926 ;------------------------------------------------------------
                                    927 ;Allocation info for local variables in function 'millisBegin'
                                    928 ;------------------------------------------------------------
                                    929 ;	include/wiring.h:103: void millisBegin()
                                    930 ;	-----------------------------------------
                                    931 ;	 function millisBegin
                                    932 ;	-----------------------------------------
      0000B4                        933 _millisBegin:
                                    934 ;	include/wiring.h:105: interrupt_control_global_enable();
      0000B4 D2 AF            [12]  935 	setb _IEN0_SB_GLOBAL 
                                    936 ;	include/wiring.h:106: interrupt_control_t0_enable()	;
      0000B6 D2 A9            [12]  937 	setb _IEN0_SB_T0 
                                    938 ;	include/wiring.h:107: timer0_configure(TIMER0_CONFIG_OPTION_MODE_3_TWO_8_BIT_CTRS_TMRS,TLSTART);
      0000B8 90 00 00         [24]  939 	mov	dptr,#_timer0_configure_PARM_2
      0000BB 74 22            [12]  940 	mov	a,#0x22
      0000BD F0               [24]  941 	movx	@dptr,a
      0000BE E4               [12]  942 	clr	a
      0000BF A3               [24]  943 	inc	dptr
      0000C0 F0               [24]  944 	movx	@dptr,a
      0000C1 75 82 03         [24]  945 	mov	dpl,#0x03
      0000C4 12 00 00         [24]  946 	lcall	_timer0_configure
                                    947 ;	include/wiring.h:108: timer0_run();
      0000C7 D2 8C            [12]  948 	setb _TCON_SB_TR0 
      0000C9 22               [24]  949 	ret
                                    950 ;------------------------------------------------------------
                                    951 ;Allocation info for local variables in function 'main'
                                    952 ;------------------------------------------------------------
                                    953 ;	include/wiring.h:247: void main(){
                                    954 ;	-----------------------------------------
                                    955 ;	 function main
                                    956 ;	-----------------------------------------
      0000CA                        957 _main:
                                    958 ;	include/wiring.h:249: adc_configure ((uint16_t)ADC_CONFIG_OPTION_RESOLUTION_12_BITS|ADC_CONFIG_OPTION_REF_SELECT_VDD |ADC_CONFIG_OPTION_RESULT_JUSTIFICATION_RIGHT);
      0000CA 90 E1 00         [24]  959 	mov	dptr,#0xE100
      0000CD 12 00 00         [24]  960 	lcall	_adc_configure
                                    961 ;	include/wiring.h:250: pwm_configure(PWM_CONFIG_OPTION_PRESCALER_VAL_10 || PWM_CONFIG_OPTION_WIDTH_8_BITS);
      0000D0 75 82 01         [24]  962 	mov	dpl,#0x01
      0000D3 12 00 00         [24]  963 	lcall	_pwm_configure
                                    964 ;	include/wiring.h:255: GPIO_PIN_CONFIG_OPTION_PIN_MODE_INPUT_BUFFER_ON_PULL_UP_RESISTOR);
      0000D6 90 00 00         [24]  965 	mov	dptr,#_gpio_pin_configure_PARM_2
      0000D9 74 40            [12]  966 	mov	a,#0x40
      0000DB F0               [24]  967 	movx	@dptr,a
      0000DC 75 82 04         [24]  968 	mov	dpl,#0x04
      0000DF 12 00 00         [24]  969 	lcall	_gpio_pin_configure
                                    970 ;	include/wiring.h:259: GPIO_PIN_CONFIG_OPTION_PIN_MODE_INPUT_BUFFER_ON_PULL_UP_RESISTOR);
      0000E2 90 00 00         [24]  971 	mov	dptr,#_gpio_pin_configure_PARM_2
      0000E5 74 40            [12]  972 	mov	a,#0x40
      0000E7 F0               [24]  973 	movx	@dptr,a
      0000E8 75 82 05         [24]  974 	mov	dpl,#0x05
      0000EB 12 00 00         [24]  975 	lcall	_gpio_pin_configure
                                    976 ;	include/wiring.h:261: w2_configure(W2_CONFIG_OPTION_ENABLE | W2_CONFIG_OPTION_MODE_MASTER | W2_CONFIG_OPTION_CLOCK_FREQ_400_KHZ | W2_CONFIG_OPTION_ALL_INTERRUPTS_ENABLE, 0);
      0000EE 90 00 00         [24]  977 	mov	dptr,#_w2_configure_PARM_2
      0000F1 E4               [12]  978 	clr	a
      0000F2 F0               [24]  979 	movx	@dptr,a
      0000F3 90 00 0B         [24]  980 	mov	dptr,#0x000B
      0000F6 12 00 00         [24]  981 	lcall	_w2_configure
                                    982 ;	include/wiring.h:263: setup();
      0000F9 12 12 21         [24]  983 	lcall	_setup
                                    984 ;	include/wiring.h:264: while(1){loop();}
      0000FC                        985 00102$:
      0000FC 12 12 64         [24]  986 	lcall	_loop
      0000FF 80 FB            [24]  987 	sjmp	00102$
                                    988 ;------------------------------------------------------------
                                    989 ;Allocation info for local variables in function 'serialBegin'
                                    990 ;------------------------------------------------------------
                                    991 ;	include/wiring.h:267: void serialBegin(){
                                    992 ;	-----------------------------------------
                                    993 ;	 function serialBegin
                                    994 ;	-----------------------------------------
      000101                        995 _serialBegin:
                                    996 ;	include/wiring.h:273: GPIO_PIN_CONFIG_OPTION_PIN_MODE_OUTPUT_BUFFER_NORMAL_DRIVE_STRENGTH);
      000101 90 00 00         [24]  997 	mov	dptr,#_gpio_pin_configure_PARM_2
      000104 74 03            [12]  998 	mov	a,#0x03
      000106 F0               [24]  999 	movx	@dptr,a
      000107 75 82 03         [24] 1000 	mov	dpl,#0x03
      00010A 12 00 00         [24] 1001 	lcall	_gpio_pin_configure
                                   1002 ;	include/wiring.h:277: GPIO_PIN_CONFIG_OPTION_PIN_MODE_INPUT_BUFFER_ON_NO_RESISTORS);
      00010D 90 00 00         [24] 1003 	mov	dptr,#_gpio_pin_configure_PARM_2
      000110 E4               [12] 1004 	clr	a
      000111 F0               [24] 1005 	movx	@dptr,a
      000112 75 82 04         [24] 1006 	mov	dpl,#0x04
      000115 12 00 00         [24] 1007 	lcall	_gpio_pin_configure
                                   1008 ;	include/wiring.h:280: uart_configure_8_n_1_38400();
      000118 90 00 00         [24] 1009 	mov	dptr,#_uart_configure_manual_baud_calc_PARM_2
      00011B 74 F3            [12] 1010 	mov	a,#0xF3
      00011D F0               [24] 1011 	movx	@dptr,a
      00011E 74 03            [12] 1012 	mov	a,#0x03
      000120 A3               [24] 1013 	inc	dptr
      000121 F0               [24] 1014 	movx	@dptr,a
      000122 75 82 56         [24] 1015 	mov	dpl,#0x56
      000125 02 00 00         [24] 1016 	ljmp	_uart_configure_manual_baud_calc
                                   1017 ;------------------------------------------------------------
                                   1018 ;Allocation info for local variables in function 'putchar'
                                   1019 ;------------------------------------------------------------
                                   1020 ;c                         Allocated with name '_putchar_c_1_102'
                                   1021 ;------------------------------------------------------------
                                   1022 ;	include/wiring.h:285: void putchar(char c)
                                   1023 ;	-----------------------------------------
                                   1024 ;	 function putchar
                                   1025 ;	-----------------------------------------
      000128                       1026 _putchar:
      000128 E5 82            [12] 1027 	mov	a,dpl
      00012A 90 00 03         [24] 1028 	mov	dptr,#_putchar_c_1_102
      00012D F0               [24] 1029 	movx	@dptr,a
                                   1030 ;	include/wiring.h:287: uart_send_wait_for_complete(c);
      00012E E0               [24] 1031 	movx	a,@dptr
      00012F F5 82            [12] 1032 	mov	dpl,a
      000131 02 00 00         [24] 1033 	ljmp	_uart_send_wait_for_complete
                                   1034 ;------------------------------------------------------------
                                   1035 ;Allocation info for local variables in function 'getchar'
                                   1036 ;------------------------------------------------------------
                                   1037 ;retchar                   Allocated with name '_getchar_retchar_1_104'
                                   1038 ;------------------------------------------------------------
                                   1039 ;	include/wiring.h:291: char getchar()
                                   1040 ;	-----------------------------------------
                                   1041 ;	 function getchar
                                   1042 ;	-----------------------------------------
      000134                       1043 _getchar:
                                   1044 ;	include/wiring.h:294: retchar = uart_wait_for_rx_and_get();
                                   1045 ;	include/wiring.h:295: return retchar;
      000134 02 00 00         [24] 1046 	ljmp	_uart_wait_for_rx_and_get
                                   1047 ;------------------------------------------------------------
                                   1048 ;Allocation info for local variables in function 'wireWrite8'
                                   1049 ;------------------------------------------------------------
                                   1050 ;ww8data                   Allocated with name '_wireWrite8_PARM_2'
                                   1051 ;slave_address             Allocated with name '_wireWrite8_slave_address_1_105'
                                   1052 ;------------------------------------------------------------
                                   1053 ;	include/wiring.h:298: w2_ack_nack_val_t wireWrite8(uint8_t slave_address, uint8_t ww8data){
                                   1054 ;	-----------------------------------------
                                   1055 ;	 function wireWrite8
                                   1056 ;	-----------------------------------------
      000137                       1057 _wireWrite8:
      000137 E5 82            [12] 1058 	mov	a,dpl
      000139 90 00 05         [24] 1059 	mov	dptr,#_wireWrite8_slave_address_1_105
      00013C F0               [24] 1060 	movx	@dptr,a
                                   1061 ;	include/wiring.h:300: if(w2_master_write_to(slave_address, &ww8data, 1, 0, 0) ==  W2_NACK_VAL)
      00013D E0               [24] 1062 	movx	a,@dptr
      00013E FF               [12] 1063 	mov	r7,a
      00013F 90 00 00         [24] 1064 	mov	dptr,#_w2_master_write_to_PARM_2
      000142 74 04            [12] 1065 	mov	a,#_wireWrite8_PARM_2
      000144 F0               [24] 1066 	movx	@dptr,a
      000145 74 00            [12] 1067 	mov	a,#(_wireWrite8_PARM_2 >> 8)
      000147 A3               [24] 1068 	inc	dptr
      000148 F0               [24] 1069 	movx	@dptr,a
      000149 E4               [12] 1070 	clr	a
      00014A A3               [24] 1071 	inc	dptr
      00014B F0               [24] 1072 	movx	@dptr,a
      00014C 90 00 00         [24] 1073 	mov	dptr,#_w2_master_write_to_PARM_3
      00014F 04               [12] 1074 	inc	a
      000150 F0               [24] 1075 	movx	@dptr,a
      000151 90 00 00         [24] 1076 	mov	dptr,#_w2_master_write_to_PARM_4
      000154 E4               [12] 1077 	clr	a
      000155 F0               [24] 1078 	movx	@dptr,a
      000156 A3               [24] 1079 	inc	dptr
      000157 F0               [24] 1080 	movx	@dptr,a
      000158 A3               [24] 1081 	inc	dptr
      000159 F0               [24] 1082 	movx	@dptr,a
      00015A 90 00 00         [24] 1083 	mov	dptr,#_w2_master_write_to_PARM_5
      00015D F0               [24] 1084 	movx	@dptr,a
      00015E A3               [24] 1085 	inc	dptr
      00015F F0               [24] 1086 	movx	@dptr,a
      000160 A3               [24] 1087 	inc	dptr
      000161 F0               [24] 1088 	movx	@dptr,a
      000162 A3               [24] 1089 	inc	dptr
      000163 F0               [24] 1090 	movx	@dptr,a
      000164 8F 82            [24] 1091 	mov	dpl,r7
      000166 12 00 00         [24] 1092 	lcall	_w2_master_write_to
      000169 AF 82            [24] 1093 	mov	r7,dpl
      00016B BF 01 04         [24] 1094 	cjne	r7,#0x01,00102$
                                   1095 ;	include/wiring.h:302: return W2_NACK_VAL;
      00016E 75 82 01         [24] 1096 	mov	dpl,#0x01
      000171 22               [24] 1097 	ret
      000172                       1098 00102$:
                                   1099 ;	include/wiring.h:304: return W2_ACK_VAL;
      000172 75 82 00         [24] 1100 	mov	dpl,#0x00
      000175 22               [24] 1101 	ret
                                   1102 ;------------------------------------------------------------
                                   1103 ;Allocation info for local variables in function 'wireRead8'
                                   1104 ;------------------------------------------------------------
                                   1105 ;address                   Allocated with name '_wireRead8_PARM_2'
                                   1106 ;slave_address             Allocated with name '_wireRead8_slave_address_1_109'
                                   1107 ;wr8data                   Allocated with name '_wireRead8_wr8data_1_110'
                                   1108 ;------------------------------------------------------------
                                   1109 ;	include/wiring.h:308: uint8_t wireRead8(uint8_t slave_address, uint8_t address){
                                   1110 ;	-----------------------------------------
                                   1111 ;	 function wireRead8
                                   1112 ;	-----------------------------------------
      000176                       1113 _wireRead8:
      000176 E5 82            [12] 1114 	mov	a,dpl
      000178 90 00 07         [24] 1115 	mov	dptr,#_wireRead8_slave_address_1_109
      00017B F0               [24] 1116 	movx	@dptr,a
                                   1117 ;	include/wiring.h:309: uint8_t wr8data = 0;
      00017C 90 00 08         [24] 1118 	mov	dptr,#_wireRead8_wr8data_1_110
      00017F E4               [12] 1119 	clr	a
      000180 F0               [24] 1120 	movx	@dptr,a
                                   1121 ;	include/wiring.h:311: if(w2_master_random_address_read(slave_address, &address, 1, (uint8_t*)&wr8data, 1) ==  W2_NACK_VAL)
      000181 90 00 07         [24] 1122 	mov	dptr,#_wireRead8_slave_address_1_109
      000184 E0               [24] 1123 	movx	a,@dptr
      000185 FF               [12] 1124 	mov	r7,a
      000186 90 00 00         [24] 1125 	mov	dptr,#_w2_master_random_address_read_PARM_2
      000189 74 06            [12] 1126 	mov	a,#_wireRead8_PARM_2
      00018B F0               [24] 1127 	movx	@dptr,a
      00018C 74 00            [12] 1128 	mov	a,#(_wireRead8_PARM_2 >> 8)
      00018E A3               [24] 1129 	inc	dptr
      00018F F0               [24] 1130 	movx	@dptr,a
      000190 E4               [12] 1131 	clr	a
      000191 A3               [24] 1132 	inc	dptr
      000192 F0               [24] 1133 	movx	@dptr,a
      000193 90 00 00         [24] 1134 	mov	dptr,#_w2_master_random_address_read_PARM_3
      000196 04               [12] 1135 	inc	a
      000197 F0               [24] 1136 	movx	@dptr,a
      000198 90 00 00         [24] 1137 	mov	dptr,#_w2_master_random_address_read_PARM_4
      00019B 74 08            [12] 1138 	mov	a,#_wireRead8_wr8data_1_110
      00019D F0               [24] 1139 	movx	@dptr,a
      00019E 74 00            [12] 1140 	mov	a,#(_wireRead8_wr8data_1_110 >> 8)
      0001A0 A3               [24] 1141 	inc	dptr
      0001A1 F0               [24] 1142 	movx	@dptr,a
      0001A2 E4               [12] 1143 	clr	a
      0001A3 A3               [24] 1144 	inc	dptr
      0001A4 F0               [24] 1145 	movx	@dptr,a
      0001A5 90 00 00         [24] 1146 	mov	dptr,#_w2_master_random_address_read_PARM_5
      0001A8 04               [12] 1147 	inc	a
      0001A9 F0               [24] 1148 	movx	@dptr,a
      0001AA E4               [12] 1149 	clr	a
      0001AB A3               [24] 1150 	inc	dptr
      0001AC F0               [24] 1151 	movx	@dptr,a
      0001AD A3               [24] 1152 	inc	dptr
      0001AE F0               [24] 1153 	movx	@dptr,a
      0001AF A3               [24] 1154 	inc	dptr
      0001B0 F0               [24] 1155 	movx	@dptr,a
      0001B1 8F 82            [24] 1156 	mov	dpl,r7
      0001B3 12 00 00         [24] 1157 	lcall	_w2_master_random_address_read
      0001B6 AF 82            [24] 1158 	mov	r7,dpl
      0001B8 BF 01 04         [24] 1159 	cjne	r7,#0x01,00102$
                                   1160 ;	include/wiring.h:313: return W2_NACK_VAL;}
      0001BB 75 82 01         [24] 1161 	mov	dpl,#0x01
      0001BE 22               [24] 1162 	ret
      0001BF                       1163 00102$:
                                   1164 ;	include/wiring.h:315: return wr8data;
      0001BF 90 00 08         [24] 1165 	mov	dptr,#_wireRead8_wr8data_1_110
      0001C2 E0               [24] 1166 	movx	a,@dptr
      0001C3 F5 82            [12] 1167 	mov	dpl,a
      0001C5 22               [24] 1168 	ret
                                   1169 ;------------------------------------------------------------
                                   1170 ;Allocation info for local variables in function 'wireRead16'
                                   1171 ;------------------------------------------------------------
                                   1172 ;address                   Allocated with name '_wireRead16_PARM_2'
                                   1173 ;slave_address             Allocated with name '_wireRead16_slave_address_1_113'
                                   1174 ;wr16data                  Allocated with name '_wireRead16_wr16data_1_114'
                                   1175 ;------------------------------------------------------------
                                   1176 ;	include/wiring.h:319: uint16_t wireRead16(uint8_t slave_address, uint8_t address){
                                   1177 ;	-----------------------------------------
                                   1178 ;	 function wireRead16
                                   1179 ;	-----------------------------------------
      0001C6                       1180 _wireRead16:
      0001C6 E5 82            [12] 1181 	mov	a,dpl
      0001C8 90 00 0A         [24] 1182 	mov	dptr,#_wireRead16_slave_address_1_113
      0001CB F0               [24] 1183 	movx	@dptr,a
                                   1184 ;	include/wiring.h:320: uint16_t wr16data = 0;
      0001CC 90 00 0B         [24] 1185 	mov	dptr,#_wireRead16_wr16data_1_114
      0001CF E4               [12] 1186 	clr	a
      0001D0 F0               [24] 1187 	movx	@dptr,a
      0001D1 A3               [24] 1188 	inc	dptr
      0001D2 F0               [24] 1189 	movx	@dptr,a
                                   1190 ;	include/wiring.h:322: if(w2_master_random_address_read(slave_address, &address, 1, (uint8_t*)&wr16data, 2) ==  W2_NACK_VAL)
      0001D3 90 00 0A         [24] 1191 	mov	dptr,#_wireRead16_slave_address_1_113
      0001D6 E0               [24] 1192 	movx	a,@dptr
      0001D7 FF               [12] 1193 	mov	r7,a
      0001D8 90 00 00         [24] 1194 	mov	dptr,#_w2_master_random_address_read_PARM_2
      0001DB 74 09            [12] 1195 	mov	a,#_wireRead16_PARM_2
      0001DD F0               [24] 1196 	movx	@dptr,a
      0001DE 74 00            [12] 1197 	mov	a,#(_wireRead16_PARM_2 >> 8)
      0001E0 A3               [24] 1198 	inc	dptr
      0001E1 F0               [24] 1199 	movx	@dptr,a
      0001E2 E4               [12] 1200 	clr	a
      0001E3 A3               [24] 1201 	inc	dptr
      0001E4 F0               [24] 1202 	movx	@dptr,a
      0001E5 90 00 00         [24] 1203 	mov	dptr,#_w2_master_random_address_read_PARM_3
      0001E8 04               [12] 1204 	inc	a
      0001E9 F0               [24] 1205 	movx	@dptr,a
      0001EA 90 00 00         [24] 1206 	mov	dptr,#_w2_master_random_address_read_PARM_4
      0001ED 74 0B            [12] 1207 	mov	a,#_wireRead16_wr16data_1_114
      0001EF F0               [24] 1208 	movx	@dptr,a
      0001F0 74 00            [12] 1209 	mov	a,#(_wireRead16_wr16data_1_114 >> 8)
      0001F2 A3               [24] 1210 	inc	dptr
      0001F3 F0               [24] 1211 	movx	@dptr,a
      0001F4 E4               [12] 1212 	clr	a
      0001F5 A3               [24] 1213 	inc	dptr
      0001F6 F0               [24] 1214 	movx	@dptr,a
      0001F7 90 00 00         [24] 1215 	mov	dptr,#_w2_master_random_address_read_PARM_5
      0001FA 74 02            [12] 1216 	mov	a,#0x02
      0001FC F0               [24] 1217 	movx	@dptr,a
      0001FD E4               [12] 1218 	clr	a
      0001FE A3               [24] 1219 	inc	dptr
      0001FF F0               [24] 1220 	movx	@dptr,a
      000200 A3               [24] 1221 	inc	dptr
      000201 F0               [24] 1222 	movx	@dptr,a
      000202 A3               [24] 1223 	inc	dptr
      000203 F0               [24] 1224 	movx	@dptr,a
      000204 8F 82            [24] 1225 	mov	dpl,r7
      000206 12 00 00         [24] 1226 	lcall	_w2_master_random_address_read
      000209 AF 82            [24] 1227 	mov	r7,dpl
      00020B BF 01 04         [24] 1228 	cjne	r7,#0x01,00102$
                                   1229 ;	include/wiring.h:324: return W2_NACK_VAL;}
      00020E 90 00 01         [24] 1230 	mov	dptr,#0x0001
      000211 22               [24] 1231 	ret
      000212                       1232 00102$:
                                   1233 ;	include/wiring.h:326: return wr16data;
      000212 90 00 0B         [24] 1234 	mov	dptr,#_wireRead16_wr16data_1_114
      000215 E0               [24] 1235 	movx	a,@dptr
      000216 FE               [12] 1236 	mov	r6,a
      000217 A3               [24] 1237 	inc	dptr
      000218 E0               [24] 1238 	movx	a,@dptr
      000219 8E 82            [24] 1239 	mov	dpl,r6
      00021B F5 83            [12] 1240 	mov	dph,a
      00021D 22               [24] 1241 	ret
                                   1242 ;------------------------------------------------------------
                                   1243 ;Allocation info for local variables in function 'eepromRead'
                                   1244 ;------------------------------------------------------------
                                   1245 ;address                   Allocated with name '_eepromRead_address_1_117'
                                   1246 ;------------------------------------------------------------
                                   1247 ;	include/wiring.h:330: uint8_t eepromRead(uint16_t address){
                                   1248 ;	-----------------------------------------
                                   1249 ;	 function eepromRead
                                   1250 ;	-----------------------------------------
      00021E                       1251 _eepromRead:
      00021E AF 83            [24] 1252 	mov	r7,dph
      000220 E5 82            [12] 1253 	mov	a,dpl
      000222 90 00 0D         [24] 1254 	mov	dptr,#_eepromRead_address_1_117
      000225 F0               [24] 1255 	movx	@dptr,a
      000226 EF               [12] 1256 	mov	a,r7
      000227 A3               [24] 1257 	inc	dptr
      000228 F0               [24] 1258 	movx	@dptr,a
                                   1259 ;	include/wiring.h:331: control_byte = (unsigned char)(0x50 | (address >> 8));
      000229 90 00 0D         [24] 1260 	mov	dptr,#_eepromRead_address_1_117
      00022C E0               [24] 1261 	movx	a,@dptr
      00022D FE               [12] 1262 	mov	r6,a
      00022E A3               [24] 1263 	inc	dptr
      00022F E0               [24] 1264 	movx	a,@dptr
      000230 FD               [12] 1265 	mov	r5,a
      000231 43 05 50         [24] 1266 	orl	ar5,#0x50
      000234 90 00 00         [24] 1267 	mov	dptr,#_control_byte
      000237 ED               [12] 1268 	mov	a,r5
      000238 F0               [24] 1269 	movx	@dptr,a
                                   1270 ;	include/wiring.h:332: address_byte = (unsigned char)address;
      000239 90 00 01         [24] 1271 	mov	dptr,#_address_byte
      00023C EE               [12] 1272 	mov	a,r6
      00023D F0               [24] 1273 	movx	@dptr,a
                                   1274 ;	include/wiring.h:334: if(w2_master_random_address_read(control_byte, &address_byte, 1, &data_byte, 1) ==  W2_NACK_VAL)
      00023E 90 00 00         [24] 1275 	mov	dptr,#_w2_master_random_address_read_PARM_2
      000241 74 01            [12] 1276 	mov	a,#_address_byte
      000243 F0               [24] 1277 	movx	@dptr,a
      000244 74 00            [12] 1278 	mov	a,#(_address_byte >> 8)
      000246 A3               [24] 1279 	inc	dptr
      000247 F0               [24] 1280 	movx	@dptr,a
      000248 E4               [12] 1281 	clr	a
      000249 A3               [24] 1282 	inc	dptr
      00024A F0               [24] 1283 	movx	@dptr,a
      00024B 90 00 00         [24] 1284 	mov	dptr,#_w2_master_random_address_read_PARM_3
      00024E 04               [12] 1285 	inc	a
      00024F F0               [24] 1286 	movx	@dptr,a
      000250 90 00 00         [24] 1287 	mov	dptr,#_w2_master_random_address_read_PARM_4
      000253 74 02            [12] 1288 	mov	a,#_data_byte
      000255 F0               [24] 1289 	movx	@dptr,a
      000256 74 00            [12] 1290 	mov	a,#(_data_byte >> 8)
      000258 A3               [24] 1291 	inc	dptr
      000259 F0               [24] 1292 	movx	@dptr,a
      00025A E4               [12] 1293 	clr	a
      00025B A3               [24] 1294 	inc	dptr
      00025C F0               [24] 1295 	movx	@dptr,a
      00025D 90 00 00         [24] 1296 	mov	dptr,#_w2_master_random_address_read_PARM_5
      000260 04               [12] 1297 	inc	a
      000261 F0               [24] 1298 	movx	@dptr,a
      000262 E4               [12] 1299 	clr	a
      000263 A3               [24] 1300 	inc	dptr
      000264 F0               [24] 1301 	movx	@dptr,a
      000265 A3               [24] 1302 	inc	dptr
      000266 F0               [24] 1303 	movx	@dptr,a
      000267 A3               [24] 1304 	inc	dptr
      000268 F0               [24] 1305 	movx	@dptr,a
      000269 8D 82            [24] 1306 	mov	dpl,r5
      00026B 12 00 00         [24] 1307 	lcall	_w2_master_random_address_read
      00026E AF 82            [24] 1308 	mov	r7,dpl
      000270 BF 01 04         [24] 1309 	cjne	r7,#0x01,00102$
                                   1310 ;	include/wiring.h:337: return -1;
      000273 75 82 FF         [24] 1311 	mov	dpl,#0xFF
      000276 22               [24] 1312 	ret
      000277                       1313 00102$:
                                   1314 ;	include/wiring.h:339: return data_byte;	
      000277 90 00 02         [24] 1315 	mov	dptr,#_data_byte
      00027A E0               [24] 1316 	movx	a,@dptr
      00027B F5 82            [12] 1317 	mov	dpl,a
      00027D 22               [24] 1318 	ret
                                   1319 ;------------------------------------------------------------
                                   1320 ;Allocation info for local variables in function 'eepromWrite'
                                   1321 ;------------------------------------------------------------
                                   1322 ;value                     Allocated with name '_eepromWrite_PARM_2'
                                   1323 ;address                   Allocated with name '_eepromWrite_address_1_120'
                                   1324 ;------------------------------------------------------------
                                   1325 ;	include/wiring.h:343: void eepromWrite(uint16_t address, uint8_t value){
                                   1326 ;	-----------------------------------------
                                   1327 ;	 function eepromWrite
                                   1328 ;	-----------------------------------------
      00027E                       1329 _eepromWrite:
      00027E AF 83            [24] 1330 	mov	r7,dph
      000280 E5 82            [12] 1331 	mov	a,dpl
      000282 90 00 10         [24] 1332 	mov	dptr,#_eepromWrite_address_1_120
      000285 F0               [24] 1333 	movx	@dptr,a
      000286 EF               [12] 1334 	mov	a,r7
      000287 A3               [24] 1335 	inc	dptr
      000288 F0               [24] 1336 	movx	@dptr,a
                                   1337 ;	include/wiring.h:344: control_byte = (unsigned char)(0x50 | (address >> 8));
      000289 90 00 10         [24] 1338 	mov	dptr,#_eepromWrite_address_1_120
      00028C E0               [24] 1339 	movx	a,@dptr
      00028D FE               [12] 1340 	mov	r6,a
      00028E A3               [24] 1341 	inc	dptr
      00028F E0               [24] 1342 	movx	a,@dptr
      000290 FD               [12] 1343 	mov	r5,a
      000291 43 05 50         [24] 1344 	orl	ar5,#0x50
      000294 90 00 00         [24] 1345 	mov	dptr,#_control_byte
      000297 ED               [12] 1346 	mov	a,r5
      000298 F0               [24] 1347 	movx	@dptr,a
                                   1348 ;	include/wiring.h:345: address_byte = (unsigned char)address;
      000299 90 00 01         [24] 1349 	mov	dptr,#_address_byte
      00029C EE               [12] 1350 	mov	a,r6
      00029D F0               [24] 1351 	movx	@dptr,a
                                   1352 ;	include/wiring.h:346: data_byte = (unsigned char)value;
      00029E 90 00 0F         [24] 1353 	mov	dptr,#_eepromWrite_PARM_2
      0002A1 E0               [24] 1354 	movx	a,@dptr
      0002A2 90 00 02         [24] 1355 	mov	dptr,#_data_byte
      0002A5 F0               [24] 1356 	movx	@dptr,a
                                   1357 ;	include/wiring.h:348: if(w2_master_write_to(control_byte, &address_byte, 1, &data_byte, 1) ==  W2_NACK_VAL)
      0002A6 90 00 00         [24] 1358 	mov	dptr,#_w2_master_write_to_PARM_2
      0002A9 74 01            [12] 1359 	mov	a,#_address_byte
      0002AB F0               [24] 1360 	movx	@dptr,a
      0002AC 74 00            [12] 1361 	mov	a,#(_address_byte >> 8)
      0002AE A3               [24] 1362 	inc	dptr
      0002AF F0               [24] 1363 	movx	@dptr,a
      0002B0 E4               [12] 1364 	clr	a
      0002B1 A3               [24] 1365 	inc	dptr
      0002B2 F0               [24] 1366 	movx	@dptr,a
      0002B3 90 00 00         [24] 1367 	mov	dptr,#_w2_master_write_to_PARM_3
      0002B6 04               [12] 1368 	inc	a
      0002B7 F0               [24] 1369 	movx	@dptr,a
      0002B8 90 00 00         [24] 1370 	mov	dptr,#_w2_master_write_to_PARM_4
      0002BB 74 02            [12] 1371 	mov	a,#_data_byte
      0002BD F0               [24] 1372 	movx	@dptr,a
      0002BE 74 00            [12] 1373 	mov	a,#(_data_byte >> 8)
      0002C0 A3               [24] 1374 	inc	dptr
      0002C1 F0               [24] 1375 	movx	@dptr,a
      0002C2 E4               [12] 1376 	clr	a
      0002C3 A3               [24] 1377 	inc	dptr
      0002C4 F0               [24] 1378 	movx	@dptr,a
      0002C5 90 00 00         [24] 1379 	mov	dptr,#_w2_master_write_to_PARM_5
      0002C8 04               [12] 1380 	inc	a
      0002C9 F0               [24] 1381 	movx	@dptr,a
      0002CA E4               [12] 1382 	clr	a
      0002CB A3               [24] 1383 	inc	dptr
      0002CC F0               [24] 1384 	movx	@dptr,a
      0002CD A3               [24] 1385 	inc	dptr
      0002CE F0               [24] 1386 	movx	@dptr,a
      0002CF A3               [24] 1387 	inc	dptr
      0002D0 F0               [24] 1388 	movx	@dptr,a
      0002D1 8D 82            [24] 1389 	mov	dpl,r5
      0002D3 12 00 00         [24] 1390 	lcall	_w2_master_write_to
      0002D6 AF 82            [24] 1391 	mov	r7,dpl
      0002D8 BF 01 00         [24] 1392 	cjne	r7,#0x01,00103$
                                   1393 ;	include/wiring.h:351: return;
      0002DB                       1394 00103$:
      0002DB 22               [24] 1395 	ret
                                   1396 ;------------------------------------------------------------
                                   1397 ;Allocation info for local variables in function 'aesGaloisMultiply'
                                   1398 ;------------------------------------------------------------
                                   1399 ;value2                    Allocated with name '_aesGaloisMultiply_PARM_2'
                                   1400 ;value1                    Allocated with name '_aesGaloisMultiply_value1_1_123'
                                   1401 ;------------------------------------------------------------
                                   1402 ;	include/wiring.h:355: uint8_t aesGaloisMultiply(uint8_t value1, uint8_t value2)
                                   1403 ;	-----------------------------------------
                                   1404 ;	 function aesGaloisMultiply
                                   1405 ;	-----------------------------------------
      0002DC                       1406 _aesGaloisMultiply:
      0002DC E5 82            [12] 1407 	mov	a,dpl
      0002DE 90 00 13         [24] 1408 	mov	dptr,#_aesGaloisMultiply_value1_1_123
      0002E1 F0               [24] 1409 	movx	@dptr,a
                                   1410 ;	include/wiring.h:357: CCPDATIA = value1;
      0002E2 E0               [24] 1411 	movx	a,@dptr
      0002E3 F5 DD            [12] 1412 	mov	_CCPDATIA,a
                                   1413 ;	include/wiring.h:358: CCPDATIB = value2;
      0002E5 90 00 12         [24] 1414 	mov	dptr,#_aesGaloisMultiply_PARM_2
      0002E8 E0               [24] 1415 	movx	a,@dptr
      0002E9 F5 DE            [12] 1416 	mov	_CCPDATIB,a
                                   1417 ;	include/wiring.h:359: return CCPDATO;
      0002EB 85 DF 82         [24] 1418 	mov	dpl,_CCPDATO
      0002EE 22               [24] 1419 	ret
                                   1420 ;------------------------------------------------------------
                                   1421 ;Allocation info for local variables in function 'radioBegin'
                                   1422 ;------------------------------------------------------------
                                   1423 ;	include/rf24.h:97: void radioBegin(){
                                   1424 ;	-----------------------------------------
                                   1425 ;	 function radioBegin
                                   1426 ;	-----------------------------------------
      0002EF                       1427 _radioBegin:
                                   1428 ;	include/rf24.h:101: rf_spi_configure_enable();
      0002EF 12 00 00         [24] 1429 	lcall	_rf_spi_configure_enable
                                   1430 ;	include/rf24.h:102: delay(5);
      0002F2 90 00 05         [24] 1431 	mov	dptr,#0x0005
      0002F5 12 00 00         [24] 1432 	lcall	_delay_ms
                                   1433 ;	include/rf24.h:103: txRxDelay = 155;
      0002F8 90 00 19         [24] 1434 	mov	dptr,#_txRxDelay
      0002FB 74 9B            [12] 1435 	mov	a,#0x9B
      0002FD F0               [24] 1436 	movx	@dptr,a
                                   1437 ;	include/rf24.h:118: rf_flush_tx();
      0002FE 90 00 00         [24] 1438 	mov	dptr,#_rf_spi_execute_command_PARM_2
      000301 E4               [12] 1439 	clr	a
      000302 F0               [24] 1440 	movx	@dptr,a
      000303 A3               [24] 1441 	inc	dptr
      000304 F0               [24] 1442 	movx	@dptr,a
      000305 A3               [24] 1443 	inc	dptr
      000306 F0               [24] 1444 	movx	@dptr,a
      000307 90 00 00         [24] 1445 	mov	dptr,#_rf_spi_execute_command_PARM_3
      00030A F0               [24] 1446 	movx	@dptr,a
      00030B A3               [24] 1447 	inc	dptr
      00030C F0               [24] 1448 	movx	@dptr,a
      00030D 90 00 00         [24] 1449 	mov	dptr,#_rf_spi_execute_command_PARM_4
      000310 04               [12] 1450 	inc	a
      000311 F0               [24] 1451 	movx	@dptr,a
      000312 75 82 E1         [24] 1452 	mov	dpl,#0xE1
      000315 12 00 00         [24] 1453 	lcall	_rf_spi_execute_command
                                   1454 ;	include/rf24.h:119: rf_flush_rx();
      000318 90 00 00         [24] 1455 	mov	dptr,#_rf_spi_execute_command_PARM_2
      00031B E4               [12] 1456 	clr	a
      00031C F0               [24] 1457 	movx	@dptr,a
      00031D A3               [24] 1458 	inc	dptr
      00031E F0               [24] 1459 	movx	@dptr,a
      00031F A3               [24] 1460 	inc	dptr
      000320 F0               [24] 1461 	movx	@dptr,a
      000321 90 00 00         [24] 1462 	mov	dptr,#_rf_spi_execute_command_PARM_3
      000324 F0               [24] 1463 	movx	@dptr,a
      000325 A3               [24] 1464 	inc	dptr
      000326 F0               [24] 1465 	movx	@dptr,a
      000327 90 00 00         [24] 1466 	mov	dptr,#_rf_spi_execute_command_PARM_4
      00032A 04               [12] 1467 	inc	a
      00032B F0               [24] 1468 	movx	@dptr,a
      00032C 75 82 E2         [24] 1469 	mov	dpl,#0xE2
      00032F 02 00 00         [24] 1470 	ljmp	_rf_spi_execute_command
                                   1471 ;------------------------------------------------------------
                                   1472 ;Allocation info for local variables in function 'read'
                                   1473 ;------------------------------------------------------------
                                   1474 ;len                       Allocated with name '_read_PARM_2'
                                   1475 ;buf                       Allocated with name '_read_buf_1_184'
                                   1476 ;status                    Allocated with name '_read_status_1_185'
                                   1477 ;------------------------------------------------------------
                                   1478 ;	include/rf24.h:123: void read(void* buf, uint8_t len)
                                   1479 ;	-----------------------------------------
                                   1480 ;	 function read
                                   1481 ;	-----------------------------------------
      000332                       1482 _read:
      000332 AF F0            [24] 1483 	mov	r7,b
      000334 AE 83            [24] 1484 	mov	r6,dph
      000336 E5 82            [12] 1485 	mov	a,dpl
      000338 90 00 1C         [24] 1486 	mov	dptr,#_read_buf_1_184
      00033B F0               [24] 1487 	movx	@dptr,a
      00033C EE               [12] 1488 	mov	a,r6
      00033D A3               [24] 1489 	inc	dptr
      00033E F0               [24] 1490 	movx	@dptr,a
      00033F EF               [12] 1491 	mov	a,r7
      000340 A3               [24] 1492 	inc	dptr
      000341 F0               [24] 1493 	movx	@dptr,a
                                   1494 ;	include/rf24.h:127: rf_read_rx_payload(buf, len);
      000342 90 00 1C         [24] 1495 	mov	dptr,#_read_buf_1_184
      000345 E0               [24] 1496 	movx	a,@dptr
      000346 FD               [12] 1497 	mov	r5,a
      000347 A3               [24] 1498 	inc	dptr
      000348 E0               [24] 1499 	movx	a,@dptr
      000349 FE               [12] 1500 	mov	r6,a
      00034A A3               [24] 1501 	inc	dptr
      00034B E0               [24] 1502 	movx	a,@dptr
      00034C FF               [12] 1503 	mov	r7,a
      00034D 90 00 1B         [24] 1504 	mov	dptr,#_read_PARM_2
      000350 E0               [24] 1505 	movx	a,@dptr
      000351 90 00 00         [24] 1506 	mov	dptr,#_rf_read_rx_payload_PARM_2
      000354 F0               [24] 1507 	movx	@dptr,a
      000355 E4               [12] 1508 	clr	a
      000356 A3               [24] 1509 	inc	dptr
      000357 F0               [24] 1510 	movx	@dptr,a
      000358 8D 82            [24] 1511 	mov	dpl,r5
      00035A 8E 83            [24] 1512 	mov	dph,r6
      00035C 8F F0            [24] 1513 	mov	b,r7
      00035E 12 00 00         [24] 1514 	lcall	_rf_read_rx_payload
                                   1515 ;	include/rf24.h:128: status = _BV(RX_DR) | _BV(TX_DS) | _BV(MAX_RT);
      000361 90 00 1F         [24] 1516 	mov	dptr,#_read_status_1_185
      000364 74 70            [12] 1517 	mov	a,#0x70
      000366 F0               [24] 1518 	movx	@dptr,a
                                   1519 ;	include/rf24.h:129: status = rf_write_register(RF_STATUS, &status, 1);
      000367 90 00 00         [24] 1520 	mov	dptr,#_rf_write_register_PARM_2
      00036A 74 1F            [12] 1521 	mov	a,#_read_status_1_185
      00036C F0               [24] 1522 	movx	@dptr,a
      00036D 74 00            [12] 1523 	mov	a,#(_read_status_1_185 >> 8)
      00036F A3               [24] 1524 	inc	dptr
      000370 F0               [24] 1525 	movx	@dptr,a
      000371 E4               [12] 1526 	clr	a
      000372 A3               [24] 1527 	inc	dptr
      000373 F0               [24] 1528 	movx	@dptr,a
      000374 90 00 00         [24] 1529 	mov	dptr,#_rf_write_register_PARM_3
      000377 04               [12] 1530 	inc	a
      000378 F0               [24] 1531 	movx	@dptr,a
      000379 E4               [12] 1532 	clr	a
      00037A A3               [24] 1533 	inc	dptr
      00037B F0               [24] 1534 	movx	@dptr,a
      00037C 75 82 07         [24] 1535 	mov	dpl,#0x07
      00037F 12 00 00         [24] 1536 	lcall	_rf_write_register
      000382 E5 82            [12] 1537 	mov	a,dpl
      000384 90 00 1F         [24] 1538 	mov	dptr,#_read_status_1_185
      000387 F0               [24] 1539 	movx	@dptr,a
      000388 22               [24] 1540 	ret
                                   1541 ;------------------------------------------------------------
                                   1542 ;Allocation info for local variables in function 'write'
                                   1543 ;------------------------------------------------------------
                                   1544 ;len                       Allocated with name '_write_PARM_2'
                                   1545 ;multicast                 Allocated with name '_write_PARM_3'
                                   1546 ;buf                       Allocated with name '_write_buf_1_186'
                                   1547 ;status                    Allocated with name '_write_status_1_187'
                                   1548 ;------------------------------------------------------------
                                   1549 ;	include/rf24.h:133: bool write(const void* buf, uint8_t len, const bool multicast)
                                   1550 ;	-----------------------------------------
                                   1551 ;	 function write
                                   1552 ;	-----------------------------------------
      000389                       1553 _write:
      000389 AF F0            [24] 1554 	mov	r7,b
      00038B AE 83            [24] 1555 	mov	r6,dph
      00038D E5 82            [12] 1556 	mov	a,dpl
      00038F 90 00 22         [24] 1557 	mov	dptr,#_write_buf_1_186
      000392 F0               [24] 1558 	movx	@dptr,a
      000393 EE               [12] 1559 	mov	a,r6
      000394 A3               [24] 1560 	inc	dptr
      000395 F0               [24] 1561 	movx	@dptr,a
      000396 EF               [12] 1562 	mov	a,r7
      000397 A3               [24] 1563 	inc	dptr
      000398 F0               [24] 1564 	movx	@dptr,a
                                   1565 ;	include/rf24.h:137: if(multicast)
      000399 90 00 21         [24] 1566 	mov	dptr,#_write_PARM_3
      00039C E0               [24] 1567 	movx	a,@dptr
      00039D 60 26            [24] 1568 	jz	00102$
                                   1569 ;	include/rf24.h:139: rf_write_tx_payload_noack(buf, len, true);
      00039F 90 00 22         [24] 1570 	mov	dptr,#_write_buf_1_186
      0003A2 E0               [24] 1571 	movx	a,@dptr
      0003A3 FD               [12] 1572 	mov	r5,a
      0003A4 A3               [24] 1573 	inc	dptr
      0003A5 E0               [24] 1574 	movx	a,@dptr
      0003A6 FE               [12] 1575 	mov	r6,a
      0003A7 A3               [24] 1576 	inc	dptr
      0003A8 E0               [24] 1577 	movx	a,@dptr
      0003A9 FF               [12] 1578 	mov	r7,a
      0003AA 90 00 20         [24] 1579 	mov	dptr,#_write_PARM_2
      0003AD E0               [24] 1580 	movx	a,@dptr
      0003AE 90 00 00         [24] 1581 	mov	dptr,#_rf_write_tx_payload_noack_PARM_2
      0003B1 F0               [24] 1582 	movx	@dptr,a
      0003B2 E4               [12] 1583 	clr	a
      0003B3 A3               [24] 1584 	inc	dptr
      0003B4 F0               [24] 1585 	movx	@dptr,a
      0003B5 90 00 00         [24] 1586 	mov	dptr,#_rf_write_tx_payload_noack_PARM_3
      0003B8 04               [12] 1587 	inc	a
      0003B9 F0               [24] 1588 	movx	@dptr,a
      0003BA 8D 82            [24] 1589 	mov	dpl,r5
      0003BC 8E 83            [24] 1590 	mov	dph,r6
      0003BE 8F F0            [24] 1591 	mov	b,r7
      0003C0 12 00 00         [24] 1592 	lcall	_rf_write_tx_payload_noack
      0003C3 80 24            [24] 1593 	sjmp	00104$
      0003C5                       1594 00102$:
                                   1595 ;	include/rf24.h:142: rf_write_tx_payload(buf, len, true);
      0003C5 90 00 22         [24] 1596 	mov	dptr,#_write_buf_1_186
      0003C8 E0               [24] 1597 	movx	a,@dptr
      0003C9 FD               [12] 1598 	mov	r5,a
      0003CA A3               [24] 1599 	inc	dptr
      0003CB E0               [24] 1600 	movx	a,@dptr
      0003CC FE               [12] 1601 	mov	r6,a
      0003CD A3               [24] 1602 	inc	dptr
      0003CE E0               [24] 1603 	movx	a,@dptr
      0003CF FF               [12] 1604 	mov	r7,a
      0003D0 90 00 20         [24] 1605 	mov	dptr,#_write_PARM_2
      0003D3 E0               [24] 1606 	movx	a,@dptr
      0003D4 90 00 00         [24] 1607 	mov	dptr,#_rf_write_tx_payload_PARM_2
      0003D7 F0               [24] 1608 	movx	@dptr,a
      0003D8 E4               [12] 1609 	clr	a
      0003D9 A3               [24] 1610 	inc	dptr
      0003DA F0               [24] 1611 	movx	@dptr,a
      0003DB 90 00 00         [24] 1612 	mov	dptr,#_rf_write_tx_payload_PARM_3
      0003DE 04               [12] 1613 	inc	a
      0003DF F0               [24] 1614 	movx	@dptr,a
      0003E0 8D 82            [24] 1615 	mov	dpl,r5
      0003E2 8E 83            [24] 1616 	mov	dph,r6
      0003E4 8F F0            [24] 1617 	mov	b,r7
      0003E6 12 00 00         [24] 1618 	lcall	_rf_write_tx_payload
                                   1619 ;	include/rf24.h:145: while( ! ( rf_get_status()  & ( _BV(TX_DS) | _BV(MAX_RT) )));
      0003E9                       1620 00104$:
      0003E9 90 00 00         [24] 1621 	mov	dptr,#_rf_spi_execute_command_PARM_2
      0003EC E4               [12] 1622 	clr	a
      0003ED F0               [24] 1623 	movx	@dptr,a
      0003EE A3               [24] 1624 	inc	dptr
      0003EF F0               [24] 1625 	movx	@dptr,a
      0003F0 A3               [24] 1626 	inc	dptr
      0003F1 F0               [24] 1627 	movx	@dptr,a
      0003F2 90 00 00         [24] 1628 	mov	dptr,#_rf_spi_execute_command_PARM_3
      0003F5 F0               [24] 1629 	movx	@dptr,a
      0003F6 A3               [24] 1630 	inc	dptr
      0003F7 F0               [24] 1631 	movx	@dptr,a
      0003F8 90 00 00         [24] 1632 	mov	dptr,#_rf_spi_execute_command_PARM_4
      0003FB 04               [12] 1633 	inc	a
      0003FC F0               [24] 1634 	movx	@dptr,a
      0003FD 75 82 FF         [24] 1635 	mov	dpl,#0xFF
      000400 12 00 00         [24] 1636 	lcall	_rf_spi_execute_command
      000403 E5 82            [12] 1637 	mov	a,dpl
      000405 54 30            [12] 1638 	anl	a,#0x30
      000407 60 E0            [24] 1639 	jz	00104$
                                   1640 ;	include/rf24.h:147: status = _BV(RX_DR) | _BV(TX_DS) | _BV(MAX_RT);
      000409 90 00 25         [24] 1641 	mov	dptr,#_write_status_1_187
      00040C 74 70            [12] 1642 	mov	a,#0x70
      00040E F0               [24] 1643 	movx	@dptr,a
                                   1644 ;	include/rf24.h:148: status = rf_write_register(RF_STATUS, &status, 1);
      00040F 90 00 00         [24] 1645 	mov	dptr,#_rf_write_register_PARM_2
      000412 74 25            [12] 1646 	mov	a,#_write_status_1_187
      000414 F0               [24] 1647 	movx	@dptr,a
      000415 74 00            [12] 1648 	mov	a,#(_write_status_1_187 >> 8)
      000417 A3               [24] 1649 	inc	dptr
      000418 F0               [24] 1650 	movx	@dptr,a
      000419 E4               [12] 1651 	clr	a
      00041A A3               [24] 1652 	inc	dptr
      00041B F0               [24] 1653 	movx	@dptr,a
      00041C 90 00 00         [24] 1654 	mov	dptr,#_rf_write_register_PARM_3
      00041F 04               [12] 1655 	inc	a
      000420 F0               [24] 1656 	movx	@dptr,a
      000421 E4               [12] 1657 	clr	a
      000422 A3               [24] 1658 	inc	dptr
      000423 F0               [24] 1659 	movx	@dptr,a
      000424 75 82 07         [24] 1660 	mov	dpl,#0x07
      000427 12 00 00         [24] 1661 	lcall	_rf_write_register
      00042A AF 82            [24] 1662 	mov	r7,dpl
      00042C 90 00 25         [24] 1663 	mov	dptr,#_write_status_1_187
      00042F EF               [12] 1664 	mov	a,r7
      000430 F0               [24] 1665 	movx	@dptr,a
                                   1666 ;	include/rf24.h:149: if( status & _BV(MAX_RT)){
      000431 EF               [12] 1667 	mov	a,r7
      000432 30 E4 1E         [24] 1668 	jnb	acc.4,00108$
                                   1669 ;	include/rf24.h:150: rf_flush_tx(); //Only going to be 1 packet int the FIFO at a time using this method, so just flush
      000435 90 00 00         [24] 1670 	mov	dptr,#_rf_spi_execute_command_PARM_2
      000438 E4               [12] 1671 	clr	a
      000439 F0               [24] 1672 	movx	@dptr,a
      00043A A3               [24] 1673 	inc	dptr
      00043B F0               [24] 1674 	movx	@dptr,a
      00043C A3               [24] 1675 	inc	dptr
      00043D F0               [24] 1676 	movx	@dptr,a
      00043E 90 00 00         [24] 1677 	mov	dptr,#_rf_spi_execute_command_PARM_3
      000441 F0               [24] 1678 	movx	@dptr,a
      000442 A3               [24] 1679 	inc	dptr
      000443 F0               [24] 1680 	movx	@dptr,a
      000444 90 00 00         [24] 1681 	mov	dptr,#_rf_spi_execute_command_PARM_4
      000447 04               [12] 1682 	inc	a
      000448 F0               [24] 1683 	movx	@dptr,a
      000449 75 82 E1         [24] 1684 	mov	dpl,#0xE1
      00044C 12 00 00         [24] 1685 	lcall	_rf_spi_execute_command
                                   1686 ;	include/rf24.h:151: return 0;
      00044F 75 82 00         [24] 1687 	mov	dpl,#0x00
      000452 22               [24] 1688 	ret
      000453                       1689 00108$:
                                   1690 ;	include/rf24.h:154: return 1;
      000453 75 82 01         [24] 1691 	mov	dpl,#0x01
      000456 22               [24] 1692 	ret
                                   1693 ;------------------------------------------------------------
                                   1694 ;Allocation info for local variables in function 'setRetries'
                                   1695 ;------------------------------------------------------------
                                   1696 ;count                     Allocated with name '_setRetries_PARM_2'
                                   1697 ;delay_ms                  Allocated with name '_setRetries_delay_ms_1_191'
                                   1698 ;reg                       Allocated with name '_setRetries_reg_1_192'
                                   1699 ;------------------------------------------------------------
                                   1700 ;	include/rf24.h:157: void setRetries(uint8_t delay, uint8_t count)
                                   1701 ;	-----------------------------------------
                                   1702 ;	 function setRetries
                                   1703 ;	-----------------------------------------
      000457                       1704 _setRetries:
      000457 E5 82            [12] 1705 	mov	a,dpl
      000459 90 00 27         [24] 1706 	mov	dptr,#_setRetries_delay_ms_1_191
      00045C F0               [24] 1707 	movx	@dptr,a
                                   1708 ;	include/rf24.h:159: uint8_t reg = (delay&0xf)<<ARD | (count&0xf)<<ARC;
      00045D E0               [24] 1709 	movx	a,@dptr
      00045E 54 0F            [12] 1710 	anl	a,#0x0F
      000460 C4               [12] 1711 	swap	a
      000461 54 F0            [12] 1712 	anl	a,#0xF0
      000463 FF               [12] 1713 	mov	r7,a
      000464 90 00 26         [24] 1714 	mov	dptr,#_setRetries_PARM_2
      000467 E0               [24] 1715 	movx	a,@dptr
      000468 FE               [12] 1716 	mov	r6,a
      000469 53 06 0F         [24] 1717 	anl	ar6,#0x0F
      00046C 90 00 28         [24] 1718 	mov	dptr,#_setRetries_reg_1_192
      00046F EE               [12] 1719 	mov	a,r6
      000470 4F               [12] 1720 	orl	a,r7
      000471 F0               [24] 1721 	movx	@dptr,a
                                   1722 ;	include/rf24.h:160: rf_write_register(RF_SETUP_RETR, &reg, 1);
      000472 90 00 00         [24] 1723 	mov	dptr,#_rf_write_register_PARM_2
      000475 74 28            [12] 1724 	mov	a,#_setRetries_reg_1_192
      000477 F0               [24] 1725 	movx	@dptr,a
      000478 74 00            [12] 1726 	mov	a,#(_setRetries_reg_1_192 >> 8)
      00047A A3               [24] 1727 	inc	dptr
      00047B F0               [24] 1728 	movx	@dptr,a
      00047C E4               [12] 1729 	clr	a
      00047D A3               [24] 1730 	inc	dptr
      00047E F0               [24] 1731 	movx	@dptr,a
      00047F 90 00 00         [24] 1732 	mov	dptr,#_rf_write_register_PARM_3
      000482 04               [12] 1733 	inc	a
      000483 F0               [24] 1734 	movx	@dptr,a
      000484 E4               [12] 1735 	clr	a
      000485 A3               [24] 1736 	inc	dptr
      000486 F0               [24] 1737 	movx	@dptr,a
      000487 75 82 04         [24] 1738 	mov	dpl,#0x04
      00048A 02 00 00         [24] 1739 	ljmp	_rf_write_register
                                   1740 ;------------------------------------------------------------
                                   1741 ;Allocation info for local variables in function 'setChannel'
                                   1742 ;------------------------------------------------------------
                                   1743 ;channel                   Allocated with name '_setChannel_channel_1_193'
                                   1744 ;------------------------------------------------------------
                                   1745 ;	include/rf24.h:163: void setChannel(unsigned char channel){
                                   1746 ;	-----------------------------------------
                                   1747 ;	 function setChannel
                                   1748 ;	-----------------------------------------
      00048D                       1749 _setChannel:
      00048D E5 82            [12] 1750 	mov	a,dpl
      00048F 90 00 29         [24] 1751 	mov	dptr,#_setChannel_channel_1_193
      000492 F0               [24] 1752 	movx	@dptr,a
                                   1753 ;	include/rf24.h:164: rf_write_register(RF_RF_CH, &channel, 1);
      000493 90 00 00         [24] 1754 	mov	dptr,#_rf_write_register_PARM_2
      000496 74 29            [12] 1755 	mov	a,#_setChannel_channel_1_193
      000498 F0               [24] 1756 	movx	@dptr,a
      000499 74 00            [12] 1757 	mov	a,#(_setChannel_channel_1_193 >> 8)
      00049B A3               [24] 1758 	inc	dptr
      00049C F0               [24] 1759 	movx	@dptr,a
      00049D E4               [12] 1760 	clr	a
      00049E A3               [24] 1761 	inc	dptr
      00049F F0               [24] 1762 	movx	@dptr,a
      0004A0 90 00 00         [24] 1763 	mov	dptr,#_rf_write_register_PARM_3
      0004A3 04               [12] 1764 	inc	a
      0004A4 F0               [24] 1765 	movx	@dptr,a
      0004A5 E4               [12] 1766 	clr	a
      0004A6 A3               [24] 1767 	inc	dptr
      0004A7 F0               [24] 1768 	movx	@dptr,a
      0004A8 75 82 05         [24] 1769 	mov	dpl,#0x05
      0004AB 02 00 00         [24] 1770 	ljmp	_rf_write_register
                                   1771 ;------------------------------------------------------------
                                   1772 ;Allocation info for local variables in function 'setDataRate'
                                   1773 ;------------------------------------------------------------
                                   1774 ;speed                     Allocated with name '_setDataRate_speed_1_195'
                                   1775 ;setup                     Allocated with name '_setDataRate_setup_1_196'
                                   1776 ;------------------------------------------------------------
                                   1777 ;	include/rf24.h:167: void setDataRate(unsigned char speed){
                                   1778 ;	-----------------------------------------
                                   1779 ;	 function setDataRate
                                   1780 ;	-----------------------------------------
      0004AE                       1781 _setDataRate:
      0004AE E5 82            [12] 1782 	mov	a,dpl
      0004B0 90 00 2A         [24] 1783 	mov	dptr,#_setDataRate_speed_1_195
      0004B3 F0               [24] 1784 	movx	@dptr,a
                                   1785 ;	include/rf24.h:170: rf_read_register(RF_RF_SETUP, &setup, 1);
      0004B4 90 00 00         [24] 1786 	mov	dptr,#_rf_read_register_PARM_2
      0004B7 74 2B            [12] 1787 	mov	a,#_setDataRate_setup_1_196
      0004B9 F0               [24] 1788 	movx	@dptr,a
      0004BA 74 00            [12] 1789 	mov	a,#(_setDataRate_setup_1_196 >> 8)
      0004BC A3               [24] 1790 	inc	dptr
      0004BD F0               [24] 1791 	movx	@dptr,a
      0004BE E4               [12] 1792 	clr	a
      0004BF A3               [24] 1793 	inc	dptr
      0004C0 F0               [24] 1794 	movx	@dptr,a
      0004C1 90 00 00         [24] 1795 	mov	dptr,#_rf_read_register_PARM_3
      0004C4 04               [12] 1796 	inc	a
      0004C5 F0               [24] 1797 	movx	@dptr,a
      0004C6 E4               [12] 1798 	clr	a
      0004C7 A3               [24] 1799 	inc	dptr
      0004C8 F0               [24] 1800 	movx	@dptr,a
      0004C9 75 82 06         [24] 1801 	mov	dpl,#0x06
      0004CC 12 00 00         [24] 1802 	lcall	_rf_read_register
                                   1803 ;	include/rf24.h:171: setup &= ~(_BV(RF_DR_LOW) | _BV(RF_DR_HIGH)) ;
      0004CF 90 00 2B         [24] 1804 	mov	dptr,#_setDataRate_setup_1_196
      0004D2 E0               [24] 1805 	movx	a,@dptr
      0004D3 FF               [12] 1806 	mov	r7,a
      0004D4 74 D7            [12] 1807 	mov	a,#0xD7
      0004D6 5F               [12] 1808 	anl	a,r7
      0004D7 F0               [24] 1809 	movx	@dptr,a
                                   1810 ;	include/rf24.h:172: if( speed == RF24_250KBPS ){
      0004D8 90 00 2A         [24] 1811 	mov	dptr,#_setDataRate_speed_1_195
      0004DB E0               [24] 1812 	movx	a,@dptr
      0004DC FF               [12] 1813 	mov	r7,a
      0004DD BF 02 0B         [24] 1814 	cjne	r7,#0x02,00104$
                                   1815 ;	include/rf24.h:173: setup |= _BV( RF_DR_LOW ) ;
      0004E0 90 00 2B         [24] 1816 	mov	dptr,#_setDataRate_setup_1_196
      0004E3 E0               [24] 1817 	movx	a,@dptr
      0004E4 FE               [12] 1818 	mov	r6,a
      0004E5 74 20            [12] 1819 	mov	a,#0x20
      0004E7 4E               [12] 1820 	orl	a,r6
      0004E8 F0               [24] 1821 	movx	@dptr,a
      0004E9 80 0C            [24] 1822 	sjmp	00105$
      0004EB                       1823 00104$:
                                   1824 ;	include/rf24.h:175: if ( speed == RF24_2MBPS ){
      0004EB BF 01 09         [24] 1825 	cjne	r7,#0x01,00105$
                                   1826 ;	include/rf24.h:176: setup |= _BV(RF_DR_HIGH);
      0004EE 90 00 2B         [24] 1827 	mov	dptr,#_setDataRate_setup_1_196
      0004F1 E0               [24] 1828 	movx	a,@dptr
      0004F2 FF               [12] 1829 	mov	r7,a
      0004F3 74 08            [12] 1830 	mov	a,#0x08
      0004F5 4F               [12] 1831 	orl	a,r7
      0004F6 F0               [24] 1832 	movx	@dptr,a
      0004F7                       1833 00105$:
                                   1834 ;	include/rf24.h:179: rf_write_register(RF_RF_SETUP, &setup, 1 ) ;
      0004F7 90 00 00         [24] 1835 	mov	dptr,#_rf_write_register_PARM_2
      0004FA 74 2B            [12] 1836 	mov	a,#_setDataRate_setup_1_196
      0004FC F0               [24] 1837 	movx	@dptr,a
      0004FD 74 00            [12] 1838 	mov	a,#(_setDataRate_setup_1_196 >> 8)
      0004FF A3               [24] 1839 	inc	dptr
      000500 F0               [24] 1840 	movx	@dptr,a
      000501 E4               [12] 1841 	clr	a
      000502 A3               [24] 1842 	inc	dptr
      000503 F0               [24] 1843 	movx	@dptr,a
      000504 90 00 00         [24] 1844 	mov	dptr,#_rf_write_register_PARM_3
      000507 04               [12] 1845 	inc	a
      000508 F0               [24] 1846 	movx	@dptr,a
      000509 E4               [12] 1847 	clr	a
      00050A A3               [24] 1848 	inc	dptr
      00050B F0               [24] 1849 	movx	@dptr,a
      00050C 75 82 06         [24] 1850 	mov	dpl,#0x06
      00050F 02 00 00         [24] 1851 	ljmp	_rf_write_register
                                   1852 ;------------------------------------------------------------
                                   1853 ;Allocation info for local variables in function 'setAutoAck'
                                   1854 ;------------------------------------------------------------
                                   1855 ;enable                    Allocated with name '_setAutoAck_enable_1_200'
                                   1856 ;buffer                    Allocated with name '_setAutoAck_buffer_1_201'
                                   1857 ;------------------------------------------------------------
                                   1858 ;	include/rf24.h:182: void setAutoAck(unsigned char enable)
                                   1859 ;	-----------------------------------------
                                   1860 ;	 function setAutoAck
                                   1861 ;	-----------------------------------------
      000512                       1862 _setAutoAck:
      000512 E5 82            [12] 1863 	mov	a,dpl
      000514 90 00 2C         [24] 1864 	mov	dptr,#_setAutoAck_enable_1_200
      000517 F0               [24] 1865 	movx	@dptr,a
                                   1866 ;	include/rf24.h:185: if (enable==1) buffer=63;
      000518 E0               [24] 1867 	movx	a,@dptr
      000519 FF               [12] 1868 	mov	r7,a
      00051A BF 01 08         [24] 1869 	cjne	r7,#0x01,00102$
      00051D 90 00 2D         [24] 1870 	mov	dptr,#_setAutoAck_buffer_1_201
      000520 74 3F            [12] 1871 	mov	a,#0x3F
      000522 F0               [24] 1872 	movx	@dptr,a
      000523 80 05            [24] 1873 	sjmp	00103$
      000525                       1874 00102$:
                                   1875 ;	include/rf24.h:186: else buffer=0;
      000525 90 00 2D         [24] 1876 	mov	dptr,#_setAutoAck_buffer_1_201
      000528 E4               [12] 1877 	clr	a
      000529 F0               [24] 1878 	movx	@dptr,a
      00052A                       1879 00103$:
                                   1880 ;	include/rf24.h:187: rf_write_register(RF_EN_AA, &buffer,1);
      00052A 90 00 00         [24] 1881 	mov	dptr,#_rf_write_register_PARM_2
      00052D 74 2D            [12] 1882 	mov	a,#_setAutoAck_buffer_1_201
      00052F F0               [24] 1883 	movx	@dptr,a
      000530 74 00            [12] 1884 	mov	a,#(_setAutoAck_buffer_1_201 >> 8)
      000532 A3               [24] 1885 	inc	dptr
      000533 F0               [24] 1886 	movx	@dptr,a
      000534 E4               [12] 1887 	clr	a
      000535 A3               [24] 1888 	inc	dptr
      000536 F0               [24] 1889 	movx	@dptr,a
      000537 90 00 00         [24] 1890 	mov	dptr,#_rf_write_register_PARM_3
      00053A 04               [12] 1891 	inc	a
      00053B F0               [24] 1892 	movx	@dptr,a
      00053C E4               [12] 1893 	clr	a
      00053D A3               [24] 1894 	inc	dptr
      00053E F0               [24] 1895 	movx	@dptr,a
      00053F 75 82 01         [24] 1896 	mov	dpl,#0x01
      000542 02 00 00         [24] 1897 	ljmp	_rf_write_register
                                   1898 ;------------------------------------------------------------
                                   1899 ;Allocation info for local variables in function 'setCRCLength'
                                   1900 ;------------------------------------------------------------
                                   1901 ;length                    Allocated with name '_setCRCLength_length_1_202'
                                   1902 ;buffer                    Allocated with name '_setCRCLength_buffer_1_203'
                                   1903 ;------------------------------------------------------------
                                   1904 ;	include/rf24.h:190: void setCRCLength(unsigned char length)
                                   1905 ;	-----------------------------------------
                                   1906 ;	 function setCRCLength
                                   1907 ;	-----------------------------------------
      000545                       1908 _setCRCLength:
      000545 E5 82            [12] 1909 	mov	a,dpl
      000547 90 00 2E         [24] 1910 	mov	dptr,#_setCRCLength_length_1_202
      00054A F0               [24] 1911 	movx	@dptr,a
                                   1912 ;	include/rf24.h:193: rf_read_register(RF_CONFIG,&buffer,1);
      00054B 90 00 00         [24] 1913 	mov	dptr,#_rf_read_register_PARM_2
      00054E 74 2F            [12] 1914 	mov	a,#_setCRCLength_buffer_1_203
      000550 F0               [24] 1915 	movx	@dptr,a
      000551 74 00            [12] 1916 	mov	a,#(_setCRCLength_buffer_1_203 >> 8)
      000553 A3               [24] 1917 	inc	dptr
      000554 F0               [24] 1918 	movx	@dptr,a
      000555 E4               [12] 1919 	clr	a
      000556 A3               [24] 1920 	inc	dptr
      000557 F0               [24] 1921 	movx	@dptr,a
      000558 90 00 00         [24] 1922 	mov	dptr,#_rf_read_register_PARM_3
      00055B 04               [12] 1923 	inc	a
      00055C F0               [24] 1924 	movx	@dptr,a
      00055D E4               [12] 1925 	clr	a
      00055E A3               [24] 1926 	inc	dptr
      00055F F0               [24] 1927 	movx	@dptr,a
      000560 75 82 00         [24] 1928 	mov	dpl,#0x00
      000563 12 00 00         [24] 1929 	lcall	_rf_read_register
                                   1930 ;	include/rf24.h:194: buffer = buffer & ~( _BV(RF_CRCO) | _BV(RF_EN_CRC)) ;
      000566 90 00 2F         [24] 1931 	mov	dptr,#_setCRCLength_buffer_1_203
      000569 E0               [24] 1932 	movx	a,@dptr
      00056A FF               [12] 1933 	mov	r7,a
      00056B 74 F3            [12] 1934 	mov	a,#0xF3
      00056D 5F               [12] 1935 	anl	a,r7
      00056E F0               [24] 1936 	movx	@dptr,a
                                   1937 ;	include/rf24.h:195: if (length==1) buffer |= _BV(RF_EN_CRC);
      00056F 90 00 2E         [24] 1938 	mov	dptr,#_setCRCLength_length_1_202
      000572 E0               [24] 1939 	movx	a,@dptr
      000573 FF               [12] 1940 	mov	r7,a
      000574 BF 01 0B         [24] 1941 	cjne	r7,#0x01,00104$
      000577 90 00 2F         [24] 1942 	mov	dptr,#_setCRCLength_buffer_1_203
      00057A E0               [24] 1943 	movx	a,@dptr
      00057B FE               [12] 1944 	mov	r6,a
      00057C 74 08            [12] 1945 	mov	a,#0x08
      00057E 4E               [12] 1946 	orl	a,r6
      00057F F0               [24] 1947 	movx	@dptr,a
      000580 80 0C            [24] 1948 	sjmp	00105$
      000582                       1949 00104$:
                                   1950 ;	include/rf24.h:196: else if (length==2) buffer |= _BV(RF_EN_CRC) | _BV( RF_CRCO );
      000582 BF 02 09         [24] 1951 	cjne	r7,#0x02,00105$
      000585 90 00 2F         [24] 1952 	mov	dptr,#_setCRCLength_buffer_1_203
      000588 E0               [24] 1953 	movx	a,@dptr
      000589 FF               [12] 1954 	mov	r7,a
      00058A 74 0C            [12] 1955 	mov	a,#0x0C
      00058C 4F               [12] 1956 	orl	a,r7
      00058D F0               [24] 1957 	movx	@dptr,a
      00058E                       1958 00105$:
                                   1959 ;	include/rf24.h:197: rf_write_register(RF_CONFIG,&buffer,1 );
      00058E 90 00 00         [24] 1960 	mov	dptr,#_rf_write_register_PARM_2
      000591 74 2F            [12] 1961 	mov	a,#_setCRCLength_buffer_1_203
      000593 F0               [24] 1962 	movx	@dptr,a
      000594 74 00            [12] 1963 	mov	a,#(_setCRCLength_buffer_1_203 >> 8)
      000596 A3               [24] 1964 	inc	dptr
      000597 F0               [24] 1965 	movx	@dptr,a
      000598 E4               [12] 1966 	clr	a
      000599 A3               [24] 1967 	inc	dptr
      00059A F0               [24] 1968 	movx	@dptr,a
      00059B 90 00 00         [24] 1969 	mov	dptr,#_rf_write_register_PARM_3
      00059E 04               [12] 1970 	inc	a
      00059F F0               [24] 1971 	movx	@dptr,a
      0005A0 E4               [12] 1972 	clr	a
      0005A1 A3               [24] 1973 	inc	dptr
      0005A2 F0               [24] 1974 	movx	@dptr,a
      0005A3 75 82 00         [24] 1975 	mov	dpl,#0x00
      0005A6 02 00 00         [24] 1976 	ljmp	_rf_write_register
                                   1977 ;------------------------------------------------------------
                                   1978 ;Allocation info for local variables in function 'setPALevel'
                                   1979 ;------------------------------------------------------------
                                   1980 ;level                     Allocated with name '_setPALevel_level_1_204'
                                   1981 ;setup                     Allocated with name '_setPALevel_setup_1_205'
                                   1982 ;------------------------------------------------------------
                                   1983 ;	include/rf24.h:201: void setPALevel(unsigned char level)
                                   1984 ;	-----------------------------------------
                                   1985 ;	 function setPALevel
                                   1986 ;	-----------------------------------------
      0005A9                       1987 _setPALevel:
      0005A9 E5 82            [12] 1988 	mov	a,dpl
      0005AB 90 00 30         [24] 1989 	mov	dptr,#_setPALevel_level_1_204
      0005AE F0               [24] 1990 	movx	@dptr,a
                                   1991 ;	include/rf24.h:204: rf_read_register(RF_RF_SETUP, &setup, 1);
      0005AF 90 00 00         [24] 1992 	mov	dptr,#_rf_read_register_PARM_2
      0005B2 74 31            [12] 1993 	mov	a,#_setPALevel_setup_1_205
      0005B4 F0               [24] 1994 	movx	@dptr,a
      0005B5 74 00            [12] 1995 	mov	a,#(_setPALevel_setup_1_205 >> 8)
      0005B7 A3               [24] 1996 	inc	dptr
      0005B8 F0               [24] 1997 	movx	@dptr,a
      0005B9 E4               [12] 1998 	clr	a
      0005BA A3               [24] 1999 	inc	dptr
      0005BB F0               [24] 2000 	movx	@dptr,a
      0005BC 90 00 00         [24] 2001 	mov	dptr,#_rf_read_register_PARM_3
      0005BF 04               [12] 2002 	inc	a
      0005C0 F0               [24] 2003 	movx	@dptr,a
      0005C1 E4               [12] 2004 	clr	a
      0005C2 A3               [24] 2005 	inc	dptr
      0005C3 F0               [24] 2006 	movx	@dptr,a
      0005C4 75 82 06         [24] 2007 	mov	dpl,#0x06
      0005C7 12 00 00         [24] 2008 	lcall	_rf_read_register
                                   2009 ;	include/rf24.h:205: setup &= ~(_BV(RF_PWR_LOW) | _BV(RF_PWR_HIGH)) ;
      0005CA 90 00 31         [24] 2010 	mov	dptr,#_setPALevel_setup_1_205
      0005CD E0               [24] 2011 	movx	a,@dptr
      0005CE FF               [12] 2012 	mov	r7,a
      0005CF 74 F9            [12] 2013 	mov	a,#0xF9
      0005D1 5F               [12] 2014 	anl	a,r7
      0005D2 F0               [24] 2015 	movx	@dptr,a
                                   2016 ;	include/rf24.h:206: setup|= ((level&3)<<RF_PWR_LOW);
      0005D3 90 00 30         [24] 2017 	mov	dptr,#_setPALevel_level_1_204
      0005D6 E0               [24] 2018 	movx	a,@dptr
      0005D7 54 03            [12] 2019 	anl	a,#0x03
      0005D9 25 E0            [12] 2020 	add	a,acc
      0005DB FF               [12] 2021 	mov	r7,a
      0005DC 90 00 31         [24] 2022 	mov	dptr,#_setPALevel_setup_1_205
      0005DF E0               [24] 2023 	movx	a,@dptr
      0005E0 4F               [12] 2024 	orl	a,r7
      0005E1 F0               [24] 2025 	movx	@dptr,a
                                   2026 ;	include/rf24.h:207: rf_write_register(RF_RF_SETUP,&setup,1);
      0005E2 90 00 00         [24] 2027 	mov	dptr,#_rf_write_register_PARM_2
      0005E5 74 31            [12] 2028 	mov	a,#_setPALevel_setup_1_205
      0005E7 F0               [24] 2029 	movx	@dptr,a
      0005E8 74 00            [12] 2030 	mov	a,#(_setPALevel_setup_1_205 >> 8)
      0005EA A3               [24] 2031 	inc	dptr
      0005EB F0               [24] 2032 	movx	@dptr,a
      0005EC E4               [12] 2033 	clr	a
      0005ED A3               [24] 2034 	inc	dptr
      0005EE F0               [24] 2035 	movx	@dptr,a
      0005EF 90 00 00         [24] 2036 	mov	dptr,#_rf_write_register_PARM_3
      0005F2 04               [12] 2037 	inc	a
      0005F3 F0               [24] 2038 	movx	@dptr,a
      0005F4 E4               [12] 2039 	clr	a
      0005F5 A3               [24] 2040 	inc	dptr
      0005F6 F0               [24] 2041 	movx	@dptr,a
      0005F7 75 82 06         [24] 2042 	mov	dpl,#0x06
      0005FA 02 00 00         [24] 2043 	ljmp	_rf_write_register
                                   2044 ;------------------------------------------------------------
                                   2045 ;Allocation info for local variables in function 'setAddressWidth'
                                   2046 ;------------------------------------------------------------
                                   2047 ;a_width                   Allocated with name '_setAddressWidth_a_width_1_206'
                                   2048 ;aw                        Allocated with name '_setAddressWidth_aw_1_207'
                                   2049 ;------------------------------------------------------------
                                   2050 ;	include/rf24.h:211: void setAddressWidth(uint8_t a_width){
                                   2051 ;	-----------------------------------------
                                   2052 ;	 function setAddressWidth
                                   2053 ;	-----------------------------------------
      0005FD                       2054 _setAddressWidth:
      0005FD E5 82            [12] 2055 	mov	a,dpl
      0005FF 90 00 32         [24] 2056 	mov	dptr,#_setAddressWidth_a_width_1_206
      000602 F0               [24] 2057 	movx	@dptr,a
                                   2058 ;	include/rf24.h:214: if(a_width -= 2)
      000603 E0               [24] 2059 	movx	a,@dptr
      000604 FF               [12] 2060 	mov	r7,a
      000605 1F               [12] 2061 	dec	r7
      000606 1F               [12] 2062 	dec	r7
      000607 EF               [12] 2063 	mov	a,r7
      000608 F0               [24] 2064 	movx	@dptr,a
      000609 EF               [12] 2065 	mov	a,r7
      00060A 60 33            [24] 2066 	jz	00103$
                                   2067 ;	include/rf24.h:216: aw = a_width%4;
      00060C 90 00 32         [24] 2068 	mov	dptr,#_setAddressWidth_a_width_1_206
      00060F E0               [24] 2069 	movx	a,@dptr
      000610 FF               [12] 2070 	mov	r7,a
      000611 53 07 03         [24] 2071 	anl	ar7,#0x03
      000614 90 00 33         [24] 2072 	mov	dptr,#_setAddressWidth_aw_1_207
      000617 EF               [12] 2073 	mov	a,r7
      000618 F0               [24] 2074 	movx	@dptr,a
                                   2075 ;	include/rf24.h:217: rf_write_register(RF_SETUP_AW,& aw, 1);
      000619 90 00 00         [24] 2076 	mov	dptr,#_rf_write_register_PARM_2
      00061C 74 33            [12] 2077 	mov	a,#_setAddressWidth_aw_1_207
      00061E F0               [24] 2078 	movx	@dptr,a
      00061F 74 00            [12] 2079 	mov	a,#(_setAddressWidth_aw_1_207 >> 8)
      000621 A3               [24] 2080 	inc	dptr
      000622 F0               [24] 2081 	movx	@dptr,a
      000623 E4               [12] 2082 	clr	a
      000624 A3               [24] 2083 	inc	dptr
      000625 F0               [24] 2084 	movx	@dptr,a
      000626 90 00 00         [24] 2085 	mov	dptr,#_rf_write_register_PARM_3
      000629 04               [12] 2086 	inc	a
      00062A F0               [24] 2087 	movx	@dptr,a
      00062B E4               [12] 2088 	clr	a
      00062C A3               [24] 2089 	inc	dptr
      00062D F0               [24] 2090 	movx	@dptr,a
      00062E 75 82 03         [24] 2091 	mov	dpl,#0x03
      000631 C0 07            [24] 2092 	push	ar7
      000633 12 00 00         [24] 2093 	lcall	_rf_write_register
      000636 D0 07            [24] 2094 	pop	ar7
                                   2095 ;	include/rf24.h:218: addr_width = (a_width%4) + 2;
      000638 90 00 C5         [24] 2096 	mov	dptr,#_addr_width
      00063B 74 02            [12] 2097 	mov	a,#0x02
      00063D 2F               [12] 2098 	add	a,r7
      00063E F0               [24] 2099 	movx	@dptr,a
      00063F                       2100 00103$:
      00063F 22               [24] 2101 	ret
                                   2102 ;------------------------------------------------------------
                                   2103 ;Allocation info for local variables in function 'openReadingPipe'
                                   2104 ;------------------------------------------------------------
                                   2105 ;address1                  Allocated with name '_openReadingPipe_PARM_2'
                                   2106 ;address2                  Allocated with name '_openReadingPipe_PARM_3'
                                   2107 ;address3                  Allocated with name '_openReadingPipe_PARM_4'
                                   2108 ;address4                  Allocated with name '_openReadingPipe_PARM_5'
                                   2109 ;address5                  Allocated with name '_openReadingPipe_PARM_6'
                                   2110 ;child                     Allocated with name '_openReadingPipe_child_1_209'
                                   2111 ;setup                     Allocated with name '_openReadingPipe_setup_1_210'
                                   2112 ;orpdata                   Allocated with name '_openReadingPipe_orpdata_1_210'
                                   2113 ;------------------------------------------------------------
                                   2114 ;	include/rf24.h:222: void openReadingPipe(uint8_t child, byte address1, byte address2, byte address3, byte address4, byte address5)
                                   2115 ;	-----------------------------------------
                                   2116 ;	 function openReadingPipe
                                   2117 ;	-----------------------------------------
      000640                       2118 _openReadingPipe:
      000640 E5 82            [12] 2119 	mov	a,dpl
      000642 90 00 39         [24] 2120 	mov	dptr,#_openReadingPipe_child_1_209
      000645 F0               [24] 2121 	movx	@dptr,a
                                   2122 ;	include/rf24.h:226: orpdata[0]=address5;
      000646 90 00 38         [24] 2123 	mov	dptr,#_openReadingPipe_PARM_6
      000649 E0               [24] 2124 	movx	a,@dptr
      00064A 90 00 3B         [24] 2125 	mov	dptr,#_openReadingPipe_orpdata_1_210
      00064D F0               [24] 2126 	movx	@dptr,a
                                   2127 ;	include/rf24.h:227: orpdata[1]=address4;
      00064E 90 00 37         [24] 2128 	mov	dptr,#_openReadingPipe_PARM_5
      000651 E0               [24] 2129 	movx	a,@dptr
      000652 90 00 3C         [24] 2130 	mov	dptr,#(_openReadingPipe_orpdata_1_210 + 0x0001)
      000655 F0               [24] 2131 	movx	@dptr,a
                                   2132 ;	include/rf24.h:228: orpdata[2]=address3;
      000656 90 00 36         [24] 2133 	mov	dptr,#_openReadingPipe_PARM_4
      000659 E0               [24] 2134 	movx	a,@dptr
      00065A 90 00 3D         [24] 2135 	mov	dptr,#(_openReadingPipe_orpdata_1_210 + 0x0002)
      00065D F0               [24] 2136 	movx	@dptr,a
                                   2137 ;	include/rf24.h:229: orpdata[3]=address2;
      00065E 90 00 35         [24] 2138 	mov	dptr,#_openReadingPipe_PARM_3
      000661 E0               [24] 2139 	movx	a,@dptr
      000662 90 00 3E         [24] 2140 	mov	dptr,#(_openReadingPipe_orpdata_1_210 + 0x0003)
      000665 F0               [24] 2141 	movx	@dptr,a
                                   2142 ;	include/rf24.h:230: orpdata[4]=address1;
      000666 90 00 34         [24] 2143 	mov	dptr,#_openReadingPipe_PARM_2
      000669 E0               [24] 2144 	movx	a,@dptr
      00066A 90 00 3F         [24] 2145 	mov	dptr,#(_openReadingPipe_orpdata_1_210 + 0x0004)
      00066D F0               [24] 2146 	movx	@dptr,a
                                   2147 ;	include/rf24.h:232: if (child == 0)
      00066E 90 00 39         [24] 2148 	mov	dptr,#_openReadingPipe_child_1_209
      000671 E0               [24] 2149 	movx	a,@dptr
      000672 FF               [12] 2150 	mov	r7,a
      000673 70 29            [24] 2151 	jnz	00102$
                                   2152 ;	include/rf24.h:234: memcpy((const uint8_t*)pipe0_reading_address, &orpdata, addr_width);
      000675 90 00 C5         [24] 2153 	mov	dptr,#_addr_width
      000678 E0               [24] 2154 	movx	a,@dptr
      000679 FE               [12] 2155 	mov	r6,a
      00067A 7D 00            [12] 2156 	mov	r5,#0x00
      00067C 90 00 AA         [24] 2157 	mov	dptr,#_memcpy_PARM_2
      00067F 74 3B            [12] 2158 	mov	a,#_openReadingPipe_orpdata_1_210
      000681 F0               [24] 2159 	movx	@dptr,a
      000682 74 00            [12] 2160 	mov	a,#(_openReadingPipe_orpdata_1_210 >> 8)
      000684 A3               [24] 2161 	inc	dptr
      000685 F0               [24] 2162 	movx	@dptr,a
      000686 E4               [12] 2163 	clr	a
      000687 A3               [24] 2164 	inc	dptr
      000688 F0               [24] 2165 	movx	@dptr,a
      000689 90 00 AD         [24] 2166 	mov	dptr,#_memcpy_PARM_3
      00068C EE               [12] 2167 	mov	a,r6
      00068D F0               [24] 2168 	movx	@dptr,a
      00068E ED               [12] 2169 	mov	a,r5
      00068F A3               [24] 2170 	inc	dptr
      000690 F0               [24] 2171 	movx	@dptr,a
      000691 90 00 14         [24] 2172 	mov	dptr,#_pipe0_reading_address
      000694 75 F0 00         [24] 2173 	mov	b,#0x00
      000697 C0 07            [24] 2174 	push	ar7
      000699 12 14 C9         [24] 2175 	lcall	_memcpy
      00069C D0 07            [24] 2176 	pop	ar7
      00069E                       2177 00102$:
                                   2178 ;	include/rf24.h:238: if ( child < 2 ) { 
      00069E BF 02 00         [24] 2179 	cjne	r7,#0x02,00115$
      0006A1                       2180 00115$:
      0006A1 50 2B            [24] 2181 	jnc	00104$
                                   2182 ;	include/rf24.h:239: rf_write_register(RF_RX_ADDR_P0 + child, (const uint8_t*)(&orpdata), addr_width);
      0006A3 74 0A            [12] 2183 	mov	a,#0x0A
      0006A5 2F               [12] 2184 	add	a,r7
      0006A6 FE               [12] 2185 	mov	r6,a
      0006A7 90 00 C5         [24] 2186 	mov	dptr,#_addr_width
      0006AA E0               [24] 2187 	movx	a,@dptr
      0006AB FD               [12] 2188 	mov	r5,a
      0006AC 7C 00            [12] 2189 	mov	r4,#0x00
      0006AE 90 00 00         [24] 2190 	mov	dptr,#_rf_write_register_PARM_2
      0006B1 74 3B            [12] 2191 	mov	a,#_openReadingPipe_orpdata_1_210
      0006B3 F0               [24] 2192 	movx	@dptr,a
      0006B4 74 00            [12] 2193 	mov	a,#(_openReadingPipe_orpdata_1_210 >> 8)
      0006B6 A3               [24] 2194 	inc	dptr
      0006B7 F0               [24] 2195 	movx	@dptr,a
      0006B8 E4               [12] 2196 	clr	a
      0006B9 A3               [24] 2197 	inc	dptr
      0006BA F0               [24] 2198 	movx	@dptr,a
      0006BB 90 00 00         [24] 2199 	mov	dptr,#_rf_write_register_PARM_3
      0006BE ED               [12] 2200 	mov	a,r5
      0006BF F0               [24] 2201 	movx	@dptr,a
      0006C0 EC               [12] 2202 	mov	a,r4
      0006C1 A3               [24] 2203 	inc	dptr
      0006C2 F0               [24] 2204 	movx	@dptr,a
      0006C3 8E 82            [24] 2205 	mov	dpl,r6
      0006C5 C0 07            [24] 2206 	push	ar7
      0006C7 12 00 00         [24] 2207 	lcall	_rf_write_register
      0006CA D0 07            [24] 2208 	pop	ar7
      0006CC 80 22            [24] 2209 	sjmp	00105$
      0006CE                       2210 00104$:
                                   2211 ;	include/rf24.h:241: rf_write_register(RF_RX_ADDR_P0 + child, (const uint8_t*)(&orpdata[0]), 1);
      0006CE 74 0A            [12] 2212 	mov	a,#0x0A
      0006D0 2F               [12] 2213 	add	a,r7
      0006D1 FE               [12] 2214 	mov	r6,a
      0006D2 90 00 00         [24] 2215 	mov	dptr,#_rf_write_register_PARM_2
      0006D5 74 3B            [12] 2216 	mov	a,#_openReadingPipe_orpdata_1_210
      0006D7 F0               [24] 2217 	movx	@dptr,a
      0006D8 74 00            [12] 2218 	mov	a,#(_openReadingPipe_orpdata_1_210 >> 8)
      0006DA A3               [24] 2219 	inc	dptr
      0006DB F0               [24] 2220 	movx	@dptr,a
      0006DC E4               [12] 2221 	clr	a
      0006DD A3               [24] 2222 	inc	dptr
      0006DE F0               [24] 2223 	movx	@dptr,a
      0006DF 90 00 00         [24] 2224 	mov	dptr,#_rf_write_register_PARM_3
      0006E2 04               [12] 2225 	inc	a
      0006E3 F0               [24] 2226 	movx	@dptr,a
      0006E4 E4               [12] 2227 	clr	a
      0006E5 A3               [24] 2228 	inc	dptr
      0006E6 F0               [24] 2229 	movx	@dptr,a
      0006E7 8E 82            [24] 2230 	mov	dpl,r6
      0006E9 C0 07            [24] 2231 	push	ar7
      0006EB 12 00 00         [24] 2232 	lcall	_rf_write_register
      0006EE D0 07            [24] 2233 	pop	ar7
      0006F0                       2234 00105$:
                                   2235 ;	include/rf24.h:247: setup=32;
      0006F0 90 00 3A         [24] 2236 	mov	dptr,#_openReadingPipe_setup_1_210
      0006F3 74 20            [12] 2237 	mov	a,#0x20
      0006F5 F0               [24] 2238 	movx	@dptr,a
                                   2239 ;	include/rf24.h:248: rf_write_register(RF_RX_PW_P0+child,&setup,1);
      0006F6 74 11            [12] 2240 	mov	a,#0x11
      0006F8 2F               [12] 2241 	add	a,r7
      0006F9 FE               [12] 2242 	mov	r6,a
      0006FA 90 00 00         [24] 2243 	mov	dptr,#_rf_write_register_PARM_2
      0006FD 74 3A            [12] 2244 	mov	a,#_openReadingPipe_setup_1_210
      0006FF F0               [24] 2245 	movx	@dptr,a
      000700 74 00            [12] 2246 	mov	a,#(_openReadingPipe_setup_1_210 >> 8)
      000702 A3               [24] 2247 	inc	dptr
      000703 F0               [24] 2248 	movx	@dptr,a
      000704 E4               [12] 2249 	clr	a
      000705 A3               [24] 2250 	inc	dptr
      000706 F0               [24] 2251 	movx	@dptr,a
      000707 90 00 00         [24] 2252 	mov	dptr,#_rf_write_register_PARM_3
      00070A 04               [12] 2253 	inc	a
      00070B F0               [24] 2254 	movx	@dptr,a
      00070C E4               [12] 2255 	clr	a
      00070D A3               [24] 2256 	inc	dptr
      00070E F0               [24] 2257 	movx	@dptr,a
      00070F 8E 82            [24] 2258 	mov	dpl,r6
      000711 C0 07            [24] 2259 	push	ar7
      000713 12 00 00         [24] 2260 	lcall	_rf_write_register
                                   2261 ;	include/rf24.h:249: rf_read_register(RF_EN_RXADDR,&setup,1);
      000716 90 00 00         [24] 2262 	mov	dptr,#_rf_read_register_PARM_2
      000719 74 3A            [12] 2263 	mov	a,#_openReadingPipe_setup_1_210
      00071B F0               [24] 2264 	movx	@dptr,a
      00071C 74 00            [12] 2265 	mov	a,#(_openReadingPipe_setup_1_210 >> 8)
      00071E A3               [24] 2266 	inc	dptr
      00071F F0               [24] 2267 	movx	@dptr,a
      000720 E4               [12] 2268 	clr	a
      000721 A3               [24] 2269 	inc	dptr
      000722 F0               [24] 2270 	movx	@dptr,a
      000723 90 00 00         [24] 2271 	mov	dptr,#_rf_read_register_PARM_3
      000726 04               [12] 2272 	inc	a
      000727 F0               [24] 2273 	movx	@dptr,a
      000728 E4               [12] 2274 	clr	a
      000729 A3               [24] 2275 	inc	dptr
      00072A F0               [24] 2276 	movx	@dptr,a
      00072B 75 82 02         [24] 2277 	mov	dpl,#0x02
      00072E 12 00 00         [24] 2278 	lcall	_rf_read_register
      000731 D0 07            [24] 2279 	pop	ar7
                                   2280 ;	include/rf24.h:250: setup |= _BV(RF_ERX_P0+child);
      000733 8F F0            [24] 2281 	mov	b,r7
      000735 05 F0            [12] 2282 	inc	b
      000737 74 01            [12] 2283 	mov	a,#0x01
      000739 80 02            [24] 2284 	sjmp	00119$
      00073B                       2285 00117$:
      00073B 25 E0            [12] 2286 	add	a,acc
      00073D                       2287 00119$:
      00073D D5 F0 FB         [24] 2288 	djnz	b,00117$
      000740 FF               [12] 2289 	mov	r7,a
      000741 90 00 3A         [24] 2290 	mov	dptr,#_openReadingPipe_setup_1_210
      000744 E0               [24] 2291 	movx	a,@dptr
      000745 4F               [12] 2292 	orl	a,r7
      000746 F0               [24] 2293 	movx	@dptr,a
                                   2294 ;	include/rf24.h:251: rf_write_register(RF_EN_RXADDR,&setup ,1);
      000747 90 00 00         [24] 2295 	mov	dptr,#_rf_write_register_PARM_2
      00074A 74 3A            [12] 2296 	mov	a,#_openReadingPipe_setup_1_210
      00074C F0               [24] 2297 	movx	@dptr,a
      00074D 74 00            [12] 2298 	mov	a,#(_openReadingPipe_setup_1_210 >> 8)
      00074F A3               [24] 2299 	inc	dptr
      000750 F0               [24] 2300 	movx	@dptr,a
      000751 E4               [12] 2301 	clr	a
      000752 A3               [24] 2302 	inc	dptr
      000753 F0               [24] 2303 	movx	@dptr,a
      000754 90 00 00         [24] 2304 	mov	dptr,#_rf_write_register_PARM_3
      000757 04               [12] 2305 	inc	a
      000758 F0               [24] 2306 	movx	@dptr,a
      000759 E4               [12] 2307 	clr	a
      00075A A3               [24] 2308 	inc	dptr
      00075B F0               [24] 2309 	movx	@dptr,a
      00075C 75 82 02         [24] 2310 	mov	dpl,#0x02
      00075F 02 00 00         [24] 2311 	ljmp	_rf_write_register
                                   2312 ;------------------------------------------------------------
                                   2313 ;Allocation info for local variables in function 'openWritingPipe'
                                   2314 ;------------------------------------------------------------
                                   2315 ;address2                  Allocated with name '_openWritingPipe_PARM_2'
                                   2316 ;address3                  Allocated with name '_openWritingPipe_PARM_3'
                                   2317 ;address4                  Allocated with name '_openWritingPipe_PARM_4'
                                   2318 ;address5                  Allocated with name '_openWritingPipe_PARM_5'
                                   2319 ;address1                  Allocated with name '_openWritingPipe_address1_1_213'
                                   2320 ;setup                     Allocated with name '_openWritingPipe_setup_1_214'
                                   2321 ;owpdata                   Allocated with name '_openWritingPipe_owpdata_1_214'
                                   2322 ;------------------------------------------------------------
                                   2323 ;	include/rf24.h:254: void openWritingPipe(byte address1, byte address2, byte address3, byte address4, byte address5)
                                   2324 ;	-----------------------------------------
                                   2325 ;	 function openWritingPipe
                                   2326 ;	-----------------------------------------
      000762                       2327 _openWritingPipe:
      000762 E5 82            [12] 2328 	mov	a,dpl
      000764 90 00 44         [24] 2329 	mov	dptr,#_openWritingPipe_address1_1_213
      000767 F0               [24] 2330 	movx	@dptr,a
                                   2331 ;	include/rf24.h:258: owpdata[0]=address5;
      000768 90 00 43         [24] 2332 	mov	dptr,#_openWritingPipe_PARM_5
      00076B E0               [24] 2333 	movx	a,@dptr
      00076C 90 00 46         [24] 2334 	mov	dptr,#_openWritingPipe_owpdata_1_214
      00076F F0               [24] 2335 	movx	@dptr,a
                                   2336 ;	include/rf24.h:259: owpdata[1]=address4;
      000770 90 00 42         [24] 2337 	mov	dptr,#_openWritingPipe_PARM_4
      000773 E0               [24] 2338 	movx	a,@dptr
      000774 90 00 47         [24] 2339 	mov	dptr,#(_openWritingPipe_owpdata_1_214 + 0x0001)
      000777 F0               [24] 2340 	movx	@dptr,a
                                   2341 ;	include/rf24.h:260: owpdata[2]=address3;
      000778 90 00 41         [24] 2342 	mov	dptr,#_openWritingPipe_PARM_3
      00077B E0               [24] 2343 	movx	a,@dptr
      00077C 90 00 48         [24] 2344 	mov	dptr,#(_openWritingPipe_owpdata_1_214 + 0x0002)
      00077F F0               [24] 2345 	movx	@dptr,a
                                   2346 ;	include/rf24.h:261: owpdata[3]=address2;
      000780 90 00 40         [24] 2347 	mov	dptr,#_openWritingPipe_PARM_2
      000783 E0               [24] 2348 	movx	a,@dptr
      000784 90 00 49         [24] 2349 	mov	dptr,#(_openWritingPipe_owpdata_1_214 + 0x0003)
      000787 F0               [24] 2350 	movx	@dptr,a
                                   2351 ;	include/rf24.h:262: owpdata[4]=address1;
      000788 90 00 44         [24] 2352 	mov	dptr,#_openWritingPipe_address1_1_213
      00078B E0               [24] 2353 	movx	a,@dptr
      00078C 90 00 4A         [24] 2354 	mov	dptr,#(_openWritingPipe_owpdata_1_214 + 0x0004)
      00078F F0               [24] 2355 	movx	@dptr,a
                                   2356 ;	include/rf24.h:264: rf_write_register(RF_RX_ADDR_P0, (uint8_t*)(&owpdata), addr_width);
      000790 90 00 C5         [24] 2357 	mov	dptr,#_addr_width
      000793 E0               [24] 2358 	movx	a,@dptr
      000794 FF               [12] 2359 	mov	r7,a
      000795 7E 00            [12] 2360 	mov	r6,#0x00
      000797 90 00 00         [24] 2361 	mov	dptr,#_rf_write_register_PARM_2
      00079A 74 46            [12] 2362 	mov	a,#_openWritingPipe_owpdata_1_214
      00079C F0               [24] 2363 	movx	@dptr,a
      00079D 74 00            [12] 2364 	mov	a,#(_openWritingPipe_owpdata_1_214 >> 8)
      00079F A3               [24] 2365 	inc	dptr
      0007A0 F0               [24] 2366 	movx	@dptr,a
      0007A1 E4               [12] 2367 	clr	a
      0007A2 A3               [24] 2368 	inc	dptr
      0007A3 F0               [24] 2369 	movx	@dptr,a
      0007A4 90 00 00         [24] 2370 	mov	dptr,#_rf_write_register_PARM_3
      0007A7 EF               [12] 2371 	mov	a,r7
      0007A8 F0               [24] 2372 	movx	@dptr,a
      0007A9 EE               [12] 2373 	mov	a,r6
      0007AA A3               [24] 2374 	inc	dptr
      0007AB F0               [24] 2375 	movx	@dptr,a
      0007AC 75 82 0A         [24] 2376 	mov	dpl,#0x0A
      0007AF 12 00 00         [24] 2377 	lcall	_rf_write_register
                                   2378 ;	include/rf24.h:265: rf_write_register(RF_TX_ADDR, (uint8_t*)(&owpdata), addr_width);
      0007B2 90 00 C5         [24] 2379 	mov	dptr,#_addr_width
      0007B5 E0               [24] 2380 	movx	a,@dptr
      0007B6 FF               [12] 2381 	mov	r7,a
      0007B7 7E 00            [12] 2382 	mov	r6,#0x00
      0007B9 90 00 00         [24] 2383 	mov	dptr,#_rf_write_register_PARM_2
      0007BC 74 46            [12] 2384 	mov	a,#_openWritingPipe_owpdata_1_214
      0007BE F0               [24] 2385 	movx	@dptr,a
      0007BF 74 00            [12] 2386 	mov	a,#(_openWritingPipe_owpdata_1_214 >> 8)
      0007C1 A3               [24] 2387 	inc	dptr
      0007C2 F0               [24] 2388 	movx	@dptr,a
      0007C3 E4               [12] 2389 	clr	a
      0007C4 A3               [24] 2390 	inc	dptr
      0007C5 F0               [24] 2391 	movx	@dptr,a
      0007C6 90 00 00         [24] 2392 	mov	dptr,#_rf_write_register_PARM_3
      0007C9 EF               [12] 2393 	mov	a,r7
      0007CA F0               [24] 2394 	movx	@dptr,a
      0007CB EE               [12] 2395 	mov	a,r6
      0007CC A3               [24] 2396 	inc	dptr
      0007CD F0               [24] 2397 	movx	@dptr,a
      0007CE 75 82 10         [24] 2398 	mov	dpl,#0x10
      0007D1 12 00 00         [24] 2399 	lcall	_rf_write_register
                                   2400 ;	include/rf24.h:267: setup=32;
      0007D4 90 00 45         [24] 2401 	mov	dptr,#_openWritingPipe_setup_1_214
      0007D7 74 20            [12] 2402 	mov	a,#0x20
      0007D9 F0               [24] 2403 	movx	@dptr,a
                                   2404 ;	include/rf24.h:268: rf_write_register(RF_RX_PW_P0,&setup,1);
      0007DA 90 00 00         [24] 2405 	mov	dptr,#_rf_write_register_PARM_2
      0007DD 74 45            [12] 2406 	mov	a,#_openWritingPipe_setup_1_214
      0007DF F0               [24] 2407 	movx	@dptr,a
      0007E0 74 00            [12] 2408 	mov	a,#(_openWritingPipe_setup_1_214 >> 8)
      0007E2 A3               [24] 2409 	inc	dptr
      0007E3 F0               [24] 2410 	movx	@dptr,a
      0007E4 E4               [12] 2411 	clr	a
      0007E5 A3               [24] 2412 	inc	dptr
      0007E6 F0               [24] 2413 	movx	@dptr,a
      0007E7 90 00 00         [24] 2414 	mov	dptr,#_rf_write_register_PARM_3
      0007EA 04               [12] 2415 	inc	a
      0007EB F0               [24] 2416 	movx	@dptr,a
      0007EC E4               [12] 2417 	clr	a
      0007ED A3               [24] 2418 	inc	dptr
      0007EE F0               [24] 2419 	movx	@dptr,a
      0007EF 75 82 11         [24] 2420 	mov	dpl,#0x11
      0007F2 02 00 00         [24] 2421 	ljmp	_rf_write_register
                                   2422 ;------------------------------------------------------------
                                   2423 ;Allocation info for local variables in function 'available'
                                   2424 ;------------------------------------------------------------
                                   2425 ;pipe_num                  Allocated with name '_available_pipe_num_1_215'
                                   2426 ;buffer                    Allocated with name '_available_buffer_1_216'
                                   2427 ;status                    Allocated with name '_available_status_1_216'
                                   2428 ;result                    Allocated with name '_available_result_1_216'
                                   2429 ;------------------------------------------------------------
                                   2430 ;	include/rf24.h:271: unsigned char available(uint8_t* pipe_num)
                                   2431 ;	-----------------------------------------
                                   2432 ;	 function available
                                   2433 ;	-----------------------------------------
      0007F5                       2434 _available:
      0007F5 AF F0            [24] 2435 	mov	r7,b
      0007F7 AE 83            [24] 2436 	mov	r6,dph
      0007F9 E5 82            [12] 2437 	mov	a,dpl
      0007FB 90 00 4B         [24] 2438 	mov	dptr,#_available_pipe_num_1_215
      0007FE F0               [24] 2439 	movx	@dptr,a
      0007FF EE               [12] 2440 	mov	a,r6
      000800 A3               [24] 2441 	inc	dptr
      000801 F0               [24] 2442 	movx	@dptr,a
      000802 EF               [12] 2443 	mov	a,r7
      000803 A3               [24] 2444 	inc	dptr
      000804 F0               [24] 2445 	movx	@dptr,a
                                   2446 ;	include/rf24.h:274: uint8_t status = rf_get_status();
      000805 90 00 00         [24] 2447 	mov	dptr,#_rf_spi_execute_command_PARM_2
      000808 E4               [12] 2448 	clr	a
      000809 F0               [24] 2449 	movx	@dptr,a
      00080A A3               [24] 2450 	inc	dptr
      00080B F0               [24] 2451 	movx	@dptr,a
      00080C A3               [24] 2452 	inc	dptr
      00080D F0               [24] 2453 	movx	@dptr,a
      00080E 90 00 00         [24] 2454 	mov	dptr,#_rf_spi_execute_command_PARM_3
      000811 F0               [24] 2455 	movx	@dptr,a
      000812 A3               [24] 2456 	inc	dptr
      000813 F0               [24] 2457 	movx	@dptr,a
      000814 90 00 00         [24] 2458 	mov	dptr,#_rf_spi_execute_command_PARM_4
      000817 04               [12] 2459 	inc	a
      000818 F0               [24] 2460 	movx	@dptr,a
      000819 75 82 FF         [24] 2461 	mov	dpl,#0xFF
      00081C 12 00 00         [24] 2462 	lcall	_rf_spi_execute_command
      00081F AF 82            [24] 2463 	mov	r7,dpl
                                   2464 ;	include/rf24.h:276: uint8_t result = ( status & _BV(RX_DR) );
      000821 74 40            [12] 2465 	mov	a,#0x40
      000823 5F               [12] 2466 	anl	a,r7
                                   2467 ;	include/rf24.h:278: if (result)
      000824 FE               [12] 2468 	mov	r6,a
      000825 60 41            [24] 2469 	jz	00102$
                                   2470 ;	include/rf24.h:282: *pipe_num = ( status >> RX_P_NO ) & 7;
      000827 90 00 4B         [24] 2471 	mov	dptr,#_available_pipe_num_1_215
      00082A E0               [24] 2472 	movx	a,@dptr
      00082B FB               [12] 2473 	mov	r3,a
      00082C A3               [24] 2474 	inc	dptr
      00082D E0               [24] 2475 	movx	a,@dptr
      00082E FC               [12] 2476 	mov	r4,a
      00082F A3               [24] 2477 	inc	dptr
      000830 E0               [24] 2478 	movx	a,@dptr
      000831 FD               [12] 2479 	mov	r5,a
      000832 EF               [12] 2480 	mov	a,r7
      000833 C3               [12] 2481 	clr	c
      000834 13               [12] 2482 	rrc	a
      000835 FF               [12] 2483 	mov	r7,a
      000836 53 07 07         [24] 2484 	anl	ar7,#0x07
      000839 8B 82            [24] 2485 	mov	dpl,r3
      00083B 8C 83            [24] 2486 	mov	dph,r4
      00083D 8D F0            [24] 2487 	mov	b,r5
      00083F EF               [12] 2488 	mov	a,r7
      000840 12 15 3D         [24] 2489 	lcall	__gptrput
                                   2490 ;	include/rf24.h:283: buffer=64;// _BV(RX_DR);
      000843 90 00 4E         [24] 2491 	mov	dptr,#_available_buffer_1_216
      000846 74 40            [12] 2492 	mov	a,#0x40
      000848 F0               [24] 2493 	movx	@dptr,a
                                   2494 ;	include/rf24.h:284: rf_write_register(STATUS,&buffer,1 ); 
      000849 90 00 00         [24] 2495 	mov	dptr,#_rf_write_register_PARM_2
      00084C 74 4E            [12] 2496 	mov	a,#_available_buffer_1_216
      00084E F0               [24] 2497 	movx	@dptr,a
      00084F 74 00            [12] 2498 	mov	a,#(_available_buffer_1_216 >> 8)
      000851 A3               [24] 2499 	inc	dptr
      000852 F0               [24] 2500 	movx	@dptr,a
      000853 E4               [12] 2501 	clr	a
      000854 A3               [24] 2502 	inc	dptr
      000855 F0               [24] 2503 	movx	@dptr,a
      000856 90 00 00         [24] 2504 	mov	dptr,#_rf_write_register_PARM_3
      000859 04               [12] 2505 	inc	a
      00085A F0               [24] 2506 	movx	@dptr,a
      00085B E4               [12] 2507 	clr	a
      00085C A3               [24] 2508 	inc	dptr
      00085D F0               [24] 2509 	movx	@dptr,a
      00085E 75 82 07         [24] 2510 	mov	dpl,#0x07
      000861 C0 06            [24] 2511 	push	ar6
      000863 12 00 00         [24] 2512 	lcall	_rf_write_register
      000866 D0 06            [24] 2513 	pop	ar6
      000868                       2514 00102$:
                                   2515 ;	include/rf24.h:287: return result;
      000868 8E 82            [24] 2516 	mov	dpl,r6
      00086A 22               [24] 2517 	ret
                                   2518 ;------------------------------------------------------------
                                   2519 ;Allocation info for local variables in function 'startListening'
                                   2520 ;------------------------------------------------------------
                                   2521 ;config                    Allocated with name '_startListening_config_1_219'
                                   2522 ;------------------------------------------------------------
                                   2523 ;	include/rf24.h:290: void startListening(void){
                                   2524 ;	-----------------------------------------
                                   2525 ;	 function startListening
                                   2526 ;	-----------------------------------------
      00086B                       2527 _startListening:
                                   2528 ;	include/rf24.h:292: rf_read_register(RF_CONFIG, &config, 1);
      00086B 90 00 00         [24] 2529 	mov	dptr,#_rf_read_register_PARM_2
      00086E 74 4F            [12] 2530 	mov	a,#_startListening_config_1_219
      000870 F0               [24] 2531 	movx	@dptr,a
      000871 74 00            [12] 2532 	mov	a,#(_startListening_config_1_219 >> 8)
      000873 A3               [24] 2533 	inc	dptr
      000874 F0               [24] 2534 	movx	@dptr,a
      000875 E4               [12] 2535 	clr	a
      000876 A3               [24] 2536 	inc	dptr
      000877 F0               [24] 2537 	movx	@dptr,a
      000878 90 00 00         [24] 2538 	mov	dptr,#_rf_read_register_PARM_3
      00087B 04               [12] 2539 	inc	a
      00087C F0               [24] 2540 	movx	@dptr,a
      00087D E4               [12] 2541 	clr	a
      00087E A3               [24] 2542 	inc	dptr
      00087F F0               [24] 2543 	movx	@dptr,a
      000880 75 82 00         [24] 2544 	mov	dpl,#0x00
      000883 12 00 00         [24] 2545 	lcall	_rf_read_register
                                   2546 ;	include/rf24.h:293: config |= RF_CONFIG_PRIM_RX;
      000886 90 00 4F         [24] 2547 	mov	dptr,#_startListening_config_1_219
      000889 E0               [24] 2548 	movx	a,@dptr
      00088A FF               [12] 2549 	mov	r7,a
      00088B 74 01            [12] 2550 	mov	a,#0x01
      00088D 4F               [12] 2551 	orl	a,r7
      00088E F0               [24] 2552 	movx	@dptr,a
                                   2553 ;	include/rf24.h:294: rf_write_register(RF_CONFIG, &config, 1);
      00088F 90 00 00         [24] 2554 	mov	dptr,#_rf_write_register_PARM_2
      000892 74 4F            [12] 2555 	mov	a,#_startListening_config_1_219
      000894 F0               [24] 2556 	movx	@dptr,a
      000895 74 00            [12] 2557 	mov	a,#(_startListening_config_1_219 >> 8)
      000897 A3               [24] 2558 	inc	dptr
      000898 F0               [24] 2559 	movx	@dptr,a
      000899 E4               [12] 2560 	clr	a
      00089A A3               [24] 2561 	inc	dptr
      00089B F0               [24] 2562 	movx	@dptr,a
      00089C 90 00 00         [24] 2563 	mov	dptr,#_rf_write_register_PARM_3
      00089F 04               [12] 2564 	inc	a
      0008A0 F0               [24] 2565 	movx	@dptr,a
      0008A1 E4               [12] 2566 	clr	a
      0008A2 A3               [24] 2567 	inc	dptr
      0008A3 F0               [24] 2568 	movx	@dptr,a
      0008A4 75 82 00         [24] 2569 	mov	dpl,#0x00
      0008A7 12 00 00         [24] 2570 	lcall	_rf_write_register
                                   2571 ;	include/rf24.h:295: config = _BV(RX_DR) | _BV(TX_DS) | _BV(MAX_RT);
      0008AA 90 00 4F         [24] 2572 	mov	dptr,#_startListening_config_1_219
      0008AD 74 70            [12] 2573 	mov	a,#0x70
      0008AF F0               [24] 2574 	movx	@dptr,a
                                   2575 ;	include/rf24.h:296: rf_write_register(RF_STATUS, &config, 1);
      0008B0 90 00 00         [24] 2576 	mov	dptr,#_rf_write_register_PARM_2
      0008B3 74 4F            [12] 2577 	mov	a,#_startListening_config_1_219
      0008B5 F0               [24] 2578 	movx	@dptr,a
      0008B6 74 00            [12] 2579 	mov	a,#(_startListening_config_1_219 >> 8)
      0008B8 A3               [24] 2580 	inc	dptr
      0008B9 F0               [24] 2581 	movx	@dptr,a
      0008BA E4               [12] 2582 	clr	a
      0008BB A3               [24] 2583 	inc	dptr
      0008BC F0               [24] 2584 	movx	@dptr,a
      0008BD 90 00 00         [24] 2585 	mov	dptr,#_rf_write_register_PARM_3
      0008C0 04               [12] 2586 	inc	a
      0008C1 F0               [24] 2587 	movx	@dptr,a
      0008C2 E4               [12] 2588 	clr	a
      0008C3 A3               [24] 2589 	inc	dptr
      0008C4 F0               [24] 2590 	movx	@dptr,a
      0008C5 75 82 07         [24] 2591 	mov	dpl,#0x07
      0008C8 12 00 00         [24] 2592 	lcall	_rf_write_register
                                   2593 ;	include/rf24.h:297: rf_set_ce();
      0008CB D2 E8            [12] 2594 	setb _RFCON_SB_RFCE 
      0008CD 90 00 04         [24] 2595 	mov	dptr,#0x0004
      0008D0 12 00 00         [24] 2596 	lcall	_delay_us
                                   2597 ;	include/rf24.h:299: if (pipe0_reading_address[0] > 0)
      0008D3 90 00 14         [24] 2598 	mov	dptr,#_pipe0_reading_address
      0008D6 E0               [24] 2599 	movx	a,@dptr
      0008D7 60 24            [24] 2600 	jz	00102$
                                   2601 ;	include/rf24.h:301: rf_write_register(RF_RX_ADDR_P0, (uint8_t*)pipe0_reading_address, addr_width);	
      0008D9 90 00 C5         [24] 2602 	mov	dptr,#_addr_width
      0008DC E0               [24] 2603 	movx	a,@dptr
      0008DD FF               [12] 2604 	mov	r7,a
      0008DE 7E 00            [12] 2605 	mov	r6,#0x00
      0008E0 90 00 00         [24] 2606 	mov	dptr,#_rf_write_register_PARM_2
      0008E3 74 14            [12] 2607 	mov	a,#_pipe0_reading_address
      0008E5 F0               [24] 2608 	movx	@dptr,a
      0008E6 74 00            [12] 2609 	mov	a,#(_pipe0_reading_address >> 8)
      0008E8 A3               [24] 2610 	inc	dptr
      0008E9 F0               [24] 2611 	movx	@dptr,a
      0008EA E4               [12] 2612 	clr	a
      0008EB A3               [24] 2613 	inc	dptr
      0008EC F0               [24] 2614 	movx	@dptr,a
      0008ED 90 00 00         [24] 2615 	mov	dptr,#_rf_write_register_PARM_3
      0008F0 EF               [12] 2616 	mov	a,r7
      0008F1 F0               [24] 2617 	movx	@dptr,a
      0008F2 EE               [12] 2618 	mov	a,r6
      0008F3 A3               [24] 2619 	inc	dptr
      0008F4 F0               [24] 2620 	movx	@dptr,a
      0008F5 75 82 0A         [24] 2621 	mov	dpl,#0x0A
      0008F8 12 00 00         [24] 2622 	lcall	_rf_write_register
      0008FB 80 06            [24] 2623 	sjmp	00103$
      0008FD                       2624 00102$:
                                   2625 ;	include/rf24.h:305: closeReadingPipe(0);
      0008FD 75 82 00         [24] 2626 	mov	dpl,#0x00
      000900 12 09 1D         [24] 2627 	lcall	_closeReadingPipe
      000903                       2628 00103$:
                                   2629 ;	include/rf24.h:307: rf_flush_tx();
      000903 90 00 00         [24] 2630 	mov	dptr,#_rf_spi_execute_command_PARM_2
      000906 E4               [12] 2631 	clr	a
      000907 F0               [24] 2632 	movx	@dptr,a
      000908 A3               [24] 2633 	inc	dptr
      000909 F0               [24] 2634 	movx	@dptr,a
      00090A A3               [24] 2635 	inc	dptr
      00090B F0               [24] 2636 	movx	@dptr,a
      00090C 90 00 00         [24] 2637 	mov	dptr,#_rf_spi_execute_command_PARM_3
      00090F F0               [24] 2638 	movx	@dptr,a
      000910 A3               [24] 2639 	inc	dptr
      000911 F0               [24] 2640 	movx	@dptr,a
      000912 90 00 00         [24] 2641 	mov	dptr,#_rf_spi_execute_command_PARM_4
      000915 04               [12] 2642 	inc	a
      000916 F0               [24] 2643 	movx	@dptr,a
      000917 75 82 E1         [24] 2644 	mov	dpl,#0xE1
      00091A 02 00 00         [24] 2645 	ljmp	_rf_spi_execute_command
                                   2646 ;------------------------------------------------------------
                                   2647 ;Allocation info for local variables in function 'closeReadingPipe'
                                   2648 ;------------------------------------------------------------
                                   2649 ;pipe                      Allocated with name '_closeReadingPipe_pipe_1_222'
                                   2650 ;config                    Allocated with name '_closeReadingPipe_config_1_223'
                                   2651 ;------------------------------------------------------------
                                   2652 ;	include/rf24.h:311: void closeReadingPipe( uint8_t pipe ){
                                   2653 ;	-----------------------------------------
                                   2654 ;	 function closeReadingPipe
                                   2655 ;	-----------------------------------------
      00091D                       2656 _closeReadingPipe:
                                   2657 ;	include/rf24.h:314: rf_read_register(RF_EN_RXADDR, &config, 1);
      00091D 90 00 00         [24] 2658 	mov	dptr,#_rf_read_register_PARM_2
      000920 74 50            [12] 2659 	mov	a,#_closeReadingPipe_config_1_223
      000922 F0               [24] 2660 	movx	@dptr,a
      000923 74 00            [12] 2661 	mov	a,#(_closeReadingPipe_config_1_223 >> 8)
      000925 A3               [24] 2662 	inc	dptr
      000926 F0               [24] 2663 	movx	@dptr,a
      000927 E4               [12] 2664 	clr	a
      000928 A3               [24] 2665 	inc	dptr
      000929 F0               [24] 2666 	movx	@dptr,a
      00092A 90 00 00         [24] 2667 	mov	dptr,#_rf_read_register_PARM_3
      00092D 04               [12] 2668 	inc	a
      00092E F0               [24] 2669 	movx	@dptr,a
      00092F E4               [12] 2670 	clr	a
      000930 A3               [24] 2671 	inc	dptr
      000931 F0               [24] 2672 	movx	@dptr,a
      000932 75 82 02         [24] 2673 	mov	dpl,#0x02
      000935 12 00 00         [24] 2674 	lcall	_rf_read_register
                                   2675 ;	include/rf24.h:316: rf_write_register(RF_CONFIG,&config ,1);
      000938 90 00 00         [24] 2676 	mov	dptr,#_rf_write_register_PARM_2
      00093B 74 50            [12] 2677 	mov	a,#_closeReadingPipe_config_1_223
      00093D F0               [24] 2678 	movx	@dptr,a
      00093E 74 00            [12] 2679 	mov	a,#(_closeReadingPipe_config_1_223 >> 8)
      000940 A3               [24] 2680 	inc	dptr
      000941 F0               [24] 2681 	movx	@dptr,a
      000942 E4               [12] 2682 	clr	a
      000943 A3               [24] 2683 	inc	dptr
      000944 F0               [24] 2684 	movx	@dptr,a
      000945 90 00 00         [24] 2685 	mov	dptr,#_rf_write_register_PARM_3
      000948 04               [12] 2686 	inc	a
      000949 F0               [24] 2687 	movx	@dptr,a
      00094A E4               [12] 2688 	clr	a
      00094B A3               [24] 2689 	inc	dptr
      00094C F0               [24] 2690 	movx	@dptr,a
      00094D 75 82 00         [24] 2691 	mov	dpl,#0x00
      000950 02 00 00         [24] 2692 	ljmp	_rf_write_register
                                   2693 ;------------------------------------------------------------
                                   2694 ;Allocation info for local variables in function 'stopListening'
                                   2695 ;------------------------------------------------------------
                                   2696 ;config                    Allocated with name '_stopListening_config_1_225'
                                   2697 ;------------------------------------------------------------
                                   2698 ;	include/rf24.h:319: void stopListening(void){
                                   2699 ;	-----------------------------------------
                                   2700 ;	 function stopListening
                                   2701 ;	-----------------------------------------
      000953                       2702 _stopListening:
                                   2703 ;	include/rf24.h:322: rf_clear_ce();
      000953 C2 E8            [12] 2704 	clr _RFCON_SB_RFCE 
                                   2705 ;	include/rf24.h:323: delayMilliseconds(txRxDelay);
      000955 90 00 19         [24] 2706 	mov	dptr,#_txRxDelay
      000958 E0               [24] 2707 	movx	a,@dptr
      000959 FF               [12] 2708 	mov	r7,a
      00095A 7E 00            [12] 2709 	mov	r6,#0x00
      00095C 8F 82            [24] 2710 	mov	dpl,r7
      00095E 8E 83            [24] 2711 	mov	dph,r6
      000960 12 00 00         [24] 2712 	lcall	_delay_us
                                   2713 ;	include/rf24.h:324: rf_flush_tx();
      000963 90 00 00         [24] 2714 	mov	dptr,#_rf_spi_execute_command_PARM_2
      000966 E4               [12] 2715 	clr	a
      000967 F0               [24] 2716 	movx	@dptr,a
      000968 A3               [24] 2717 	inc	dptr
      000969 F0               [24] 2718 	movx	@dptr,a
      00096A A3               [24] 2719 	inc	dptr
      00096B F0               [24] 2720 	movx	@dptr,a
      00096C 90 00 00         [24] 2721 	mov	dptr,#_rf_spi_execute_command_PARM_3
      00096F F0               [24] 2722 	movx	@dptr,a
      000970 A3               [24] 2723 	inc	dptr
      000971 F0               [24] 2724 	movx	@dptr,a
      000972 90 00 00         [24] 2725 	mov	dptr,#_rf_spi_execute_command_PARM_4
      000975 04               [12] 2726 	inc	a
      000976 F0               [24] 2727 	movx	@dptr,a
      000977 75 82 E1         [24] 2728 	mov	dpl,#0xE1
      00097A 12 00 00         [24] 2729 	lcall	_rf_spi_execute_command
                                   2730 ;	include/rf24.h:325: delayMilliseconds(txRxDelay);
      00097D 90 00 19         [24] 2731 	mov	dptr,#_txRxDelay
      000980 E0               [24] 2732 	movx	a,@dptr
      000981 FF               [12] 2733 	mov	r7,a
      000982 7E 00            [12] 2734 	mov	r6,#0x00
      000984 8F 82            [24] 2735 	mov	dpl,r7
      000986 8E 83            [24] 2736 	mov	dph,r6
      000988 12 00 00         [24] 2737 	lcall	_delay_us
                                   2738 ;	include/rf24.h:326: rf_read_register(RF_CONFIG, &config, 1);
      00098B 90 00 00         [24] 2739 	mov	dptr,#_rf_read_register_PARM_2
      00098E 74 51            [12] 2740 	mov	a,#_stopListening_config_1_225
      000990 F0               [24] 2741 	movx	@dptr,a
      000991 74 00            [12] 2742 	mov	a,#(_stopListening_config_1_225 >> 8)
      000993 A3               [24] 2743 	inc	dptr
      000994 F0               [24] 2744 	movx	@dptr,a
      000995 E4               [12] 2745 	clr	a
      000996 A3               [24] 2746 	inc	dptr
      000997 F0               [24] 2747 	movx	@dptr,a
      000998 90 00 00         [24] 2748 	mov	dptr,#_rf_read_register_PARM_3
      00099B 04               [12] 2749 	inc	a
      00099C F0               [24] 2750 	movx	@dptr,a
      00099D E4               [12] 2751 	clr	a
      00099E A3               [24] 2752 	inc	dptr
      00099F F0               [24] 2753 	movx	@dptr,a
      0009A0 75 82 00         [24] 2754 	mov	dpl,#0x00
      0009A3 12 00 00         [24] 2755 	lcall	_rf_read_register
                                   2756 ;	include/rf24.h:327: config &= (~RF_CONFIG_PRIM_RX);
      0009A6 90 00 51         [24] 2757 	mov	dptr,#_stopListening_config_1_225
      0009A9 E0               [24] 2758 	movx	a,@dptr
      0009AA FF               [12] 2759 	mov	r7,a
      0009AB 74 FE            [12] 2760 	mov	a,#0xFE
      0009AD 5F               [12] 2761 	anl	a,r7
      0009AE F0               [24] 2762 	movx	@dptr,a
                                   2763 ;	include/rf24.h:328: rf_write_register(RF_CONFIG, &config, 1);
      0009AF 90 00 00         [24] 2764 	mov	dptr,#_rf_write_register_PARM_2
      0009B2 74 51            [12] 2765 	mov	a,#_stopListening_config_1_225
      0009B4 F0               [24] 2766 	movx	@dptr,a
      0009B5 74 00            [12] 2767 	mov	a,#(_stopListening_config_1_225 >> 8)
      0009B7 A3               [24] 2768 	inc	dptr
      0009B8 F0               [24] 2769 	movx	@dptr,a
      0009B9 E4               [12] 2770 	clr	a
      0009BA A3               [24] 2771 	inc	dptr
      0009BB F0               [24] 2772 	movx	@dptr,a
      0009BC 90 00 00         [24] 2773 	mov	dptr,#_rf_write_register_PARM_3
      0009BF 04               [12] 2774 	inc	a
      0009C0 F0               [24] 2775 	movx	@dptr,a
      0009C1 E4               [12] 2776 	clr	a
      0009C2 A3               [24] 2777 	inc	dptr
      0009C3 F0               [24] 2778 	movx	@dptr,a
      0009C4 75 82 00         [24] 2779 	mov	dpl,#0x00
      0009C7 12 00 00         [24] 2780 	lcall	_rf_write_register
                                   2781 ;	include/rf24.h:329: rf_read_register(RF_EN_RXADDR, &config, 1);
      0009CA 90 00 00         [24] 2782 	mov	dptr,#_rf_read_register_PARM_2
      0009CD 74 51            [12] 2783 	mov	a,#_stopListening_config_1_225
      0009CF F0               [24] 2784 	movx	@dptr,a
      0009D0 74 00            [12] 2785 	mov	a,#(_stopListening_config_1_225 >> 8)
      0009D2 A3               [24] 2786 	inc	dptr
      0009D3 F0               [24] 2787 	movx	@dptr,a
      0009D4 E4               [12] 2788 	clr	a
      0009D5 A3               [24] 2789 	inc	dptr
      0009D6 F0               [24] 2790 	movx	@dptr,a
      0009D7 90 00 00         [24] 2791 	mov	dptr,#_rf_read_register_PARM_3
      0009DA 04               [12] 2792 	inc	a
      0009DB F0               [24] 2793 	movx	@dptr,a
      0009DC E4               [12] 2794 	clr	a
      0009DD A3               [24] 2795 	inc	dptr
      0009DE F0               [24] 2796 	movx	@dptr,a
      0009DF 75 82 02         [24] 2797 	mov	dpl,#0x02
      0009E2 12 00 00         [24] 2798 	lcall	_rf_read_register
                                   2799 ;	include/rf24.h:330: config |= _BV(RF_ERX_P0);
      0009E5 90 00 51         [24] 2800 	mov	dptr,#_stopListening_config_1_225
      0009E8 E0               [24] 2801 	movx	a,@dptr
      0009E9 FF               [12] 2802 	mov	r7,a
      0009EA 74 01            [12] 2803 	mov	a,#0x01
      0009EC 4F               [12] 2804 	orl	a,r7
      0009ED F0               [24] 2805 	movx	@dptr,a
                                   2806 ;	include/rf24.h:331: rf_write_register(RF_EN_RXADDR, &config ,1);
      0009EE 90 00 00         [24] 2807 	mov	dptr,#_rf_write_register_PARM_2
      0009F1 74 51            [12] 2808 	mov	a,#_stopListening_config_1_225
      0009F3 F0               [24] 2809 	movx	@dptr,a
      0009F4 74 00            [12] 2810 	mov	a,#(_stopListening_config_1_225 >> 8)
      0009F6 A3               [24] 2811 	inc	dptr
      0009F7 F0               [24] 2812 	movx	@dptr,a
      0009F8 E4               [12] 2813 	clr	a
      0009F9 A3               [24] 2814 	inc	dptr
      0009FA F0               [24] 2815 	movx	@dptr,a
      0009FB 90 00 00         [24] 2816 	mov	dptr,#_rf_write_register_PARM_3
      0009FE 04               [12] 2817 	inc	a
      0009FF F0               [24] 2818 	movx	@dptr,a
      000A00 E4               [12] 2819 	clr	a
      000A01 A3               [24] 2820 	inc	dptr
      000A02 F0               [24] 2821 	movx	@dptr,a
      000A03 75 82 02         [24] 2822 	mov	dpl,#0x02
      000A06 02 00 00         [24] 2823 	ljmp	_rf_write_register
                                   2824 ;------------------------------------------------------------
                                   2825 ;Allocation info for local variables in function 'whatHappened'
                                   2826 ;------------------------------------------------------------
                                   2827 ;tx_fail                   Allocated with name '_whatHappened_PARM_2'
                                   2828 ;rx_ready                  Allocated with name '_whatHappened_PARM_3'
                                   2829 ;tx_ok                     Allocated with name '_whatHappened_tx_ok_1_226'
                                   2830 ;------------------------------------------------------------
                                   2831 ;	include/rf24.h:334: void whatHappened(bool *tx_ok,bool *tx_fail,bool *rx_ready){
                                   2832 ;	-----------------------------------------
                                   2833 ;	 function whatHappened
                                   2834 ;	-----------------------------------------
      000A09                       2835 _whatHappened:
      000A09 AF F0            [24] 2836 	mov	r7,b
      000A0B AE 83            [24] 2837 	mov	r6,dph
      000A0D E5 82            [12] 2838 	mov	a,dpl
      000A0F 90 00 58         [24] 2839 	mov	dptr,#_whatHappened_tx_ok_1_226
      000A12 F0               [24] 2840 	movx	@dptr,a
      000A13 EE               [12] 2841 	mov	a,r6
      000A14 A3               [24] 2842 	inc	dptr
      000A15 F0               [24] 2843 	movx	@dptr,a
      000A16 EF               [12] 2844 	mov	a,r7
      000A17 A3               [24] 2845 	inc	dptr
      000A18 F0               [24] 2846 	movx	@dptr,a
                                   2847 ;	include/rf24.h:336: radio_temp = rf_get_status(); //rf_write_register(STATUS, (uint8_t*)&radio_temp, 1 );
      000A19 90 00 00         [24] 2848 	mov	dptr,#_rf_spi_execute_command_PARM_2
      000A1C E4               [12] 2849 	clr	a
      000A1D F0               [24] 2850 	movx	@dptr,a
      000A1E A3               [24] 2851 	inc	dptr
      000A1F F0               [24] 2852 	movx	@dptr,a
      000A20 A3               [24] 2853 	inc	dptr
      000A21 F0               [24] 2854 	movx	@dptr,a
      000A22 90 00 00         [24] 2855 	mov	dptr,#_rf_spi_execute_command_PARM_3
      000A25 F0               [24] 2856 	movx	@dptr,a
      000A26 A3               [24] 2857 	inc	dptr
      000A27 F0               [24] 2858 	movx	@dptr,a
      000A28 90 00 00         [24] 2859 	mov	dptr,#_rf_spi_execute_command_PARM_4
      000A2B 04               [12] 2860 	inc	a
      000A2C F0               [24] 2861 	movx	@dptr,a
      000A2D 75 82 FF         [24] 2862 	mov	dpl,#0xFF
      000A30 12 00 00         [24] 2863 	lcall	_rf_spi_execute_command
      000A33 AF 82            [24] 2864 	mov	r7,dpl
      000A35 90 00 1A         [24] 2865 	mov	dptr,#_radio_temp
      000A38 EF               [12] 2866 	mov	a,r7
      000A39 F0               [24] 2867 	movx	@dptr,a
                                   2868 ;	include/rf24.h:339: *tx_ok = radio_temp & _BV(TX_DS);
      000A3A 90 00 58         [24] 2869 	mov	dptr,#_whatHappened_tx_ok_1_226
      000A3D E0               [24] 2870 	movx	a,@dptr
      000A3E FC               [12] 2871 	mov	r4,a
      000A3F A3               [24] 2872 	inc	dptr
      000A40 E0               [24] 2873 	movx	a,@dptr
      000A41 FD               [12] 2874 	mov	r5,a
      000A42 A3               [24] 2875 	inc	dptr
      000A43 E0               [24] 2876 	movx	a,@dptr
      000A44 FE               [12] 2877 	mov	r6,a
      000A45 74 20            [12] 2878 	mov	a,#0x20
      000A47 5F               [12] 2879 	anl	a,r7
      000A48 8C 82            [24] 2880 	mov	dpl,r4
      000A4A 8D 83            [24] 2881 	mov	dph,r5
      000A4C 8E F0            [24] 2882 	mov	b,r6
      000A4E 12 15 3D         [24] 2883 	lcall	__gptrput
                                   2884 ;	include/rf24.h:340: *tx_fail = radio_temp & _BV(MAX_RT);
      000A51 90 00 52         [24] 2885 	mov	dptr,#_whatHappened_PARM_2
      000A54 E0               [24] 2886 	movx	a,@dptr
      000A55 FC               [12] 2887 	mov	r4,a
      000A56 A3               [24] 2888 	inc	dptr
      000A57 E0               [24] 2889 	movx	a,@dptr
      000A58 FD               [12] 2890 	mov	r5,a
      000A59 A3               [24] 2891 	inc	dptr
      000A5A E0               [24] 2892 	movx	a,@dptr
      000A5B FE               [12] 2893 	mov	r6,a
      000A5C 74 10            [12] 2894 	mov	a,#0x10
      000A5E 5F               [12] 2895 	anl	a,r7
      000A5F 8C 82            [24] 2896 	mov	dpl,r4
      000A61 8D 83            [24] 2897 	mov	dph,r5
      000A63 8E F0            [24] 2898 	mov	b,r6
      000A65 12 15 3D         [24] 2899 	lcall	__gptrput
                                   2900 ;	include/rf24.h:341: *rx_ready = radio_temp & _BV(RX_DR);
      000A68 90 00 55         [24] 2901 	mov	dptr,#_whatHappened_PARM_3
      000A6B E0               [24] 2902 	movx	a,@dptr
      000A6C FC               [12] 2903 	mov	r4,a
      000A6D A3               [24] 2904 	inc	dptr
      000A6E E0               [24] 2905 	movx	a,@dptr
      000A6F FD               [12] 2906 	mov	r5,a
      000A70 A3               [24] 2907 	inc	dptr
      000A71 E0               [24] 2908 	movx	a,@dptr
      000A72 FE               [12] 2909 	mov	r6,a
      000A73 53 07 40         [24] 2910 	anl	ar7,#0x40
      000A76 8C 82            [24] 2911 	mov	dpl,r4
      000A78 8D 83            [24] 2912 	mov	dph,r5
      000A7A 8E F0            [24] 2913 	mov	b,r6
      000A7C EF               [12] 2914 	mov	a,r7
      000A7D 02 15 3D         [24] 2915 	ljmp	__gptrput
                                   2916 ;------------------------------------------------------------
                                   2917 ;Allocation info for local variables in function 'getDynamicPayloadSize'
                                   2918 ;------------------------------------------------------------
                                   2919 ;dps                       Allocated with name '_getDynamicPayloadSize_dps_1_228'
                                   2920 ;------------------------------------------------------------
                                   2921 ;	include/rf24.h:345: uint8_t getDynamicPayloadSize(){
                                   2922 ;	-----------------------------------------
                                   2923 ;	 function getDynamicPayloadSize
                                   2924 ;	-----------------------------------------
      000A80                       2925 _getDynamicPayloadSize:
                                   2926 ;	include/rf24.h:348: rf_spi_execute_command(RF_R_RX_PL_WID, (uint8_t*)&dps, 1, true);
      000A80 90 00 00         [24] 2927 	mov	dptr,#_rf_spi_execute_command_PARM_2
      000A83 74 5B            [12] 2928 	mov	a,#_getDynamicPayloadSize_dps_1_228
      000A85 F0               [24] 2929 	movx	@dptr,a
      000A86 74 00            [12] 2930 	mov	a,#(_getDynamicPayloadSize_dps_1_228 >> 8)
      000A88 A3               [24] 2931 	inc	dptr
      000A89 F0               [24] 2932 	movx	@dptr,a
      000A8A E4               [12] 2933 	clr	a
      000A8B A3               [24] 2934 	inc	dptr
      000A8C F0               [24] 2935 	movx	@dptr,a
      000A8D 90 00 00         [24] 2936 	mov	dptr,#_rf_spi_execute_command_PARM_3
      000A90 04               [12] 2937 	inc	a
      000A91 F0               [24] 2938 	movx	@dptr,a
      000A92 E4               [12] 2939 	clr	a
      000A93 A3               [24] 2940 	inc	dptr
      000A94 F0               [24] 2941 	movx	@dptr,a
      000A95 90 00 00         [24] 2942 	mov	dptr,#_rf_spi_execute_command_PARM_4
      000A98 04               [12] 2943 	inc	a
      000A99 F0               [24] 2944 	movx	@dptr,a
      000A9A 75 82 60         [24] 2945 	mov	dpl,#0x60
      000A9D 12 00 00         [24] 2946 	lcall	_rf_spi_execute_command
                                   2947 ;	include/rf24.h:349: return dps;
      000AA0 90 00 5B         [24] 2948 	mov	dptr,#_getDynamicPayloadSize_dps_1_228
      000AA3 E0               [24] 2949 	movx	a,@dptr
      000AA4 F5 82            [12] 2950 	mov	dpl,a
      000AA6 22               [24] 2951 	ret
                                   2952 ;------------------------------------------------------------
                                   2953 ;Allocation info for local variables in function 'enableDynamicPayloads'
                                   2954 ;------------------------------------------------------------
                                   2955 ;	include/rf24.h:352: void enableDynamicPayloads(){
                                   2956 ;	-----------------------------------------
                                   2957 ;	 function enableDynamicPayloads
                                   2958 ;	-----------------------------------------
      000AA7                       2959 _enableDynamicPayloads:
                                   2960 ;	include/rf24.h:354: radio_temp = rf_read_register_1_byte(FEATURE) | _BV(EN_DPL);
      000AA7 75 82 1D         [24] 2961 	mov	dpl,#0x1D
      000AAA 12 00 00         [24] 2962 	lcall	_rf_read_register_1_byte
      000AAD E5 82            [12] 2963 	mov	a,dpl
      000AAF 90 00 1A         [24] 2964 	mov	dptr,#_radio_temp
      000AB2 44 04            [12] 2965 	orl	a,#0x04
      000AB4 F0               [24] 2966 	movx	@dptr,a
                                   2967 ;	include/rf24.h:355: rf_write_register(FEATURE, &radio_temp, 1);
      000AB5 90 00 00         [24] 2968 	mov	dptr,#_rf_write_register_PARM_2
      000AB8 74 1A            [12] 2969 	mov	a,#_radio_temp
      000ABA F0               [24] 2970 	movx	@dptr,a
      000ABB 74 00            [12] 2971 	mov	a,#(_radio_temp >> 8)
      000ABD A3               [24] 2972 	inc	dptr
      000ABE F0               [24] 2973 	movx	@dptr,a
      000ABF E4               [12] 2974 	clr	a
      000AC0 A3               [24] 2975 	inc	dptr
      000AC1 F0               [24] 2976 	movx	@dptr,a
      000AC2 90 00 00         [24] 2977 	mov	dptr,#_rf_write_register_PARM_3
      000AC5 04               [12] 2978 	inc	a
      000AC6 F0               [24] 2979 	movx	@dptr,a
      000AC7 E4               [12] 2980 	clr	a
      000AC8 A3               [24] 2981 	inc	dptr
      000AC9 F0               [24] 2982 	movx	@dptr,a
      000ACA 75 82 1D         [24] 2983 	mov	dpl,#0x1D
      000ACD 12 00 00         [24] 2984 	lcall	_rf_write_register
                                   2985 ;	include/rf24.h:356: radio_temp = rf_read_register_1_byte(DYNPD) | _BV(DPL_P5) | _BV(DPL_P4) | _BV(DPL_P3) | _BV(DPL_P2) | _BV(DPL_P1) | _BV(DPL_P0);
      000AD0 75 82 1C         [24] 2986 	mov	dpl,#0x1C
      000AD3 12 00 00         [24] 2987 	lcall	_rf_read_register_1_byte
      000AD6 E5 82            [12] 2988 	mov	a,dpl
      000AD8 90 00 1A         [24] 2989 	mov	dptr,#_radio_temp
      000ADB 44 3F            [12] 2990 	orl	a,#0x3F
      000ADD F0               [24] 2991 	movx	@dptr,a
                                   2992 ;	include/rf24.h:357: rf_write_register(DYNPD, & radio_temp, 1);
      000ADE 90 00 00         [24] 2993 	mov	dptr,#_rf_write_register_PARM_2
      000AE1 74 1A            [12] 2994 	mov	a,#_radio_temp
      000AE3 F0               [24] 2995 	movx	@dptr,a
      000AE4 74 00            [12] 2996 	mov	a,#(_radio_temp >> 8)
      000AE6 A3               [24] 2997 	inc	dptr
      000AE7 F0               [24] 2998 	movx	@dptr,a
      000AE8 E4               [12] 2999 	clr	a
      000AE9 A3               [24] 3000 	inc	dptr
      000AEA F0               [24] 3001 	movx	@dptr,a
      000AEB 90 00 00         [24] 3002 	mov	dptr,#_rf_write_register_PARM_3
      000AEE 04               [12] 3003 	inc	a
      000AEF F0               [24] 3004 	movx	@dptr,a
      000AF0 E4               [12] 3005 	clr	a
      000AF1 A3               [24] 3006 	inc	dptr
      000AF2 F0               [24] 3007 	movx	@dptr,a
      000AF3 75 82 1C         [24] 3008 	mov	dpl,#0x1C
      000AF6 02 00 00         [24] 3009 	ljmp	_rf_write_register
                                   3010 ;------------------------------------------------------------
                                   3011 ;Allocation info for local variables in function 'testRPD'
                                   3012 ;------------------------------------------------------------
                                   3013 ;	include/rf24.h:360: bool testRPD(){
                                   3014 ;	-----------------------------------------
                                   3015 ;	 function testRPD
                                   3016 ;	-----------------------------------------
      000AF9                       3017 _testRPD:
                                   3018 ;	include/rf24.h:362: return ( rf_read_register_1_byte(RF_RPD) & 1 ) ;
      000AF9 75 82 09         [24] 3019 	mov	dpl,#0x09
      000AFC 12 00 00         [24] 3020 	lcall	_rf_read_register_1_byte
      000AFF E5 82            [12] 3021 	mov	a,dpl
      000B01 54 01            [12] 3022 	anl	a,#0x01
      000B03 F5 82            [12] 3023 	mov	dpl,a
      000B05 22               [24] 3024 	ret
                                   3025 ;------------------------------------------------------------
                                   3026 ;Allocation info for local variables in function 'testCarrier'
                                   3027 ;------------------------------------------------------------
                                   3028 ;	include/rf24.h:365: bool testCarrier(){
                                   3029 ;	-----------------------------------------
                                   3030 ;	 function testCarrier
                                   3031 ;	-----------------------------------------
      000B06                       3032 _testCarrier:
                                   3033 ;	include/rf24.h:366: return ( rf_read_register_1_byte(CD) & 1 );
      000B06 75 82 09         [24] 3034 	mov	dpl,#0x09
      000B09 12 00 00         [24] 3035 	lcall	_rf_read_register_1_byte
      000B0C E5 82            [12] 3036 	mov	a,dpl
      000B0E 54 01            [12] 3037 	anl	a,#0x01
      000B10 F5 82            [12] 3038 	mov	dpl,a
      000B12 22               [24] 3039 	ret
                                   3040 ;------------------------------------------------------------
                                   3041 ;Allocation info for local variables in function 'getPALevel'
                                   3042 ;------------------------------------------------------------
                                   3043 ;power                     Allocated with name '_getPALevel_power_1_232'
                                   3044 ;result                    Allocated with name '_getPALevel_result_1_232'
                                   3045 ;------------------------------------------------------------
                                   3046 ;	include/rf24.h:369: rf24_pa_dbm_e getPALevel(){
                                   3047 ;	-----------------------------------------
                                   3048 ;	 function getPALevel
                                   3049 ;	-----------------------------------------
      000B13                       3050 _getPALevel:
                                   3051 ;	include/rf24.h:373: rf_read_register(RF_RF_SETUP, &power, 1) ;
      000B13 90 00 00         [24] 3052 	mov	dptr,#_rf_read_register_PARM_2
      000B16 74 5C            [12] 3053 	mov	a,#_getPALevel_power_1_232
      000B18 F0               [24] 3054 	movx	@dptr,a
      000B19 74 00            [12] 3055 	mov	a,#(_getPALevel_power_1_232 >> 8)
      000B1B A3               [24] 3056 	inc	dptr
      000B1C F0               [24] 3057 	movx	@dptr,a
      000B1D E4               [12] 3058 	clr	a
      000B1E A3               [24] 3059 	inc	dptr
      000B1F F0               [24] 3060 	movx	@dptr,a
      000B20 90 00 00         [24] 3061 	mov	dptr,#_rf_read_register_PARM_3
      000B23 04               [12] 3062 	inc	a
      000B24 F0               [24] 3063 	movx	@dptr,a
      000B25 E4               [12] 3064 	clr	a
      000B26 A3               [24] 3065 	inc	dptr
      000B27 F0               [24] 3066 	movx	@dptr,a
      000B28 75 82 06         [24] 3067 	mov	dpl,#0x06
      000B2B 12 00 00         [24] 3068 	lcall	_rf_read_register
                                   3069 ;	include/rf24.h:374: power = power & (_BV(RF_PWR_LOW) | _BV(RF_PWR_HIGH));
      000B2E 90 00 5C         [24] 3070 	mov	dptr,#_getPALevel_power_1_232
      000B31 E0               [24] 3071 	movx	a,@dptr
      000B32 FF               [12] 3072 	mov	r7,a
      000B33 74 06            [12] 3073 	mov	a,#0x06
      000B35 5F               [12] 3074 	anl	a,r7
      000B36 F0               [24] 3075 	movx	@dptr,a
                                   3076 ;	include/rf24.h:375: if ( power == (_BV(RF_PWR_LOW) | _BV(RF_PWR_HIGH)) )
      000B37 E0               [24] 3077 	movx	a,@dptr
      000B38 FF               [12] 3078 	mov	r7,a
      000B39 BF 06 08         [24] 3079 	cjne	r7,#0x06,00108$
                                   3080 ;	include/rf24.h:377: result = RF24_PA_MAX ;
      000B3C 90 00 5D         [24] 3081 	mov	dptr,#_getPALevel_result_1_232
      000B3F 74 03            [12] 3082 	mov	a,#0x03
      000B41 F0               [24] 3083 	movx	@dptr,a
      000B42 80 1B            [24] 3084 	sjmp	00109$
      000B44                       3085 00108$:
                                   3086 ;	include/rf24.h:379: else if ( power == _BV(RF_PWR_HIGH) )
      000B44 BF 04 08         [24] 3087 	cjne	r7,#0x04,00105$
                                   3088 ;	include/rf24.h:381: result = RF24_PA_HIGH ;
      000B47 90 00 5D         [24] 3089 	mov	dptr,#_getPALevel_result_1_232
      000B4A 74 02            [12] 3090 	mov	a,#0x02
      000B4C F0               [24] 3091 	movx	@dptr,a
      000B4D 80 10            [24] 3092 	sjmp	00109$
      000B4F                       3093 00105$:
                                   3094 ;	include/rf24.h:383: else if ( power == _BV(RF_PWR_LOW) )
      000B4F BF 02 08         [24] 3095 	cjne	r7,#0x02,00102$
                                   3096 ;	include/rf24.h:385: result = RF24_PA_LOW ;
      000B52 90 00 5D         [24] 3097 	mov	dptr,#_getPALevel_result_1_232
      000B55 74 01            [12] 3098 	mov	a,#0x01
      000B57 F0               [24] 3099 	movx	@dptr,a
      000B58 80 05            [24] 3100 	sjmp	00109$
      000B5A                       3101 00102$:
                                   3102 ;	include/rf24.h:389: result = RF24_PA_MIN ;
      000B5A 90 00 5D         [24] 3103 	mov	dptr,#_getPALevel_result_1_232
      000B5D E4               [12] 3104 	clr	a
      000B5E F0               [24] 3105 	movx	@dptr,a
      000B5F                       3106 00109$:
                                   3107 ;	include/rf24.h:392: return result ;
      000B5F 90 00 5D         [24] 3108 	mov	dptr,#_getPALevel_result_1_232
      000B62 E0               [24] 3109 	movx	a,@dptr
      000B63 F5 82            [12] 3110 	mov	dpl,a
      000B65 22               [24] 3111 	ret
                                   3112 ;------------------------------------------------------------
                                   3113 ;Allocation info for local variables in function 'getDataRate'
                                   3114 ;------------------------------------------------------------
                                   3115 ;dr                        Allocated with name '_getDataRate_dr_1_238'
                                   3116 ;result                    Allocated with name '_getDataRate_result_1_238'
                                   3117 ;------------------------------------------------------------
                                   3118 ;	include/rf24.h:395: rf24_datarate_e getDataRate(void)
                                   3119 ;	-----------------------------------------
                                   3120 ;	 function getDataRate
                                   3121 ;	-----------------------------------------
      000B66                       3122 _getDataRate:
                                   3123 ;	include/rf24.h:399: rf_read_register(RF_RF_SETUP, &dr, 1) ;
      000B66 90 00 00         [24] 3124 	mov	dptr,#_rf_read_register_PARM_2
      000B69 74 5E            [12] 3125 	mov	a,#_getDataRate_dr_1_238
      000B6B F0               [24] 3126 	movx	@dptr,a
      000B6C 74 00            [12] 3127 	mov	a,#(_getDataRate_dr_1_238 >> 8)
      000B6E A3               [24] 3128 	inc	dptr
      000B6F F0               [24] 3129 	movx	@dptr,a
      000B70 E4               [12] 3130 	clr	a
      000B71 A3               [24] 3131 	inc	dptr
      000B72 F0               [24] 3132 	movx	@dptr,a
      000B73 90 00 00         [24] 3133 	mov	dptr,#_rf_read_register_PARM_3
      000B76 04               [12] 3134 	inc	a
      000B77 F0               [24] 3135 	movx	@dptr,a
      000B78 E4               [12] 3136 	clr	a
      000B79 A3               [24] 3137 	inc	dptr
      000B7A F0               [24] 3138 	movx	@dptr,a
      000B7B 75 82 06         [24] 3139 	mov	dpl,#0x06
      000B7E 12 00 00         [24] 3140 	lcall	_rf_read_register
                                   3141 ;	include/rf24.h:400: dr = dr & (_BV(RF_DR_LOW) | _BV(RF_DR_HIGH));
      000B81 90 00 5E         [24] 3142 	mov	dptr,#_getDataRate_dr_1_238
      000B84 E0               [24] 3143 	movx	a,@dptr
      000B85 FF               [12] 3144 	mov	r7,a
      000B86 74 28            [12] 3145 	mov	a,#0x28
      000B88 5F               [12] 3146 	anl	a,r7
      000B89 F0               [24] 3147 	movx	@dptr,a
                                   3148 ;	include/rf24.h:404: if ( dr == _BV(RF_DR_LOW) )
      000B8A E0               [24] 3149 	movx	a,@dptr
      000B8B FF               [12] 3150 	mov	r7,a
      000B8C BF 20 08         [24] 3151 	cjne	r7,#0x20,00105$
                                   3152 ;	include/rf24.h:407: result = RF24_250KBPS ;
      000B8F 90 00 5F         [24] 3153 	mov	dptr,#_getDataRate_result_1_238
      000B92 74 02            [12] 3154 	mov	a,#0x02
      000B94 F0               [24] 3155 	movx	@dptr,a
      000B95 80 10            [24] 3156 	sjmp	00106$
      000B97                       3157 00105$:
                                   3158 ;	include/rf24.h:409: else if ( dr == _BV(RF_DR_HIGH) )
      000B97 BF 08 08         [24] 3159 	cjne	r7,#0x08,00102$
                                   3160 ;	include/rf24.h:412: result = RF24_2MBPS ;
      000B9A 90 00 5F         [24] 3161 	mov	dptr,#_getDataRate_result_1_238
      000B9D 74 01            [12] 3162 	mov	a,#0x01
      000B9F F0               [24] 3163 	movx	@dptr,a
      000BA0 80 05            [24] 3164 	sjmp	00106$
      000BA2                       3165 00102$:
                                   3166 ;	include/rf24.h:417: result = RF24_1MBPS ;
      000BA2 90 00 5F         [24] 3167 	mov	dptr,#_getDataRate_result_1_238
      000BA5 E4               [12] 3168 	clr	a
      000BA6 F0               [24] 3169 	movx	@dptr,a
      000BA7                       3170 00106$:
                                   3171 ;	include/rf24.h:419: return result ;
      000BA7 90 00 5F         [24] 3172 	mov	dptr,#_getDataRate_result_1_238
      000BAA E0               [24] 3173 	movx	a,@dptr
      000BAB F5 82            [12] 3174 	mov	dpl,a
      000BAD 22               [24] 3175 	ret
                                   3176 ;------------------------------------------------------------
                                   3177 ;Allocation info for local variables in function 'getCRCLength'
                                   3178 ;------------------------------------------------------------
                                   3179 ;config                    Allocated with name '_getCRCLength_config_1_243'
                                   3180 ;result                    Allocated with name '_getCRCLength_result_1_243'
                                   3181 ;------------------------------------------------------------
                                   3182 ;	include/rf24.h:422: rf24_crclength_e getCRCLength(void)
                                   3183 ;	-----------------------------------------
                                   3184 ;	 function getCRCLength
                                   3185 ;	-----------------------------------------
      000BAE                       3186 _getCRCLength:
                                   3187 ;	include/rf24.h:425: rf24_crclength_e result = RF24_CRC_DISABLED;
      000BAE 90 00 61         [24] 3188 	mov	dptr,#_getCRCLength_result_1_243
      000BB1 E4               [12] 3189 	clr	a
      000BB2 F0               [24] 3190 	movx	@dptr,a
                                   3191 ;	include/rf24.h:426: rf_read_register(RF_CONFIG, &config, 1) ;
      000BB3 90 00 00         [24] 3192 	mov	dptr,#_rf_read_register_PARM_2
      000BB6 74 60            [12] 3193 	mov	a,#_getCRCLength_config_1_243
      000BB8 F0               [24] 3194 	movx	@dptr,a
      000BB9 74 00            [12] 3195 	mov	a,#(_getCRCLength_config_1_243 >> 8)
      000BBB A3               [24] 3196 	inc	dptr
      000BBC F0               [24] 3197 	movx	@dptr,a
      000BBD E4               [12] 3198 	clr	a
      000BBE A3               [24] 3199 	inc	dptr
      000BBF F0               [24] 3200 	movx	@dptr,a
      000BC0 90 00 00         [24] 3201 	mov	dptr,#_rf_read_register_PARM_3
      000BC3 04               [12] 3202 	inc	a
      000BC4 F0               [24] 3203 	movx	@dptr,a
      000BC5 E4               [12] 3204 	clr	a
      000BC6 A3               [24] 3205 	inc	dptr
      000BC7 F0               [24] 3206 	movx	@dptr,a
      000BC8 75 82 00         [24] 3207 	mov	dpl,#0x00
      000BCB 12 00 00         [24] 3208 	lcall	_rf_read_register
                                   3209 ;	include/rf24.h:427: config = config & (_BV(RF_CRCO) | _BV(RF_EN_CRC));
      000BCE 90 00 60         [24] 3210 	mov	dptr,#_getCRCLength_config_1_243
      000BD1 E0               [24] 3211 	movx	a,@dptr
      000BD2 FF               [12] 3212 	mov	r7,a
      000BD3 74 0C            [12] 3213 	mov	a,#0x0C
      000BD5 5F               [12] 3214 	anl	a,r7
      000BD6 F0               [24] 3215 	movx	@dptr,a
                                   3216 ;	include/rf24.h:429: if ( config & _BV(RF_EN_CRC ) )
      000BD7 E0               [24] 3217 	movx	a,@dptr
      000BD8 FF               [12] 3218 	mov	r7,a
      000BD9 30 E3 12         [24] 3219 	jnb	acc.3,00105$
                                   3220 ;	include/rf24.h:431: if ( config & _BV(RF_CRCO) )
      000BDC EF               [12] 3221 	mov	a,r7
      000BDD 30 E2 08         [24] 3222 	jnb	acc.2,00102$
                                   3223 ;	include/rf24.h:432: result = RF24_CRC_16;
      000BE0 90 00 61         [24] 3224 	mov	dptr,#_getCRCLength_result_1_243
      000BE3 74 02            [12] 3225 	mov	a,#0x02
      000BE5 F0               [24] 3226 	movx	@dptr,a
      000BE6 80 06            [24] 3227 	sjmp	00105$
      000BE8                       3228 00102$:
                                   3229 ;	include/rf24.h:434: result = RF24_CRC_8;
      000BE8 90 00 61         [24] 3230 	mov	dptr,#_getCRCLength_result_1_243
      000BEB 74 01            [12] 3231 	mov	a,#0x01
      000BED F0               [24] 3232 	movx	@dptr,a
      000BEE                       3233 00105$:
                                   3234 ;	include/rf24.h:437: return result;
      000BEE 90 00 61         [24] 3235 	mov	dptr,#_getCRCLength_result_1_243
      000BF1 E0               [24] 3236 	movx	a,@dptr
      000BF2 F5 82            [12] 3237 	mov	dpl,a
      000BF4 22               [24] 3238 	ret
                                   3239 ;------------------------------------------------------------
                                   3240 ;Allocation info for local variables in function 'swapbuf'
                                   3241 ;------------------------------------------------------------
                                   3242 ;len                       Allocated with name '_swapbuf_len_1_250'
                                   3243 ;buf                       Allocated with name '_swapbuf_buf_1_251'
                                   3244 ;a                         Allocated with name '_swapbuf_a_2_252'
                                   3245 ;v                         Allocated with name '_swapbuf_v_2_252'
                                   3246 ;------------------------------------------------------------
                                   3247 ;	include/btle.h:52: void swapbuf( uint8_t len ) {
                                   3248 ;	-----------------------------------------
                                   3249 ;	 function swapbuf
                                   3250 ;	-----------------------------------------
      000BF5                       3251 _swapbuf:
      000BF5 E5 82            [12] 3252 	mov	a,dpl
      000BF7 90 00 83         [24] 3253 	mov	dptr,#_swapbuf_len_1_250
      000BFA F0               [24] 3254 	movx	@dptr,a
                                   3255 ;	include/btle.h:54: uint8_t* buf = (uint8_t*)&buffer;
      000BFB 7D 62            [12] 3256 	mov	r5,#_buffer
      000BFD 7E 00            [12] 3257 	mov	r6,#(_buffer >> 8)
      000BFF 7F 00            [12] 3258 	mov	r7,#0x00
                                   3259 ;	include/btle.h:56: while (len--) {
      000C01 E0               [24] 3260 	movx	a,@dptr
      000C02 FC               [12] 3261 	mov	r4,a
      000C03                       3262 00117$:
      000C03 8C 03            [24] 3263 	mov	ar3,r4
      000C05 1C               [12] 3264 	dec	r4
      000C06 90 00 83         [24] 3265 	mov	dptr,#_swapbuf_len_1_250
      000C09 EC               [12] 3266 	mov	a,r4
      000C0A F0               [24] 3267 	movx	@dptr,a
      000C0B EB               [12] 3268 	mov	a,r3
      000C0C 70 03            [24] 3269 	jnz	00153$
      000C0E 02 0C BB         [24] 3270 	ljmp	00132$
      000C11                       3271 00153$:
                                   3272 ;	include/btle.h:58: uint8_t a = *buf;
      000C11 8D 82            [24] 3273 	mov	dpl,r5
      000C13 8E 83            [24] 3274 	mov	dph,r6
      000C15 8F F0            [24] 3275 	mov	b,r7
      000C17 12 16 8E         [24] 3276 	lcall	__gptrget
      000C1A FB               [12] 3277 	mov	r3,a
      000C1B 90 00 84         [24] 3278 	mov	dptr,#_swapbuf_a_2_252
      000C1E F0               [24] 3279 	movx	@dptr,a
                                   3280 ;	include/btle.h:59: uint8_t v = 0;
      000C1F 90 00 85         [24] 3281 	mov	dptr,#_swapbuf_v_2_252
      000C22 E4               [12] 3282 	clr	a
      000C23 F0               [24] 3283 	movx	@dptr,a
                                   3284 ;	include/btle.h:61: if (a & 0x80) v |= 0x01;
      000C24 EB               [12] 3285 	mov	a,r3
      000C25 30 E7 06         [24] 3286 	jnb	acc.7,00102$
      000C28 90 00 85         [24] 3287 	mov	dptr,#_swapbuf_v_2_252
      000C2B 74 01            [12] 3288 	mov	a,#0x01
      000C2D F0               [24] 3289 	movx	@dptr,a
      000C2E                       3290 00102$:
                                   3291 ;	include/btle.h:62: if (a & 0x40) v |= 0x02;
      000C2E 90 00 84         [24] 3292 	mov	dptr,#_swapbuf_a_2_252
      000C31 E0               [24] 3293 	movx	a,@dptr
      000C32 FB               [12] 3294 	mov	r3,a
      000C33 30 E6 09         [24] 3295 	jnb	acc.6,00104$
      000C36 90 00 85         [24] 3296 	mov	dptr,#_swapbuf_v_2_252
      000C39 E0               [24] 3297 	movx	a,@dptr
      000C3A FB               [12] 3298 	mov	r3,a
      000C3B 74 02            [12] 3299 	mov	a,#0x02
      000C3D 4B               [12] 3300 	orl	a,r3
      000C3E F0               [24] 3301 	movx	@dptr,a
      000C3F                       3302 00104$:
                                   3303 ;	include/btle.h:63: if (a & 0x20) v |= 0x04;
      000C3F 90 00 84         [24] 3304 	mov	dptr,#_swapbuf_a_2_252
      000C42 E0               [24] 3305 	movx	a,@dptr
      000C43 FB               [12] 3306 	mov	r3,a
      000C44 30 E5 09         [24] 3307 	jnb	acc.5,00106$
      000C47 90 00 85         [24] 3308 	mov	dptr,#_swapbuf_v_2_252
      000C4A E0               [24] 3309 	movx	a,@dptr
      000C4B FB               [12] 3310 	mov	r3,a
      000C4C 74 04            [12] 3311 	mov	a,#0x04
      000C4E 4B               [12] 3312 	orl	a,r3
      000C4F F0               [24] 3313 	movx	@dptr,a
      000C50                       3314 00106$:
                                   3315 ;	include/btle.h:64: if (a & 0x10) v |= 0x08;
      000C50 90 00 84         [24] 3316 	mov	dptr,#_swapbuf_a_2_252
      000C53 E0               [24] 3317 	movx	a,@dptr
      000C54 FB               [12] 3318 	mov	r3,a
      000C55 30 E4 09         [24] 3319 	jnb	acc.4,00108$
      000C58 90 00 85         [24] 3320 	mov	dptr,#_swapbuf_v_2_252
      000C5B E0               [24] 3321 	movx	a,@dptr
      000C5C FB               [12] 3322 	mov	r3,a
      000C5D 74 08            [12] 3323 	mov	a,#0x08
      000C5F 4B               [12] 3324 	orl	a,r3
      000C60 F0               [24] 3325 	movx	@dptr,a
      000C61                       3326 00108$:
                                   3327 ;	include/btle.h:65: if (a & 0x08) v |= 0x10;
      000C61 90 00 84         [24] 3328 	mov	dptr,#_swapbuf_a_2_252
      000C64 E0               [24] 3329 	movx	a,@dptr
      000C65 FB               [12] 3330 	mov	r3,a
      000C66 30 E3 09         [24] 3331 	jnb	acc.3,00110$
      000C69 90 00 85         [24] 3332 	mov	dptr,#_swapbuf_v_2_252
      000C6C E0               [24] 3333 	movx	a,@dptr
      000C6D FB               [12] 3334 	mov	r3,a
      000C6E 74 10            [12] 3335 	mov	a,#0x10
      000C70 4B               [12] 3336 	orl	a,r3
      000C71 F0               [24] 3337 	movx	@dptr,a
      000C72                       3338 00110$:
                                   3339 ;	include/btle.h:66: if (a & 0x04) v |= 0x20;
      000C72 90 00 84         [24] 3340 	mov	dptr,#_swapbuf_a_2_252
      000C75 E0               [24] 3341 	movx	a,@dptr
      000C76 FB               [12] 3342 	mov	r3,a
      000C77 30 E2 09         [24] 3343 	jnb	acc.2,00112$
      000C7A 90 00 85         [24] 3344 	mov	dptr,#_swapbuf_v_2_252
      000C7D E0               [24] 3345 	movx	a,@dptr
      000C7E FB               [12] 3346 	mov	r3,a
      000C7F 74 20            [12] 3347 	mov	a,#0x20
      000C81 4B               [12] 3348 	orl	a,r3
      000C82 F0               [24] 3349 	movx	@dptr,a
      000C83                       3350 00112$:
                                   3351 ;	include/btle.h:67: if (a & 0x02) v |= 0x40;
      000C83 90 00 84         [24] 3352 	mov	dptr,#_swapbuf_a_2_252
      000C86 E0               [24] 3353 	movx	a,@dptr
      000C87 FB               [12] 3354 	mov	r3,a
      000C88 30 E1 09         [24] 3355 	jnb	acc.1,00114$
      000C8B 90 00 85         [24] 3356 	mov	dptr,#_swapbuf_v_2_252
      000C8E E0               [24] 3357 	movx	a,@dptr
      000C8F FB               [12] 3358 	mov	r3,a
      000C90 74 40            [12] 3359 	mov	a,#0x40
      000C92 4B               [12] 3360 	orl	a,r3
      000C93 F0               [24] 3361 	movx	@dptr,a
      000C94                       3362 00114$:
                                   3363 ;	include/btle.h:68: if (a & 0x01) v |= 0x80;
      000C94 90 00 84         [24] 3364 	mov	dptr,#_swapbuf_a_2_252
      000C97 E0               [24] 3365 	movx	a,@dptr
      000C98 FB               [12] 3366 	mov	r3,a
      000C99 30 E0 09         [24] 3367 	jnb	acc.0,00116$
      000C9C 90 00 85         [24] 3368 	mov	dptr,#_swapbuf_v_2_252
      000C9F E0               [24] 3369 	movx	a,@dptr
      000CA0 FB               [12] 3370 	mov	r3,a
      000CA1 74 80            [12] 3371 	mov	a,#0x80
      000CA3 4B               [12] 3372 	orl	a,r3
      000CA4 F0               [24] 3373 	movx	@dptr,a
      000CA5                       3374 00116$:
                                   3375 ;	include/btle.h:70: *(buf++) = v;
      000CA5 90 00 85         [24] 3376 	mov	dptr,#_swapbuf_v_2_252
      000CA8 E0               [24] 3377 	movx	a,@dptr
      000CA9 FB               [12] 3378 	mov	r3,a
      000CAA 8D 82            [24] 3379 	mov	dpl,r5
      000CAC 8E 83            [24] 3380 	mov	dph,r6
      000CAE 8F F0            [24] 3381 	mov	b,r7
      000CB0 12 15 3D         [24] 3382 	lcall	__gptrput
      000CB3 A3               [24] 3383 	inc	dptr
      000CB4 AD 82            [24] 3384 	mov	r5,dpl
      000CB6 AE 83            [24] 3385 	mov	r6,dph
      000CB8 02 0C 03         [24] 3386 	ljmp	00117$
      000CBB                       3387 00132$:
      000CBB 90 00 83         [24] 3388 	mov	dptr,#_swapbuf_len_1_250
      000CBE EC               [12] 3389 	mov	a,r4
      000CBF F0               [24] 3390 	movx	@dptr,a
      000CC0 22               [24] 3391 	ret
                                   3392 ;------------------------------------------------------------
                                   3393 ;Allocation info for local variables in function 'btleBegin'
                                   3394 ;------------------------------------------------------------
                                   3395 ;	include/btle.h:74: void btleBegin(){
                                   3396 ;	-----------------------------------------
                                   3397 ;	 function btleBegin
                                   3398 ;	-----------------------------------------
      000CC1                       3399 _btleBegin:
                                   3400 ;	include/btle.h:75: current = 0;
      000CC1 90 00 82         [24] 3401 	mov	dptr,#_current
      000CC4 E4               [12] 3402 	clr	a
      000CC5 F0               [24] 3403 	movx	@dptr,a
                                   3404 ;	include/btle.h:76: radioBegin();
      000CC6 12 02 EF         [24] 3405 	lcall	_radioBegin
                                   3406 ;	include/btle.h:79: setAutoAck(false);
      000CC9 75 82 00         [24] 3407 	mov	dpl,#0x00
      000CCC 12 05 12         [24] 3408 	lcall	_setAutoAck
                                   3409 ;	include/btle.h:80: setDataRate(RF24_1MBPS);
      000CCF 75 82 00         [24] 3410 	mov	dpl,#0x00
      000CD2 12 04 AE         [24] 3411 	lcall	_setDataRate
                                   3412 ;	include/btle.h:81: setCRCLength(RF24_CRC_DISABLED);
      000CD5 75 82 00         [24] 3413 	mov	dpl,#0x00
      000CD8 12 05 45         [24] 3414 	lcall	_setCRCLength
                                   3415 ;	include/btle.h:82: setChannel( frequency[current] );
      000CDB 90 00 82         [24] 3416 	mov	dptr,#_current
      000CDE E0               [24] 3417 	movx	a,@dptr
      000CDF 90 16 B1         [24] 3418 	mov	dptr,#_frequency
      000CE2 93               [24] 3419 	movc	a,@a+dptr
      000CE3 F5 82            [12] 3420 	mov	dpl,a
      000CE5 12 04 8D         [24] 3421 	lcall	_setChannel
                                   3422 ;	include/btle.h:83: setRetries(0,0);
      000CE8 90 00 26         [24] 3423 	mov	dptr,#_setRetries_PARM_2
      000CEB E4               [12] 3424 	clr	a
      000CEC F0               [24] 3425 	movx	@dptr,a
      000CED 75 82 00         [24] 3426 	mov	dpl,#0x00
      000CF0 12 04 57         [24] 3427 	lcall	_setRetries
                                   3428 ;	include/btle.h:84: setPALevel(RF24_PA_MAX);
      000CF3 75 82 03         [24] 3429 	mov	dpl,#0x03
      000CF6 12 05 A9         [24] 3430 	lcall	_setPALevel
                                   3431 ;	include/btle.h:87: setAddressWidth(4);
      000CF9 75 82 04         [24] 3432 	mov	dpl,#0x04
      000CFC 12 05 FD         [24] 3433 	lcall	_setAddressWidth
                                   3434 ;	include/btle.h:88: openReadingPipe(0, 0, 0x6B, 0x7D, 0x91, 0x71);
      000CFF 90 00 34         [24] 3435 	mov	dptr,#_openReadingPipe_PARM_2
      000D02 E4               [12] 3436 	clr	a
      000D03 F0               [24] 3437 	movx	@dptr,a
      000D04 90 00 35         [24] 3438 	mov	dptr,#_openReadingPipe_PARM_3
      000D07 74 6B            [12] 3439 	mov	a,#0x6B
      000D09 F0               [24] 3440 	movx	@dptr,a
      000D0A 90 00 36         [24] 3441 	mov	dptr,#_openReadingPipe_PARM_4
      000D0D 74 7D            [12] 3442 	mov	a,#0x7D
      000D0F F0               [24] 3443 	movx	@dptr,a
      000D10 90 00 37         [24] 3444 	mov	dptr,#_openReadingPipe_PARM_5
      000D13 74 91            [12] 3445 	mov	a,#0x91
      000D15 F0               [24] 3446 	movx	@dptr,a
      000D16 90 00 38         [24] 3447 	mov	dptr,#_openReadingPipe_PARM_6
      000D19 74 71            [12] 3448 	mov	a,#0x71
      000D1B F0               [24] 3449 	movx	@dptr,a
      000D1C 75 82 00         [24] 3450 	mov	dpl,#0x00
      000D1F 12 06 40         [24] 3451 	lcall	_openReadingPipe
                                   3452 ;	include/btle.h:89: openWritingPipe(  0, 0x6B, 0x7D, 0x91, 0x71);
      000D22 90 00 40         [24] 3453 	mov	dptr,#_openWritingPipe_PARM_2
      000D25 74 6B            [12] 3454 	mov	a,#0x6B
      000D27 F0               [24] 3455 	movx	@dptr,a
      000D28 90 00 41         [24] 3456 	mov	dptr,#_openWritingPipe_PARM_3
      000D2B 74 7D            [12] 3457 	mov	a,#0x7D
      000D2D F0               [24] 3458 	movx	@dptr,a
      000D2E 90 00 42         [24] 3459 	mov	dptr,#_openWritingPipe_PARM_4
      000D31 74 91            [12] 3460 	mov	a,#0x91
      000D33 F0               [24] 3461 	movx	@dptr,a
      000D34 90 00 43         [24] 3462 	mov	dptr,#_openWritingPipe_PARM_5
      000D37 74 71            [12] 3463 	mov	a,#0x71
      000D39 F0               [24] 3464 	movx	@dptr,a
      000D3A 75 82 00         [24] 3465 	mov	dpl,#0x00
      000D3D 12 07 62         [24] 3466 	lcall	_openWritingPipe
                                   3467 ;	include/btle.h:91: powerUp();
      000D40 75 82 01         [24] 3468 	mov	dpl,#0x01
      000D43 02 00 00         [24] 3469 	ljmp	_rf_power_up
                                   3470 ;------------------------------------------------------------
                                   3471 ;Allocation info for local variables in function 'btlesetChannel'
                                   3472 ;------------------------------------------------------------
                                   3473 ;num                       Allocated with name '_btlesetChannel_num_1_254'
                                   3474 ;------------------------------------------------------------
                                   3475 ;	include/btle.h:95: void btlesetChannel( uint8_t num ) {
                                   3476 ;	-----------------------------------------
                                   3477 ;	 function btlesetChannel
                                   3478 ;	-----------------------------------------
      000D46                       3479 _btlesetChannel:
      000D46 E5 82            [12] 3480 	mov	a,dpl
      000D48 90 00 86         [24] 3481 	mov	dptr,#_btlesetChannel_num_1_254
      000D4B F0               [24] 3482 	movx	@dptr,a
                                   3483 ;	include/btle.h:96: current = min(2,max(0,num-37));
      000D4C E0               [24] 3484 	movx	a,@dptr
      000D4D FF               [12] 3485 	mov	r7,a
      000D4E FD               [12] 3486 	mov	r5,a
      000D4F 7E 00            [12] 3487 	mov	r6,#0x00
      000D51 ED               [12] 3488 	mov	a,r5
      000D52 24 DB            [12] 3489 	add	a,#0xDB
      000D54 FB               [12] 3490 	mov	r3,a
      000D55 EE               [12] 3491 	mov	a,r6
      000D56 34 FF            [12] 3492 	addc	a,#0xFF
      000D58 FC               [12] 3493 	mov	r4,a
      000D59 30 E7 06         [24] 3494 	jnb	acc.7,00105$
      000D5C 7B 00            [12] 3495 	mov	r3,#0x00
      000D5E 7C 00            [12] 3496 	mov	r4,#0x00
      000D60 80 08            [24] 3497 	sjmp	00106$
      000D62                       3498 00105$:
      000D62 ED               [12] 3499 	mov	a,r5
      000D63 24 DB            [12] 3500 	add	a,#0xDB
      000D65 FB               [12] 3501 	mov	r3,a
      000D66 EE               [12] 3502 	mov	a,r6
      000D67 34 FF            [12] 3503 	addc	a,#0xFF
      000D69 FC               [12] 3504 	mov	r4,a
      000D6A                       3505 00106$:
      000D6A C3               [12] 3506 	clr	c
      000D6B 74 02            [12] 3507 	mov	a,#0x02
      000D6D 9B               [12] 3508 	subb	a,r3
      000D6E 74 80            [12] 3509 	mov	a,#(0x00 ^ 0x80)
      000D70 8C F0            [24] 3510 	mov	b,r4
      000D72 63 F0 80         [24] 3511 	xrl	b,#0x80
      000D75 95 F0            [12] 3512 	subb	a,b
      000D77 50 04            [24] 3513 	jnc	00103$
      000D79 7C 02            [12] 3514 	mov	r4,#0x02
      000D7B 80 15            [24] 3515 	sjmp	00104$
      000D7D                       3516 00103$:
      000D7D ED               [12] 3517 	mov	a,r5
      000D7E 24 DB            [12] 3518 	add	a,#0xDB
      000D80 FD               [12] 3519 	mov	r5,a
      000D81 EE               [12] 3520 	mov	a,r6
      000D82 34 FF            [12] 3521 	addc	a,#0xFF
      000D84 FE               [12] 3522 	mov	r6,a
      000D85 30 E7 04         [24] 3523 	jnb	acc.7,00107$
      000D88 7E 00            [12] 3524 	mov	r6,#0x00
      000D8A 80 04            [24] 3525 	sjmp	00108$
      000D8C                       3526 00107$:
      000D8C EF               [12] 3527 	mov	a,r7
      000D8D 24 DB            [12] 3528 	add	a,#0xDB
      000D8F FE               [12] 3529 	mov	r6,a
      000D90                       3530 00108$:
      000D90 8E 04            [24] 3531 	mov	ar4,r6
      000D92                       3532 00104$:
      000D92 90 00 82         [24] 3533 	mov	dptr,#_current
      000D95 EC               [12] 3534 	mov	a,r4
      000D96 F0               [24] 3535 	movx	@dptr,a
                                   3536 ;	include/btle.h:97: setChannel( frequency[current] );
      000D97 EC               [12] 3537 	mov	a,r4
      000D98 90 16 B1         [24] 3538 	mov	dptr,#_frequency
      000D9B 93               [24] 3539 	movc	a,@a+dptr
      000D9C F5 82            [12] 3540 	mov	dpl,a
      000D9E 02 04 8D         [24] 3541 	ljmp	_setChannel
                                   3542 ;------------------------------------------------------------
                                   3543 ;Allocation info for local variables in function 'btleHopChannel'
                                   3544 ;------------------------------------------------------------
                                   3545 ;	include/btle.h:101: void btleHopChannel() {
                                   3546 ;	-----------------------------------------
                                   3547 ;	 function btleHopChannel
                                   3548 ;	-----------------------------------------
      000DA1                       3549 _btleHopChannel:
                                   3550 ;	include/btle.h:102: current++;
      000DA1 90 00 82         [24] 3551 	mov	dptr,#_current
      000DA4 E0               [24] 3552 	movx	a,@dptr
      000DA5 24 01            [12] 3553 	add	a,#0x01
      000DA7 F0               [24] 3554 	movx	@dptr,a
                                   3555 ;	include/btle.h:103: if (current >= sizeof(channel)) current = 0;
      000DA8 E0               [24] 3556 	movx	a,@dptr
      000DA9 FF               [12] 3557 	mov	r7,a
      000DAA BF 03 00         [24] 3558 	cjne	r7,#0x03,00108$
      000DAD                       3559 00108$:
      000DAD 40 05            [24] 3560 	jc	00102$
      000DAF 90 00 82         [24] 3561 	mov	dptr,#_current
      000DB2 E4               [12] 3562 	clr	a
      000DB3 F0               [24] 3563 	movx	@dptr,a
      000DB4                       3564 00102$:
                                   3565 ;	include/btle.h:104: setChannel( frequency[current] );
      000DB4 90 00 82         [24] 3566 	mov	dptr,#_current
      000DB7 E0               [24] 3567 	movx	a,@dptr
      000DB8 90 16 B1         [24] 3568 	mov	dptr,#_frequency
      000DBB 93               [24] 3569 	movc	a,@a+dptr
      000DBC F5 82            [12] 3570 	mov	dpl,a
      000DBE 02 04 8D         [24] 3571 	ljmp	_setChannel
                                   3572 ;------------------------------------------------------------
                                   3573 ;Allocation info for local variables in function 'btleAdvertise'
                                   3574 ;------------------------------------------------------------
                                   3575 ;buflen                    Allocated with name '_btleAdvertise_PARM_2'
                                   3576 ;buf                       Allocated with name '_btleAdvertise_buf_1_257'
                                   3577 ;------------------------------------------------------------
                                   3578 ;	include/btle.h:109: bool btleAdvertise( void* buf, uint8_t buflen ) {
                                   3579 ;	-----------------------------------------
                                   3580 ;	 function btleAdvertise
                                   3581 ;	-----------------------------------------
      000DC1                       3582 _btleAdvertise:
      000DC1 AF F0            [24] 3583 	mov	r7,b
      000DC3 AE 83            [24] 3584 	mov	r6,dph
      000DC5 E5 82            [12] 3585 	mov	a,dpl
      000DC7 90 00 88         [24] 3586 	mov	dptr,#_btleAdvertise_buf_1_257
      000DCA F0               [24] 3587 	movx	@dptr,a
      000DCB EE               [12] 3588 	mov	a,r6
      000DCC A3               [24] 3589 	inc	dptr
      000DCD F0               [24] 3590 	movx	@dptr,a
      000DCE EF               [12] 3591 	mov	a,r7
      000DCF A3               [24] 3592 	inc	dptr
      000DD0 F0               [24] 3593 	movx	@dptr,a
                                   3594 ;	include/btle.h:110: return advertise(buf, buflen);
      000DD1 90 00 88         [24] 3595 	mov	dptr,#_btleAdvertise_buf_1_257
      000DD4 E0               [24] 3596 	movx	a,@dptr
      000DD5 FD               [12] 3597 	mov	r5,a
      000DD6 A3               [24] 3598 	inc	dptr
      000DD7 E0               [24] 3599 	movx	a,@dptr
      000DD8 FE               [12] 3600 	mov	r6,a
      000DD9 A3               [24] 3601 	inc	dptr
      000DDA E0               [24] 3602 	movx	a,@dptr
      000DDB FF               [12] 3603 	mov	r7,a
      000DDC 90 00 87         [24] 3604 	mov	dptr,#_btleAdvertise_PARM_2
      000DDF E0               [24] 3605 	movx	a,@dptr
      000DE0 90 00 8B         [24] 3606 	mov	dptr,#_advertise_PARM_2
      000DE3 F0               [24] 3607 	movx	@dptr,a
      000DE4 8D 82            [24] 3608 	mov	dpl,r5
      000DE6 8E 83            [24] 3609 	mov	dph,r6
      000DE8 8F F0            [24] 3610 	mov	b,r7
      000DEA 02 0D ED         [24] 3611 	ljmp	_advertise
                                   3612 ;------------------------------------------------------------
                                   3613 ;Allocation info for local variables in function 'advertise'
                                   3614 ;------------------------------------------------------------
                                   3615 ;sloc0                     Allocated with name '_advertise_sloc0_1_0'
                                   3616 ;buflen                    Allocated with name '_advertise_PARM_2'
                                   3617 ;buf                       Allocated with name '_advertise_buf_1_259'
                                   3618 ;pls                       Allocated with name '_advertise_pls_1_260'
                                   3619 ;i                         Allocated with name '_advertise_i_1_260'
                                   3620 ;outbuf                    Allocated with name '_advertise_outbuf_1_260'
                                   3621 ;------------------------------------------------------------
                                   3622 ;	include/btle.h:116: bool advertise( void* buf, uint8_t buflen ) {
                                   3623 ;	-----------------------------------------
                                   3624 ;	 function advertise
                                   3625 ;	-----------------------------------------
      000DED                       3626 _advertise:
      000DED AF F0            [24] 3627 	mov	r7,b
      000DEF AE 83            [24] 3628 	mov	r6,dph
      000DF1 E5 82            [12] 3629 	mov	a,dpl
      000DF3 90 00 8C         [24] 3630 	mov	dptr,#_advertise_buf_1_259
      000DF6 F0               [24] 3631 	movx	@dptr,a
      000DF7 EE               [12] 3632 	mov	a,r6
      000DF8 A3               [24] 3633 	inc	dptr
      000DF9 F0               [24] 3634 	movx	@dptr,a
      000DFA EF               [12] 3635 	mov	a,r7
      000DFB A3               [24] 3636 	inc	dptr
      000DFC F0               [24] 3637 	movx	@dptr,a
                                   3638 ;	include/btle.h:123: buffer.mac[0] = ((__TIME__[6]-0x30) << 4) | (__TIME__[7]-0x30);
      000DFD 90 16 D2         [24] 3639 	mov	dptr,#(___str_0 + 0x0006)
      000E00 E4               [12] 3640 	clr	a
      000E01 93               [24] 3641 	movc	a,@a+dptr
      000E02 24 D0            [12] 3642 	add	a,#0xD0
      000E04 C4               [12] 3643 	swap	a
      000E05 54 F0            [12] 3644 	anl	a,#0xF0
      000E07 FF               [12] 3645 	mov	r7,a
      000E08 90 16 D3         [24] 3646 	mov	dptr,#(___str_0 + 0x0007)
      000E0B E4               [12] 3647 	clr	a
      000E0C 93               [24] 3648 	movc	a,@a+dptr
      000E0D 24 D0            [12] 3649 	add	a,#0xD0
      000E0F 42 07            [12] 3650 	orl	ar7,a
      000E11 90 00 64         [24] 3651 	mov	dptr,#(_buffer + 0x0002)
      000E14 EF               [12] 3652 	mov	a,r7
      000E15 F0               [24] 3653 	movx	@dptr,a
                                   3654 ;	include/btle.h:124: buffer.mac[1] = ((__TIME__[3]-0x30) << 4) | (__TIME__[4]-0x30);
      000E16 90 16 CF         [24] 3655 	mov	dptr,#(___str_0 + 0x0003)
      000E19 E4               [12] 3656 	clr	a
      000E1A 93               [24] 3657 	movc	a,@a+dptr
      000E1B 24 D0            [12] 3658 	add	a,#0xD0
      000E1D C4               [12] 3659 	swap	a
      000E1E 54 F0            [12] 3660 	anl	a,#0xF0
      000E20 FF               [12] 3661 	mov	r7,a
      000E21 90 16 D0         [24] 3662 	mov	dptr,#(___str_0 + 0x0004)
      000E24 E4               [12] 3663 	clr	a
      000E25 93               [24] 3664 	movc	a,@a+dptr
      000E26 24 D0            [12] 3665 	add	a,#0xD0
      000E28 42 07            [12] 3666 	orl	ar7,a
      000E2A 90 00 65         [24] 3667 	mov	dptr,#(_buffer + 0x0003)
      000E2D EF               [12] 3668 	mov	a,r7
      000E2E F0               [24] 3669 	movx	@dptr,a
                                   3670 ;	include/btle.h:125: buffer.mac[2] = ((__TIME__[0]-0x30) << 4) | (__TIME__[1]-0x30);
      000E2F 90 16 CC         [24] 3671 	mov	dptr,#___str_0
      000E32 E4               [12] 3672 	clr	a
      000E33 93               [24] 3673 	movc	a,@a+dptr
      000E34 24 D0            [12] 3674 	add	a,#0xD0
      000E36 C4               [12] 3675 	swap	a
      000E37 54 F0            [12] 3676 	anl	a,#0xF0
      000E39 FF               [12] 3677 	mov	r7,a
      000E3A 90 16 CD         [24] 3678 	mov	dptr,#(___str_0 + 0x0001)
      000E3D E4               [12] 3679 	clr	a
      000E3E 93               [24] 3680 	movc	a,@a+dptr
      000E3F 24 D0            [12] 3681 	add	a,#0xD0
      000E41 42 07            [12] 3682 	orl	ar7,a
      000E43 90 00 66         [24] 3683 	mov	dptr,#(_buffer + 0x0004)
      000E46 EF               [12] 3684 	mov	a,r7
      000E47 F0               [24] 3685 	movx	@dptr,a
                                   3686 ;	include/btle.h:126: buffer.mac[3] = ((__DATE__[4]-0x30) << 4) | (__DATE__[5]-0x30);
      000E48 90 16 D9         [24] 3687 	mov	dptr,#(___str_1 + 0x0004)
      000E4B E4               [12] 3688 	clr	a
      000E4C 93               [24] 3689 	movc	a,@a+dptr
      000E4D 24 D0            [12] 3690 	add	a,#0xD0
      000E4F C4               [12] 3691 	swap	a
      000E50 54 F0            [12] 3692 	anl	a,#0xF0
      000E52 FF               [12] 3693 	mov	r7,a
      000E53 90 16 DA         [24] 3694 	mov	dptr,#(___str_1 + 0x0005)
      000E56 E4               [12] 3695 	clr	a
      000E57 93               [24] 3696 	movc	a,@a+dptr
      000E58 FE               [12] 3697 	mov	r6,a
      000E59 24 D0            [12] 3698 	add	a,#0xD0
      000E5B 42 07            [12] 3699 	orl	ar7,a
      000E5D 90 00 67         [24] 3700 	mov	dptr,#(_buffer + 0x0005)
      000E60 EF               [12] 3701 	mov	a,r7
      000E61 F0               [24] 3702 	movx	@dptr,a
                                   3703 ;	include/btle.h:127: buffer.mac[4] = month(__DATE__);
      000E62 90 16 D5         [24] 3704 	mov	dptr,#___str_1
      000E65 E4               [12] 3705 	clr	a
      000E66 93               [24] 3706 	movc	a,@a+dptr
      000E67 FF               [12] 3707 	mov	r7,a
      000E68 75 F0 18         [24] 3708 	mov	b,#0x18
      000E6B C2 D5            [12] 3709 	clr	F0
      000E6D 30 E7 04         [24] 3710 	jnb	acc.7,00119$
      000E70 D2 D5            [12] 3711 	setb	F0
      000E72 F4               [12] 3712 	cpl	a
      000E73 04               [12] 3713 	inc	a
      000E74                       3714 00119$:
      000E74 84               [48] 3715 	div	ab
      000E75 E5 F0            [12] 3716 	mov	a,b
      000E77 30 D5 02         [24] 3717 	jnb	F0,00120$
      000E7A F4               [12] 3718 	cpl	a
      000E7B 04               [12] 3719 	inc	a
      000E7C                       3720 00120$:
      000E7C C2 D5            [12] 3721 	clr	F0
      000E7E 75 F0 0D         [24] 3722 	mov	b,#0x0D
      000E81 30 E7 04         [24] 3723 	jnb	acc.7,00121$
      000E84 B2 D5            [12] 3724 	cpl	F0
      000E86 F4               [12] 3725 	cpl	a
      000E87 04               [12] 3726 	inc	a
      000E88                       3727 00121$:
      000E88 A4               [48] 3728 	mul	ab
      000E89 30 D5 0A         [24] 3729 	jnb	F0,00122$
      000E8C F4               [12] 3730 	cpl	a
      000E8D 24 01            [12] 3731 	add	a,#0x01
      000E8F C5 F0            [12] 3732 	xch	a,b
      000E91 F4               [12] 3733 	cpl	a
      000E92 34 00            [12] 3734 	addc	a,#0x00
      000E94 C5 F0            [12] 3735 	xch	a,b
      000E96                       3736 00122$:
      000E96 FE               [12] 3737 	mov	r6,a
      000E97 AF F0            [24] 3738 	mov	r7,b
      000E99 90 16 D6         [24] 3739 	mov	dptr,#(___str_1 + 0x0001)
      000E9C E4               [12] 3740 	clr	a
      000E9D 93               [24] 3741 	movc	a,@a+dptr
      000E9E FD               [12] 3742 	mov	r5,a
      000E9F 33               [12] 3743 	rlc	a
      000EA0 95 E0            [12] 3744 	subb	a,acc
      000EA2 FC               [12] 3745 	mov	r4,a
      000EA3 ED               [12] 3746 	mov	a,r5
      000EA4 2E               [12] 3747 	add	a,r6
      000EA5 FE               [12] 3748 	mov	r6,a
      000EA6 EC               [12] 3749 	mov	a,r4
      000EA7 3F               [12] 3750 	addc	a,r7
      000EA8 FF               [12] 3751 	mov	r7,a
      000EA9 90 00 B5         [24] 3752 	mov	dptr,#__modsint_PARM_2
      000EAC 74 18            [12] 3753 	mov	a,#0x18
      000EAE F0               [24] 3754 	movx	@dptr,a
      000EAF E4               [12] 3755 	clr	a
      000EB0 A3               [24] 3756 	inc	dptr
      000EB1 F0               [24] 3757 	movx	@dptr,a
      000EB2 8E 82            [24] 3758 	mov	dpl,r6
      000EB4 8F 83            [24] 3759 	mov	dph,r7
      000EB6 12 15 78         [24] 3760 	lcall	__modsint
      000EB9 AE 82            [24] 3761 	mov	r6,dpl
      000EBB AF 83            [24] 3762 	mov	r7,dph
      000EBD 90 00 B3         [24] 3763 	mov	dptr,#__mulint_PARM_2
      000EC0 EE               [12] 3764 	mov	a,r6
      000EC1 F0               [24] 3765 	movx	@dptr,a
      000EC2 EF               [12] 3766 	mov	a,r7
      000EC3 A3               [24] 3767 	inc	dptr
      000EC4 F0               [24] 3768 	movx	@dptr,a
      000EC5 90 00 0D         [24] 3769 	mov	dptr,#0x000D
      000EC8 12 15 58         [24] 3770 	lcall	__mulint
      000ECB AE 82            [24] 3771 	mov	r6,dpl
      000ECD AF 83            [24] 3772 	mov	r7,dph
      000ECF 90 16 D7         [24] 3773 	mov	dptr,#(___str_1 + 0x0002)
      000ED2 E4               [12] 3774 	clr	a
      000ED3 93               [24] 3775 	movc	a,@a+dptr
      000ED4 FD               [12] 3776 	mov	r5,a
      000ED5 33               [12] 3777 	rlc	a
      000ED6 95 E0            [12] 3778 	subb	a,acc
      000ED8 FC               [12] 3779 	mov	r4,a
      000ED9 ED               [12] 3780 	mov	a,r5
      000EDA 2E               [12] 3781 	add	a,r6
      000EDB FE               [12] 3782 	mov	r6,a
      000EDC EC               [12] 3783 	mov	a,r4
      000EDD 3F               [12] 3784 	addc	a,r7
      000EDE FF               [12] 3785 	mov	r7,a
      000EDF 90 00 B5         [24] 3786 	mov	dptr,#__modsint_PARM_2
      000EE2 74 18            [12] 3787 	mov	a,#0x18
      000EE4 F0               [24] 3788 	movx	@dptr,a
      000EE5 E4               [12] 3789 	clr	a
      000EE6 A3               [24] 3790 	inc	dptr
      000EE7 F0               [24] 3791 	movx	@dptr,a
      000EE8 8E 82            [24] 3792 	mov	dpl,r6
      000EEA 8F 83            [24] 3793 	mov	dph,r7
      000EEC 12 15 78         [24] 3794 	lcall	__modsint
      000EEF AE 82            [24] 3795 	mov	r6,dpl
      000EF1 AF 83            [24] 3796 	mov	r7,dph
      000EF3 EE               [12] 3797 	mov	a,r6
      000EF4 24 B4            [12] 3798 	add	a,#_month_lookup
      000EF6 F5 82            [12] 3799 	mov	dpl,a
      000EF8 EF               [12] 3800 	mov	a,r7
      000EF9 34 16            [12] 3801 	addc	a,#(_month_lookup >> 8)
      000EFB F5 83            [12] 3802 	mov	dph,a
      000EFD E4               [12] 3803 	clr	a
      000EFE 93               [24] 3804 	movc	a,@a+dptr
      000EFF 90 00 68         [24] 3805 	mov	dptr,#(_buffer + 0x0006)
      000F02 F0               [24] 3806 	movx	@dptr,a
                                   3807 ;	include/btle.h:128: buffer.mac[5] = ((__DATE__[9]-0x30) << 4) | (__DATE__[10]-0x30);
      000F03 90 16 DE         [24] 3808 	mov	dptr,#(___str_1 + 0x0009)
      000F06 E4               [12] 3809 	clr	a
      000F07 93               [24] 3810 	movc	a,@a+dptr
      000F08 24 D0            [12] 3811 	add	a,#0xD0
      000F0A C4               [12] 3812 	swap	a
      000F0B 54 F0            [12] 3813 	anl	a,#0xF0
      000F0D FF               [12] 3814 	mov	r7,a
      000F0E 90 16 DF         [24] 3815 	mov	dptr,#(___str_1 + 0x000a)
      000F11 E4               [12] 3816 	clr	a
      000F12 93               [24] 3817 	movc	a,@a+dptr
      000F13 24 D0            [12] 3818 	add	a,#0xD0
      000F15 42 07            [12] 3819 	orl	ar7,a
      000F17 90 00 69         [24] 3820 	mov	dptr,#(_buffer + 0x0007)
      000F1A EF               [12] 3821 	mov	a,r7
      000F1B F0               [24] 3822 	movx	@dptr,a
                                   3823 ;	include/btle.h:130: for (i = 0; i < buflen; i++)
      000F1C 90 00 8C         [24] 3824 	mov	dptr,#_advertise_buf_1_259
      000F1F E0               [24] 3825 	movx	a,@dptr
      000F20 FD               [12] 3826 	mov	r5,a
      000F21 A3               [24] 3827 	inc	dptr
      000F22 E0               [24] 3828 	movx	a,@dptr
      000F23 FE               [12] 3829 	mov	r6,a
      000F24 A3               [24] 3830 	inc	dptr
      000F25 E0               [24] 3831 	movx	a,@dptr
      000F26 FF               [12] 3832 	mov	r7,a
      000F27 90 00 8B         [24] 3833 	mov	dptr,#_advertise_PARM_2
      000F2A E0               [24] 3834 	movx	a,@dptr
      000F2B FC               [12] 3835 	mov	r4,a
      000F2C 7B 00            [12] 3836 	mov	r3,#0x00
      000F2E                       3837 00105$:
      000F2E C3               [12] 3838 	clr	c
      000F2F EB               [12] 3839 	mov	a,r3
      000F30 9C               [12] 3840 	subb	a,r4
      000F31 50 2E            [24] 3841 	jnc	00101$
                                   3842 ;	include/btle.h:131: buffer.payload[i] = ((uint8_t*)buf)[i];
      000F33 C0 04            [24] 3843 	push	ar4
      000F35 EB               [12] 3844 	mov	a,r3
      000F36 24 6A            [12] 3845 	add	a,#(_buffer + 0x0008)
      000F38 F5 08            [12] 3846 	mov	_advertise_sloc0_1_0,a
      000F3A E4               [12] 3847 	clr	a
      000F3B 34 00            [12] 3848 	addc	a,#((_buffer + 0x0008) >> 8)
      000F3D F5 09            [12] 3849 	mov	(_advertise_sloc0_1_0 + 1),a
      000F3F 8D 00            [24] 3850 	mov	ar0,r5
      000F41 8E 02            [24] 3851 	mov	ar2,r6
      000F43 8F 04            [24] 3852 	mov	ar4,r7
      000F45 EB               [12] 3853 	mov	a,r3
      000F46 28               [12] 3854 	add	a,r0
      000F47 F8               [12] 3855 	mov	r0,a
      000F48 E4               [12] 3856 	clr	a
      000F49 3A               [12] 3857 	addc	a,r2
      000F4A FA               [12] 3858 	mov	r2,a
      000F4B 88 82            [24] 3859 	mov	dpl,r0
      000F4D 8A 83            [24] 3860 	mov	dph,r2
      000F4F 8C F0            [24] 3861 	mov	b,r4
      000F51 12 16 8E         [24] 3862 	lcall	__gptrget
      000F54 F8               [12] 3863 	mov	r0,a
      000F55 85 08 82         [24] 3864 	mov	dpl,_advertise_sloc0_1_0
      000F58 85 09 83         [24] 3865 	mov	dph,(_advertise_sloc0_1_0 + 1)
      000F5B F0               [24] 3866 	movx	@dptr,a
                                   3867 ;	include/btle.h:130: for (i = 0; i < buflen; i++)
      000F5C 0B               [12] 3868 	inc	r3
      000F5D D0 04            [24] 3869 	pop	ar4
      000F5F 80 CD            [24] 3870 	sjmp	00105$
      000F61                       3871 00101$:
                                   3872 ;	include/btle.h:135: if (pls > 21)
      000F61 EC               [12] 3873 	mov	a,r4
      000F62 24 EA            [12] 3874 	add	a,#0xff - 0x15
      000F64 50 04            [24] 3875 	jnc	00103$
                                   3876 ;	include/btle.h:136: return false;
      000F66 75 82 00         [24] 3877 	mov	dpl,#0x00
      000F69 22               [24] 3878 	ret
      000F6A                       3879 00103$:
                                   3880 ;	include/btle.h:139: buffer.pdu_type = 0x42;    // PDU type: ADV_NONCONN_IND, TX address is random
      000F6A 90 00 62         [24] 3881 	mov	dptr,#_buffer
      000F6D 74 42            [12] 3882 	mov	a,#0x42
      000F6F F0               [24] 3883 	movx	@dptr,a
                                   3884 ;	include/btle.h:140: buffer.pl_size = pls+6;    // set final payload size in header incl. MAC
      000F70 74 06            [12] 3885 	mov	a,#0x06
      000F72 2C               [12] 3886 	add	a,r4
      000F73 90 00 63         [24] 3887 	mov	dptr,#(_buffer + 0x0001)
      000F76 F0               [24] 3888 	movx	@dptr,a
                                   3889 ;	include/btle.h:143: outbuf = (uint8_t*)&buffer;
                                   3890 ;	include/btle.h:144: crc( pls+8, outbuf+pls+8);
      000F77 74 08            [12] 3891 	mov	a,#0x08
      000F79 2C               [12] 3892 	add	a,r4
      000F7A FF               [12] 3893 	mov	r7,a
      000F7B EC               [12] 3894 	mov	a,r4
      000F7C 24 62            [12] 3895 	add	a,#_buffer
      000F7E FB               [12] 3896 	mov	r3,a
      000F7F E4               [12] 3897 	clr	a
      000F80 34 00            [12] 3898 	addc	a,#(_buffer >> 8)
      000F82 FD               [12] 3899 	mov	r5,a
      000F83 7E 00            [12] 3900 	mov	r6,#0x00
      000F85 90 00 8F         [24] 3901 	mov	dptr,#_crc_PARM_2
      000F88 74 08            [12] 3902 	mov	a,#0x08
      000F8A 2B               [12] 3903 	add	a,r3
      000F8B F0               [24] 3904 	movx	@dptr,a
      000F8C E4               [12] 3905 	clr	a
      000F8D 3D               [12] 3906 	addc	a,r5
      000F8E A3               [24] 3907 	inc	dptr
      000F8F F0               [24] 3908 	movx	@dptr,a
      000F90 EE               [12] 3909 	mov	a,r6
      000F91 A3               [24] 3910 	inc	dptr
      000F92 F0               [24] 3911 	movx	@dptr,a
      000F93 8F 82            [24] 3912 	mov	dpl,r7
      000F95 C0 04            [24] 3913 	push	ar4
      000F97 12 0F D2         [24] 3914 	lcall	_crc
      000F9A D0 04            [24] 3915 	pop	ar4
                                   3916 ;	include/btle.h:147: whiten( pls+11 );
      000F9C 74 0B            [12] 3917 	mov	a,#0x0B
      000F9E 2C               [12] 3918 	add	a,r4
      000F9F FC               [12] 3919 	mov	r4,a
      000FA0 F5 82            [12] 3920 	mov	dpl,a
      000FA2 C0 04            [24] 3921 	push	ar4
      000FA4 12 11 8D         [24] 3922 	lcall	_whiten
      000FA7 D0 04            [24] 3923 	pop	ar4
                                   3924 ;	include/btle.h:148: swapbuf( pls+11 );
      000FA9 8C 82            [24] 3925 	mov	dpl,r4
      000FAB C0 04            [24] 3926 	push	ar4
      000FAD 12 0B F5         [24] 3927 	lcall	_swapbuf
                                   3928 ;	include/btle.h:151: stopListening();
      000FB0 12 09 53         [24] 3929 	lcall	_stopListening
      000FB3 D0 04            [24] 3930 	pop	ar4
                                   3931 ;	include/btle.h:152: write( outbuf, pls+11, false );
      000FB5 7D 62            [12] 3932 	mov	r5,#_buffer
      000FB7 7E 00            [12] 3933 	mov	r6,#(_buffer >> 8)
      000FB9 7F 00            [12] 3934 	mov	r7,#0x00
      000FBB 90 00 20         [24] 3935 	mov	dptr,#_write_PARM_2
      000FBE EC               [12] 3936 	mov	a,r4
      000FBF F0               [24] 3937 	movx	@dptr,a
      000FC0 90 00 21         [24] 3938 	mov	dptr,#_write_PARM_3
      000FC3 E4               [12] 3939 	clr	a
      000FC4 F0               [24] 3940 	movx	@dptr,a
      000FC5 8D 82            [24] 3941 	mov	dpl,r5
      000FC7 8E 83            [24] 3942 	mov	dph,r6
      000FC9 8F F0            [24] 3943 	mov	b,r7
      000FCB 12 03 89         [24] 3944 	lcall	_write
                                   3945 ;	include/btle.h:154: return true;
      000FCE 75 82 01         [24] 3946 	mov	dpl,#0x01
      000FD1 22               [24] 3947 	ret
                                   3948 ;------------------------------------------------------------
                                   3949 ;Allocation info for local variables in function 'crc'
                                   3950 ;------------------------------------------------------------
                                   3951 ;dst                       Allocated with name '_crc_PARM_2'
                                   3952 ;len                       Allocated with name '_crc_len_1_261'
                                   3953 ;buf                       Allocated with name '_crc_buf_1_262'
                                   3954 ;i                         Allocated with name '_crc_i_1_262'
                                   3955 ;d                         Allocated with name '_crc_d_2_263'
                                   3956 ;t                         Allocated with name '_crc_t_3_264'
                                   3957 ;sloc0                     Allocated with name '_crc_sloc0_1_0'
                                   3958 ;sloc1                     Allocated with name '_crc_sloc1_1_0'
                                   3959 ;------------------------------------------------------------
                                   3960 ;	include/btle.h:158: void crc( uint8_t len, uint8_t* dst ) {
                                   3961 ;	-----------------------------------------
                                   3962 ;	 function crc
                                   3963 ;	-----------------------------------------
      000FD2                       3964 _crc:
      000FD2 E5 82            [12] 3965 	mov	a,dpl
      000FD4 90 00 92         [24] 3966 	mov	dptr,#_crc_len_1_261
      000FD7 F0               [24] 3967 	movx	@dptr,a
                                   3968 ;	include/btle.h:160: uint8_t* buf = (uint8_t*)&buffer;
      000FD8 7D 62            [12] 3969 	mov	r5,#_buffer
      000FDA 7E 00            [12] 3970 	mov	r6,#(_buffer >> 8)
      000FDC 7F 00            [12] 3971 	mov	r7,#0x00
                                   3972 ;	include/btle.h:165: dst[0] = 0xAA;
      000FDE 90 00 8F         [24] 3973 	mov	dptr,#_crc_PARM_2
      000FE1 E0               [24] 3974 	movx	a,@dptr
      000FE2 FA               [12] 3975 	mov	r2,a
      000FE3 A3               [24] 3976 	inc	dptr
      000FE4 E0               [24] 3977 	movx	a,@dptr
      000FE5 FB               [12] 3978 	mov	r3,a
      000FE6 A3               [24] 3979 	inc	dptr
      000FE7 E0               [24] 3980 	movx	a,@dptr
      000FE8 FC               [12] 3981 	mov	r4,a
      000FE9 8A 82            [24] 3982 	mov	dpl,r2
      000FEB 8B 83            [24] 3983 	mov	dph,r3
      000FED 8C F0            [24] 3984 	mov	b,r4
      000FEF 74 AA            [12] 3985 	mov	a,#0xAA
      000FF1 12 15 3D         [24] 3986 	lcall	__gptrput
                                   3987 ;	include/btle.h:166: dst[1] = 0xAA;
      000FF4 74 01            [12] 3988 	mov	a,#0x01
      000FF6 2A               [12] 3989 	add	a,r2
      000FF7 F5 0A            [12] 3990 	mov	_crc_sloc0_1_0,a
      000FF9 E4               [12] 3991 	clr	a
      000FFA 3B               [12] 3992 	addc	a,r3
      000FFB F5 0B            [12] 3993 	mov	(_crc_sloc0_1_0 + 1),a
      000FFD 8C 0C            [24] 3994 	mov	(_crc_sloc0_1_0 + 2),r4
      000FFF 85 0A 82         [24] 3995 	mov	dpl,_crc_sloc0_1_0
      001002 85 0B 83         [24] 3996 	mov	dph,(_crc_sloc0_1_0 + 1)
      001005 85 0C F0         [24] 3997 	mov	b,(_crc_sloc0_1_0 + 2)
      001008 74 AA            [12] 3998 	mov	a,#0xAA
      00100A 12 15 3D         [24] 3999 	lcall	__gptrput
                                   4000 ;	include/btle.h:167: dst[2] = 0xAA;
      00100D 74 02            [12] 4001 	mov	a,#0x02
      00100F 2A               [12] 4002 	add	a,r2
      001010 F5 0D            [12] 4003 	mov	_crc_sloc1_1_0,a
      001012 E4               [12] 4004 	clr	a
      001013 3B               [12] 4005 	addc	a,r3
      001014 F5 0E            [12] 4006 	mov	(_crc_sloc1_1_0 + 1),a
      001016 8C 0F            [24] 4007 	mov	(_crc_sloc1_1_0 + 2),r4
      001018 85 0D 82         [24] 4008 	mov	dpl,_crc_sloc1_1_0
      00101B 85 0E 83         [24] 4009 	mov	dph,(_crc_sloc1_1_0 + 1)
      00101E 85 0F F0         [24] 4010 	mov	b,(_crc_sloc1_1_0 + 2)
      001021 74 AA            [12] 4011 	mov	a,#0xAA
      001023 12 15 3D         [24] 4012 	lcall	__gptrput
                                   4013 ;	include/btle.h:169: while (len--) {
      001026 90 00 92         [24] 4014 	mov	dptr,#_crc_len_1_261
      001029 E0               [24] 4015 	movx	a,@dptr
      00102A F9               [12] 4016 	mov	r1,a
      00102B                       4017 00108$:
      00102B 89 00            [24] 4018 	mov	ar0,r1
      00102D 19               [12] 4019 	dec	r1
      00102E 90 00 92         [24] 4020 	mov	dptr,#_crc_len_1_261
      001031 E9               [12] 4021 	mov	a,r1
      001032 F0               [24] 4022 	movx	@dptr,a
      001033 E8               [12] 4023 	mov	a,r0
      001034 70 03            [24] 4024 	jnz	00137$
      001036 02 11 87         [24] 4025 	ljmp	00122$
      001039                       4026 00137$:
                                   4027 ;	include/btle.h:171: uint8_t d = *(buf++);
      001039 8D 82            [24] 4028 	mov	dpl,r5
      00103B 8E 83            [24] 4029 	mov	dph,r6
      00103D 8F F0            [24] 4030 	mov	b,r7
      00103F 12 16 8E         [24] 4031 	lcall	__gptrget
      001042 F8               [12] 4032 	mov	r0,a
      001043 A3               [24] 4033 	inc	dptr
      001044 AD 82            [24] 4034 	mov	r5,dpl
      001046 AE 83            [24] 4035 	mov	r6,dph
      001048 90 00 94         [24] 4036 	mov	dptr,#_crc_d_2_263
      00104B E8               [12] 4037 	mov	a,r0
      00104C F0               [24] 4038 	movx	@dptr,a
                                   4039 ;	include/btle.h:173: for (i = 1; i; i <<= 1, d >>= 1) {
      00104D 90 00 93         [24] 4040 	mov	dptr,#_crc_i_1_262
      001050 74 01            [12] 4041 	mov	a,#0x01
      001052 F0               [24] 4042 	movx	@dptr,a
      001053                       4043 00111$:
                                   4044 ;	include/btle.h:176: uint8_t t = dst[0] & 0x01;         dst[0] >>= 1;
      001053 C0 05            [24] 4045 	push	ar5
      001055 C0 06            [24] 4046 	push	ar6
      001057 C0 07            [24] 4047 	push	ar7
      001059 8A 82            [24] 4048 	mov	dpl,r2
      00105B 8B 83            [24] 4049 	mov	dph,r3
      00105D 8C F0            [24] 4050 	mov	b,r4
      00105F 12 16 8E         [24] 4051 	lcall	__gptrget
      001062 F8               [12] 4052 	mov	r0,a
      001063 53 00 01         [24] 4053 	anl	ar0,#0x01
      001066 8A 82            [24] 4054 	mov	dpl,r2
      001068 8B 83            [24] 4055 	mov	dph,r3
      00106A 8C F0            [24] 4056 	mov	b,r4
      00106C 12 16 8E         [24] 4057 	lcall	__gptrget
      00106F C3               [12] 4058 	clr	c
      001070 13               [12] 4059 	rrc	a
      001071 8A 82            [24] 4060 	mov	dpl,r2
      001073 8B 83            [24] 4061 	mov	dph,r3
      001075 8C F0            [24] 4062 	mov	b,r4
      001077 12 15 3D         [24] 4063 	lcall	__gptrput
                                   4064 ;	include/btle.h:177: if (dst[1] & 0x01) dst[0] |= 0x80; dst[1] >>= 1;
      00107A 85 0A 82         [24] 4065 	mov	dpl,_crc_sloc0_1_0
      00107D 85 0B 83         [24] 4066 	mov	dph,(_crc_sloc0_1_0 + 1)
      001080 85 0C F0         [24] 4067 	mov	b,(_crc_sloc0_1_0 + 2)
      001083 12 16 8E         [24] 4068 	lcall	__gptrget
      001086 D0 07            [24] 4069 	pop	ar7
      001088 D0 06            [24] 4070 	pop	ar6
      00108A D0 05            [24] 4071 	pop	ar5
      00108C 30 E0 1B         [24] 4072 	jnb	acc.0,00102$
      00108F C0 00            [24] 4073 	push	ar0
      001091 8A 82            [24] 4074 	mov	dpl,r2
      001093 8B 83            [24] 4075 	mov	dph,r3
      001095 8C F0            [24] 4076 	mov	b,r4
      001097 12 16 8E         [24] 4077 	lcall	__gptrget
      00109A F8               [12] 4078 	mov	r0,a
      00109B 43 00 80         [24] 4079 	orl	ar0,#0x80
      00109E 8A 82            [24] 4080 	mov	dpl,r2
      0010A0 8B 83            [24] 4081 	mov	dph,r3
      0010A2 8C F0            [24] 4082 	mov	b,r4
      0010A4 E8               [12] 4083 	mov	a,r0
      0010A5 12 15 3D         [24] 4084 	lcall	__gptrput
                                   4085 ;	include/btle.h:173: for (i = 1; i; i <<= 1, d >>= 1) {
      0010A8 D0 00            [24] 4086 	pop	ar0
                                   4087 ;	include/btle.h:177: if (dst[1] & 0x01) dst[0] |= 0x80; dst[1] >>= 1;
      0010AA                       4088 00102$:
      0010AA C0 00            [24] 4089 	push	ar0
      0010AC 85 0A 82         [24] 4090 	mov	dpl,_crc_sloc0_1_0
      0010AF 85 0B 83         [24] 4091 	mov	dph,(_crc_sloc0_1_0 + 1)
      0010B2 85 0C F0         [24] 4092 	mov	b,(_crc_sloc0_1_0 + 2)
      0010B5 12 16 8E         [24] 4093 	lcall	__gptrget
      0010B8 C3               [12] 4094 	clr	c
      0010B9 13               [12] 4095 	rrc	a
      0010BA 85 0A 82         [24] 4096 	mov	dpl,_crc_sloc0_1_0
      0010BD 85 0B 83         [24] 4097 	mov	dph,(_crc_sloc0_1_0 + 1)
      0010C0 85 0C F0         [24] 4098 	mov	b,(_crc_sloc0_1_0 + 2)
      0010C3 12 15 3D         [24] 4099 	lcall	__gptrput
                                   4100 ;	include/btle.h:178: if (dst[2] & 0x01) dst[1] |= 0x80; dst[2] >>= 1;
      0010C6 85 0D 82         [24] 4101 	mov	dpl,_crc_sloc1_1_0
      0010C9 85 0E 83         [24] 4102 	mov	dph,(_crc_sloc1_1_0 + 1)
      0010CC 85 0F F0         [24] 4103 	mov	b,(_crc_sloc1_1_0 + 2)
      0010CF 12 16 8E         [24] 4104 	lcall	__gptrget
      0010D2 D0 00            [24] 4105 	pop	ar0
      0010D4 30 E0 21         [24] 4106 	jnb	acc.0,00104$
      0010D7 C0 00            [24] 4107 	push	ar0
      0010D9 85 0A 82         [24] 4108 	mov	dpl,_crc_sloc0_1_0
      0010DC 85 0B 83         [24] 4109 	mov	dph,(_crc_sloc0_1_0 + 1)
      0010DF 85 0C F0         [24] 4110 	mov	b,(_crc_sloc0_1_0 + 2)
      0010E2 12 16 8E         [24] 4111 	lcall	__gptrget
      0010E5 F8               [12] 4112 	mov	r0,a
      0010E6 43 00 80         [24] 4113 	orl	ar0,#0x80
      0010E9 85 0A 82         [24] 4114 	mov	dpl,_crc_sloc0_1_0
      0010EC 85 0B 83         [24] 4115 	mov	dph,(_crc_sloc0_1_0 + 1)
      0010EF 85 0C F0         [24] 4116 	mov	b,(_crc_sloc0_1_0 + 2)
      0010F2 E8               [12] 4117 	mov	a,r0
      0010F3 12 15 3D         [24] 4118 	lcall	__gptrput
                                   4119 ;	include/btle.h:173: for (i = 1; i; i <<= 1, d >>= 1) {
      0010F6 D0 00            [24] 4120 	pop	ar0
                                   4121 ;	include/btle.h:178: if (dst[2] & 0x01) dst[1] |= 0x80; dst[2] >>= 1;
      0010F8                       4122 00104$:
      0010F8 C0 05            [24] 4123 	push	ar5
      0010FA C0 06            [24] 4124 	push	ar6
      0010FC C0 07            [24] 4125 	push	ar7
      0010FE 85 0D 82         [24] 4126 	mov	dpl,_crc_sloc1_1_0
      001101 85 0E 83         [24] 4127 	mov	dph,(_crc_sloc1_1_0 + 1)
      001104 85 0F F0         [24] 4128 	mov	b,(_crc_sloc1_1_0 + 2)
      001107 12 16 8E         [24] 4129 	lcall	__gptrget
      00110A C3               [12] 4130 	clr	c
      00110B 13               [12] 4131 	rrc	a
      00110C 85 0D 82         [24] 4132 	mov	dpl,_crc_sloc1_1_0
      00110F 85 0E 83         [24] 4133 	mov	dph,(_crc_sloc1_1_0 + 1)
      001112 85 0F F0         [24] 4134 	mov	b,(_crc_sloc1_1_0 + 2)
      001115 12 15 3D         [24] 4135 	lcall	__gptrput
                                   4136 ;	include/btle.h:182: if (t != (d & 1)) {
      001118 90 00 94         [24] 4137 	mov	dptr,#_crc_d_2_263
      00111B E0               [24] 4138 	movx	a,@dptr
      00111C FF               [12] 4139 	mov	r7,a
      00111D 53 07 01         [24] 4140 	anl	ar7,#0x01
      001120 E8               [12] 4141 	mov	a,r0
      001121 B5 07 08         [24] 4142 	cjne	a,ar7,00140$
      001124 D0 07            [24] 4143 	pop	ar7
      001126 D0 06            [24] 4144 	pop	ar6
      001128 D0 05            [24] 4145 	pop	ar5
      00112A 80 40            [24] 4146 	sjmp	00112$
      00112C                       4147 00140$:
      00112C D0 07            [24] 4148 	pop	ar7
      00112E D0 06            [24] 4149 	pop	ar6
      001130 D0 05            [24] 4150 	pop	ar5
                                   4151 ;	include/btle.h:184: dst[2] ^= 0xDA; // 0b11011010 inv. = 0b01011011 ^= x^6+x^4+x^3+x+1
      001132 85 0D 82         [24] 4152 	mov	dpl,_crc_sloc1_1_0
      001135 85 0E 83         [24] 4153 	mov	dph,(_crc_sloc1_1_0 + 1)
      001138 85 0F F0         [24] 4154 	mov	b,(_crc_sloc1_1_0 + 2)
      00113B 12 16 8E         [24] 4155 	lcall	__gptrget
      00113E F8               [12] 4156 	mov	r0,a
      00113F 63 00 DA         [24] 4157 	xrl	ar0,#0xDA
      001142 85 0D 82         [24] 4158 	mov	dpl,_crc_sloc1_1_0
      001145 85 0E 83         [24] 4159 	mov	dph,(_crc_sloc1_1_0 + 1)
      001148 85 0F F0         [24] 4160 	mov	b,(_crc_sloc1_1_0 + 2)
      00114B E8               [12] 4161 	mov	a,r0
      00114C 12 15 3D         [24] 4162 	lcall	__gptrput
                                   4163 ;	include/btle.h:185: dst[1] ^= 0x60; // 0b01100000 inv. = 0b00000110 ^= x^10+x^9
      00114F 85 0A 82         [24] 4164 	mov	dpl,_crc_sloc0_1_0
      001152 85 0B 83         [24] 4165 	mov	dph,(_crc_sloc0_1_0 + 1)
      001155 85 0C F0         [24] 4166 	mov	b,(_crc_sloc0_1_0 + 2)
      001158 12 16 8E         [24] 4167 	lcall	__gptrget
      00115B F8               [12] 4168 	mov	r0,a
      00115C 63 00 60         [24] 4169 	xrl	ar0,#0x60
      00115F 85 0A 82         [24] 4170 	mov	dpl,_crc_sloc0_1_0
      001162 85 0B 83         [24] 4171 	mov	dph,(_crc_sloc0_1_0 + 1)
      001165 85 0C F0         [24] 4172 	mov	b,(_crc_sloc0_1_0 + 2)
      001168 E8               [12] 4173 	mov	a,r0
      001169 12 15 3D         [24] 4174 	lcall	__gptrput
      00116C                       4175 00112$:
                                   4176 ;	include/btle.h:173: for (i = 1; i; i <<= 1, d >>= 1) {
      00116C 90 00 93         [24] 4177 	mov	dptr,#_crc_i_1_262
      00116F E0               [24] 4178 	movx	a,@dptr
      001170 25 E0            [12] 4179 	add	a,acc
      001172 F0               [24] 4180 	movx	@dptr,a
      001173 90 00 94         [24] 4181 	mov	dptr,#_crc_d_2_263
      001176 E0               [24] 4182 	movx	a,@dptr
      001177 C3               [12] 4183 	clr	c
      001178 13               [12] 4184 	rrc	a
      001179 F8               [12] 4185 	mov	r0,a
      00117A F0               [24] 4186 	movx	@dptr,a
      00117B 90 00 93         [24] 4187 	mov	dptr,#_crc_i_1_262
      00117E E0               [24] 4188 	movx	a,@dptr
      00117F 60 03            [24] 4189 	jz	00141$
      001181 02 10 53         [24] 4190 	ljmp	00111$
      001184                       4191 00141$:
      001184 02 10 2B         [24] 4192 	ljmp	00108$
      001187                       4193 00122$:
      001187 90 00 92         [24] 4194 	mov	dptr,#_crc_len_1_261
      00118A E9               [12] 4195 	mov	a,r1
      00118B F0               [24] 4196 	movx	@dptr,a
      00118C 22               [24] 4197 	ret
                                   4198 ;------------------------------------------------------------
                                   4199 ;Allocation info for local variables in function 'whiten'
                                   4200 ;------------------------------------------------------------
                                   4201 ;len                       Allocated with name '_whiten_len_1_266'
                                   4202 ;buf                       Allocated with name '_whiten_buf_1_267'
                                   4203 ;i                         Allocated with name '_whiten_i_1_267'
                                   4204 ;lfsr                      Allocated with name '_whiten_lfsr_1_267'
                                   4205 ;res                       Allocated with name '_whiten_res_2_268'
                                   4206 ;__00020000                Allocated with name '_whiten___00020000_2_268'
                                   4207 ;------------------------------------------------------------
                                   4208 ;	include/btle.h:191: void whiten( uint8_t len ) {
                                   4209 ;	-----------------------------------------
                                   4210 ;	 function whiten
                                   4211 ;	-----------------------------------------
      00118D                       4212 _whiten:
      00118D E5 82            [12] 4213 	mov	a,dpl
      00118F 90 00 95         [24] 4214 	mov	dptr,#_whiten_len_1_266
      001192 F0               [24] 4215 	movx	@dptr,a
                                   4216 ;	include/btle.h:193: uint8_t* buf = (uint8_t*)&buffer;
      001193 7D 62            [12] 4217 	mov	r5,#_buffer
      001195 7E 00            [12] 4218 	mov	r6,#(_buffer >> 8)
      001197 7F 00            [12] 4219 	mov	r7,#0x00
                                   4220 ;	include/btle.h:197: uint8_t lfsr = channel[current] | 0x40;
      001199 90 00 82         [24] 4221 	mov	dptr,#_current
      00119C E0               [24] 4222 	movx	a,@dptr
      00119D 90 16 AE         [24] 4223 	mov	dptr,#_channel
      0011A0 93               [24] 4224 	movc	a,@a+dptr
      0011A1 FC               [12] 4225 	mov	r4,a
      0011A2 90 00 97         [24] 4226 	mov	dptr,#_whiten_lfsr_1_267
      0011A5 74 40            [12] 4227 	mov	a,#0x40
      0011A7 4C               [12] 4228 	orl	a,r4
      0011A8 F0               [24] 4229 	movx	@dptr,a
                                   4230 ;	include/btle.h:199: while (len--) {
      0011A9 90 00 95         [24] 4231 	mov	dptr,#_whiten_len_1_266
      0011AC E0               [24] 4232 	movx	a,@dptr
      0011AD FC               [12] 4233 	mov	r4,a
      0011AE                       4234 00104$:
      0011AE 8C 03            [24] 4235 	mov	ar3,r4
      0011B0 1C               [12] 4236 	dec	r4
      0011B1 90 00 95         [24] 4237 	mov	dptr,#_whiten_len_1_266
      0011B4 EC               [12] 4238 	mov	a,r4
      0011B5 F0               [24] 4239 	movx	@dptr,a
      0011B6 EB               [12] 4240 	mov	a,r3
      0011B7 60 62            [24] 4241 	jz	00116$
                                   4242 ;	include/btle.h:200: uint8_t res = 0;
      0011B9 90 00 98         [24] 4243 	mov	dptr,#_whiten_res_2_268
      0011BC E4               [12] 4244 	clr	a
      0011BD F0               [24] 4245 	movx	@dptr,a
                                   4246 ;	include/btle.h:202: for (i = 1; i; i <<= 1) {
      0011BE 90 00 96         [24] 4247 	mov	dptr,#_whiten_i_1_267
      0011C1 04               [12] 4248 	inc	a
      0011C2 F0               [24] 4249 	movx	@dptr,a
      0011C3                       4250 00107$:
                                   4251 ;	include/btle.h:203: if (lfsr & 0x01) {
      0011C3 90 00 97         [24] 4252 	mov	dptr,#_whiten_lfsr_1_267
      0011C6 E0               [24] 4253 	movx	a,@dptr
      0011C7 FB               [12] 4254 	mov	r3,a
      0011C8 30 E0 13         [24] 4255 	jnb	acc.0,00102$
                                   4256 ;	include/btle.h:204: lfsr ^= 0x88;
      0011CB 90 00 97         [24] 4257 	mov	dptr,#_whiten_lfsr_1_267
      0011CE 74 88            [12] 4258 	mov	a,#0x88
      0011D0 6B               [12] 4259 	xrl	a,r3
      0011D1 F0               [24] 4260 	movx	@dptr,a
                                   4261 ;	include/btle.h:205: res |= i;
      0011D2 90 00 96         [24] 4262 	mov	dptr,#_whiten_i_1_267
      0011D5 E0               [24] 4263 	movx	a,@dptr
      0011D6 FB               [12] 4264 	mov	r3,a
      0011D7 90 00 98         [24] 4265 	mov	dptr,#_whiten_res_2_268
      0011DA E0               [24] 4266 	movx	a,@dptr
      0011DB FA               [12] 4267 	mov	r2,a
      0011DC 4B               [12] 4268 	orl	a,r3
      0011DD F0               [24] 4269 	movx	@dptr,a
      0011DE                       4270 00102$:
                                   4271 ;	include/btle.h:207: lfsr >>= 1;
      0011DE 90 00 97         [24] 4272 	mov	dptr,#_whiten_lfsr_1_267
      0011E1 E0               [24] 4273 	movx	a,@dptr
      0011E2 C3               [12] 4274 	clr	c
      0011E3 13               [12] 4275 	rrc	a
      0011E4 F0               [24] 4276 	movx	@dptr,a
                                   4277 ;	include/btle.h:202: for (i = 1; i; i <<= 1) {
      0011E5 90 00 96         [24] 4278 	mov	dptr,#_whiten_i_1_267
      0011E8 E0               [24] 4279 	movx	a,@dptr
      0011E9 25 E0            [12] 4280 	add	a,acc
      0011EB FB               [12] 4281 	mov	r3,a
      0011EC F0               [24] 4282 	movx	@dptr,a
      0011ED E0               [24] 4283 	movx	a,@dptr
      0011EE 70 D3            [24] 4284 	jnz	00107$
                                   4285 ;	include/btle.h:209: *(buf++) ^= res;
      0011F0 C0 04            [24] 4286 	push	ar4
      0011F2 8D 01            [24] 4287 	mov	ar1,r5
      0011F4 8E 02            [24] 4288 	mov	ar2,r6
      0011F6 8F 03            [24] 4289 	mov	ar3,r7
      0011F8 0D               [12] 4290 	inc	r5
      0011F9 BD 00 01         [24] 4291 	cjne	r5,#0x00,00130$
      0011FC 0E               [12] 4292 	inc	r6
      0011FD                       4293 00130$:
      0011FD 89 82            [24] 4294 	mov	dpl,r1
      0011FF 8A 83            [24] 4295 	mov	dph,r2
      001201 8B F0            [24] 4296 	mov	b,r3
      001203 12 16 8E         [24] 4297 	lcall	__gptrget
      001206 F8               [12] 4298 	mov	r0,a
      001207 90 00 98         [24] 4299 	mov	dptr,#_whiten_res_2_268
      00120A E0               [24] 4300 	movx	a,@dptr
      00120B 62 00            [12] 4301 	xrl	ar0,a
      00120D 89 82            [24] 4302 	mov	dpl,r1
      00120F 8A 83            [24] 4303 	mov	dph,r2
      001211 8B F0            [24] 4304 	mov	b,r3
      001213 E8               [12] 4305 	mov	a,r0
      001214 12 15 3D         [24] 4306 	lcall	__gptrput
      001217 D0 04            [24] 4307 	pop	ar4
      001219 80 93            [24] 4308 	sjmp	00104$
      00121B                       4309 00116$:
      00121B 90 00 95         [24] 4310 	mov	dptr,#_whiten_len_1_266
      00121E EC               [12] 4311 	mov	a,r4
      00121F F0               [24] 4312 	movx	@dptr,a
      001220 22               [24] 4313 	ret
                                   4314 ;------------------------------------------------------------
                                   4315 ;Allocation info for local variables in function 'setup'
                                   4316 ;------------------------------------------------------------
                                   4317 ;	main.c:51: void setup(){
                                   4318 ;	-----------------------------------------
                                   4319 ;	 function setup
                                   4320 ;	-----------------------------------------
      001221                       4321 _setup:
                                   4322 ;	main.c:53: interrupts();							// turn interrupts on
      001221 D2 AF            [12] 4323 	setb _IEN0_SB_GLOBAL 
                                   4324 ;	main.c:54: btleBegin();							// setup the radio
      001223 12 0C C1         [24] 4325 	lcall	_btleBegin
                                   4326 ;	main.c:55: dht_init();
      001226 12 12 8C         [24] 4327 	lcall	_dht_init
                                   4328 ;	main.c:56: dht_read(&DHTTemp, &DHTHum);	
      001229 90 00 9E         [24] 4329 	mov	dptr,#_dht_read_PARM_2
      00122C 74 9B            [12] 4330 	mov	a,#_DHTHum
      00122E F0               [24] 4331 	movx	@dptr,a
      00122F 74 00            [12] 4332 	mov	a,#(_DHTHum >> 8)
      001231 A3               [24] 4333 	inc	dptr
      001232 F0               [24] 4334 	movx	@dptr,a
      001233 E4               [12] 4335 	clr	a
      001234 A3               [24] 4336 	inc	dptr
      001235 F0               [24] 4337 	movx	@dptr,a
      001236 90 00 99         [24] 4338 	mov	dptr,#_DHTTemp
      001239 75 F0 00         [24] 4339 	mov	b,#0x00
      00123C 12 12 97         [24] 4340 	lcall	_dht_read
                                   4341 ;	main.c:57: btleAdvertise(&beacon, sizeof(beacon));		// start advertising the packet above
      00123F 90 00 87         [24] 4342 	mov	dptr,#_btleAdvertise_PARM_2
      001242 74 11            [12] 4343 	mov	a,#0x11
      001244 F0               [24] 4344 	movx	@dptr,a
      001245 90 00 C6         [24] 4345 	mov	dptr,#_beacon
      001248 75 F0 00         [24] 4346 	mov	b,#0x00
      00124B 12 0D C1         [24] 4347 	lcall	_btleAdvertise
                                   4348 ;	main.c:59: watchdogRun(700);						// start watchdog and reset at 700 ms
      00124E 90 02 BC         [24] 4349 	mov	dptr,#0x02BC
      001251 E4               [12] 4350 	clr	a
      001252 F5 F0            [12] 4351 	mov	b,a
      001254 12 00 00         [24] 4352 	lcall	_watchdog_start_and_set_timeout_in_ms
      001257 75 AD 01         [24] 4353 	mov	_CLKLFCTRL,#0x01
                                   4354 ;	main.c:60: sleep(MEMORY_TIMER_OFF);				// switch to lowest mode that can wakeup from wdt
      00125A AF A4            [24] 4355 	mov	r7,_PWRDWN
      00125C 74 F8            [12] 4356 	mov	a,#0xF8
      00125E 5F               [12] 4357 	anl	a,r7
      00125F 44 02            [12] 4358 	orl	a,#0x02
      001261 F5 A4            [12] 4359 	mov	_PWRDWN,a
      001263 22               [24] 4360 	ret
                                   4361 ;------------------------------------------------------------
                                   4362 ;Allocation info for local variables in function 'loop'
                                   4363 ;------------------------------------------------------------
                                   4364 ;	main.c:63: void loop(){
                                   4365 ;	-----------------------------------------
                                   4366 ;	 function loop
                                   4367 ;	-----------------------------------------
      001264                       4368 _loop:
                                   4369 ;	main.c:65: }
      001264 22               [24] 4370 	ret
                                   4371 	.area CSEG    (CODE)
                                   4372 	.area CONST   (CODE)
      0016AE                       4373 _channel:
      0016AE 25                    4374 	.db #0x25	; 37
      0016AF 26                    4375 	.db #0x26	; 38
      0016B0 27                    4376 	.db #0x27	; 39
      0016B1                       4377 _frequency:
      0016B1 02                    4378 	.db #0x02	; 2
      0016B2 1A                    4379 	.db #0x1A	; 26
      0016B3 50                    4380 	.db #0x50	; 80	'P'
      0016B4                       4381 _month_lookup:
      0016B4 00                    4382 	.db #0x00	; 0
      0016B5 06                    4383 	.db #0x06	; 6
      0016B6 00                    4384 	.db #0x00	; 0
      0016B7 04                    4385 	.db #0x04	; 4
      0016B8 00                    4386 	.db #0x00	; 0
      0016B9 01                    4387 	.db #0x01	; 1
      0016BA 00                    4388 	.db #0x00	; 0
      0016BB 11                    4389 	.db #0x11	; 17
      0016BC 00                    4390 	.db #0x00	; 0
      0016BD 08                    4391 	.db #0x08	; 8
      0016BE 00                    4392 	.db #0x00	; 0
      0016BF 00                    4393 	.db #0x00	; 0
      0016C0 03                    4394 	.db #0x03	; 3
      0016C1 00                    4395 	.db #0x00	; 0
      0016C2 00                    4396 	.db #0x00	; 0
      0016C3 00                    4397 	.db #0x00	; 0
      0016C4 12                    4398 	.db #0x12	; 18
      0016C5 02                    4399 	.db #0x02	; 2
      0016C6 10                    4400 	.db #0x10	; 16
      0016C7 05                    4401 	.db #0x05	; 5
      0016C8 09                    4402 	.db #0x09	; 9
      0016C9 00                    4403 	.db #0x00	; 0
      0016CA 01                    4404 	.db #0x01	; 1
      0016CB 07                    4405 	.db #0x07	; 7
      0016CC                       4406 ___str_0:
      0016CC 32 30 3A 34 34 3A 35  4407 	.ascii "20:44:51"
             31
      0016D4 00                    4408 	.db 0x00
      0016D5                       4409 ___str_1:
      0016D5 4F 63 74 20 20 36 20  4410 	.ascii "Oct  6 2017"
             32 30 31 37
      0016E0 00                    4411 	.db 0x00
                                   4412 	.area XINIT   (CODE)
      0016E1                       4413 __xinit__ml:
      0016E1 00 00 00 00           4414 	.byte #0x00,#0x00,#0x00,#0x00	; 0
      0016E5                       4415 __xinit__mcs:
      0016E5 00                    4416 	.db #0x00	; 0
      0016E6                       4417 __xinit__i:
      0016E6 00 00                 4418 	.byte #0x00,#0x00	; 0
      0016E8                       4419 __xinit__addr_width:
      0016E8 05                    4420 	.db #0x05	; 5
      0016E9                       4421 __xinit__beacon:
      0016E9 02                    4422 	.db #0x02	; 2
      0016EA 01                    4423 	.db #0x01	; 1
      0016EB 05                    4424 	.db #0x05	; 5
      0016EC 05                    4425 	.db #0x05	; 5
      0016ED 09                    4426 	.db #0x09	; 9
      0016EE 62                    4427 	.db #0x62	; 98	'b'
      0016EF 6F                    4428 	.db #0x6F	; 111	'o'
      0016F0 6A                    4429 	.db #0x6A	; 106	'j'
      0016F1 33                    4430 	.db #0x33	; 51	'3'
      0016F2 07                    4431 	.db #0x07	; 7
      0016F3 16                    4432 	.db #0x16	; 22
      0016F4 09                    4433 	.db #0x09	; 9
      0016F5 18                    4434 	.db #0x18	; 24
      0016F6 A4                    4435 	.db #0xA4	; 164
      0016F7 08                    4436 	.db #0x08	; 8
      0016F8 00                    4437 	.db #0x00	; 0
      0016F9 FE                    4438 	.db #0xFE	; 254
                                   4439 	.area CABS    (ABS,CODE)
