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
# 13 "C:\Users\Phang\Desktop\9.80\PR 27\Internal Master\Master_Internal UART.c"
	psect config,class=CONFIG,delta=2 ;#
# 13 "C:\Users\Phang\Desktop\9.80\PR 27\Internal Master\Master_Internal UART.c"
	dw 0x3F32 ;#
	FNCALL	_main,_send_config
	FNCALL	_main,_lcd_clr
	FNCALL	_main,_lcd_goto
	FNCALL	_main,_send_string
	FNCALL	_main,_onoff_slave_led1
	FNCALL	_main,_onoff_slave_led2
	FNCALL	_main,_onoff_slave_buzzer
	FNCALL	_main,_internal_uart_write
	FNCALL	_main,_internal_uart_read
	FNCALL	_send_string,_send_char
	FNCALL	_lcd_goto,_send_config
	FNCALL	_lcd_clr,_send_config
	FNCALL	_lcd_clr,_delay
	FNCALL	_send_char,_delay
	FNCALL	_onoff_slave_buzzer,_internal_uart_write
	FNCALL	_onoff_slave_buzzer,_internal_uart_read
	FNCALL	_onoff_slave_led2,_internal_uart_write
	FNCALL	_onoff_slave_led2,_internal_uart_read
	FNCALL	_onoff_slave_led1,_internal_uart_write
	FNCALL	_onoff_slave_led1,_internal_uart_read
	FNCALL	_send_config,_delay
	FNROOT	_main
	global	_dummy
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\Phang\Desktop\9.80\PR 27\Internal Master\Master_Internal UART.c"
	line	29

;initializer for _dummy
	retlw	01h
	global	_dummy_byte
	global	_PORTB
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
	retlw	77	;'M'
	retlw	65	;'A'
	retlw	83	;'S'
	retlw	84	;'T'
	retlw	69	;'E'
	retlw	82	;'R'
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
	file	"PR 27_Internal Master.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_dummy_byte:
       ds      1

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\Phang\Desktop\9.80\PR 27\Internal Master\Master_Internal UART.c"
_dummy:
       ds      1

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
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
	global	?_onoff_slave_led1
?_onoff_slave_led1:	; 0 bytes @ 0x0
	global	?_onoff_slave_led2
?_onoff_slave_led2:	; 0 bytes @ 0x0
	global	?_onoff_slave_buzzer
?_onoff_slave_buzzer:	; 0 bytes @ 0x0
	global	?_internal_uart_write
?_internal_uart_write:	; 0 bytes @ 0x0
	global	??_internal_uart_write
??_internal_uart_write:	; 0 bytes @ 0x0
	global	??_internal_uart_read
??_internal_uart_read:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	?_send_char
?_send_char:	; 0 bytes @ 0x0
	global	?_internal_uart_read
?_internal_uart_read:	; 1 bytes @ 0x0
	global	internal_uart_write@data
internal_uart_write@data:	; 1 bytes @ 0x0
	global	delay@data
delay@data:	; 4 bytes @ 0x0
	ds	1
	global	internal_uart_read@rec_data
internal_uart_read@rec_data:	; 1 bytes @ 0x1
	ds	1
	global	??_onoff_slave_led1
??_onoff_slave_led1:	; 0 bytes @ 0x2
	global	??_onoff_slave_led2
??_onoff_slave_led2:	; 0 bytes @ 0x2
	global	??_onoff_slave_buzzer
??_onoff_slave_buzzer:	; 0 bytes @ 0x2
	ds	1
	global	onoff_slave_led1@a
onoff_slave_led1@a:	; 1 bytes @ 0x3
	global	onoff_slave_led2@b
onoff_slave_led2@b:	; 1 bytes @ 0x3
	global	onoff_slave_buzzer@c
onoff_slave_buzzer@c:	; 1 bytes @ 0x3
	ds	1
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
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	main@temp
main@temp:	; 1 bytes @ 0x0
	ds	1
	global	main@slave_led1_flag
main@slave_led1_flag:	; 1 bytes @ 0x1
	ds	1
	global	main@slave_led2_flag
main@slave_led2_flag:	; 1 bytes @ 0x2
	ds	1
	global	main@slave_buzzer_flag
main@slave_buzzer_flag:	; 1 bytes @ 0x3
	ds	1
	global	main@sw1_flag
main@sw1_flag:	; 1 bytes @ 0x4
	ds	1
	global	main@sw2_flag
main@sw2_flag:	; 1 bytes @ 0x5
	ds	1
	global	main@sw3_flag
main@sw3_flag:	; 1 bytes @ 0x6
	ds	1
	global	main@slave_sw1_flag
main@slave_sw1_flag:	; 1 bytes @ 0x7
	ds	1
	global	main@slave_sw2_flag
main@slave_sw2_flag:	; 1 bytes @ 0x8
	ds	1
	global	main@slave_sw3_flag
main@slave_sw3_flag:	; 1 bytes @ 0x9
	ds	1
;;Data sizes: Strings 28, constant 0, data 1, bss 1, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     12      13
;; BANK0           80     10      11
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; send_string@s	PTR const unsigned char  size(1) Largest target is 16
;;		 -> STR_2(CODE[16]), STR_1(CODE[12]), 
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
;;   _onoff_slave_buzzer->_internal_uart_read
;;   _onoff_slave_led2->_internal_uart_read
;;   _onoff_slave_led1->_internal_uart_read
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
;; (0) _main                                                11    11      0    1137
;;                                             11 COMMON     1     1      0
;;                                              0 BANK0     10    10      0
;;                        _send_config
;;                            _lcd_clr
;;                           _lcd_goto
;;                        _send_string
;;                   _onoff_slave_led1
;;                   _onoff_slave_led2
;;                 _onoff_slave_buzzer
;;                _internal_uart_write
;;                 _internal_uart_read
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
;; (2) _send_char                                            1     1      0      67
;;                                              8 COMMON     1     1      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _onoff_slave_buzzer                                   2     2      0      67
;;                                              2 COMMON     2     2      0
;;                _internal_uart_write
;;                 _internal_uart_read
;; ---------------------------------------------------------------------------------
;; (1) _onoff_slave_led2                                     2     2      0      67
;;                                              2 COMMON     2     2      0
;;                _internal_uart_write
;;                 _internal_uart_read
;; ---------------------------------------------------------------------------------
;; (1) _onoff_slave_led1                                     2     2      0      67
;;                                              2 COMMON     2     2      0
;;                _internal_uart_write
;;                 _internal_uart_read
;; ---------------------------------------------------------------------------------
;; (2) _send_config                                          1     1      0      67
;;                                              8 COMMON     1     1      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (3) _delay                                                8     4      4      45
;;                                              0 COMMON     8     4      4
;; ---------------------------------------------------------------------------------
;; (1) _internal_uart_read                                   2     2      0      23
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _internal_uart_write                                  1     1      0      22
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
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
;;   _onoff_slave_led1
;;     _internal_uart_write
;;     _internal_uart_read
;;   _onoff_slave_led2
;;     _internal_uart_write
;;     _internal_uart_read
;;   _onoff_slave_buzzer
;;     _internal_uart_write
;;     _internal_uart_read
;;   _internal_uart_write
;;   _internal_uart_read
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BANK3               60      0       0       9        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;BANK2               60      0       0      11        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      1B      12        0.0%
;;ABS                  0      0      18       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       3       2        0.0%
;;BANK0               50      A       B       5       13.8%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      C       D       1       92.9%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 48 in file "C:\Users\Phang\Desktop\9.80\PR 27\Internal Master\Master_Internal UART.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  slave_sw3_fl    1    9[BANK0 ] unsigned char 
;;  slave_sw2_fl    1    8[BANK0 ] unsigned char 
;;  slave_sw1_fl    1    7[BANK0 ] unsigned char 
;;  sw3_flag        1    6[BANK0 ] unsigned char 
;;  sw2_flag        1    5[BANK0 ] unsigned char 
;;  sw1_flag        1    4[BANK0 ] unsigned char 
;;  slave_buzzer    1    3[BANK0 ] unsigned char 
;;  slave_led2_f    1    2[BANK0 ] unsigned char 
;;  slave_led1_f    1    1[BANK0 ] unsigned char 
;;  temp            1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      10       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1      10       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_send_config
;;		_lcd_clr
;;		_lcd_goto
;;		_send_string
;;		_onoff_slave_led1
;;		_onoff_slave_led2
;;		_onoff_slave_buzzer
;;		_internal_uart_write
;;		_internal_uart_read
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Phang\Desktop\9.80\PR 27\Internal Master\Master_Internal UART.c"
	line	48
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	51
	
l3136:	
;Master_Internal UART.c: 50: unsigned char temp;
;Master_Internal UART.c: 51: unsigned char sw1_flag=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@sw1_flag)
	bsf	status,0
	rlf	(main@sw1_flag),f
	line	52
	
l3138:	
;Master_Internal UART.c: 52: unsigned char slave_led1_flag=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(main@slave_led1_flag)
	line	53
	
l3140:	
;Master_Internal UART.c: 53: unsigned char sw2_flag=1;
	clrf	(main@sw2_flag)
	bsf	status,0
	rlf	(main@sw2_flag),f
	line	54
;Master_Internal UART.c: 54: unsigned char slave_led2_flag=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(main@slave_led2_flag)
	line	55
	
l3142:	
;Master_Internal UART.c: 55: unsigned char sw3_flag=1;
	clrf	(main@sw3_flag)
	bsf	status,0
	rlf	(main@sw3_flag),f
	line	56
	
l3144:	
;Master_Internal UART.c: 56: unsigned char slave_buzzer_flag=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(main@slave_buzzer_flag)
	line	57
;Master_Internal UART.c: 57: unsigned char slave_sw1_flag=1;
	clrf	(main@slave_sw1_flag)
	bsf	status,0
	rlf	(main@slave_sw1_flag),f
	line	58
;Master_Internal UART.c: 58: unsigned char slave_sw2_flag=1;
	clrf	(main@slave_sw2_flag)
	bsf	status,0
	rlf	(main@slave_sw2_flag),f
	line	59
;Master_Internal UART.c: 59: unsigned char slave_sw3_flag=1;
	clrf	(main@slave_sw3_flag)
	bsf	status,0
	rlf	(main@slave_sw3_flag),f
	line	62
	
l3146:	
;Master_Internal UART.c: 62: TRISB = 0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	63
	
l3148:	
;Master_Internal UART.c: 63: TRISC = 0b00000000;
	clrf	(135)^080h	;volatile
	line	64
	
l3150:	
;Master_Internal UART.c: 64: TRISA = 0b00011100;
	movlw	(01Ch)
	movwf	(133)^080h	;volatile
	line	65
	
l3152:	
;Master_Internal UART.c: 65: ADCON1 = 0b00000110;
	movlw	(06h)
	movwf	(159)^080h	;volatile
	line	68
	
l3154:	
;Master_Internal UART.c: 68: send_config(0b00000001);
	movlw	(01h)
	fcall	_send_config
	line	69
	
l3156:	
;Master_Internal UART.c: 69: send_config(0b00000010);
	movlw	(02h)
	fcall	_send_config
	line	70
	
l3158:	
;Master_Internal UART.c: 70: send_config(0b00000110);
	movlw	(06h)
	fcall	_send_config
	line	71
	
l3160:	
;Master_Internal UART.c: 71: send_config(0b00001100);
	movlw	(0Ch)
	fcall	_send_config
	line	72
	
l3162:	
;Master_Internal UART.c: 72: send_config(0b00111000);
	movlw	(038h)
	fcall	_send_config
	line	75
	
l3164:	
;Master_Internal UART.c: 75: RA1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(41/8),(41)&7
	line	76
	
l3166:	
;Master_Internal UART.c: 76: RA0=0;
	bcf	(40/8),(40)&7
	line	77
	
l3168:	
;Master_Internal UART.c: 77: RA5=0;
	bcf	(45/8),(45)&7
	line	78
	
l3170:	
;Master_Internal UART.c: 78: PORTB=0;
	clrf	(6)	;volatile
	line	79
	
l3172:	
;Master_Internal UART.c: 79: lcd_clr();
	fcall	_lcd_clr
	line	80
	
l3174:	
;Master_Internal UART.c: 80: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	81
	
l3176:	
;Master_Internal UART.c: 81: send_string("Cytron PR27");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_send_string
	line	82
	
l3178:	
;Master_Internal UART.c: 82: lcd_goto(20);
	movlw	(014h)
	fcall	_lcd_goto
	line	83
	
l3180:	
;Master_Internal UART.c: 83: send_string("MASTER Internal");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_send_string
	line	86
	
l3182:	
;Master_Internal UART.c: 86: TRISC6=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1086/8)^080h,(1086)&7
	line	87
	
l3184:	
;Master_Internal UART.c: 87: TRISC7=1;
	bsf	(1087/8)^080h,(1087)&7
	line	88
	
l3186:	
;Master_Internal UART.c: 88: SPBRG=129;
	movlw	(081h)
	movwf	(153)^080h	;volatile
	line	89
	
l3188:	
;Master_Internal UART.c: 89: BRGH=1;
	bsf	(1218/8)^080h,(1218)&7
	line	90
	
l3190:	
;Master_Internal UART.c: 90: TXEN=1;
	bsf	(1221/8)^080h,(1221)&7
	line	91
	
l3192:	
;Master_Internal UART.c: 91: TX9 =0;
	bcf	(1222/8)^080h,(1222)&7
	line	92
	
l3194:	
;Master_Internal UART.c: 92: RX9 =0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(198/8),(198)&7
	line	93
	
l3196:	
;Master_Internal UART.c: 93: CREN=1;
	bsf	(196/8),(196)&7
	line	94
	
l3198:	
;Master_Internal UART.c: 94: SPEN=1;
	bsf	(199/8),(199)&7
	line	95
	
l3200:	
;Master_Internal UART.c: 95: temp=RCREG;
	movf	(26),w	;volatile
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@temp)
	line	96
	
l3202:	
;Master_Internal UART.c: 96: temp=RCREG;
	movf	(26),w	;volatile
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@temp)
	line	98
	
l3204:	
;Master_Internal UART.c: 98: RA1=0;
	bcf	(41/8),(41)&7
	line	99
	
l3206:	
;Master_Internal UART.c: 99: RA0=0;
	bcf	(40/8),(40)&7
	line	100
	
l3208:	
;Master_Internal UART.c: 100: RA5=0;
	bcf	(45/8),(45)&7
	goto	l3210
	line	102
;Master_Internal UART.c: 102: while(1)
	
l515:	
	line	106
	
l3210:	
;Master_Internal UART.c: 103: {
;Master_Internal UART.c: 106: if(RA2==0)
	btfsc	(42/8),(42)&7
	goto	u3101
	goto	u3100
u3101:
	goto	l3220
u3100:
	line	108
	
l3212:	
;Master_Internal UART.c: 107: {
;Master_Internal UART.c: 108: if(sw1_flag!=0)
	movf	(main@sw1_flag),w
	skipz
	goto	u3110
	goto	l3224
u3110:
	line	110
	
l3214:	
;Master_Internal UART.c: 109: {
;Master_Internal UART.c: 110: sw1_flag=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(main@sw1_flag)
	line	111
	
l3216:	
;Master_Internal UART.c: 111: slave_led1_flag=!slave_led1_flag;
	movf	(main@slave_led1_flag)
	movlw	0
	skipnz
	movlw	1
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@slave_led1_flag)
	line	112
	
l3218:	
;Master_Internal UART.c: 112: onoff_slave_led1(slave_led1_flag);
	movf	(main@slave_led1_flag),w
	fcall	_onoff_slave_led1
	goto	l3224
	line	113
	
l517:	
	line	114
;Master_Internal UART.c: 113: }
;Master_Internal UART.c: 114: }
	goto	l3224
	line	115
	
l516:	
	line	117
	
l3220:	
;Master_Internal UART.c: 115: else
;Master_Internal UART.c: 116: {
;Master_Internal UART.c: 117: if(sw1_flag==0) sw1_flag=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@sw1_flag),f
	skipz
	goto	u3121
	goto	u3120
u3121:
	goto	l3224
u3120:
	
l3222:	
	clrf	(main@sw1_flag)
	bsf	status,0
	rlf	(main@sw1_flag),f
	goto	l3224
	
l519:	
	goto	l3224
	line	118
	
l518:	
	line	121
	
l3224:	
;Master_Internal UART.c: 118: }
;Master_Internal UART.c: 121: if(RA3==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(43/8),(43)&7
	goto	u3131
	goto	u3130
u3131:
	goto	l3234
u3130:
	line	123
	
l3226:	
;Master_Internal UART.c: 122: {
;Master_Internal UART.c: 123: if(sw2_flag!=0)
	movf	(main@sw2_flag),w
	skipz
	goto	u3140
	goto	l3238
u3140:
	line	125
	
l3228:	
;Master_Internal UART.c: 124: {
;Master_Internal UART.c: 125: sw2_flag=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(main@sw2_flag)
	line	126
	
l3230:	
;Master_Internal UART.c: 126: slave_led2_flag=!slave_led2_flag;
	movf	(main@slave_led2_flag)
	movlw	0
	skipnz
	movlw	1
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@slave_led2_flag)
	line	127
	
l3232:	
;Master_Internal UART.c: 127: onoff_slave_led2(slave_led2_flag);
	movf	(main@slave_led2_flag),w
	fcall	_onoff_slave_led2
	goto	l3238
	line	128
	
l521:	
	line	129
;Master_Internal UART.c: 128: }
;Master_Internal UART.c: 129: }
	goto	l3238
	line	130
	
l520:	
	line	132
	
l3234:	
;Master_Internal UART.c: 130: else
;Master_Internal UART.c: 131: {
;Master_Internal UART.c: 132: if(sw2_flag==0) sw2_flag=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@sw2_flag),f
	skipz
	goto	u3151
	goto	u3150
u3151:
	goto	l3238
u3150:
	
l3236:	
	clrf	(main@sw2_flag)
	bsf	status,0
	rlf	(main@sw2_flag),f
	goto	l3238
	
l523:	
	goto	l3238
	line	133
	
l522:	
	line	137
	
l3238:	
;Master_Internal UART.c: 133: }
;Master_Internal UART.c: 137: if(RA4==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(44/8),(44)&7
	goto	u3161
	goto	u3160
u3161:
	goto	l3248
u3160:
	line	139
	
l3240:	
;Master_Internal UART.c: 138: {
;Master_Internal UART.c: 139: if(sw3_flag!=0)
	movf	(main@sw3_flag),w
	skipz
	goto	u3170
	goto	l3252
u3170:
	line	141
	
l3242:	
;Master_Internal UART.c: 140: {
;Master_Internal UART.c: 141: sw3_flag=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(main@sw3_flag)
	line	142
	
l3244:	
;Master_Internal UART.c: 142: slave_buzzer_flag=!slave_buzzer_flag;
	movf	(main@slave_buzzer_flag)
	movlw	0
	skipnz
	movlw	1
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@slave_buzzer_flag)
	line	143
	
l3246:	
;Master_Internal UART.c: 143: onoff_slave_buzzer(slave_buzzer_flag);
	movf	(main@slave_buzzer_flag),w
	fcall	_onoff_slave_buzzer
	goto	l3252
	line	144
	
l525:	
	line	145
;Master_Internal UART.c: 144: }
;Master_Internal UART.c: 145: }
	goto	l3252
	line	146
	
l524:	
	line	148
	
l3248:	
;Master_Internal UART.c: 146: else
;Master_Internal UART.c: 147: {
;Master_Internal UART.c: 148: if(sw3_flag==0) sw3_flag=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@sw3_flag),f
	skipz
	goto	u3181
	goto	u3180
u3181:
	goto	l3252
u3180:
	
l3250:	
	clrf	(main@sw3_flag)
	bsf	status,0
	rlf	(main@sw3_flag),f
	goto	l3252
	
l527:	
	goto	l3252
	line	149
	
l526:	
	line	153
	
l3252:	
;Master_Internal UART.c: 149: }
;Master_Internal UART.c: 153: internal_uart_write(4);
	movlw	(04h)
	fcall	_internal_uart_write
	line	154
	
l3254:	
;Master_Internal UART.c: 154: internal_uart_write(1);
	movlw	(01h)
	fcall	_internal_uart_write
	line	155
	
l3256:	
;Master_Internal UART.c: 155: dummy=internal_uart_read();
	fcall	_internal_uart_read
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_dummy)
	line	156
	
l3258:	
;Master_Internal UART.c: 156: if(dummy==0)
	movf	(_dummy),f
	skipz
	goto	u3191
	goto	u3190
u3191:
	goto	l3266
u3190:
	line	158
	
l3260:	
;Master_Internal UART.c: 157: {
;Master_Internal UART.c: 158: if(slave_sw1_flag!=0)
	movf	(main@slave_sw1_flag),w
	skipz
	goto	u3200
	goto	l3270
u3200:
	line	160
	
l3262:	
;Master_Internal UART.c: 159: {
;Master_Internal UART.c: 160: slave_sw1_flag=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(main@slave_sw1_flag)
	line	161
	
l3264:	
;Master_Internal UART.c: 161: RA1=!RA1;
	movlw	1<<((41)&7)
	xorwf	((41)/8),f
	goto	l3270
	line	162
	
l529:	
	line	163
;Master_Internal UART.c: 162: }
;Master_Internal UART.c: 163: }
	goto	l3270
	line	164
	
l528:	
	line	166
	
l3266:	
;Master_Internal UART.c: 164: else
;Master_Internal UART.c: 165: {
;Master_Internal UART.c: 166: if(slave_sw1_flag==0) slave_sw1_flag=1;
	movf	(main@slave_sw1_flag),f
	skipz
	goto	u3211
	goto	u3210
u3211:
	goto	l3270
u3210:
	
l3268:	
	clrf	(main@slave_sw1_flag)
	bsf	status,0
	rlf	(main@slave_sw1_flag),f
	goto	l3270
	
l531:	
	goto	l3270
	line	167
	
l530:	
	line	171
	
l3270:	
;Master_Internal UART.c: 167: }
;Master_Internal UART.c: 171: internal_uart_write(4);
	movlw	(04h)
	fcall	_internal_uart_write
	line	172
	
l3272:	
;Master_Internal UART.c: 172: internal_uart_write(2);
	movlw	(02h)
	fcall	_internal_uart_write
	line	173
	
l3274:	
;Master_Internal UART.c: 173: dummy=internal_uart_read();
	fcall	_internal_uart_read
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_dummy)
	line	174
	
l3276:	
;Master_Internal UART.c: 174: if(dummy==0)
	movf	(_dummy),f
	skipz
	goto	u3221
	goto	u3220
u3221:
	goto	l3284
u3220:
	line	176
	
l3278:	
;Master_Internal UART.c: 175: {
;Master_Internal UART.c: 176: if(slave_sw2_flag!=0)
	movf	(main@slave_sw2_flag),w
	skipz
	goto	u3230
	goto	l3288
u3230:
	line	178
	
l3280:	
;Master_Internal UART.c: 177: {
;Master_Internal UART.c: 178: slave_sw2_flag=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(main@slave_sw2_flag)
	line	179
	
l3282:	
;Master_Internal UART.c: 179: RA0=!RA0;
	movlw	1<<((40)&7)
	xorwf	((40)/8),f
	goto	l3288
	line	180
	
l533:	
	line	181
;Master_Internal UART.c: 180: }
;Master_Internal UART.c: 181: }
	goto	l3288
	line	182
	
l532:	
	line	184
	
l3284:	
;Master_Internal UART.c: 182: else
;Master_Internal UART.c: 183: {
;Master_Internal UART.c: 184: if(slave_sw2_flag==0) slave_sw2_flag=1;
	movf	(main@slave_sw2_flag),f
	skipz
	goto	u3241
	goto	u3240
u3241:
	goto	l3288
u3240:
	
l3286:	
	clrf	(main@slave_sw2_flag)
	bsf	status,0
	rlf	(main@slave_sw2_flag),f
	goto	l3288
	
l535:	
	goto	l3288
	line	185
	
l534:	
	line	189
	
l3288:	
;Master_Internal UART.c: 185: }
;Master_Internal UART.c: 189: internal_uart_write(4);
	movlw	(04h)
	fcall	_internal_uart_write
	line	190
	
l3290:	
;Master_Internal UART.c: 190: internal_uart_write(3);
	movlw	(03h)
	fcall	_internal_uart_write
	line	191
	
l3292:	
;Master_Internal UART.c: 191: dummy=internal_uart_read();
	fcall	_internal_uart_read
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_dummy)
	line	192
	
l3294:	
;Master_Internal UART.c: 192: if(dummy==0)
	movf	(_dummy),f
	skipz
	goto	u3251
	goto	u3250
u3251:
	goto	l3302
u3250:
	line	194
	
l3296:	
;Master_Internal UART.c: 193: {
;Master_Internal UART.c: 194: if(slave_sw3_flag!=0)
	movf	(main@slave_sw3_flag),w
	skipz
	goto	u3260
	goto	l3210
u3260:
	line	196
	
l3298:	
;Master_Internal UART.c: 195: {
;Master_Internal UART.c: 196: slave_sw3_flag=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(main@slave_sw3_flag)
	line	197
	
l3300:	
;Master_Internal UART.c: 197: RA5=!RA5;
	movlw	1<<((45)&7)
	xorwf	((45)/8),f
	goto	l3210
	line	198
	
l537:	
	line	199
;Master_Internal UART.c: 198: }
;Master_Internal UART.c: 199: }
	goto	l3210
	line	200
	
l536:	
	line	202
	
l3302:	
;Master_Internal UART.c: 200: else
;Master_Internal UART.c: 201: {
;Master_Internal UART.c: 202: if(slave_sw3_flag==0) slave_sw3_flag=1;
	movf	(main@slave_sw3_flag),f
	skipz
	goto	u3271
	goto	u3270
u3271:
	goto	l3210
u3270:
	
l3304:	
	clrf	(main@slave_sw3_flag)
	bsf	status,0
	rlf	(main@slave_sw3_flag),f
	goto	l3210
	
l539:	
	goto	l3210
	line	203
	
l538:	
	goto	l3210
	line	204
	
l540:	
	line	102
	goto	l3210
	
l541:	
	line	205
	
l542:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_send_string
psect	text265,local,class=CODE,delta=2
global __ptext265
__ptext265:

;; *************** function _send_string *****************
;; Defined at:
;;		line 304 in file "C:\Users\Phang\Desktop\9.80\PR 27\Internal Master\Master_Internal UART.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> STR_2(16), STR_1(12), 
;; Auto vars:     Size  Location     Type
;;  s               1   10[COMMON] PTR const unsigned char 
;;		 -> STR_2(16), STR_1(12), 
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
psect	text265
	file	"C:\Users\Phang\Desktop\9.80\PR 27\Internal Master\Master_Internal UART.c"
	line	304
	global	__size_of_send_string
	__size_of_send_string	equ	__end_of_send_string-_send_string
	
_send_string:	
	opt	stack 5
; Regs used in _send_string: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;send_string@s stored from wreg
	movwf	(send_string@s)
	line	305
	
l3126:	
;Master_Internal UART.c: 305: while (s && *s)send_char (*s++);
	goto	l3132
	
l587:	
	
l3128:	
	movf	(send_string@s),w
	movwf	fsr0
	fcall	stringdir
	fcall	_send_char
	
l3130:	
	movlw	(01h)
	movwf	(??_send_string+0)+0
	movf	(??_send_string+0)+0,w
	addwf	(send_string@s),f
	goto	l3132
	
l586:	
	
l3132:	
	movf	(send_string@s),w
	skipz
	goto	u3080
	goto	l591
u3080:
	
l3134:	
	movf	(send_string@s),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u3091
	goto	u3090
u3091:
	goto	l3128
u3090:
	goto	l591
	
l589:	
	goto	l591
	
l590:	
	line	306
	
l591:	
	return
	opt stack 0
GLOBAL	__end_of_send_string
	__end_of_send_string:
;; =============== function _send_string ends ============

	signat	_send_string,4216
	global	_lcd_goto
psect	text266,local,class=CODE,delta=2
global __ptext266
__ptext266:

;; *************** function _lcd_goto *****************
;; Defined at:
;;		line 309 in file "C:\Users\Phang\Desktop\9.80\PR 27\Internal Master\Master_Internal UART.c"
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
psect	text266
	file	"C:\Users\Phang\Desktop\9.80\PR 27\Internal Master\Master_Internal UART.c"
	line	309
	global	__size_of_lcd_goto
	__size_of_lcd_goto	equ	__end_of_lcd_goto-_lcd_goto
	
_lcd_goto:	
	opt	stack 5
; Regs used in _lcd_goto: [wreg+status,2+status,0+pclath+cstack]
;lcd_goto@data stored from wreg
	movwf	(lcd_goto@data)
	line	310
	
l3118:	
;Master_Internal UART.c: 310: if(data<16)
	movlw	(010h)
	subwf	(lcd_goto@data),w
	skipnc
	goto	u3071
	goto	u3070
u3071:
	goto	l3122
u3070:
	line	312
	
l3120:	
;Master_Internal UART.c: 311: {
;Master_Internal UART.c: 312: send_config(0x80+data);
	movf	(lcd_goto@data),w
	addlw	080h
	fcall	_send_config
	line	313
;Master_Internal UART.c: 313: }
	goto	l596
	line	314
	
l594:	
	line	316
	
l3122:	
;Master_Internal UART.c: 314: else
;Master_Internal UART.c: 315: {
;Master_Internal UART.c: 316: data=data-20;
	movf	(lcd_goto@data),w
	addlw	0ECh
	movwf	(??_lcd_goto+0)+0
	movf	(??_lcd_goto+0)+0,w
	movwf	(lcd_goto@data)
	line	317
	
l3124:	
;Master_Internal UART.c: 317: send_config(0xc0+data);
	movf	(lcd_goto@data),w
	addlw	0C0h
	fcall	_send_config
	goto	l596
	line	318
	
l595:	
	line	319
	
l596:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_goto
	__end_of_lcd_goto:
;; =============== function _lcd_goto ends ============

	signat	_lcd_goto,4216
	global	_lcd_clr
psect	text267,local,class=CODE,delta=2
global __ptext267
__ptext267:

;; *************** function _lcd_clr *****************
;; Defined at:
;;		line 236 in file "C:\Users\Phang\Desktop\9.80\PR 27\Internal Master\Master_Internal UART.c"
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
psect	text267
	file	"C:\Users\Phang\Desktop\9.80\PR 27\Internal Master\Master_Internal UART.c"
	line	236
	global	__size_of_lcd_clr
	__size_of_lcd_clr	equ	__end_of_lcd_clr-_lcd_clr
	
_lcd_clr:	
	opt	stack 5
; Regs used in _lcd_clr: [wreg+status,2+status,0+pclath+cstack]
	line	237
	
l3116:	
;Master_Internal UART.c: 237: send_config(0x01);
	movlw	(01h)
	fcall	_send_config
	line	238
;Master_Internal UART.c: 238: delay(600);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	02h
	movwf	(?_delay+1)
	movlw	058h
	movwf	(?_delay)

	fcall	_delay
	line	239
	
l556:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_clr
	__end_of_lcd_clr:
;; =============== function _lcd_clr ends ============

	signat	_lcd_clr,88
	global	_send_char
psect	text268,local,class=CODE,delta=2
global __ptext268
__ptext268:

;; *************** function _send_char *****************
;; Defined at:
;;		line 226 in file "C:\Users\Phang\Desktop\9.80\PR 27\Internal Master\Master_Internal UART.c"
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
;;		_send_string
;; This function uses a non-reentrant model
;;
psect	text268
	file	"C:\Users\Phang\Desktop\9.80\PR 27\Internal Master\Master_Internal UART.c"
	line	226
	global	__size_of_send_char
	__size_of_send_char	equ	__end_of_send_char-_send_char
	
_send_char:	
	opt	stack 5
; Regs used in _send_char: [wreg+status,2+status,0+pclath+cstack]
;send_char@data stored from wreg
	movwf	(send_char@data)
	line	227
	
l3104:	
;Master_Internal UART.c: 227: RC4=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(60/8),(60)&7
	line	228
	
l3106:	
;Master_Internal UART.c: 228: PORTB=data;
	movf	(send_char@data),w
	movwf	(6)	;volatile
	line	229
	
l3108:	
;Master_Internal UART.c: 229: RC5=1;
	bsf	(61/8),(61)&7
	line	230
	
l3110:	
;Master_Internal UART.c: 230: delay(50);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0
	movwf	(?_delay+1)
	movlw	032h
	movwf	(?_delay)

	fcall	_delay
	line	231
	
l3112:	
;Master_Internal UART.c: 231: RC5=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7
	line	232
	
l3114:	
;Master_Internal UART.c: 232: delay(50);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0
	movwf	(?_delay+1)
	movlw	032h
	movwf	(?_delay)

	fcall	_delay
	line	233
	
l553:	
	return
	opt stack 0
GLOBAL	__end_of_send_char
	__end_of_send_char:
;; =============== function _send_char ends ============

	signat	_send_char,4216
	global	_onoff_slave_buzzer
psect	text269,local,class=CODE,delta=2
global __ptext269
__ptext269:

;; *************** function _onoff_slave_buzzer *****************
;; Defined at:
;;		line 274 in file "C:\Users\Phang\Desktop\9.80\PR 27\Internal Master\Master_Internal UART.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    3[COMMON] unsigned char 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_internal_uart_write
;;		_internal_uart_read
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text269
	file	"C:\Users\Phang\Desktop\9.80\PR 27\Internal Master\Master_Internal UART.c"
	line	274
	global	__size_of_onoff_slave_buzzer
	__size_of_onoff_slave_buzzer	equ	__end_of_onoff_slave_buzzer-_onoff_slave_buzzer
	
_onoff_slave_buzzer:	
	opt	stack 6
; Regs used in _onoff_slave_buzzer: [wreg+status,2+status,0+pclath+cstack]
;onoff_slave_buzzer@c stored from wreg
	movwf	(onoff_slave_buzzer@c)
	line	275
	
l3094:	
;Master_Internal UART.c: 275: if (c==0)
	movf	(onoff_slave_buzzer@c),f
	skipz
	goto	u3061
	goto	u3060
u3061:
	goto	l3100
u3060:
	line	277
	
l3096:	
;Master_Internal UART.c: 276: {
;Master_Internal UART.c: 277: internal_uart_write(3);
	movlw	(03h)
	fcall	_internal_uart_write
	line	278
;Master_Internal UART.c: 278: internal_uart_write(0);
	movlw	(0)
	fcall	_internal_uart_write
	line	279
	
l3098:	
;Master_Internal UART.c: 279: dummy=internal_uart_read();
	fcall	_internal_uart_read
	movwf	(??_onoff_slave_buzzer+0)+0
	movf	(??_onoff_slave_buzzer+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_dummy)
	line	280
;Master_Internal UART.c: 280: }
	goto	l571
	line	281
	
l569:	
	line	283
	
l3100:	
;Master_Internal UART.c: 281: else
;Master_Internal UART.c: 282: {
;Master_Internal UART.c: 283: internal_uart_write(3);
	movlw	(03h)
	fcall	_internal_uart_write
	line	284
;Master_Internal UART.c: 284: internal_uart_write(1);
	movlw	(01h)
	fcall	_internal_uart_write
	line	285
	
l3102:	
;Master_Internal UART.c: 285: dummy=internal_uart_read();
	fcall	_internal_uart_read
	movwf	(??_onoff_slave_buzzer+0)+0
	movf	(??_onoff_slave_buzzer+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_dummy)
	goto	l571
	line	286
	
l570:	
	line	287
	
l571:	
	return
	opt stack 0
GLOBAL	__end_of_onoff_slave_buzzer
	__end_of_onoff_slave_buzzer:
;; =============== function _onoff_slave_buzzer ends ============

	signat	_onoff_slave_buzzer,4216
	global	_onoff_slave_led2
psect	text270,local,class=CODE,delta=2
global __ptext270
__ptext270:

;; *************** function _onoff_slave_led2 *****************
;; Defined at:
;;		line 258 in file "C:\Users\Phang\Desktop\9.80\PR 27\Internal Master\Master_Internal UART.c"
;; Parameters:    Size  Location     Type
;;  b               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  b               1    3[COMMON] unsigned char 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_internal_uart_write
;;		_internal_uart_read
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text270
	file	"C:\Users\Phang\Desktop\9.80\PR 27\Internal Master\Master_Internal UART.c"
	line	258
	global	__size_of_onoff_slave_led2
	__size_of_onoff_slave_led2	equ	__end_of_onoff_slave_led2-_onoff_slave_led2
	
_onoff_slave_led2:	
	opt	stack 6
; Regs used in _onoff_slave_led2: [wreg+status,2+status,0+pclath+cstack]
;onoff_slave_led2@b stored from wreg
	movwf	(onoff_slave_led2@b)
	line	259
	
l3084:	
;Master_Internal UART.c: 259: if (b==0)
	movf	(onoff_slave_led2@b),f
	skipz
	goto	u3051
	goto	u3050
u3051:
	goto	l3090
u3050:
	line	261
	
l3086:	
;Master_Internal UART.c: 260: {
;Master_Internal UART.c: 261: internal_uart_write(2);
	movlw	(02h)
	fcall	_internal_uart_write
	line	262
;Master_Internal UART.c: 262: internal_uart_write(0);
	movlw	(0)
	fcall	_internal_uart_write
	line	263
	
l3088:	
;Master_Internal UART.c: 263: dummy=internal_uart_read();
	fcall	_internal_uart_read
	movwf	(??_onoff_slave_led2+0)+0
	movf	(??_onoff_slave_led2+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_dummy)
	line	264
;Master_Internal UART.c: 264: }
	goto	l566
	line	265
	
l564:	
	line	267
	
l3090:	
;Master_Internal UART.c: 265: else
;Master_Internal UART.c: 266: {
;Master_Internal UART.c: 267: internal_uart_write(2);
	movlw	(02h)
	fcall	_internal_uart_write
	line	268
;Master_Internal UART.c: 268: internal_uart_write(1);
	movlw	(01h)
	fcall	_internal_uart_write
	line	269
	
l3092:	
;Master_Internal UART.c: 269: dummy=internal_uart_read();
	fcall	_internal_uart_read
	movwf	(??_onoff_slave_led2+0)+0
	movf	(??_onoff_slave_led2+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_dummy)
	goto	l566
	line	270
	
l565:	
	line	271
	
l566:	
	return
	opt stack 0
GLOBAL	__end_of_onoff_slave_led2
	__end_of_onoff_slave_led2:
;; =============== function _onoff_slave_led2 ends ============

	signat	_onoff_slave_led2,4216
	global	_onoff_slave_led1
psect	text271,local,class=CODE,delta=2
global __ptext271
__ptext271:

;; *************** function _onoff_slave_led1 *****************
;; Defined at:
;;		line 242 in file "C:\Users\Phang\Desktop\9.80\PR 27\Internal Master\Master_Internal UART.c"
;; Parameters:    Size  Location     Type
;;  a               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  a               1    3[COMMON] unsigned char 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_internal_uart_write
;;		_internal_uart_read
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text271
	file	"C:\Users\Phang\Desktop\9.80\PR 27\Internal Master\Master_Internal UART.c"
	line	242
	global	__size_of_onoff_slave_led1
	__size_of_onoff_slave_led1	equ	__end_of_onoff_slave_led1-_onoff_slave_led1
	
_onoff_slave_led1:	
	opt	stack 6
; Regs used in _onoff_slave_led1: [wreg+status,2+status,0+pclath+cstack]
;onoff_slave_led1@a stored from wreg
	movwf	(onoff_slave_led1@a)
	line	243
	
l3074:	
;Master_Internal UART.c: 243: if (a==0)
	movf	(onoff_slave_led1@a),f
	skipz
	goto	u3041
	goto	u3040
u3041:
	goto	l3080
u3040:
	line	245
	
l3076:	
;Master_Internal UART.c: 244: {
;Master_Internal UART.c: 245: internal_uart_write(1);
	movlw	(01h)
	fcall	_internal_uart_write
	line	246
;Master_Internal UART.c: 246: internal_uart_write(0);
	movlw	(0)
	fcall	_internal_uart_write
	line	247
	
l3078:	
;Master_Internal UART.c: 247: dummy=internal_uart_read();
	fcall	_internal_uart_read
	movwf	(??_onoff_slave_led1+0)+0
	movf	(??_onoff_slave_led1+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_dummy)
	line	248
;Master_Internal UART.c: 248: }
	goto	l561
	line	249
	
l559:	
	line	251
	
l3080:	
;Master_Internal UART.c: 249: else
;Master_Internal UART.c: 250: {
;Master_Internal UART.c: 251: internal_uart_write(1);
	movlw	(01h)
	fcall	_internal_uart_write
	line	252
;Master_Internal UART.c: 252: internal_uart_write(1);
	movlw	(01h)
	fcall	_internal_uart_write
	line	253
	
l3082:	
;Master_Internal UART.c: 253: dummy=internal_uart_read();
	fcall	_internal_uart_read
	movwf	(??_onoff_slave_led1+0)+0
	movf	(??_onoff_slave_led1+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_dummy)
	goto	l561
	line	254
	
l560:	
	line	255
	
l561:	
	return
	opt stack 0
GLOBAL	__end_of_onoff_slave_led1
	__end_of_onoff_slave_led1:
;; =============== function _onoff_slave_led1 ends ============

	signat	_onoff_slave_led1,4216
	global	_send_config
psect	text272,local,class=CODE,delta=2
global __ptext272
__ptext272:

;; *************** function _send_config *****************
;; Defined at:
;;		line 216 in file "C:\Users\Phang\Desktop\9.80\PR 27\Internal Master\Master_Internal UART.c"
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
psect	text272
	file	"C:\Users\Phang\Desktop\9.80\PR 27\Internal Master\Master_Internal UART.c"
	line	216
	global	__size_of_send_config
	__size_of_send_config	equ	__end_of_send_config-_send_config
	
_send_config:	
	opt	stack 5
; Regs used in _send_config: [wreg+status,2+status,0+pclath+cstack]
;send_config@data stored from wreg
	movwf	(send_config@data)
	line	217
	
l3062:	
;Master_Internal UART.c: 217: RC4=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7
	line	218
	
l3064:	
;Master_Internal UART.c: 218: PORTB=data;
	movf	(send_config@data),w
	movwf	(6)	;volatile
	line	219
	
l3066:	
;Master_Internal UART.c: 219: RC5=1;
	bsf	(61/8),(61)&7
	line	220
	
l3068:	
;Master_Internal UART.c: 220: delay(50);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0
	movwf	(?_delay+1)
	movlw	032h
	movwf	(?_delay)

	fcall	_delay
	line	221
	
l3070:	
;Master_Internal UART.c: 221: RC5=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7
	line	222
	
l3072:	
;Master_Internal UART.c: 222: delay(50);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0
	movwf	(?_delay+1)
	movlw	032h
	movwf	(?_delay)

	fcall	_delay
	line	223
	
l550:	
	return
	opt stack 0
GLOBAL	__end_of_send_config
	__end_of_send_config:
;; =============== function _send_config ends ============

	signat	_send_config,4216
	global	_delay
psect	text273,local,class=CODE,delta=2
global __ptext273
__ptext273:

;; *************** function _delay *****************
;; Defined at:
;;		line 211 in file "C:\Users\Phang\Desktop\9.80\PR 27\Internal Master\Master_Internal UART.c"
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
psect	text273
	file	"C:\Users\Phang\Desktop\9.80\PR 27\Internal Master\Master_Internal UART.c"
	line	211
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 5
; Regs used in _delay: [wreg]
	line	212
	
l3056:	
;Master_Internal UART.c: 212: for( ;data>0;data-=1);
	movf	(delay@data+3),w
	iorwf	(delay@data+2),w
	iorwf	(delay@data+1),w
	iorwf	(delay@data),w
	skipz
	goto	u3011
	goto	u3010
u3011:
	goto	l3060
u3010:
	goto	l547
	
l3058:	
	goto	l547
	
l545:	
	
l3060:	
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
	goto	u3025
	goto	u3026
u3025:
	subwf	(delay@data+1),f
u3026:
	movf	2+(??_delay+0)+0,w
	skipc
	incfsz	2+(??_delay+0)+0,w
	goto	u3027
	goto	u3028
u3027:
	subwf	(delay@data+2),f
u3028:
	movf	3+(??_delay+0)+0,w
	skipc
	incfsz	3+(??_delay+0)+0,w
	goto	u3029
	goto	u3020
u3029:
	subwf	(delay@data+3),f
u3020:

	movf	(delay@data+3),w
	iorwf	(delay@data+2),w
	iorwf	(delay@data+1),w
	iorwf	(delay@data),w
	skipz
	goto	u3031
	goto	u3030
u3031:
	goto	l3060
u3030:
	goto	l547
	
l546:	
	line	213
	
l547:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
	global	_internal_uart_read
psect	text274,local,class=CODE,delta=2
global __ptext274
__ptext274:

;; *************** function _internal_uart_read *****************
;; Defined at:
;;		line 296 in file "C:\Users\Phang\Desktop\9.80\PR 27\Internal Master\Master_Internal UART.c"
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
;;		_onoff_slave_led1
;;		_onoff_slave_led2
;;		_onoff_slave_buzzer
;; This function uses a non-reentrant model
;;
psect	text274
	file	"C:\Users\Phang\Desktop\9.80\PR 27\Internal Master\Master_Internal UART.c"
	line	296
	global	__size_of_internal_uart_read
	__size_of_internal_uart_read	equ	__end_of_internal_uart_read-_internal_uart_read
	
_internal_uart_read:	
	opt	stack 7
; Regs used in _internal_uart_read: [wreg]
	line	298
	
l3050:	
;Master_Internal UART.c: 297: unsigned char rec_data;
;Master_Internal UART.c: 298: while(RCIF==0);
	goto	l580
	
l581:	
	
l580:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u3001
	goto	u3000
u3001:
	goto	l580
u3000:
	goto	l3052
	
l582:	
	line	299
	
l3052:	
;Master_Internal UART.c: 299: rec_data = RCREG;
	movf	(26),w	;volatile
	movwf	(??_internal_uart_read+0)+0
	movf	(??_internal_uart_read+0)+0,w
	movwf	(internal_uart_read@rec_data)
	line	300
;Master_Internal UART.c: 300: return rec_data;
	movf	(internal_uart_read@rec_data),w
	goto	l583
	
l3054:	
	line	301
	
l583:	
	return
	opt stack 0
GLOBAL	__end_of_internal_uart_read
	__end_of_internal_uart_read:
;; =============== function _internal_uart_read ends ============

	signat	_internal_uart_read,89
	global	_internal_uart_write
psect	text275,local,class=CODE,delta=2
global __ptext275
__ptext275:

;; *************** function _internal_uart_write *****************
;; Defined at:
;;		line 290 in file "C:\Users\Phang\Desktop\9.80\PR 27\Internal Master\Master_Internal UART.c"
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
;;		_onoff_slave_led1
;;		_onoff_slave_led2
;;		_onoff_slave_buzzer
;; This function uses a non-reentrant model
;;
psect	text275
	file	"C:\Users\Phang\Desktop\9.80\PR 27\Internal Master\Master_Internal UART.c"
	line	290
	global	__size_of_internal_uart_write
	__size_of_internal_uart_write	equ	__end_of_internal_uart_write-_internal_uart_write
	
_internal_uart_write:	
	opt	stack 7
; Regs used in _internal_uart_write: [wreg]
;internal_uart_write@data stored from wreg
	movwf	(internal_uart_write@data)
	line	291
	
l3046:	
;Master_Internal UART.c: 291: while(TXIF==0);
	goto	l574
	
l575:	
	
l574:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u2991
	goto	u2990
u2991:
	goto	l574
u2990:
	goto	l3048
	
l576:	
	line	292
	
l3048:	
;Master_Internal UART.c: 292: TXREG=data;
	movf	(internal_uart_write@data),w
	movwf	(25)	;volatile
	line	293
	
l577:	
	return
	opt stack 0
GLOBAL	__end_of_internal_uart_write
	__end_of_internal_uart_write:
;; =============== function _internal_uart_write ends ============

	signat	_internal_uart_write,4216
psect	text276,local,class=CODE,delta=2
global __ptext276
__ptext276:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
