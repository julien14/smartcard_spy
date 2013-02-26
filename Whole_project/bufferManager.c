#include <plib.h> 
#include "bufferManager.h"
#include "definition.h"

uchar buffer[BUFFER_SIZE];
uint writePos = 0;
uint readPos = 0;
uchar flag = 0;

void setFlag() {
    LATAbits.LATA6 =1;
    flag++;
}

void clearFlag() {
    if(flag > 0)
    {
        flag--;
    }
}

/**
 * Write five bits into the cyclic buffer
 * @param bitValue the bit to write 0 or 1
 */
void writeBit(uchar bitValue) {
    write(1);
    write(1);
    write(1);
    write(1);
    write(1);
}

/**
 * Write a bit into the cyclic buffer
 * @param bitValue the bit to write 0 or 1
 */
void write(uchar bitValue) {

    uchar bitMask = (uchar)0x01 << (writePos%8);

    if(bitValue == 0x00)
    {
        buffer[writePos/8] &= (uchar)(bitMask ^ (uchar)0xff);
    }
    else
    {
        buffer[writePos/8] |= bitMask;
    }
    writePos++;
    if(INDEX_MAX == writePos)
    {
        writePos = 0;
    }
}

/**
 * Return the state of a bit.
 * @return 0 for A and 1 for Z
 */
uchar get() {
    uchar ret = buffer[readPos/8] & ((uchar)0x01 << (readPos%8));
    readPos++;
    if((INDEX_MAX ) == readPos)
    {
        readPos = 0;
    }
    
    if(0 == ret)
    {
        return (uchar)0x00;
    }
    else
    {
        return (uchar)0x01;
    }

}

/**
 * Return the average value of the n bits
 * @param nbOfBits the nb of bit to withdraw
 * @return 1 if the majority of the bits are 1 0 elsewhere
 */
uchar getAcq() {
    uchar sum = 0;
    uchar nbOfBits = 3;
    
    get();

    while(nbOfBits)
    {
        sum += get();
        nbOfBits--;
    }
    
    get();

    if(sum >= 2)
    {
        return 1;
    }
    else
    {
        return 0;
    }

}

/**
 * Verify if there is bits to read in the buffer
 * @return 1 if there is bits to read 0 elsewhere
 */
uchar isData() {
    return flag;
}