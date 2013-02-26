#ifndef __BUFFERMANAGER_H
#define __BUFFERMANAGER_H

#include "definition.h"

#define     BUFFER_SIZE      25/* The size of the buffer in bytes */
#define     INDEX_MAX        200/*BUFFER_SIZE*8*/


/**
 * Write a bit into the cyclic buffer
 * @param bitValue the bit to write 0 or 1
 */
void write(uchar bitValue);

/**
 * Return the state of a bit.
 * @return 0 for A and 1 for Z
 */
uchar get();

/**
 * Return the average value of the n bits
 * @param nbOfBits the nb of bit to withdraw
 * @return 1 if the majority of the bits are 1 0 elsewhere
 */
uchar getAcq();

/**
 * Verify if there is bits to read in the buffer
 * @return 1 if there is bits to read 0 elsewhere
 */
uchar isData();

void setFlag();
#endif