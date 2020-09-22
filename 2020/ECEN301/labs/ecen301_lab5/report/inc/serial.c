
LED_init();

UART_initUART(UART0,115200,STOP1,PARITY_NONE,FLOW_OFF);
UART_putString(UART0,"UART0 Initialized...\n",21);
char u_char = 0;
while(1){
    u_char = UART_getC(UART0);
    UART_putC(UART0,u_char);
    LED_setValue(u_char);
}
return 0;
