#include "wiring.h"
#include "btle.h"
//#include "aes-cmac.h"

// this is the largest packet that a 24l01 or 24le1 can send 
// see https://github.com/google/eddystone/tree/master/eddystone-url for how to construct the url
// .com .net etc are abbreviated
// to edit, you should only need to change the URL (6 - 13)
// if you happen to use less than 13 bytes, change the Length field to the new length
// http://3.ly/ provides short URLs that work well for this 

uint8_t eddy[21] =
{
  0x02,			// size
  0x01,			// type
  0x1a,			// data
  0x03,			// size
  0x03,			// Service List
  0xaa, 0xfe,	// Eddystone ID
  12,			// Length (counted below)
  0x16,			// 1. Service Data
  0xaa, 0xfe,	// 2, 3 Eddystone ID
  0x10,			// 4 URL flag
  0xeb,			// 5 TX Power
  0x03,			// 6
  'e',			// 7
  'a',			// 8
  's',			// 9
  'i',			// 10
  't',			// 11
  0x07,			// 12
  //'j'			// 13
};

void setup(){
	interrupts();							// turn interrupts on
	btleBegin();							// setup the radio
	btleAdvertise(&eddy, sizeof(eddy));		// start advertising the packet above
	watchdogRun(700);						// start watchdog and reset at 700 ms
	sleep(MEMORY_TIMER_OFF);				// switch to lowest mode that can wakeup from wdt
}

void loop(){
	// we never make it here
}
