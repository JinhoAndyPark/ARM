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
/*
#define volume_Pos_Kp    11.0
#define volume_Pos_Ki    0.0
#define volume_Pos_Kd    0.5
#define Pos_Kp    25.0
#define Pos_Ki    0.0
#define Pos_Kd    0.5
#define Vel_Kp    25.1
#define Vel_Ki    5.0
#define Vel_Kd    0.0
*/
#define Pos_P   2.1
#define Pos_D   0

/*----------------Front Right cw------------------------*/
void Pos_Front_R(U16 Target_Pos,uint16_t Encoder_Sum1)
{	
	
	if((Encoder_Sum1 & 0xf000) == 0xf000)	//65535 to 61440
	Encoder_Sum1 = (-1)*(0xffff-Encoder_Sum1);	//about minus(-1)*(65535-Encoder_Sum1);

	
	Pos_Err = Target_Pos - Encoder_Sum1 ;	//target = 9828	//should be minus for stopping

	Pos_Out = Pos_P*Pos_Err;// + Pos_Kd*(Pos_Err-B_Err); //Pos_I*Sum_Err + Pos_D*(Pos_Err-B_Err);
	B_Err = Pos_Err;
	
	Cnt = Pos_Out;
	if(Pos_Out>=0)
	{
		Right_Move(Forward);
		if(Pos_Out>=272) //2//200
		{	
			Cnt = 272;
		}
	}
	if(Pos_Out<0)
	{	
		Right_Move(Backward);
		if(Pos_Out<=-272)
		{	
			Cnt = -272;
		}
		Cnt = Cnt*(-1);
		
	}
	SetPwmDuty(1,(U32)Cnt);
}
/*----------------Front Left ccw------------------------*/
void Pos_Front_L(U16 Target_Pos,uint16_t Encoder_Sum2)
{	
	
	if((Encoder_Sum2 & 0xf000) == 0xf000)	//65535 to 61440
	Encoder_Sum2 = (-1)*(0xffff-Encoder_Sum2);	//about minus(-1)*(65535-Encoder_Sum1);

	
	Pos_Err = Target_Pos - Encoder_Sum2 ;	//target = 1404	//should be minus for stopping

	Pos_Out = Pos_P*Pos_Err;//+ Pos_Kd*(Pos_Err-B_Err);// Pos_D*(Pos_Err-B_Err); 
	B_Err = Pos_Err;
	
	Cnt = Pos_Out;
	
	if(Pos_Out>=0)
	{
		Left_Move(Backward);
		if(Pos_Out>=272) //205
		{	
			Cnt = 272;
		}
	}
	if(Pos_Out<0)
	{	
		Left_Move(Forward);
		if(Pos_Out<=-272)
		{	
			Cnt = -272;
		}
		Cnt = Cnt*(-1);
		
	}
	SetPwmDuty(2,(U32)Cnt);
}
/*----------------Right cw------------------------*/
void Pos_Left90_R(U16 Target_Pos,uint16_t Encoder_Sum1)
{	
	
	if((Encoder_Sum1 & 0xf000) == 0xf000)	//65535 to 61440
	Encoder_Sum1 = (-1)*(0xffff-Encoder_Sum1);	//about minus(-1)*(65535-Encoder_Sum1);

	
	Pos_Err = Target_Pos - Encoder_Sum1 ;	//target = 1404	//should be minus for stopping

	Pos_Out = Pos_P*Pos_Err + Pos_D*(Pos_Err-B_Err); //Pos_I*Sum_Err + Pos_D*(Pos_Err-B_Err);
	B_Err = Pos_Err;
	
	Cnt = Pos_Out;
	if(Pos_Out>=0)
	{
		Right_Move(Forward);
		if(Pos_Out>=270) 
		{	
			Cnt = 270;
		}
	}
	if(Pos_Out<0)
	{	
		Right_Move(Backward);
		if(Pos_Out<=-270)
		{	
			Cnt = -270;
		}
		Cnt = Cnt*(-1);
		
	}
	SetPwmDuty(1,(U32)Cnt);
}
/*----------------Left cw------------------------*/
void Pos_Left90_L(U16 Target_Pos,uint16_t Encoder_Sum2)
{	

	if((Encoder_Sum2 & 0xf000) == 0xf000)	//65535 to 61440
	Encoder_Sum2 = (-1)*(0xffff-Encoder_Sum2);	//about minus(-1)*(65535-Encoder_Sum1);

	Pos_Err = Target_Pos - Encoder_Sum2 ;	//target = 1404	//should be minus for stopping

	Pos_Out = Pos_P*Pos_Err + Pos_D*(Pos_Err-B_Err);
	B_Err = Pos_Err;
	
	Cnt = Pos_Out;
	if(Pos_Out>=0)
	{
		Left_Move(Forward);
		if(Pos_Out>=190) 
		{	
			Cnt = 190;
		}
	}
	if(Pos_Out<0)
	{	
		Left_Move(Backward);
		if(Pos_Out<=-190)
		{	
			Cnt = -190;
		}
		Cnt = Cnt*(-1);
		
	}
	SetPwmDuty(2,(U32)Cnt);
}
/*----------------Right ccw------------------------*/ 
void Pos_Right90_R(U16 Target_Pos,uint16_t Encoder_Sum1)
{	
	
	if((Encoder_Sum1 & 0xf000) == 0xf000)	//65535 to 61440
	Encoder_Sum1 = (-1)*(0xffff-Encoder_Sum1);	//about minus(-1)*(65535-Encoder_Sum1);

	Pos_Err = Target_Pos - Encoder_Sum1 ;	//target = 1404	//should be minus for stopping

	Pos_Out = Pos_P*Pos_Err + Pos_D*(Pos_Err-B_Err);
	B_Err = Pos_Err;
	
	Cnt = Pos_Out;
	if(Pos_Out>=0)
	{
		Right_Move(Backward);
		if(Pos_Out>=270) 
		{	
			Cnt = 270;
		}
	}
	if(Pos_Out<0)
	{	
		Right_Move(Forward);
		if(Pos_Out<=-270)
		{	
			Cnt = -270;
		}
		Cnt = Cnt*(-1);
		
	}
	SetPwmDuty(1,(U32)Cnt);
}
/*----------------Left ccw------------------------*/
void Pos_Right90_L(U16 Target_Pos,uint16_t Encoder_Sum2)
{	
	
	if((Encoder_Sum2 & 0xf000) == 0xf000)	//65535 to 61440
	Encoder_Sum2 = (-1)*(0xffff-Encoder_Sum2);	//about minus(-1)*(65535-Encoder_Sum1);

	
	Pos_Err = Target_Pos - Encoder_Sum2 ;	//target = 1404	//should be minus for stopping

	Pos_Out = Pos_P*Pos_Err + Pos_D*(Pos_Err-B_Err); 
	B_Err = Pos_Err;
	
	Cnt = Pos_Out;
	
	if(Pos_Out>=0)
	{
		Left_Move(Backward);
		if(Pos_Out>=270) 
		{	
			Cnt = 270;
		}
	}
	if(Pos_Out<0)
	{	
		Left_Move(Forward);
		if(Pos_Out<=-270)
		{	
			Cnt = -270;
		}
		Cnt = Cnt*(-1);
		
	}
	SetPwmDuty(2,(U32)Cnt);
}
/*----------------Right cw------------------------*/
void Pos_Con1_R(U16 Target_Pos,uint16_t Encoder_Sum1)
{	
	
	if((Encoder_Sum1 & 0xf000) == 0xf000)	//65535 to 61440
	Encoder_Sum1 = (-1)*(0xffff-Encoder_Sum1);	//about minus(-1)*(65535-Encoder_Sum1);

	
	Pos_Err = Target_Pos - Encoder_Sum1 ;	//target = 1404	//should be minus for stopping

	Pos_Out = Pos_P*Pos_Err + Pos_D*(Pos_Err-B_Err); //Pos_I*Sum_Err + Pos_D*(Pos_Err-B_Err);
	B_Err = Pos_Err;
	
	Cnt = Pos_Out;
	if(Pos_Out>=0)
	{
		Right_Move(Forward);
		if(Pos_Out>=213) 
		{	
			Cnt = 213;
		}
	}
	if(Pos_Out<0)
	{	
		Right_Move(Backward);
		if(Pos_Out<=-213)
		{	
			Cnt = -213;
		}
		Cnt = Cnt*(-1);
		
	}
	SetPwmDuty(1,(U32)Cnt);
}

/*----------------Left cw------------------------*/
void Pos_Con1_L(U16 Target_Pos,uint16_t Encoder_Sum2)
{	

	if((Encoder_Sum2 & 0xf000) == 0xf000)	//65535 to 61440
	Encoder_Sum2 = (-1)*(0xffff-Encoder_Sum2);	//about minus(-1)*(65535-Encoder_Sum1);

	Pos_Err = Target_Pos - Encoder_Sum2 ;	//target = 1404	//should be minus for stopping

	Pos_Out = Pos_P*Pos_Err + Pos_D*(Pos_Err-B_Err);
	B_Err = Pos_Err;
	
	Cnt = Pos_Out;
	if(Pos_Out>=0)
	{
		Left_Move(Forward);
		if(Pos_Out>=200) 
		{	
			Cnt = 200;
		}
	}
	if(Pos_Out<0)
	{	
		Left_Move(Backward);
		if(Pos_Out<=-200)
		{	
			Cnt = -200;
		}
		Cnt = Cnt*(-1);
		
	}
	SetPwmDuty(2,(U32)Cnt);
}



/*----------------Right ccw------------------------*/ 
void Pos_Con2_R(U16 Target_Pos,uint16_t Encoder_Sum1)
{	
	
	if((Encoder_Sum1 & 0xf000) == 0xf000)	//65535 to 61440
	Encoder_Sum1 = (-1)*(0xffff-Encoder_Sum1);	//about minus(-1)*(65535-Encoder_Sum1);

	Pos_Err = Target_Pos - Encoder_Sum1 ;	//target = 1404	//should be minus for stopping

	Pos_Out = Pos_P*Pos_Err + Pos_D*(Pos_Err-B_Err);
	B_Err = Pos_Err;
	
	Cnt = Pos_Out;
	if(Pos_Out>=0)
	{
		Right_Move(Backward);
		if(Pos_Out>=200) 
		{	
			Cnt = 200;
		}
	}
	if(Pos_Out<0)
	{	
		Right_Move(Forward);
		if(Pos_Out<=-200)
		{	
			Cnt = -200;
		}
		Cnt = Cnt*(-1);
		
	}
	SetPwmDuty(1,(U32)Cnt);
}
/*----------------Left ccw------------------------*/
void Pos_Con2_L(U16 Target_Pos,uint16_t Encoder_Sum2)
{	
	
	if((Encoder_Sum2 & 0xf000) == 0xf000)	//65535 to 61440
	Encoder_Sum2 = (-1)*(0xffff-Encoder_Sum2);	//about minus(-1)*(65535-Encoder_Sum1);

	
	Pos_Err = Target_Pos - Encoder_Sum2 ;	//target = 1404	//should be minus for stopping

	Pos_Out = Pos_P*Pos_Err + Pos_D*(Pos_Err-B_Err); 
	B_Err = Pos_Err;
	
	Cnt = Pos_Out;
	
	if(Pos_Out>=0)
	{
		Left_Move(Backward);
		if(Pos_Out>=200) 
		{	
			Cnt = 200;
		}
	}
	if(Pos_Out<0)
	{	
		Left_Move(Forward);
		if(Pos_Out<=-200)
		{	
			Cnt = -200;
		}
		Cnt = Cnt*(-1);
		
	}
	SetPwmDuty(2,(U32)Cnt);
}
/* Position Control*/	
/*
void Pos_Con(U16 Target,uint16_t Encoder_cnt)
{
  
  	
    volume_Pos_err_old = volume_Pos_err;
  
    Pos_Err = Pos_Target - Encoder_Count1;
	Pos_Err_Sum += Pos_Err;

	if(Pos_Err_Sum

	if(Pos_Err_Sum >= 1404) 		Pos_Err_Sum = 1404;
	else if(Pos_Err_Sum				



	
    {
       Right_Move(Backward) Left_Move(Forward);    //4th MCU
    
      volume_Pos_out=volume_Pos_out;
    } 
    else if(volume_Pos_out<0)
    {
        Right_Move(Forward) Left_Move(Backward);       //4th MCU
     
        volume_Pos_out=-volume_Pos_out;
    }
  
}
void PosVel_Con(double Current,uint16_t Encoder_cnt)*/
//{
  /* Position Control*/
   /* Pos_err_old = Pos_err;	
    
    Pos_err=Current-((int16_t)Encoder_cnt);
    Pos_err_sum += Pos_err;
    Pos_err_diff=(Pos_err-Pos_err_old);
    
    if(Pos_err_sum >= 2000)	Pos_err_sum = 2000;
    else if(Pos_err_sum <= -2000) Pos_err_sum = -2000;
    
    Pos_out = Pos_Kp*Pos_err + Pos_Ki*(Pos_err_sum) + Pos_Kd*Pos_err_diff;
    
   */

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
   /* if(Pos_out>=3600)
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
  */ // }
    /*Current Control*/
//}
U16 Cbs(U16 num)
{
	return num > 0 ? num : -num;
}
