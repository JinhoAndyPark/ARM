#include "Global_variable.h"

U8 Rx_Buffer[17]={0,};
uint16_t cnt=0;
uint16_t volume_old=0;
uint16_t volume_tmp=0;
uint16_t complete_flag=0;
uint16_t start_flag=0;
uint16_t end_flag=0;
uint16_t starting_point=0;
uint16_t Encoder_Count1=0;
uint16_t Encoder_Count2=0;
uint16_t Encoder_Count3=0;


double Cnt=0;
double Pos_err_sum=0;
double Pos_err_diff=0;
double volume_Pos_err=0;
double volume_Pos_out=0;
double volume_Pos_err_old=0;
double volume_Pos_err_sum=0;
double volume_Pos_err_diff=0;
uint16_t Encoder_cnt_old=0;
double theta=0;
double theta_old=0;
double theta_dot=0;
double Vel_err_old=0;
double Vel_err=0;
double Vel_err_sum=0;
double Vel_err_diff=0;
double Vel_Out=0;
uint16_t Vel=0;
char rx_checksum=0;
char checksum=0;
uint8_t data=1;
uint16_t angle_data=0;
double angle_data_decimal=0.0;
double target=60.0;
uint16_t target_tmp =0;
float volt;

vu16 ADC1ConvertedValue[2];

U8 Dis[11];
U16 MMode;
int16_t Pos_Err;
int16_t B_Err;
int16_t Sum_Err;
double Pos_Kp;
double Pos_Ki;
double Pos_Kd;
double Pos_Out;
U8 Flag;
U32 value;
U32 value1;
U16 ccnt;
U8 Startpoint;