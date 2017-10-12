#include "wiring.h"
#include "btle.h"

// this is the largest packet that a 24l01 or 24le1 can send
// see https://github.com/google/eddystone/tree/master/eddystone-url for how to construct the url
// .com .net etc are abbreviated
// to edit, you should only need to change the URL (6 - 13)
// if you happen to use less than 13 bytes, change the Length field to the new length
// http://3.ly/ provides short URLs that work well for this

uint8_t beacon[18] =
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



void setup(){
	
	
	interrupts();							// turn interrupts on
	btleBegin();							// setup the radio	
	btleAdvertise(&beacon, sizeof(beacon));		// start advertising the packet above

	watchdogRun(1000);						// start watchdog and reset at 700 ms
	sleep(MEMORY_TIMER_OFF);				// switch to lowest mode that can wakeup from wdt
        
}

void loop(){

}
