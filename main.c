#include "wiring.h"
#include "btle.h"
//#include "uart.h"
#define UARTTXPIN		P0_3		// P1.1 - UART TX
#define UARTRXPIN		P0_4		// P0.4	- UART RX
#define SLEEP_TIME		500

// this is the largest packet that a 24l01 or 24le1 can send
// see https://github.com/google/eddystone/tree/master/eddystone-url for how to construct the url
// .com .net etc are abbreviated
// to edit, you should only need to change the URL (6 - 13)
// if you happen to use less than 13 bytes, change the Length field to the new length
// http://3.ly/ provides short URLs that work well for this

uint8_t beacon[17] =
{
  
    0x03,  // Length
  0x03,  // Param: Service List
  0xAA, 0xFE,  // Eddystone ID
  0x0c,  // Length
  0x16,  // Service Data
  0xAA, 0xFE, // Eddystone ID
  0x10,  // URL flag
  0xEB,  // Power
  0x03,  // http://
  'e',
  'a',
  's',
  'i',
  't',
   0x07,  // .com
};

uint8_t rawBeacon[]={
0xf3, 0xa3, 0x8a, 0x25, 0x9c, 0x25, 0x26, 0x8d, 0x6e, 0x4c, 0xdd, 0x6d, 0x59, 0x86, 0x4a, 0xb8, 0x6a, 0x40, 0x15, 0xad, 0xff, 0x4, 0x5a, 0x35, 0xbd, 0x5a, 0x48, 0xa
};

void setup(){
	
	
	interrupts();							// turn interrupts on
	/*
	gpio_pin_configure(UARTTXPIN,
                                           GPIO_PIN_CONFIG_OPTION_DIR_OUTPUT |
                                           GPIO_PIN_CONFIG_OPTION_OUTPUT_VAL_SET |
                                           GPIO_PIN_CONFIG_OPTION_PIN_MODE_OUTPUT_BUFFER_NORMAL_DRIVE_STRENGTH);

    	gpio_pin_configure(UARTRXPIN,
                                       GPIO_PIN_CONFIG_OPTION_DIR_INPUT |
                                       GPIO_PIN_CONFIG_OPTION_PIN_MODE_INPUT_BUFFER_ON_NO_RESISTORS);

    	uart_configure_8_n_1_19200();
	delay_ms(500);
	*/
        
	btleBegin();							// setup the radio	
	//	btleAdvertise(&beacon, sizeof(beacon));		// start advertising the packet above
	stopListening();
	write( rawBeacon, sizeof(rawBeacon), false );
	powerDown();
	watchdogRun(SLEEP_TIME);						// start watchdog and reset at 700 ms
	sleep(MEMORY_TIMER_OFF);				// switch to lowest mode that can wakeup from wdt
        
}

void loop(){

}
