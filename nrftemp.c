#include "wiring.h"
#include "btle.h"
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
  0xa4, 0x08, 0x00, 0xfe //temperature in nrf format
  /*0x03,			// Service List
  0xaa, 0xfe,	// Eddystone ID
  13,			// Length (counted below)
  0x16,			// 1. Service Data
  0xaa, 0xfe,	// 2, 3 Eddystone ID
  0x10,			// 4 URL flag
  0xeb,			// 5 TX Power
  'q',			// 6
  'r',			// 7
  0x03,			// 8
  'b',			// 9
  'f',			// 10
  'u',			// 11
  '3',			// 12
  'j'			// 13
  */
};

void setup(){
	interrupts();							// turn interrupts on
	btleBegin();							// setup the radio
	btleAdvertise(&beacon, sizeof(beacon));		// start advertising the packet above
	watchdogRun(700);						// start watchdog and reset at 700 ms
	sleep(MEMORY_TIMER_OFF);				// switch to lowest mode that can wakeup from wdt
}

void loop(){
	// we never make it here
}
