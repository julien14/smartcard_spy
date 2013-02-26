
#ifndef __UARTFUNCTIONS_H
#define __UARTFUNCTIONS_H

#include "definition.h"

/**
 * Configure the uart interface with the given baudrate
 * @param baudRate the given baudrate
 */
void configureUart(int baudRate);

/**
 * Send the string buffer on the serial interface
 * @param buffer The string to send
 */
void sendDataBuffer(const schar *buffer);


/**
 * Send a raw byte on the serial port
 * @param c the unsigned char to be sent
 */
void sendByte(const uchar c);

/**
 * Send the ascii representation of this byte value
 * @param data the value to be converted and sended
 */
void sendByteToAscii(const uchar data);

/**
 * Send raw bytes on the serial port
 * @param buffer
 * @param size
 */
void sendRawBytes(const uchar *buffer, int size);

#endif