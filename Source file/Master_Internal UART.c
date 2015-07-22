//==========================================================================
//	Author              : Cytron Technologies
//	Project             : PR27-Multi UART Interface (For Master PCB)
//	Project description	:Multi UART Interface (For Master PCB and using Internal UART)
//  Version             :v1.0
//==========================================================================

//	include
//==========================================================================
#if defined(__XC8)
  #include <xc.h>
 #pragma config CONFIG = 0x3F32
//FOSC = EXTRC     // Oscillator Selection bits (RC oscillator)
//WDTE = ON        // Watchdog Timer Enable bit (WDT enabled)
//PWRTE = OFF      // Power-up Timer Enable bit (PWRT disabled)
//BOREN = ON       // Brown-out Reset Enable bit (BOR enabled)
//LVP = ON         // Low-Voltage (Single-Supply) In-Circuit Serial Programming Enable bit (RB3/PGM pin has PGM function; low-voltage programming enabled)
//CPD = OFF        // Data EEPROM Memory Code Protection bit (Data EEPROM code protection off)
//WRT = OFF        // Flash Program Memory Write Enable bits (Write protection off; all program memory may be written to by EECON control)
//CP = OFF         // Flash Program Memory Code Protection bit (Code protection off)

#else
//#include <htc.h>                  //include the PIC microchip header file
#include <pic.h>

//	configuration
//==========================================================================
__CONFIG (0x3F32);//configuration for the  microcontroller

#endif
//==========================================================================
			

//	define
//============================================================================================================
#define	RS          RC4				//RS pin of the LCD display
#define	E           RC5				//E pin of the LCD display
#define	LED2        RA0				//led 1 (active high)
#define LED1        RA1				//led 2 (active high)
#define BUZZER      RA5				//buzzer (active high)
#define SW1         RA2				//switch 1
#define SW2         RA3				//switch 2
#define SW3         RA4				//switch 3
#define	LCD_DATA		PORTB			//data of lcd
	
//	global variable and initialisation
//============================================================================================================
unsigned char dummy=1;

//	function prototype				(every function must have a function prototype)
//===========================================================================================================
void delay(unsigned long data);
void send_config(unsigned char data);
void send_char(unsigned char data);
void lcd_clr(void);
void onoff_slave_led1(unsigned char a);
void onoff_slave_led2(unsigned char b);
void onoff_slave_buzzer(unsigned char c);
void internal_uart_write(unsigned char data);
unsigned char internal_uart_read(void);
void send_string(const char *s);
void lcd_goto(unsigned char data);

//	main function					(main fucntion of the program)
//===========================================================================================================
void main(void)
{
	//declaration of variables
	unsigned char temp;
	unsigned char sw1_flag=1;
	unsigned char slave_led1_flag=0;
	unsigned char sw2_flag=1;
	unsigned char slave_led2_flag=0;
	unsigned char sw3_flag=1;
	unsigned char slave_buzzer_flag=0;	
	unsigned char slave_sw1_flag=1;
	unsigned char slave_sw2_flag=1;
	unsigned char slave_sw3_flag=1;
	
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
	LED1=0;				//led1 is off
	LED2=0;				//led2 is off
	BUZZER=0;			//buzzer off
	LCD_DATA=0;			//no lcd data
	lcd_clr();			//lcd been cleared
	lcd_goto(0);						//put cursor on position 0
	send_string("Cytron PR27");				//send string "cytron" 
	lcd_goto(20);						//put cursor on position 20
	send_string("MASTER Internal");					//send string "master pcb"
	
	//Configure UART
	TRISC6=0;			//set RC6 as output
	TRISC7=1;			//set RC7 as input
	SPBRG=129;		//set baud rate as 9600 baud
	BRGH=1;				//baud rate high speed option
	TXEN=1;				//enable transmission
	TX9 =0;				//8-bit transmission
	RX9 =0;				//8-bit reception	
	CREN=1;				//enable reception
	SPEN=1;				//enable serial port
	temp=RCREG;		//clear receive buffer
	temp=RCREG;

	LED1=0;
	LED2=0;
	BUZZER=0;

	while(1)
	{	
		
	/*****when SW1 pressed, give command to ON/OFF the led1 of slave***************************************/		
		if(SW1==0)                              //SW1 pressed
		{
			if(sw1_flag!=0)                       //if SW1 is not pressed in previous loop
			{
				sw1_flag=0;                         //clear sw1_flag
				slave_led1_flag=!slave_led1_flag;		//toggle led1 flag
				onoff_slave_led1(slave_led1_flag);	//decide to ON or OFF led1 in slave
			}		
		}
		else
		{
			if(sw1_flag==0) sw1_flag=1;					//when SW1 is not pressed, set the sw1_flag to '1'
		}	
	/*****when SW2 pressed, give command to ON/OFF the led2 of slave***************************************/
		
		if(SW2==0)                      //SW2 pressed
		{
			if(sw2_flag!=0)								//if SW2 is not pressed in previous loop
			{
				sw2_flag=0;                 //clear sw2_flag
				slave_led2_flag=!slave_led2_flag;		//toggle led2 flag
				onoff_slave_led2(slave_led2_flag);	//decide to ON or OFF led2 in slave	
			}		
		}
		else
		{
			if(sw2_flag==0) sw2_flag=1;					//when SW2 is not pressed, set the sw2_flag to '1'
		}
		
	/*****when SW3 pressed, give command to ON/OFF the led1 of slave***************************************/

		if(SW3==0)										//SW3 pressed
		{
			if(sw3_flag!=0)							//if SW3 is not pressed in previous loop
			{
				sw3_flag=0;								//clear sw3_flag
				slave_buzzer_flag=!slave_buzzer_flag;	//toggle buzzer flag
				onoff_slave_buzzer(slave_buzzer_flag);//decide to ON or OFF buzzer in slave
			}		
		}
		else
		{
			if(sw3_flag==0) sw3_flag=1;					//when SW3 is not pressed, set the sw3_flag to '1'
		}
		
	/*****detect sw1 on slave and On or Off the LED1*******************************************************/	

		internal_uart_write(4);									//give the first byte '4', point to switches of the slave
		internal_uart_write(1);									//give the second byte '1', point to sw1 on slave
		dummy=internal_uart_read();							//read reply byte from slave, '0' is pressed, '1' is not		
		if(dummy==0)                      //if sw1 of slave pressed
		{
			if(slave_sw1_flag!=0)						//if slave sw1 is not pressed in previous loop
			{
				slave_sw1_flag=0;						//clear slave sw1 flag
				LED1=!LED1;                 //toggle the status of led1
			}	
		}
		else
		{
			if(slave_sw1_flag==0) slave_sw1_flag=1;		//when slave sw1 is not pressed, set slave sw1 flag to '1'
		}
		
	/*****detect sw2 on slave and On or Off the LED2*******************************************************/		

		internal_uart_write(4);									//give the first byte '4', point to switches of the slave
		internal_uart_write(2);									//give the second byte '2', point to sw1 on slave
		dummy=internal_uart_read();							//read reply byte from slave, '0' is pressed, '1' is not
		if(dummy==0)                            //if sw2 of slave pressed
		{
			if(slave_sw2_flag!=0)						//if slave sw2 is not pressed in previous loop
			{
				slave_sw2_flag=0;             //clear slave sw2 flag
				LED2=!LED2;                   //toggle the status of led2
			}	
		}
		else
		{
			if(slave_sw2_flag==0) slave_sw2_flag=1;		//when slave sw2 is not pressed, set slave sw2 flag to '1'
		}

	/*****detect sw3 on slave and On or Off the LED2*******************************************************/

		internal_uart_write(4);									//give the first byte '4', point to switches of the slave
		internal_uart_write(3);									//give the second byte '3', point to sw1 on slave
		dummy=internal_uart_read();							//read reply byte from slave, '0' is pressed, '1' is not
		if(dummy==0)                            //if sw3 of slave pressed
		{
			if(slave_sw3_flag!=0)					//if slave sw3 is not pressed in previous loop
			{
				slave_sw3_flag=0;						//clear slave sw3 flag
				BUZZER=!BUZZER;							//toggle the status of buzzer
			}	
		}
		else
		{
			if(slave_sw3_flag==0) slave_sw3_flag=1;		//when slave sw3 is not pressed, set slave sw3 flag to '1'
		}								
	}					
}	

// Function
//============================================================================================================
	
void delay(unsigned long data)				//delay function, the delay time
{                                     //depend on the given value
	for( ;data>0;data-=1);
}

void send_config(unsigned char data)		//send lcd configuration 
{
	RS=0;                       //set lcd to configuration mode
	LCD_DATA=data;							//lcd data port = data
	E=1;                        //pulse e to confirm the data
	delay(50);
	E=0;
	delay(50);	
}

void send_char(unsigned char data)			//send lcd character
{
	RS=1;                       //set lcd to display mode
	LCD_DATA=data;							//lcd data port = data
	E=1;                        //pulse e to confirm the data
	delay(50);
	E=0;
	delay(50);
}

void lcd_clr(void)							//clear the lcd
{
 	send_config(0x01);
	delay(600);	
}

void onoff_slave_led1(unsigned char a)		//function to on or off led1 in slave
{
	if (a==0)                             //if slave led1 flag is clear, off led1 in slave
	{
		internal_uart_write(1);             //give first byte of '1' to slave, point to led1 in slave
	    internal_uart_write(0);						//give second byte '0' to slave to off led1 in slave
	    dummy=internal_uart_read();				//receive reply byte from slave 
	}
	else									//else, on the led1 in slave
	{
		internal_uart_write(1);						//give first byte of '1' to slave, point to led1 in slave 
	   	internal_uart_write(1);					//give second byte '1' to slave to off led1 in slave
	   	dummy=internal_uart_read();			//receive reply byte from slave
	}		
}

void onoff_slave_led2(unsigned char b)		//function to on or off led2 in slave
{
	if (b==0)								//if slave led2 flag is clear, off led2 in slave
	{
		internal_uart_write(2);						//give first byte of '2' to slave, point to led2 in slave
		internal_uart_write(0);						//give second byte '0' to slave to off led2 in slave
		dummy=internal_uart_read();				//receive reply byte from slave 
	}
	else									//else, on the led2 in slave
	{
		internal_uart_write(2);						//give first byte of '2' to slave, point to led2 in slave
    	internal_uart_write(1);					//give second byte '1' to slave to off led2 in slave
	   	dummy=internal_uart_read();			//receive reply byte from slave 
	}
}

void onoff_slave_buzzer(unsigned char c)	//function to on or off buzzer in slave
{
	if (c==0)								//if slave buzzer flag is clear, off buzzer in slave						
	{
		internal_uart_write(3);						//give first byte of '3'to slave, point to buzzer in slave
	    internal_uart_write(0);					//give second byte '0' to slave to off buzzer in slave
	    dummy=internal_uart_read();			//receive reply byte from slave			
	}
	else									//else, on the buzzer in slave
	{
		internal_uart_write(3);						//give first byte of '3' to slave, point to buzzer in slave		
	   	internal_uart_write(1);					//give second byte '1' to slave to off buzzer in slave
	   	dummy=internal_uart_read();			//receive reply byte from slave
	}		
}	

void internal_uart_write(unsigned char data)			//write a value to uart
{	
	while(TXIF==0);						//only send the new data after 
	TXREG=data;								//the previous data finish sent
}

unsigned char internal_uart_read(void)				//receive uart value
{
	unsigned char rec_data;
	while(RCIF==0);							//wait for data
	rec_data = RCREG;
	return rec_data;						//return the received data 
}

void send_string(const char *s)			//send a string to display in the lcd
{
  	while (s && *s)send_char (*s++);
}

void lcd_goto(unsigned char data)		//set the location of the lcd cursor
{                         //if the given value is (0-15) the
 	if(data<16)							//cursor will be at the upper line
	{                       //if the given value is (20-35) the
	 	send_config(0x80+data);			//cursor will be at the lower line
	}                             //location of the lcd cursor(2X16):
	else                          // -----------------------------------------------------
	{                             // | |00|01|02|03|04|05|06|07|08|09|10|11|12|13|14|15| |
	 	data=data-20;               // | |20|21|22|23|24|25|26|27|28|29|30|31|32|33|34|35| |
		send_config(0xc0+data);			// -----------------------------------------------------	
	}
}							