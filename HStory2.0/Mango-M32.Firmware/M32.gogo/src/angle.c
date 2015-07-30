#include"hw_config.h"

#define Ref_angle 175.5   //4th MCU
//#define Ref_angle 228.0     //other MCU
double integer_decimal(double integ, double deci)
{
  static double tmp=0.0;
  tmp = (double)(integ + (deci*0.01));
  return tmp;
}
/*
double angle(double angle)
{
  double tmp=0.0;
  
  if(angle>=0.0&&angle<15.0)
  {
    tmp=angle*5.0;
    tmp=tmp-Ref_angle;
  }
  else if(angle>=15.0&&angle<30.0)
  {
    tmp=angle*5.0;
    tmp=tmp+1.0-Ref_angle;
  }
  else if(angle>=30.0&&angle<45.0)
  {
    tmp=angle*5.0;
    tmp=tmp+2.0-Ref_angle;
  }
  
  else if(angle>=45.0&&angle<60.0)
  {
    tmp=angle*5.0;
    tmp=tmp+3.0-Ref_angle;
  }
  
  else if(angle>=60.0&&angle<75.0)
  {
    tmp=angle*5.0;
    tmp=tmp+4.0-Ref_angle;
  }
  else if(angle>=75.0&&angle<90.0)
  {
    tmp=angle*5.0;
    tmp=tmp+5.0-Ref_angle;
  }
   
 
  else if(angle>=90.0)
  {
    tmp=angle*5.0;
    tmp=tmp+6.0-Ref_angle;
  }

  return tmp;
 
}
*/
/*fourth MCU*/




double angle(double angle)
{
  double tmp=0.0;
  
  if(angle>=0.0&&angle<10.0)
  {
    tmp=angle*4.0;
    tmp=tmp-Ref_angle;
  }
  else if(angle>=10.0&&angle<20.0)
  {
    tmp=angle*4.0;
    tmp=tmp-1.0-Ref_angle;
  }
  else if(angle>=20.0&&angle<30.0)
  {
    tmp=angle*4.0;
    tmp=tmp-2.0-Ref_angle;
  }
  
  else if(angle>=30.0&&angle<40.0)
  {
    tmp=angle*4.0;
    tmp=tmp-3.0-Ref_angle;
  }
  
  else if(angle>=40.0&&angle<50.0)
  {
    tmp=angle*4.0;
    tmp=tmp-4.0-Ref_angle;
  }
  else if(angle>=50.0&&angle<60.0)
  {
    tmp=angle*4.0;
    tmp=tmp-5.0-Ref_angle;
  }
   
  else if(angle>=60.0&&angle<70.0)
  {
    tmp=angle*4.0;
    tmp=tmp-6.0-Ref_angle;
  }
  else if(angle>=70.0&&angle<80.0)
  {
    tmp=angle*4.0;
    tmp=tmp-7.0-Ref_angle;
  }
  else if(angle>=80.0&&angle<90.0)
  {
    tmp=angle*4.0;
    tmp=tmp-8.0-Ref_angle;
  }
  else if(angle>=90.0)
  {
    tmp=angle*4.0;
    tmp=tmp-9.0-Ref_angle;
  }
  return tmp;
 
}































