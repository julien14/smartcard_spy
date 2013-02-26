#include "definition.h"
#include "constants.h"

 /******************************************************************************/
/* Strings definition                                                         */
/******************************************************************************/

const schar ROM_atrAnalysis[] = "ATR analysis\n";
const schar ROM_ready[] = "Ready\n";
const schar ROM_recordingTransaction[] = "Currently recording a transaction\n";
const schar ROM_traceCompleted[] = "Trace Completed\n";
const schar ROM_traceEnd[] = "End of the trace\n";
const schar ROM_atr[] = "ATR : ";
const schar ROM_terminal[] = "Term: ";
const schar ROM_card[] = "Card: ";
const schar ROM_return[] = "\n";
const schar ROM_space[] = " ";

/******************************************************************************/
/* Beatyfull functions                                                        */
/******************************************************************************/

#define ALLOW_WRITES
#include "FSconfig.h"
#include "FSIO.h"
#include "SD-SPI.h"

void sdCardTest() {
    FSFILE * pointer;
    char sendBuffer[] = "This is test string 1";

    // Wait in while loop until the physical media device like SD card, CF card or
    // USB memory device is detected in the software...
    while (!MDD_SDSPI_MediaDetect());
    // Initialize the file system library & the physical media device
    while (!FSInit());
    // Create a file
    pointer = FSfopen ("FILE1.TXT", "w");
    if (pointer == NULL)
    while(1);
    // Write 21 1-byte objects from sendBuffer into the file
    if (FSfwrite (sendBuffer, 1, 21, pointer) != 21)
    while(1);
    // Close the file
    if (FSfclose (pointer))
    while(1);

}

void t1Analysis(uchar *buffer, uint size) {
    /* The first block is a terminal block
     * The second one is a card one and on and on. */
    uint index = 0;
    uchar i;
    uchar LEN;
    uchar turn = TERMINAL;

    while( (index < size) )
    {
        if(TERMINAL == turn)
        {
           // FSfwrite (ROM_terminal,1, 7, pointer);
            turn = CARD;
        }
        else
        {
            sendDataBuffer(ROM_card);
            turn = TERMINAL;
        }

        sendByteToAscii(buffer[index + T1_NAD_OFFSET]);
        sendByteToAscii(buffer[index + T1_PCB_OFFSET]);

        LEN = buffer[index + T1_LEN_OFFSET];

        sendByteToAscii(LEN);

        index = index + T1_DATA_OFFSET;

        for(i=0 ; i < LEN ; i++)
        {
           sendByteToAscii(buffer[index]);
           index++;
        }

        /* And to conclude, the EDC (CRC) */
        sendByteToAscii(buffer[index]);
        index++;

        sendDataBuffer(ROM_return);
    }
}

uchar isCommandCase3(uchar P3) {

    if( (0xA4 == P3) || (0xAE == P3) || (0x20 == P3) || (0xA8 == P3) ||
            (0xA2 == P3))
    {
        return 1;
    }
    else
    {
        return 0;
    }
}

uchar isCommandCase2(uchar P3) {

    if( (0xB2 == P3) || (0xC0 == P3) || (0xB0 == P3))
    {
        return 1;
    }
    else
    {
        return 0;
    }
}

void t0Analysis(uchar *buffer, uint size) {
    uint index = 0;
    uchar i;
    uchar P3;

    while( (index < size) )
    {
        sendDataBuffer(ROM_terminal);
        /* CLA INS P1 P2 P3 */
        sendByteToAscii(buffer[index + T0_CLA_OFFSET]);
        sendByteToAscii(buffer[index + T0_INS_OFFSET]);
        sendByteToAscii(buffer[index + T0_P1_OFFSET]);
        sendByteToAscii(buffer[index + T0_P2_OFFSET]);

        P3 = buffer[index + T0_P3_OFFSET];

        sendByteToAscii(P3);

        sendDataBuffer(ROM_return);
        sendDataBuffer(ROM_card);
        sendByteToAscii(buffer[index + T0_DATA_OFFSET]);

        if( (0x60 == (buffer[index + T0_DATA_OFFSET] & 0xF0)) || (0x90 == (buffer[index + T0_DATA_OFFSET] & 0xF0)))
        {
            /* It is just a status word */
            index++;
            sendByteToAscii(buffer[index]);
            index++;
        }
        else if(buffer[index + T0_DATA_OFFSET] == (P3 ^ 0xFF))
        {
            /* Demande de l'octet d'UDC suivant */

        }
        else if( 0x60 == buffer[index + T0_DATA_OFFSET])
        {
            /* Wiating time extension, no status word needed */
            index = index + T0_DATA_OFFSET +1 ;
            uchar turn = TERMINAL;
            /* While the card and the reader exchange WTX and WTXaknowledge
             * we display them.*/
            while(0x60 == buffer[index])
            {

                if(TERMINAL == turn)
                {
                    sendDataBuffer(ROM_terminal);
                    turn = CARD;
                }
                else
                {
                    sendDataBuffer(ROM_card);
                    turn = TERMINAL;
                }

                sendByteToAscii(buffer[index]);
                index++;
            }
        }
        else if( isCommandCase2(buffer[index + T0_DATA_OFFSET] ) )
        {
            sendDataBuffer(ROM_return);
            sendDataBuffer(ROM_card);

            /*The terminal send P3_len of data*/
            for(i=0 ; i < P3 ; i++)
            {
                sendByteToAscii(buffer[index]);
                index++;
            }

            sendDataBuffer(ROM_return);
            sendDataBuffer(ROM_card);
            sendByteToAscii(buffer[index]);
            index++;
            sendByteToAscii(buffer[index]);
            index++;
        }
        else if(isCommandCase3(buffer[index + T0_DATA_OFFSET] ))
        {
            sendDataBuffer(ROM_return);
            sendDataBuffer(ROM_terminal);

            index = index + T0_DATA_OFFSET + 1;

            /*The terminal send P3_len of data*/
            for(i=0 ; i < P3 ; i++)
            {
                sendByteToAscii(buffer[index]);
                index++;
            }

            sendDataBuffer(ROM_return);
            sendDataBuffer(ROM_card);
            sendByteToAscii(buffer[index]);
            index++;
            sendByteToAscii(buffer[index]);
            index++;

        }

        sendDataBuffer(ROM_return);
    }
}

/**
 * Analyze a complete transaction and write it onto an SD card
 *
 * @param buffer the transaction buffer
 * @param size the transaction size
 */
void analyzeTransaction(uchar *buffer, uint size) {
    /* Variable initialisation */
    uint index;
    uint i;
    uchar protocol = PROTOCOL_T0;
    uchar t0 = 0x00;


    if(0 == size)
    {
        return;
    }
  
    sendDataBuffer(ROM_atr);

    if(1 == size)
    {
        return;
    }

    sendByteToAscii(buffer[ATR_TS_OFFSET]);

    t0 = buffer[ATR_T0_OFFSET];
    index = ATR_T0_OFFSET + 1;

    sendByteToAscii(t0);

    while( (index < size) && (0x00 != t0)  )
    {
            if(0 < (t0 & 0x80) )
            {
                t0 = t0 ^ 0x80;
                /* It's a TAx */
            }
            else if(0 < (t0 & 0x40) )
            {
                /*It's a TBx*/
                t0 = t0 ^ 0x40;
            }
            else if(0 < (t0 & 0x20) )
            {
                /*It's a TCx*/
                t0 = t0 ^ 0x20;
            }
            else if(0 < (t0 & 0x10) )
            {
                /*It's a TDx*/
                t0 = t0 ^ 0x10;
                /* t0 is only compose of the historical bytes We verify if
                 the TD bytes implies other bytes*/
                t0 ^= (buffer[index] & 0xf0);
                i++;

                /* We also verify if it's a T=1 protocol */
                if( ((uchar) 0x01) == ((uchar)buffer[index] ^ 0x01) )
                {
                    /*It's a t=1 card set the value to T=1*/
                    protocol = PROTOCOL_T1;
                }
            }
            else if(0 < (t0 & 0x0F))
            {
                /* This is historical bytes */
                t0--;
                if( (t0 == 0) && (PROTOCOL_T1 == protocol))
                {
                    sendByteToAscii(buffer[index]);
                    index++;
                }
            }
            sendByteToAscii(buffer[index]);
            index++;
    }

    sendDataBuffer(ROM_return);

    if(index >= size)
    {
        return;
    }

    if(PROTOCOL_T0 == protocol)
    {
        /* Using the T=0 analysis function */
        t0Analysis(buffer + index, (size - index));
    }
    else
    {
        /* Using the T=1 analysis function */
        t1Analysis(buffer + index, (size - index));
    }
}

