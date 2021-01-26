extern "C" {
#include "canfestival/canfestival.h"
}

// Because we don't use a driver for tests these won't be defined anywhere
// but mocking still requires the functions bodies

extern "C" unsigned char canSend(CAN_PORT notused, Message *m) {
    return 0;
}

extern "C" void setTimer(TIMEVAL value){
}

extern "C" TIMEVAL getElapsedTime(void){
    return 0;
}