
#include "stateManager.h"
#include "definition.h"
#include "constants.h"


static uint stateManager_state = STATE_BEGINING;
static uint etu = 0;
static uint numberOfBitAtTheEnd = 3; //Represent the length of the bit of a charater
                              //from the parity bit included to the end

uint getNumberOfBitAtEnd() {
    return numberOfBitAtTheEnd;
}

uint getState() {
  return stateManager_state;
}

uint getEtu() {
    return etu;
}

void setNumberOfBitAtTheEnd(uint number) {
    numberOfBitAtTheEnd = number;
}

void setState(uint newState) {
    stateManager_state = newState;
}

void setEtu(uint newEtu) {
    etu = newEtu;
}

void reset() {
    if(STATE_TERMINATED != stateManager_state)
    {
        stateManager_state = STATE_RESET;
        etu = 0;
    }
}