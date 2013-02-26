/******************************************************************************/
/*  Files to Include                                                          */
/******************************************************************************/
#ifdef __XC32
    #include <xc.h>          /* Defines special funciton registers, CP0 regs  */
#endif

#include <plib.h>           /* Include to use PIC32 peripheral libraries      */
#include <stdint.h>         /* For uint32_t definition                        */
#include <stdbool.h>        /* For true/false definition                      */

#include "uartFunctions.h"
#include "system.h"         /* System funct/params, like osc/periph config    */
#include "user.h"           /* User funct/params, such as InitApp             */

/******************************************************************************/
/* Global Variable Declaration                                                */
/******************************************************************************/

/* i.e. uint32_t <variable_name>; */

/******************************************************************************/
/* Main Program                                                               */
/******************************************************************************/

int32_t main(void)
{

#ifndef PIC32_STARTER_KIT
    /*The JTAG is on by default on POR.  A PIC32 Starter Kit uses the JTAG, but
    for other debug tool use, like ICD 3 and Real ICE, the JTAG should be off
    to free up the JTAG I/O */
    DDPCONbits.JTAGEN = 0;
#endif

    /*Refer to the C32 peripheral library documentation for more
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
    SYSTEMConfig(SYS_FREQ, SYS_CFG_ALL); 

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
    
    /* Initialize I/O and Peripherals for application */
    InitApp();

    /*Configure Multivector Interrupt Mode.  Using Single Vector Mode
    is expensive from a timing perspective, so most applications
    should probably not use a Single Vector Mode*/

    configureUart(115200);
    sendDataBuffer("HelloWorld");

    while(1)
    {

    }
}
