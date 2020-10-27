#include <stdio.h>
#include "xparameters.h"
#include "xil_cache.h"
#include "xgpio.h"
#include "gpio_header.h"
#include "audio.h"

#define	DELAY 100000
#define CLK 100000000

XGpio GpioOutput; /* The driver instance for GPIO Device configured as O/P */

int a[] = {};

void play_note(long note, int len){

}

int main () 
{
	int Status, d, i;

	Xil_ICacheEnable();
	Xil_DCacheEnable();


	/*Initialize the GPIO driver so that it's ready to use,
	 * specify the device ID that is generated in xparameters.h*/
	Status = XGpio_Initialize(&GpioOutput, XPAR_AXI_GPIO_1_DEVICE_ID);
	if (Status != XST_SUCCESS)
		return XST_FAILURE;
	/* Set the direction for all signals to be outputs */
	XGpio_SetDataDirection(&GpioOutput, 1, 0x0);
	/* Set the GPIO outputs to low */
	XGpio_DiscreteWrite(&GpioOutput, 1, 0x0);

	for (i = 0; i < 512; ++i){
		XGpio_DiscreteWrite(&GpioOutput, 1, i);
		for (d = 0; d < DELAY; d++);
	}

	//Stop Output
	XGpio_DiscreteWrite(&GpioOutput, 1, 0);
	for (d = 0; d < DELAY; d++);

	Xil_DCacheDisable();
	Xil_ICacheDisable();
	return 0;
}

