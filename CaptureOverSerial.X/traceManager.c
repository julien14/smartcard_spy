/******************************************************************************/
/* Files to Include                                                           */
/******************************************************************************/

#include <plib.h>            /* Include to use PIC32 peripheral libraries     */
#include <stdint.h>          /* For uint32_t definition                       */
#include <stdbool.h>         /* For true/false definition                     */
#include "traceManager.h"
//#include "TimeDelay.h"            /* variables/params used by user.c               */
#include "constants.h"
#include "definition.h"
#include "stateManager.h"
#include "bufferManager.h"
#include "uartFunctions.h"

/******************************************************************************/
/* Global Variable Declaration                                                */
/******************************************************************************/
static uchar dataArray[DATA_SIZE];
uint dataIndex = 0;
uint warmAtrOffset = 0;

/*
 * Private functions
 */

void InitApp(void)
{
    /* Setup analog functionality and port direction */
    TRISEbits.TRISE9 = 1;/*equivalent to int2*/
    TRISEbits.TRISE8 = 1;/*equivalent to int1*/
    TRISAbits.TRISA2 = 1;
    TRISAbits.TRISA3 = 0;

    /* Initialize peripherals */
    INTEnableInterrupts();
    PIN_DEBUG = 1;
}

void reInit() {
    dataIndex = 0;
    setState(STATE_BEGINING);
    setEtu(0);
}
/**
 * Blocking function waiting for the reader to set IO to high state
 * this function wait the VCC to be at high state, then th reset to
 * rise and finaly verify I/O is at the Z state
 */
int waitForIO(void) {
    configureTimeout(10);

    while( (!PIN_VCC) && (STATE_ERROR != getState()) );

    /* While rst is low */
    while( (!PIN_RST) && (STATE_ERROR != getState()) );

    /*Verifying IO is at state Z*/
    while( (!PIN_IO) && (STATE_ERROR != getState()) );

    return getState();
}

void fixEtu(uint tmpEtu) {
    if(NO_ETU_CHANGE != tmpEtu)
    {
        setEtu(tmpEtu);
    }
}

uint computeEtu(uchar ta1) {

    if(0x00 == ta1) {
        return getEtu();
    }

    uchar M = ta1 & 0x0f;
    uchar FI = ta1 & 0xf0;
    uchar m = 0;

    uint D = 2;
    uint F;

    /* D calculation*/
    if(0x0D >= F)      {m = M - 6;}
    else if(0x09 == M) {D = 20;   }
    else if(0x08 == 12){D = 12;   }
    else               {m = M - 1;}

    while(m > 1)
    {
        m--;
        D *=2;
    }

    /*F calculation*/
    if(0x00 == FI)      {F = 372; }
    else if(0x10 == FI) {F = 372; }
    else if(0x20 == FI) {F = 558; }
    else if(0x30 == FI) {F = 774; }
    else if(0x40 == FI) {F = 1116;}
    else if(0x50 == FI) {F = 1488;}
    else if(0x60 == FI) {F = 1860;}
    else if(0x90 == FI) {F = 512; }
    else if(0xA0 == FI) {F = 768; }
    else if(0xB0 == FI) {F = 1024;}
    else if(0xC0 == FI) {F = 1536;}
    else if(0xD0 == FI) {F = 2048;}

    return ((uint) (getEtu() / 372) * (F/D));
}


/******************************************************************************/
/* Public Functions                                                           */
/******************************************************************************/


/**
 * Record a trace, this is a blocking function.
 * Use the ext interupt 0 and 1.
 * Use the timer 1.
 */
uchar* recordTrace(int *size) {
    uchar charIndex = 0;
    uchar charBuffer;

    uint state = STATE_BEGINING;

    uchar i = 0;
    uchar t0 = (uchar) 0x00;
    uint tmpEtu = NO_ETU_CHANGE;
    uchar protocol;
    uchar convention;

    convention = CONVENTION_DIRECTE;
    protocol = PROTOCOL_T0;

    initialiseInterupt();

    if(!waitForIO())
    {
        reInit();
        return NULL;
    }

    /* Configure the interupt on IO to answer on each falling edge*/
    ConfigINT2(EXT_INT_ENABLE | FALLING_EDGE_INT | EXT_INT_PRI_1);

    /* Configure the warm reset to trigger on falling edge*/
    ConfigINT1(EXT_INT_ENABLE | FALLING_EDGE_INT | EXT_INT_PRI_1);

    while( (STATE_TERMINATED != state))
    {
        state = getState();
        if( (isData() > 0) && dataIndex < DATA_SIZE)
        {
            charBuffer = 0x00;
            for(charIndex = 0 ; charIndex < 8 ; charIndex++ )
            {
                if(CONVENTION_INVERSE == convention)
                {
                    charBuffer ^= (getAcq() << (7-charIndex));
                }
                else if(CONVENTION_DIRECTE == convention)
                {
                    charBuffer ^= (getAcq() << charIndex);
                }
            }
            if(CONVENTION_INVERSE == convention)
            {
                charBuffer = 0xff ^ charBuffer;
            }
            dataArray[dataIndex] = charBuffer;

            dataIndex++;
            clearFlag();

            if(STATE_TS == state)
            {
                if((uchar) 0x3b == charBuffer)
                {
                    convention = CONVENTION_DIRECTE;
                }

                /* 0x03 is the way the byte 3f will be read with the tool
                 * For information, by default the Direct convention is used
                 * so we don't see directly the byte 3F but the byte 3f coded
                 * in direct convention = 0x03 */
                if((uchar) 0x03 == charBuffer)
                {
                    convention = CONVENTION_INVERSE;
                    dataArray[dataIndex-1] = 0x3f;
                }

                setState(STATE_T0);
            }
            else if(STATE_T0 == state)
            {
                t0 = charBuffer;
                setState(STATE_ATR);
            } /*Then we treats TAx, TBx, TCx, TDx,... and finaly hist bytes */
            else if(0 < (t0 & 0x10) )
            {
                t0 = t0 ^ 0x10;
                /* It's a TAx */
                if(0 == i) /* It's Ta1*/
                {
                    /*Configuring the new ATR value*/
                    tmpEtu = computeEtu(charBuffer);
                }
            }
            else if(0 < (t0 & 0x20) )
            {
                /*It's a TBx*/
                t0 = t0 ^ 0x20;
            }
            else if(0 < (t0 & 0x40) )
            {
                /*It's a TCx*/
                t0 = t0 ^ 0x40;
            }
            else if(0 < (t0 & 0x80) )
            {
                /*It's a TDx*/
                t0 = t0 ^ 0x80;
                /* t0 is only compose of the historical bytes We verify if
                 the TD bytes implies other bytes*/
                t0 ^= (charBuffer & 0xf0);
                i++;

                /* We also verify if it's a T=1 protocol */
                if( ((uchar) 0x01) == ((uchar) charBuffer ^ 0x01) )
                {
                    /*It's a t=1 card set the value to T=1*/
                   protocol = PROTOCOL_T1;
                }

            }
            else if(0 < (t0 & 0x0F))
            {
                /* This is historical bytes */
                t0--;
                if(t0 == 0)
                {
                    if(PROTOCOL_T1 == protocol)
                    {
                        setState(STATE_ATR_CRC);
                    }
                    else
                    {
                        setState(STATE_PROCESSING);
                        fixEtu(tmpEtu);
                    }
                }
            }
            else if(STATE_ATR_CRC == state) {
                setState(STATE_PROCESSING);
                fixEtu(tmpEtu);
            }
        }/*end of if(isData() > 0 )*/
        else if(STATE_RESET == getState()) {
            charIndex = 0;
            convention = CONVENTION_DIRECTE;
            warmAtrOffset = dataIndex;
            t0 = 0x00;
            setState(STATE_BEGINING);
        }
        if( !isData() && !PIN_VCC )
        {
            setState(STATE_TERMINATED);
        }
        if(dataIndex >= DATA_SIZE )
        {
            #ifdef DEBUG
                sendDataBuffer("Array overflow\n");
            #endif
            setState(STATE_TERMINATED);
        }
    }//End of while

    /* Stop the interupt on IO */
    ConfigINT0(EXT_INT_DISABLE);

    /* Stop the warm reset */
    ConfigINT1(EXT_INT_DISABLE);

#ifdef DEBUG
    sendDataBuffer("Trace recorded : \n");
#endif
    
    /* End of debug information */
    *size = dataIndex;
    reInit();
    return dataArray;
}
