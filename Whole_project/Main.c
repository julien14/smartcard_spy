/*****************************************************************************
 * Microchip Graphics Library
 * Graphics Display Designer (GDD) Template
 *****************************************************************************
 * FileName:        Main.c
 * Processor:       PIC24F, PIC24H, dsPIC, PIC32
 * Compiler:       	MPLAB C30/C32
 * Company:         Microchip Technology Incorporated
 *
 * Software License Agreement
 *
 * Copyright ? 2010 Microchip Technology Inc.  All rights reserved.
 * Microchip licenses to you the right to use, modify, copy and distribute
 * Software only when embedded on a Microchip microcontroller or digital
 * signal controller, which is integrated into your product or third party
 * product (pursuant to the sublicense terms in the accompanying license
 * agreement).
 *
 * You should refer to the license agreement accompanying this Software
 * for additional information regarding your rights and obligations.
 *
 * SOFTWARE AND DOCUMENTATION ARE PROVIDED ?AS IS? WITHOUT WARRANTY OF ANY
 * KIND, EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY
 * OF MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR
 * PURPOSE. IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE LIABLE OR
 * OBLIGATED UNDER CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION,
 * BREACH OF WARRANTY, OR OTHER LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT
 * DAMAGES OR EXPENSES INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL,
 * INDIRECT, PUNITIVE OR CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA,
 * COST OF PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY
 * CLAIMS BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF),
 * OR OTHER SIMILAR COSTS.
 *
 * Date         Comment
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 *
 *****************************************************************************/
#include "Main.h"
#include "constants.h"
#include "definition.h"
#include "GDD_Screens.h"
#include "TimeDelay.h"

#include <plib.h>           /* Include to use PIC32 peripheral libraries      */

#include "bufferManager.h"
#include "stateManager.h"
#include "system.h"         /* System funct/params, like osc/periph config    */
#include "traceManager.h"           /* User funct/params, such as InitApp             */
#include "uartFunctions.h"


/////////////////////////////////////////////////////////////////////////////
// SPI Device Initialization Function
/////////////////////////////////////////////////////////////////////////////
#if defined (USE_SST25VF016)
    // initialize GFX3 SST25 flash SPI
    #define FlashInit(pInitData) SST25Init((DRV_SPI_INIT_DATA*)pInitData)
#elif defined (USE_MCHP25LC256)
    // initialize EEPROM on Explorer 16
    #define FlashInit(pInitData) MCHP25LC256Init((DRV_SPI_INIT_DATA*)pInitData)
#elif defined (USE_M25P80)
    #define FlashInit(pInitData) SST25Init((DRV_SPI_INIT_DATA*)pInitData)
#endif



/////////////////////////////////////////////////////////////////////////////
// SPI Channel settings
/////////////////////////////////////////////////////////////////////////////
#if defined (SPI_CHANNEL_1_ENABLE) || defined (SPI_CHANNEL_2_ENABLE) || defined (SPI_CHANNEL_3_ENABLE) || defined (SPI_CHANNEL_4_ENABLE)
    #if defined (USE_SST25VF016)
        #ifdef __PIC32MX
            const DRV_SPI_INIT_DATA SPI_Init_Data = {SST25_SPI_CHANNEL, 1, 0, 0, 1, 1, 0};
            #ifdef USE_TOUCHSCREEN_AR1020
                const DRV_SPI_INIT_DATA ar1020SpiInit = {AR1020_SPI_CHANNEL,    44, 0, 0, 0, 0, 0};
            #endif
        #else
            const DRV_SPI_INIT_DATA SPI_Init_Data = {SST25_SPI_CHANNEL, 3, 6, 0, 1, 1, 0};
            #ifdef USE_TOUCHSCREEN_AR1020
                const DRV_SPI_INIT_DATA ar1020SpiInit = {AR1020_SPI_CHANNEL,    2,  3, 0, 0, 0, 0};
            #endif
        #endif
    #elif defined (USE_MCHP25LC256)
        const DRV_SPI_INIT_DATA SPI_Init_Data = {MCHP25LC256_SPI_CHANNEL, 6, 3, 0, 1, 1, 0};
    #elif defined (USE_M25P80)
            const DRV_SPI_INIT_DATA SPI_Init_Data = {SST25_SPI_CHANNEL, 3, 6, 0, 1, 1, 0};
    #endif
#endif

/////////////////////////////////////////////////////////////////////////////
// TouchScreen Init Values
/////////////////////////////////////////////////////////////////////////////
#ifdef USE_TOUCHSCREEN_RESISTIVE
#define TOUCH_INIT_VALUES   (NULL)
#endif
#ifdef USE_TOUCHSCREEN_AR1020
#define TOUCH_INIT_VALUES   ((void *)&ar1020SpiInit)
#endif



/////////////////////////////////////////////////////////////////////////////
//                            LOCAL PROTOTYPES
/////////////////////////////////////////////////////////////////////////////
void            TickInit(void);                 // starts tick counter
void 		InitializeBoard(void);

/* */
int main(void)
{
    GOL_MSG msg;                    // GOL message structure to interact with GOL

     /* Initialize I/O and Peripherals for application */
    InitApp();
    configureUart(115200);

    sendDataBuffer("Debug information\n");

    InitializeBoard();

    GDDDemoCreateFirstScreen();

    while(1)
    {
        if(GOLDraw())               // Draw GOL object
        {
            TouchGetMsg(&msg);      // Get message from touch screen
            GOLMsg(&msg);           // Process message
        }
    }//end while
}

/////////////////////////////////////////////////////////////////////////////
// Function: WORD GOLMsgCallback(WORD objMsg, OBJ_HEADER* pObj, GOL_MSG* pMsg)
// Input: objMsg - translated message for the object,
//        pObj - pointer to the object,
//        pMsg - pointer to the non-translated, raw GOL message
// Output: if the function returns non-zero the message will be processed by default
// Overview: it's a user defined function. GOLMsg() function calls it each

//           time the valid message for the object received
/////////////////////////////////////////////////////////////////////////////
WORD GOLMsgCallback(WORD objMsg, OBJ_HEADER *pObj, GOL_MSG *pMsg)
{
    WORD    objectID;

    objectID = GetObjID(pObj);

    if(objMsg == BTN_MSG_RELEASED)
    {
        if(homeScreen_recordButton == objectID)
        {
            //recordTrace();
            sdCardTest();
            GDDSetScreen(RECORD_SCREEN);
        }
        else if (recordScreen_backToHomeButton == objectID)
        {
            GDDSetScreen(HOME_SCREEN);
        }
        else if (homeScreen_listTracesButton == objectID)
        {
            GDDSetScreen(LIST_TRACES_SCREEN);
        }
        else if (recordScreen_viewLastTracedButton == objectID)
        {
            GDDSetScreen(ANALYSIS_SCREEN);
        }
        else if (analysisScreen_changeLevelButton == objectID)
        {
            //TODO, it will be fun to display both TPDU and APDU
        }
        else if (listTracesScreen_listTracesScreen == objectID)
        {
            GDDSetScreen(LIST_TRACES_SCREEN);
        }
        else if ( listTracesScreen_viewTraceNumberButton == objectID )
        {
            GDDSetScreen(ANALYSIS_SCREEN);
        }
    }
    return (1);
}

/////////////////////////////////////////////////////////////////////////////
// Function: WORD GOLDrawCallback()
// Output: if the function returns non-zero the draw control will be passed to GOL
// Overview: it's a user defined function. GOLDraw() function calls it each
//           time when GOL objects drawing is completed. User drawing should be done here.
//           GOL will not change color, line type and clipping region settings while

//           this function returns zero.
/////////////////////////////////////////////////////////////////////////////
WORD GOLDrawCallback(void)
{
    GDDDemoGOLDrawCallback();

    // Add additional code here...

    return (1);
}


/////////////////////////////////////////////////////////////////////////////
// Function: Timer3 ISR
// Input: none
// Output: none
// Overview: increments tick counter. Tick is approx. 1 ms.
/////////////////////////////////////////////////////////////////////////////
#ifdef __PIC32MX__
    #define __T3_ISR    __ISR(_TIMER_3_VECTOR, ipl4)
#else
    #define __T3_ISR    __attribute__((interrupt, shadow, auto_psv))
#endif

/* */
void __T3_ISR _T3Interrupt(void)
{
    TMR3 = 0;
    // Clear flag
    #ifdef __PIC32MX__
    mT3ClearIntFlag();
    #else
    IFS0bits.T3IF = 0;
    #endif

    TouchDetectPosition();
}

/////////////////////////////////////////////////////////////////////////////
// Function: void TickInit(void)
// Input: none
// Output: none
// Overview: Initilizes the tick timer.
/////////////////////////////////////////////////////////////////////////////

/*********************************************************************
 * Section: Tick Delay
 *********************************************************************/
#define SAMPLE_PERIOD       500 // us
#define TICK_PERIOD			(GetPeripheralClock() * SAMPLE_PERIOD) / 4000000

/* */
void TickInit(void)
{

    // Initialize Timer4
    #ifdef __PIC32MX__
    OpenTimer3(T3_ON | T3_PS_1_8, TICK_PERIOD);
    ConfigIntTimer3(T3_INT_ON | T3_INT_PRIOR_4);
    #else
    TMR3 = 0;
    PR3 = TICK_PERIOD;
    IFS0bits.T3IF = 0;  //Clear flag
    IEC0bits.T3IE = 1;  //Enable interrupt
    T3CONbits.TON = 1;  //Run timer
    #endif

}



/////////////////////////////////////////////////////////////////////////////
// Function: InitializeBoard()
// Input: none
// Output: none
// Overview: Initializes the hardware components including the PIC device
//           used.
/////////////////////////////////////////////////////////////////////////////
void InitializeBoard(void)
{


#ifndef PIC32_STARTER_KIT
    /*The JTAG is on by default on POR.  A PIC32 Starter Kit uses the JTAG, but
    for other debug tool use, like ICD 3 and Real ICE, the JTAG should be off
    to free up the JTAG I/O */
    DDPCONbits.JTAGEN = 0;
#endif

    /*Refer to the C32 peripheral library compiled help file for more
    information on the SYTEMConfig function.

    This function sets the PB divider, the Flash Wait States, and the DRM
    /wait states to the optimum value.  It also enables the cacheability for
    the K0 segment.  It could has side effects of possibly alter the pre-fetch
    buffer and cache.  It sets the RAM wait states to 0.  Other than
    the SYS_FREQ, this takes these parameters.  The top 3 may be '|'ed
    together:

    SYS_CFG_WAIT_STATES (configures flash wait states from system clock)
    SYS_CFG_PB_BUS (configures the PB bus from the system clock)
    SYS_CFG_PCACHE (configures the pCache if used)
    SYS_CFG_ALL (configures the flash wait states, PB bus, and pCache)*/

    /* TODO Add user clock/system configuration code if appropriate.  */
    /* TODO Add user clock/system configuration code if appropriate.  */
    SYSTEMConfig(SYS_FREQ, SYS_CFG_ALL);

    #pragma config OSCIOFNC = ON /*Use clock output*/
    #pragma config POSCMOD = XT /*Oscillator mode XT*/
    #pragma config IESO = OFF /*Internal oscillator to external oscillator switching disables*/
    #pragma config FSOSCEN = OFF /*Secondary oscillator turned off*/
    #pragma config FNOSC = PRIPLL /*Use primary external oscillator with PLL*/
    #pragma config DEBUG = OFF /*Debug disables*/
    #pragma config ICESEL = ICS_PGx2 /*Share ICE pins with ICSP on PCG/PGD2*/
    #pragma config PWP = OFF /*Program flash write protection off*/
    #pragma config BWP = OFF /*Boot write protection off*/
    #pragma config CP = OFF /*Code protection off*/
    #pragma config FPBDIV = DIV_2 /*Peripheral bus divider is 1:2*/
    #pragma config FCKSM = CSDCMD /*Clock switching disabled. Clock monitoring disabled.*/
    #pragma config WDTPS = PS1048576 /*Watchdog timer postscaler*/
    #pragma config FWDTEN = OFF /*WDT disable*/
    /*Pragma, using the PIC32 in 80Mhz mode*/
    #pragma config FPLLIDIV = DIV_2 /*PLL input divider 1:2*/
    #pragma config FPLLMUL = MUL_20 /*PLL multiplier of 20*/
    #pragma config FPLLODIV = DIV_1 /*PLL output divider 1:1*/

    SYSTEMConfigPerformance( FCY);
    mOSCSetPBDIV( OSC_PB_DIV_2 );
    INTConfigureSystem(INT_SYSTEM_CONFIG_MULT_VECTOR);
    INTEnableSystemMultiVectoredInt();

    #if defined (EXPLORER_16)
/************************************************************************
* For Explorer 16 RD12 is connected to EEPROM chip select.
* To prevent a conflict between this EEPROM and SST25 flash
* the chip select of the EEPROM SPI should be pulled up.
************************************************************************/
        // Set IOs directions for EEPROM SPI
        MCHP25LC256_CS_LAT = 1;			    // set initial CS value to 1 (not asserted)
    	MCHP25LC256_CS_TRIS = 0;			// set CS pin to output
    #endif // #if defined (EXPLORER_16)

    // Initialize graphics library and create default style scheme for GOL
    GOLInit();

// Set the other chip selects to a known state
#ifdef MIKRO_BOARD
    // SD Card chip select
    LATGbits.LATG9 = 1;
    TRISGbits.TRISG9 = 0;

    // MP3 Codac
    // reset
    LATAbits.LATA5 = 0;
    TRISAbits.TRISA5 = 0;
    // chip select
    LATAbits.LATA2 = 1;
    TRISAbits.TRISA2 = 0;
    // chip select
    LATAbits.LATA3 = 1;
    TRISAbits.TRISA3 = 0;

    AD1PCFGbits.PCFG11 = 1;
    AD1PCFGbits.PCFG10 = 1;
#endif

    //The following are PIC device specific settings for the SPI channel
    //used.

    //Set IOs directions for SST25 SPI
    #if defined (GFX_PICTAIL_V3) || defined (MEB_BOARD) || defined(GFX_PICTAIL_LCC) || defined(MIKRO_BOARD) || defined(GFX_PICTAIL_V3E)

        SST25_CS_LAT = 1;
        SST25_CS_TRIS = 0;

        #ifndef __PIC32MX__
            SST25_SCK_TRIS = 0;
            SST25_SDO_TRIS = 0;
            SST25_SDI_TRIS = 1;
            #if defined(__PIC24FJ256GB210__) || defined(__dsPIC33E__) || defined(__PIC24E__)
            	SST25_SDI_ANS = 0;
    	    #endif
        #endif
    #elif defined (PIC24FJ256DA210_DEV_BOARD)
        SST25_CS_LAT = 1;
        SST25_CS_TRIS = 0;

        // Set the pins to be digital
    	SST25_SDI_ANS = 0;
        SST25_SDO_ANS = 0;

        SST25_SCK_TRIS = 0;
        SST25_SDO_TRIS = 0;
        SST25_SDI_TRIS = 1;

	#endif

    // set the peripheral pin select for the PSI channel used
    #if defined(__dsPIC33FJ128GP804__) || defined(__PIC24HJ128GP504__)
        AD1PCFGL = 0xFFFF;
        RPOR9bits.RP18R = 11;                   // assign RP18 for SCK2
        RPOR8bits.RP16R = 10;                   // assign RP16 for SDO2
        RPINR22bits.SDI2R = 17;                 // assign RP17 for SDI2
    #elif defined(__PIC24FJ256GB110__) || defined(__PIC24FJ256GA110__) || defined (__PIC24FJ256GB210__)
        __builtin_write_OSCCONL(OSCCON & 0xbf); // unlock PPS
        RPOR10bits.RP21R = 11;                  // assign RP21 for SCK2
        RPOR9bits.RP19R = 10;                   // assign RP19 for SDO2
        RPINR22bits.SDI2R = 26;                 // assign RP26 for SDI2
        __builtin_write_OSCCONL(OSCCON | 0x40); // lock   PPS
    #elif defined(__PIC24FJ256DA210__)

        __builtin_write_OSCCONL(OSCCON & 0xbf); // unlock PPS

    	#if (SST25_SPI_CHANNEL == 1)
    	    RPOR1bits.RP2R = 8;                 // assign RP2 for SCK1
    	    RPOR0bits.RP1R = 7;                 // assign RP1 for SDO1
    	    RPINR20bits.SDI1R = 0;              // assign RP0 for SDI1
        #elif (SST25_SPI_CHANNEL == 2)
            RPOR1bits.RP2R = 11;                // assign RP2 for SCK2
    	    RPOR0bits.RP1R = 10;                // assign RP1 for SDO2
    	    RPINR22bits.SDI2R = 0;              // assign RP0 for SDI2
    	#endif

        __builtin_write_OSCCONL(OSCCON | 0x40); // lock   PPS

    #endif

	// initialize the Flash Memory driver
    FlashInit(&SPI_Init_Data);

    // initialize the timer that manages the tick counter
    TickInit();

    // initialize the components for Resistive Touch Screen
    TouchInit(NVMWrite, NVMRead, NVMSectorErase, TOUCH_INIT_VALUES);

    HardwareButtonInit();           	// Initialize the hardware buttons

}