#ifndef __BLconf_h
#define __BLconf_h


//****************************************************************
//				Define button and LED pins
//****************************************************************
#define GETBUTTON() (PRT0DR&0x20)
#define BOOTLOADER_MODE_LED_ON() PRT1DR|=0x80
#define BOOTLOADER_MODE_LED_OFF() PRT1DR&=0x7F
//****************************************************************

#endif