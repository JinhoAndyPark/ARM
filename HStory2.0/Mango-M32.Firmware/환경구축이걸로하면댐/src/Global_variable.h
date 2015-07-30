#ifndef __Global_variable_H
#define __Global_variable_H
#include "stm32f10x.h"	

extern char Rx_Buffer[17];
extern char rx_checksum;
extern char checksum;
extern uint16_t complete_flag;
extern uint16_t start_flag;
extern uint16_t end_flag;
extern uint16_t starting_point;
extern uint16_t volume_old;
extern uint16_t volume_tmp;
extern uint16_t cnt;
extern uint8_t data;
extern uint16_t Encoder_Count1;
extern uint16_t Encoder_Count2;
extern uint16_t Encoder_Count3;
extern double Pos_err;
extern double Pos_out;
extern double Pos_err_old;
extern double Pos_err_sum;
extern double Pos_err_diff;
extern double volume_Pos_err;
extern double volume_Pos_out;
extern double volume_Pos_err_old;
extern double volume_Pos_err_sum;
extern double volume_Pos_err_diff;
extern uint16_t angle_data;
extern double angle_data_decimal;
extern double target;
extern uint16_t target_tmp;
extern double theta;
extern double theta_old;
extern double theta_dot;
extern double Vel_err_old;
extern double Vel_err;
extern double Vel_err_sum;
extern double Vel_err_diff;
extern double Vel_out;
extern uint16_t Vel;
extern uint16_t Encoder_cnt_old;
extern void Usart_putnum(uint16_t NumData);
extern void SerialPutChar(uint16_t c);
extern vu16 ADC1ConvertedValue[2];
extern float volt;
#endif