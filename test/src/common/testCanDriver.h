#include "canfestival/can_driver.h"

extern "C" {
UNS8 TestcanSend(CAN_HANDLE fd0, const Message *m);
//helper functions
bool Test_GetDriverTxCanMessage(Message *m);
void Test_AddCanMsgToDriverRxQueue(Message const *m);
}