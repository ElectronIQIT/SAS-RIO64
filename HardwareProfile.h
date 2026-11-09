/*********************************************************************
 *
 *	Hardware specific definitions
 *
 *********************************************************************
 * FileName:        HardwareProfile.h
 * Dependencies:    None
 * Processor:       PIC18, PIC24F, PIC24H, dsPIC30F, dsPIC33F, PIC32
 * Compiler:        Microchip C32 v1.10 or higher
 *					Microchip C30 v3.12 or higher
 *					Microchip C18 v3.34 or higher
 *					HI-TECH PICC-18 PRO 9.63PL2 or higher
 * Company:         Microchip Technology, Inc.
 *
 * Software License Agreement
 *
 * Copyright (C) 2002-2009 Microchip Technology Inc.  All rights
 * reserved.
 *
 * Microchip licenses to you the right to use, modify, copy, and
 * distribute:
 * (i)  the Software when embedded on a Microchip microcontroller or
 *      digital signal controller product ("Device") which is
 *      integrated into Licensee's product; or
 * (ii) ONLY the Software driver source files ENC28J60.c, ENC28J60.h,
 *		ENCX24J600.c and ENCX24J600.h ported to a non-Microchip device
 *		used in conjunction with a Microchip ethernet controller for
 *		the sole purpose of interfacing with the ethernet controller.
 *
 * You should refer to the license agreement accompanying this
 * Software for additional information regarding your rights and
 * obligations.
 *
 * THE SOFTWARE AND DOCUMENTATION ARE PROVIDED "AS IS" WITHOUT
 * WARRANTY OF ANY KIND, EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT
 * LIMITATION, ANY WARRANTY OF MERCHANTABILITY, FITNESS FOR A
 * PARTICULAR PURPOSE, TITLE AND NON-INFRINGEMENT. IN NO EVENT SHALL
 * MICROCHIP BE LIABLE FOR ANY INCIDENTAL, SPECIAL, INDIRECT OR
 * CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF
 * PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY OR SERVICES, ANY CLAIMS
 * BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE
 * THEREOF), ANY CLAIMS FOR INDEMNITY OR CONTRIBUTION, OR OTHER
 * SIMILAR COSTS, WHETHER ASSERTED ON THE BASIS OF CONTRACT, TORT
 * (INCLUDING NEGLIGENCE), BREACH OF WARRANTY, OR OTHERWISE.
 *
 *
 * Author               Date		Comment
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * Howard Schlunder		10/03/06	Original, copied from Compiler.h
 * Suky		            02/08/10 Adecuado para Multiboard PICTrainer.. 
 *											..67J60 con LCD usando 3 pines.
 ********************************************************************/
#ifndef __HARDWARE_PROFILE_H
#define __HARDWARE_PROFILE_H

#include "GenericTypeDefs.h"
#include "Compiler.h"

#define RIO64_BOARD

// Set configuration fuses (but only once)
#if defined(THIS_IS_STACK_APPLICATION)
	#pragma config XINST=OFF
	#pragma config WDT=OFF, FOSC2=ON, FOSC=HSPLL, ETHLED=ON
#endif // Prevent more than one set of config fuse definitions

    // Clock frequency value.
    // This value is used to calculate Tick Counter value
    #define GetSystemClock()		(41666667ul)      // Hz
    #define GetInstructionClock()	(GetSystemClock()/4)
    #define GetPeripheralClock()	GetInstructionClock()

    //RIO64 Control Definitions
    #define STATUS_LED_TRIS         (TRISAbits.TRISA2)
    #define STATUS_LED_IO           (LATAbits.LATA2)

    #define SEVSEG_LATCH_TRIS       (TRISBbits.TRISB4)
    #define SEVSEG_LATCH_IO         (LATBbits.LATB4)

    #define SEVSEG_BLANK_TRIS       (TRISBbits.TRISB5)
    #define SEVSEG_BLANK_IO         (LATBbits.LATB5)

    #define BOOT_BTN_TRIS           (TRISAbits.TRISA4)
    #define BOOT_BTN_IO             (PORTAbits.RA4)

    #define DI_INHIBIT_TRIS         (TRISEbits.TRISE1)
    #define DI_INHIBIT_IO           (LATEbits.LATE1)

    #define DI_SHIFT_LOAD_TRIS      (TRISFbits.TRISF2)
    #define DI_SHIFT_LOAD_IO        (LATFbits.LATF2)

    #define DO_BLANK_TRIS           (TRISFbits.TRISF1)
    #define DO_BLANK_IO             (LATFbits.LATF1)

    #define DO_LATCH_TRIS           (TRISAbits.TRISA3)
    #define DO_LATCH_IO             (LATAbits.LATA3)

    #define SLAVE_DETECT_TRIS       (TRISAbits.TRISA5)
    #define SLAVE_DETECT            (PORTAbits.RA5)

    #define SPIFLASH_CS_TRIS        (TRISCbits.TRISC1)
    #define SPIFLASH_CS_IO          (LATCbits.LATC1)
    #define SPIFLASH_SCK_TRIS		(TRISCbits.TRISC3)
	#define SPIFLASH_SDI_TRIS		(TRISCbits.TRISC4)
	#define SPIFLASH_SDO_TRIS		(TRISCbits.TRISC5)
	#define SPIFLASH_SPI_IF         (PIR1bits.SSPIF)
	#define SPIFLASH_SSPBUF         (SSPBUF)
	#define SPIFLASH_SPICON1		(SSP1CON1)
	#define SPIFLASH_SPICON1bits	(SSP1CON1bits)
	#define SPIFLASH_SPICON2		(SSP1CON2)
	#define SPIFLASH_SPISTAT		(SSP1STAT)
	#define SPIFLASH_SPISTATbits	(SSP1STATbits)

#endif
