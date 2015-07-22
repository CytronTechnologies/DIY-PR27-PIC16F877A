//=======================================================================================
//	Author              :Cytron Technologies
//	Project             :DIY Project (PR27- Multi UART Interface)
//	Project description	:This project will teach you how to use the
//                       internal UART peripheral and write own UART
//                       communication protocol as well.
//========================================================================================


//	include
//==========================================================================
#include "uart_io.h"


//	unused uart channel handler
//==========================================================================
unsigned char dummy_byte=0;

#ifndef UART_1_tx
	#define UART_1_tx dummy_byte	
#endif
#ifndef UART_1_tx_tris
	#define UART_1_tx_tris dummy_byte	
#endif
#ifndef UART_1_rx
	#define UART_1_rx dummy_byte	
#endif
#ifndef UART_1_rx_tris
	#define UART_1_rx_tris dummy_byte	
#endif
#ifndef UART_1_baudrate
	#define UART_1_baudrate 9600	
#endif

#ifndef UART_2_tx
	#define UART_2_tx dummy_byte	
#endif
#ifndef UART_2_tx_tris
	#define UART_2_tx_tris dummy_byte	
#endif
#ifndef UART_2_rx
	#define UART_2_rx dummy_byte	
#endif
#ifndef UART_2_rx_tris
	#define UART_2_rx_tris dummy_byte	
#endif
#ifndef UART_2_baudrate
	#define UART_2_baudrate 9600	
#endif

#ifndef UART_3_tx
	#define UART_3_tx dummy_byte	
#endif
#ifndef UART_3_tx_tris
	#define UART_3_tx_tris dummy_byte	
#endif
#ifndef UART_3_rx
	#define UART_3_rx dummy_byte	
#endif
#ifndef UART_3_rx_tris
	#define UART_3_rx_tris dummy_byte	
#endif
#ifndef UART_3_baudrate
	#define UART_3_baudrate 9600	
#endif

#ifndef UART_4_tx
	#define UART_4_tx dummy_byte	
#endif
#ifndef UART_4_tx_tris
	#define UART_4_tx_tris dummy_byte	
#endif
#ifndef UART_4_rx
	#define UART_4_rx dummy_byte	
#endif
#ifndef UART_4_rx_tris
	#define UART_4_rx_tris dummy_byte	
#endif
#ifndef UART_4_baudrate
	#define UART_4_baudrate 9600	
#endif

#ifndef UART_5_tx
	#define UART_5_tx dummy_byte	
#endif
#ifndef UART_5_tx_tris
	#define UART_5_tx_tris dummy_byte	
#endif
#ifndef UART_5_rx
	#define UART_5_rx dummy_byte	
#endif
#ifndef UART_5_rx_tris
	#define UART_5_rx_tris dummy_byte	
#endif
#ifndef UART_5_baudrate
	#define UART_5_baudrate 9600	
#endif

#ifndef UART_6_tx
	#define UART_6_tx dummy_byte	
#endif
#ifndef UART_6_tx_tris
	#define UART_6_tx_tris dummy_byte	
#endif
#ifndef UART_6_rx
	#define UART_6_rx dummy_byte	
#endif
#ifndef UART_6_rx_tris
	#define UART_6_rx_tris dummy_byte	
#endif
#ifndef UART_6_baudrate
	#define UART_6_baudrate 9600	
#endif

#ifndef UART_7_tx
	#define UART_7_tx dummy_byte	
#endif
#ifndef UART_7_tx_tris
	#define UART_7_tx_tris dummy_byte	
#endif
#ifndef UART_7_rx
	#define UART_7_rx dummy_byte	
#endif
#ifndef UART_7_rx_tris
	#define UART_7_rx_tris dummy_byte	
#endif
#ifndef UART_7_baudrate
	#define UART_7_baudrate 9600	
#endif

#ifndef UART_8_tx
	#define UART_8_tx dummy_byte	
#endif
#ifndef UART_8_tx_tris
	#define UART_8_tx_tris dummy_byte	
#endif
#ifndef UART_8_rx
	#define UART_8_rx dummy_byte	
#endif
#ifndef UART_8_rx_tris
	#define UART_8_rx_tris dummy_byte	
#endif
#ifndef UART_8_baudrate
	#define UART_8_baudrate 9600	
#endif


//	baudrate cycle definition
//==========================================================================
#define UART_1_baudrate_cycle	(_XTAL_FREQ/4)/UART_1_baudrate
#define UART_2_baudrate_cycle	(_XTAL_FREQ/4)/UART_2_baudrate
#define UART_3_baudrate_cycle	(_XTAL_FREQ/4)/UART_3_baudrate
#define UART_4_baudrate_cycle	(_XTAL_FREQ/4)/UART_4_baudrate
#define UART_5_baudrate_cycle	(_XTAL_FREQ/4)/UART_5_baudrate
#define UART_6_baudrate_cycle	(_XTAL_FREQ/4)/UART_6_baudrate
#define UART_7_baudrate_cycle	(_XTAL_FREQ/4)/UART_7_baudrate
#define UART_8_baudrate_cycle	(_XTAL_FREQ/4)/UART_8_baudrate


//	functions
//==========================================================================
void uart_init(unsigned char channel)
{
	switch(channel)
	{
		case 1:
			UART_1_tx=1;		//set tx pin to '1'
			UART_1_tx_tris=0;	//set tx pin as output
			UART_1_rx=1;		//set rx pin to '1'
			UART_1_rx_tris=1;	//set rx pin as input
			break;	
		case 2:
			UART_2_tx=1;		//set tx pin to '1'
			UART_2_tx_tris=0;	//set tx pin as output
			UART_2_rx=1;		//set rx pin to '1'
			UART_2_rx_tris=1;	//set rx pin as input
			break;
		case 3:
			UART_3_tx=1;		//set tx pin to '1'
			UART_3_tx_tris=0;	//set tx pin as output
			UART_3_rx=1;		//set rx pin to '1'
			UART_3_rx_tris=1;	//set rx pin as input
			break;
		case 4:
			UART_4_tx=1;		//set tx pin to '1'
			UART_4_tx_tris=0;	//set tx pin as output
			UART_4_rx=1;		//set rx pin to '1'
			UART_4_rx_tris=1;	//set rx pin as input
			break;
		case 5:
			UART_5_tx=1;		//set tx pin to '1'
			UART_5_tx_tris=0;	//set tx pin as output
			UART_5_rx=1;		//set rx pin to '1'
			UART_5_rx_tris=1;	//set rx pin as input
			break;
		case 6:
			UART_6_tx=1;		//set tx pin to '1'
			UART_6_tx_tris=0;	//set tx pin as output
			UART_6_rx=1;		//set rx pin to '1'
			UART_6_rx_tris=1;	//set rx pin as input
			break;
		case 7:
			UART_7_tx=1;		//set tx pin to '1'
			UART_7_tx_tris=0;	//set tx pin as output
			UART_7_rx=1;		//set rx pin to '1'
			UART_7_rx_tris=1;	//set rx pin as input
			break;
		case 8:
			UART_8_tx=1;		//set tx pin to '1'
			UART_8_tx_tris=0;	//set tx pin as output
			UART_8_rx=1;		//set rx pin to '1'
			UART_8_rx_tris=1;	//set rx pin as input
			break;
				
	}		
}

void uart_write(unsigned char channel,unsigned char data)
{
	unsigned char i;
	
	switch(channel)
	{
		case 1:
			UART_1_tx=0;
			_delay(UART_1_baudrate_cycle-15);
			for(i=1;i>0;i=i<<1)
			{
				if((data&i)==0)
				{
					UART_1_tx=0;
					_delay(UART_1_baudrate_cycle-21);	
				}
				else
				{
					UART_1_tx=1;
					_delay(UART_1_baudrate_cycle-20);	
				}		
			}
			_delay(8);
			UART_1_tx=1;
			_delay(UART_1_baudrate_cycle-3);	
			break;
			
		case 2:
			UART_2_tx=0;
			_delay(UART_2_baudrate_cycle-15);
			for(i=1;i>0;i=i<<1)
			{
				if((data&i)==0)
				{
					UART_2_tx=0;
					_delay(UART_2_baudrate_cycle-21);	
				}
				else
				{
					UART_2_tx=1;
					_delay(UART_2_baudrate_cycle-20);	
				}		
			}
			_delay(8);
			UART_2_tx=1;
			_delay(UART_2_baudrate_cycle-3);	
			break;

		case 3:
			UART_3_tx=0;
			_delay(UART_3_baudrate_cycle-15);
			for(i=1;i>0;i=i<<1)
			{
				if((data&i)==0)
				{
					UART_3_tx=0;
					_delay(UART_3_baudrate_cycle-21);	
				}
				else
				{
					UART_3_tx=1;
					_delay(UART_3_baudrate_cycle-20);	
				}		
			}
			_delay(8);
			UART_3_tx=1;
			_delay(UART_3_baudrate_cycle-3);	
			break;

		case 4:
			UART_4_tx=0;
			_delay(UART_4_baudrate_cycle-15);
			for(i=1;i>0;i=i<<1)
			{
				if((data&i)==0)
				{
					UART_4_tx=0;
					_delay(UART_4_baudrate_cycle-21);	
				}
				else
				{
					UART_4_tx=1;
					_delay(UART_4_baudrate_cycle-20);	
				}		
			}
			_delay(8);
			UART_4_tx=1;
			_delay(UART_4_baudrate_cycle-3);	
			break;

		case 5:
			UART_5_tx=0;
			_delay(UART_5_baudrate_cycle-15);
			for(i=1;i>0;i=i<<1)
			{
				if((data&i)==0)
				{
					UART_5_tx=0;
					_delay(UART_5_baudrate_cycle-21);	
				}
				else
				{
					UART_5_tx=1;
					_delay(UART_5_baudrate_cycle-20);	
				}		
			}
			_delay(8);
			UART_5_tx=1;
			_delay(UART_5_baudrate_cycle-3);	
			break;

		case 6:
			UART_6_tx=0;
			_delay(UART_6_baudrate_cycle-15);
			for(i=1;i>0;i=i<<1)
			{
				if((data&i)==0)
				{
					UART_6_tx=0;
					_delay(UART_6_baudrate_cycle-21);	
				}
				else
				{
					UART_6_tx=1;
					_delay(UART_6_baudrate_cycle-20);	
				}		
			}
			_delay(8);
			UART_6_tx=1;
			_delay(UART_6_baudrate_cycle-3);	
			break;

		case 7:
			UART_7_tx=0;
			_delay(UART_7_baudrate_cycle-15);
			for(i=1;i>0;i=i<<1)
			{
				if((data&i)==0)
				{
					UART_7_tx=0;
					_delay(UART_7_baudrate_cycle-21);	
				}
				else
				{
					UART_7_tx=1;
					_delay(UART_7_baudrate_cycle-20);	
				}		
			}
			_delay(8);
			UART_7_tx=1;
			_delay(UART_7_baudrate_cycle-3);	
			break;

		case 8:
			UART_8_tx=0;
			_delay(UART_8_baudrate_cycle-15);
			for(i=1;i>0;i=i<<1)
			{
				if((data&i)==0)
				{
					UART_8_tx=0;
					_delay(UART_8_baudrate_cycle-21);	
				}
				else
				{
					UART_8_tx=1;
					_delay(UART_8_baudrate_cycle-20);	
				}		
			}
			_delay(8);
			UART_8_tx=1;
			_delay(UART_8_baudrate_cycle-3);	
			break;

	}		
}	
	
	
unsigned char uart_read(unsigned char channel)
{
	unsigned char i;
	unsigned char result=0;
	unsigned char dummy_mask=0x00;
	
	switch(channel)
	{
		case 1:
			while(UART_1_rx);					//wait for start bit
			_delay(UART_1_baudrate_cycle-10);	//delay for 1 and half bit
			_delay(UART_1_baudrate_cycle/2);
			for(i=1;i>0;i=i<<1)					
			{
				if(UART_1_rx==1)
				{
					result|=i;
				}
				else 
				{
					result|=result;
				}
				_delay(UART_1_baudrate_cycle-20);
			}
			_delay(UART_1_baudrate_cycle/2);		
			break;	
		case 2:
			while(UART_2_rx);					//wait for start bit
			_delay(UART_2_baudrate_cycle-10);	//delay for 1 and half bit
			_delay(UART_2_baudrate_cycle/2);
			for(i=1;i>0;i=i<<1)					
			{
				if(UART_2_rx==1)
				{
					result|=i;
				}
				else 
				{
					result|=result;
				}
				_delay(UART_2_baudrate_cycle-20);
			}
			_delay(UART_2_baudrate_cycle/2);		
			break;	
		case 3:
			result=0;
			while(UART_3_rx);					//wait for start bit
			_delay(UART_3_baudrate_cycle-10);	//delay for 1 and half bit
			_delay(UART_3_baudrate_cycle/2);
			for(i=1;i>0;i=i<<1)						
			{
				if(UART_3_rx)
				{
					result|=i;
				}
				else 
				{
					result|=result;
				}
				_delay(UART_3_baudrate_cycle-20);
			}
			_delay(UART_3_baudrate_cycle/2);		
			break;	
		case 4:
			while(UART_4_rx);					//wait for start bit
			_delay(UART_4_baudrate_cycle-10);	//delay for 1 and half bit
			_delay(UART_4_baudrate_cycle/2);
			for(i=1;i>0;i=i<<1)					
			{
				if(UART_4_rx==1)
				{
					result|=i;
				}
				else 
				{
					result|=result;
				}
				_delay(UART_4_baudrate_cycle-20);
			}
			_delay(UART_4_baudrate_cycle/2);		
			break;	
		case 5:
			while(UART_5_rx);					//wait for start bit
			_delay(UART_5_baudrate_cycle-10);	//delay for 1 and half bit
			_delay(UART_5_baudrate_cycle/2);
			for(i=1;i>0;i=i<<1)					
			{
				if(UART_5_rx==1)
				{
					result|=i;
				}
				else 
				{
					result|=result;
				}
				_delay(UART_5_baudrate_cycle-20);
			}
			_delay(UART_5_baudrate_cycle/2);		
			break;	
		case 6:
			while(UART_6_rx);					//wait for start bit
			_delay(UART_6_baudrate_cycle-10);	//delay for 1 and half bit
			_delay(UART_6_baudrate_cycle/2);
			for(i=1;i>0;i=i<<1)					
			{
				if(UART_6_rx==1)
				{
					result|=i;
				}
				else 
				{
					result|=result;
				}
				_delay(UART_6_baudrate_cycle-20);
			}
			_delay(UART_6_baudrate_cycle/2);		
			break;	
		case 7:
			while(UART_7_rx);					//wait for start bit
			_delay(UART_7_baudrate_cycle-10);	//delay for 1 and half bit
			_delay(UART_7_baudrate_cycle/2);
			for(i=1;i>0;i=i<<1)					
			{
				if(UART_7_rx==1)
				{
					result|=i;
				}
				else 
				{
					result|=result;
				}
				_delay(UART_7_baudrate_cycle-20);
			}
			_delay(UART_7_baudrate_cycle/2);		
			break;	
		case 8:
			while(UART_8_rx);					//wait for start bit
			_delay(UART_8_baudrate_cycle-10);	//delay for 1 and half bit
			_delay(UART_8_baudrate_cycle/2);
			for(i=1;i>0;i=i<<1)					
			{
				if(UART_8_rx==1)
				{
					result|=i;
				}
				else 
				{
					result|=result;
				}
				_delay(UART_8_baudrate_cycle-20);
			}
			_delay(UART_8_baudrate_cycle/2);		
			break;	
		
	}	
	return result;
}	
