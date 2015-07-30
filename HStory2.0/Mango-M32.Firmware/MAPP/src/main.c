/*==============================================================================
 *
 *   Main Function
 *
 *    	File Name   	: main.c
 *    	Version        	: 1.0
 *    	Date           	: 2014.03.06
 *		Modified       	: 2014.03.06 By Park, Jin-ho
 *		Author         	: Park, Jin-ho  (27th)
 *		MPU_Type       	: STM32F103RC(72MHz)
 *		Compiler		: IAR Embedded Workbench For ARM
 *		Copyright(c) ROLAB, Kwangwoon University.
 *    	All Rights Reserved.
 *
==============================================================================*/

//------------------------------------------------------------------------------
//	=== Include Headerfile ===
//------------------------------------------------------------------------------
#include "Hw_config.h"		// 프로그램의 헤더파일 설정

//------------------------------------------------------------------------------
//                   		=== Variable Declaration ===
//------------------------------------------------------------------------------
//RCC_ClocksTypeDef  rcc_clocks;
void Init_Main(void);


//------------------------------------------------------------------------------
//                   		=== Interrupt Service Routine ===
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
//                      	=== Main Function ===
//------------------------------------------------------------------------------

void main(void)
{ 
	Init_Main();		// 초기화_MCU
	
	U8 i;

	//Send_Packet();

	//ADC_Reset();
	//Send_Packet(0);
	
	while(1)
	{  
		//Send_Packet_Test(0);
		//Delay(1000);
		
			if(Dis[5]==0 || Dis[5]>6)
			{
				MMode = 1; 
				while(1)
				{if(MMode==0) {break;}}
			}
				
			if(Dis[5]!=0 && Dis[5]<=6)
			{
				if(Dis[0] <= 12)
				{	MMode=4;
					while(1)
					{if(MMode==0) {break;}}
				}
			}
			if(Dis[0]<4 && Dis[1]<6 && Dis[2]<=7 )
			{
				MMode=6;
				while(1)
				{
					if(MMode==0)
					{break;}
				}
			}
		
	}
}
 




//------------------------------------------------------------------------------
//                       	=== Initialize Function ===
//------------------------------------------------------------------------------
void Init_Main(void)
{
    RCC_Configuration();
    //RCC_GetClocksFreq(&rcc_clocks);
	GPIO_Configuration();
	NVIC_Configuration();
	DMA_Configuration();
	ADC_Configuration();
	TIM_Configuration();
	EXTI_Configuration();
    Tim_Encoder_initial();
	
    USART1_Init(57600);	// in 36mhz error 0%
   	USART3_Init(115200);// in 72mhz error 0%
	//USART3_Init(57600);
	//if (SysTick_Config(rcc_clocks.SYSCLK_Frequency / 1000))
    //{ 
        /* Capture error */
    //    while (1);
    //}
}

//------------------------------------------------------------------------------ 
//		=== Function Module ===
//------------------------------------------------------------------------------


void Right_Move(U8 Dir)
{
	if(Dir==Forward)
	{GPIO_ResetBits(GPIOB,GPIO_Pin_12);GPIO_SetBits(GPIOB,GPIO_Pin_13);}	//1// 1_Forward
	else if(Dir==Backward)
	{GPIO_SetBits(GPIOB,GPIO_Pin_12); GPIO_ResetBits(GPIOB,GPIO_Pin_13);}// 1_Backward	
}

void Left_Move(U8 Dir)
{
	if(Dir==Forward)
	{GPIO_ResetBits(GPIOB,GPIO_Pin_14); GPIO_SetBits(GPIOB,GPIO_Pin_15);} //2	//1// 1_Forward
	else if(Dir==Backward)
	{GPIO_SetBits(GPIOB,GPIO_Pin_14);GPIO_ResetBits(GPIOB,GPIO_Pin_15);}// 1_Backward
}
//------------------------------------------------------------------------------

void ADC_Set(void)
{
	ADC_DMACmd(ADC1, ENABLE);ADC_Cmd(ADC1, ENABLE); ADC_ResetCalibration(ADC1);
    while(ADC_GetResetCalibrationStatus(ADC1)); ADC_StartCalibration(ADC1);

	while(ADC_GetCalibrationStatus(ADC1));ADC_SoftwareStartConvCmd(ADC1, ENABLE);
}			
void ADC_Reset(void)
{	U8 i;
	ADC_Cmd(ADC1, DISABLE);
	for(i=0;i<ADCMAXCH;i++)
	ADCConvertedValue[i]=0;
}

void Send_Packet(int8_t rotation)
{	
	U8 i;
	U8 Chsum1=0;
	U8 ddis=0;
	
	Rx_Buffer[0]=0xff;	//start

	for(i=1;i<12;i++)	
	{Rx_Buffer[i]=Dis[i-1];}	//sensor

	if(rotation==0)
	{ddis=5;} //moving dis //10cm
	else if(rotation==90)
	{ddis=0;}
	Rx_Buffer[12]=ddis;	//rotation
	Rx_Buffer[13]=rotation;
	
	for(i=1;i<14;i++)
	{Chsum1+=Rx_Buffer[i];}
	
	for(i=0;i<14;i++)
	{SerialPutChar(Rx_Buffer[i]);}

	SerialPutChar(Chsum1);
	MMode=0;
}
void Send_Packet3(int8_t rotation)
{	
	U8 i;
	U8 Chsum3=0;
	U8 ddis=0;
	
	Rx_Buffer[0]=0xff;	//start
	
	for(i=1;i<12;i++)	
	{Rx_Buffer[i]=Dis[i-1];}	//sensor
	
	if(rotation==0)
	{ddis=5;} //moving dis //10cm
	else if(rotation==90)
	{ddis=0;}

	Rx_Buffer[12]=ddis;	//rotation
	Rx_Buffer[13]=rotation;
	
	for(i=1;i<14;i++)
	{Chsum3+=Rx_Buffer[i];}
	
	for(i=0;i<14;i++)
	{SerialPutChar3(Rx_Buffer[i]);}

	SerialPutChar3(Chsum3);

	MMode=0;
	
}
void Send_Packet_Test(int8_t rotation)
{	
	U8 i;
	U8 Chsum3=0;
	U8 ddis=0;
	U8 Dis1[11]={30,30,30,30,30,30,30,30,30,30,30};
	Rx_Buffer[0]=0xff;	//start
	
	for(i=1;i<12;i++)	
	{Rx_Buffer[i]=Dis1[i-1];}	//sensor

	if(rotation==0)
	{ddis=10;} //moving dis //10cm
	else if(rotation==90)
	{ddis=0;}
	Rx_Buffer[12]=ddis;	//rotation
	Rx_Buffer[13]=rotation;
	
	for(i=1;i<14;i++)
	{Chsum3+=Rx_Buffer[i];}
	
	for(i=0;i<14;i++)
	{SerialPutChar3(Rx_Buffer[i]);}

	SerialPutChar3(Chsum3);

	MMode=0;
}