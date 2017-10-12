;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Fri Oct  6 20:44:51 2017
;--------------------------------------------------------
	.module dht
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _delay_ms
	.globl _delay_us
	.globl _gpio_pin_val_read
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
	.globl _dht_read_PARM_2
	.globl _dht_init
	.globl _dht_read
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
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
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
_waitpin_val_1_14:
	.ds 1
_dht_read_PARM_2:
	.ds 3
_dht_read_temp_1_19:
	.ds 3
_dht_read_datadht_1_20:
	.ds 5
_dht_read_crcdata_1_20:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'waitpin'
;------------------------------------------------------------
;val                       Allocated with name '_waitpin_val_1_14'
;readtm                    Allocated with name '_waitpin_readtm_1_15'
;------------------------------------------------------------
;	dht.c:26: static uint8_t waitpin(uint8_t val)
;	-----------------------------------------
;	 function waitpin
;	-----------------------------------------
_waitpin:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	a,dpl
	mov	dptr,#_waitpin_val_1_14
	movx	@dptr,a
;	dht.c:33: while ((PIN1XVAL(DHTPIN) != val) && (--readtm > 0));	// for P1.X only
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x50
00102$:
	mov	a,_P1
	jnb	acc.4,00109$
	mov	r5,#0x01
	sjmp	00110$
00109$:
	mov	r5,#0x00
00110$:
	mov	a,r5
	cjne	a,ar7,00125$
	sjmp	00104$
00125$:
	djnz	r6,00102$
00104$:
;	dht.c:35: if (readtm == 0) {
	mov	a,r6
;	dht.c:36: return 0;
	jnz	00106$
	mov	dpl,a
	ret
00106$:
;	dht.c:38: return 1;
	mov	dpl,#0x01
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dht_init'
;------------------------------------------------------------
;	dht.c:41: void dht_init(void) {
;	-----------------------------------------
;	 function dht_init
;	-----------------------------------------
_dht_init:
;	dht.c:45: );
	mov	dptr,#_gpio_pin_configure_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,#0x0C
	ljmp	_gpio_pin_configure
;------------------------------------------------------------
;Allocation info for local variables in function 'dht_read'
;------------------------------------------------------------
;hum                       Allocated with name '_dht_read_PARM_2'
;temp                      Allocated with name '_dht_read_temp_1_19'
;j                         Allocated with name '_dht_read_j_1_20'
;i                         Allocated with name '_dht_read_i_1_20'
;datadht                   Allocated with name '_dht_read_datadht_1_20'
;crcdata                   Allocated with name '_dht_read_crcdata_1_20'
;------------------------------------------------------------
;	dht.c:49: dhterror_t dht_read(int *temp, int *hum) {
;	-----------------------------------------
;	 function dht_read
;	-----------------------------------------
_dht_read:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_dht_read_temp_1_19
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	dht.c:51: uint8_t datadht[5] = {0,0,0,0,0};
	mov	dptr,#_dht_read_datadht_1_20
	clr	a
	movx	@dptr,a
	mov	dptr,#(_dht_read_datadht_1_20 + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_dht_read_datadht_1_20 + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_dht_read_datadht_1_20 + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_dht_read_datadht_1_20 + 0x0004)
	movx	@dptr,a
;	dht.c:52: uint8_t crcdata = 0;
	mov	dptr,#_dht_read_crcdata_1_20
	movx	@dptr,a
;	dht.c:59: );
	mov	dptr,#_gpio_pin_configure_PARM_2
	inc	a
	movx	@dptr,a
	mov	dpl,#0x0C
	lcall	_gpio_pin_configure
;	dht.c:61: delay_ms(18);	// reset 1-20ms
	mov	dptr,#0x0012
	lcall	_delay_ms
;	dht.c:67: );
	mov	dptr,#_gpio_pin_configure_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,#0x0C
	lcall	_gpio_pin_configure
;	dht.c:70: if (!waitpin(0)) {
	mov	dpl,#0x00
	lcall	_waitpin
	mov	a,dpl
	jnz	00102$
;	dht.c:71: return DHT_NO_RESPONSE;
	mov	dpl,#0x01
	ret
00102$:
;	dht.c:73: if (!waitpin(1)) {
	mov	dpl,#0x01
	lcall	_waitpin
	mov	a,dpl
	jnz	00104$
;	dht.c:74: return DHT_NO_RESPONSE;
	mov	dpl,#0x01
	ret
00104$:
;	dht.c:77: if (!waitpin(0)) {
	mov	dpl,#0x00
	lcall	_waitpin
	mov	a,dpl
	jnz	00145$
;	dht.c:78: return DHT_NO_RESPONSE;
	mov	dpl,#0x01
	ret
;	dht.c:81: for (j = 0; j < 5; j++) {
00145$:
	mov	r7,#0x00
;	dht.c:82: for(i = 0; i < 8; i++) {
00143$:
	mov	ar6,r7
	mov	r5,#0x00
00129$:
;	dht.c:83: if (!waitpin(1)) {
	mov	dpl,#0x01
	push	ar7
	push	ar6
	push	ar5
	lcall	_waitpin
	mov	a,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	jnz	00108$
;	dht.c:84: return DHT_TIMEOUT_ERROR;
	mov	dpl,#0x02
	ret
00108$:
;	dht.c:86: delay_us(30);
	mov	dptr,#0x001E
	push	ar7
	push	ar6
	push	ar5
	lcall	_delay_us
;	dht.c:87: if (gpio_pin_val_read(DHTPIN))
	mov	dpl,#0x0C
	lcall	_gpio_pin_val_read
	mov	a,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	jz	00110$
;	dht.c:88: datadht[j] |= 1 << (7-i);
	mov	a,r6
	add	a,#_dht_read_datadht_1_20
	mov	r3,a
	clr	a
	addc	a,#(_dht_read_datadht_1_20 >> 8)
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	mov	r2,a
	mov	a,#0x07
	clr	c
	subb	a,r5
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	00205$
00203$:
	add	a,acc
00205$:
	djnz	b,00203$
	mov	r1,a
	orl	ar2,a
	mov	dpl,r3
	mov	dph,r4
	mov	a,r2
	movx	@dptr,a
00110$:
;	dht.c:89: if (!waitpin(0)) {
	mov	dpl,#0x00
	push	ar7
	push	ar6
	push	ar5
	lcall	_waitpin
	mov	a,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	jnz	00130$
;	dht.c:90: return DHT_TIMEOUT_ERROR;
	mov	dpl,#0x02
	ret
00130$:
;	dht.c:82: for(i = 0; i < 8; i++) {
	inc	r5
	cjne	r5,#0x08,00207$
00207$:
	jnc	00208$
	ljmp	00129$
00208$:
;	dht.c:81: for (j = 0; j < 5; j++) {
	inc	r7
	cjne	r7,#0x05,00209$
00209$:
	jnc	00210$
	ljmp	00143$
00210$:
;	dht.c:95: if (datadht[0] == 0 && datadht[1] == 0 && datadht[2] == 0 && datadht[3] == 0) {
	mov	dptr,#_dht_read_datadht_1_20
	movx	a,@dptr
	jnz	00151$
	mov	dptr,#(_dht_read_datadht_1_20 + 0x0001)
	movx	a,@dptr
	jnz	00151$
	mov	dptr,#(_dht_read_datadht_1_20 + 0x0002)
	movx	a,@dptr
	jnz	00151$
	mov	dptr,#(_dht_read_datadht_1_20 + 0x0003)
	movx	a,@dptr
	jnz	00151$
;	dht.c:96: return DHT_NO_VALUE;
	mov	dpl,#0x04
	ret
;	dht.c:99: for(i = 0; i < 4; i++) {
00151$:
	mov	r7,#0x00
00133$:
;	dht.c:100: crcdata += datadht[i];
	mov	a,r7
	add	a,#_dht_read_datadht_1_20
	mov	dpl,a
	clr	a
	addc	a,#(_dht_read_datadht_1_20 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_dht_read_crcdata_1_20
	movx	a,@dptr
	mov	r5,a
	add	a,r6
	movx	@dptr,a
;	dht.c:99: for(i = 0; i < 4; i++) {
	inc	r7
	cjne	r7,#0x04,00215$
00215$:
	jc	00133$
;	dht.c:102: if ((crcdata & 0xff) != datadht[4]) {	// CRC check
	mov	dptr,#_dht_read_crcdata_1_20
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_dht_read_datadht_1_20 + 0x0004)
	movx	a,@dptr
	mov	r6,a
	mov	a,r7
	cjne	a,ar6,00217$
	sjmp	00122$
00217$:
;	dht.c:103: return DHT_CHECKSUM_ERROR;
	mov	dpl,#0x03
	ret
00122$:
;	dht.c:106: if ((datadht[1] == 0) && (datadht[3] == 0)) {
	mov	dptr,#(_dht_read_datadht_1_20 + 0x0001)
	movx	a,@dptr
	jnz	00126$
	mov	dptr,#(_dht_read_datadht_1_20 + 0x0003)
	movx	a,@dptr
	jnz	00126$
;	dht.c:108: *hum=datadht[2]*10;
	mov	dptr,#_dht_read_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_dht_read_datadht_1_20 + 0x0002)
	movx	a,@dptr
	mov	b,#0x0A
	mul	ab
	mov	r4,a
	mov	r3,b
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
;	dht.c:109: *temp=datadht[0]*10;
	mov	dptr,#_dht_read_temp_1_19
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_dht_read_datadht_1_20
	movx	a,@dptr
	mov	b,#0x0A
	mul	ab
	mov	r4,a
	mov	r3,b
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	ljmp	00127$
00126$:
;	dht.c:113: *hum = ((unsigned int)datadht[0] << 8) | (unsigned int)datadht[1];
	mov	dptr,#_dht_read_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_dht_read_datadht_1_20
	movx	a,@dptr
	mov	r3,a
	mov	r4,#0x00
	mov	dptr,#(_dht_read_datadht_1_20 + 0x0001)
	movx	a,@dptr
	mov	r2,#0x00
	orl	ar4,a
	mov	a,r2
	orl	ar3,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
;	dht.c:114: *temp = (((unsigned int)datadht[2] & 0x7F) << 8) | (unsigned int)datadht[3];
	mov	dptr,#_dht_read_temp_1_19
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_dht_read_datadht_1_20 + 0x0002)
	movx	a,@dptr
	mov	r4,a
	anl	ar4,#0x7F
	mov	ar3,r4
	mov	r4,#0x00
	mov	dptr,#(_dht_read_datadht_1_20 + 0x0003)
	movx	a,@dptr
	mov	r1,a
	mov	r2,#0x00
	orl	ar4,a
	mov	a,r2
	orl	ar3,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
;	dht.c:115: if (datadht[2] & 0x80) *temp *= -1;
	mov	dptr,#(_dht_read_datadht_1_20 + 0x0002)
	movx	a,@dptr
	mov	r4,a
	jnb	acc.7,00127$
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	clr	c
	clr	a
	subb	a,r3
	mov	r3,a
	clr	a
	subb	a,r4
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
00127$:
;	dht.c:118: return DHT_NO_ERROR;
	mov	dpl,#0x00
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
