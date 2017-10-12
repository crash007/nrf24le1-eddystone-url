;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Fri Oct  6 20:44:52 2017
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _month_lookup
	.globl _frequency
	.globl _channel
	.globl _dht_read
	.globl _dht_init
	.globl _btlesetChannel
	.globl _swapbuf
	.globl _rf_spi_execute_command
	.globl _rf_spi_configure_enable
	.globl _rf_write_tx_payload_noack
	.globl _rf_write_tx_payload
	.globl _rf_read_rx_payload
	.globl _rf_read_register_1_byte
	.globl _rf_read_register
	.globl _rf_write_register
	.globl _rf_power_up
	.globl _delay_ms
	.globl _delay_us
	.globl _memcpy
	.globl _aesGaloisMultiply
	.globl _main
	.globl _millisBegin
	.globl _isrINTERRUPT_VECTOR_T0
	.globl _timer0_configure
	.globl _watchdog_start_and_set_timeout_in_ms
	.globl _adc_configure
	.globl _pwm_configure
	.globl _w2_master_random_address_read
	.globl _w2_master_write_to
	.globl _w2_configure
	.globl _uart_wait_for_rx_and_get
	.globl _uart_send_wait_for_complete
	.globl _uart_configure_manual_baud_calc
	.globl _gpio_pin_configure
	.globl _FSR_SB_ENDBG
	.globl _FSR_SB_STP
	.globl _FSR_SB_WEN
	.globl _FSR_SB_RDYN
	.globl _FSR_SB_INFEN
	.globl _FSR_SB_RDISMB
	.globl _RFCON_SB_RFCKEN
	.globl _RFCON_SB_RFCSN
	.globl _RFCON_SB_RFCE
	.globl _ADCON_SB_BD
	.globl _PSW_SB_P
	.globl _PSW_SB_F1
	.globl _PSW_SB_OV
	.globl _PSW_SB_RS0
	.globl _PSW_SB_RS1
	.globl _PSW_SB_F0
	.globl _PSW_SB_AC
	.globl _PSW_SB_CY
	.globl _T2CON_SB_T2PS
	.globl _T2CON_SB_I3FR
	.globl _T2CON_SB_I2FR
	.globl _T2CON_SB_T2R1
	.globl _T2CON_SB_T2R0
	.globl _T2CON_SB_T2CM
	.globl _T2CON_SB_T2I1
	.globl _T2CON_SB_T2I0
	.globl _IRCON_SB_EXF2
	.globl _IRCON_SB_TF2
	.globl _IRCON_SB_TICK
	.globl _IRCON_SB_MISCIRQ
	.globl _IRCON_SB_WUOPIRQ
	.globl _IRCON_SB_SPI_2WIRE
	.globl _IRCON_SB_RFIRQ
	.globl _IRCON_SB_RFRDY
	.globl _IEN1_SB_T2EXTRLD
	.globl _IEN1_SB_TICK
	.globl _IEN1_SB_MISCIRQ
	.globl _IEN1_SB_WUOPIRQ
	.globl _IEN1_SB_SPI_2WIRE
	.globl _IEN1_SB_RFIRQ
	.globl _IEN1_SB_RFRDY
	.globl _P3_SB_D7
	.globl _P3_SB_D6
	.globl _P3_SB_D5
	.globl _P3_SB_D4
	.globl _P3_SB_D3
	.globl _P3_SB_D2
	.globl _P3_SB_D1
	.globl _P3_SB_D0
	.globl _IEN0_SB_GLOBAL
	.globl _IEN0_SB_T2
	.globl _IEN0_SB_UART
	.globl _IEN0_SB_T1
	.globl _IEN0_SB_POFIRQ
	.globl _IEN0_SB_T0
	.globl _IEN0_SB_IFP
	.globl _P2_SB_D7
	.globl _P2_SB_D6
	.globl _P2_SB_D5
	.globl _P2_SB_D4
	.globl _P2_SB_D3
	.globl _P2_SB_D2
	.globl _P2_SB_D1
	.globl _P2_SB_D0
	.globl _S0CON_SB_SM0
	.globl _S0CON_SB_SM1
	.globl _S0CON_SB_SM20
	.globl _S0CON_SB_REN0
	.globl _S0CON_SB_TB80
	.globl _S0CON_SB_RB80
	.globl _S0CON_SB_TI0
	.globl _S0CON_SB_RI0
	.globl _P1_SB_D7
	.globl _P1_SB_D6
	.globl _P1_SB_D5
	.globl _P1_SB_D4
	.globl _P1_SB_D3
	.globl _P1_SB_D2
	.globl _P1_SB_D1
	.globl _P1_SB_D0
	.globl _TCON_SB_TF1
	.globl _TCON_SB_TR1
	.globl _TCON_SB_TF0
	.globl _TCON_SB_TR0
	.globl _TCON_SB_IE1
	.globl _TCON_SB_IT1
	.globl _TCON_SB_IE0
	.globl _TCON_SB_IT0
	.globl _P0_SB_D7
	.globl _P0_SB_D6
	.globl _P0_SB_D5
	.globl _P0_SB_D4
	.globl _P0_SB_D3
	.globl _P0_SB_D2
	.globl _P0_SB_D1
	.globl _P0_SB_D0
	.globl _ADCDAT
	.globl _S0REL
	.globl _T2
	.globl _T1
	.globl _T0
	.globl _CRC
	.globl _CC3
	.globl _CC2
	.globl _CC1
	.globl _SPIMDAT
	.globl _SPIMSTAT
	.globl _SPIMCON1
	.globl _SPIMCON0
	.globl _FCR
	.globl _FPCR
	.globl _FSR
	.globl _B
	.globl _ARCON
	.globl _MD5
	.globl _MD4
	.globl _MD3
	.globl _MD2
	.globl _MD1
	.globl _MD0
	.globl _RFCON
	.globl _SPIRDAT
	.globl _SPIRSTAT
	.globl _SPIRCON1
	.globl _SPIRCON0
	.globl _W2CON0
	.globl _W2CON1
	.globl _ACC
	.globl _CCPDATO
	.globl _CCPDATIB
	.globl _CCPDATIA
	.globl _POFCON
	.globl _COMPCON
	.globl _W2DAT
	.globl _W2SADR
	.globl _ADCON
	.globl _RNGDAT
	.globl _RNGCTL
	.globl _ADCDATL
	.globl _ADCDATH
	.globl _ADCCON1
	.globl _ADCCON2
	.globl _ADCCON3
	.globl _PSW
	.globl _WUOPC0
	.globl _WUOPC1
	.globl _TH2
	.globl _TL2
	.globl _CRCH
	.globl _CRCL
	.globl __XPAGE
	.globl _MPAGE
	.globl _T2CON
	.globl _CCH3
	.globl _CCL3
	.globl _CCH2
	.globl _CCL2
	.globl _CCH1
	.globl _CCL1
	.globl _CCEN
	.globl _IRCON
	.globl _SPISDAT
	.globl _SPISSTAT
	.globl _SPISCON1
	.globl _SPISCON0
	.globl _S0RELH
	.globl _IP1
	.globl _IEN1
	.globl _SPISRDSZ
	.globl _RTC2CPT00
	.globl _RTC2CMP1
	.globl _RTC2CMP0
	.globl _RTC2CON
	.globl _PWMCON
	.globl _RSTREAS
	.globl _P3
	.globl _WDSV
	.globl _OPMCON
	.globl _CLKLFCTRL
	.globl _RTC2CPT10
	.globl _RTC2CPT01
	.globl _S0RELL
	.globl _IP0
	.globl _IEN0
	.globl _MEMCON
	.globl _INTEXP
	.globl _WUCON
	.globl _PWRDWN
	.globl _CLKCTRL
	.globl _PWMDC1
	.globl _PWMDC0
	.globl _P2
	.globl _P1CON
	.globl _P0CON
	.globl _S0BUF
	.globl _S0CON
	.globl _P2CON
	.globl _P3DIR
	.globl _P2DIR
	.globl _P1DIR
	.globl _P0DIR
	.globl _DPS
	.globl _P1
	.globl _P3CON
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH1
	.globl _DPL1
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _beacon
	.globl _addr_width
	.globl _i
	.globl _mcs
	.globl _ml
	.globl _DHTHum
	.globl _DHTTemp
	.globl _crc_PARM_2
	.globl _advertise_PARM_2
	.globl _btleAdvertise_PARM_2
	.globl _current
	.globl _buffer
	.globl _whatHappened_PARM_3
	.globl _whatHappened_PARM_2
	.globl _openWritingPipe_PARM_5
	.globl _openWritingPipe_PARM_4
	.globl _openWritingPipe_PARM_3
	.globl _openWritingPipe_PARM_2
	.globl _openReadingPipe_PARM_6
	.globl _openReadingPipe_PARM_5
	.globl _openReadingPipe_PARM_4
	.globl _openReadingPipe_PARM_3
	.globl _openReadingPipe_PARM_2
	.globl _setRetries_PARM_2
	.globl _write_PARM_3
	.globl _write_PARM_2
	.globl _read_PARM_2
	.globl _radio_temp
	.globl _txRxDelay
	.globl _pipe0_reading_address
	.globl _aesGaloisMultiply_PARM_2
	.globl _eepromWrite_PARM_2
	.globl _wireRead16_PARM_2
	.globl _wireRead8_PARM_2
	.globl _wireWrite8_PARM_2
	.globl _data_byte
	.globl _address_byte
	.globl _control_byte
	.globl _serialBegin
	.globl _putchar
	.globl _getchar
	.globl _wireWrite8
	.globl _wireRead8
	.globl _wireRead16
	.globl _eepromRead
	.globl _eepromWrite
	.globl _radioBegin
	.globl _read
	.globl _write
	.globl _setRetries
	.globl _setChannel
	.globl _setDataRate
	.globl _setAutoAck
	.globl _setCRCLength
	.globl _setPALevel
	.globl _setAddressWidth
	.globl _openReadingPipe
	.globl _openWritingPipe
	.globl _available
	.globl _startListening
	.globl _closeReadingPipe
	.globl _stopListening
	.globl _whatHappened
	.globl _getDynamicPayloadSize
	.globl _enableDynamicPayloads
	.globl _testRPD
	.globl _testCarrier
	.globl _getPALevel
	.globl _getDataRate
	.globl _getCRCLength
	.globl _btleBegin
	.globl _btleHopChannel
	.globl _btleAdvertise
	.globl _advertise
	.globl _crc
	.globl _whiten
	.globl _setup
	.globl _loop
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_DPL1	=	0x0084
_DPH1	=	0x0085
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P3CON	=	0x008f
_P1	=	0x0090
_DPS	=	0x0092
_P0DIR	=	0x0093
_P1DIR	=	0x0094
_P2DIR	=	0x0095
_P3DIR	=	0x0096
_P2CON	=	0x0097
_S0CON	=	0x0098
_S0BUF	=	0x0099
_P0CON	=	0x009e
_P1CON	=	0x009f
_P2	=	0x00a0
_PWMDC0	=	0x00a1
_PWMDC1	=	0x00a2
_CLKCTRL	=	0x00a3
_PWRDWN	=	0x00a4
_WUCON	=	0x00a5
_INTEXP	=	0x00a6
_MEMCON	=	0x00a7
_IEN0	=	0x00a8
_IP0	=	0x00a9
_S0RELL	=	0x00aa
_RTC2CPT01	=	0x00ab
_RTC2CPT10	=	0x00ac
_CLKLFCTRL	=	0x00ad
_OPMCON	=	0x00ae
_WDSV	=	0x00af
_P3	=	0x00b0
_RSTREAS	=	0x00b1
_PWMCON	=	0x00b2
_RTC2CON	=	0x00b3
_RTC2CMP0	=	0x00b4
_RTC2CMP1	=	0x00b5
_RTC2CPT00	=	0x00b6
_SPISRDSZ	=	0x00b7
_IEN1	=	0x00b8
_IP1	=	0x00b9
_S0RELH	=	0x00ba
_SPISCON0	=	0x00bc
_SPISCON1	=	0x00bd
_SPISSTAT	=	0x00be
_SPISDAT	=	0x00bf
_IRCON	=	0x00c0
_CCEN	=	0x00c1
_CCL1	=	0x00c2
_CCH1	=	0x00c3
_CCL2	=	0x00c4
_CCH2	=	0x00c5
_CCL3	=	0x00c6
_CCH3	=	0x00c7
_T2CON	=	0x00c8
_MPAGE	=	0x00c9
__XPAGE	=	0x00c9
_CRCL	=	0x00ca
_CRCH	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
_WUOPC1	=	0x00ce
_WUOPC0	=	0x00cf
_PSW	=	0x00d0
_ADCCON3	=	0x00d1
_ADCCON2	=	0x00d2
_ADCCON1	=	0x00d3
_ADCDATH	=	0x00d4
_ADCDATL	=	0x00d5
_RNGCTL	=	0x00d6
_RNGDAT	=	0x00d7
_ADCON	=	0x00d8
_W2SADR	=	0x00d9
_W2DAT	=	0x00da
_COMPCON	=	0x00db
_POFCON	=	0x00dc
_CCPDATIA	=	0x00dd
_CCPDATIB	=	0x00de
_CCPDATO	=	0x00df
_ACC	=	0x00e0
_W2CON1	=	0x00e1
_W2CON0	=	0x00e2
_SPIRCON0	=	0x00e4
_SPIRCON1	=	0x00e5
_SPIRSTAT	=	0x00e6
_SPIRDAT	=	0x00e7
_RFCON	=	0x00e8
_MD0	=	0x00e9
_MD1	=	0x00ea
_MD2	=	0x00eb
_MD3	=	0x00ec
_MD4	=	0x00ed
_MD5	=	0x00ee
_ARCON	=	0x00ef
_B	=	0x00f0
_FSR	=	0x00f8
_FPCR	=	0x00f9
_FCR	=	0x00fa
_SPIMCON0	=	0x00fc
_SPIMCON1	=	0x00fd
_SPIMSTAT	=	0x00fe
_SPIMDAT	=	0x00ff
_CC1	=	0xc3c2
_CC2	=	0xc5c4
_CC3	=	0xc7c6
_CRC	=	0xcbca
_T0	=	0x8c8a
_T1	=	0x8d8b
_T2	=	0xcdcc
_S0REL	=	0xbaaa
_ADCDAT	=	0xd4d5
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_SB_D0	=	0x0080
_P0_SB_D1	=	0x0081
_P0_SB_D2	=	0x0082
_P0_SB_D3	=	0x0083
_P0_SB_D4	=	0x0084
_P0_SB_D5	=	0x0085
_P0_SB_D6	=	0x0086
_P0_SB_D7	=	0x0087
_TCON_SB_IT0	=	0x0088
_TCON_SB_IE0	=	0x0089
_TCON_SB_IT1	=	0x008a
_TCON_SB_IE1	=	0x008b
_TCON_SB_TR0	=	0x008c
_TCON_SB_TF0	=	0x008d
_TCON_SB_TR1	=	0x008e
_TCON_SB_TF1	=	0x008f
_P1_SB_D0	=	0x0090
_P1_SB_D1	=	0x0091
_P1_SB_D2	=	0x0092
_P1_SB_D3	=	0x0093
_P1_SB_D4	=	0x0094
_P1_SB_D5	=	0x0095
_P1_SB_D6	=	0x0096
_P1_SB_D7	=	0x0097
_S0CON_SB_RI0	=	0x0098
_S0CON_SB_TI0	=	0x0099
_S0CON_SB_RB80	=	0x009a
_S0CON_SB_TB80	=	0x009b
_S0CON_SB_REN0	=	0x009c
_S0CON_SB_SM20	=	0x009d
_S0CON_SB_SM1	=	0x009e
_S0CON_SB_SM0	=	0x009f
_P2_SB_D0	=	0x00a0
_P2_SB_D1	=	0x00a1
_P2_SB_D2	=	0x00a2
_P2_SB_D3	=	0x00a3
_P2_SB_D4	=	0x00a4
_P2_SB_D5	=	0x00a5
_P2_SB_D6	=	0x00a6
_P2_SB_D7	=	0x00a7
_IEN0_SB_IFP	=	0x00a8
_IEN0_SB_T0	=	0x00a9
_IEN0_SB_POFIRQ	=	0x00aa
_IEN0_SB_T1	=	0x00ab
_IEN0_SB_UART	=	0x00ac
_IEN0_SB_T2	=	0x00ad
_IEN0_SB_GLOBAL	=	0x00af
_P3_SB_D0	=	0x00b0
_P3_SB_D1	=	0x00b1
_P3_SB_D2	=	0x00b2
_P3_SB_D3	=	0x00b3
_P3_SB_D4	=	0x00b4
_P3_SB_D5	=	0x00b5
_P3_SB_D6	=	0x00b6
_P3_SB_D7	=	0x00b7
_IEN1_SB_RFRDY	=	0x00b8
_IEN1_SB_RFIRQ	=	0x00b9
_IEN1_SB_SPI_2WIRE	=	0x00ba
_IEN1_SB_WUOPIRQ	=	0x00bb
_IEN1_SB_MISCIRQ	=	0x00bc
_IEN1_SB_TICK	=	0x00bd
_IEN1_SB_T2EXTRLD	=	0x00bf
_IRCON_SB_RFRDY	=	0x00c0
_IRCON_SB_RFIRQ	=	0x00c1
_IRCON_SB_SPI_2WIRE	=	0x00c2
_IRCON_SB_WUOPIRQ	=	0x00c3
_IRCON_SB_MISCIRQ	=	0x00c4
_IRCON_SB_TICK	=	0x00c5
_IRCON_SB_TF2	=	0x00c6
_IRCON_SB_EXF2	=	0x00c7
_T2CON_SB_T2I0	=	0x00c8
_T2CON_SB_T2I1	=	0x00c9
_T2CON_SB_T2CM	=	0x00ca
_T2CON_SB_T2R0	=	0x00cb
_T2CON_SB_T2R1	=	0x00cc
_T2CON_SB_I2FR	=	0x00cd
_T2CON_SB_I3FR	=	0x00ce
_T2CON_SB_T2PS	=	0x00cf
_PSW_SB_CY	=	0x00d7
_PSW_SB_AC	=	0x00d6
_PSW_SB_F0	=	0x00d5
_PSW_SB_RS1	=	0x00d4
_PSW_SB_RS0	=	0x00d3
_PSW_SB_OV	=	0x00d2
_PSW_SB_F1	=	0x00d1
_PSW_SB_P	=	0x00d0
_ADCON_SB_BD	=	0x00df
_RFCON_SB_RFCE	=	0x00e8
_RFCON_SB_RFCSN	=	0x00e9
_RFCON_SB_RFCKEN	=	0x00ea
_FSR_SB_RDISMB	=	0x00fa
_FSR_SB_INFEN	=	0x00fb
_FSR_SB_RDYN	=	0x00fc
_FSR_SB_WEN	=	0x00fd
_FSR_SB_STP	=	0x00fe
_FSR_SB_ENDBG	=	0x00ff
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_advertise_sloc0_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_crc_sloc0_1_0:
	.ds 3
_crc_sloc1_1_0:
	.ds 3
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
_control_byte::
	.ds 1
_address_byte::
	.ds 1
_data_byte::
	.ds 1
_putchar_c_1_102:
	.ds 1
_wireWrite8_PARM_2:
	.ds 1
_wireWrite8_slave_address_1_105:
	.ds 1
_wireRead8_PARM_2:
	.ds 1
_wireRead8_slave_address_1_109:
	.ds 1
_wireRead8_wr8data_1_110:
	.ds 1
_wireRead16_PARM_2:
	.ds 1
_wireRead16_slave_address_1_113:
	.ds 1
_wireRead16_wr16data_1_114:
	.ds 2
_eepromRead_address_1_117:
	.ds 2
_eepromWrite_PARM_2:
	.ds 1
_eepromWrite_address_1_120:
	.ds 2
_aesGaloisMultiply_PARM_2:
	.ds 1
_aesGaloisMultiply_value1_1_123:
	.ds 1
_pipe0_reading_address::
	.ds 5
_txRxDelay::
	.ds 1
_radio_temp::
	.ds 1
_read_PARM_2:
	.ds 1
_read_buf_1_184:
	.ds 3
_read_status_1_185:
	.ds 1
_write_PARM_2:
	.ds 1
_write_PARM_3:
	.ds 1
_write_buf_1_186:
	.ds 3
_write_status_1_187:
	.ds 1
_setRetries_PARM_2:
	.ds 1
_setRetries_delay_ms_1_191:
	.ds 1
_setRetries_reg_1_192:
	.ds 1
_setChannel_channel_1_193:
	.ds 1
_setDataRate_speed_1_195:
	.ds 1
_setDataRate_setup_1_196:
	.ds 1
_setAutoAck_enable_1_200:
	.ds 1
_setAutoAck_buffer_1_201:
	.ds 1
_setCRCLength_length_1_202:
	.ds 1
_setCRCLength_buffer_1_203:
	.ds 1
_setPALevel_level_1_204:
	.ds 1
_setPALevel_setup_1_205:
	.ds 1
_setAddressWidth_a_width_1_206:
	.ds 1
_setAddressWidth_aw_1_207:
	.ds 1
_openReadingPipe_PARM_2:
	.ds 1
_openReadingPipe_PARM_3:
	.ds 1
_openReadingPipe_PARM_4:
	.ds 1
_openReadingPipe_PARM_5:
	.ds 1
_openReadingPipe_PARM_6:
	.ds 1
_openReadingPipe_child_1_209:
	.ds 1
_openReadingPipe_setup_1_210:
	.ds 1
_openReadingPipe_orpdata_1_210:
	.ds 5
_openWritingPipe_PARM_2:
	.ds 1
_openWritingPipe_PARM_3:
	.ds 1
_openWritingPipe_PARM_4:
	.ds 1
_openWritingPipe_PARM_5:
	.ds 1
_openWritingPipe_address1_1_213:
	.ds 1
_openWritingPipe_setup_1_214:
	.ds 1
_openWritingPipe_owpdata_1_214:
	.ds 5
_available_pipe_num_1_215:
	.ds 3
_available_buffer_1_216:
	.ds 1
_startListening_config_1_219:
	.ds 1
_closeReadingPipe_config_1_223:
	.ds 1
_stopListening_config_1_225:
	.ds 1
_whatHappened_PARM_2:
	.ds 3
_whatHappened_PARM_3:
	.ds 3
_whatHappened_tx_ok_1_226:
	.ds 3
_getDynamicPayloadSize_dps_1_228:
	.ds 1
_getPALevel_power_1_232:
	.ds 1
_getPALevel_result_1_232:
	.ds 1
_getDataRate_dr_1_238:
	.ds 1
_getDataRate_result_1_238:
	.ds 1
_getCRCLength_config_1_243:
	.ds 1
_getCRCLength_result_1_243:
	.ds 1
_buffer::
	.ds 32
_current::
	.ds 1
_swapbuf_len_1_250:
	.ds 1
_swapbuf_a_2_252:
	.ds 1
_swapbuf_v_2_252:
	.ds 1
_btlesetChannel_num_1_254:
	.ds 1
_btleAdvertise_PARM_2:
	.ds 1
_btleAdvertise_buf_1_257:
	.ds 3
_advertise_PARM_2:
	.ds 1
_advertise_buf_1_259:
	.ds 3
_crc_PARM_2:
	.ds 3
_crc_len_1_261:
	.ds 1
_crc_i_1_262:
	.ds 1
_crc_d_2_263:
	.ds 1
_whiten_len_1_266:
	.ds 1
_whiten_i_1_267:
	.ds 1
_whiten_lfsr_1_267:
	.ds 1
_whiten_res_2_268:
	.ds 1
_DHTTemp::
	.ds 2
_DHTHum::
	.ds 2
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_ml::
	.ds 4
_mcs::
	.ds 1
_i::
	.ds 2
_addr_width::
	.ds 1
_beacon::
	.ds 17
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
	reti
	.ds	7
	ljmp	_isrINTERRUPT_VECTOR_T0
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
;Allocation info for local variables in function 'isrINTERRUPT_VECTOR_T0'
;------------------------------------------------------------
;	include/wiring.h:91: ISR(INTERRUPT_VECTOR_T0){
;	-----------------------------------------
;	 function isrINTERRUPT_VECTOR_T0
;	-----------------------------------------
_isrINTERRUPT_VECTOR_T0:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	acc
	push	dpl
	push	dph
	push	ar7
	push	psw
	mov	psw,#0x00
;	include/wiring.h:92: TL0 = TLSTART;
	mov	_TL0,#0x22
;	include/wiring.h:94: if (mcs>=6)
	mov	dptr,#_mcs
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x06,00108$
00108$:
	jc	00102$
;	include/wiring.h:96: ml++;
	mov	dptr,#_ml
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	include/wiring.h:97: mcs=0;
	mov	dptr,#_mcs
	clr	a
	movx	@dptr,a
00102$:
;	include/wiring.h:100: mcs++;
	mov	dptr,#_mcs
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	pop	psw
	pop	ar7
	pop	dph
	pop	dpl
	pop	acc
	reti
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'millisBegin'
;------------------------------------------------------------
;	include/wiring.h:103: void millisBegin()
;	-----------------------------------------
;	 function millisBegin
;	-----------------------------------------
_millisBegin:
;	include/wiring.h:105: interrupt_control_global_enable();
	setb _IEN0_SB_GLOBAL 
;	include/wiring.h:106: interrupt_control_t0_enable()	;
	setb _IEN0_SB_T0 
;	include/wiring.h:107: timer0_configure(TIMER0_CONFIG_OPTION_MODE_3_TWO_8_BIT_CTRS_TMRS,TLSTART);
	mov	dptr,#_timer0_configure_PARM_2
	mov	a,#0x22
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x03
	lcall	_timer0_configure
;	include/wiring.h:108: timer0_run();
	setb _TCON_SB_TR0 
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	include/wiring.h:247: void main(){
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	include/wiring.h:249: adc_configure ((uint16_t)ADC_CONFIG_OPTION_RESOLUTION_12_BITS|ADC_CONFIG_OPTION_REF_SELECT_VDD |ADC_CONFIG_OPTION_RESULT_JUSTIFICATION_RIGHT);
	mov	dptr,#0xE100
	lcall	_adc_configure
;	include/wiring.h:250: pwm_configure(PWM_CONFIG_OPTION_PRESCALER_VAL_10 || PWM_CONFIG_OPTION_WIDTH_8_BITS);
	mov	dpl,#0x01
	lcall	_pwm_configure
;	include/wiring.h:255: GPIO_PIN_CONFIG_OPTION_PIN_MODE_INPUT_BUFFER_ON_PULL_UP_RESISTOR);
	mov	dptr,#_gpio_pin_configure_PARM_2
	mov	a,#0x40
	movx	@dptr,a
	mov	dpl,#0x04
	lcall	_gpio_pin_configure
;	include/wiring.h:259: GPIO_PIN_CONFIG_OPTION_PIN_MODE_INPUT_BUFFER_ON_PULL_UP_RESISTOR);
	mov	dptr,#_gpio_pin_configure_PARM_2
	mov	a,#0x40
	movx	@dptr,a
	mov	dpl,#0x05
	lcall	_gpio_pin_configure
;	include/wiring.h:261: w2_configure(W2_CONFIG_OPTION_ENABLE | W2_CONFIG_OPTION_MODE_MASTER | W2_CONFIG_OPTION_CLOCK_FREQ_400_KHZ | W2_CONFIG_OPTION_ALL_INTERRUPTS_ENABLE, 0);
	mov	dptr,#_w2_configure_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#0x000B
	lcall	_w2_configure
;	include/wiring.h:263: setup();
	lcall	_setup
;	include/wiring.h:264: while(1){loop();}
00102$:
	lcall	_loop
	sjmp	00102$
;------------------------------------------------------------
;Allocation info for local variables in function 'serialBegin'
;------------------------------------------------------------
;	include/wiring.h:267: void serialBegin(){
;	-----------------------------------------
;	 function serialBegin
;	-----------------------------------------
_serialBegin:
;	include/wiring.h:273: GPIO_PIN_CONFIG_OPTION_PIN_MODE_OUTPUT_BUFFER_NORMAL_DRIVE_STRENGTH);
	mov	dptr,#_gpio_pin_configure_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dpl,#0x03
	lcall	_gpio_pin_configure
;	include/wiring.h:277: GPIO_PIN_CONFIG_OPTION_PIN_MODE_INPUT_BUFFER_ON_NO_RESISTORS);
	mov	dptr,#_gpio_pin_configure_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,#0x04
	lcall	_gpio_pin_configure
;	include/wiring.h:280: uart_configure_8_n_1_38400();
	mov	dptr,#_uart_configure_manual_baud_calc_PARM_2
	mov	a,#0xF3
	movx	@dptr,a
	mov	a,#0x03
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x56
	ljmp	_uart_configure_manual_baud_calc
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
;c                         Allocated with name '_putchar_c_1_102'
;------------------------------------------------------------
;	include/wiring.h:285: void putchar(char c)
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
	mov	a,dpl
	mov	dptr,#_putchar_c_1_102
	movx	@dptr,a
;	include/wiring.h:287: uart_send_wait_for_complete(c);
	movx	a,@dptr
	mov	dpl,a
	ljmp	_uart_send_wait_for_complete
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar'
;------------------------------------------------------------
;retchar                   Allocated with name '_getchar_retchar_1_104'
;------------------------------------------------------------
;	include/wiring.h:291: char getchar()
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
;	include/wiring.h:294: retchar = uart_wait_for_rx_and_get();
;	include/wiring.h:295: return retchar;
	ljmp	_uart_wait_for_rx_and_get
;------------------------------------------------------------
;Allocation info for local variables in function 'wireWrite8'
;------------------------------------------------------------
;ww8data                   Allocated with name '_wireWrite8_PARM_2'
;slave_address             Allocated with name '_wireWrite8_slave_address_1_105'
;------------------------------------------------------------
;	include/wiring.h:298: w2_ack_nack_val_t wireWrite8(uint8_t slave_address, uint8_t ww8data){
;	-----------------------------------------
;	 function wireWrite8
;	-----------------------------------------
_wireWrite8:
	mov	a,dpl
	mov	dptr,#_wireWrite8_slave_address_1_105
	movx	@dptr,a
;	include/wiring.h:300: if(w2_master_write_to(slave_address, &ww8data, 1, 0, 0) ==  W2_NACK_VAL)
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_w2_master_write_to_PARM_2
	mov	a,#_wireWrite8_PARM_2
	movx	@dptr,a
	mov	a,#(_wireWrite8_PARM_2 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_w2_master_write_to_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_w2_master_write_to_PARM_4
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_w2_master_write_to_PARM_5
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r7
	lcall	_w2_master_write_to
	mov	r7,dpl
	cjne	r7,#0x01,00102$
;	include/wiring.h:302: return W2_NACK_VAL;
	mov	dpl,#0x01
	ret
00102$:
;	include/wiring.h:304: return W2_ACK_VAL;
	mov	dpl,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'wireRead8'
;------------------------------------------------------------
;address                   Allocated with name '_wireRead8_PARM_2'
;slave_address             Allocated with name '_wireRead8_slave_address_1_109'
;wr8data                   Allocated with name '_wireRead8_wr8data_1_110'
;------------------------------------------------------------
;	include/wiring.h:308: uint8_t wireRead8(uint8_t slave_address, uint8_t address){
;	-----------------------------------------
;	 function wireRead8
;	-----------------------------------------
_wireRead8:
	mov	a,dpl
	mov	dptr,#_wireRead8_slave_address_1_109
	movx	@dptr,a
;	include/wiring.h:309: uint8_t wr8data = 0;
	mov	dptr,#_wireRead8_wr8data_1_110
	clr	a
	movx	@dptr,a
;	include/wiring.h:311: if(w2_master_random_address_read(slave_address, &address, 1, (uint8_t*)&wr8data, 1) ==  W2_NACK_VAL)
	mov	dptr,#_wireRead8_slave_address_1_109
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_w2_master_random_address_read_PARM_2
	mov	a,#_wireRead8_PARM_2
	movx	@dptr,a
	mov	a,#(_wireRead8_PARM_2 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_w2_master_random_address_read_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_w2_master_random_address_read_PARM_4
	mov	a,#_wireRead8_wr8data_1_110
	movx	@dptr,a
	mov	a,#(_wireRead8_wr8data_1_110 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_w2_master_random_address_read_PARM_5
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r7
	lcall	_w2_master_random_address_read
	mov	r7,dpl
	cjne	r7,#0x01,00102$
;	include/wiring.h:313: return W2_NACK_VAL;}
	mov	dpl,#0x01
	ret
00102$:
;	include/wiring.h:315: return wr8data;
	mov	dptr,#_wireRead8_wr8data_1_110
	movx	a,@dptr
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'wireRead16'
;------------------------------------------------------------
;address                   Allocated with name '_wireRead16_PARM_2'
;slave_address             Allocated with name '_wireRead16_slave_address_1_113'
;wr16data                  Allocated with name '_wireRead16_wr16data_1_114'
;------------------------------------------------------------
;	include/wiring.h:319: uint16_t wireRead16(uint8_t slave_address, uint8_t address){
;	-----------------------------------------
;	 function wireRead16
;	-----------------------------------------
_wireRead16:
	mov	a,dpl
	mov	dptr,#_wireRead16_slave_address_1_113
	movx	@dptr,a
;	include/wiring.h:320: uint16_t wr16data = 0;
	mov	dptr,#_wireRead16_wr16data_1_114
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	include/wiring.h:322: if(w2_master_random_address_read(slave_address, &address, 1, (uint8_t*)&wr16data, 2) ==  W2_NACK_VAL)
	mov	dptr,#_wireRead16_slave_address_1_113
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_w2_master_random_address_read_PARM_2
	mov	a,#_wireRead16_PARM_2
	movx	@dptr,a
	mov	a,#(_wireRead16_PARM_2 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_w2_master_random_address_read_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_w2_master_random_address_read_PARM_4
	mov	a,#_wireRead16_wr16data_1_114
	movx	@dptr,a
	mov	a,#(_wireRead16_wr16data_1_114 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_w2_master_random_address_read_PARM_5
	mov	a,#0x02
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r7
	lcall	_w2_master_random_address_read
	mov	r7,dpl
	cjne	r7,#0x01,00102$
;	include/wiring.h:324: return W2_NACK_VAL;}
	mov	dptr,#0x0001
	ret
00102$:
;	include/wiring.h:326: return wr16data;
	mov	dptr,#_wireRead16_wr16data_1_114
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r6
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'eepromRead'
;------------------------------------------------------------
;address                   Allocated with name '_eepromRead_address_1_117'
;------------------------------------------------------------
;	include/wiring.h:330: uint8_t eepromRead(uint16_t address){
;	-----------------------------------------
;	 function eepromRead
;	-----------------------------------------
_eepromRead:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_eepromRead_address_1_117
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	include/wiring.h:331: control_byte = (unsigned char)(0x50 | (address >> 8));
	mov	dptr,#_eepromRead_address_1_117
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	orl	ar5,#0x50
	mov	dptr,#_control_byte
	mov	a,r5
	movx	@dptr,a
;	include/wiring.h:332: address_byte = (unsigned char)address;
	mov	dptr,#_address_byte
	mov	a,r6
	movx	@dptr,a
;	include/wiring.h:334: if(w2_master_random_address_read(control_byte, &address_byte, 1, &data_byte, 1) ==  W2_NACK_VAL)
	mov	dptr,#_w2_master_random_address_read_PARM_2
	mov	a,#_address_byte
	movx	@dptr,a
	mov	a,#(_address_byte >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_w2_master_random_address_read_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_w2_master_random_address_read_PARM_4
	mov	a,#_data_byte
	movx	@dptr,a
	mov	a,#(_data_byte >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_w2_master_random_address_read_PARM_5
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	lcall	_w2_master_random_address_read
	mov	r7,dpl
	cjne	r7,#0x01,00102$
;	include/wiring.h:337: return -1;
	mov	dpl,#0xFF
	ret
00102$:
;	include/wiring.h:339: return data_byte;	
	mov	dptr,#_data_byte
	movx	a,@dptr
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'eepromWrite'
;------------------------------------------------------------
;value                     Allocated with name '_eepromWrite_PARM_2'
;address                   Allocated with name '_eepromWrite_address_1_120'
;------------------------------------------------------------
;	include/wiring.h:343: void eepromWrite(uint16_t address, uint8_t value){
;	-----------------------------------------
;	 function eepromWrite
;	-----------------------------------------
_eepromWrite:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_eepromWrite_address_1_120
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	include/wiring.h:344: control_byte = (unsigned char)(0x50 | (address >> 8));
	mov	dptr,#_eepromWrite_address_1_120
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	orl	ar5,#0x50
	mov	dptr,#_control_byte
	mov	a,r5
	movx	@dptr,a
;	include/wiring.h:345: address_byte = (unsigned char)address;
	mov	dptr,#_address_byte
	mov	a,r6
	movx	@dptr,a
;	include/wiring.h:346: data_byte = (unsigned char)value;
	mov	dptr,#_eepromWrite_PARM_2
	movx	a,@dptr
	mov	dptr,#_data_byte
	movx	@dptr,a
;	include/wiring.h:348: if(w2_master_write_to(control_byte, &address_byte, 1, &data_byte, 1) ==  W2_NACK_VAL)
	mov	dptr,#_w2_master_write_to_PARM_2
	mov	a,#_address_byte
	movx	@dptr,a
	mov	a,#(_address_byte >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_w2_master_write_to_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_w2_master_write_to_PARM_4
	mov	a,#_data_byte
	movx	@dptr,a
	mov	a,#(_data_byte >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_w2_master_write_to_PARM_5
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	lcall	_w2_master_write_to
	mov	r7,dpl
	cjne	r7,#0x01,00103$
;	include/wiring.h:351: return;
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'aesGaloisMultiply'
;------------------------------------------------------------
;value2                    Allocated with name '_aesGaloisMultiply_PARM_2'
;value1                    Allocated with name '_aesGaloisMultiply_value1_1_123'
;------------------------------------------------------------
;	include/wiring.h:355: uint8_t aesGaloisMultiply(uint8_t value1, uint8_t value2)
;	-----------------------------------------
;	 function aesGaloisMultiply
;	-----------------------------------------
_aesGaloisMultiply:
	mov	a,dpl
	mov	dptr,#_aesGaloisMultiply_value1_1_123
	movx	@dptr,a
;	include/wiring.h:357: CCPDATIA = value1;
	movx	a,@dptr
	mov	_CCPDATIA,a
;	include/wiring.h:358: CCPDATIB = value2;
	mov	dptr,#_aesGaloisMultiply_PARM_2
	movx	a,@dptr
	mov	_CCPDATIB,a
;	include/wiring.h:359: return CCPDATO;
	mov	dpl,_CCPDATO
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'radioBegin'
;------------------------------------------------------------
;	include/rf24.h:97: void radioBegin(){
;	-----------------------------------------
;	 function radioBegin
;	-----------------------------------------
_radioBegin:
;	include/rf24.h:101: rf_spi_configure_enable();
	lcall	_rf_spi_configure_enable
;	include/rf24.h:102: delay(5);
	mov	dptr,#0x0005
	lcall	_delay_ms
;	include/rf24.h:103: txRxDelay = 155;
	mov	dptr,#_txRxDelay
	mov	a,#0x9B
	movx	@dptr,a
;	include/rf24.h:118: rf_flush_tx();
	mov	dptr,#_rf_spi_execute_command_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_spi_execute_command_PARM_3
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_spi_execute_command_PARM_4
	inc	a
	movx	@dptr,a
	mov	dpl,#0xE1
	lcall	_rf_spi_execute_command
;	include/rf24.h:119: rf_flush_rx();
	mov	dptr,#_rf_spi_execute_command_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_spi_execute_command_PARM_3
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_spi_execute_command_PARM_4
	inc	a
	movx	@dptr,a
	mov	dpl,#0xE2
	ljmp	_rf_spi_execute_command
;------------------------------------------------------------
;Allocation info for local variables in function 'read'
;------------------------------------------------------------
;len                       Allocated with name '_read_PARM_2'
;buf                       Allocated with name '_read_buf_1_184'
;status                    Allocated with name '_read_status_1_185'
;------------------------------------------------------------
;	include/rf24.h:123: void read(void* buf, uint8_t len)
;	-----------------------------------------
;	 function read
;	-----------------------------------------
_read:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_read_buf_1_184
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	include/rf24.h:127: rf_read_rx_payload(buf, len);
	mov	dptr,#_read_buf_1_184
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_read_PARM_2
	movx	a,@dptr
	mov	dptr,#_rf_read_rx_payload_PARM_2
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_rf_read_rx_payload
;	include/rf24.h:128: status = _BV(RX_DR) | _BV(TX_DS) | _BV(MAX_RT);
	mov	dptr,#_read_status_1_185
	mov	a,#0x70
	movx	@dptr,a
;	include/rf24.h:129: status = rf_write_register(RF_STATUS, &status, 1);
	mov	dptr,#_rf_write_register_PARM_2
	mov	a,#_read_status_1_185
	movx	@dptr,a
	mov	a,#(_read_status_1_185 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_write_register_PARM_3
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x07
	lcall	_rf_write_register
	mov	a,dpl
	mov	dptr,#_read_status_1_185
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'write'
;------------------------------------------------------------
;len                       Allocated with name '_write_PARM_2'
;multicast                 Allocated with name '_write_PARM_3'
;buf                       Allocated with name '_write_buf_1_186'
;status                    Allocated with name '_write_status_1_187'
;------------------------------------------------------------
;	include/rf24.h:133: bool write(const void* buf, uint8_t len, const bool multicast)
;	-----------------------------------------
;	 function write
;	-----------------------------------------
_write:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_write_buf_1_186
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	include/rf24.h:137: if(multicast)
	mov	dptr,#_write_PARM_3
	movx	a,@dptr
	jz	00102$
;	include/rf24.h:139: rf_write_tx_payload_noack(buf, len, true);
	mov	dptr,#_write_buf_1_186
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_write_PARM_2
	movx	a,@dptr
	mov	dptr,#_rf_write_tx_payload_noack_PARM_2
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_write_tx_payload_noack_PARM_3
	inc	a
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_rf_write_tx_payload_noack
	sjmp	00104$
00102$:
;	include/rf24.h:142: rf_write_tx_payload(buf, len, true);
	mov	dptr,#_write_buf_1_186
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_write_PARM_2
	movx	a,@dptr
	mov	dptr,#_rf_write_tx_payload_PARM_2
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_write_tx_payload_PARM_3
	inc	a
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_rf_write_tx_payload
;	include/rf24.h:145: while( ! ( rf_get_status()  & ( _BV(TX_DS) | _BV(MAX_RT) )));
00104$:
	mov	dptr,#_rf_spi_execute_command_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_spi_execute_command_PARM_3
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_spi_execute_command_PARM_4
	inc	a
	movx	@dptr,a
	mov	dpl,#0xFF
	lcall	_rf_spi_execute_command
	mov	a,dpl
	anl	a,#0x30
	jz	00104$
;	include/rf24.h:147: status = _BV(RX_DR) | _BV(TX_DS) | _BV(MAX_RT);
	mov	dptr,#_write_status_1_187
	mov	a,#0x70
	movx	@dptr,a
;	include/rf24.h:148: status = rf_write_register(RF_STATUS, &status, 1);
	mov	dptr,#_rf_write_register_PARM_2
	mov	a,#_write_status_1_187
	movx	@dptr,a
	mov	a,#(_write_status_1_187 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_write_register_PARM_3
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x07
	lcall	_rf_write_register
	mov	r7,dpl
	mov	dptr,#_write_status_1_187
	mov	a,r7
	movx	@dptr,a
;	include/rf24.h:149: if( status & _BV(MAX_RT)){
	mov	a,r7
	jnb	acc.4,00108$
;	include/rf24.h:150: rf_flush_tx(); //Only going to be 1 packet int the FIFO at a time using this method, so just flush
	mov	dptr,#_rf_spi_execute_command_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_spi_execute_command_PARM_3
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_spi_execute_command_PARM_4
	inc	a
	movx	@dptr,a
	mov	dpl,#0xE1
	lcall	_rf_spi_execute_command
;	include/rf24.h:151: return 0;
	mov	dpl,#0x00
	ret
00108$:
;	include/rf24.h:154: return 1;
	mov	dpl,#0x01
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setRetries'
;------------------------------------------------------------
;count                     Allocated with name '_setRetries_PARM_2'
;delay_ms                  Allocated with name '_setRetries_delay_ms_1_191'
;reg                       Allocated with name '_setRetries_reg_1_192'
;------------------------------------------------------------
;	include/rf24.h:157: void setRetries(uint8_t delay, uint8_t count)
;	-----------------------------------------
;	 function setRetries
;	-----------------------------------------
_setRetries:
	mov	a,dpl
	mov	dptr,#_setRetries_delay_ms_1_191
	movx	@dptr,a
;	include/rf24.h:159: uint8_t reg = (delay&0xf)<<ARD | (count&0xf)<<ARC;
	movx	a,@dptr
	anl	a,#0x0F
	swap	a
	anl	a,#0xF0
	mov	r7,a
	mov	dptr,#_setRetries_PARM_2
	movx	a,@dptr
	mov	r6,a
	anl	ar6,#0x0F
	mov	dptr,#_setRetries_reg_1_192
	mov	a,r6
	orl	a,r7
	movx	@dptr,a
;	include/rf24.h:160: rf_write_register(RF_SETUP_RETR, &reg, 1);
	mov	dptr,#_rf_write_register_PARM_2
	mov	a,#_setRetries_reg_1_192
	movx	@dptr,a
	mov	a,#(_setRetries_reg_1_192 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_write_register_PARM_3
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x04
	ljmp	_rf_write_register
;------------------------------------------------------------
;Allocation info for local variables in function 'setChannel'
;------------------------------------------------------------
;channel                   Allocated with name '_setChannel_channel_1_193'
;------------------------------------------------------------
;	include/rf24.h:163: void setChannel(unsigned char channel){
;	-----------------------------------------
;	 function setChannel
;	-----------------------------------------
_setChannel:
	mov	a,dpl
	mov	dptr,#_setChannel_channel_1_193
	movx	@dptr,a
;	include/rf24.h:164: rf_write_register(RF_RF_CH, &channel, 1);
	mov	dptr,#_rf_write_register_PARM_2
	mov	a,#_setChannel_channel_1_193
	movx	@dptr,a
	mov	a,#(_setChannel_channel_1_193 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_write_register_PARM_3
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x05
	ljmp	_rf_write_register
;------------------------------------------------------------
;Allocation info for local variables in function 'setDataRate'
;------------------------------------------------------------
;speed                     Allocated with name '_setDataRate_speed_1_195'
;setup                     Allocated with name '_setDataRate_setup_1_196'
;------------------------------------------------------------
;	include/rf24.h:167: void setDataRate(unsigned char speed){
;	-----------------------------------------
;	 function setDataRate
;	-----------------------------------------
_setDataRate:
	mov	a,dpl
	mov	dptr,#_setDataRate_speed_1_195
	movx	@dptr,a
;	include/rf24.h:170: rf_read_register(RF_RF_SETUP, &setup, 1);
	mov	dptr,#_rf_read_register_PARM_2
	mov	a,#_setDataRate_setup_1_196
	movx	@dptr,a
	mov	a,#(_setDataRate_setup_1_196 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_read_register_PARM_3
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x06
	lcall	_rf_read_register
;	include/rf24.h:171: setup &= ~(_BV(RF_DR_LOW) | _BV(RF_DR_HIGH)) ;
	mov	dptr,#_setDataRate_setup_1_196
	movx	a,@dptr
	mov	r7,a
	mov	a,#0xD7
	anl	a,r7
	movx	@dptr,a
;	include/rf24.h:172: if( speed == RF24_250KBPS ){
	mov	dptr,#_setDataRate_speed_1_195
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x02,00104$
;	include/rf24.h:173: setup |= _BV( RF_DR_LOW ) ;
	mov	dptr,#_setDataRate_setup_1_196
	movx	a,@dptr
	mov	r6,a
	mov	a,#0x20
	orl	a,r6
	movx	@dptr,a
	sjmp	00105$
00104$:
;	include/rf24.h:175: if ( speed == RF24_2MBPS ){
	cjne	r7,#0x01,00105$
;	include/rf24.h:176: setup |= _BV(RF_DR_HIGH);
	mov	dptr,#_setDataRate_setup_1_196
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x08
	orl	a,r7
	movx	@dptr,a
00105$:
;	include/rf24.h:179: rf_write_register(RF_RF_SETUP, &setup, 1 ) ;
	mov	dptr,#_rf_write_register_PARM_2
	mov	a,#_setDataRate_setup_1_196
	movx	@dptr,a
	mov	a,#(_setDataRate_setup_1_196 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_write_register_PARM_3
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x06
	ljmp	_rf_write_register
;------------------------------------------------------------
;Allocation info for local variables in function 'setAutoAck'
;------------------------------------------------------------
;enable                    Allocated with name '_setAutoAck_enable_1_200'
;buffer                    Allocated with name '_setAutoAck_buffer_1_201'
;------------------------------------------------------------
;	include/rf24.h:182: void setAutoAck(unsigned char enable)
;	-----------------------------------------
;	 function setAutoAck
;	-----------------------------------------
_setAutoAck:
	mov	a,dpl
	mov	dptr,#_setAutoAck_enable_1_200
	movx	@dptr,a
;	include/rf24.h:185: if (enable==1) buffer=63;
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00102$
	mov	dptr,#_setAutoAck_buffer_1_201
	mov	a,#0x3F
	movx	@dptr,a
	sjmp	00103$
00102$:
;	include/rf24.h:186: else buffer=0;
	mov	dptr,#_setAutoAck_buffer_1_201
	clr	a
	movx	@dptr,a
00103$:
;	include/rf24.h:187: rf_write_register(RF_EN_AA, &buffer,1);
	mov	dptr,#_rf_write_register_PARM_2
	mov	a,#_setAutoAck_buffer_1_201
	movx	@dptr,a
	mov	a,#(_setAutoAck_buffer_1_201 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_write_register_PARM_3
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x01
	ljmp	_rf_write_register
;------------------------------------------------------------
;Allocation info for local variables in function 'setCRCLength'
;------------------------------------------------------------
;length                    Allocated with name '_setCRCLength_length_1_202'
;buffer                    Allocated with name '_setCRCLength_buffer_1_203'
;------------------------------------------------------------
;	include/rf24.h:190: void setCRCLength(unsigned char length)
;	-----------------------------------------
;	 function setCRCLength
;	-----------------------------------------
_setCRCLength:
	mov	a,dpl
	mov	dptr,#_setCRCLength_length_1_202
	movx	@dptr,a
;	include/rf24.h:193: rf_read_register(RF_CONFIG,&buffer,1);
	mov	dptr,#_rf_read_register_PARM_2
	mov	a,#_setCRCLength_buffer_1_203
	movx	@dptr,a
	mov	a,#(_setCRCLength_buffer_1_203 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_read_register_PARM_3
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x00
	lcall	_rf_read_register
;	include/rf24.h:194: buffer = buffer & ~( _BV(RF_CRCO) | _BV(RF_EN_CRC)) ;
	mov	dptr,#_setCRCLength_buffer_1_203
	movx	a,@dptr
	mov	r7,a
	mov	a,#0xF3
	anl	a,r7
	movx	@dptr,a
;	include/rf24.h:195: if (length==1) buffer |= _BV(RF_EN_CRC);
	mov	dptr,#_setCRCLength_length_1_202
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00104$
	mov	dptr,#_setCRCLength_buffer_1_203
	movx	a,@dptr
	mov	r6,a
	mov	a,#0x08
	orl	a,r6
	movx	@dptr,a
	sjmp	00105$
00104$:
;	include/rf24.h:196: else if (length==2) buffer |= _BV(RF_EN_CRC) | _BV( RF_CRCO );
	cjne	r7,#0x02,00105$
	mov	dptr,#_setCRCLength_buffer_1_203
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x0C
	orl	a,r7
	movx	@dptr,a
00105$:
;	include/rf24.h:197: rf_write_register(RF_CONFIG,&buffer,1 );
	mov	dptr,#_rf_write_register_PARM_2
	mov	a,#_setCRCLength_buffer_1_203
	movx	@dptr,a
	mov	a,#(_setCRCLength_buffer_1_203 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_write_register_PARM_3
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x00
	ljmp	_rf_write_register
;------------------------------------------------------------
;Allocation info for local variables in function 'setPALevel'
;------------------------------------------------------------
;level                     Allocated with name '_setPALevel_level_1_204'
;setup                     Allocated with name '_setPALevel_setup_1_205'
;------------------------------------------------------------
;	include/rf24.h:201: void setPALevel(unsigned char level)
;	-----------------------------------------
;	 function setPALevel
;	-----------------------------------------
_setPALevel:
	mov	a,dpl
	mov	dptr,#_setPALevel_level_1_204
	movx	@dptr,a
;	include/rf24.h:204: rf_read_register(RF_RF_SETUP, &setup, 1);
	mov	dptr,#_rf_read_register_PARM_2
	mov	a,#_setPALevel_setup_1_205
	movx	@dptr,a
	mov	a,#(_setPALevel_setup_1_205 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_read_register_PARM_3
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x06
	lcall	_rf_read_register
;	include/rf24.h:205: setup &= ~(_BV(RF_PWR_LOW) | _BV(RF_PWR_HIGH)) ;
	mov	dptr,#_setPALevel_setup_1_205
	movx	a,@dptr
	mov	r7,a
	mov	a,#0xF9
	anl	a,r7
	movx	@dptr,a
;	include/rf24.h:206: setup|= ((level&3)<<RF_PWR_LOW);
	mov	dptr,#_setPALevel_level_1_204
	movx	a,@dptr
	anl	a,#0x03
	add	a,acc
	mov	r7,a
	mov	dptr,#_setPALevel_setup_1_205
	movx	a,@dptr
	orl	a,r7
	movx	@dptr,a
;	include/rf24.h:207: rf_write_register(RF_RF_SETUP,&setup,1);
	mov	dptr,#_rf_write_register_PARM_2
	mov	a,#_setPALevel_setup_1_205
	movx	@dptr,a
	mov	a,#(_setPALevel_setup_1_205 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_write_register_PARM_3
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x06
	ljmp	_rf_write_register
;------------------------------------------------------------
;Allocation info for local variables in function 'setAddressWidth'
;------------------------------------------------------------
;a_width                   Allocated with name '_setAddressWidth_a_width_1_206'
;aw                        Allocated with name '_setAddressWidth_aw_1_207'
;------------------------------------------------------------
;	include/rf24.h:211: void setAddressWidth(uint8_t a_width){
;	-----------------------------------------
;	 function setAddressWidth
;	-----------------------------------------
_setAddressWidth:
	mov	a,dpl
	mov	dptr,#_setAddressWidth_a_width_1_206
	movx	@dptr,a
;	include/rf24.h:214: if(a_width -= 2)
	movx	a,@dptr
	mov	r7,a
	dec	r7
	dec	r7
	mov	a,r7
	movx	@dptr,a
	mov	a,r7
	jz	00103$
;	include/rf24.h:216: aw = a_width%4;
	mov	dptr,#_setAddressWidth_a_width_1_206
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x03
	mov	dptr,#_setAddressWidth_aw_1_207
	mov	a,r7
	movx	@dptr,a
;	include/rf24.h:217: rf_write_register(RF_SETUP_AW,& aw, 1);
	mov	dptr,#_rf_write_register_PARM_2
	mov	a,#_setAddressWidth_aw_1_207
	movx	@dptr,a
	mov	a,#(_setAddressWidth_aw_1_207 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_write_register_PARM_3
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x03
	push	ar7
	lcall	_rf_write_register
	pop	ar7
;	include/rf24.h:218: addr_width = (a_width%4) + 2;
	mov	dptr,#_addr_width
	mov	a,#0x02
	add	a,r7
	movx	@dptr,a
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'openReadingPipe'
;------------------------------------------------------------
;address1                  Allocated with name '_openReadingPipe_PARM_2'
;address2                  Allocated with name '_openReadingPipe_PARM_3'
;address3                  Allocated with name '_openReadingPipe_PARM_4'
;address4                  Allocated with name '_openReadingPipe_PARM_5'
;address5                  Allocated with name '_openReadingPipe_PARM_6'
;child                     Allocated with name '_openReadingPipe_child_1_209'
;setup                     Allocated with name '_openReadingPipe_setup_1_210'
;orpdata                   Allocated with name '_openReadingPipe_orpdata_1_210'
;------------------------------------------------------------
;	include/rf24.h:222: void openReadingPipe(uint8_t child, byte address1, byte address2, byte address3, byte address4, byte address5)
;	-----------------------------------------
;	 function openReadingPipe
;	-----------------------------------------
_openReadingPipe:
	mov	a,dpl
	mov	dptr,#_openReadingPipe_child_1_209
	movx	@dptr,a
;	include/rf24.h:226: orpdata[0]=address5;
	mov	dptr,#_openReadingPipe_PARM_6
	movx	a,@dptr
	mov	dptr,#_openReadingPipe_orpdata_1_210
	movx	@dptr,a
;	include/rf24.h:227: orpdata[1]=address4;
	mov	dptr,#_openReadingPipe_PARM_5
	movx	a,@dptr
	mov	dptr,#(_openReadingPipe_orpdata_1_210 + 0x0001)
	movx	@dptr,a
;	include/rf24.h:228: orpdata[2]=address3;
	mov	dptr,#_openReadingPipe_PARM_4
	movx	a,@dptr
	mov	dptr,#(_openReadingPipe_orpdata_1_210 + 0x0002)
	movx	@dptr,a
;	include/rf24.h:229: orpdata[3]=address2;
	mov	dptr,#_openReadingPipe_PARM_3
	movx	a,@dptr
	mov	dptr,#(_openReadingPipe_orpdata_1_210 + 0x0003)
	movx	@dptr,a
;	include/rf24.h:230: orpdata[4]=address1;
	mov	dptr,#_openReadingPipe_PARM_2
	movx	a,@dptr
	mov	dptr,#(_openReadingPipe_orpdata_1_210 + 0x0004)
	movx	@dptr,a
;	include/rf24.h:232: if (child == 0)
	mov	dptr,#_openReadingPipe_child_1_209
	movx	a,@dptr
	mov	r7,a
	jnz	00102$
;	include/rf24.h:234: memcpy((const uint8_t*)pipe0_reading_address, &orpdata, addr_width);
	mov	dptr,#_addr_width
	movx	a,@dptr
	mov	r6,a
	mov	r5,#0x00
	mov	dptr,#_memcpy_PARM_2
	mov	a,#_openReadingPipe_orpdata_1_210
	movx	@dptr,a
	mov	a,#(_openReadingPipe_orpdata_1_210 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_memcpy_PARM_3
	mov	a,r6
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_pipe0_reading_address
	mov	b,#0x00
	push	ar7
	lcall	_memcpy
	pop	ar7
00102$:
;	include/rf24.h:238: if ( child < 2 ) { 
	cjne	r7,#0x02,00115$
00115$:
	jnc	00104$
;	include/rf24.h:239: rf_write_register(RF_RX_ADDR_P0 + child, (const uint8_t*)(&orpdata), addr_width);
	mov	a,#0x0A
	add	a,r7
	mov	r6,a
	mov	dptr,#_addr_width
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	mov	dptr,#_rf_write_register_PARM_2
	mov	a,#_openReadingPipe_orpdata_1_210
	movx	@dptr,a
	mov	a,#(_openReadingPipe_orpdata_1_210 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_write_register_PARM_3
	mov	a,r5
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	push	ar7
	lcall	_rf_write_register
	pop	ar7
	sjmp	00105$
00104$:
;	include/rf24.h:241: rf_write_register(RF_RX_ADDR_P0 + child, (const uint8_t*)(&orpdata[0]), 1);
	mov	a,#0x0A
	add	a,r7
	mov	r6,a
	mov	dptr,#_rf_write_register_PARM_2
	mov	a,#_openReadingPipe_orpdata_1_210
	movx	@dptr,a
	mov	a,#(_openReadingPipe_orpdata_1_210 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_write_register_PARM_3
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	push	ar7
	lcall	_rf_write_register
	pop	ar7
00105$:
;	include/rf24.h:247: setup=32;
	mov	dptr,#_openReadingPipe_setup_1_210
	mov	a,#0x20
	movx	@dptr,a
;	include/rf24.h:248: rf_write_register(RF_RX_PW_P0+child,&setup,1);
	mov	a,#0x11
	add	a,r7
	mov	r6,a
	mov	dptr,#_rf_write_register_PARM_2
	mov	a,#_openReadingPipe_setup_1_210
	movx	@dptr,a
	mov	a,#(_openReadingPipe_setup_1_210 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_write_register_PARM_3
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	push	ar7
	lcall	_rf_write_register
;	include/rf24.h:249: rf_read_register(RF_EN_RXADDR,&setup,1);
	mov	dptr,#_rf_read_register_PARM_2
	mov	a,#_openReadingPipe_setup_1_210
	movx	@dptr,a
	mov	a,#(_openReadingPipe_setup_1_210 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_read_register_PARM_3
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x02
	lcall	_rf_read_register
	pop	ar7
;	include/rf24.h:250: setup |= _BV(RF_ERX_P0+child);
	mov	b,r7
	inc	b
	mov	a,#0x01
	sjmp	00119$
00117$:
	add	a,acc
00119$:
	djnz	b,00117$
	mov	r7,a
	mov	dptr,#_openReadingPipe_setup_1_210
	movx	a,@dptr
	orl	a,r7
	movx	@dptr,a
;	include/rf24.h:251: rf_write_register(RF_EN_RXADDR,&setup ,1);
	mov	dptr,#_rf_write_register_PARM_2
	mov	a,#_openReadingPipe_setup_1_210
	movx	@dptr,a
	mov	a,#(_openReadingPipe_setup_1_210 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_write_register_PARM_3
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x02
	ljmp	_rf_write_register
;------------------------------------------------------------
;Allocation info for local variables in function 'openWritingPipe'
;------------------------------------------------------------
;address2                  Allocated with name '_openWritingPipe_PARM_2'
;address3                  Allocated with name '_openWritingPipe_PARM_3'
;address4                  Allocated with name '_openWritingPipe_PARM_4'
;address5                  Allocated with name '_openWritingPipe_PARM_5'
;address1                  Allocated with name '_openWritingPipe_address1_1_213'
;setup                     Allocated with name '_openWritingPipe_setup_1_214'
;owpdata                   Allocated with name '_openWritingPipe_owpdata_1_214'
;------------------------------------------------------------
;	include/rf24.h:254: void openWritingPipe(byte address1, byte address2, byte address3, byte address4, byte address5)
;	-----------------------------------------
;	 function openWritingPipe
;	-----------------------------------------
_openWritingPipe:
	mov	a,dpl
	mov	dptr,#_openWritingPipe_address1_1_213
	movx	@dptr,a
;	include/rf24.h:258: owpdata[0]=address5;
	mov	dptr,#_openWritingPipe_PARM_5
	movx	a,@dptr
	mov	dptr,#_openWritingPipe_owpdata_1_214
	movx	@dptr,a
;	include/rf24.h:259: owpdata[1]=address4;
	mov	dptr,#_openWritingPipe_PARM_4
	movx	a,@dptr
	mov	dptr,#(_openWritingPipe_owpdata_1_214 + 0x0001)
	movx	@dptr,a
;	include/rf24.h:260: owpdata[2]=address3;
	mov	dptr,#_openWritingPipe_PARM_3
	movx	a,@dptr
	mov	dptr,#(_openWritingPipe_owpdata_1_214 + 0x0002)
	movx	@dptr,a
;	include/rf24.h:261: owpdata[3]=address2;
	mov	dptr,#_openWritingPipe_PARM_2
	movx	a,@dptr
	mov	dptr,#(_openWritingPipe_owpdata_1_214 + 0x0003)
	movx	@dptr,a
;	include/rf24.h:262: owpdata[4]=address1;
	mov	dptr,#_openWritingPipe_address1_1_213
	movx	a,@dptr
	mov	dptr,#(_openWritingPipe_owpdata_1_214 + 0x0004)
	movx	@dptr,a
;	include/rf24.h:264: rf_write_register(RF_RX_ADDR_P0, (uint8_t*)(&owpdata), addr_width);
	mov	dptr,#_addr_width
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dptr,#_rf_write_register_PARM_2
	mov	a,#_openWritingPipe_owpdata_1_214
	movx	@dptr,a
	mov	a,#(_openWritingPipe_owpdata_1_214 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_write_register_PARM_3
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x0A
	lcall	_rf_write_register
;	include/rf24.h:265: rf_write_register(RF_TX_ADDR, (uint8_t*)(&owpdata), addr_width);
	mov	dptr,#_addr_width
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dptr,#_rf_write_register_PARM_2
	mov	a,#_openWritingPipe_owpdata_1_214
	movx	@dptr,a
	mov	a,#(_openWritingPipe_owpdata_1_214 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_write_register_PARM_3
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x10
	lcall	_rf_write_register
;	include/rf24.h:267: setup=32;
	mov	dptr,#_openWritingPipe_setup_1_214
	mov	a,#0x20
	movx	@dptr,a
;	include/rf24.h:268: rf_write_register(RF_RX_PW_P0,&setup,1);
	mov	dptr,#_rf_write_register_PARM_2
	mov	a,#_openWritingPipe_setup_1_214
	movx	@dptr,a
	mov	a,#(_openWritingPipe_setup_1_214 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_write_register_PARM_3
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x11
	ljmp	_rf_write_register
;------------------------------------------------------------
;Allocation info for local variables in function 'available'
;------------------------------------------------------------
;pipe_num                  Allocated with name '_available_pipe_num_1_215'
;buffer                    Allocated with name '_available_buffer_1_216'
;status                    Allocated with name '_available_status_1_216'
;result                    Allocated with name '_available_result_1_216'
;------------------------------------------------------------
;	include/rf24.h:271: unsigned char available(uint8_t* pipe_num)
;	-----------------------------------------
;	 function available
;	-----------------------------------------
_available:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_available_pipe_num_1_215
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	include/rf24.h:274: uint8_t status = rf_get_status();
	mov	dptr,#_rf_spi_execute_command_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_spi_execute_command_PARM_3
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_spi_execute_command_PARM_4
	inc	a
	movx	@dptr,a
	mov	dpl,#0xFF
	lcall	_rf_spi_execute_command
	mov	r7,dpl
;	include/rf24.h:276: uint8_t result = ( status & _BV(RX_DR) );
	mov	a,#0x40
	anl	a,r7
;	include/rf24.h:278: if (result)
	mov	r6,a
	jz	00102$
;	include/rf24.h:282: *pipe_num = ( status >> RX_P_NO ) & 7;
	mov	dptr,#_available_pipe_num_1_215
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r7
	clr	c
	rrc	a
	mov	r7,a
	anl	ar7,#0x07
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r7
	lcall	__gptrput
;	include/rf24.h:283: buffer=64;// _BV(RX_DR);
	mov	dptr,#_available_buffer_1_216
	mov	a,#0x40
	movx	@dptr,a
;	include/rf24.h:284: rf_write_register(STATUS,&buffer,1 ); 
	mov	dptr,#_rf_write_register_PARM_2
	mov	a,#_available_buffer_1_216
	movx	@dptr,a
	mov	a,#(_available_buffer_1_216 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_write_register_PARM_3
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x07
	push	ar6
	lcall	_rf_write_register
	pop	ar6
00102$:
;	include/rf24.h:287: return result;
	mov	dpl,r6
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'startListening'
;------------------------------------------------------------
;config                    Allocated with name '_startListening_config_1_219'
;------------------------------------------------------------
;	include/rf24.h:290: void startListening(void){
;	-----------------------------------------
;	 function startListening
;	-----------------------------------------
_startListening:
;	include/rf24.h:292: rf_read_register(RF_CONFIG, &config, 1);
	mov	dptr,#_rf_read_register_PARM_2
	mov	a,#_startListening_config_1_219
	movx	@dptr,a
	mov	a,#(_startListening_config_1_219 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_read_register_PARM_3
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x00
	lcall	_rf_read_register
;	include/rf24.h:293: config |= RF_CONFIG_PRIM_RX;
	mov	dptr,#_startListening_config_1_219
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x01
	orl	a,r7
	movx	@dptr,a
;	include/rf24.h:294: rf_write_register(RF_CONFIG, &config, 1);
	mov	dptr,#_rf_write_register_PARM_2
	mov	a,#_startListening_config_1_219
	movx	@dptr,a
	mov	a,#(_startListening_config_1_219 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_write_register_PARM_3
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x00
	lcall	_rf_write_register
;	include/rf24.h:295: config = _BV(RX_DR) | _BV(TX_DS) | _BV(MAX_RT);
	mov	dptr,#_startListening_config_1_219
	mov	a,#0x70
	movx	@dptr,a
;	include/rf24.h:296: rf_write_register(RF_STATUS, &config, 1);
	mov	dptr,#_rf_write_register_PARM_2
	mov	a,#_startListening_config_1_219
	movx	@dptr,a
	mov	a,#(_startListening_config_1_219 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_write_register_PARM_3
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x07
	lcall	_rf_write_register
;	include/rf24.h:297: rf_set_ce();
	setb _RFCON_SB_RFCE 
	mov	dptr,#0x0004
	lcall	_delay_us
;	include/rf24.h:299: if (pipe0_reading_address[0] > 0)
	mov	dptr,#_pipe0_reading_address
	movx	a,@dptr
	jz	00102$
;	include/rf24.h:301: rf_write_register(RF_RX_ADDR_P0, (uint8_t*)pipe0_reading_address, addr_width);	
	mov	dptr,#_addr_width
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dptr,#_rf_write_register_PARM_2
	mov	a,#_pipe0_reading_address
	movx	@dptr,a
	mov	a,#(_pipe0_reading_address >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_write_register_PARM_3
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x0A
	lcall	_rf_write_register
	sjmp	00103$
00102$:
;	include/rf24.h:305: closeReadingPipe(0);
	mov	dpl,#0x00
	lcall	_closeReadingPipe
00103$:
;	include/rf24.h:307: rf_flush_tx();
	mov	dptr,#_rf_spi_execute_command_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_spi_execute_command_PARM_3
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_spi_execute_command_PARM_4
	inc	a
	movx	@dptr,a
	mov	dpl,#0xE1
	ljmp	_rf_spi_execute_command
;------------------------------------------------------------
;Allocation info for local variables in function 'closeReadingPipe'
;------------------------------------------------------------
;pipe                      Allocated with name '_closeReadingPipe_pipe_1_222'
;config                    Allocated with name '_closeReadingPipe_config_1_223'
;------------------------------------------------------------
;	include/rf24.h:311: void closeReadingPipe( uint8_t pipe ){
;	-----------------------------------------
;	 function closeReadingPipe
;	-----------------------------------------
_closeReadingPipe:
;	include/rf24.h:314: rf_read_register(RF_EN_RXADDR, &config, 1);
	mov	dptr,#_rf_read_register_PARM_2
	mov	a,#_closeReadingPipe_config_1_223
	movx	@dptr,a
	mov	a,#(_closeReadingPipe_config_1_223 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_read_register_PARM_3
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x02
	lcall	_rf_read_register
;	include/rf24.h:316: rf_write_register(RF_CONFIG,&config ,1);
	mov	dptr,#_rf_write_register_PARM_2
	mov	a,#_closeReadingPipe_config_1_223
	movx	@dptr,a
	mov	a,#(_closeReadingPipe_config_1_223 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_write_register_PARM_3
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x00
	ljmp	_rf_write_register
;------------------------------------------------------------
;Allocation info for local variables in function 'stopListening'
;------------------------------------------------------------
;config                    Allocated with name '_stopListening_config_1_225'
;------------------------------------------------------------
;	include/rf24.h:319: void stopListening(void){
;	-----------------------------------------
;	 function stopListening
;	-----------------------------------------
_stopListening:
;	include/rf24.h:322: rf_clear_ce();
	clr _RFCON_SB_RFCE 
;	include/rf24.h:323: delayMilliseconds(txRxDelay);
	mov	dptr,#_txRxDelay
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	lcall	_delay_us
;	include/rf24.h:324: rf_flush_tx();
	mov	dptr,#_rf_spi_execute_command_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_spi_execute_command_PARM_3
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_spi_execute_command_PARM_4
	inc	a
	movx	@dptr,a
	mov	dpl,#0xE1
	lcall	_rf_spi_execute_command
;	include/rf24.h:325: delayMilliseconds(txRxDelay);
	mov	dptr,#_txRxDelay
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	lcall	_delay_us
;	include/rf24.h:326: rf_read_register(RF_CONFIG, &config, 1);
	mov	dptr,#_rf_read_register_PARM_2
	mov	a,#_stopListening_config_1_225
	movx	@dptr,a
	mov	a,#(_stopListening_config_1_225 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_read_register_PARM_3
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x00
	lcall	_rf_read_register
;	include/rf24.h:327: config &= (~RF_CONFIG_PRIM_RX);
	mov	dptr,#_stopListening_config_1_225
	movx	a,@dptr
	mov	r7,a
	mov	a,#0xFE
	anl	a,r7
	movx	@dptr,a
;	include/rf24.h:328: rf_write_register(RF_CONFIG, &config, 1);
	mov	dptr,#_rf_write_register_PARM_2
	mov	a,#_stopListening_config_1_225
	movx	@dptr,a
	mov	a,#(_stopListening_config_1_225 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_write_register_PARM_3
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x00
	lcall	_rf_write_register
;	include/rf24.h:329: rf_read_register(RF_EN_RXADDR, &config, 1);
	mov	dptr,#_rf_read_register_PARM_2
	mov	a,#_stopListening_config_1_225
	movx	@dptr,a
	mov	a,#(_stopListening_config_1_225 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_read_register_PARM_3
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x02
	lcall	_rf_read_register
;	include/rf24.h:330: config |= _BV(RF_ERX_P0);
	mov	dptr,#_stopListening_config_1_225
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x01
	orl	a,r7
	movx	@dptr,a
;	include/rf24.h:331: rf_write_register(RF_EN_RXADDR, &config ,1);
	mov	dptr,#_rf_write_register_PARM_2
	mov	a,#_stopListening_config_1_225
	movx	@dptr,a
	mov	a,#(_stopListening_config_1_225 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_write_register_PARM_3
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x02
	ljmp	_rf_write_register
;------------------------------------------------------------
;Allocation info for local variables in function 'whatHappened'
;------------------------------------------------------------
;tx_fail                   Allocated with name '_whatHappened_PARM_2'
;rx_ready                  Allocated with name '_whatHappened_PARM_3'
;tx_ok                     Allocated with name '_whatHappened_tx_ok_1_226'
;------------------------------------------------------------
;	include/rf24.h:334: void whatHappened(bool *tx_ok,bool *tx_fail,bool *rx_ready){
;	-----------------------------------------
;	 function whatHappened
;	-----------------------------------------
_whatHappened:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_whatHappened_tx_ok_1_226
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	include/rf24.h:336: radio_temp = rf_get_status(); //rf_write_register(STATUS, (uint8_t*)&radio_temp, 1 );
	mov	dptr,#_rf_spi_execute_command_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_spi_execute_command_PARM_3
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_spi_execute_command_PARM_4
	inc	a
	movx	@dptr,a
	mov	dpl,#0xFF
	lcall	_rf_spi_execute_command
	mov	r7,dpl
	mov	dptr,#_radio_temp
	mov	a,r7
	movx	@dptr,a
;	include/rf24.h:339: *tx_ok = radio_temp & _BV(TX_DS);
	mov	dptr,#_whatHappened_tx_ok_1_226
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,#0x20
	anl	a,r7
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrput
;	include/rf24.h:340: *tx_fail = radio_temp & _BV(MAX_RT);
	mov	dptr,#_whatHappened_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,#0x10
	anl	a,r7
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrput
;	include/rf24.h:341: *rx_ready = radio_temp & _BV(RX_DR);
	mov	dptr,#_whatHappened_PARM_3
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	anl	ar7,#0x40
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'getDynamicPayloadSize'
;------------------------------------------------------------
;dps                       Allocated with name '_getDynamicPayloadSize_dps_1_228'
;------------------------------------------------------------
;	include/rf24.h:345: uint8_t getDynamicPayloadSize(){
;	-----------------------------------------
;	 function getDynamicPayloadSize
;	-----------------------------------------
_getDynamicPayloadSize:
;	include/rf24.h:348: rf_spi_execute_command(RF_R_RX_PL_WID, (uint8_t*)&dps, 1, true);
	mov	dptr,#_rf_spi_execute_command_PARM_2
	mov	a,#_getDynamicPayloadSize_dps_1_228
	movx	@dptr,a
	mov	a,#(_getDynamicPayloadSize_dps_1_228 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_spi_execute_command_PARM_3
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_spi_execute_command_PARM_4
	inc	a
	movx	@dptr,a
	mov	dpl,#0x60
	lcall	_rf_spi_execute_command
;	include/rf24.h:349: return dps;
	mov	dptr,#_getDynamicPayloadSize_dps_1_228
	movx	a,@dptr
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'enableDynamicPayloads'
;------------------------------------------------------------
;	include/rf24.h:352: void enableDynamicPayloads(){
;	-----------------------------------------
;	 function enableDynamicPayloads
;	-----------------------------------------
_enableDynamicPayloads:
;	include/rf24.h:354: radio_temp = rf_read_register_1_byte(FEATURE) | _BV(EN_DPL);
	mov	dpl,#0x1D
	lcall	_rf_read_register_1_byte
	mov	a,dpl
	mov	dptr,#_radio_temp
	orl	a,#0x04
	movx	@dptr,a
;	include/rf24.h:355: rf_write_register(FEATURE, &radio_temp, 1);
	mov	dptr,#_rf_write_register_PARM_2
	mov	a,#_radio_temp
	movx	@dptr,a
	mov	a,#(_radio_temp >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_write_register_PARM_3
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x1D
	lcall	_rf_write_register
;	include/rf24.h:356: radio_temp = rf_read_register_1_byte(DYNPD) | _BV(DPL_P5) | _BV(DPL_P4) | _BV(DPL_P3) | _BV(DPL_P2) | _BV(DPL_P1) | _BV(DPL_P0);
	mov	dpl,#0x1C
	lcall	_rf_read_register_1_byte
	mov	a,dpl
	mov	dptr,#_radio_temp
	orl	a,#0x3F
	movx	@dptr,a
;	include/rf24.h:357: rf_write_register(DYNPD, & radio_temp, 1);
	mov	dptr,#_rf_write_register_PARM_2
	mov	a,#_radio_temp
	movx	@dptr,a
	mov	a,#(_radio_temp >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_write_register_PARM_3
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x1C
	ljmp	_rf_write_register
;------------------------------------------------------------
;Allocation info for local variables in function 'testRPD'
;------------------------------------------------------------
;	include/rf24.h:360: bool testRPD(){
;	-----------------------------------------
;	 function testRPD
;	-----------------------------------------
_testRPD:
;	include/rf24.h:362: return ( rf_read_register_1_byte(RF_RPD) & 1 ) ;
	mov	dpl,#0x09
	lcall	_rf_read_register_1_byte
	mov	a,dpl
	anl	a,#0x01
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'testCarrier'
;------------------------------------------------------------
;	include/rf24.h:365: bool testCarrier(){
;	-----------------------------------------
;	 function testCarrier
;	-----------------------------------------
_testCarrier:
;	include/rf24.h:366: return ( rf_read_register_1_byte(CD) & 1 );
	mov	dpl,#0x09
	lcall	_rf_read_register_1_byte
	mov	a,dpl
	anl	a,#0x01
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getPALevel'
;------------------------------------------------------------
;power                     Allocated with name '_getPALevel_power_1_232'
;result                    Allocated with name '_getPALevel_result_1_232'
;------------------------------------------------------------
;	include/rf24.h:369: rf24_pa_dbm_e getPALevel(){
;	-----------------------------------------
;	 function getPALevel
;	-----------------------------------------
_getPALevel:
;	include/rf24.h:373: rf_read_register(RF_RF_SETUP, &power, 1) ;
	mov	dptr,#_rf_read_register_PARM_2
	mov	a,#_getPALevel_power_1_232
	movx	@dptr,a
	mov	a,#(_getPALevel_power_1_232 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_read_register_PARM_3
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x06
	lcall	_rf_read_register
;	include/rf24.h:374: power = power & (_BV(RF_PWR_LOW) | _BV(RF_PWR_HIGH));
	mov	dptr,#_getPALevel_power_1_232
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x06
	anl	a,r7
	movx	@dptr,a
;	include/rf24.h:375: if ( power == (_BV(RF_PWR_LOW) | _BV(RF_PWR_HIGH)) )
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x06,00108$
;	include/rf24.h:377: result = RF24_PA_MAX ;
	mov	dptr,#_getPALevel_result_1_232
	mov	a,#0x03
	movx	@dptr,a
	sjmp	00109$
00108$:
;	include/rf24.h:379: else if ( power == _BV(RF_PWR_HIGH) )
	cjne	r7,#0x04,00105$
;	include/rf24.h:381: result = RF24_PA_HIGH ;
	mov	dptr,#_getPALevel_result_1_232
	mov	a,#0x02
	movx	@dptr,a
	sjmp	00109$
00105$:
;	include/rf24.h:383: else if ( power == _BV(RF_PWR_LOW) )
	cjne	r7,#0x02,00102$
;	include/rf24.h:385: result = RF24_PA_LOW ;
	mov	dptr,#_getPALevel_result_1_232
	mov	a,#0x01
	movx	@dptr,a
	sjmp	00109$
00102$:
;	include/rf24.h:389: result = RF24_PA_MIN ;
	mov	dptr,#_getPALevel_result_1_232
	clr	a
	movx	@dptr,a
00109$:
;	include/rf24.h:392: return result ;
	mov	dptr,#_getPALevel_result_1_232
	movx	a,@dptr
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getDataRate'
;------------------------------------------------------------
;dr                        Allocated with name '_getDataRate_dr_1_238'
;result                    Allocated with name '_getDataRate_result_1_238'
;------------------------------------------------------------
;	include/rf24.h:395: rf24_datarate_e getDataRate(void)
;	-----------------------------------------
;	 function getDataRate
;	-----------------------------------------
_getDataRate:
;	include/rf24.h:399: rf_read_register(RF_RF_SETUP, &dr, 1) ;
	mov	dptr,#_rf_read_register_PARM_2
	mov	a,#_getDataRate_dr_1_238
	movx	@dptr,a
	mov	a,#(_getDataRate_dr_1_238 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_read_register_PARM_3
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x06
	lcall	_rf_read_register
;	include/rf24.h:400: dr = dr & (_BV(RF_DR_LOW) | _BV(RF_DR_HIGH));
	mov	dptr,#_getDataRate_dr_1_238
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x28
	anl	a,r7
	movx	@dptr,a
;	include/rf24.h:404: if ( dr == _BV(RF_DR_LOW) )
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x20,00105$
;	include/rf24.h:407: result = RF24_250KBPS ;
	mov	dptr,#_getDataRate_result_1_238
	mov	a,#0x02
	movx	@dptr,a
	sjmp	00106$
00105$:
;	include/rf24.h:409: else if ( dr == _BV(RF_DR_HIGH) )
	cjne	r7,#0x08,00102$
;	include/rf24.h:412: result = RF24_2MBPS ;
	mov	dptr,#_getDataRate_result_1_238
	mov	a,#0x01
	movx	@dptr,a
	sjmp	00106$
00102$:
;	include/rf24.h:417: result = RF24_1MBPS ;
	mov	dptr,#_getDataRate_result_1_238
	clr	a
	movx	@dptr,a
00106$:
;	include/rf24.h:419: return result ;
	mov	dptr,#_getDataRate_result_1_238
	movx	a,@dptr
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getCRCLength'
;------------------------------------------------------------
;config                    Allocated with name '_getCRCLength_config_1_243'
;result                    Allocated with name '_getCRCLength_result_1_243'
;------------------------------------------------------------
;	include/rf24.h:422: rf24_crclength_e getCRCLength(void)
;	-----------------------------------------
;	 function getCRCLength
;	-----------------------------------------
_getCRCLength:
;	include/rf24.h:425: rf24_crclength_e result = RF24_CRC_DISABLED;
	mov	dptr,#_getCRCLength_result_1_243
	clr	a
	movx	@dptr,a
;	include/rf24.h:426: rf_read_register(RF_CONFIG, &config, 1) ;
	mov	dptr,#_rf_read_register_PARM_2
	mov	a,#_getCRCLength_config_1_243
	movx	@dptr,a
	mov	a,#(_getCRCLength_config_1_243 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_read_register_PARM_3
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x00
	lcall	_rf_read_register
;	include/rf24.h:427: config = config & (_BV(RF_CRCO) | _BV(RF_EN_CRC));
	mov	dptr,#_getCRCLength_config_1_243
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x0C
	anl	a,r7
	movx	@dptr,a
;	include/rf24.h:429: if ( config & _BV(RF_EN_CRC ) )
	movx	a,@dptr
	mov	r7,a
	jnb	acc.3,00105$
;	include/rf24.h:431: if ( config & _BV(RF_CRCO) )
	mov	a,r7
	jnb	acc.2,00102$
;	include/rf24.h:432: result = RF24_CRC_16;
	mov	dptr,#_getCRCLength_result_1_243
	mov	a,#0x02
	movx	@dptr,a
	sjmp	00105$
00102$:
;	include/rf24.h:434: result = RF24_CRC_8;
	mov	dptr,#_getCRCLength_result_1_243
	mov	a,#0x01
	movx	@dptr,a
00105$:
;	include/rf24.h:437: return result;
	mov	dptr,#_getCRCLength_result_1_243
	movx	a,@dptr
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'swapbuf'
;------------------------------------------------------------
;len                       Allocated with name '_swapbuf_len_1_250'
;buf                       Allocated with name '_swapbuf_buf_1_251'
;a                         Allocated with name '_swapbuf_a_2_252'
;v                         Allocated with name '_swapbuf_v_2_252'
;------------------------------------------------------------
;	include/btle.h:52: void swapbuf( uint8_t len ) {
;	-----------------------------------------
;	 function swapbuf
;	-----------------------------------------
_swapbuf:
	mov	a,dpl
	mov	dptr,#_swapbuf_len_1_250
	movx	@dptr,a
;	include/btle.h:54: uint8_t* buf = (uint8_t*)&buffer;
	mov	r5,#_buffer
	mov	r6,#(_buffer >> 8)
	mov	r7,#0x00
;	include/btle.h:56: while (len--) {
	movx	a,@dptr
	mov	r4,a
00117$:
	mov	ar3,r4
	dec	r4
	mov	dptr,#_swapbuf_len_1_250
	mov	a,r4
	movx	@dptr,a
	mov	a,r3
	jnz	00153$
	ljmp	00132$
00153$:
;	include/btle.h:58: uint8_t a = *buf;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	mov	dptr,#_swapbuf_a_2_252
	movx	@dptr,a
;	include/btle.h:59: uint8_t v = 0;
	mov	dptr,#_swapbuf_v_2_252
	clr	a
	movx	@dptr,a
;	include/btle.h:61: if (a & 0x80) v |= 0x01;
	mov	a,r3
	jnb	acc.7,00102$
	mov	dptr,#_swapbuf_v_2_252
	mov	a,#0x01
	movx	@dptr,a
00102$:
;	include/btle.h:62: if (a & 0x40) v |= 0x02;
	mov	dptr,#_swapbuf_a_2_252
	movx	a,@dptr
	mov	r3,a
	jnb	acc.6,00104$
	mov	dptr,#_swapbuf_v_2_252
	movx	a,@dptr
	mov	r3,a
	mov	a,#0x02
	orl	a,r3
	movx	@dptr,a
00104$:
;	include/btle.h:63: if (a & 0x20) v |= 0x04;
	mov	dptr,#_swapbuf_a_2_252
	movx	a,@dptr
	mov	r3,a
	jnb	acc.5,00106$
	mov	dptr,#_swapbuf_v_2_252
	movx	a,@dptr
	mov	r3,a
	mov	a,#0x04
	orl	a,r3
	movx	@dptr,a
00106$:
;	include/btle.h:64: if (a & 0x10) v |= 0x08;
	mov	dptr,#_swapbuf_a_2_252
	movx	a,@dptr
	mov	r3,a
	jnb	acc.4,00108$
	mov	dptr,#_swapbuf_v_2_252
	movx	a,@dptr
	mov	r3,a
	mov	a,#0x08
	orl	a,r3
	movx	@dptr,a
00108$:
;	include/btle.h:65: if (a & 0x08) v |= 0x10;
	mov	dptr,#_swapbuf_a_2_252
	movx	a,@dptr
	mov	r3,a
	jnb	acc.3,00110$
	mov	dptr,#_swapbuf_v_2_252
	movx	a,@dptr
	mov	r3,a
	mov	a,#0x10
	orl	a,r3
	movx	@dptr,a
00110$:
;	include/btle.h:66: if (a & 0x04) v |= 0x20;
	mov	dptr,#_swapbuf_a_2_252
	movx	a,@dptr
	mov	r3,a
	jnb	acc.2,00112$
	mov	dptr,#_swapbuf_v_2_252
	movx	a,@dptr
	mov	r3,a
	mov	a,#0x20
	orl	a,r3
	movx	@dptr,a
00112$:
;	include/btle.h:67: if (a & 0x02) v |= 0x40;
	mov	dptr,#_swapbuf_a_2_252
	movx	a,@dptr
	mov	r3,a
	jnb	acc.1,00114$
	mov	dptr,#_swapbuf_v_2_252
	movx	a,@dptr
	mov	r3,a
	mov	a,#0x40
	orl	a,r3
	movx	@dptr,a
00114$:
;	include/btle.h:68: if (a & 0x01) v |= 0x80;
	mov	dptr,#_swapbuf_a_2_252
	movx	a,@dptr
	mov	r3,a
	jnb	acc.0,00116$
	mov	dptr,#_swapbuf_v_2_252
	movx	a,@dptr
	mov	r3,a
	mov	a,#0x80
	orl	a,r3
	movx	@dptr,a
00116$:
;	include/btle.h:70: *(buf++) = v;
	mov	dptr,#_swapbuf_v_2_252
	movx	a,@dptr
	mov	r3,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	ljmp	00117$
00132$:
	mov	dptr,#_swapbuf_len_1_250
	mov	a,r4
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'btleBegin'
;------------------------------------------------------------
;	include/btle.h:74: void btleBegin(){
;	-----------------------------------------
;	 function btleBegin
;	-----------------------------------------
_btleBegin:
;	include/btle.h:75: current = 0;
	mov	dptr,#_current
	clr	a
	movx	@dptr,a
;	include/btle.h:76: radioBegin();
	lcall	_radioBegin
;	include/btle.h:79: setAutoAck(false);
	mov	dpl,#0x00
	lcall	_setAutoAck
;	include/btle.h:80: setDataRate(RF24_1MBPS);
	mov	dpl,#0x00
	lcall	_setDataRate
;	include/btle.h:81: setCRCLength(RF24_CRC_DISABLED);
	mov	dpl,#0x00
	lcall	_setCRCLength
;	include/btle.h:82: setChannel( frequency[current] );
	mov	dptr,#_current
	movx	a,@dptr
	mov	dptr,#_frequency
	movc	a,@a+dptr
	mov	dpl,a
	lcall	_setChannel
;	include/btle.h:83: setRetries(0,0);
	mov	dptr,#_setRetries_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,#0x00
	lcall	_setRetries
;	include/btle.h:84: setPALevel(RF24_PA_MAX);
	mov	dpl,#0x03
	lcall	_setPALevel
;	include/btle.h:87: setAddressWidth(4);
	mov	dpl,#0x04
	lcall	_setAddressWidth
;	include/btle.h:88: openReadingPipe(0, 0, 0x6B, 0x7D, 0x91, 0x71);
	mov	dptr,#_openReadingPipe_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_openReadingPipe_PARM_3
	mov	a,#0x6B
	movx	@dptr,a
	mov	dptr,#_openReadingPipe_PARM_4
	mov	a,#0x7D
	movx	@dptr,a
	mov	dptr,#_openReadingPipe_PARM_5
	mov	a,#0x91
	movx	@dptr,a
	mov	dptr,#_openReadingPipe_PARM_6
	mov	a,#0x71
	movx	@dptr,a
	mov	dpl,#0x00
	lcall	_openReadingPipe
;	include/btle.h:89: openWritingPipe(  0, 0x6B, 0x7D, 0x91, 0x71);
	mov	dptr,#_openWritingPipe_PARM_2
	mov	a,#0x6B
	movx	@dptr,a
	mov	dptr,#_openWritingPipe_PARM_3
	mov	a,#0x7D
	movx	@dptr,a
	mov	dptr,#_openWritingPipe_PARM_4
	mov	a,#0x91
	movx	@dptr,a
	mov	dptr,#_openWritingPipe_PARM_5
	mov	a,#0x71
	movx	@dptr,a
	mov	dpl,#0x00
	lcall	_openWritingPipe
;	include/btle.h:91: powerUp();
	mov	dpl,#0x01
	ljmp	_rf_power_up
;------------------------------------------------------------
;Allocation info for local variables in function 'btlesetChannel'
;------------------------------------------------------------
;num                       Allocated with name '_btlesetChannel_num_1_254'
;------------------------------------------------------------
;	include/btle.h:95: void btlesetChannel( uint8_t num ) {
;	-----------------------------------------
;	 function btlesetChannel
;	-----------------------------------------
_btlesetChannel:
	mov	a,dpl
	mov	dptr,#_btlesetChannel_num_1_254
	movx	@dptr,a
;	include/btle.h:96: current = min(2,max(0,num-37));
	movx	a,@dptr
	mov	r7,a
	mov	r5,a
	mov	r6,#0x00
	mov	a,r5
	add	a,#0xDB
	mov	r3,a
	mov	a,r6
	addc	a,#0xFF
	mov	r4,a
	jnb	acc.7,00105$
	mov	r3,#0x00
	mov	r4,#0x00
	sjmp	00106$
00105$:
	mov	a,r5
	add	a,#0xDB
	mov	r3,a
	mov	a,r6
	addc	a,#0xFF
	mov	r4,a
00106$:
	clr	c
	mov	a,#0x02
	subb	a,r3
	mov	a,#(0x00 ^ 0x80)
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jnc	00103$
	mov	r4,#0x02
	sjmp	00104$
00103$:
	mov	a,r5
	add	a,#0xDB
	mov	r5,a
	mov	a,r6
	addc	a,#0xFF
	mov	r6,a
	jnb	acc.7,00107$
	mov	r6,#0x00
	sjmp	00108$
00107$:
	mov	a,r7
	add	a,#0xDB
	mov	r6,a
00108$:
	mov	ar4,r6
00104$:
	mov	dptr,#_current
	mov	a,r4
	movx	@dptr,a
;	include/btle.h:97: setChannel( frequency[current] );
	mov	a,r4
	mov	dptr,#_frequency
	movc	a,@a+dptr
	mov	dpl,a
	ljmp	_setChannel
;------------------------------------------------------------
;Allocation info for local variables in function 'btleHopChannel'
;------------------------------------------------------------
;	include/btle.h:101: void btleHopChannel() {
;	-----------------------------------------
;	 function btleHopChannel
;	-----------------------------------------
_btleHopChannel:
;	include/btle.h:102: current++;
	mov	dptr,#_current
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	include/btle.h:103: if (current >= sizeof(channel)) current = 0;
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x03,00108$
00108$:
	jc	00102$
	mov	dptr,#_current
	clr	a
	movx	@dptr,a
00102$:
;	include/btle.h:104: setChannel( frequency[current] );
	mov	dptr,#_current
	movx	a,@dptr
	mov	dptr,#_frequency
	movc	a,@a+dptr
	mov	dpl,a
	ljmp	_setChannel
;------------------------------------------------------------
;Allocation info for local variables in function 'btleAdvertise'
;------------------------------------------------------------
;buflen                    Allocated with name '_btleAdvertise_PARM_2'
;buf                       Allocated with name '_btleAdvertise_buf_1_257'
;------------------------------------------------------------
;	include/btle.h:109: bool btleAdvertise( void* buf, uint8_t buflen ) {
;	-----------------------------------------
;	 function btleAdvertise
;	-----------------------------------------
_btleAdvertise:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_btleAdvertise_buf_1_257
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	include/btle.h:110: return advertise(buf, buflen);
	mov	dptr,#_btleAdvertise_buf_1_257
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_btleAdvertise_PARM_2
	movx	a,@dptr
	mov	dptr,#_advertise_PARM_2
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ljmp	_advertise
;------------------------------------------------------------
;Allocation info for local variables in function 'advertise'
;------------------------------------------------------------
;sloc0                     Allocated with name '_advertise_sloc0_1_0'
;buflen                    Allocated with name '_advertise_PARM_2'
;buf                       Allocated with name '_advertise_buf_1_259'
;pls                       Allocated with name '_advertise_pls_1_260'
;i                         Allocated with name '_advertise_i_1_260'
;outbuf                    Allocated with name '_advertise_outbuf_1_260'
;------------------------------------------------------------
;	include/btle.h:116: bool advertise( void* buf, uint8_t buflen ) {
;	-----------------------------------------
;	 function advertise
;	-----------------------------------------
_advertise:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_advertise_buf_1_259
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	include/btle.h:123: buffer.mac[0] = ((__TIME__[6]-0x30) << 4) | (__TIME__[7]-0x30);
	mov	dptr,#(___str_0 + 0x0006)
	clr	a
	movc	a,@a+dptr
	add	a,#0xD0
	swap	a
	anl	a,#0xF0
	mov	r7,a
	mov	dptr,#(___str_0 + 0x0007)
	clr	a
	movc	a,@a+dptr
	add	a,#0xD0
	orl	ar7,a
	mov	dptr,#(_buffer + 0x0002)
	mov	a,r7
	movx	@dptr,a
;	include/btle.h:124: buffer.mac[1] = ((__TIME__[3]-0x30) << 4) | (__TIME__[4]-0x30);
	mov	dptr,#(___str_0 + 0x0003)
	clr	a
	movc	a,@a+dptr
	add	a,#0xD0
	swap	a
	anl	a,#0xF0
	mov	r7,a
	mov	dptr,#(___str_0 + 0x0004)
	clr	a
	movc	a,@a+dptr
	add	a,#0xD0
	orl	ar7,a
	mov	dptr,#(_buffer + 0x0003)
	mov	a,r7
	movx	@dptr,a
;	include/btle.h:125: buffer.mac[2] = ((__TIME__[0]-0x30) << 4) | (__TIME__[1]-0x30);
	mov	dptr,#___str_0
	clr	a
	movc	a,@a+dptr
	add	a,#0xD0
	swap	a
	anl	a,#0xF0
	mov	r7,a
	mov	dptr,#(___str_0 + 0x0001)
	clr	a
	movc	a,@a+dptr
	add	a,#0xD0
	orl	ar7,a
	mov	dptr,#(_buffer + 0x0004)
	mov	a,r7
	movx	@dptr,a
;	include/btle.h:126: buffer.mac[3] = ((__DATE__[4]-0x30) << 4) | (__DATE__[5]-0x30);
	mov	dptr,#(___str_1 + 0x0004)
	clr	a
	movc	a,@a+dptr
	add	a,#0xD0
	swap	a
	anl	a,#0xF0
	mov	r7,a
	mov	dptr,#(___str_1 + 0x0005)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	add	a,#0xD0
	orl	ar7,a
	mov	dptr,#(_buffer + 0x0005)
	mov	a,r7
	movx	@dptr,a
;	include/btle.h:127: buffer.mac[4] = month(__DATE__);
	mov	dptr,#___str_1
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	b,#0x18
	clr	F0
	jnb	acc.7,00119$
	setb	F0
	cpl	a
	inc	a
00119$:
	div	ab
	mov	a,b
	jnb	F0,00120$
	cpl	a
	inc	a
00120$:
	clr	F0
	mov	b,#0x0D
	jnb	acc.7,00121$
	cpl	F0
	cpl	a
	inc	a
00121$:
	mul	ab
	jnb	F0,00122$
	cpl	a
	add	a,#0x01
	xch	a,b
	cpl	a
	addc	a,#0x00
	xch	a,b
00122$:
	mov	r6,a
	mov	r7,b
	mov	dptr,#(___str_1 + 0x0001)
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	a,r5
	add	a,r6
	mov	r6,a
	mov	a,r4
	addc	a,r7
	mov	r7,a
	mov	dptr,#__modsint_PARM_2
	mov	a,#0x18
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#__mulint_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x000D
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#(___str_1 + 0x0002)
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	a,r5
	add	a,r6
	mov	r6,a
	mov	a,r4
	addc	a,r7
	mov	r7,a
	mov	dptr,#__modsint_PARM_2
	mov	a,#0x18
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	mov	a,r6
	add	a,#_month_lookup
	mov	dpl,a
	mov	a,r7
	addc	a,#(_month_lookup >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dptr,#(_buffer + 0x0006)
	movx	@dptr,a
;	include/btle.h:128: buffer.mac[5] = ((__DATE__[9]-0x30) << 4) | (__DATE__[10]-0x30);
	mov	dptr,#(___str_1 + 0x0009)
	clr	a
	movc	a,@a+dptr
	add	a,#0xD0
	swap	a
	anl	a,#0xF0
	mov	r7,a
	mov	dptr,#(___str_1 + 0x000a)
	clr	a
	movc	a,@a+dptr
	add	a,#0xD0
	orl	ar7,a
	mov	dptr,#(_buffer + 0x0007)
	mov	a,r7
	movx	@dptr,a
;	include/btle.h:130: for (i = 0; i < buflen; i++)
	mov	dptr,#_advertise_buf_1_259
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_advertise_PARM_2
	movx	a,@dptr
	mov	r4,a
	mov	r3,#0x00
00105$:
	clr	c
	mov	a,r3
	subb	a,r4
	jnc	00101$
;	include/btle.h:131: buffer.payload[i] = ((uint8_t*)buf)[i];
	push	ar4
	mov	a,r3
	add	a,#(_buffer + 0x0008)
	mov	_advertise_sloc0_1_0,a
	clr	a
	addc	a,#((_buffer + 0x0008) >> 8)
	mov	(_advertise_sloc0_1_0 + 1),a
	mov	ar0,r5
	mov	ar2,r6
	mov	ar4,r7
	mov	a,r3
	add	a,r0
	mov	r0,a
	clr	a
	addc	a,r2
	mov	r2,a
	mov	dpl,r0
	mov	dph,r2
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	mov	dpl,_advertise_sloc0_1_0
	mov	dph,(_advertise_sloc0_1_0 + 1)
	movx	@dptr,a
;	include/btle.h:130: for (i = 0; i < buflen; i++)
	inc	r3
	pop	ar4
	sjmp	00105$
00101$:
;	include/btle.h:135: if (pls > 21)
	mov	a,r4
	add	a,#0xff - 0x15
	jnc	00103$
;	include/btle.h:136: return false;
	mov	dpl,#0x00
	ret
00103$:
;	include/btle.h:139: buffer.pdu_type = 0x42;    // PDU type: ADV_NONCONN_IND, TX address is random
	mov	dptr,#_buffer
	mov	a,#0x42
	movx	@dptr,a
;	include/btle.h:140: buffer.pl_size = pls+6;    // set final payload size in header incl. MAC
	mov	a,#0x06
	add	a,r4
	mov	dptr,#(_buffer + 0x0001)
	movx	@dptr,a
;	include/btle.h:143: outbuf = (uint8_t*)&buffer;
;	include/btle.h:144: crc( pls+8, outbuf+pls+8);
	mov	a,#0x08
	add	a,r4
	mov	r7,a
	mov	a,r4
	add	a,#_buffer
	mov	r3,a
	clr	a
	addc	a,#(_buffer >> 8)
	mov	r5,a
	mov	r6,#0x00
	mov	dptr,#_crc_PARM_2
	mov	a,#0x08
	add	a,r3
	movx	@dptr,a
	clr	a
	addc	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dpl,r7
	push	ar4
	lcall	_crc
	pop	ar4
;	include/btle.h:147: whiten( pls+11 );
	mov	a,#0x0B
	add	a,r4
	mov	r4,a
	mov	dpl,a
	push	ar4
	lcall	_whiten
	pop	ar4
;	include/btle.h:148: swapbuf( pls+11 );
	mov	dpl,r4
	push	ar4
	lcall	_swapbuf
;	include/btle.h:151: stopListening();
	lcall	_stopListening
	pop	ar4
;	include/btle.h:152: write( outbuf, pls+11, false );
	mov	r5,#_buffer
	mov	r6,#(_buffer >> 8)
	mov	r7,#0x00
	mov	dptr,#_write_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	dptr,#_write_PARM_3
	clr	a
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_write
;	include/btle.h:154: return true;
	mov	dpl,#0x01
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'crc'
;------------------------------------------------------------
;dst                       Allocated with name '_crc_PARM_2'
;len                       Allocated with name '_crc_len_1_261'
;buf                       Allocated with name '_crc_buf_1_262'
;i                         Allocated with name '_crc_i_1_262'
;d                         Allocated with name '_crc_d_2_263'
;t                         Allocated with name '_crc_t_3_264'
;sloc0                     Allocated with name '_crc_sloc0_1_0'
;sloc1                     Allocated with name '_crc_sloc1_1_0'
;------------------------------------------------------------
;	include/btle.h:158: void crc( uint8_t len, uint8_t* dst ) {
;	-----------------------------------------
;	 function crc
;	-----------------------------------------
_crc:
	mov	a,dpl
	mov	dptr,#_crc_len_1_261
	movx	@dptr,a
;	include/btle.h:160: uint8_t* buf = (uint8_t*)&buffer;
	mov	r5,#_buffer
	mov	r6,#(_buffer >> 8)
	mov	r7,#0x00
;	include/btle.h:165: dst[0] = 0xAA;
	mov	dptr,#_crc_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0xAA
	lcall	__gptrput
;	include/btle.h:166: dst[1] = 0xAA;
	mov	a,#0x01
	add	a,r2
	mov	_crc_sloc0_1_0,a
	clr	a
	addc	a,r3
	mov	(_crc_sloc0_1_0 + 1),a
	mov	(_crc_sloc0_1_0 + 2),r4
	mov	dpl,_crc_sloc0_1_0
	mov	dph,(_crc_sloc0_1_0 + 1)
	mov	b,(_crc_sloc0_1_0 + 2)
	mov	a,#0xAA
	lcall	__gptrput
;	include/btle.h:167: dst[2] = 0xAA;
	mov	a,#0x02
	add	a,r2
	mov	_crc_sloc1_1_0,a
	clr	a
	addc	a,r3
	mov	(_crc_sloc1_1_0 + 1),a
	mov	(_crc_sloc1_1_0 + 2),r4
	mov	dpl,_crc_sloc1_1_0
	mov	dph,(_crc_sloc1_1_0 + 1)
	mov	b,(_crc_sloc1_1_0 + 2)
	mov	a,#0xAA
	lcall	__gptrput
;	include/btle.h:169: while (len--) {
	mov	dptr,#_crc_len_1_261
	movx	a,@dptr
	mov	r1,a
00108$:
	mov	ar0,r1
	dec	r1
	mov	dptr,#_crc_len_1_261
	mov	a,r1
	movx	@dptr,a
	mov	a,r0
	jnz	00137$
	ljmp	00122$
00137$:
;	include/btle.h:171: uint8_t d = *(buf++);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	mov	dptr,#_crc_d_2_263
	mov	a,r0
	movx	@dptr,a
;	include/btle.h:173: for (i = 1; i; i <<= 1, d >>= 1) {
	mov	dptr,#_crc_i_1_262
	mov	a,#0x01
	movx	@dptr,a
00111$:
;	include/btle.h:176: uint8_t t = dst[0] & 0x01;         dst[0] >>= 1;
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	anl	ar0,#0x01
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	clr	c
	rrc	a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrput
;	include/btle.h:177: if (dst[1] & 0x01) dst[0] |= 0x80; dst[1] >>= 1;
	mov	dpl,_crc_sloc0_1_0
	mov	dph,(_crc_sloc0_1_0 + 1)
	mov	b,(_crc_sloc0_1_0 + 2)
	lcall	__gptrget
	pop	ar7
	pop	ar6
	pop	ar5
	jnb	acc.0,00102$
	push	ar0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	orl	ar0,#0x80
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r0
	lcall	__gptrput
;	include/btle.h:173: for (i = 1; i; i <<= 1, d >>= 1) {
	pop	ar0
;	include/btle.h:177: if (dst[1] & 0x01) dst[0] |= 0x80; dst[1] >>= 1;
00102$:
	push	ar0
	mov	dpl,_crc_sloc0_1_0
	mov	dph,(_crc_sloc0_1_0 + 1)
	mov	b,(_crc_sloc0_1_0 + 2)
	lcall	__gptrget
	clr	c
	rrc	a
	mov	dpl,_crc_sloc0_1_0
	mov	dph,(_crc_sloc0_1_0 + 1)
	mov	b,(_crc_sloc0_1_0 + 2)
	lcall	__gptrput
;	include/btle.h:178: if (dst[2] & 0x01) dst[1] |= 0x80; dst[2] >>= 1;
	mov	dpl,_crc_sloc1_1_0
	mov	dph,(_crc_sloc1_1_0 + 1)
	mov	b,(_crc_sloc1_1_0 + 2)
	lcall	__gptrget
	pop	ar0
	jnb	acc.0,00104$
	push	ar0
	mov	dpl,_crc_sloc0_1_0
	mov	dph,(_crc_sloc0_1_0 + 1)
	mov	b,(_crc_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	orl	ar0,#0x80
	mov	dpl,_crc_sloc0_1_0
	mov	dph,(_crc_sloc0_1_0 + 1)
	mov	b,(_crc_sloc0_1_0 + 2)
	mov	a,r0
	lcall	__gptrput
;	include/btle.h:173: for (i = 1; i; i <<= 1, d >>= 1) {
	pop	ar0
;	include/btle.h:178: if (dst[2] & 0x01) dst[1] |= 0x80; dst[2] >>= 1;
00104$:
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,_crc_sloc1_1_0
	mov	dph,(_crc_sloc1_1_0 + 1)
	mov	b,(_crc_sloc1_1_0 + 2)
	lcall	__gptrget
	clr	c
	rrc	a
	mov	dpl,_crc_sloc1_1_0
	mov	dph,(_crc_sloc1_1_0 + 1)
	mov	b,(_crc_sloc1_1_0 + 2)
	lcall	__gptrput
;	include/btle.h:182: if (t != (d & 1)) {
	mov	dptr,#_crc_d_2_263
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x01
	mov	a,r0
	cjne	a,ar7,00140$
	pop	ar7
	pop	ar6
	pop	ar5
	sjmp	00112$
00140$:
	pop	ar7
	pop	ar6
	pop	ar5
;	include/btle.h:184: dst[2] ^= 0xDA; // 0b11011010 inv. = 0b01011011 ^= x^6+x^4+x^3+x+1
	mov	dpl,_crc_sloc1_1_0
	mov	dph,(_crc_sloc1_1_0 + 1)
	mov	b,(_crc_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	xrl	ar0,#0xDA
	mov	dpl,_crc_sloc1_1_0
	mov	dph,(_crc_sloc1_1_0 + 1)
	mov	b,(_crc_sloc1_1_0 + 2)
	mov	a,r0
	lcall	__gptrput
;	include/btle.h:185: dst[1] ^= 0x60; // 0b01100000 inv. = 0b00000110 ^= x^10+x^9
	mov	dpl,_crc_sloc0_1_0
	mov	dph,(_crc_sloc0_1_0 + 1)
	mov	b,(_crc_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	xrl	ar0,#0x60
	mov	dpl,_crc_sloc0_1_0
	mov	dph,(_crc_sloc0_1_0 + 1)
	mov	b,(_crc_sloc0_1_0 + 2)
	mov	a,r0
	lcall	__gptrput
00112$:
;	include/btle.h:173: for (i = 1; i; i <<= 1, d >>= 1) {
	mov	dptr,#_crc_i_1_262
	movx	a,@dptr
	add	a,acc
	movx	@dptr,a
	mov	dptr,#_crc_d_2_263
	movx	a,@dptr
	clr	c
	rrc	a
	mov	r0,a
	movx	@dptr,a
	mov	dptr,#_crc_i_1_262
	movx	a,@dptr
	jz	00141$
	ljmp	00111$
00141$:
	ljmp	00108$
00122$:
	mov	dptr,#_crc_len_1_261
	mov	a,r1
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'whiten'
;------------------------------------------------------------
;len                       Allocated with name '_whiten_len_1_266'
;buf                       Allocated with name '_whiten_buf_1_267'
;i                         Allocated with name '_whiten_i_1_267'
;lfsr                      Allocated with name '_whiten_lfsr_1_267'
;res                       Allocated with name '_whiten_res_2_268'
;__00020000                Allocated with name '_whiten___00020000_2_268'
;------------------------------------------------------------
;	include/btle.h:191: void whiten( uint8_t len ) {
;	-----------------------------------------
;	 function whiten
;	-----------------------------------------
_whiten:
	mov	a,dpl
	mov	dptr,#_whiten_len_1_266
	movx	@dptr,a
;	include/btle.h:193: uint8_t* buf = (uint8_t*)&buffer;
	mov	r5,#_buffer
	mov	r6,#(_buffer >> 8)
	mov	r7,#0x00
;	include/btle.h:197: uint8_t lfsr = channel[current] | 0x40;
	mov	dptr,#_current
	movx	a,@dptr
	mov	dptr,#_channel
	movc	a,@a+dptr
	mov	r4,a
	mov	dptr,#_whiten_lfsr_1_267
	mov	a,#0x40
	orl	a,r4
	movx	@dptr,a
;	include/btle.h:199: while (len--) {
	mov	dptr,#_whiten_len_1_266
	movx	a,@dptr
	mov	r4,a
00104$:
	mov	ar3,r4
	dec	r4
	mov	dptr,#_whiten_len_1_266
	mov	a,r4
	movx	@dptr,a
	mov	a,r3
	jz	00116$
;	include/btle.h:200: uint8_t res = 0;
	mov	dptr,#_whiten_res_2_268
	clr	a
	movx	@dptr,a
;	include/btle.h:202: for (i = 1; i; i <<= 1) {
	mov	dptr,#_whiten_i_1_267
	inc	a
	movx	@dptr,a
00107$:
;	include/btle.h:203: if (lfsr & 0x01) {
	mov	dptr,#_whiten_lfsr_1_267
	movx	a,@dptr
	mov	r3,a
	jnb	acc.0,00102$
;	include/btle.h:204: lfsr ^= 0x88;
	mov	dptr,#_whiten_lfsr_1_267
	mov	a,#0x88
	xrl	a,r3
	movx	@dptr,a
;	include/btle.h:205: res |= i;
	mov	dptr,#_whiten_i_1_267
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_whiten_res_2_268
	movx	a,@dptr
	mov	r2,a
	orl	a,r3
	movx	@dptr,a
00102$:
;	include/btle.h:207: lfsr >>= 1;
	mov	dptr,#_whiten_lfsr_1_267
	movx	a,@dptr
	clr	c
	rrc	a
	movx	@dptr,a
;	include/btle.h:202: for (i = 1; i; i <<= 1) {
	mov	dptr,#_whiten_i_1_267
	movx	a,@dptr
	add	a,acc
	mov	r3,a
	movx	@dptr,a
	movx	a,@dptr
	jnz	00107$
;	include/btle.h:209: *(buf++) ^= res;
	push	ar4
	mov	ar1,r5
	mov	ar2,r6
	mov	ar3,r7
	inc	r5
	cjne	r5,#0x00,00130$
	inc	r6
00130$:
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r0,a
	mov	dptr,#_whiten_res_2_268
	movx	a,@dptr
	xrl	ar0,a
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	mov	a,r0
	lcall	__gptrput
	pop	ar4
	sjmp	00104$
00116$:
	mov	dptr,#_whiten_len_1_266
	mov	a,r4
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setup'
;------------------------------------------------------------
;	main.c:51: void setup(){
;	-----------------------------------------
;	 function setup
;	-----------------------------------------
_setup:
;	main.c:53: interrupts();							// turn interrupts on
	setb _IEN0_SB_GLOBAL 
;	main.c:54: btleBegin();							// setup the radio
	lcall	_btleBegin
;	main.c:55: dht_init();
	lcall	_dht_init
;	main.c:56: dht_read(&DHTTemp, &DHTHum);	
	mov	dptr,#_dht_read_PARM_2
	mov	a,#_DHTHum
	movx	@dptr,a
	mov	a,#(_DHTHum >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_DHTTemp
	mov	b,#0x00
	lcall	_dht_read
;	main.c:57: btleAdvertise(&beacon, sizeof(beacon));		// start advertising the packet above
	mov	dptr,#_btleAdvertise_PARM_2
	mov	a,#0x11
	movx	@dptr,a
	mov	dptr,#_beacon
	mov	b,#0x00
	lcall	_btleAdvertise
;	main.c:59: watchdogRun(700);						// start watchdog and reset at 700 ms
	mov	dptr,#0x02BC
	clr	a
	mov	b,a
	lcall	_watchdog_start_and_set_timeout_in_ms
	mov	_CLKLFCTRL,#0x01
;	main.c:60: sleep(MEMORY_TIMER_OFF);				// switch to lowest mode that can wakeup from wdt
	mov	r7,_PWRDWN
	mov	a,#0xF8
	anl	a,r7
	orl	a,#0x02
	mov	_PWRDWN,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'loop'
;------------------------------------------------------------
;	main.c:63: void loop(){
;	-----------------------------------------
;	 function loop
;	-----------------------------------------
_loop:
;	main.c:65: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_channel:
	.db #0x25	; 37
	.db #0x26	; 38
	.db #0x27	; 39
_frequency:
	.db #0x02	; 2
	.db #0x1A	; 26
	.db #0x50	; 80	'P'
_month_lookup:
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x11	; 17
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x12	; 18
	.db #0x02	; 2
	.db #0x10	; 16
	.db #0x05	; 5
	.db #0x09	; 9
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x07	; 7
___str_0:
	.ascii "20:44:51"
	.db 0x00
___str_1:
	.ascii "Oct  6 2017"
	.db 0x00
	.area XINIT   (CODE)
__xinit__ml:
	.byte #0x00,#0x00,#0x00,#0x00	; 0
__xinit__mcs:
	.db #0x00	; 0
__xinit__i:
	.byte #0x00,#0x00	; 0
__xinit__addr_width:
	.db #0x05	; 5
__xinit__beacon:
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x09	; 9
	.db #0x62	; 98	'b'
	.db #0x6F	; 111	'o'
	.db #0x6A	; 106	'j'
	.db #0x33	; 51	'3'
	.db #0x07	; 7
	.db #0x16	; 22
	.db #0x09	; 9
	.db #0x18	; 24
	.db #0xA4	; 164
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0xFE	; 254
	.area CABS    (ABS,CODE)
