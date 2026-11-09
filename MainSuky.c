/*********************************************************************
 *
 *  Main Application Entry Point and TCP/IP Stack Demo
 *  Module for Microchip TCP/IP Stack
 *   -Demonstrates how to call and use the Microchip TCP/IP stack
 *	 -Reference: AN833
 *
 *********************************************************************
 * FileName:        MainDemo.c
 * Dependencies:    TCPIP.h
 * Processor:       PIC18, PIC24F, PIC24H, dsPIC30F, dsPIC33F, PIC32
 * Compiler:        Microchip C32 v1.05 or higher
 *					Microchip C30 v3.12 or higher
 *					Microchip C18 v3.30 or higher
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
 * Author              Date         Comment
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * Howard Schlunder		11/18/09    Rev. 5.20
 * Suky						02/05/10		Modificado solo para C18 (PIC18F67J60)
 ********************************************************************/
/*
 * This macro uniquely defines this file as the main entry point.
 * There should only be one such definition in the entire project,
 * and this file must define the AppConfig variable as described below.
 */
#define THIS_IS_STACK_APPLICATION
#define GET_EEPROM_MAC

//SPI Defines
#define SPI_ON_BIT          (SPIFLASH_SPICON1bits.SSPEN)
#define ClearSPIDoneFlag()  {SPIFLASH_SPI_IF = 0;}
#define WaitForDataByte()   {while(!SPIFLASH_SPI_IF); SPIFLASH_SPI_IF = 0;}

// Include all headers for any enabled TCPIP Stack functions
#include "TCPIP_Stack/TCPIP.h"
#include "MODBUSTCPServer.h"
#include <xc.h>

// Include functions specific to this stack application
#include "MainSuky.h"
#include "SvnSeg.h"

// Declare AppConfig structure and some other supporting stack variables
APP_CONFIG AppConfig;
BYTE AnalogString[8];
BYTE BoardCount = 0;

//Unlikely to ever have more than 10 bits being persisted.
DWORD timeStamp[10];
WORD timeStampBit[10];
WORD timeStampReg[10];

//Debouncing Registers
WORD prevTimeStampBit[10];
WORD prevTimeStampReg[10];
WORD debounceCount[10];

//These used to detect when debounce is abandoned and needs to be cleared.
BYTE debounceMemory[10];
BYTE debounceCleanout[10];

int SevSegStep = 0;

//Store our values here.
WORD Holding_Register[12];

BOOL displayIP = 0;

#define MAX_FRAMES 10
Frame frames[MAX_FRAMES];
BYTE frameCount = 0;

// Private helper functions.
// These may or may not be present in all applications.
static void InitAppConfig(void);
static void InitializeBoard(void);
static void ProcessIO(void);
static void GetMACAddress(void);

//
// PIC18 Interrupt Service Routines
// 
	
void __interrupt(low_priority) LowISR(void) {
    TickUpdate();
}

void __interrupt(high_priority) HighISR(void) {
    Nop();

}
    
//
// Main application entry point.
//

void main(void)
{   
	static DWORD t = 0, t2 = 0, t3 = 0;
	static DWORD dwLastIP = 0;
    
    int j = 0;
    int k = 0;
    int b = 0;
    
    //Clear out all holding registers to avoid trouble.
    memset(HOLDING_REG, 0x0, sizeof(HOLDING_REG));
    memset(Holding_Register, 0, sizeof(Holding_Register));
    memset(timeStamp, 0, sizeof(timeStamp));
    memset(timeStampBit, 0, sizeof(timeStampBit));
    memset(timeStampReg, 0, sizeof(timeStampReg));
    memset(prevTimeStampBit, 0, sizeof(prevTimeStampBit));
    memset(prevTimeStampReg, 0, sizeof(prevTimeStampReg));
    memset(debounceCount, 0, sizeof(debounceCount));
    memset(debounceMemory, 0, sizeof(debounceMemory));
    memset(debounceCleanout, 0, sizeof(debounceCleanout));

    setup_io();
	// Initialize application specific hardware
	InitializeBoard();

	// Initialize stack-related hardware components that may be 
	// required by the UART configuration routines
    TickInit();
	#if defined(STACK_USE_MPFS) || defined(STACK_USE_MPFS2)
	MPFSInit();
	#endif

    #if defined (GET_EEPROM_MAC)
    //Fetch our unique MAC address from EEPROM 
    GetMACAddress();
    #endif
    
	// Initialize Stack and application related NV variables into AppConfig.
	InitAppConfig();

    clear_display();
    DelayMs(200);
    
    //Run a little startup wheel turning
    j = 2;
    k = 6;
    while(k >= 0) {
        j = 2;
        while(j >= 0)
        {
            write_7segment_display_spi(wheel[j],wheel[j]);
            DelayMs(75);
            j--;
        }
        k--;
    }
    
    //2 Dashes as a landing point
    write_7segment_display_spi(wheel[3],wheel[3]);
        DelayMs(75);
        
    DelayMs(2500);
    
    // Initiates board setup process if button is depressed 
	// on startup
    
    if(BOOT_BTN_IO == 0u)
    {
		#if defined(EEPROM_CS_TRIS) || defined(SPIFLASH_CS_TRIS)
		// Invalidate the EEPROM contents if BUTTON0 is held down for more than 4 seconds
		DWORD StartTime = TickGet();
				
		while(BOOT_BTN_IO == 0u)
		{
			if(TickGet() - StartTime > 5*TICK_SECOND)
			{
				#if defined(EEPROM_CS_TRIS)
			    XEEBeginWrite(0x0000);
			    XEEWrite(0xFF);
			    XEEEndWrite();
			    #elif defined(SPIFLASH_CS_TRIS)
			    SPIFlashBeginWrite(0x0000);
			    SPIFlashWrite(0xFF);
			    #endif

				STATUS_LED_IO = 1;
				while((LONG)(TickGet() - StartTime) <= (LONG)(9*TICK_SECOND/2));
				STATUS_LED_IO = 0;
				while(BOOT_BTN_IO == 0u);
				Reset();
				break;
			}
		}
		#endif
    }
    
	// Initialize core stack layers (MAC, ARP, TCP, UDP) and
	// application modules (HTTP, SNMP, etc.)
    StackInit();

	// Now that all items are initialized, begin the co-operative
	// multitasking loop.  This infinite loop will continuously 
	// execute all stack-related tasks, as well as your own
	// application's functions.  Custom functions should be added
	// at the end of this loop.
    // Note that this is a "co-operative mult-tasking" mechanism
    // where every task performs its tasks (whether all in one shot
    // or part of it) and returns so that other tasks can do their
    // job.
    // If a task needs very long time to do its job, it must be broken
    // down into smaller pieces so that other tasks can have CPU time.
    ProcessIO();
    
    SevSegStep = 3;
    j = 0;
    
    while(1)
    {
        if(TickGet() - t >= TICK_SECOND) {
            t = TickGet();
            //Run through the IP Address.
            if(displayIP){                
                if (j < 10) {
                    clear_display();
                    DelayMs(50);
                    showFrame(&frames[j]);
                    
                }
                if (j == 10) {
                    write_7segment_display_spi(seg_map[12],seg_map[12]);
                }
                if (j == 30) {
                    clear_display();
                    SEVSEG_BLANK_IO = 1;   
                    displayIP = 0;                 
                }
                j++;
            }
        }
        
        // Blink Status LED every second.
        if(TickGet() - t2 >= TICK_SECOND/2ul) {
            t2 = TickGet();
            STATUS_LED_IO ^= 1;
            
            if (SevSegStep < 0){
                SevSegStep = 3;
            }
            
            //write_7segment_display_spi(wheel[j],wheel[j]);
            if(!STATUS_LED_IO){
                //SevSegStep--;
            }
            
            if (STATUS_LED_IO == 1){
                b++;
            }
            
            HOLDING_REG[0] = (WORD)b<<8;          
            
            if(b >= 65534){
                b = 0;
            }
        }
        
        //Read buttons and write LED's every 120mS
        if(TickGet() - t3 >= TICK_SECOND/50ul)
        {
            t3 = TickGet();

            //Read our button inputs
            readButtons(0,4*BoardCount);
            
            processButtonBits();
            
            clearDebounceBits();
                
            writeLEDS(30,4*BoardCount);
            
            if(BOOT_BTN_IO == 0u)
            {
                displayIP = 1;
                j = 0;
            }
        }
        
        // This task performs normal stack task including checking
        // for incoming packet, type of packet and calling
        // appropriate stack entity to process it.
        StackTask();
        
        // This tasks invokes each of the core stack application tasks
        StackApplications();

		// Process application specific tasks here.

		#if defined(STACK_USE_GENERIC_TCP_CLIENT_EXAMPLE)
		GenericTCPClient();
		#endif
		
		#if defined(STACK_USE_GENERIC_TCP_SERVER_EXAMPLE)
		GenericTCPServer();
		#endif

        #if defined(STACK_USE_MODBUS_TCP_SERVER)
		MODBUSTCPServer();
		#endif
		
		#if defined(STACK_USE_SMTP_CLIENT)
		SMTPDemo();
		#endif
		
		#if defined(STACK_USE_ICMP_CLIENT)
		PingDemo();
		#endif
		
        // If the local IP address has changed (ex: due to DHCP lease change)
        // write the new IP address to the LCD display, UART, and Announce 
        // service
		if(dwLastIP != AppConfig.MyIPAddr.Val)
		{
			dwLastIP = AppConfig.MyIPAddr.Val;

            //Display IP address on 7 Segment Display
            buildFrames(AppConfig.MyIPAddr);
            
            //Set out step counter for Display IP back to zero
            j = 0;
            
            //Set a flag to run the display of IP
            displayIP = 1;

			#if defined(STACK_USE_ANNOUNCE)
				AnnounceIP();
			#endif
		}
	}
}


//Here we process any new buttons and persist the button press for a set time before wiping it from Modbus registers.
void processButtonBits(void){
    int i = 0, j = 0, k = 0, l = 0;
    DWORD time;
    
    for(i = 0; i < BoardCount * 4; i++) {
        if(Holding_Register[i] > 0) {
            BOOL alreadyTracked = FALSE;
            BOOL alreadyDebounced = FALSE;
            
            //Debounce registers here
            //We run through one to see non of the registers have our register number and value.
            //If nothing found, then we find the first available register and store there.
            //If we find it, we increment it's debounce count until it reaches it's threshold
            //We then pass it on, so that it can be persisted and then destroyed.
            for(j = 0; j < 10; j++) {
                if(prevTimeStampBit[j] != 0 && prevTimeStampReg[j] == (i) && (prevTimeStampBit[j] == Holding_Register[i])) {
                    alreadyDebounced = TRUE;
                    debounceCount[j]++;
                    
                    //Check here if we've reached our debounce threshold
                    if(debounceCount[j] >= 3) {
                        // Check if this register/bit combination is already being tracked
                        for(l = 0; l < 10; l++) {
                            if(timeStamp[l] != 0 && timeStampReg[l] == (10+i) && (timeStampBit[l] == Holding_Register[i])) {
                                alreadyTracked = TRUE;
                                break;
                            }
                            else
                            {
                                alreadyTracked = FALSE;
                            }
                        }

                        if(!alreadyTracked) {
                            HOLDING_REG[10+i] |= Holding_Register[i];
                            for(l = 0; l < 10; l++){
                                if(timeStamp[l] == 0) {
                                    timeStamp[l] = TickGet() + (TICK_SECOND * 5);
                                    timeStampBit[l] = Holding_Register[i];
                                    timeStampReg[l] = 10+i;
                                    break;
                                }
                            }
                        }
                    }
                    else
                        break;
                }                
            }    
            
            //Here we find a register to store it and then count the debounce
            if(!alreadyDebounced) {
                for(k = 0; k < 10; k++) {
                    if(prevTimeStampBit[k] == 0) {
                        prevTimeStampBit[k] = Holding_Register[i];
                        prevTimeStampReg[k] = i;                                    
                        debounceCount[k] = 1;
                        break;
                    }                       
                }
            }
        }
    }
    
    //Loop through array and clear off any bits that have expired
    time = TickGet();

    //Run through our 10 registers and see if anything has expired.
    for(k = 0; k < 10; k++) {
        if(timeStamp[k] != 0 ){
            if(timeStamp[k] < time) {
                write_7segment_display_spi(wheel[SevSegStep],wheel[SevSegStep]);
                SevSegStep--;
                HOLDING_REG[timeStampReg[k]] ^= timeStampBit[k];
                //Clear out our holding registers
                timeStamp[k] = 0; 
                timeStampBit[k] = 0; 
                timeStampReg[k] = 0;
            }
        }
    }
}



void clearDebounceBits(void){
    unsigned char i = 0;
    for(i = 0; i < 10; i++) {
        if ((Holding_Register[prevTimeStampReg[i]] != prevTimeStampBit[i])&&(prevTimeStampBit[i] != 0x0000)) {
            //Clear out the registers
            prevTimeStampReg[i] = 0;
            prevTimeStampBit[i] = 0;
            debounceCount[i] = 0;
        }
    }
}

/*****************************************************************************
 * Function readButtons
 * 
 * Description:     Reads our shift registers to get which buttons are pressed
 * 
 * Precondition:    None
 * 
 * Parameters:      None - None
 * 
 * Returns:         None
 * 
 * Remarks:         None
 * 
 ******************************************************************************/
/*
 * IO: 
 *      DI_INHIBIT = Clock Inhibit on IC
 *      DI_SHIFT_!LOAD = High lets data be shifted out, Low to sample inputs
 * 
 * Routine as follows: 
 
 */
void readButtons(int reg, int num) {
    
    unsigned char temp = 0;
    unsigned char i = 0;
     
    //Sample registers
    DI_SHIFT_LOAD_IO = 0;
    DelayMs(1);
    DI_SHIFT_LOAD_IO = 1;
    
    //Enable clock
    DI_INHIBIT_IO = 0;
    
    
    //Read registers sequentially
    for(i = 0; i < num; i++) {       
        temp = SPI_Read();    
        Holding_Register[reg+i] = ((temp^0xff)<<8);    
        temp = SPI_Read();    
        Holding_Register[reg+i] = (Holding_Register[reg+i] | (temp^0xff));
    }
    
    //Disable clock
    DI_INHIBIT_IO = 1;
    
    
}

/*****************************************************************************
 * Function (void)writeLEDS(int reg, int num)
 * 
 * Description:     Writes our LED outputs into our LED shift registers
 * 
 * Precondition:    None
 * 
 * Parameters:      None - None
 * 
 * Returns:         None
 * 
 * Remarks:         None
 * 
 ******************************************************************************/
/*
 * IO: 
 *      DO_LATCH = Latches values into output registers
 *      DO_BLANK = Clears outputs to turn off LEDS
 * 
 * Routine as follows: 
 
 */
void writeLEDS(int reg, int num) {
    int i = 0;
        
    //Blank LED Outputs
    DO_BLANK_IO = 1;
    
    //Write values to shift registers
    for(i = (num-1); i >= 0; i--){
        SPI_Send((HOLDING_REG[reg+i] & 0xff),((HOLDING_REG[reg+i] >> 8) & 0xff));
    }
        
    //Latch data to LED registers
    DO_LATCH_IO = 1;
    DelayMs(1);
    DO_LATCH_IO = 0;    
    
    //Turn on LED Outputs
    DO_BLANK_IO = 0;
}

void setup_io(void) { 
    STATUS_LED_TRIS = 0;
    SEVSEG_LATCH_TRIS = 0;
    SEVSEG_BLANK_TRIS = 0;
    BOOT_BTN_TRIS = 1;
    DI_INHIBIT_TRIS = 0;
    DI_SHIFT_LOAD_TRIS = 0;
    DO_BLANK_TRIS = 0;
    DO_LATCH_TRIS = 0;
    SLAVE_DETECT_TRIS = 1;
    
    STATUS_LED_IO = 0;
    SEVSEG_LATCH_IO = 0;
    SEVSEG_BLANK_IO = 1;
}

void write_7segment_display_spi(unsigned char byte1, unsigned char byte2) {
    //Blank the display before clocking in the info
    SEVSEG_LATCH_IO = 0;
    SEVSEG_BLANK_IO = 1;
    SPI_Write(byte1, byte2);
    SEVSEG_LATCH_IO = 1;
    SEVSEG_BLANK_IO = 0;
    DelayMs(1);
    SEVSEG_LATCH_IO = 0;
}

void clear_display(void) {
    //Blank the display before clocking in the info
    SEVSEG_LATCH_IO = 0;
    SEVSEG_BLANK_IO = 1;   
    SPI_Write(0x00,0x00);  
    SEVSEG_LATCH_IO = 1;
    SEVSEG_BLANK_IO = 0;
    DelayMs(1);
    SEVSEG_LATCH_IO = 0;
}

unsigned char SPI_Write(unsigned char data_out_1, unsigned char data_out_2) {
    volatile BYTE Dummy;
    BYTE vSPIONSave;
    BYTE SPICON1Save;
    
    // Save SPI state (clock speed)
    SPICON1Save = SPIFLASH_SPICON1;
    vSPIONSave = SPI_ON_BIT;
    
    SPI_ON_BIT = 0;
    SPIFLASH_SPICON1 = 0x21;
    SPI_ON_BIT = 1;
    
    //Flush Data Out First
    SSPBUF = 0x00;
    WaitForDataByte();
    SSPBUF = 0x00;
    WaitForDataByte();
    SSPBUF = data_out_1;         // Write data to be transmitted
    WaitForDataByte();
    SSPBUF = data_out_2;         // Write data to be transmitted
    WaitForDataByte();
    //while(!PIR1bits.SSPIF);    // Wait until transmission/reception completes
    //PIR1bits.SSPIF = 0;        // Clear interrupt flag
    Dummy = SPIFLASH_SSPBUF;
    
    // Restore SPI state
    //SPI_ON_BIT = 0;
    //SPIFLASH_SPICON1 = SPICON1Save;
    //SPI_ON_BIT = vSPIONSave;
    return Dummy;             // Return received data from buffer
}

void SPI_Send(unsigned char data_out_1, unsigned char data_out_2) {
    BYTE vSPIONSave;
    BYTE SPICON1Save;
    
    // Save SPI state (clock speed)
    SPICON1Save = SPIFLASH_SPICON1;
    vSPIONSave = SPI_ON_BIT;
    
    SPI_ON_BIT = 1;
    
    //Flush Data Out First
    //SSPBUF = 0x00;
    //WaitForDataByte();
    //SSPBUF = 0x00;
    //WaitForDataByte();
    SSPBUF = data_out_1;         // Write data to be transmitted
    WaitForDataByte();
    SSPBUF = data_out_2;         // Write data to be transmitted
    WaitForDataByte();
    //while(!PIR1bits.SSPIF);    // Wait until transmission/reception completes
    //PIR1bits.SSPIF = 0;        // Clear interrupt flag
    //Dummy = SPIFLASH_SSPBUF;
    
    // Restore SPI state
    //SPI_ON_BIT = 0;
    //SPIFLASH_SPICON1 = SPICON1Save;
    //SPI_ON_BIT = vSPIONSave;
    //return Dummy;             // Return received data from buffer
}

unsigned char SPI_Read() {
    volatile BYTE Dummy;
    BYTE vSPIONSave;
    BYTE SPICON1Save;
    
    // Save SPI state (clock speed)
    SPICON1Save = SPIFLASH_SPICON1;
    vSPIONSave = SPI_ON_BIT;
    
    //SPI_ON_BIT = 0;
    //SPIFLASH_SPICON1 = 0x21;
    //SPI_ON_BIT = 1;
    
    //Flush Data Out First
    SSPBUF = 0x00;
    WaitForDataByte();
    //while(!PIR1bits.SSPIF);    // Wait until transmission/reception completes
    //PIR1bits.SSPIF = 0;        // Clear interrupt flag
    Dummy = SPIFLASH_SSPBUF;
    
    // Restore SPI state
    //SPI_ON_BIT = 0;
    //SPIFLASH_SPICON1 = SPICON1Save;
    //SPI_ON_BIT = vSPIONSave;
    return Dummy;             // Return received data from buffer
}



// ---------------------------------------------------------------
// Step 2: Break one octet into hundreds/tens/units
// ---------------------------------------------------------------
void octetToDigits(BYTE val, BYTE d[3]) {
  d[0] = val / 100;          // hundreds
  d[1] = (val / 10) % 10;    // tens
  d[2] = val % 10;           // units
}

void addFrame(unsigned char l, unsigned char r, unsigned char ldp, unsigned char rdp) {
  if (frameCount < MAX_FRAMES) {
        frames[frameCount].leftDigit  = l;
        frames[frameCount].rightDigit = r;
        frames[frameCount].leftDP     = ldp;
        frames[frameCount].rightDP    = rdp;
        frameCount++;
    }
}

void buildFrames(IP_ADDR ip) {
    //99 = Blank
    unsigned char octets[4];
    unsigned char d[3];
    unsigned char i;
    
    memset(&frames, 0x0, sizeof(frames));

    frameCount = 0;
    //ipToOctets(ip, octets);
    
    addFrame(13, 14, 1, 1);
    addFrame(99, 99, 0, 0);

    for (i = 0; i < 4; i++) {
        octetToDigits(ip.v[i], d);

        if (d[0] > 0) {
            // 3-digit octet: scroll across two frames
            addFrame(d[0], d[1], 0, 0);
            if(i<3)
                addFrame(d[1], d[2], 0, 1);
            else
                addFrame(d[1], d[2], 0, 0);
        } else if (ip.v[i] >= 10) {
            if(i<3)
                addFrame(d[1], d[2], 0, 1);
            else
                addFrame(d[1], d[2], 0, 0);
        } else {
            if(i<3)
                addFrame(99, d[2], 0, 1);
            else
                addFrame(99, d[2], 0, 0);
        }     
        //When we finish building frames, check if there is anything left and set to -1 if still open.
        if (frameCount < MAX_FRAMES && i == 3)
        {
            while(frameCount < MAX_FRAMES)
                addFrame(99, 99, 0, 0);
        }
    }
}


// ---------------------------------------------------------------
// Step 4: Push a frame's digits to your 7-seg character map
// ---------------------------------------------------------------
void showFrame(Frame *f) {
    unsigned char leftPattern, rightPattern;
    
    leftPattern  = (f->leftDigit  == 99) ? seg_map[11] : seg_map[f->leftDigit];
    rightPattern = (f->rightDigit == 99) ? seg_map[11] : seg_map[f->rightDigit];

    if (f->leftDP)  leftPattern  |= seg_map[10];
    if (f->rightDP) rightPattern |= seg_map[10];

    write_7segment_display_spi(rightPattern, leftPattern);
}


// Processes A/D data from the potentiometer
static void ProcessIO(void)
{
    unsigned int adc_val = 0;
    // AN0 should already be set up as an analog input
    ADCON0bits.GO = 1;

    // Wait until A/D conversion is done
    while(ADCON0bits.GO);

    // Convert 10-bit value into ASCII string
    uitoa(*((WORD*)(&ADRESL)), AnalogString);
    adc_val = ((unsigned int)ADRESH << 8) | ADRESL;
    
    //Check returned voltage and setup procedures accordingly
    //  No Slave
    if (adc_val > 1000)
    {
        BoardCount = 1;
    }
    //  1 Slave
    if (adc_val < 900 && adc_val > 450)
    {
        BoardCount = 2;
    }
    //  2 Slaves
    if (adc_val < 400)
    {
        BoardCount = 3;
    }
}


/****************************************************************************
  Function:
    static void InitializeBoard(void)

  Description:
    This routine initializes the hardware.  It is a generic initialization
    routine for many of the Microchip development boards, using definitions
    in HardwareProfile.h to determine specific initialization.

  Precondition:
    None

  Parameters:
    None - None

  Returns:
    None

  Remarks:
    None
  ***************************************************************************/
static void InitializeBoard(void)
{	
	// LEDs
    STATUS_LED_TRIS = 0;
    STATUS_LED_IO = 0;
    
    //Enable Boot Button
    BOOT_BTN_TRIS = 1;
    
    //Blank Outputs to LEDs
    DO_BLANK_IO = 1;

	// Enable 4x/5x/96MHz PLL on PIC18F87J10, PIC18F97J60, PIC18F87J50, etc.
    OSCTUNE = 0x40;

	// Set up analog features of PORTA  
    ADCON0bits.ADON = 0x1;    //Enable Analog Input
    ADCON0bits.CHS = 0x4;   //AN4 Selected
	ADCON1 = 0x0A;		// Vdd/Vss is +/-REF, AN4 is analog
	ADCON2 = 0xBE;		// Right justify, 20TAD ACQ time, Fosc/64 (~21.0kHz)

	// Enable Interrupts
	RCONbits.IPEN = 1;		// Enable interrupt priorities
    INTCONbits.GIEH = 1;
    INTCONbits.GIEL = 1;

    ADCON0bits.ADCAL = 1;
	ADCON0bits.GO = 1;
	while(ADCON0bits.GO);
	ADCON0bits.ADCAL = 0;
}


/*********************************************************************
 * Function:        void GetMACAddress(void)
 * 
 * Description:     Get our MAC Address from our EEPROM device 
 *                  (SST26VF016BEUI) 
 *                  MAC is stored in SFDP table at address range 0x261 to 0x266
 *                  Send 8 bit command 5A hex to enter SFDP area, 
 *                  followed by address and then a dummy byte.
 * 
 * PreCondition:    MPFSInit() or XEEInit() is already called.
 *
 * Input:           None
 *
 * Output:          MAC Address from EEPROM Chip.
 *
 * Side Effects:    None
 *
 * Overview:        None
 *
 * Note:            None
 ********************************************************************/
BYTE SerializedMACAddress[6];

static void GetMACAddress(void)
{
    SPIFlashReadSFDPArray(0x261, SerializedMACAddress, 6);
}

/*********************************************************************
 * Function:        void InitAppConfig(void)
 *
 * PreCondition:    MPFSInit() is already called.
 *
 * Input:           None
 *
 * Output:          Write/Read non-volatile config variables.
 *
 * Side Effects:    None
 *
 * Overview:        None
 *
 * Note:            None
 ********************************************************************/
// MAC Address Serialization using a MPLAB PM3 Programmer and 
// Serialized Quick Turn Programming (SQTP). 
// The advantage of using SQTP for programming the MAC Address is it
// allows you to auto-increment the MAC address without recompiling 
// the code for each unit.  To use SQTP, the MAC address must be fixed
// at a specific location in program memory.  Uncomment these two pragmas
// that locate the MAC address at 0x1FFF0.  Syntax below is for MPLAB C 
// Compiler for PIC18 MCUs. Syntax will vary for other compilers.
//#pragma romdata MACROM=0x1FFF0
//static ROM BYTE SerializedMACAddress[6] = {MY_DEFAULT_MAC_BYTE1, MY_DEFAULT_MAC_BYTE2, MY_DEFAULT_MAC_BYTE3, MY_DEFAULT_MAC_BYTE4, MY_DEFAULT_MAC_BYTE5, MY_DEFAULT_MAC_BYTE6};
//#pragma romdata

static void InitAppConfig(void)
{
    unsigned char Hostname[16] = "";
    
	AppConfig.Flags.bIsDHCPEnabled = FALSE;
	AppConfig.Flags.bInConfigMode = TRUE;
    
    #if defined (GET_EEPROM_MAC)
    memcpy((void*)&AppConfig.MyMACAddr, SerializedMACAddress, sizeof(AppConfig.MyMACAddr));
    #else
    memcpypgm2ram((void*)&AppConfig.MyMACAddr, (ROM void*)SerializedMACAddress, sizeof(AppConfig.MyMACAddr));
    #endif
    
	AppConfig.MyIPAddr.Val = MY_DEFAULT_IP_ADDR_BYTE1 | MY_DEFAULT_IP_ADDR_BYTE2<<8ul | MY_DEFAULT_IP_ADDR_BYTE3<<16ul | MY_DEFAULT_IP_ADDR_BYTE4<<24ul;
	AppConfig.DefaultIPAddr.Val = AppConfig.MyIPAddr.Val;
	AppConfig.MyMask.Val = MY_DEFAULT_MASK_BYTE1 | MY_DEFAULT_MASK_BYTE2<<8ul | MY_DEFAULT_MASK_BYTE3<<16ul | MY_DEFAULT_MASK_BYTE4<<24ul;
	AppConfig.DefaultMask.Val = AppConfig.MyMask.Val;
	AppConfig.MyGateway.Val = MY_DEFAULT_GATE_BYTE1 | MY_DEFAULT_GATE_BYTE2<<8ul | MY_DEFAULT_GATE_BYTE3<<16ul | MY_DEFAULT_GATE_BYTE4<<24ul;
	AppConfig.PrimaryDNSServer.Val = MY_DEFAULT_PRIMARY_DNS_BYTE1 | MY_DEFAULT_PRIMARY_DNS_BYTE2<<8ul  | MY_DEFAULT_PRIMARY_DNS_BYTE3<<16ul  | MY_DEFAULT_PRIMARY_DNS_BYTE4<<24ul;
	AppConfig.SecondaryDNSServer.Val = MY_DEFAULT_SECONDARY_DNS_BYTE1 | MY_DEFAULT_SECONDARY_DNS_BYTE2<<8ul  | MY_DEFAULT_SECONDARY_DNS_BYTE3<<16ul  | MY_DEFAULT_SECONDARY_DNS_BYTE4<<24ul;


	// SNMP Community String configuration
	#if defined(STACK_USE_SNMP_SERVER)
	{
		BYTE i;
		static ROM char * ROM cReadCommunities[] = SNMP_READ_COMMUNITIES;
		static ROM char * ROM cWriteCommunities[] = SNMP_WRITE_COMMUNITIES;
		ROM char * strCommunity;
		
		for(i = 0; i < SNMP_MAX_COMMUNITY_SUPPORT; i++)
		{
			// Get a pointer to the next community string
			strCommunity = cReadCommunities[i];
			if(i >= sizeof(cReadCommunities)/sizeof(cReadCommunities[0]))
				strCommunity = "";

			// Ensure we don't buffer overflow.  If your code gets stuck here, 
			// it means your SNMP_COMMUNITY_MAX_LEN definition in TCPIPConfig.h 
			// is either too small or one of your community string lengths 
			// (SNMP_READ_COMMUNITIES) are too large.  Fix either.
			if(strlenpgm(strCommunity) >= sizeof(AppConfig.readCommunity[0]))
				while(1);
			
			// Copy string into AppConfig
			strcpypgm2ram((char*)AppConfig.readCommunity[i], strCommunity);

			// Get a pointer to the next community string
			strCommunity = cWriteCommunities[i];
			if(i >= sizeof(cWriteCommunities)/sizeof(cWriteCommunities[0]))
				strCommunity = "";

			// Ensure we don't buffer overflow.  If your code gets stuck here, 
			// it means your SNMP_COMMUNITY_MAX_LEN definition in TCPIPConfig.h 
			// is either too small or one of your community string lengths 
			// (SNMP_WRITE_COMMUNITIES) are too large.  Fix either.
			if(strlenpgm(strCommunity) >= sizeof(AppConfig.writeCommunity[0]))
				while(1);

			// Copy string into AppConfig
			strcpypgm2ram((char*)AppConfig.writeCommunity[i], strCommunity);
		}
	}
	#endif

	// Load the default NetBIOS Host Name
    //Let's use our unique MAC to set the hostname to be unique.
    
    #if defined (GET_EEPROM_MAC)
    Hostname[0] = 'R';
    Hostname[1] = 'I';
    Hostname[2] = 'O';
    Hostname[3] = '6';
    Hostname[4] = '4';
    Hostname[5] = '-';
    Hostname[6] = btohexa_high(SerializedMACAddress[4]);
    Hostname[7] = btohexa_low(SerializedMACAddress[4]);
    Hostname[8] = '-';
    Hostname[9] = btohexa_high(SerializedMACAddress[5]);
    Hostname[10] = btohexa_low(SerializedMACAddress[5]);
    memcpy(AppConfig.NetBIOSName, Hostname, 16);
    #else
    memcpypgm2ram(AppConfig.NetBIOSName, (ROM void*)MY_DEFAULT_HOST_NAME, 16);
    #endif

	FormatNetBIOSName(AppConfig.NetBIOSName);

	#if defined(EEPROM_CS_TRIS)
	{
		BYTE c;
		
	    // When a record is saved, first byte is written as 0x60 to indicate
	    // that a valid record was saved.  Note that older stack versions
		// used 0x57.  This change has been made to so old EEPROM contents
		// will get overwritten.  The AppConfig() structure has been changed,
		// resulting in parameter misalignment if still using old EEPROM
		// contents.
		XEEReadArray(0x0000, &c, 1);
	    if(c == 0x60u)
		    XEEReadArray(0x0001, (BYTE*)&AppConfig, sizeof(AppConfig));
	    else
	        SaveAppConfig();
	}
	#elif defined(SPIFLASH_CS_TRIS)
	{
		BYTE c;
		
		SPIFlashReadArray(0x0000, &c, 1);
		if(c == 0x60u)
			SPIFlashReadArray(0x0001, (BYTE*)&AppConfig, sizeof(AppConfig));
		else
			SaveAppConfig();
	}
	#endif
}

#if defined(EEPROM_CS_TRIS) || defined(SPIFLASH_CS_TRIS)
void SaveAppConfig(void)
{
	// Ensure adequate space has been reserved in non-volatile storage to 
	// store the entire AppConfig structure.  If you get stuck in this while(1) 
	// trap, it means you have a design time misconfiguration in TCPIPConfig.h.
	// You must increase MPFS_RESERVE_BLOCK to allocate more space.
	#if defined(STACK_USE_MPFS) || defined(STACK_USE_MPFS2)
		if(sizeof(AppConfig) > MPFS_RESERVE_BLOCK)
			while(1);
	#endif

	#if defined(EEPROM_CS_TRIS)
	    XEEBeginWrite(0x0000);
	    XEEWrite(0x60);
	    XEEWriteArray((BYTE*)&AppConfig, sizeof(AppConfig));
    #else
	    SPIFlashBeginWrite(0x0000);
	    SPIFlashWrite(0x60);
	    SPIFlashWriteArray((BYTE*)&AppConfig, sizeof(AppConfig));
    #endif
}
#endif

