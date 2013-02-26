/******************************************************************************/

#include "uartFunctions.h"

/* Files to Include                                                           */
/******************************************************************************/

#include <plib.h>            /* Include to use PIC32 peripheral libraries     */
#include <sys/attribs.h>     /* For __ISR definition                          */
#include "traceManager.h"

/******************************************************************************/
/* Interrupt Vector Options                                                   */
/******************************************************************************/
/*                                                                            */
/* VECTOR NAMES:                                                              */
/*                                                                            */
/* _CORE_TIMER_VECTOR          _COMPARATOR_2_VECTOR                           */
/* _CORE_SOFTWARE_0_VECTOR     _UART_2A_VECTOR                                */
/* _CORE_SOFTWARE_1_VECTOR     _I2C_2A_VECTOR                                 */
/* _EXTERNAL_0_VECTOR          _SPI_2_VECTOR                                  */
/* _TIMER_1_VECTOR             _SPI_2A_VECTOR                                 */
/* _INPUT_CAPTURE_1_VECTOR     _I2C_4_VECTOR                                  */
/* _OUTPUT_COMPARE_1_VECTOR    _UART_3_VECTOR                                 */
/* _EXTERNAL_1_VECTOR          _UART_2_VECTOR                                 */
/* _TIMER_2_VECTOR             _SPI_3A_VECTOR                                 */
/* _INPUT_CAPTURE_2_VECTOR     _I2C_3A_VECTOR                                 */
/* _OUTPUT_COMPARE_2_VECTOR    _UART_3A_VECTOR                                */
/* _EXTERNAL_2_VECTOR          _SPI_4_VECTOR                                  */
/* _TIMER_3_VECTOR             _I2C_5_VECTOR                                  */
/* _INPUT_CAPTURE_3_VECTOR     _I2C_2_VECTOR                                  */
/* _OUTPUT_COMPARE_3_VECTOR    _FAIL_SAFE_MONITOR_VECTOR                      */
/* _EXTERNAL_3_VECTOR          _RTCC_VECTOR                                   */
/* _TIMER_4_VECTOR             _DMA_0_VECTOR                                  */
/* _INPUT_CAPTURE_4_VECTOR     _DMA_1_VECTOR                                  */
/* _OUTPUT_COMPARE_4_VECTOR    _DMA_2_VECTOR                                  */
/* _EXTERNAL_4_VECTOR          _DMA_3_VECTOR                                  */
/* _TIMER_5_VECTOR             _DMA_4_VECTOR                                  */
/* _INPUT_CAPTURE_5_VECTOR     _DMA_5_VECTOR                                  */
/* _OUTPUT_COMPARE_5_VECTOR    _DMA_6_VECTOR                                  */
/* _SPI_1_VECTOR               _DMA_7_VECTOR                                  */
/* _I2C_3_VECTOR               _FCE_VECTOR                                    */
/* _UART_1A_VECTOR             _USB_1_VECTOR                                  */
/* _UART_1_VECTOR              _CAN_1_VECTOR                                  */
/* _SPI_1A_VECTOR              _CAN_2_VECTOR                                  */
/* _I2C_1A_VECTOR              _ETH_VECTOR                                    */
/* _SPI_3_VECTOR               _UART_4_VECTOR                                 */
/* _I2C_1_VECTOR               _UART_1B_VECTOR                                */
/* _CHANGE_NOTICE_VECTOR       _UART_6_VECTOR                                 */
/* _ADC_VECTOR                 _UART_2B_VECTOR                                */
/* _PMP_VECTOR                 _UART_5_VECTOR                                 */
/* _COMPARATOR_1_VECTOR        _UART_3B_VECTOR                                */
/*                                                                            */
/* Refer to the device specific .h file in the C32 Compiler                   */
/* pic32mx\include\proc directory for a complete Vector and IRQ mnemonic      */
/* listings for the PIC32 device.                                             */
/*                                                                            */
/* PRIORITY OPTIONS:                                                          */
/*                                                                            */
/* (default) IPL0AUTO, IPL1, IPL2, ... IPL7 (highest)                         */
/*                                                                            */
/* Example Shorthand Syntax                                                   */
/*                                                                            */
/* void __ISR(<Vector Name>,<PRIORITY>) user_interrupt_routine_name(void)     */
/* {                                                                          */
/*     <Clear Interrupt Flag>                                                 */
/* }                                                                          */
/*                                                                            */
/* For more interrupt macro examples refer to the C compiler User Guide in    */
/* the C compiler /doc directory.                                             */
/*                                                                            */
/******************************************************************************/
/* Interrupt Routines                                                         */
/******************************************************************************/

#include "definition.h"
#include "bufferManager.h"
#include "stateManager.h"
#include "constants.h"

uint bitIndex = 0;

/* Timer 1 ISR */
/* Specify Interrupt Priority Level = 2 */
void __ISR(_TIMER_1_VECTOR, IPL2) _Timer1Handler(void) {

    mT1ClearIntFlag();
    if(bitIndex == 0)
    {
        
        OpenTimer1(T1_ON | T1_SOURCE_INT | T1_PS_1_1, (getEtu()/5));
        write(PIN_IO);
        bitIndex++;
    }
    else if(bitIndex == 39)
    {
        /* catching the stop bit*/
        /* Configure the IO to answer on each falling edge*/
        //OpenTimer1(T1_ON | T1_SOURCE_INT | T1_PS_1_1, getEtu());
        /* Configure the IO to answer on each falling edge*/
        write(PIN_IO);
        bitIndex++;
        setFlag();
    }
    else if(bitIndex == 40)
    {
        bitIndex =0;
        ConfigINT2(EXT_INT_ENABLE | FALLING_EDGE_INT | EXT_INT_PRI_1);
        ConfigIntTimer1(T1_INT_OFF);
    }
    else
    {
        write(PIN_IO);
        bitIndex++;
    }
}

/* INT2 ISR */
/* Specify interupt priority 1, but stop the interupt once detected */
void __ISR(_EXTERNAL_2_VECTOR, IPL1) _Int2Handler(void) {

    #ifdef DEBUG
        PIN_DEBUG ^= 1;
    #endif

    uint state = getState();
    if(STATE_BEGINING == state)
    {
        /* STEP 1. configure the Timer1*/
        mT1ClearIntFlag();
        OpenTimer1(T1_ON | T1_SOURCE_INT | T1_PS_1_1, 64000);
        /* STEP 2. set the timer interrupt to prioirty level 2 */
        ConfigIntTimer1(T1_INT_ON | T1_INT_PRIOR_2);
        writeBit(1);
        writeBit(1);
        setState(STATE_FIRST_EDGE);
    }
    else if( STATE_FIRST_EDGE == state)
    {
          ConfigIntTimer1(T1_INT_OFF);
          setEtu(ReadTimer1()/3);
          OpenTimer1(T1_ON | T1_SOURCE_INT | T1_PS_1_1, getEtu()/5);
          /* STEP 2. set the timer interrupt to prioirty level 2 */
          ConfigIntTimer1(T1_INT_ON | T1_INT_PRIOR_2);
          /*Stopping the timer 1 and reading the value*/
          DisableINT2;
          
          /*the two first bits of ts are sets*/
          setState(STATE_TS);
          bitIndex = 10 ;
    }
    else
    {
        /* state == normal processing or no atr but an etu value is set*/
          DisableINT2;
          OpenTimer1(T1_ON | T1_SOURCE_INT | T1_PS_1_1, getEtu());
          ConfigIntTimer1(T1_INT_ON | T1_INT_PRIOR_2);
    }
     /* The flag is cleared at the end to avoid stack overflow
    * PORTDbits.RD0 is the EXTERNAL_0_VECTOR*/

    mINT2ClearIntFlag();
}

/* INT1 ISR */
/* Specify interupt priority 1, but stop the interupt once detected */
void __ISR(_EXTERNAL_1_VECTOR, IPL3) _Int1Handler(void) {
    reset();
    mINT1ClearIntFlag();
}