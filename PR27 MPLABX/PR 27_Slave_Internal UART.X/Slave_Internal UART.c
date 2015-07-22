//============================================================================================================
//	Author				:CYTRON	
//	Project				:PR27
//	Project description	:Multi UART Interface (For Slave PCB and using Internal UART)
//  Version 			:v1.0
//============================================================================================================
//	include
//============================================================================================================
#include <pic.h> 

//	configuration
//============================================================================================================
__CONFIG ( 0x3F32 );				//configuration for the  microcontroller
									
//	define
//============================================================================================================
#define	rs				RC4				//RS pin of the LCD display
#define	e				RC5				//E pin of the LCD display
#define	led2			RA0				//led 1 (active high)			
#define led1			RA1				//led 2 (active high)
#define buzzer			RA5				//buzzer (active high)
#define SW1				RA2				//switch 1
#define SW2				RA3				//switch 2
#define SW3				RA4				//switch 3
#define	lcd_data		PORTB			//data of lcd
	
//	global variable and initialisation
//============================================================================================================
int k=0;
int m=0;

//	function prototype				(every function must have a function prototype)
//===========================================================================================================
void delay(unsigned long data);
void send_config(unsigned char data);
void send_char(unsigned char data);
void lcd_clr(void);
void internal_uart_write(unsigned char data);
unsigned char internal_uart_read(void);
void send_string(const char *s);
void lcd_goto(unsigned char data);

//	main function					(main fucntion of the program)
//===========================================================================================================
void main(void)
{
	//declare and initialize a variable
	unsigned char data_to_read=0;
	unsigned char temp;
	
	//set I/O input output
	TRISB = 0b00000000;					//configure PORTB I/O direction
	TRISC = 0b00000000;					//configure PORTC I/O direction
	TRISA = 0b00011100;					//configure PORTA I/O direction
	ADCON1 = 0b00000110;				//set port A as digital I/O
	
	//configure lcd
	send_config(0b00000001);			//clear display at lcd
	send_config(0b00000010);			//lcd return to home 
	send_config(0b00000110);			//entry mode-cursor increase 1
	send_config(0b00001100);			//display on, cursor off and cursor blink off
	send_config(0b00111000);			//function set

	//initial condition
	led1=0;				//led1 is off
	led2=0;				//led2 is off	
	buzzer=0;			//buzzer off
	lcd_data=0;			//no lcd data
	lcd_clr();			//lcd been cleared
	lcd_goto(0);						//put cursor on position 0
	send_string("Cytron PR27");				//send string "cytron" 
	lcd_goto(20);						//put cursor on position 20
	send_string("SLAVE Internal");					//send string "slave pcb"
	
	//Configure UART
	TRISC6=0;			//set RC6 as output
	TRISC7=1;			//set RC7 as input
	SPBRG=129;			// set baud rate as 9600 baud
	BRGH=1;				//baud rate high speed option
	TXEN=1;				//enable transmission
	TX9 =0;				//8-bit transmission
	RX9 =0;				//8-bit reception
	CREN=1;				//enable reception
	SPEN=1;				//enable serial port
	temp=RCREG;			//clear receive buffer
	temp=RCREG;
	
	
	/*
	protocol
	1 = led1
	2 = led2
	3 = buzzer
	4 = sw
	5 = lcd clear
	6 = lcd show data
	*/

	while(1)
	{
		data_to_read=internal_uart_read();				//read first byte from UART1
		
		switch(data_to_read)
		{
			case 1:								//for first byte of '1' received, led1 pointed
				data_to_read=internal_uart_read();		//read second byte from UART1
				if(data_to_read==0)led1=0;		//detect to ON or OFF led1
				else led1=1;
				internal_uart_write('a');              	//reply 'a' to UART1 as a feedback to show that the operation is done
				break;
				
			case 2:								//for first byte of '2' received, led2 pointed
				data_to_read=internal_uart_read();		//read second byte from UART1
				if(data_to_read==0)led2=0;		//detect to ON or OFF led2
				else led2=1;
				internal_uart_write('a');              	//reply 'a' to UART1 as a feedback to show that the operation is done
				break;
			
			case 3:								//for first byte of '3' received, buzzer pointed
				data_to_read=internal_uart_read();		//read second byte from UART1
				if(data_to_read==0)buzzer=0;	//detect to ON or OFF buzzer
				else buzzer=1;
				internal_uart_write('a');				//reply 'a' to UART1 as a feedback to show that the operation is done		
				break;
				
			case 4:								//for first byte of '4' received, switches pointed
				data_to_read=internal_uart_read();		//read second byte from UART1
				switch(data_to_read)			//detect which switch is selected
				{
					//sw1
					case 1:						//for second byte of '1' received, sw1 pointed				
						if(SW1)internal_uart_write(1);	//reply 1 to UART1 if sw1 unclick
						else internal_uart_write(0);		//reply 0 to UART1 if sw1 click
							 
						break;
					//sw2
					case 2:						//for second byte of '2' received, sw2 pointed
						if(SW2)internal_uart_write(1);	//reply 1 to UART1 if sw2 unclick
						else internal_uart_write(0);		//reply 0 to UART1 if sw2 click
						
						break;
					//sw3
					case 3:						//for second byte of '3' received, sw3 pointed
						if(SW3)internal_uart_write(1);	//reply 1 to UART1 if sw3 unclick
						else internal_uart_write(0);		//reply 0 to UART1 if sw3 click
							
						break;
				}	
				break;
				
			case 5:								//for first byte of '5' received, clear lcd operation pointed
				data_to_read=internal_uart_read();		//read second byte from UART1
				lcd_clr();						//clear the LCD display			
				k=0;							//clear variable k and m
				m=0;
				internal_uart_write('a');				//reply 'a' to UART1 to show that the operation is done
				break;
				
			case 6:								//for first byte of '6' received, display characters on lcd operation pointed
				data_to_read=internal_uart_read();		//read second byte to identify which character will show on LCD display
				if (k>15) 						//if k>15, the cursor move to second row, the character will show on second row
				{
					send_config(0xc0+m);
					send_char(data_to_read++);		//display character
					m++;							//increment of variable k and m		
					k++;
				}
				else
				{
					send_config(0x80+k);			//if k<16, the cursor move to first row, the character will show on first row
					send_char(data_to_read++);		//display character
					k++;							//increment of variable k
				}
				internal_uart_write('a');				//feedback 'a' to UART1 to show that the operation is done
				break;
		}		
	}	
}

// Function
//============================================================================================================
	
void delay(unsigned long data)					//delay function, the delay time
{												//depend on the given value
	for( ;data>0;data-=1);
}

void send_config(unsigned char data)			//send lcd configuration 
{
	rs=0;										//set lcd to configuration mode
	lcd_data=data;								//lcd data port = data
	e=1;										//pulse e to confirm the data
	delay(50);
	e=0;
	delay(50);
	
}

void send_char(unsigned char data)				//send lcd character
{
	rs=1;										//set lcd to display mode
	lcd_data=data;								//lcd data port = data
	e=1;										//pulse e to confirm the data
	delay(50);
	e=0;
	delay(50);
}

void lcd_clr(void)								//clear the lcd
{
 	send_config(0x01);
	delay(600);	
}

void internal_uart_write(unsigned char data)
{	
	while(TXIF==0);								//only send the new data after 
	TXREG=data;									//the previous data finish sent
}

unsigned char internal_uart_read(void)					//receive uart value
{
	unsigned char rec_data;
	while(RCIF==0);								//wait for data
	rec_data = RCREG;
	return rec_data;							//return the received data 
}

void send_string(const char *s)			//send a string to display in the lcd
{
  	while (s && *s)send_char (*s++);
}

void lcd_goto(unsigned char data)		//set the location of the lcd cursor
{										//if the given value is (0-15) the 
 	if(data<16)							//cursor will be at the upper line
	{									//if the given value is (20-35) the 
	 	send_config(0x80+data);			//cursor will be at the lower line
	}									//location of the lcd cursor(2X16):
	else								// -----------------------------------------------------
	{									// | |00|01|02|03|04|05|06|07|08|09|10|11|12|13|14|15| |
	 	data=data-20;					// | |20|21|22|23|24|25|26|27|28|29|30|31|32|33|34|35| |
		send_config(0xc0+data);			// -----------------------------------------------------	
	}
}			
