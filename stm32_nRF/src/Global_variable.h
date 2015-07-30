#ifndef __Global_variable_H
#define __Global_variable_H
#include "stm32f10x.h"	



extern U8 Rx_Buffer[17];
extern U8 ADC_Buffer[8];
extern U8 rx_checksum;
extern U8 checksum;
extern U8 data;
extern U8 Mode;
extern U8 Instruction;
extern U8 pwmFlag;
extern U8 Duty;
extern U8 sendFlag;
#endif