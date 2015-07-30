#include "hw_config.h"
/*other MCU*/
/*
#define volume_Pos_Kp    30.0
#define volume_Pos_Ki    0.0
#define volume_Pos_Kd    1.0
#define Pos_Kp    55.0
#define Pos_Ki    0.5
#define Pos_Kd    0.0
#define Vel_Kp    45.1
#define Vel_Ki    0.5
#define Vel_Kd    0.0
*/
/*fourth MCU*/

#define volume_Pos_Kp    11.0
#define volume_Pos_Ki    0.0
#define volume_Pos_Kd    0.5
#define Pos_Kp    25.0
#define Pos_Ki    0.0
#define Pos_Kd    0.5
#define Vel_Kp    25.1
#define Vel_Ki    5.0
#define Vel_Kd    0.0

void Pos_Con(double Current,uint16_t Encoder_cnt,int16_t Vel_limit)
{
    /* Position Control*/
    volume_Pos_err_old = volume_Pos_err;	
    
    volume_Pos_err=Current-(double)((int16_t)Encoder_cnt);
    volume_Pos_err_sum += volume_Pos_err;
    volume_Pos_err_diff=(volume_Pos_err-volume_Pos_err_old);
    
    if(volume_Pos_err_sum >= 5000)	volume_Pos_err_sum = 5000;
    else if(volume_Pos_err_sum <= -5000) volume_Pos_err_sum = -5000;
    
    volume_Pos_out = volume_Pos_Kp*volume_Pos_err + volume_Pos_Ki*(volume_Pos_err_sum) + volume_Pos_Kd*volume_Pos_err_diff;
    if(volume_Pos_out>=3600)
        volume_Pos_out=3600;
    else if(volume_Pos_out<=-3600)
	volume_Pos_out=-3600;
    if(volume_Pos_out>=0)
    {
       Motor_Direction_Minus();    //4th MCU
     //  Motor_Direction_Plus();     //other MCU
      volume_Pos_out=volume_Pos_out;
        `    
    } 
    else if(volume_Pos_out<0)
    {
        Motor_Direction_Plus();        //4th MCU
      //  Motor_Direction_Minus();       //other MCU
        volume_Pos_out=-volume_Pos_out;
    }
  
}
void PosVel_Con(double Current,uint16_t Encoder_cnt,int16_t Vel_limit)
{
  /* Position Control*/
    Pos_err_old = Pos_err;	
    
    Pos_err=Current-((int16_t)Encoder_cnt);
    Pos_err_sum += Pos_err;
    Pos_err_diff=(Pos_err-Pos_err_old);
    
    if(Pos_err_sum >= 2000)	Pos_err_sum = 2000;
    else if(Pos_err_sum <= -2000) Pos_err_sum = -2000;
    
    Pos_out = Pos_Kp*Pos_err + Pos_Ki*(Pos_err_sum) + Pos_Kd*Pos_err_diff;
    
   

  /* Velocity Control*/
 /*   theta_dot=(int16_t)(Encoder_cnt-Encoder_cnt_old);
    Encoder_cnt_old=Encoder_cnt;
    Vel_err_old=Vel_err;
    
    if(Pos_out>=Vel_limit)
      Pos_out=Vel_limit;
    else if(Pos_out<=-Vel_limit)
      Pos_out=-Vel_limit;
    else
      Pos_out=Pos_out;
    
    Vel_err=Pos_out-theta_dot;
    Vel_err_sum+=Vel_err;
    Vel_err_diff=Vel_err-Vel_err_old;

    if(Vel_err_sum >= 5000)	Vel_err_sum = 5000;
    else if(Vel_err_sum <= -5000) Vel_err_sum = -5000;
    
    Vel_out=Vel_Kp*Vel_err+Vel_Ki*Vel_err_sum+Vel_Kd*Vel_err_diff;
    
    if(Vel_out>=3600)
        Vel_out=3600;
    else if(Vel_out<=-3600)
	Vel_out=-3600;
    if(Vel_out>=0)
    {
      
        Motor_Direction_Minus();
      Vel_out=Vel_out;
            
    } 
    else if(Vel_out<0)
    {
        Motor_Direction_Plus();
         
        Vel_out=-Vel_out;
    }*/
    if(Pos_out>=3600)
        Pos_out=3600;
    else if(Pos_out<=-3600)
	Pos_out=-3600;
    if(Pos_out>=0)
    {
      
        Motor_Direction_Minus();
      Pos_out=Pos_out;
            
    } 
    else if(Pos_out<0)
    {
        Motor_Direction_Plus();
         
        Pos_out=-Pos_out;
    }
    /*Current Control*/
}
