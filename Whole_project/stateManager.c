
#include "stateManager.h"
#include "definition.h"
#include "constants.h"


uint stateManager_state = STATE_BEGINING;
uint etu = 0;

uint getState() {
  return stateManager_state;
}

uint getEtu() {
    return etu;
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