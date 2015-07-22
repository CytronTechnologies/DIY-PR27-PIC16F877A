opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 6738"

opt pagewidth 120

	opt lm

	processor	16F876A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 13 "C:\Users\Phang\Desktop\9.80\PR 27\Internal Slave\Slave_Internal UART.c"
	psect config,class=CONFIG,delta=2 ;#
# 13 "C:\Users\Phang\Desktop\9.80\PR 27\Internal Slave\Slave_Internal UART.c"
	dw 0x3F32 ;#
	FNCALL	_main,_send_config
	FNCALL	_main,_lcd_clr
	FNCALL	_main,_lcd_goto
	FNCALL	_main,_send_string
	FNCALL	_main,_internal_uart_read
	FNCALL	_main,_internal_uart_write
	FNCALL	_main,_send_char
	FNCALL	_send_string,_send_char
	FNCALL	_lcd_goto,_send_config
	FNCALL	_lcd_clr,_send_config
	FNCALL	_lcd_clr,_delay
	FNCALL	_send_char,_delay
	FNCALL	_send_config,_delay
	FNROOT	_main
	global	_k
	global	_m
	global	_dummy_byte
	global	_PORTB
psect	text216,local,class=CODE,delta=2
global __ptext216
__ptext216:
_PORTB	set	6
	global	_RCREG
_RCREG	set	26
	global	_TXREG
_TXREG	set	25
	global	_CREN
_CREN	set	196
	global	_RA0
_RA0	set	40
	global	_RA1
_RA1	set	41
	global	_RA2
_RA2	set	42
	global	_RA3
_RA3	set	43
	global	_RA4
_RA4	set	44
	global	_RA5
_RA5	set	45
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_RC2
_RC2	set	58
	global	_RC3
_RC3	set	59
	global	_RC4
_RC4	set	60
	global	_RC5
_RC5	set	61
	global	_RCIF
_RCIF	set	101
	global	_RX9
_RX9	set	198
	global	_SPEN
_SPEN	set	199
	global	_TXIF
_TXIF	set	100
	global	_ADCON1
_ADCON1	set	159
	global	_SPBRG
_SPBRG	set	153
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_BRGH
_BRGH	set	1218
	global	_TRISC0
_TRISC0	set	1080
	global	_TRISC1
_TRISC1	set	1081
	global	_TRISC2
_TRISC2	set	1082
	global	_TRISC3
_TRISC3	set	1083
	global	_TRISC6
_TRISC6	set	1086
	global	_TRISC7
_TRISC7	set	1087
	global	_TX9
_TX9	set	1222
	global	_TXEN
_TXEN	set	1221
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	
STR_2:	
	retlw	83	;'S'
	retlw	76	;'L'
	retlw	65	;'A'
	retlw	86	;'V'
	retlw	69	;'E'
	retlw	32	;' '
	retlw	73	;'I'
	retlw	110	;'n'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	110	;'n'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	0
psect	strings
	
STR_1:	
	retlw	67	;'C'
	retlw	121	;'y'
	retlw	116	;'t'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	32	;' '
	retlw	80	;'P'
	retlw	82	;'R'
	retlw	50	;'2'
	retlw	55	;'7'
	retlw	0
psect	strings
	file	"Internal Slave.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_k:
       ds      2

_m:
       ds      2

_dummy_byte:
       ds      1

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_send_config
?_send_config:	; 0 bytes @ 0x0
	global	?_lcd_clr
?_lcd_clr:	; 0 bytes @ 0x0
	global	?_lcd_goto
?_lcd_goto:	; 0 bytes @ 0x0
	global	?_send_string
?_send_string:	; 0 bytes @ 0x0
	global	??_internal_uart_read
??_internal_uart_read:	; 0 bytes @ 0x0
	global	?_internal_uart_write
?_internal_uart_write:	; 0 bytes @ 0x0
	global	??_internal_uart_write
??_internal_uart_write:	; 0 bytes @ 0x0
	global	?_send_char
?_send_char:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	?_internal_uart_read
?_internal_uart_read:	; 1 bytes @ 0x0
	global	internal_uart_write@data
internal_uart_write@data:	; 1 bytes @ 0x0
	global	delay@data
delay@data:	; 4 bytes @ 0x0
	ds	1
	global	internal_uart_read@rec_data
internal_uart_read@rec_data:	; 1 bytes @ 0x1
	ds	3
	global	??_delay
??_delay:	; 0 bytes @ 0x4
	ds	4
	global	??_send_config
??_send_config:	; 0 bytes @ 0x8
	global	??_send_char
??_send_char:	; 0 bytes @ 0x8
	global	send_config@data
send_config@data:	; 1 bytes @ 0x8
	global	send_char@data
send_char@data:	; 1 bytes @ 0x8
	ds	1
	global	??_lcd_clr
??_lcd_clr:	; 0 bytes @ 0x9
	global	??_lcd_goto
??_lcd_goto:	; 0 bytes @ 0x9
	global	??_send_string
??_send_string:	; 0 bytes @ 0x9
	ds	1
	global	send_string@s
send_string@s:	; 1 bytes @ 0xA
	global	lcd_goto@data
lcd_goto@data:	; 1 bytes @ 0xA
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0xB
	ds	1
	global	main@temp
main@temp:	; 1 bytes @ 0xC
	ds	1
	global	main@data_to_read
main@data_to_read:	; 1 bytes @ 0xD
	ds	1
;;Data sizes: Strings 27, constant 0, data 0, bss 5, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80      0       5
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; send_string@s	PTR const unsigned char  size(1) Largest target is 15
;;		 -> STR_2(CODE[15]), STR_1(CODE[12]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_lcd_goto
;;   _main->_send_string
;;   _send_string->_send_char
;;   _lcd_goto->_send_config
;;   _lcd_clr->_send_config
;;   _send_char->_delay
;;   _send_config->_delay
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 3     3      0     747
;;                                             11 COMMON     3     3      0
;;                        _send_config
;;                            _lcd_clr
;;                           _lcd_goto
;;                        _send_string
;;                 _internal_uart_read
;;                _internal_uart_write
;;                          _send_char
;; ---------------------------------------------------------------------------------
;; (1) _send_string                                          2     2      0     134
;;                                              9 COMMON     2     2      0
;;                          _send_char
;; ---------------------------------------------------------------------------------
;; (1) _lcd_goto                                             2     2      0     156
;;                                              9 COMMON     2     2      0
;;                        _send_config
;; ---------------------------------------------------------------------------------
;; (1) _lcd_clr                                              0     0      0     112
;;                        _send_config
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _send_char                                            1     1      0      67
;;                                              8 COMMON     1     1      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) _send_config                                          1     1      0      67
;;                                              8 COMMON     1     1      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) _delay                                                8     4      4      45
;;                                              0 COMMON     8     4      4
;; ---------------------------------------------------------------------------------
;; (1) _internal_uart_write                                  1     1      0      22
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _internal_uart_read                                   2     2      0      23
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _send_config
;;     _delay
;;   _lcd_clr
;;     _send_config
;;       _delay
;;     _delay
;;   _lcd_goto
;;     _send_config
;;       _delay
;;   _send_string
;;     _send_char
;;       _delay
;;   _internal_uart_read
;;   _internal_uart_write
;;   _send_char
;;     _delay
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       3       2        0.0%
;;ABS                  0      0      13       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       5       5        6.3%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      16      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 46 in file "C:\Users\Phang\Desktop\9.80\PR 27\Internal Slave\Slave_Internal UART.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  data_to_read    1   13[COMMON] unsigned char 
;;  temp            1   12[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_send_config
;;		_lcd_clr
;;		_lcd_goto
;;		_send_string
;;		_internal_uart_read
;;		_internal_uart_write
;;		_send_char
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Phang\Desktop\9.80\PR 27\Internal Slave\Slave_Internal UART.c"
	line	46
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	48
	
l3438:	
;Slave_Internal UART.c: 48: unsigned char data_to_read=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(main@data_to_read)
	line	52
	
l3440:	
;Slave_Internal UART.c: 49: unsigned char temp;
;Slave_Internal UART.c: 52: TRISB = 0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	53
	
l3442:	
;Slave_Internal UART.c: 53: TRISC = 0b00000000;
	clrf	(135)^080h	;volatile
	line	54
	
l3444:	
;Slave_Internal UART.c: 54: TRISA = 0b00011100;
	movlw	(01Ch)
	movwf	(133)^080h	;volatile
	line	55
	
l3446:	
;Slave_Internal UART.c: 55: ADCON1 = 0b00000110;
	movlw	(06h)
	movwf	(159)^080h	;volatile
	line	58
	
l3448:	
;Slave_Internal UART.c: 58: send_config(0b00000001);
	movlw	(01h)
	fcall	_send_config
	line	59
	
l3450:	
;Slave_Internal UART.c: 59: send_config(0b00000010);
	movlw	(02h)
	fcall	_send_config
	line	60
	
l3452:	
;Slave_Internal UART.c: 60: send_config(0b00000110);
	movlw	(06h)
	fcall	_send_config
	line	61
	
l3454:	
;Slave_Internal UART.c: 61: send_config(0b00001100);
	movlw	(0Ch)
	fcall	_send_config
	line	62
	
l3456:	
;Slave_Internal UART.c: 62: send_config(0b00111000);
	movlw	(038h)
	fcall	_send_config
	line	65
	
l3458:	
;Slave_Internal UART.c: 65: RA1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(41/8),(41)&7
	line	66
	
l3460:	
;Slave_Internal UART.c: 66: RA0=0;
	bcf	(40/8),(40)&7
	line	67
	
l3462:	
;Slave_Internal UART.c: 67: RA5=0;
	bcf	(45/8),(45)&7
	line	68
	
l3464:	
;Slave_Internal UART.c: 68: PORTB=0;
	clrf	(6)	;volatile
	line	69
	
l3466:	
;Slave_Internal UART.c: 69: lcd_clr();
	fcall	_lcd_clr
	line	70
	
l3468:	
;Slave_Internal UART.c: 70: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	71
	
l3470:	
;Slave_Internal UART.c: 71: send_string("Cytron PR27");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_send_string
	line	72
	
l3472:	
;Slave_Internal UART.c: 72: lcd_goto(20);
	movlw	(014h)
	fcall	_lcd_goto
	line	73
	
l3474:	
;Slave_Internal UART.c: 73: send_string("SLAVE Internal");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_send_string
	line	76
	
l3476:	
;Slave_Internal UART.c: 76: TRISC6=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1086/8)^080h,(1086)&7
	line	77
	
l3478:	
;Slave_Internal UART.c: 77: TRISC7=1;
	bsf	(1087/8)^080h,(1087)&7
	line	78
	
l3480:	
;Slave_Internal UART.c: 78: SPBRG=129;
	movlw	(081h)
	movwf	(153)^080h	;volatile
	line	79
	
l3482:	
;Slave_Internal UART.c: 79: BRGH=1;
	bsf	(1218/8)^080h,(1218)&7
	line	80
	
l3484:	
;Slave_Internal UART.c: 80: TXEN=1;
	bsf	(1221/8)^080h,(1221)&7
	line	81
	
l3486:	
;Slave_Internal UART.c: 81: TX9 =0;
	bcf	(1222/8)^080h,(1222)&7
	line	82
	
l3488:	
;Slave_Internal UART.c: 82: RX9 =0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(198/8),(198)&7
	line	83
	
l3490:	
;Slave_Internal UART.c: 83: CREN=1;
	bsf	(196/8),(196)&7
	line	84
	
l3492:	
;Slave_Internal UART.c: 84: SPEN=1;
	bsf	(199/8),(199)&7
	line	85
	
l3494:	
;Slave_Internal UART.c: 85: temp=RCREG;
	movf	(26),w	;volatile
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@temp)
	line	86
	
l3496:	
;Slave_Internal UART.c: 86: temp=RCREG;
	movf	(26),w	;volatile
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@temp)
	goto	l3498
	line	99
;Slave_Internal UART.c: 99: while(1)
	
l513:	
	line	101
	
l3498:	
;Slave_Internal UART.c: 100: {
;Slave_Internal UART.c: 101: data_to_read=internal_uart_read();
	fcall	_internal_uart_read
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@data_to_read)
	line	103
;Slave_Internal UART.c: 103: switch(data_to_read)
	goto	l3574
	line	105
;Slave_Internal UART.c: 104: {
;Slave_Internal UART.c: 105: case 1:
	
l515:	
	line	106
	
l3500:	
;Slave_Internal UART.c: 106: data_to_read=internal_uart_read();
	fcall	_internal_uart_read
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@data_to_read)
	line	107
	
l3502:	
;Slave_Internal UART.c: 107: if(data_to_read==0)RA1=0;
	movf	(main@data_to_read),f
	skipz
	goto	u3491
	goto	u3490
u3491:
	goto	l516
u3490:
	
l3504:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(41/8),(41)&7
	goto	l3506
	line	108
	
l516:	
;Slave_Internal UART.c: 108: else RA1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(41/8),(41)&7
	goto	l3506
	
l517:	
	line	109
	
l3506:	
;Slave_Internal UART.c: 109: internal_uart_write('a');
	movlw	(061h)
	fcall	_internal_uart_write
	line	110
;Slave_Internal UART.c: 110: break;
	goto	l3498
	line	112
;Slave_Internal UART.c: 112: case 2:
	
l519:	
	line	113
	
l3508:	
;Slave_Internal UART.c: 113: data_to_read=internal_uart_read();
	fcall	_internal_uart_read
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@data_to_read)
	line	114
	
l3510:	
;Slave_Internal UART.c: 114: if(data_to_read==0)RA0=0;
	movf	(main@data_to_read),f
	skipz
	goto	u3501
	goto	u3500
u3501:
	goto	l520
u3500:
	
l3512:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7
	goto	l3514
	line	115
	
l520:	
;Slave_Internal UART.c: 115: else RA0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(40/8),(40)&7
	goto	l3514
	
l521:	
	line	116
	
l3514:	
;Slave_Internal UART.c: 116: internal_uart_write('a');
	movlw	(061h)
	fcall	_internal_uart_write
	line	117
;Slave_Internal UART.c: 117: break;
	goto	l3498
	line	119
;Slave_Internal UART.c: 119: case 3:
	
l522:	
	line	120
	
l3516:	
;Slave_Internal UART.c: 120: data_to_read=internal_uart_read();
	fcall	_internal_uart_read
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@data_to_read)
	line	121
	
l3518:	
;Slave_Internal UART.c: 121: if(data_to_read==0)RA5=0;
	movf	(main@data_to_read),f
	skipz
	goto	u3511
	goto	u3510
u3511:
	goto	l523
u3510:
	
l3520:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(45/8),(45)&7
	goto	l3522
	line	122
	
l523:	
;Slave_Internal UART.c: 122: else RA5=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(45/8),(45)&7
	goto	l3522
	
l524:	
	line	123
	
l3522:	
;Slave_Internal UART.c: 123: internal_uart_write('a');
	movlw	(061h)
	fcall	_internal_uart_write
	line	124
;Slave_Internal UART.c: 124: break;
	goto	l3498
	line	126
;Slave_Internal UART.c: 126: case 4:
	
l525:	
	line	127
	
l3524:	
;Slave_Internal UART.c: 127: data_to_read=internal_uart_read();
	fcall	_internal_uart_read
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@data_to_read)
	line	128
;Slave_Internal UART.c: 128: switch(data_to_read)
	goto	l3540
	line	131
;Slave_Internal UART.c: 129: {
;Slave_Internal UART.c: 131: case 1:
	
l527:	
	line	132
;Slave_Internal UART.c: 132: if(RA2)internal_uart_write(1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(42/8),(42)&7
	goto	u3521
	goto	u3520
u3521:
	goto	l3528
u3520:
	
l3526:	
	movlw	(01h)
	fcall	_internal_uart_write
	goto	l3498
	line	133
	
l528:	
	
l3528:	
;Slave_Internal UART.c: 133: else internal_uart_write(0);
	movlw	(0)
	fcall	_internal_uart_write
	goto	l3498
	
l529:	
	line	135
;Slave_Internal UART.c: 135: break;
	goto	l3498
	line	137
;Slave_Internal UART.c: 137: case 2:
	
l531:	
	line	138
;Slave_Internal UART.c: 138: if(RA3)internal_uart_write(1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(43/8),(43)&7
	goto	u3531
	goto	u3530
u3531:
	goto	l3532
u3530:
	
l3530:	
	movlw	(01h)
	fcall	_internal_uart_write
	goto	l3498
	line	139
	
l532:	
	
l3532:	
;Slave_Internal UART.c: 139: else internal_uart_write(0);
	movlw	(0)
	fcall	_internal_uart_write
	goto	l3498
	
l533:	
	line	141
;Slave_Internal UART.c: 141: break;
	goto	l3498
	line	143
;Slave_Internal UART.c: 143: case 3:
	
l534:	
	line	144
;Slave_Internal UART.c: 144: if(RA4)internal_uart_write(1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(44/8),(44)&7
	goto	u3541
	goto	u3540
u3541:
	goto	l3536
u3540:
	
l3534:	
	movlw	(01h)
	fcall	_internal_uart_write
	goto	l3498
	line	145
	
l535:	
	
l3536:	
;Slave_Internal UART.c: 145: else internal_uart_write(0);
	movlw	(0)
	fcall	_internal_uart_write
	goto	l3498
	
l536:	
	line	147
;Slave_Internal UART.c: 147: break;
	goto	l3498
	line	148
	
l3538:	
;Slave_Internal UART.c: 148: }
	goto	l3498
	line	128
	
l526:	
	
l3540:	
	movf	(main@data_to_read),w
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 1 to 3
; switch strategies available:
; Name         Bytes Cycles
; simple_byte    10     6 (average)
; direct_byte    31    22 (fixed)
;	Chosen strategy is simple_byte

	xorlw	1^0	; case 1
	skipnz
	goto	l527
	xorlw	2^1	; case 2
	skipnz
	goto	l531
	xorlw	3^2	; case 3
	skipnz
	goto	l534
	goto	l3498

	line	148
	
l530:	
	line	149
;Slave_Internal UART.c: 149: break;
	goto	l3498
	line	151
;Slave_Internal UART.c: 151: case 5:
	
l537:	
	line	152
	
l3542:	
;Slave_Internal UART.c: 152: data_to_read=internal_uart_read();
	fcall	_internal_uart_read
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@data_to_read)
	line	153
	
l3544:	
;Slave_Internal UART.c: 153: lcd_clr();
	fcall	_lcd_clr
	line	154
	
l3546:	
;Slave_Internal UART.c: 154: k=0;
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_k)
	movlw	high(0)
	movwf	((_k))+1
	line	155
	
l3548:	
;Slave_Internal UART.c: 155: m=0;
	movlw	low(0)
	movwf	(_m)
	movlw	high(0)
	movwf	((_m))+1
	line	156
	
l3550:	
;Slave_Internal UART.c: 156: internal_uart_write('a');
	movlw	(061h)
	fcall	_internal_uart_write
	line	157
;Slave_Internal UART.c: 157: break;
	goto	l3498
	line	159
;Slave_Internal UART.c: 159: case 6:
	
l538:	
	line	160
	
l3552:	
;Slave_Internal UART.c: 160: data_to_read=internal_uart_read();
	fcall	_internal_uart_read
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@data_to_read)
	line	161
	
l3554:	
;Slave_Internal UART.c: 161: if (k>15)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_k+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(010h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3555
	movlw	low(010h)
	subwf	(_k),w
u3555:

	skipc
	goto	u3551
	goto	u3550
u3551:
	goto	l3564
u3550:
	line	163
	
l3556:	
;Slave_Internal UART.c: 162: {
;Slave_Internal UART.c: 163: send_config(0xc0+m);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_m),w
	addlw	0C0h
	fcall	_send_config
	line	164
;Slave_Internal UART.c: 164: send_char(data_to_read++);
	movf	(main@data_to_read),w
	fcall	_send_char
	
l3558:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@data_to_read),f
	line	165
	
l3560:	
;Slave_Internal UART.c: 165: m++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_m),f
	skipnc
	incf	(_m+1),f
	movlw	high(01h)
	addwf	(_m+1),f
	line	166
	
l3562:	
;Slave_Internal UART.c: 166: k++;
	movlw	low(01h)
	addwf	(_k),f
	skipnc
	incf	(_k+1),f
	movlw	high(01h)
	addwf	(_k+1),f
	line	167
;Slave_Internal UART.c: 167: }
	goto	l3570
	line	168
	
l539:	
	line	170
	
l3564:	
;Slave_Internal UART.c: 168: else
;Slave_Internal UART.c: 169: {
;Slave_Internal UART.c: 170: send_config(0x80+k);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_k),w
	addlw	080h
	fcall	_send_config
	line	171
;Slave_Internal UART.c: 171: send_char(data_to_read++);
	movf	(main@data_to_read),w
	fcall	_send_char
	
l3566:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@data_to_read),f
	line	172
	
l3568:	
;Slave_Internal UART.c: 172: k++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_k),f
	skipnc
	incf	(_k+1),f
	movlw	high(01h)
	addwf	(_k+1),f
	goto	l3570
	line	173
	
l540:	
	line	174
	
l3570:	
;Slave_Internal UART.c: 173: }
;Slave_Internal UART.c: 174: internal_uart_write('a');
	movlw	(061h)
	fcall	_internal_uart_write
	line	175
;Slave_Internal UART.c: 175: break;
	goto	l3498
	line	176
	
l3572:	
;Slave_Internal UART.c: 176: }
	goto	l3498
	line	103
	
l514:	
	
l3574:	
	movf	(main@data_to_read),w
	; Switch size 1, requested type "space"
; Number of cases is 6, Range of values is 1 to 6
; switch strategies available:
; Name         Bytes Cycles
; simple_byte    19    10 (average)
; direct_byte    40    22 (fixed)
;	Chosen strategy is simple_byte

	xorlw	1^0	; case 1
	skipnz
	goto	l3500
	xorlw	2^1	; case 2
	skipnz
	goto	l3508
	xorlw	3^2	; case 3
	skipnz
	goto	l3516
	xorlw	4^3	; case 4
	skipnz
	goto	l3524
	xorlw	5^4	; case 5
	skipnz
	goto	l3542
	xorlw	6^5	; case 6
	skipnz
	goto	l3552
	goto	l3498

	line	176
	
l518:	
	goto	l3498
	line	177
	
l541:	
	line	99
	goto	l3498
	
l542:	
	line	178
	
l543:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_send_string
psect	text217,local,class=CODE,delta=2
global __ptext217
__ptext217:

;; *************** function _send_string *****************
;; Defined at:
;;		line 230 in file "C:\Users\Phang\Desktop\9.80\PR 27\Internal Slave\Slave_Internal UART.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> STR_2(15), STR_1(12), 
;; Auto vars:     Size  Location     Type
;;  s               1   10[COMMON] PTR const unsigned char 
;;		 -> STR_2(15), STR_1(12), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_send_char
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text217
	file	"C:\Users\Phang\Desktop\9.80\PR 27\Internal Slave\Slave_Internal UART.c"
	line	230
	global	__size_of_send_string
	__size_of_send_string	equ	__end_of_send_string-_send_string
	
_send_string:	
	opt	stack 5
; Regs used in _send_string: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;send_string@s stored from wreg
	movwf	(send_string@s)
	line	231
	
l3428:	
;Slave_Internal UART.c: 231: while (s && *s)send_char (*s++);
	goto	l3434
	
l573:	
	
l3430:	
	movf	(send_string@s),w
	movwf	fsr0
	fcall	stringdir
	fcall	_send_char
	
l3432:	
	movlw	(01h)
	movwf	(??_send_string+0)+0
	movf	(??_send_string+0)+0,w
	addwf	(send_string@s),f
	goto	l3434
	
l572:	
	
l3434:	
	movf	(send_string@s),w
	skipz
	goto	u3470
	goto	l577
u3470:
	
l3436:	
	movf	(send_string@s),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u3481
	goto	u3480
u3481:
	goto	l3430
u3480:
	goto	l577
	
l575:	
	goto	l577
	
l576:	
	line	232
	
l577:	
	return
	opt stack 0
GLOBAL	__end_of_send_string
	__end_of_send_string:
;; =============== function _send_string ends ============

	signat	_send_string,4216
	global	_lcd_goto
psect	text218,local,class=CODE,delta=2
global __ptext218
__ptext218:

;; *************** function _lcd_goto *****************
;; Defined at:
;;		line 235 in file "C:\Users\Phang\Desktop\9.80\PR 27\Internal Slave\Slave_Internal UART.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1   10[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_send_config
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text218
	file	"C:\Users\Phang\Desktop\9.80\PR 27\Internal Slave\Slave_Internal UART.c"
	line	235
	global	__size_of_lcd_goto
	__size_of_lcd_goto	equ	__end_of_lcd_goto-_lcd_goto
	
_lcd_goto:	
	opt	stack 5
; Regs used in _lcd_goto: [wreg+status,2+status,0+pclath+cstack]
;lcd_goto@data stored from wreg
	movwf	(lcd_goto@data)
	line	236
	
l3420:	
;Slave_Internal UART.c: 236: if(data<16)
	movlw	(010h)
	subwf	(lcd_goto@data),w
	skipnc
	goto	u3461
	goto	u3460
u3461:
	goto	l3424
u3460:
	line	238
	
l3422:	
;Slave_Internal UART.c: 237: {
;Slave_Internal UART.c: 238: send_config(0x80+data);
	movf	(lcd_goto@data),w
	addlw	080h
	fcall	_send_config
	line	239
;Slave_Internal UART.c: 239: }
	goto	l582
	line	240
	
l580:	
	line	242
	
l3424:	
;Slave_Internal UART.c: 240: else
;Slave_Internal UART.c: 241: {
;Slave_Internal UART.c: 242: data=data-20;
	movf	(lcd_goto@data),w
	addlw	0ECh
	movwf	(??_lcd_goto+0)+0
	movf	(??_lcd_goto+0)+0,w
	movwf	(lcd_goto@data)
	line	243
	
l3426:	
;Slave_Internal UART.c: 243: send_config(0xc0+data);
	movf	(lcd_goto@data),w
	addlw	0C0h
	fcall	_send_config
	goto	l582
	line	244
	
l581:	
	line	245
	
l582:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_goto
	__end_of_lcd_goto:
;; =============== function _lcd_goto ends ============

	signat	_lcd_goto,4216
	global	_lcd_clr
psect	text219,local,class=CODE,delta=2
global __ptext219
__ptext219:

;; *************** function _lcd_clr *****************
;; Defined at:
;;		line 210 in file "C:\Users\Phang\Desktop\9.80\PR 27\Internal Slave\Slave_Internal UART.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_send_config
;;		_delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text219
	file	"C:\Users\Phang\Desktop\9.80\PR 27\Internal Slave\Slave_Internal UART.c"
	line	210
	global	__size_of_lcd_clr
	__size_of_lcd_clr	equ	__end_of_lcd_clr-_lcd_clr
	
_lcd_clr:	
	opt	stack 5
; Regs used in _lcd_clr: [wreg+status,2+status,0+pclath+cstack]
	line	211
	
l3418:	
;Slave_Internal UART.c: 211: send_config(0x01);
	movlw	(01h)
	fcall	_send_config
	line	212
;Slave_Internal UART.c: 212: delay(600);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	02h
	movwf	(?_delay+1)
	movlw	058h
	movwf	(?_delay)

	fcall	_delay
	line	213
	
l557:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_clr
	__end_of_lcd_clr:
;; =============== function _lcd_clr ends ============

	signat	_lcd_clr,88
	global	_send_char
psect	text220,local,class=CODE,delta=2
global __ptext220
__ptext220:

;; *************** function _send_char *****************
;; Defined at:
;;		line 200 in file "C:\Users\Phang\Desktop\9.80\PR 27\Internal Slave\Slave_Internal UART.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_main
;;		_send_string
;; This function uses a non-reentrant model
;;
psect	text220
	file	"C:\Users\Phang\Desktop\9.80\PR 27\Internal Slave\Slave_Internal UART.c"
	line	200
	global	__size_of_send_char
	__size_of_send_char	equ	__end_of_send_char-_send_char
	
_send_char:	
	opt	stack 6
; Regs used in _send_char: [wreg+status,2+status,0+pclath+cstack]
;send_char@data stored from wreg
	movwf	(send_char@data)
	line	201
	
l3406:	
;Slave_Internal UART.c: 201: RC4=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(60/8),(60)&7
	line	202
	
l3408:	
;Slave_Internal UART.c: 202: PORTB=data;
	movf	(send_char@data),w
	movwf	(6)	;volatile
	line	203
	
l3410:	
;Slave_Internal UART.c: 203: RC5=1;
	bsf	(61/8),(61)&7
	line	204
	
l3412:	
;Slave_Internal UART.c: 204: delay(50);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0
	movwf	(?_delay+1)
	movlw	032h
	movwf	(?_delay)

	fcall	_delay
	line	205
	
l3414:	
;Slave_Internal UART.c: 205: RC5=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7
	line	206
	
l3416:	
;Slave_Internal UART.c: 206: delay(50);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0
	movwf	(?_delay+1)
	movlw	032h
	movwf	(?_delay)

	fcall	_delay
	line	207
	
l554:	
	return
	opt stack 0
GLOBAL	__end_of_send_char
	__end_of_send_char:
;; =============== function _send_char ends ============

	signat	_send_char,4216
	global	_send_config
psect	text221,local,class=CODE,delta=2
global __ptext221
__ptext221:

;; *************** function _send_config *****************
;; Defined at:
;;		line 189 in file "C:\Users\Phang\Desktop\9.80\PR 27\Internal Slave\Slave_Internal UART.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_main
;;		_lcd_clr
;;		_lcd_goto
;; This function uses a non-reentrant model
;;
psect	text221
	file	"C:\Users\Phang\Desktop\9.80\PR 27\Internal Slave\Slave_Internal UART.c"
	line	189
	global	__size_of_send_config
	__size_of_send_config	equ	__end_of_send_config-_send_config
	
_send_config:	
	opt	stack 5
; Regs used in _send_config: [wreg+status,2+status,0+pclath+cstack]
;send_config@data stored from wreg
	movwf	(send_config@data)
	line	190
	
l3394:	
;Slave_Internal UART.c: 190: RC4=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7
	line	191
	
l3396:	
;Slave_Internal UART.c: 191: PORTB=data;
	movf	(send_config@data),w
	movwf	(6)	;volatile
	line	192
	
l3398:	
;Slave_Internal UART.c: 192: RC5=1;
	bsf	(61/8),(61)&7
	line	193
	
l3400:	
;Slave_Internal UART.c: 193: delay(50);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0
	movwf	(?_delay+1)
	movlw	032h
	movwf	(?_delay)

	fcall	_delay
	line	194
	
l3402:	
;Slave_Internal UART.c: 194: RC5=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7
	line	195
	
l3404:	
;Slave_Internal UART.c: 195: delay(50);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0
	movwf	(?_delay+1)
	movlw	032h
	movwf	(?_delay)

	fcall	_delay
	line	197
	
l551:	
	return
	opt stack 0
GLOBAL	__end_of_send_config
	__end_of_send_config:
;; =============== function _send_config ends ============

	signat	_send_config,4216
	global	_delay
psect	text222,local,class=CODE,delta=2
global __ptext222
__ptext222:

;; *************** function _delay *****************
;; Defined at:
;;		line 184 in file "C:\Users\Phang\Desktop\9.80\PR 27\Internal Slave\Slave_Internal UART.c"
;; Parameters:    Size  Location     Type
;;  data            4    0[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_send_config
;;		_send_char
;;		_lcd_clr
;; This function uses a non-reentrant model
;;
psect	text222
	file	"C:\Users\Phang\Desktop\9.80\PR 27\Internal Slave\Slave_Internal UART.c"
	line	184
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 6
; Regs used in _delay: [wreg]
	line	185
	
l2980:	
;Slave_Internal UART.c: 185: for( ;data>0;data-=1);
	movf	(delay@data+3),w
	iorwf	(delay@data+2),w
	iorwf	(delay@data+1),w
	iorwf	(delay@data),w
	skipz
	goto	u2871
	goto	u2870
u2871:
	goto	l2984
u2870:
	goto	l548
	
l2982:	
	goto	l548
	
l546:	
	
l2984:	
	movlw	01h
	movwf	((??_delay+0)+0)
	movlw	0
	movwf	((??_delay+0)+0+1)
	movlw	0
	movwf	((??_delay+0)+0+2)
	movlw	0
	movwf	((??_delay+0)+0+3)
	movf	0+(??_delay+0)+0,w
	subwf	(delay@data),f
	movf	1+(??_delay+0)+0,w
	skipc
	incfsz	1+(??_delay+0)+0,w
	goto	u2885
	goto	u2886
u2885:
	subwf	(delay@data+1),f
u2886:
	movf	2+(??_delay+0)+0,w
	skipc
	incfsz	2+(??_delay+0)+0,w
	goto	u2887
	goto	u2888
u2887:
	subwf	(delay@data+2),f
u2888:
	movf	3+(??_delay+0)+0,w
	skipc
	incfsz	3+(??_delay+0)+0,w
	goto	u2889
	goto	u2880
u2889:
	subwf	(delay@data+3),f
u2880:

	movf	(delay@data+3),w
	iorwf	(delay@data+2),w
	iorwf	(delay@data+1),w
	iorwf	(delay@data),w
	skipz
	goto	u2891
	goto	u2890
u2891:
	goto	l2984
u2890:
	goto	l548
	
l547:	
	line	186
	
l548:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
	global	_internal_uart_write
psect	text223,local,class=CODE,delta=2
global __ptext223
__ptext223:

;; *************** function _internal_uart_write *****************
;; Defined at:
;;		line 216 in file "C:\Users\Phang\Desktop\9.80\PR 27\Internal Slave\Slave_Internal UART.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text223
	file	"C:\Users\Phang\Desktop\9.80\PR 27\Internal Slave\Slave_Internal UART.c"
	line	216
	global	__size_of_internal_uart_write
	__size_of_internal_uart_write	equ	__end_of_internal_uart_write-_internal_uart_write
	
_internal_uart_write:	
	opt	stack 7
; Regs used in _internal_uart_write: [wreg]
;internal_uart_write@data stored from wreg
	movwf	(internal_uart_write@data)
	line	217
	
l2976:	
;Slave_Internal UART.c: 217: while(TXIF==0);
	goto	l560
	
l561:	
	
l560:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u2861
	goto	u2860
u2861:
	goto	l560
u2860:
	goto	l2978
	
l562:	
	line	218
	
l2978:	
;Slave_Internal UART.c: 218: TXREG=data;
	movf	(internal_uart_write@data),w
	movwf	(25)	;volatile
	line	219
	
l563:	
	return
	opt stack 0
GLOBAL	__end_of_internal_uart_write
	__end_of_internal_uart_write:
;; =============== function _internal_uart_write ends ============

	signat	_internal_uart_write,4216
	global	_internal_uart_read
psect	text224,local,class=CODE,delta=2
global __ptext224
__ptext224:

;; *************** function _internal_uart_read *****************
;; Defined at:
;;		line 222 in file "C:\Users\Phang\Desktop\9.80\PR 27\Internal Slave\Slave_Internal UART.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  rec_data        1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text224
	file	"C:\Users\Phang\Desktop\9.80\PR 27\Internal Slave\Slave_Internal UART.c"
	line	222
	global	__size_of_internal_uart_read
	__size_of_internal_uart_read	equ	__end_of_internal_uart_read-_internal_uart_read
	
_internal_uart_read:	
	opt	stack 7
; Regs used in _internal_uart_read: [wreg]
	line	224
	
l2970:	
;Slave_Internal UART.c: 223: unsigned char rec_data;
;Slave_Internal UART.c: 224: while(RCIF==0);
	goto	l566
	
l567:	
	
l566:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u2851
	goto	u2850
u2851:
	goto	l566
u2850:
	goto	l2972
	
l568:	
	line	225
	
l2972:	
;Slave_Internal UART.c: 225: rec_data = RCREG;
	movf	(26),w	;volatile
	movwf	(??_internal_uart_read+0)+0
	movf	(??_internal_uart_read+0)+0,w
	movwf	(internal_uart_read@rec_data)
	line	226
;Slave_Internal UART.c: 226: return rec_data;
	movf	(internal_uart_read@rec_data),w
	goto	l569
	
l2974:	
	line	227
	
l569:	
	return
	opt stack 0
GLOBAL	__end_of_internal_uart_read
	__end_of_internal_uart_read:
;; =============== function _internal_uart_read ends ============

	signat	_internal_uart_read,89
psect	text225,local,class=CODE,delta=2
global __ptext225
__ptext225:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
