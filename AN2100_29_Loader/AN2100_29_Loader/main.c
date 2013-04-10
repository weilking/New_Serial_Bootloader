/////////////////////////////////////////////////////////////////////////////////
// Cypress Semiconductor Corporation
// Cypress’ Source Code: Copyright 2010, Cypress Semiconductor Corporation.
// This Source Code (software and/or firmware) is owned by Cypress Semiconductor
// Corporation (Cypress) and is protected by and subject to worldwide patent 
// protection (United States and foreign), United States copyright laws and 
// international treaty provisions. Cypress hereby grants to licensee a personal,
// non-exclusive, non-transferable license to copy, use, modify, create 
// derivative works of, and compile the Cypress Source Code and derivative works
// for the sole purpose of creating custom software and or firmware in support
// of licensee product to be used only in conjunction with a Cypress integrated
// circuit as specified in the applicable agreement. Any reproduction,
// modification, translation, compilation, or representation of this Source Code
// except as specified above is prohibited without the express written
// permission of Cypress. 
// Disclaimer: CYPRESS MAKES NO WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, WITH
// REGARD TO THIS MATERIAL, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
// OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.
// Cypress reserves the right to make changes without further notice to the
// materials described herein. Cypress does not assume any liability arising
// out of the application or use of any product or circuit described herein.
// Cypress does not authorize its products for use as critical components in
// life-support systems where a malfunction or failure may reasonably be expected
// to result in significant injury to the user. The inclusion of Cypress’ product
// in a life-support systems application implies that the manufacturer assumes
// all risk of such use and in doing so indemnifies Cypress against all charges.
//
// Use may be limited by and subject to the applicable Cypress software license
// agreement.
//
/////////////////////////////////////////////////////////////////////////////////

//----------------------------------------------------------------------------
// C main line
//----------------------------------------------------------------------------


#include <m8c.h>        // part specific constants and macros
#include "PSoCAPI.h"    // PSoC API definitions for all User Modules
#include "BLconf.h"

void main(void)
{
    long int x;
	char i=0;
     	
 	while(1){
 	    if(i)
		{
			i=0;
			BOOTLOADER_MODE_LED_OFF();
		}else{
			i=1;
			BOOTLOADER_MODE_LED_ON();
		}
		for (x=0; x<20000; x++);	//delay
  	}
  	
}
