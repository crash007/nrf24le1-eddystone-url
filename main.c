#include "wiring.h"
#include "btle.h"
//#include "dht.h"
#include "main.h"
#include "uart.h"
#include "ds18b20.h"
#include "memory.h"


#define UARTTXPIN		P0_3		// P1.1 - UART TX
#define UARTRXPIN		P0_4		// P0.4	- UART RX


#define TEMP_MEM_BUFFER_SIZE MEMORY_FLASH_NV_EXT_END_PAGE_SIZE
#define NODE_CONFIGURATION_ADDRESS MEMORY_FLASH_NV_EXT_END_START_ADDRESS

//#include "aes-cmac.h"

// this is the largest packet that a 24l01 or 24le1 can send
// see https://github.com/google/eddystone/tree/master/eddystone-url for how to construct the url
// .com .net etc are abbreviated
// to edit, you should only need to change the URL (6 - 13)
// if you happen to use less than 13 bytes, change the Length field to the new length
// http://3.ly/ provides short URLs that work well for this

uint8_t beacon[17] =
{
  0x02,			// size
  0x01,			// type, LE General Discoverable Mode
  0x05,			// data ??

  0x05,			// size
  0x09,   // complete name
  0x62,0x6f,0x6a,0x33,

  0x07,  //size
  0x16,  //Service data
  0x09, 0x18,  //UUID in reverse 0x1809 Health Thermometer
  0x00, 0x00, 0x00, 0xff
  //0xa4, 0x08, 0x00, 0xfe //temperature in nrf format
 
};


int temp;
uint8_t ret;
unsigned long time;
uint8_t tmp;

struct NodeConfig
{
	uint8_t count; 
	int temp;
};

struct NodeConfig nc;
uint8_t temp_buf[TEMP_MEM_BUFFER_SIZE];

void setup(){
	interrupts();
	memory_flash_read_bytes(NODE_CONFIGURATION_ADDRESS,sizeof(nc),(uint8_t*)nc);
	
	gpio_pin_configure(UARTTXPIN,
                                           GPIO_PIN_CONFIG_OPTION_DIR_OUTPUT |
                                           GPIO_PIN_CONFIG_OPTION_OUTPUT_VAL_SET |
                                           GPIO_PIN_CONFIG_OPTION_PIN_MODE_OUTPUT_BUFFER_NORMAL_DRIVE_STRENGTH);

    	gpio_pin_configure(UARTRXPIN,
                                       GPIO_PIN_CONFIG_OPTION_DIR_INPUT |
                                       GPIO_PIN_CONFIG_OPTION_PIN_MODE_INPUT_BUFFER_ON_NO_RESISTORS);

    	uart_configure_8_n_1_19200();
	delay_ms(500);
	printf("count: %u",nc.count);
								// turn interrupts on
	btleBegin();							// setup the radio

	if(nc.count == 0){
		printf("Reading temp..");
		ret = ds18b20_read(&temp);
		printf("Temperature: %d",temp);
		nc.temp = temp;
		
	}

	btleAdvertise(&beacon, sizeof(beacon));		// start advertising the packet above
		
		
	
	nc.count++;
	memory_flash_write_bytes_smart(NODE_CONFIGURATION_ADDRESS,sizeof(nc),(uint8_t*)nc,temp_buf);
	

	watchdogRun(500);						// start watchdog and reset at 700 ms
	sleep(MEMORY_TIMER_OFF);				// switch to lowest mode that can wakeup from wdt
        
}

void loop(){
	
}
