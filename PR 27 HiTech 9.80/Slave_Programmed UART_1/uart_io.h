

//	include
//==========================================================================
#include <pic.h>


//	define system crystal frequency
//==========================================================================
#define _XTAL_FREQ 20000000		//frequency of the crystal


//UART configuration
//==========================================================================
#define UART_1_tx			RC2			//define which pin is used for build TX of UART1
#define UART_1_tx_tris		TRISC2
#define UART_1_rx			RC3			//define which pin is used for build RX of UART1	
#define UART_1_rx_tris		TRISC3
#define UART_1_baudrate		9600		//define the baudrate of this UART channel

#define UART_2_tx			RC0			//define which pin is used for build TX of UART2
#define UART_2_tx_tris		TRISC0
#define UART_2_rx			RC1			//define which pin is used for build RX of UART2
#define UART_2_rx_tris		TRISC1
#define UART_2_baudrate		9600		//define the baudrate of this UART channe2 

//#define UART_3_tx			RC6
//#define UART_3_tx_tris		TRISC6
//#define UART_3_rx			RC7
//#define UART_3_rx_tris		TRISC7
//#define UART_3_baudrate		115200

//#define UART_4_tx			RB1
//#define UART_4_tx_tris		TRISB1
//#define UART_4_rx			RB2
//#define UART_4_rx_tris		TRISB2
//#define UART_4_baudrate		9600

//#define UART_5_tx			RB1
//#define UART_5_tx_tris		TRISB1
//#define UART_5_rx			RB2
//#define UART_5_rx_tris		TRISB2
//#define UART_5_baudrate		9600

//#define UART_6_tx			RB1
//#define UART_6_tx_tris		TRISB1
//#define UART_6_rx			RB2
//#define UART_6_rx_tris		TRISB2
//#define UART_6_baudrate		9600

//#define UART_7_tx			RB1
//#define UART_7_tx_tris		TRISB1
//#define UART_7_rx			RB2
//#define UART_7_rx_tris		TRISB2
//#define UART_7_baudrate		9600

//#define UART_8_tx			RB1
//#define UART_8_tx_tris		TRISB1
//#define UART_8_rx			RB2
//#define UART_8_rx_tris		TRISB2
//#define UART_8_baudrate		9600


//	function prototype
//==========================================================================
//the function of initialize UART
void uart_init(unsigned char channel);
//the function of write 
void uart_write(unsigned char channel,unsigned char data);
//the function of read
unsigned char uart_read(unsigned char channel);

