/***************************************************************************/
/*                                                                         */
/*    A simple program to set port values and output them                  */
/*                                                                         */
/***************************************************************************/


/***  Include Files and global variables  **********************************/
#include "AT89C51AC3.h"

unsigned char Test;


/***  Set port 1 to specifier value  ***************************************/

void WriteToPort(unsigned char This)
{
	P1 = This;
}


/***  Pause program  *******************************************************/

void Delay(int Time)
{
	for (int i=0; i<Time; i++)
	/* Do Nothing */;
}


/**  Main Function  ********************************************************/

void main()
{
	Test = 0b00001111;
	while (1)
	{
		WriteToPort(0b00001111);
		Delay(10000);
		WriteToPort(0b11110000);
		Delay(10000);
	}
}