#ifndef __STATEMANAGER_H
#define __STATEMANAGER_H

#include "definition.h"

uint getNumberOfBitAtEnd();
uint getState();
uint getEtu();

void setNumberOfBitAtTheEnd(uint);
void setState(uint);
void setEtu(uint);
void reset();

#endif