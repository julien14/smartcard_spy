#include "uartFunctions.h"
#include <plib.h>
#include "system.h"
#include "definition.h"

/**
 * Configure the uart interface with the given baudrate
 * @param baudRate the given baudrate
 */
void configureUart(sint baudRate) {

    UARTConfigure(UART2, UART_ENABLE_PINS_TX_RX_ONLY);
    UARTSetFifoMode(UART2, UART_INTERRUPT_ON_TX_NOT_FULL | UART_INTERRUPT_ON_RX_NOT_EMPTY);
    UARTSetLineControl(UART2, UART_DATA_SIZE_8_BITS | UART_PARITY_NONE | UART_STOP_BITS_1);

    UARTSetDataRate(UART2, SYS_FREQ, baudRate*2);
    UARTEnable(UART2, UART_ENABLE_FLAGS(UART_PERIPHERAL | UART_RX | UART_TX));
}

/**
 * convert a byte value into its ascii representation
 * @param c the byte value
 * @return the ascii representation
 */
uchar toAscii(uchar c) {
    if(c < 0x0A)
    {
        c ^= 0x30;
    }
    else
    {
        c = c + 'A' - 0x0A;
    }

    return c;
}

/**
 * Send a raw byte on the serial port
 * @param c the unsigned char to be sent
 */
void sendByte(uchar c) {
    while(!UARTTransmitterIsReady(UART2));
    UARTSendDataByte(UART2, c);
    while(!UARTTransmissionHasCompleted(UART2));
}

/**
 * Send the ascii representation of this byte value
 * @param data the value to be converted and sended
 */
void sendByteToAscii(uchar data) {
    uchar left = (data >> 4) ;
    uchar right = data & (uchar)0x0f;;

    left = toAscii((uchar)left);
    right = toAscii((uchar)right);

    sendByte(left);
    sendByte(right);
}

/**
 * Send raw bytes on the serial port
 * @param buffer
 * @param size
 */
void sendRawBytes(const unsigned char *buffer, int size) {
    uint i;

    for( i = 0 ; i < size ; i++)
    {
        sendByte(*buffer);
        buffer++;
    }
}

/**
 * Send the string buffer on the serial interface
 * @param buffer The string to send
 */
void sendDataBuffer(const schar *buffer) {
    while( '\0' != *buffer)
    {
        while(!UARTTransmitterIsReady(UART2));
        UARTSendDataByte(UART2, *buffer);
        buffer++;
    }
    while(!UARTTransmissionHasCompleted(UART2));
}