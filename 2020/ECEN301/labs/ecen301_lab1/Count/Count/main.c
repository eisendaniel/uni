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

/**  Main Function  ********************************************************/

void main()
{
	Test = 0b11111111;
	while (1)
	{
		WriteToPort(Test);
	}
}