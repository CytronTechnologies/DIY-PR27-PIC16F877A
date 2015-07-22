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
# 14 "C:\Users\Phang\Desktop\9.80\PR 27\Slave_Programmed UART_1\Slave_Programmed UART_1.c"
	psect config,class=CONFIG,delta=2 ;#
# 14 "C:\Users\Phang\Desktop\9.80\PR 27\Slave_Programmed UART_1\Slave_Programmed UART_1.c"
	dw 0x3F32 ;#
	FNCALL	_main,_send_config
	FNCALL	_main,_lcd_clr
	FNCALL	_main,_lcd_goto
	FNCALL	_main,_send_string
	FNCALL	_main,_uart_init
	FNCALL	_main,_uart_read
	FNCALL	_main,_uart_write
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
psect	text228,local,class=CODE,delta=2
global __ptext228
__ptext228:
_PORTB	set	6
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
	global	_ADCON1
_ADCON1	set	159
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISC0
_TRISC0	set	1080
	global	_TRISC1
_TRISC1	set	1081
	global	_TRISC2
_TRISC2	set	1082
	global	_TRISC3
_TRISC3	set	1083
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
	retlw	85	;'U'
	retlw	65	;'A'
	retlw	82	;'R'
	retlw	84	;'T'
	retlw	95	;'_'
	retlw	49	;'1'
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
	file	"Internal Programmer.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_dummy_byte:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_k:
       ds      2

_m:
       ds      2

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
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
	global	?_uart_init
?_uart_init:	; 0 bytes @ 0x0
	global	??_uart_init
??_uart_init:	; 0 bytes @ 0x0
	global	??_uart_read
??_uart_read:	; 0 bytes @ 0x0
	global	?_uart_write
?_uart_write:	; 0 bytes @ 0x0
	global	?_send_char
?_send_char:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	?_uart_read
?_uart_read:	; 1 bytes @ 0x0
	global	uart_init@channel
uart_init@channel:	; 1 bytes @ 0x0
	global	uart_write@data
uart_write@data:	; 1 bytes @ 0x0
	global	delay@data
delay@data:	; 4 bytes @ 0x0
	ds	1
	global	??_uart_write
??_uart_write:	; 0 bytes @ 0x1
	ds	1
	global	uart_read@dummy_mask
uart_read@dummy_mask:	; 1 bytes @ 0x2
	ds	1
	global	uart_write@channel
uart_write@channel:	; 1 bytes @ 0x3
	global	uart_read@channel
uart_read@channel:	; 1 bytes @ 0x3
	ds	1
	global	??_delay
??_delay:	; 0 bytes @ 0x4
	global	uart_write@i
uart_write@i:	; 1 bytes @ 0x4
	global	uart_read@result
uart_read@result:	; 1 bytes @ 0x4
	ds	1
	global	uart_read@i
uart_read@i:	; 1 bytes @ 0x5
	ds	3
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
	global	main@data_to_read
main@data_to_read:	; 1 bytes @ 0xC
	ds	1
;;Data sizes: Strings 25, constant 0, data 0, bss 5, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     13      14
;; BANK0           80      0       4
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; send_string@s	PTR const unsigned char  size(1) Largest target is 13
;;		 -> STR_2(CODE[13]), STR_1(CODE[12]), 
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
;; (0) _main                                                 2     2      0    2413
;;                                             11 COMMON     2     2      0
;;                        _send_config
;;                            _lcd_clr
;;                           _lcd_goto
;;                        _send_string
;;                          _uart_init
;;                          _uart_read
;;                         _uart_write
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
;; (1) _uart_write                                           5     4      1     918
;;                                              0 COMMON     5     4      1
;; ---------------------------------------------------------------------------------
;; (1) _uart_read                                            6     6      0     775
;;                                              0 COMMON     6     6      0
;; ---------------------------------------------------------------------------------
;; (2) _send_config                                          1     1      0      67
;;                                              8 COMMON     1     1      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) _delay                                                8     4      4      45
;;                                              0 COMMON     8     4      4
;; ---------------------------------------------------------------------------------
;; (1) _uart_init                                            1     1      0      22
;;                                              0 COMMON     1     1      0
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
;;   _uart_init
;;   _uart_read
;;   _uart_write
;;   _send_char
;;     _delay
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      D       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       3       2        0.0%
;;ABS                  0      0      12       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       4       5        5.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      15      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 45 in file "C:\Users\Phang\Desktop\9.80\PR 27\Slave_Programmed UART_1\Slave_Programmed UART_1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  data_to_read    1   12[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_send_config
;;		_lcd_clr
;;		_lcd_goto
;;		_send_string
;;		_uart_init
;;		_uart_read
;;		_uart_write
;;		_send_char
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Phang\Desktop\9.80\PR 27\Slave_Programmed UART_1\Slave_Programmed UART_1.c"
	line	45
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	47
	
l3392:	
;Slave_Programmed UART_1.c: 47: unsigned char data_to_read=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(main@data_to_read)
	line	50
	
l3394:	
;Slave_Programmed UART_1.c: 50: TRISB = 0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	51
	
l3396:	
;Slave_Programmed UART_1.c: 51: TRISC = 0b00000000;
	clrf	(135)^080h	;volatile
	line	52
	
l3398:	
;Slave_Programmed UART_1.c: 52: TRISA = 0b00011100;
	movlw	(01Ch)
	movwf	(133)^080h	;volatile
	line	53
	
l3400:	
;Slave_Programmed UART_1.c: 53: ADCON1 = 0b00000110;
	movlw	(06h)
	movwf	(159)^080h	;volatile
	line	56
	
l3402:	
;Slave_Programmed UART_1.c: 56: send_config(0b00000001);
	movlw	(01h)
	fcall	_send_config
	line	57
	
l3404:	
;Slave_Programmed UART_1.c: 57: send_config(0b00000010);
	movlw	(02h)
	fcall	_send_config
	line	58
	
l3406:	
;Slave_Programmed UART_1.c: 58: send_config(0b00000110);
	movlw	(06h)
	fcall	_send_config
	line	59
	
l3408:	
;Slave_Programmed UART_1.c: 59: send_config(0b00001100);
	movlw	(0Ch)
	fcall	_send_config
	line	60
	
l3410:	
;Slave_Programmed UART_1.c: 60: send_config(0b00111000);
	movlw	(038h)
	fcall	_send_config
	line	63
	
l3412:	
;Slave_Programmed UART_1.c: 63: RA1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(41/8),(41)&7
	line	64
	
l3414:	
;Slave_Programmed UART_1.c: 64: RA0=0;
	bcf	(40/8),(40)&7
	line	65
	
l3416:	
;Slave_Programmed UART_1.c: 65: RA5=0;
	bcf	(45/8),(45)&7
	line	66
	
l3418:	
;Slave_Programmed UART_1.c: 66: PORTB=0;
	clrf	(6)	;volatile
	line	67
	
l3420:	
;Slave_Programmed UART_1.c: 67: lcd_clr();
	fcall	_lcd_clr
	line	68
	
l3422:	
;Slave_Programmed UART_1.c: 68: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	69
	
l3424:	
;Slave_Programmed UART_1.c: 69: send_string("Cytron PR27");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_send_string
	line	70
	
l3426:	
;Slave_Programmed UART_1.c: 70: lcd_goto(20);
	movlw	(014h)
	fcall	_lcd_goto
	line	71
	
l3428:	
;Slave_Programmed UART_1.c: 71: send_string("SLAVE UART_1");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_send_string
	line	72
	
l3430:	
;Slave_Programmed UART_1.c: 72: uart_init(1);
	movlw	(01h)
	fcall	_uart_init
	goto	l3432
	line	84
;Slave_Programmed UART_1.c: 84: while(1)
	
l515:	
	line	86
	
l3432:	
;Slave_Programmed UART_1.c: 85: {
;Slave_Programmed UART_1.c: 86: data_to_read=uart_read(1);
	movlw	(01h)
	fcall	_uart_read
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@data_to_read)
	line	88
;Slave_Programmed UART_1.c: 88: switch(data_to_read)
	goto	l3504
	line	90
;Slave_Programmed UART_1.c: 89: {
;Slave_Programmed UART_1.c: 90: case 1:
	
l517:	
	line	91
	
l3434:	
;Slave_Programmed UART_1.c: 91: data_to_read=uart_read(1);
	movlw	(01h)
	fcall	_uart_read
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@data_to_read)
	line	92
	
l3436:	
;Slave_Programmed UART_1.c: 92: if(data_to_read==0)RA1=0;
	movf	(main@data_to_read),f
	skipz
	goto	u3451
	goto	u3450
u3451:
	goto	l518
u3450:
	
l3438:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(41/8),(41)&7
	goto	l3440
	line	93
	
l518:	
;Slave_Programmed UART_1.c: 93: else RA1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(41/8),(41)&7
	goto	l3440
	
l519:	
	line	94
	
l3440:	
;Slave_Programmed UART_1.c: 94: uart_write(1,'a');
	movlw	(061h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_uart_write)
	movlw	(01h)
	fcall	_uart_write
	line	95
;Slave_Programmed UART_1.c: 95: break;
	goto	l3432
	line	97
;Slave_Programmed UART_1.c: 97: case 2:
	
l521:	
	line	98
	
l3442:	
;Slave_Programmed UART_1.c: 98: data_to_read=uart_read(1);
	movlw	(01h)
	fcall	_uart_read
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@data_to_read)
	line	99
	
l3444:	
;Slave_Programmed UART_1.c: 99: if(data_to_read==0)RA0=0;
	movf	(main@data_to_read),f
	skipz
	goto	u3461
	goto	u3460
u3461:
	goto	l522
u3460:
	
l3446:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7
	goto	l3448
	line	100
	
l522:	
;Slave_Programmed UART_1.c: 100: else RA0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(40/8),(40)&7
	goto	l3448
	
l523:	
	line	101
	
l3448:	
;Slave_Programmed UART_1.c: 101: uart_write(1,'a');
	movlw	(061h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_uart_write)
	movlw	(01h)
	fcall	_uart_write
	line	102
;Slave_Programmed UART_1.c: 102: break;
	goto	l3432
	line	104
;Slave_Programmed UART_1.c: 104: case 3:
	
l524:	
	line	105
	
l3450:	
;Slave_Programmed UART_1.c: 105: data_to_read=uart_read(1);
	movlw	(01h)
	fcall	_uart_read
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@data_to_read)
	line	106
	
l3452:	
;Slave_Programmed UART_1.c: 106: if(data_to_read==0)RA5=0;
	movf	(main@data_to_read),f
	skipz
	goto	u3471
	goto	u3470
u3471:
	goto	l525
u3470:
	
l3454:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(45/8),(45)&7
	goto	l3456
	line	107
	
l525:	
;Slave_Programmed UART_1.c: 107: else RA5=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(45/8),(45)&7
	goto	l3456
	
l526:	
	line	108
	
l3456:	
;Slave_Programmed UART_1.c: 108: uart_write(1,'a');
	movlw	(061h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_uart_write)
	movlw	(01h)
	fcall	_uart_write
	line	109
;Slave_Programmed UART_1.c: 109: break;
	goto	l3432
	line	111
;Slave_Programmed UART_1.c: 111: case 4:
	
l527:	
	line	112
	
l3458:	
;Slave_Programmed UART_1.c: 112: data_to_read=uart_read(1);
	movlw	(01h)
	fcall	_uart_read
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@data_to_read)
	line	113
;Slave_Programmed UART_1.c: 113: switch(data_to_read)
	goto	l3474
	line	116
;Slave_Programmed UART_1.c: 114: {
;Slave_Programmed UART_1.c: 116: case 1:
	
l529:	
	line	117
;Slave_Programmed UART_1.c: 117: if(RA2)uart_write(1,1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(42/8),(42)&7
	goto	u3481
	goto	u3480
u3481:
	goto	l3462
u3480:
	
l3460:	
	clrf	(?_uart_write)
	bsf	status,0
	rlf	(?_uart_write),f
	movlw	(01h)
	fcall	_uart_write
	goto	l3432
	line	118
	
l530:	
	
l3462:	
;Slave_Programmed UART_1.c: 118: else uart_write(1,0);
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(?_uart_write)
	movlw	(01h)
	fcall	_uart_write
	goto	l3432
	
l531:	
	line	119
;Slave_Programmed UART_1.c: 119: break;
	goto	l3432
	line	121
;Slave_Programmed UART_1.c: 121: case 2:
	
l533:	
	line	122
;Slave_Programmed UART_1.c: 122: if(RA3)uart_write(1,1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(43/8),(43)&7
	goto	u3491
	goto	u3490
u3491:
	goto	l3466
u3490:
	
l3464:	
	clrf	(?_uart_write)
	bsf	status,0
	rlf	(?_uart_write),f
	movlw	(01h)
	fcall	_uart_write
	goto	l3432
	line	123
	
l534:	
	
l3466:	
;Slave_Programmed UART_1.c: 123: else uart_write(1,0);
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(?_uart_write)
	movlw	(01h)
	fcall	_uart_write
	goto	l3432
	
l535:	
	line	124
;Slave_Programmed UART_1.c: 124: break;
	goto	l3432
	line	126
;Slave_Programmed UART_1.c: 126: case 3:
	
l536:	
	line	127
;Slave_Programmed UART_1.c: 127: if(RA4)uart_write(1,1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(44/8),(44)&7
	goto	u3501
	goto	u3500
u3501:
	goto	l3470
u3500:
	
l3468:	
	clrf	(?_uart_write)
	bsf	status,0
	rlf	(?_uart_write),f
	movlw	(01h)
	fcall	_uart_write
	goto	l3432
	line	128
	
l537:	
	
l3470:	
;Slave_Programmed UART_1.c: 128: else uart_write(1,0);
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(?_uart_write)
	movlw	(01h)
	fcall	_uart_write
	goto	l3432
	
l538:	
	line	129
;Slave_Programmed UART_1.c: 129: break;
	goto	l3432
	line	130
	
l3472:	
;Slave_Programmed UART_1.c: 130: }
	goto	l3432
	line	113
	
l528:	
	
l3474:	
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
	goto	l529
	xorlw	2^1	; case 2
	skipnz
	goto	l533
	xorlw	3^2	; case 3
	skipnz
	goto	l536
	goto	l3432

	line	130
	
l532:	
	line	131
;Slave_Programmed UART_1.c: 131: break;
	goto	l3432
	line	133
;Slave_Programmed UART_1.c: 133: case 5:
	
l539:	
	line	134
	
l3476:	
;Slave_Programmed UART_1.c: 134: data_to_read=uart_read(1);
	movlw	(01h)
	fcall	_uart_read
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@data_to_read)
	line	135
	
l3478:	
;Slave_Programmed UART_1.c: 135: lcd_clr();
	fcall	_lcd_clr
	line	136
	
l3480:	
;Slave_Programmed UART_1.c: 136: k=0;
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_k)
	movlw	high(0)
	movwf	((_k))+1
	line	137
	
l3482:	
;Slave_Programmed UART_1.c: 137: m=0;
	movlw	low(0)
	movwf	(_m)
	movlw	high(0)
	movwf	((_m))+1
	line	138
	
l3484:	
;Slave_Programmed UART_1.c: 138: uart_write(1,'a');
	movlw	(061h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_uart_write)
	movlw	(01h)
	fcall	_uart_write
	line	139
;Slave_Programmed UART_1.c: 139: break;
	goto	l3432
	line	141
;Slave_Programmed UART_1.c: 141: case 6:
	
l540:	
	line	142
	
l3486:	
;Slave_Programmed UART_1.c: 142: data_to_read=uart_read(1);
	movlw	(01h)
	fcall	_uart_read
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@data_to_read)
	line	143
	
l3488:	
;Slave_Programmed UART_1.c: 143: if (k>15)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_k+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(010h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3515
	movlw	low(010h)
	subwf	(_k),w
u3515:

	skipc
	goto	u3511
	goto	u3510
u3511:
	goto	l3496
u3510:
	line	144
	
l3490:	
;Slave_Programmed UART_1.c: 144: {send_config(0xc0+m);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_m),w
	addlw	0C0h
	fcall	_send_config
	line	145
;Slave_Programmed UART_1.c: 145: send_char(data_to_read);
	movf	(main@data_to_read),w
	fcall	_send_char
	line	146
	
l3492:	
;Slave_Programmed UART_1.c: 146: m++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_m),f
	skipnc
	incf	(_m+1),f
	movlw	high(01h)
	addwf	(_m+1),f
	line	147
	
l3494:	
;Slave_Programmed UART_1.c: 147: k++;
	movlw	low(01h)
	addwf	(_k),f
	skipnc
	incf	(_k+1),f
	movlw	high(01h)
	addwf	(_k+1),f
	line	148
;Slave_Programmed UART_1.c: 148: }
	goto	l3500
	line	149
	
l541:	
	line	150
	
l3496:	
;Slave_Programmed UART_1.c: 149: else
;Slave_Programmed UART_1.c: 150: {send_config(0x80+k);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_k),w
	addlw	080h
	fcall	_send_config
	line	151
;Slave_Programmed UART_1.c: 151: send_char(data_to_read);
	movf	(main@data_to_read),w
	fcall	_send_char
	line	152
	
l3498:	
;Slave_Programmed UART_1.c: 152: k++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_k),f
	skipnc
	incf	(_k+1),f
	movlw	high(01h)
	addwf	(_k+1),f
	goto	l3500
	line	153
	
l542:	
	line	154
	
l3500:	
;Slave_Programmed UART_1.c: 153: }
;Slave_Programmed UART_1.c: 154: uart_write(1,'a');
	movlw	(061h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_uart_write)
	movlw	(01h)
	fcall	_uart_write
	line	155
;Slave_Programmed UART_1.c: 155: break;
	goto	l3432
	line	156
	
l3502:	
;Slave_Programmed UART_1.c: 156: }
	goto	l3432
	line	88
	
l516:	
	
l3504:	
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
	goto	l3434
	xorlw	2^1	; case 2
	skipnz
	goto	l3442
	xorlw	3^2	; case 3
	skipnz
	goto	l3450
	xorlw	4^3	; case 4
	skipnz
	goto	l3458
	xorlw	5^4	; case 5
	skipnz
	goto	l3476
	xorlw	6^5	; case 6
	skipnz
	goto	l3486
	goto	l3432

	line	156
	
l520:	
	goto	l3432
	line	157
	
l543:	
	line	84
	goto	l3432
	
l544:	
	line	158
	
l545:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_send_string
psect	text229,local,class=CODE,delta=2
global __ptext229
__ptext229:

;; *************** function _send_string *****************
;; Defined at:
;;		line 193 in file "C:\Users\Phang\Desktop\9.80\PR 27\Slave_Programmed UART_1\Slave_Programmed UART_1.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> STR_2(13), STR_1(12), 
;; Auto vars:     Size  Location     Type
;;  s               1   10[COMMON] PTR const unsigned char 
;;		 -> STR_2(13), STR_1(12), 
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
psect	text229
	file	"C:\Users\Phang\Desktop\9.80\PR 27\Slave_Programmed UART_1\Slave_Programmed UART_1.c"
	line	193
	global	__size_of_send_string
	__size_of_send_string	equ	__end_of_send_string-_send_string
	
_send_string:	
	opt	stack 5
; Regs used in _send_string: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;send_string@s stored from wreg
	movwf	(send_string@s)
	line	194
	
l3382:	
;Slave_Programmed UART_1.c: 194: while (s && *s)send_char (*s++);
	goto	l3388
	
l563:	
	
l3384:	
	movf	(send_string@s),w
	movwf	fsr0
	fcall	stringdir
	fcall	_send_char
	
l3386:	
	movlw	(01h)
	movwf	(??_send_string+0)+0
	movf	(??_send_string+0)+0,w
	addwf	(send_string@s),f
	goto	l3388
	
l562:	
	
l3388:	
	movf	(send_string@s),w
	skipz
	goto	u3430
	goto	l567
u3430:
	
l3390:	
	movf	(send_string@s),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u3441
	goto	u3440
u3441:
	goto	l3384
u3440:
	goto	l567
	
l565:	
	goto	l567
	
l566:	
	line	195
	
l567:	
	return
	opt stack 0
GLOBAL	__end_of_send_string
	__end_of_send_string:
;; =============== function _send_string ends ============

	signat	_send_string,4216
	global	_lcd_goto
psect	text230,local,class=CODE,delta=2
global __ptext230
__ptext230:

;; *************** function _lcd_goto *****************
;; Defined at:
;;		line 198 in file "C:\Users\Phang\Desktop\9.80\PR 27\Slave_Programmed UART_1\Slave_Programmed UART_1.c"
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
psect	text230
	file	"C:\Users\Phang\Desktop\9.80\PR 27\Slave_Programmed UART_1\Slave_Programmed UART_1.c"
	line	198
	global	__size_of_lcd_goto
	__size_of_lcd_goto	equ	__end_of_lcd_goto-_lcd_goto
	
_lcd_goto:	
	opt	stack 5
; Regs used in _lcd_goto: [wreg+status,2+status,0+pclath+cstack]
;lcd_goto@data stored from wreg
	movwf	(lcd_goto@data)
	line	199
	
l3374:	
;Slave_Programmed UART_1.c: 199: if(data<16)
	movlw	(010h)
	subwf	(lcd_goto@data),w
	skipnc
	goto	u3421
	goto	u3420
u3421:
	goto	l3378
u3420:
	line	201
	
l3376:	
;Slave_Programmed UART_1.c: 200: {
;Slave_Programmed UART_1.c: 201: send_config(0x80+data);
	movf	(lcd_goto@data),w
	addlw	080h
	fcall	_send_config
	line	202
;Slave_Programmed UART_1.c: 202: }
	goto	l572
	line	203
	
l570:	
	line	205
	
l3378:	
;Slave_Programmed UART_1.c: 203: else
;Slave_Programmed UART_1.c: 204: {
;Slave_Programmed UART_1.c: 205: data=data-20;
	movf	(lcd_goto@data),w
	addlw	0ECh
	movwf	(??_lcd_goto+0)+0
	movf	(??_lcd_goto+0)+0,w
	movwf	(lcd_goto@data)
	line	206
	
l3380:	
;Slave_Programmed UART_1.c: 206: send_config(0xc0+data);
	movf	(lcd_goto@data),w
	addlw	0C0h
	fcall	_send_config
	goto	l572
	line	207
	
l571:	
	line	208
	
l572:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_goto
	__end_of_lcd_goto:
;; =============== function _lcd_goto ends ============

	signat	_lcd_goto,4216
	global	_lcd_clr
psect	text231,local,class=CODE,delta=2
global __ptext231
__ptext231:

;; *************** function _lcd_clr *****************
;; Defined at:
;;		line 187 in file "C:\Users\Phang\Desktop\9.80\PR 27\Slave_Programmed UART_1\Slave_Programmed UART_1.c"
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
psect	text231
	file	"C:\Users\Phang\Desktop\9.80\PR 27\Slave_Programmed UART_1\Slave_Programmed UART_1.c"
	line	187
	global	__size_of_lcd_clr
	__size_of_lcd_clr	equ	__end_of_lcd_clr-_lcd_clr
	
_lcd_clr:	
	opt	stack 5
; Regs used in _lcd_clr: [wreg+status,2+status,0+pclath+cstack]
	line	188
	
l3372:	
;Slave_Programmed UART_1.c: 188: send_config(0x01);
	movlw	(01h)
	fcall	_send_config
	line	189
;Slave_Programmed UART_1.c: 189: delay(600);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	02h
	movwf	(?_delay+1)
	movlw	058h
	movwf	(?_delay)

	fcall	_delay
	line	190
	
l559:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_clr
	__end_of_lcd_clr:
;; =============== function _lcd_clr ends ============

	signat	_lcd_clr,88
	global	_send_char
psect	text232,local,class=CODE,delta=2
global __ptext232
__ptext232:

;; *************** function _send_char *****************
;; Defined at:
;;		line 177 in file "C:\Users\Phang\Desktop\9.80\PR 27\Slave_Programmed UART_1\Slave_Programmed UART_1.c"
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
psect	text232
	file	"C:\Users\Phang\Desktop\9.80\PR 27\Slave_Programmed UART_1\Slave_Programmed UART_1.c"
	line	177
	global	__size_of_send_char
	__size_of_send_char	equ	__end_of_send_char-_send_char
	
_send_char:	
	opt	stack 6
; Regs used in _send_char: [wreg+status,2+status,0+pclath+cstack]
;send_char@data stored from wreg
	movwf	(send_char@data)
	line	178
	
l3360:	
;Slave_Programmed UART_1.c: 178: RC4=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(60/8),(60)&7
	line	179
	
l3362:	
;Slave_Programmed UART_1.c: 179: PORTB=data;
	movf	(send_char@data),w
	movwf	(6)	;volatile
	line	180
	
l3364:	
;Slave_Programmed UART_1.c: 180: RC5=1;
	bsf	(61/8),(61)&7
	line	181
	
l3366:	
;Slave_Programmed UART_1.c: 181: delay(50);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0
	movwf	(?_delay+1)
	movlw	032h
	movwf	(?_delay)

	fcall	_delay
	line	182
	
l3368:	
;Slave_Programmed UART_1.c: 182: RC5=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7
	line	183
	
l3370:	
;Slave_Programmed UART_1.c: 183: delay(50);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0
	movwf	(?_delay+1)
	movlw	032h
	movwf	(?_delay)

	fcall	_delay
	line	184
	
l556:	
	return
	opt stack 0
GLOBAL	__end_of_send_char
	__end_of_send_char:
;; =============== function _send_char ends ============

	signat	_send_char,4216
	global	_uart_write
psect	text233,local,class=CODE,delta=2
global __ptext233
__ptext233:

;; *************** function _uart_write *****************
;; Defined at:
;;		line 212 in file "C:\Users\Phang\Desktop\9.80\PR 27\Slave_Programmed UART_1\uart_io.c"
;; Parameters:    Size  Location     Type
;;  channel         1    wreg     unsigned char 
;;  data            1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  channel         1    3[COMMON] unsigned char 
;;  i               1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text233
	file	"C:\Users\Phang\Desktop\9.80\PR 27\Slave_Programmed UART_1\uart_io.c"
	line	212
	global	__size_of_uart_write
	__size_of_uart_write	equ	__end_of_uart_write-_uart_write
	
_uart_write:	
	opt	stack 7
; Regs used in _uart_write: [wreg-fsr0h+status,2+status,0]
;uart_write@channel stored from wreg
	movwf	(uart_write@channel)
	line	215
	
l3166:	
;uart_io.c: 213: unsigned char i;
;uart_io.c: 215: switch(channel)
	goto	l3358
	line	217
;uart_io.c: 216: {
;uart_io.c: 217: case 1:
	
l1085:	
	line	218
;uart_io.c: 218: RC2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	219
	
l3168:	
;uart_io.c: 219: _delay((20000000/4)/9600-15);
	opt asmopt_off
movlw	168
movwf	(??_uart_write+0)+0,f
u3527:
decfsz	(??_uart_write+0)+0,f
	goto	u3527
opt asmopt_on

	line	220
	
l3170:	
;uart_io.c: 220: for(i=1;i>0;i=i<<1)
	clrf	(uart_write@i)
	bsf	status,0
	rlf	(uart_write@i),f
	
l3172:	
	movf	(uart_write@i),f
	skipz
	goto	u3181
	goto	u3180
u3181:
	goto	l3176
u3180:
	goto	l3186
	
l3174:	
	goto	l3186
	line	221
	
l1086:	
	line	222
	
l3176:	
;uart_io.c: 221: {
;uart_io.c: 222: if((data&i)==0)
	movf	(uart_write@data),w
	andwf	(uart_write@i),w
	btfss	status,2
	goto	u3191
	goto	u3190
u3191:
	goto	l1088
u3190:
	line	224
	
l3178:	
;uart_io.c: 223: {
;uart_io.c: 224: RC2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	225
	
l3180:	
;uart_io.c: 225: _delay((20000000/4)/9600-21);
	opt asmopt_off
movlw	166
movwf	(??_uart_write+0)+0,f
u3537:
decfsz	(??_uart_write+0)+0,f
	goto	u3537
opt asmopt_on

	line	226
;uart_io.c: 226: }
	goto	l3184
	line	227
	
l1088:	
	line	229
;uart_io.c: 227: else
;uart_io.c: 228: {
;uart_io.c: 229: RC2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	line	230
	
l3182:	
;uart_io.c: 230: _delay((20000000/4)/9600-20);
	opt asmopt_off
movlw	166
movwf	(??_uart_write+0)+0,f
u3547:
decfsz	(??_uart_write+0)+0,f
	goto	u3547
	clrwdt
opt asmopt_on

	goto	l3184
	line	231
	
l1089:	
	line	220
	
l3184:	
	movf	(uart_write@i),w
	movwf	(??_uart_write+0)+0
	addwf	(??_uart_write+0)+0,w
	movwf	(??_uart_write+1)+0
	movf	(??_uart_write+1)+0,w
	movwf	(uart_write@i)
	movf	(uart_write@i),f
	skipz
	goto	u3201
	goto	u3200
u3201:
	goto	l3176
u3200:
	goto	l3186
	
l1087:	
	line	233
	
l3186:	
;uart_io.c: 231: }
;uart_io.c: 232: }
;uart_io.c: 233: _delay(8);
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on

	line	234
	
l3188:	
;uart_io.c: 234: RC2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	line	235
;uart_io.c: 235: _delay((20000000/4)/9600-3);
	opt asmopt_off
movlw	172
movwf	(??_uart_write+0)+0,f
u3557:
decfsz	(??_uart_write+0)+0,f
	goto	u3557
opt asmopt_on

	line	236
;uart_io.c: 236: break;
	goto	l1126
	line	238
;uart_io.c: 238: case 2:
	
l1091:	
	line	239
;uart_io.c: 239: RC0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
	line	240
	
l3190:	
;uart_io.c: 240: _delay((20000000/4)/9600-15);
	opt asmopt_off
movlw	168
movwf	(??_uart_write+0)+0,f
u3567:
decfsz	(??_uart_write+0)+0,f
	goto	u3567
opt asmopt_on

	line	241
	
l3192:	
;uart_io.c: 241: for(i=1;i>0;i=i<<1)
	clrf	(uart_write@i)
	bsf	status,0
	rlf	(uart_write@i),f
	
l3194:	
	movf	(uart_write@i),f
	skipz
	goto	u3211
	goto	u3210
u3211:
	goto	l3198
u3210:
	goto	l3208
	
l3196:	
	goto	l3208
	line	242
	
l1092:	
	line	243
	
l3198:	
;uart_io.c: 242: {
;uart_io.c: 243: if((data&i)==0)
	movf	(uart_write@data),w
	andwf	(uart_write@i),w
	btfss	status,2
	goto	u3221
	goto	u3220
u3221:
	goto	l1094
u3220:
	line	245
	
l3200:	
;uart_io.c: 244: {
;uart_io.c: 245: RC0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
	line	246
	
l3202:	
;uart_io.c: 246: _delay((20000000/4)/9600-21);
	opt asmopt_off
movlw	166
movwf	(??_uart_write+0)+0,f
u3577:
decfsz	(??_uart_write+0)+0,f
	goto	u3577
opt asmopt_on

	line	247
;uart_io.c: 247: }
	goto	l3206
	line	248
	
l1094:	
	line	250
;uart_io.c: 248: else
;uart_io.c: 249: {
;uart_io.c: 250: RC0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	line	251
	
l3204:	
;uart_io.c: 251: _delay((20000000/4)/9600-20);
	opt asmopt_off
movlw	166
movwf	(??_uart_write+0)+0,f
u3587:
decfsz	(??_uart_write+0)+0,f
	goto	u3587
	clrwdt
opt asmopt_on

	goto	l3206
	line	252
	
l1095:	
	line	241
	
l3206:	
	movf	(uart_write@i),w
	movwf	(??_uart_write+0)+0
	addwf	(??_uart_write+0)+0,w
	movwf	(??_uart_write+1)+0
	movf	(??_uart_write+1)+0,w
	movwf	(uart_write@i)
	movf	(uart_write@i),f
	skipz
	goto	u3231
	goto	u3230
u3231:
	goto	l3198
u3230:
	goto	l3208
	
l1093:	
	line	254
	
l3208:	
;uart_io.c: 252: }
;uart_io.c: 253: }
;uart_io.c: 254: _delay(8);
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on

	line	255
	
l3210:	
;uart_io.c: 255: RC0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	line	256
;uart_io.c: 256: _delay((20000000/4)/9600-3);
	opt asmopt_off
movlw	172
movwf	(??_uart_write+0)+0,f
u3597:
decfsz	(??_uart_write+0)+0,f
	goto	u3597
opt asmopt_on

	line	257
;uart_io.c: 257: break;
	goto	l1126
	line	259
;uart_io.c: 259: case 3:
	
l1096:	
	line	260
	
l3212:	
;uart_io.c: 260: dummy_byte=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_dummy_byte)
	line	261
	
l3214:	
;uart_io.c: 261: _delay((20000000/4)/9600-15);
	opt asmopt_off
movlw	168
movwf	(??_uart_write+0)+0,f
u3607:
decfsz	(??_uart_write+0)+0,f
	goto	u3607
opt asmopt_on

	line	262
;uart_io.c: 262: for(i=1;i>0;i=i<<1)
	clrf	(uart_write@i)
	bsf	status,0
	rlf	(uart_write@i),f
	movf	(uart_write@i),f
	skipz
	goto	u3241
	goto	u3240
u3241:
	goto	l3218
u3240:
	goto	l3230
	
l3216:	
	goto	l3230
	line	263
	
l1097:	
	line	264
	
l3218:	
;uart_io.c: 263: {
;uart_io.c: 264: if((data&i)==0)
	movf	(uart_write@data),w
	andwf	(uart_write@i),w
	btfss	status,2
	goto	u3251
	goto	u3250
u3251:
	goto	l3224
u3250:
	line	266
	
l3220:	
;uart_io.c: 265: {
;uart_io.c: 266: dummy_byte=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_dummy_byte)
	line	267
	
l3222:	
;uart_io.c: 267: _delay((20000000/4)/9600-21);
	opt asmopt_off
movlw	166
movwf	(??_uart_write+0)+0,f
u3617:
decfsz	(??_uart_write+0)+0,f
	goto	u3617
opt asmopt_on

	line	268
;uart_io.c: 268: }
	goto	l1100
	line	269
	
l1099:	
	line	271
	
l3224:	
;uart_io.c: 269: else
;uart_io.c: 270: {
;uart_io.c: 271: dummy_byte=1;
	clrf	(_dummy_byte)
	bsf	status,0
	rlf	(_dummy_byte),f
	line	272
	
l3226:	
;uart_io.c: 272: _delay((20000000/4)/9600-20);
	opt asmopt_off
movlw	166
movwf	(??_uart_write+0)+0,f
u3627:
decfsz	(??_uart_write+0)+0,f
	goto	u3627
	clrwdt
opt asmopt_on

	line	273
	
l1100:	
	line	262
	movf	(uart_write@i),w
	movwf	(??_uart_write+0)+0
	addwf	(??_uart_write+0)+0,w
	movwf	(??_uart_write+1)+0
	movf	(??_uart_write+1)+0,w
	movwf	(uart_write@i)
	
l3228:	
	movf	(uart_write@i),f
	skipz
	goto	u3261
	goto	u3260
u3261:
	goto	l3218
u3260:
	goto	l3230
	
l1098:	
	line	275
	
l3230:	
;uart_io.c: 273: }
;uart_io.c: 274: }
;uart_io.c: 275: _delay(8);
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on

	line	276
	
l3232:	
;uart_io.c: 276: dummy_byte=1;
	clrf	(_dummy_byte)
	bsf	status,0
	rlf	(_dummy_byte),f
	line	277
	
l3234:	
;uart_io.c: 277: _delay((20000000/4)/9600-3);
	opt asmopt_off
movlw	172
movwf	(??_uart_write+0)+0,f
u3637:
decfsz	(??_uart_write+0)+0,f
	goto	u3637
opt asmopt_on

	line	278
;uart_io.c: 278: break;
	goto	l1126
	line	280
;uart_io.c: 280: case 4:
	
l1101:	
	line	281
	
l3236:	
;uart_io.c: 281: dummy_byte=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_dummy_byte)
	line	282
	
l3238:	
;uart_io.c: 282: _delay((20000000/4)/9600-15);
	opt asmopt_off
movlw	168
movwf	(??_uart_write+0)+0,f
u3647:
decfsz	(??_uart_write+0)+0,f
	goto	u3647
opt asmopt_on

	line	283
;uart_io.c: 283: for(i=1;i>0;i=i<<1)
	clrf	(uart_write@i)
	bsf	status,0
	rlf	(uart_write@i),f
	movf	(uart_write@i),f
	skipz
	goto	u3271
	goto	u3270
u3271:
	goto	l3242
u3270:
	goto	l3254
	
l3240:	
	goto	l3254
	line	284
	
l1102:	
	line	285
	
l3242:	
;uart_io.c: 284: {
;uart_io.c: 285: if((data&i)==0)
	movf	(uart_write@data),w
	andwf	(uart_write@i),w
	btfss	status,2
	goto	u3281
	goto	u3280
u3281:
	goto	l3248
u3280:
	line	287
	
l3244:	
;uart_io.c: 286: {
;uart_io.c: 287: dummy_byte=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_dummy_byte)
	line	288
	
l3246:	
;uart_io.c: 288: _delay((20000000/4)/9600-21);
	opt asmopt_off
movlw	166
movwf	(??_uart_write+0)+0,f
u3657:
decfsz	(??_uart_write+0)+0,f
	goto	u3657
opt asmopt_on

	line	289
;uart_io.c: 289: }
	goto	l1105
	line	290
	
l1104:	
	line	292
	
l3248:	
;uart_io.c: 290: else
;uart_io.c: 291: {
;uart_io.c: 292: dummy_byte=1;
	clrf	(_dummy_byte)
	bsf	status,0
	rlf	(_dummy_byte),f
	line	293
	
l3250:	
;uart_io.c: 293: _delay((20000000/4)/9600-20);
	opt asmopt_off
movlw	166
movwf	(??_uart_write+0)+0,f
u3667:
decfsz	(??_uart_write+0)+0,f
	goto	u3667
	clrwdt
opt asmopt_on

	line	294
	
l1105:	
	line	283
	movf	(uart_write@i),w
	movwf	(??_uart_write+0)+0
	addwf	(??_uart_write+0)+0,w
	movwf	(??_uart_write+1)+0
	movf	(??_uart_write+1)+0,w
	movwf	(uart_write@i)
	
l3252:	
	movf	(uart_write@i),f
	skipz
	goto	u3291
	goto	u3290
u3291:
	goto	l3242
u3290:
	goto	l3254
	
l1103:	
	line	296
	
l3254:	
;uart_io.c: 294: }
;uart_io.c: 295: }
;uart_io.c: 296: _delay(8);
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on

	line	297
	
l3256:	
;uart_io.c: 297: dummy_byte=1;
	clrf	(_dummy_byte)
	bsf	status,0
	rlf	(_dummy_byte),f
	line	298
	
l3258:	
;uart_io.c: 298: _delay((20000000/4)/9600-3);
	opt asmopt_off
movlw	172
movwf	(??_uart_write+0)+0,f
u3677:
decfsz	(??_uart_write+0)+0,f
	goto	u3677
opt asmopt_on

	line	299
;uart_io.c: 299: break;
	goto	l1126
	line	301
;uart_io.c: 301: case 5:
	
l1106:	
	line	302
	
l3260:	
;uart_io.c: 302: dummy_byte=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_dummy_byte)
	line	303
	
l3262:	
;uart_io.c: 303: _delay((20000000/4)/9600-15);
	opt asmopt_off
movlw	168
movwf	(??_uart_write+0)+0,f
u3687:
decfsz	(??_uart_write+0)+0,f
	goto	u3687
opt asmopt_on

	line	304
;uart_io.c: 304: for(i=1;i>0;i=i<<1)
	clrf	(uart_write@i)
	bsf	status,0
	rlf	(uart_write@i),f
	movf	(uart_write@i),f
	skipz
	goto	u3301
	goto	u3300
u3301:
	goto	l3266
u3300:
	goto	l3278
	
l3264:	
	goto	l3278
	line	305
	
l1107:	
	line	306
	
l3266:	
;uart_io.c: 305: {
;uart_io.c: 306: if((data&i)==0)
	movf	(uart_write@data),w
	andwf	(uart_write@i),w
	btfss	status,2
	goto	u3311
	goto	u3310
u3311:
	goto	l3272
u3310:
	line	308
	
l3268:	
;uart_io.c: 307: {
;uart_io.c: 308: dummy_byte=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_dummy_byte)
	line	309
	
l3270:	
;uart_io.c: 309: _delay((20000000/4)/9600-21);
	opt asmopt_off
movlw	166
movwf	(??_uart_write+0)+0,f
u3697:
decfsz	(??_uart_write+0)+0,f
	goto	u3697
opt asmopt_on

	line	310
;uart_io.c: 310: }
	goto	l1110
	line	311
	
l1109:	
	line	313
	
l3272:	
;uart_io.c: 311: else
;uart_io.c: 312: {
;uart_io.c: 313: dummy_byte=1;
	clrf	(_dummy_byte)
	bsf	status,0
	rlf	(_dummy_byte),f
	line	314
	
l3274:	
;uart_io.c: 314: _delay((20000000/4)/9600-20);
	opt asmopt_off
movlw	166
movwf	(??_uart_write+0)+0,f
u3707:
decfsz	(??_uart_write+0)+0,f
	goto	u3707
	clrwdt
opt asmopt_on

	line	315
	
l1110:	
	line	304
	movf	(uart_write@i),w
	movwf	(??_uart_write+0)+0
	addwf	(??_uart_write+0)+0,w
	movwf	(??_uart_write+1)+0
	movf	(??_uart_write+1)+0,w
	movwf	(uart_write@i)
	
l3276:	
	movf	(uart_write@i),f
	skipz
	goto	u3321
	goto	u3320
u3321:
	goto	l3266
u3320:
	goto	l3278
	
l1108:	
	line	317
	
l3278:	
;uart_io.c: 315: }
;uart_io.c: 316: }
;uart_io.c: 317: _delay(8);
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on

	line	318
	
l3280:	
;uart_io.c: 318: dummy_byte=1;
	clrf	(_dummy_byte)
	bsf	status,0
	rlf	(_dummy_byte),f
	line	319
	
l3282:	
;uart_io.c: 319: _delay((20000000/4)/9600-3);
	opt asmopt_off
movlw	172
movwf	(??_uart_write+0)+0,f
u3717:
decfsz	(??_uart_write+0)+0,f
	goto	u3717
opt asmopt_on

	line	320
;uart_io.c: 320: break;
	goto	l1126
	line	322
;uart_io.c: 322: case 6:
	
l1111:	
	line	323
	
l3284:	
;uart_io.c: 323: dummy_byte=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_dummy_byte)
	line	324
	
l3286:	
;uart_io.c: 324: _delay((20000000/4)/9600-15);
	opt asmopt_off
movlw	168
movwf	(??_uart_write+0)+0,f
u3727:
decfsz	(??_uart_write+0)+0,f
	goto	u3727
opt asmopt_on

	line	325
;uart_io.c: 325: for(i=1;i>0;i=i<<1)
	clrf	(uart_write@i)
	bsf	status,0
	rlf	(uart_write@i),f
	movf	(uart_write@i),f
	skipz
	goto	u3331
	goto	u3330
u3331:
	goto	l3290
u3330:
	goto	l3302
	
l3288:	
	goto	l3302
	line	326
	
l1112:	
	line	327
	
l3290:	
;uart_io.c: 326: {
;uart_io.c: 327: if((data&i)==0)
	movf	(uart_write@data),w
	andwf	(uart_write@i),w
	btfss	status,2
	goto	u3341
	goto	u3340
u3341:
	goto	l3296
u3340:
	line	329
	
l3292:	
;uart_io.c: 328: {
;uart_io.c: 329: dummy_byte=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_dummy_byte)
	line	330
	
l3294:	
;uart_io.c: 330: _delay((20000000/4)/9600-21);
	opt asmopt_off
movlw	166
movwf	(??_uart_write+0)+0,f
u3737:
decfsz	(??_uart_write+0)+0,f
	goto	u3737
opt asmopt_on

	line	331
;uart_io.c: 331: }
	goto	l1115
	line	332
	
l1114:	
	line	334
	
l3296:	
;uart_io.c: 332: else
;uart_io.c: 333: {
;uart_io.c: 334: dummy_byte=1;
	clrf	(_dummy_byte)
	bsf	status,0
	rlf	(_dummy_byte),f
	line	335
	
l3298:	
;uart_io.c: 335: _delay((20000000/4)/9600-20);
	opt asmopt_off
movlw	166
movwf	(??_uart_write+0)+0,f
u3747:
decfsz	(??_uart_write+0)+0,f
	goto	u3747
	clrwdt
opt asmopt_on

	line	336
	
l1115:	
	line	325
	movf	(uart_write@i),w
	movwf	(??_uart_write+0)+0
	addwf	(??_uart_write+0)+0,w
	movwf	(??_uart_write+1)+0
	movf	(??_uart_write+1)+0,w
	movwf	(uart_write@i)
	
l3300:	
	movf	(uart_write@i),f
	skipz
	goto	u3351
	goto	u3350
u3351:
	goto	l3290
u3350:
	goto	l3302
	
l1113:	
	line	338
	
l3302:	
;uart_io.c: 336: }
;uart_io.c: 337: }
;uart_io.c: 338: _delay(8);
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on

	line	339
	
l3304:	
;uart_io.c: 339: dummy_byte=1;
	clrf	(_dummy_byte)
	bsf	status,0
	rlf	(_dummy_byte),f
	line	340
	
l3306:	
;uart_io.c: 340: _delay((20000000/4)/9600-3);
	opt asmopt_off
movlw	172
movwf	(??_uart_write+0)+0,f
u3757:
decfsz	(??_uart_write+0)+0,f
	goto	u3757
opt asmopt_on

	line	341
;uart_io.c: 341: break;
	goto	l1126
	line	343
;uart_io.c: 343: case 7:
	
l1116:	
	line	344
	
l3308:	
;uart_io.c: 344: dummy_byte=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_dummy_byte)
	line	345
	
l3310:	
;uart_io.c: 345: _delay((20000000/4)/9600-15);
	opt asmopt_off
movlw	168
movwf	(??_uart_write+0)+0,f
u3767:
decfsz	(??_uart_write+0)+0,f
	goto	u3767
opt asmopt_on

	line	346
;uart_io.c: 346: for(i=1;i>0;i=i<<1)
	clrf	(uart_write@i)
	bsf	status,0
	rlf	(uart_write@i),f
	movf	(uart_write@i),f
	skipz
	goto	u3361
	goto	u3360
u3361:
	goto	l3314
u3360:
	goto	l3326
	
l3312:	
	goto	l3326
	line	347
	
l1117:	
	line	348
	
l3314:	
;uart_io.c: 347: {
;uart_io.c: 348: if((data&i)==0)
	movf	(uart_write@data),w
	andwf	(uart_write@i),w
	btfss	status,2
	goto	u3371
	goto	u3370
u3371:
	goto	l3320
u3370:
	line	350
	
l3316:	
;uart_io.c: 349: {
;uart_io.c: 350: dummy_byte=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_dummy_byte)
	line	351
	
l3318:	
;uart_io.c: 351: _delay((20000000/4)/9600-21);
	opt asmopt_off
movlw	166
movwf	(??_uart_write+0)+0,f
u3777:
decfsz	(??_uart_write+0)+0,f
	goto	u3777
opt asmopt_on

	line	352
;uart_io.c: 352: }
	goto	l1120
	line	353
	
l1119:	
	line	355
	
l3320:	
;uart_io.c: 353: else
;uart_io.c: 354: {
;uart_io.c: 355: dummy_byte=1;
	clrf	(_dummy_byte)
	bsf	status,0
	rlf	(_dummy_byte),f
	line	356
	
l3322:	
;uart_io.c: 356: _delay((20000000/4)/9600-20);
	opt asmopt_off
movlw	166
movwf	(??_uart_write+0)+0,f
u3787:
decfsz	(??_uart_write+0)+0,f
	goto	u3787
	clrwdt
opt asmopt_on

	line	357
	
l1120:	
	line	346
	movf	(uart_write@i),w
	movwf	(??_uart_write+0)+0
	addwf	(??_uart_write+0)+0,w
	movwf	(??_uart_write+1)+0
	movf	(??_uart_write+1)+0,w
	movwf	(uart_write@i)
	
l3324:	
	movf	(uart_write@i),f
	skipz
	goto	u3381
	goto	u3380
u3381:
	goto	l3314
u3380:
	goto	l3326
	
l1118:	
	line	359
	
l3326:	
;uart_io.c: 357: }
;uart_io.c: 358: }
;uart_io.c: 359: _delay(8);
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on

	line	360
	
l3328:	
;uart_io.c: 360: dummy_byte=1;
	clrf	(_dummy_byte)
	bsf	status,0
	rlf	(_dummy_byte),f
	line	361
	
l3330:	
;uart_io.c: 361: _delay((20000000/4)/9600-3);
	opt asmopt_off
movlw	172
movwf	(??_uart_write+0)+0,f
u3797:
decfsz	(??_uart_write+0)+0,f
	goto	u3797
opt asmopt_on

	line	362
;uart_io.c: 362: break;
	goto	l1126
	line	364
;uart_io.c: 364: case 8:
	
l1121:	
	line	365
	
l3332:	
;uart_io.c: 365: dummy_byte=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_dummy_byte)
	line	366
	
l3334:	
;uart_io.c: 366: _delay((20000000/4)/9600-15);
	opt asmopt_off
movlw	168
movwf	(??_uart_write+0)+0,f
u3807:
decfsz	(??_uart_write+0)+0,f
	goto	u3807
opt asmopt_on

	line	367
;uart_io.c: 367: for(i=1;i>0;i=i<<1)
	clrf	(uart_write@i)
	bsf	status,0
	rlf	(uart_write@i),f
	movf	(uart_write@i),f
	skipz
	goto	u3391
	goto	u3390
u3391:
	goto	l3338
u3390:
	goto	l3350
	
l3336:	
	goto	l3350
	line	368
	
l1122:	
	line	369
	
l3338:	
;uart_io.c: 368: {
;uart_io.c: 369: if((data&i)==0)
	movf	(uart_write@data),w
	andwf	(uart_write@i),w
	btfss	status,2
	goto	u3401
	goto	u3400
u3401:
	goto	l3344
u3400:
	line	371
	
l3340:	
;uart_io.c: 370: {
;uart_io.c: 371: dummy_byte=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_dummy_byte)
	line	372
	
l3342:	
;uart_io.c: 372: _delay((20000000/4)/9600-21);
	opt asmopt_off
movlw	166
movwf	(??_uart_write+0)+0,f
u3817:
decfsz	(??_uart_write+0)+0,f
	goto	u3817
opt asmopt_on

	line	373
;uart_io.c: 373: }
	goto	l1125
	line	374
	
l1124:	
	line	376
	
l3344:	
;uart_io.c: 374: else
;uart_io.c: 375: {
;uart_io.c: 376: dummy_byte=1;
	clrf	(_dummy_byte)
	bsf	status,0
	rlf	(_dummy_byte),f
	line	377
	
l3346:	
;uart_io.c: 377: _delay((20000000/4)/9600-20);
	opt asmopt_off
movlw	166
movwf	(??_uart_write+0)+0,f
u3827:
decfsz	(??_uart_write+0)+0,f
	goto	u3827
	clrwdt
opt asmopt_on

	line	378
	
l1125:	
	line	367
	movf	(uart_write@i),w
	movwf	(??_uart_write+0)+0
	addwf	(??_uart_write+0)+0,w
	movwf	(??_uart_write+1)+0
	movf	(??_uart_write+1)+0,w
	movwf	(uart_write@i)
	
l3348:	
	movf	(uart_write@i),f
	skipz
	goto	u3411
	goto	u3410
u3411:
	goto	l3338
u3410:
	goto	l3350
	
l1123:	
	line	380
	
l3350:	
;uart_io.c: 378: }
;uart_io.c: 379: }
;uart_io.c: 380: _delay(8);
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on

	line	381
	
l3352:	
;uart_io.c: 381: dummy_byte=1;
	clrf	(_dummy_byte)
	bsf	status,0
	rlf	(_dummy_byte),f
	line	382
	
l3354:	
;uart_io.c: 382: _delay((20000000/4)/9600-3);
	opt asmopt_off
movlw	172
movwf	(??_uart_write+0)+0,f
u3837:
decfsz	(??_uart_write+0)+0,f
	goto	u3837
opt asmopt_on

	line	383
;uart_io.c: 383: break;
	goto	l1126
	line	385
	
l3356:	
;uart_io.c: 385: }
	goto	l1126
	line	215
	
l1084:	
	
l3358:	
	movf	(uart_write@channel),w
	; Switch size 1, requested type "space"
; Number of cases is 8, Range of values is 1 to 8
; switch strategies available:
; Name         Bytes Cycles
; simple_byte    25    13 (average)
; direct_byte    46    22 (fixed)
;	Chosen strategy is simple_byte

	xorlw	1^0	; case 1
	skipnz
	goto	l1085
	xorlw	2^1	; case 2
	skipnz
	goto	l1091
	xorlw	3^2	; case 3
	skipnz
	goto	l3212
	xorlw	4^3	; case 4
	skipnz
	goto	l3236
	xorlw	5^4	; case 5
	skipnz
	goto	l3260
	xorlw	6^5	; case 6
	skipnz
	goto	l3284
	xorlw	7^6	; case 7
	skipnz
	goto	l3308
	xorlw	8^7	; case 8
	skipnz
	goto	l3332
	goto	l1126

	line	385
	
l1090:	
	line	386
	
l1126:	
	return
	opt stack 0
GLOBAL	__end_of_uart_write
	__end_of_uart_write:
;; =============== function _uart_write ends ============

	signat	_uart_write,8312
	global	_uart_read
psect	text234,local,class=CODE,delta=2
global __ptext234
__ptext234:

;; *************** function _uart_read *****************
;; Defined at:
;;		line 390 in file "C:\Users\Phang\Desktop\9.80\PR 27\Slave_Programmed UART_1\uart_io.c"
;; Parameters:    Size  Location     Type
;;  channel         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  channel         1    3[COMMON] unsigned char 
;;  i               1    5[COMMON] unsigned char 
;;  result          1    4[COMMON] unsigned char 
;;  dummy_mask      1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text234
	file	"C:\Users\Phang\Desktop\9.80\PR 27\Slave_Programmed UART_1\uart_io.c"
	line	390
	global	__size_of_uart_read
	__size_of_uart_read	equ	__end_of_uart_read-_uart_read
	
_uart_read:	
	opt	stack 7
; Regs used in _uart_read: [wreg-fsr0h+status,2+status,0]
;uart_read@channel stored from wreg
	line	392
	movwf	(uart_read@channel)
	
l3002:	
;uart_io.c: 391: unsigned char i;
;uart_io.c: 392: unsigned char result=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(uart_read@result)
	line	393
;uart_io.c: 393: unsigned char dummy_mask=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(uart_read@dummy_mask)
	line	395
;uart_io.c: 395: switch(channel)
	goto	l3160
	line	397
;uart_io.c: 396: {
;uart_io.c: 397: case 1:
	
l1130:	
	line	398
;uart_io.c: 398: while(RC3);
	goto	l1131
	
l1132:	
	
l1131:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(59/8),(59)&7
	goto	u2861
	goto	u2860
u2861:
	goto	l1131
u2860:
	goto	l3004
	
l1133:	
	line	399
	
l3004:	
;uart_io.c: 399: _delay((20000000/4)/9600-10);
	opt asmopt_off
movlw	169
movwf	(??_uart_read+0)+0,f
u3847:
decfsz	(??_uart_read+0)+0,f
	goto	u3847
	nop2	;nop
opt asmopt_on

	line	400
;uart_io.c: 400: _delay((20000000/4)/9600/2);
	opt asmopt_off
movlw	86
movwf	(??_uart_read+0)+0,f
u3857:
decfsz	(??_uart_read+0)+0,f
	goto	u3857
	clrwdt
opt asmopt_on

	line	401
	
l3006:	
;uart_io.c: 401: for(i=1;i>0;i=i<<1)
	clrf	(uart_read@i)
	bsf	status,0
	rlf	(uart_read@i),f
	
l3008:	
	movf	(uart_read@i),f
	skipz
	goto	u2871
	goto	u2870
u2871:
	goto	l1134
u2870:
	goto	l3018
	
l3010:	
	goto	l3018
	line	402
	
l1134:	
	line	403
;uart_io.c: 402: {
;uart_io.c: 403: if(RC3==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(59/8),(59)&7
	goto	u2881
	goto	u2880
u2881:
	goto	l3014
u2880:
	line	405
	
l3012:	
;uart_io.c: 404: {
;uart_io.c: 405: result|=i;
	movf	(uart_read@i),w
	movwf	(??_uart_read+0)+0
	movf	(??_uart_read+0)+0,w
	iorwf	(uart_read@result),f
	line	406
;uart_io.c: 406: }
	goto	l3014
	line	407
	
l1136:	
	goto	l3014
	line	410
	
l1137:	
	line	411
	
l3014:	
;uart_io.c: 410: }
;uart_io.c: 411: _delay((20000000/4)/9600-20);
	opt asmopt_off
movlw	166
movwf	(??_uart_read+0)+0,f
u3867:
decfsz	(??_uart_read+0)+0,f
	goto	u3867
	clrwdt
opt asmopt_on

	line	401
	
l3016:	
	movf	(uart_read@i),w
	movwf	(??_uart_read+0)+0
	addwf	(??_uart_read+0)+0,w
	movwf	(??_uart_read+1)+0
	movf	(??_uart_read+1)+0,w
	movwf	(uart_read@i)
	movf	(uart_read@i),f
	skipz
	goto	u2891
	goto	u2890
u2891:
	goto	l1134
u2890:
	goto	l3018
	
l1135:	
	line	413
	
l3018:	
;uart_io.c: 412: }
;uart_io.c: 413: _delay((20000000/4)/9600/2);
	opt asmopt_off
movlw	86
movwf	(??_uart_read+0)+0,f
u3877:
decfsz	(??_uart_read+0)+0,f
	goto	u3877
	clrwdt
opt asmopt_on

	line	414
;uart_io.c: 414: break;
	goto	l3162
	line	415
;uart_io.c: 415: case 2:
	
l1139:	
	line	416
;uart_io.c: 416: while(RC1);
	goto	l1140
	
l1141:	
	
l1140:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(57/8),(57)&7
	goto	u2901
	goto	u2900
u2901:
	goto	l1140
u2900:
	goto	l3020
	
l1142:	
	line	417
	
l3020:	
;uart_io.c: 417: _delay((20000000/4)/9600-10);
	opt asmopt_off
movlw	169
movwf	(??_uart_read+0)+0,f
u3887:
decfsz	(??_uart_read+0)+0,f
	goto	u3887
	nop2	;nop
opt asmopt_on

	line	418
;uart_io.c: 418: _delay((20000000/4)/9600/2);
	opt asmopt_off
movlw	86
movwf	(??_uart_read+0)+0,f
u3897:
decfsz	(??_uart_read+0)+0,f
	goto	u3897
	clrwdt
opt asmopt_on

	line	419
	
l3022:	
;uart_io.c: 419: for(i=1;i>0;i=i<<1)
	clrf	(uart_read@i)
	bsf	status,0
	rlf	(uart_read@i),f
	
l3024:	
	movf	(uart_read@i),f
	skipz
	goto	u2911
	goto	u2910
u2911:
	goto	l1143
u2910:
	goto	l3034
	
l3026:	
	goto	l3034
	line	420
	
l1143:	
	line	421
;uart_io.c: 420: {
;uart_io.c: 421: if(RC1==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(57/8),(57)&7
	goto	u2921
	goto	u2920
u2921:
	goto	l3030
u2920:
	line	423
	
l3028:	
;uart_io.c: 422: {
;uart_io.c: 423: result|=i;
	movf	(uart_read@i),w
	movwf	(??_uart_read+0)+0
	movf	(??_uart_read+0)+0,w
	iorwf	(uart_read@result),f
	line	424
;uart_io.c: 424: }
	goto	l3030
	line	425
	
l1145:	
	goto	l3030
	line	428
	
l1146:	
	line	429
	
l3030:	
;uart_io.c: 428: }
;uart_io.c: 429: _delay((20000000/4)/9600-20);
	opt asmopt_off
movlw	166
movwf	(??_uart_read+0)+0,f
u3907:
decfsz	(??_uart_read+0)+0,f
	goto	u3907
	clrwdt
opt asmopt_on

	line	419
	
l3032:	
	movf	(uart_read@i),w
	movwf	(??_uart_read+0)+0
	addwf	(??_uart_read+0)+0,w
	movwf	(??_uart_read+1)+0
	movf	(??_uart_read+1)+0,w
	movwf	(uart_read@i)
	movf	(uart_read@i),f
	skipz
	goto	u2931
	goto	u2930
u2931:
	goto	l1143
u2930:
	goto	l3034
	
l1144:	
	line	431
	
l3034:	
;uart_io.c: 430: }
;uart_io.c: 431: _delay((20000000/4)/9600/2);
	opt asmopt_off
movlw	86
movwf	(??_uart_read+0)+0,f
u3917:
decfsz	(??_uart_read+0)+0,f
	goto	u3917
	clrwdt
opt asmopt_on

	line	432
;uart_io.c: 432: break;
	goto	l3162
	line	433
;uart_io.c: 433: case 3:
	
l1147:	
	line	434
	
l3036:	
;uart_io.c: 434: result=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(uart_read@result)
	line	435
;uart_io.c: 435: while(dummy_byte);
	goto	l3038
	
l1149:	
	goto	l3038
	
l1148:	
	
l3038:	
	movf	(_dummy_byte),f
	skipz
	goto	u2941
	goto	u2940
u2941:
	goto	l3038
u2940:
	goto	l3040
	
l1150:	
	line	436
	
l3040:	
;uart_io.c: 436: _delay((20000000/4)/9600-10);
	opt asmopt_off
movlw	169
movwf	(??_uart_read+0)+0,f
u3927:
decfsz	(??_uart_read+0)+0,f
	goto	u3927
	nop2	;nop
opt asmopt_on

	line	437
;uart_io.c: 437: _delay((20000000/4)/9600/2);
	opt asmopt_off
movlw	86
movwf	(??_uart_read+0)+0,f
u3937:
decfsz	(??_uart_read+0)+0,f
	goto	u3937
	clrwdt
opt asmopt_on

	line	438
	
l3042:	
;uart_io.c: 438: for(i=1;i>0;i=i<<1)
	clrf	(uart_read@i)
	bsf	status,0
	rlf	(uart_read@i),f
	
l3044:	
	movf	(uart_read@i),f
	skipz
	goto	u2951
	goto	u2950
u2951:
	goto	l3048
u2950:
	goto	l3056
	
l3046:	
	goto	l3056
	line	439
	
l1151:	
	line	440
	
l3048:	
;uart_io.c: 439: {
;uart_io.c: 440: if(dummy_byte)
	movf	(_dummy_byte),w
	skipz
	goto	u2960
	goto	l3052
u2960:
	line	442
	
l3050:	
;uart_io.c: 441: {
;uart_io.c: 442: result|=i;
	movf	(uart_read@i),w
	movwf	(??_uart_read+0)+0
	movf	(??_uart_read+0)+0,w
	iorwf	(uart_read@result),f
	line	443
;uart_io.c: 443: }
	goto	l3052
	line	444
	
l1153:	
	goto	l3052
	line	447
	
l1154:	
	line	448
	
l3052:	
;uart_io.c: 447: }
;uart_io.c: 448: _delay((20000000/4)/9600-20);
	opt asmopt_off
movlw	166
movwf	(??_uart_read+0)+0,f
u3947:
decfsz	(??_uart_read+0)+0,f
	goto	u3947
	clrwdt
opt asmopt_on

	line	438
	
l3054:	
	movf	(uart_read@i),w
	movwf	(??_uart_read+0)+0
	addwf	(??_uart_read+0)+0,w
	movwf	(??_uart_read+1)+0
	movf	(??_uart_read+1)+0,w
	movwf	(uart_read@i)
	movf	(uart_read@i),f
	skipz
	goto	u2971
	goto	u2970
u2971:
	goto	l3048
u2970:
	goto	l3056
	
l1152:	
	line	450
	
l3056:	
;uart_io.c: 449: }
;uart_io.c: 450: _delay((20000000/4)/9600/2);
	opt asmopt_off
movlw	86
movwf	(??_uart_read+0)+0,f
u3957:
decfsz	(??_uart_read+0)+0,f
	goto	u3957
	clrwdt
opt asmopt_on

	line	451
;uart_io.c: 451: break;
	goto	l3162
	line	452
;uart_io.c: 452: case 4:
	
l1155:	
	line	453
;uart_io.c: 453: while(dummy_byte);
	goto	l3058
	
l1157:	
	goto	l3058
	
l1156:	
	
l3058:	
	movf	(_dummy_byte),f
	skipz
	goto	u2981
	goto	u2980
u2981:
	goto	l3058
u2980:
	goto	l3060
	
l1158:	
	line	454
	
l3060:	
;uart_io.c: 454: _delay((20000000/4)/9600-10);
	opt asmopt_off
movlw	169
movwf	(??_uart_read+0)+0,f
u3967:
decfsz	(??_uart_read+0)+0,f
	goto	u3967
	nop2	;nop
opt asmopt_on

	line	455
;uart_io.c: 455: _delay((20000000/4)/9600/2);
	opt asmopt_off
movlw	86
movwf	(??_uart_read+0)+0,f
u3977:
decfsz	(??_uart_read+0)+0,f
	goto	u3977
	clrwdt
opt asmopt_on

	line	456
	
l3062:	
;uart_io.c: 456: for(i=1;i>0;i=i<<1)
	clrf	(uart_read@i)
	bsf	status,0
	rlf	(uart_read@i),f
	
l3064:	
	movf	(uart_read@i),f
	skipz
	goto	u2991
	goto	u2990
u2991:
	goto	l3068
u2990:
	goto	l3076
	
l3066:	
	goto	l3076
	line	457
	
l1159:	
	line	458
	
l3068:	
;uart_io.c: 457: {
;uart_io.c: 458: if(dummy_byte==1)
	movf	(_dummy_byte),w
	xorlw	01h
	skipz
	goto	u3001
	goto	u3000
u3001:
	goto	l3072
u3000:
	line	460
	
l3070:	
;uart_io.c: 459: {
;uart_io.c: 460: result|=i;
	movf	(uart_read@i),w
	movwf	(??_uart_read+0)+0
	movf	(??_uart_read+0)+0,w
	iorwf	(uart_read@result),f
	line	461
;uart_io.c: 461: }
	goto	l3072
	line	462
	
l1161:	
	goto	l3072
	line	465
	
l1162:	
	line	466
	
l3072:	
;uart_io.c: 465: }
;uart_io.c: 466: _delay((20000000/4)/9600-20);
	opt asmopt_off
movlw	166
movwf	(??_uart_read+0)+0,f
u3987:
decfsz	(??_uart_read+0)+0,f
	goto	u3987
	clrwdt
opt asmopt_on

	line	456
	
l3074:	
	movf	(uart_read@i),w
	movwf	(??_uart_read+0)+0
	addwf	(??_uart_read+0)+0,w
	movwf	(??_uart_read+1)+0
	movf	(??_uart_read+1)+0,w
	movwf	(uart_read@i)
	movf	(uart_read@i),f
	skipz
	goto	u3011
	goto	u3010
u3011:
	goto	l3068
u3010:
	goto	l3076
	
l1160:	
	line	468
	
l3076:	
;uart_io.c: 467: }
;uart_io.c: 468: _delay((20000000/4)/9600/2);
	opt asmopt_off
movlw	86
movwf	(??_uart_read+0)+0,f
u3997:
decfsz	(??_uart_read+0)+0,f
	goto	u3997
	clrwdt
opt asmopt_on

	line	469
;uart_io.c: 469: break;
	goto	l3162
	line	470
;uart_io.c: 470: case 5:
	
l1163:	
	line	471
;uart_io.c: 471: while(dummy_byte);
	goto	l3078
	
l1165:	
	goto	l3078
	
l1164:	
	
l3078:	
	movf	(_dummy_byte),f
	skipz
	goto	u3021
	goto	u3020
u3021:
	goto	l3078
u3020:
	goto	l3080
	
l1166:	
	line	472
	
l3080:	
;uart_io.c: 472: _delay((20000000/4)/9600-10);
	opt asmopt_off
movlw	169
movwf	(??_uart_read+0)+0,f
u4007:
decfsz	(??_uart_read+0)+0,f
	goto	u4007
	nop2	;nop
opt asmopt_on

	line	473
;uart_io.c: 473: _delay((20000000/4)/9600/2);
	opt asmopt_off
movlw	86
movwf	(??_uart_read+0)+0,f
u4017:
decfsz	(??_uart_read+0)+0,f
	goto	u4017
	clrwdt
opt asmopt_on

	line	474
	
l3082:	
;uart_io.c: 474: for(i=1;i>0;i=i<<1)
	clrf	(uart_read@i)
	bsf	status,0
	rlf	(uart_read@i),f
	
l3084:	
	movf	(uart_read@i),f
	skipz
	goto	u3031
	goto	u3030
u3031:
	goto	l3088
u3030:
	goto	l3096
	
l3086:	
	goto	l3096
	line	475
	
l1167:	
	line	476
	
l3088:	
;uart_io.c: 475: {
;uart_io.c: 476: if(dummy_byte==1)
	movf	(_dummy_byte),w
	xorlw	01h
	skipz
	goto	u3041
	goto	u3040
u3041:
	goto	l3092
u3040:
	line	478
	
l3090:	
;uart_io.c: 477: {
;uart_io.c: 478: result|=i;
	movf	(uart_read@i),w
	movwf	(??_uart_read+0)+0
	movf	(??_uart_read+0)+0,w
	iorwf	(uart_read@result),f
	line	479
;uart_io.c: 479: }
	goto	l3092
	line	480
	
l1169:	
	goto	l3092
	line	483
	
l1170:	
	line	484
	
l3092:	
;uart_io.c: 483: }
;uart_io.c: 484: _delay((20000000/4)/9600-20);
	opt asmopt_off
movlw	166
movwf	(??_uart_read+0)+0,f
u4027:
decfsz	(??_uart_read+0)+0,f
	goto	u4027
	clrwdt
opt asmopt_on

	line	474
	
l3094:	
	movf	(uart_read@i),w
	movwf	(??_uart_read+0)+0
	addwf	(??_uart_read+0)+0,w
	movwf	(??_uart_read+1)+0
	movf	(??_uart_read+1)+0,w
	movwf	(uart_read@i)
	movf	(uart_read@i),f
	skipz
	goto	u3051
	goto	u3050
u3051:
	goto	l3088
u3050:
	goto	l3096
	
l1168:	
	line	486
	
l3096:	
;uart_io.c: 485: }
;uart_io.c: 486: _delay((20000000/4)/9600/2);
	opt asmopt_off
movlw	86
movwf	(??_uart_read+0)+0,f
u4037:
decfsz	(??_uart_read+0)+0,f
	goto	u4037
	clrwdt
opt asmopt_on

	line	487
;uart_io.c: 487: break;
	goto	l3162
	line	488
;uart_io.c: 488: case 6:
	
l1171:	
	line	489
;uart_io.c: 489: while(dummy_byte);
	goto	l3098
	
l1173:	
	goto	l3098
	
l1172:	
	
l3098:	
	movf	(_dummy_byte),f
	skipz
	goto	u3061
	goto	u3060
u3061:
	goto	l3098
u3060:
	goto	l3100
	
l1174:	
	line	490
	
l3100:	
;uart_io.c: 490: _delay((20000000/4)/9600-10);
	opt asmopt_off
movlw	169
movwf	(??_uart_read+0)+0,f
u4047:
decfsz	(??_uart_read+0)+0,f
	goto	u4047
	nop2	;nop
opt asmopt_on

	line	491
;uart_io.c: 491: _delay((20000000/4)/9600/2);
	opt asmopt_off
movlw	86
movwf	(??_uart_read+0)+0,f
u4057:
decfsz	(??_uart_read+0)+0,f
	goto	u4057
	clrwdt
opt asmopt_on

	line	492
	
l3102:	
;uart_io.c: 492: for(i=1;i>0;i=i<<1)
	clrf	(uart_read@i)
	bsf	status,0
	rlf	(uart_read@i),f
	
l3104:	
	movf	(uart_read@i),f
	skipz
	goto	u3071
	goto	u3070
u3071:
	goto	l3108
u3070:
	goto	l3116
	
l3106:	
	goto	l3116
	line	493
	
l1175:	
	line	494
	
l3108:	
;uart_io.c: 493: {
;uart_io.c: 494: if(dummy_byte==1)
	movf	(_dummy_byte),w
	xorlw	01h
	skipz
	goto	u3081
	goto	u3080
u3081:
	goto	l3112
u3080:
	line	496
	
l3110:	
;uart_io.c: 495: {
;uart_io.c: 496: result|=i;
	movf	(uart_read@i),w
	movwf	(??_uart_read+0)+0
	movf	(??_uart_read+0)+0,w
	iorwf	(uart_read@result),f
	line	497
;uart_io.c: 497: }
	goto	l3112
	line	498
	
l1177:	
	goto	l3112
	line	501
	
l1178:	
	line	502
	
l3112:	
;uart_io.c: 501: }
;uart_io.c: 502: _delay((20000000/4)/9600-20);
	opt asmopt_off
movlw	166
movwf	(??_uart_read+0)+0,f
u4067:
decfsz	(??_uart_read+0)+0,f
	goto	u4067
	clrwdt
opt asmopt_on

	line	492
	
l3114:	
	movf	(uart_read@i),w
	movwf	(??_uart_read+0)+0
	addwf	(??_uart_read+0)+0,w
	movwf	(??_uart_read+1)+0
	movf	(??_uart_read+1)+0,w
	movwf	(uart_read@i)
	movf	(uart_read@i),f
	skipz
	goto	u3091
	goto	u3090
u3091:
	goto	l3108
u3090:
	goto	l3116
	
l1176:	
	line	504
	
l3116:	
;uart_io.c: 503: }
;uart_io.c: 504: _delay((20000000/4)/9600/2);
	opt asmopt_off
movlw	86
movwf	(??_uart_read+0)+0,f
u4077:
decfsz	(??_uart_read+0)+0,f
	goto	u4077
	clrwdt
opt asmopt_on

	line	505
;uart_io.c: 505: break;
	goto	l3162
	line	506
;uart_io.c: 506: case 7:
	
l1179:	
	line	507
;uart_io.c: 507: while(dummy_byte);
	goto	l3118
	
l1181:	
	goto	l3118
	
l1180:	
	
l3118:	
	movf	(_dummy_byte),f
	skipz
	goto	u3101
	goto	u3100
u3101:
	goto	l3118
u3100:
	goto	l3120
	
l1182:	
	line	508
	
l3120:	
;uart_io.c: 508: _delay((20000000/4)/9600-10);
	opt asmopt_off
movlw	169
movwf	(??_uart_read+0)+0,f
u4087:
decfsz	(??_uart_read+0)+0,f
	goto	u4087
	nop2	;nop
opt asmopt_on

	line	509
;uart_io.c: 509: _delay((20000000/4)/9600/2);
	opt asmopt_off
movlw	86
movwf	(??_uart_read+0)+0,f
u4097:
decfsz	(??_uart_read+0)+0,f
	goto	u4097
	clrwdt
opt asmopt_on

	line	510
	
l3122:	
;uart_io.c: 510: for(i=1;i>0;i=i<<1)
	clrf	(uart_read@i)
	bsf	status,0
	rlf	(uart_read@i),f
	
l3124:	
	movf	(uart_read@i),f
	skipz
	goto	u3111
	goto	u3110
u3111:
	goto	l3128
u3110:
	goto	l3136
	
l3126:	
	goto	l3136
	line	511
	
l1183:	
	line	512
	
l3128:	
;uart_io.c: 511: {
;uart_io.c: 512: if(dummy_byte==1)
	movf	(_dummy_byte),w
	xorlw	01h
	skipz
	goto	u3121
	goto	u3120
u3121:
	goto	l3132
u3120:
	line	514
	
l3130:	
;uart_io.c: 513: {
;uart_io.c: 514: result|=i;
	movf	(uart_read@i),w
	movwf	(??_uart_read+0)+0
	movf	(??_uart_read+0)+0,w
	iorwf	(uart_read@result),f
	line	515
;uart_io.c: 515: }
	goto	l3132
	line	516
	
l1185:	
	goto	l3132
	line	519
	
l1186:	
	line	520
	
l3132:	
;uart_io.c: 519: }
;uart_io.c: 520: _delay((20000000/4)/9600-20);
	opt asmopt_off
movlw	166
movwf	(??_uart_read+0)+0,f
u4107:
decfsz	(??_uart_read+0)+0,f
	goto	u4107
	clrwdt
opt asmopt_on

	line	510
	
l3134:	
	movf	(uart_read@i),w
	movwf	(??_uart_read+0)+0
	addwf	(??_uart_read+0)+0,w
	movwf	(??_uart_read+1)+0
	movf	(??_uart_read+1)+0,w
	movwf	(uart_read@i)
	movf	(uart_read@i),f
	skipz
	goto	u3131
	goto	u3130
u3131:
	goto	l3128
u3130:
	goto	l3136
	
l1184:	
	line	522
	
l3136:	
;uart_io.c: 521: }
;uart_io.c: 522: _delay((20000000/4)/9600/2);
	opt asmopt_off
movlw	86
movwf	(??_uart_read+0)+0,f
u4117:
decfsz	(??_uart_read+0)+0,f
	goto	u4117
	clrwdt
opt asmopt_on

	line	523
;uart_io.c: 523: break;
	goto	l3162
	line	524
;uart_io.c: 524: case 8:
	
l1187:	
	line	525
;uart_io.c: 525: while(dummy_byte);
	goto	l3138
	
l1189:	
	goto	l3138
	
l1188:	
	
l3138:	
	movf	(_dummy_byte),f
	skipz
	goto	u3141
	goto	u3140
u3141:
	goto	l3138
u3140:
	goto	l3140
	
l1190:	
	line	526
	
l3140:	
;uart_io.c: 526: _delay((20000000/4)/9600-10);
	opt asmopt_off
movlw	169
movwf	(??_uart_read+0)+0,f
u4127:
decfsz	(??_uart_read+0)+0,f
	goto	u4127
	nop2	;nop
opt asmopt_on

	line	527
;uart_io.c: 527: _delay((20000000/4)/9600/2);
	opt asmopt_off
movlw	86
movwf	(??_uart_read+0)+0,f
u4137:
decfsz	(??_uart_read+0)+0,f
	goto	u4137
	clrwdt
opt asmopt_on

	line	528
	
l3142:	
;uart_io.c: 528: for(i=1;i>0;i=i<<1)
	clrf	(uart_read@i)
	bsf	status,0
	rlf	(uart_read@i),f
	
l3144:	
	movf	(uart_read@i),f
	skipz
	goto	u3151
	goto	u3150
u3151:
	goto	l3148
u3150:
	goto	l3156
	
l3146:	
	goto	l3156
	line	529
	
l1191:	
	line	530
	
l3148:	
;uart_io.c: 529: {
;uart_io.c: 530: if(dummy_byte==1)
	movf	(_dummy_byte),w
	xorlw	01h
	skipz
	goto	u3161
	goto	u3160
u3161:
	goto	l3152
u3160:
	line	532
	
l3150:	
;uart_io.c: 531: {
;uart_io.c: 532: result|=i;
	movf	(uart_read@i),w
	movwf	(??_uart_read+0)+0
	movf	(??_uart_read+0)+0,w
	iorwf	(uart_read@result),f
	line	533
;uart_io.c: 533: }
	goto	l3152
	line	534
	
l1193:	
	goto	l3152
	line	537
	
l1194:	
	line	538
	
l3152:	
;uart_io.c: 537: }
;uart_io.c: 538: _delay((20000000/4)/9600-20);
	opt asmopt_off
movlw	166
movwf	(??_uart_read+0)+0,f
u4147:
decfsz	(??_uart_read+0)+0,f
	goto	u4147
	clrwdt
opt asmopt_on

	line	528
	
l3154:	
	movf	(uart_read@i),w
	movwf	(??_uart_read+0)+0
	addwf	(??_uart_read+0)+0,w
	movwf	(??_uart_read+1)+0
	movf	(??_uart_read+1)+0,w
	movwf	(uart_read@i)
	movf	(uart_read@i),f
	skipz
	goto	u3171
	goto	u3170
u3171:
	goto	l3148
u3170:
	goto	l3156
	
l1192:	
	line	540
	
l3156:	
;uart_io.c: 539: }
;uart_io.c: 540: _delay((20000000/4)/9600/2);
	opt asmopt_off
movlw	86
movwf	(??_uart_read+0)+0,f
u4157:
decfsz	(??_uart_read+0)+0,f
	goto	u4157
	clrwdt
opt asmopt_on

	line	541
;uart_io.c: 541: break;
	goto	l3162
	line	543
	
l3158:	
;uart_io.c: 543: }
	goto	l3162
	line	395
	
l1129:	
	
l3160:	
	movf	(uart_read@channel),w
	; Switch size 1, requested type "space"
; Number of cases is 8, Range of values is 1 to 8
; switch strategies available:
; Name         Bytes Cycles
; simple_byte    25    13 (average)
; direct_byte    46    22 (fixed)
;	Chosen strategy is simple_byte

	xorlw	1^0	; case 1
	skipnz
	goto	l1131
	xorlw	2^1	; case 2
	skipnz
	goto	l1140
	xorlw	3^2	; case 3
	skipnz
	goto	l3036
	xorlw	4^3	; case 4
	skipnz
	goto	l3058
	xorlw	5^4	; case 5
	skipnz
	goto	l3078
	xorlw	6^5	; case 6
	skipnz
	goto	l3098
	xorlw	7^6	; case 7
	skipnz
	goto	l3118
	xorlw	8^7	; case 8
	skipnz
	goto	l3138
	goto	l3162

	line	543
	
l1138:	
	line	544
	
l3162:	
;uart_io.c: 544: return result;
	movf	(uart_read@result),w
	goto	l1195
	
l3164:	
	line	545
	
l1195:	
	return
	opt stack 0
GLOBAL	__end_of_uart_read
	__end_of_uart_read:
;; =============== function _uart_read ends ============

	signat	_uart_read,4217
	global	_send_config
psect	text235,local,class=CODE,delta=2
global __ptext235
__ptext235:

;; *************** function _send_config *****************
;; Defined at:
;;		line 166 in file "C:\Users\Phang\Desktop\9.80\PR 27\Slave_Programmed UART_1\Slave_Programmed UART_1.c"
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
psect	text235
	file	"C:\Users\Phang\Desktop\9.80\PR 27\Slave_Programmed UART_1\Slave_Programmed UART_1.c"
	line	166
	global	__size_of_send_config
	__size_of_send_config	equ	__end_of_send_config-_send_config
	
_send_config:	
	opt	stack 5
; Regs used in _send_config: [wreg+status,2+status,0+pclath+cstack]
;send_config@data stored from wreg
	movwf	(send_config@data)
	line	167
	
l2990:	
;Slave_Programmed UART_1.c: 167: RC4=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7
	line	168
	
l2992:	
;Slave_Programmed UART_1.c: 168: PORTB=data;
	movf	(send_config@data),w
	movwf	(6)	;volatile
	line	169
	
l2994:	
;Slave_Programmed UART_1.c: 169: RC5=1;
	bsf	(61/8),(61)&7
	line	170
	
l2996:	
;Slave_Programmed UART_1.c: 170: delay(50);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0
	movwf	(?_delay+1)
	movlw	032h
	movwf	(?_delay)

	fcall	_delay
	line	171
	
l2998:	
;Slave_Programmed UART_1.c: 171: RC5=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7
	line	172
	
l3000:	
;Slave_Programmed UART_1.c: 172: delay(50);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0
	movwf	(?_delay+1)
	movlw	032h
	movwf	(?_delay)

	fcall	_delay
	line	174
	
l553:	
	return
	opt stack 0
GLOBAL	__end_of_send_config
	__end_of_send_config:
;; =============== function _send_config ends ============

	signat	_send_config,4216
	global	_delay
psect	text236,local,class=CODE,delta=2
global __ptext236
__ptext236:

;; *************** function _delay *****************
;; Defined at:
;;		line 161 in file "C:\Users\Phang\Desktop\9.80\PR 27\Slave_Programmed UART_1\Slave_Programmed UART_1.c"
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
psect	text236
	file	"C:\Users\Phang\Desktop\9.80\PR 27\Slave_Programmed UART_1\Slave_Programmed UART_1.c"
	line	161
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 6
; Regs used in _delay: [wreg]
	line	162
	
l2984:	
;Slave_Programmed UART_1.c: 162: for( ;data>0;data-=1);
	movf	(delay@data+3),w
	iorwf	(delay@data+2),w
	iorwf	(delay@data+1),w
	iorwf	(delay@data),w
	skipz
	goto	u2831
	goto	u2830
u2831:
	goto	l2988
u2830:
	goto	l550
	
l2986:	
	goto	l550
	
l548:	
	
l2988:	
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
	goto	u2845
	goto	u2846
u2845:
	subwf	(delay@data+1),f
u2846:
	movf	2+(??_delay+0)+0,w
	skipc
	incfsz	2+(??_delay+0)+0,w
	goto	u2847
	goto	u2848
u2847:
	subwf	(delay@data+2),f
u2848:
	movf	3+(??_delay+0)+0,w
	skipc
	incfsz	3+(??_delay+0)+0,w
	goto	u2849
	goto	u2840
u2849:
	subwf	(delay@data+3),f
u2840:

	movf	(delay@data+3),w
	iorwf	(delay@data+2),w
	iorwf	(delay@data+1),w
	iorwf	(delay@data),w
	skipz
	goto	u2851
	goto	u2850
u2851:
	goto	l2988
u2850:
	goto	l550
	
l549:	
	line	163
	
l550:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
	global	_uart_init
psect	text237,local,class=CODE,delta=2
global __ptext237
__ptext237:

;; *************** function _uart_init *****************
;; Defined at:
;;		line 156 in file "C:\Users\Phang\Desktop\9.80\PR 27\Slave_Programmed UART_1\uart_io.c"
;; Parameters:    Size  Location     Type
;;  channel         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  channel         1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
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
psect	text237
	file	"C:\Users\Phang\Desktop\9.80\PR 27\Slave_Programmed UART_1\uart_io.c"
	line	156
	global	__size_of_uart_init
	__size_of_uart_init	equ	__end_of_uart_init-_uart_init
	
_uart_init:	
	opt	stack 7
; Regs used in _uart_init: [wreg-fsr0h+status,2+status,0]
;uart_init@channel stored from wreg
	movwf	(uart_init@channel)
	line	157
	
l2930:	
;uart_io.c: 157: switch(channel)
	goto	l2982
	line	159
;uart_io.c: 158: {
;uart_io.c: 159: case 1:
	
l1072:	
	line	160
;uart_io.c: 160: RC2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	line	161
;uart_io.c: 161: TRISC2=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1082/8)^080h,(1082)&7
	line	162
;uart_io.c: 162: RC3=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7
	line	163
;uart_io.c: 163: TRISC3=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1083/8)^080h,(1083)&7
	line	164
;uart_io.c: 164: break;
	goto	l1081
	line	165
;uart_io.c: 165: case 2:
	
l1074:	
	line	166
;uart_io.c: 166: RC0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	line	167
;uart_io.c: 167: TRISC0=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1080/8)^080h,(1080)&7
	line	168
;uart_io.c: 168: RC1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	line	169
;uart_io.c: 169: TRISC1=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1081/8)^080h,(1081)&7
	line	170
;uart_io.c: 170: break;
	goto	l1081
	line	171
;uart_io.c: 171: case 3:
	
l1075:	
	line	172
	
l2932:	
;uart_io.c: 172: dummy_byte=1;
	clrf	(_dummy_byte)
	bsf	status,0
	rlf	(_dummy_byte),f
	line	173
	
l2934:	
;uart_io.c: 173: dummy_byte=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_dummy_byte)
	line	174
	
l2936:	
;uart_io.c: 174: dummy_byte=1;
	clrf	(_dummy_byte)
	bsf	status,0
	rlf	(_dummy_byte),f
	line	175
	
l2938:	
;uart_io.c: 175: dummy_byte=1;
	clrf	(_dummy_byte)
	bsf	status,0
	rlf	(_dummy_byte),f
	line	176
;uart_io.c: 176: break;
	goto	l1081
	line	177
;uart_io.c: 177: case 4:
	
l1076:	
	line	178
	
l2940:	
;uart_io.c: 178: dummy_byte=1;
	clrf	(_dummy_byte)
	bsf	status,0
	rlf	(_dummy_byte),f
	line	179
	
l2942:	
;uart_io.c: 179: dummy_byte=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_dummy_byte)
	line	180
	
l2944:	
;uart_io.c: 180: dummy_byte=1;
	clrf	(_dummy_byte)
	bsf	status,0
	rlf	(_dummy_byte),f
	line	181
	
l2946:	
;uart_io.c: 181: dummy_byte=1;
	clrf	(_dummy_byte)
	bsf	status,0
	rlf	(_dummy_byte),f
	line	182
;uart_io.c: 182: break;
	goto	l1081
	line	183
;uart_io.c: 183: case 5:
	
l1077:	
	line	184
	
l2948:	
;uart_io.c: 184: dummy_byte=1;
	clrf	(_dummy_byte)
	bsf	status,0
	rlf	(_dummy_byte),f
	line	185
	
l2950:	
;uart_io.c: 185: dummy_byte=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_dummy_byte)
	line	186
	
l2952:	
;uart_io.c: 186: dummy_byte=1;
	clrf	(_dummy_byte)
	bsf	status,0
	rlf	(_dummy_byte),f
	line	187
	
l2954:	
;uart_io.c: 187: dummy_byte=1;
	clrf	(_dummy_byte)
	bsf	status,0
	rlf	(_dummy_byte),f
	line	188
;uart_io.c: 188: break;
	goto	l1081
	line	189
;uart_io.c: 189: case 6:
	
l1078:	
	line	190
	
l2956:	
;uart_io.c: 190: dummy_byte=1;
	clrf	(_dummy_byte)
	bsf	status,0
	rlf	(_dummy_byte),f
	line	191
	
l2958:	
;uart_io.c: 191: dummy_byte=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_dummy_byte)
	line	192
	
l2960:	
;uart_io.c: 192: dummy_byte=1;
	clrf	(_dummy_byte)
	bsf	status,0
	rlf	(_dummy_byte),f
	line	193
	
l2962:	
;uart_io.c: 193: dummy_byte=1;
	clrf	(_dummy_byte)
	bsf	status,0
	rlf	(_dummy_byte),f
	line	194
;uart_io.c: 194: break;
	goto	l1081
	line	195
;uart_io.c: 195: case 7:
	
l1079:	
	line	196
	
l2964:	
;uart_io.c: 196: dummy_byte=1;
	clrf	(_dummy_byte)
	bsf	status,0
	rlf	(_dummy_byte),f
	line	197
	
l2966:	
;uart_io.c: 197: dummy_byte=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_dummy_byte)
	line	198
	
l2968:	
;uart_io.c: 198: dummy_byte=1;
	clrf	(_dummy_byte)
	bsf	status,0
	rlf	(_dummy_byte),f
	line	199
	
l2970:	
;uart_io.c: 199: dummy_byte=1;
	clrf	(_dummy_byte)
	bsf	status,0
	rlf	(_dummy_byte),f
	line	200
;uart_io.c: 200: break;
	goto	l1081
	line	201
;uart_io.c: 201: case 8:
	
l1080:	
	line	202
	
l2972:	
;uart_io.c: 202: dummy_byte=1;
	clrf	(_dummy_byte)
	bsf	status,0
	rlf	(_dummy_byte),f
	line	203
	
l2974:	
;uart_io.c: 203: dummy_byte=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_dummy_byte)
	line	204
	
l2976:	
;uart_io.c: 204: dummy_byte=1;
	clrf	(_dummy_byte)
	bsf	status,0
	rlf	(_dummy_byte),f
	line	205
	
l2978:	
;uart_io.c: 205: dummy_byte=1;
	clrf	(_dummy_byte)
	bsf	status,0
	rlf	(_dummy_byte),f
	line	206
;uart_io.c: 206: break;
	goto	l1081
	line	208
	
l2980:	
;uart_io.c: 208: }
	goto	l1081
	line	157
	
l1071:	
	
l2982:	
	movf	(uart_init@channel),w
	; Switch size 1, requested type "space"
; Number of cases is 8, Range of values is 1 to 8
; switch strategies available:
; Name         Bytes Cycles
; simple_byte    25    13 (average)
; direct_byte    46    22 (fixed)
;	Chosen strategy is simple_byte

	xorlw	1^0	; case 1
	skipnz
	goto	l1072
	xorlw	2^1	; case 2
	skipnz
	goto	l1074
	xorlw	3^2	; case 3
	skipnz
	goto	l2932
	xorlw	4^3	; case 4
	skipnz
	goto	l2940
	xorlw	5^4	; case 5
	skipnz
	goto	l2948
	xorlw	6^5	; case 6
	skipnz
	goto	l2956
	xorlw	7^6	; case 7
	skipnz
	goto	l2964
	xorlw	8^7	; case 8
	skipnz
	goto	l2972
	goto	l1081

	line	208
	
l1073:	
	line	209
	
l1081:	
	return
	opt stack 0
GLOBAL	__end_of_uart_init
	__end_of_uart_init:
;; =============== function _uart_init ends ============

	signat	_uart_init,4216
psect	text238,local,class=CODE,delta=2
global __ptext238
__ptext238:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
