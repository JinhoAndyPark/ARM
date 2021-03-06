/*==============================================================================
 *
 *   Main Function
 *
 *    	File Name   	: PWM_Interface.c
 *    	Version        	: 1.0
 *    	Date           	: 2014.02.16
 *		Modified       	: 2014.02.16 By Park, Jin-ho
 *		Author         	: Park, Jin-ho  (23rd)
 *		MPU_Type       	: STM32F103BC(72MHz)
 *		Compiler		: IAR Embedded Workbench For ARM
 *		Copyright(c) ROLAB, Kwangwoon University.
 *    	All Rights Reserved.
 *
==============================================================================*/

#include "PWM_Interface.h"

void SetPwmPeriod(U16 us)
{
	TIM_TimeBaseInitTypeDef  TIM_TimeBaseStructure;

	TIM_TimeBaseStructure.TIM_Period = us;        
    TIM_TimeBaseStructure.TIM_Prescaler = 35;	/* 36MHz / ( 35+1 ) = 1MHz = 1us */
    TIM_TimeBaseStructure.TIM_ClockDivision = 0;    
    TIM_TimeBaseStructure.TIM_CounterMode = TIM_CounterMode_Up;  
    TIM_TimeBaseStructure.TIM_RepetitionCounter = 0x0000;
	
    TIM_TimeBaseInit(TIM4, &TIM_TimeBaseStructure);

	TIM_ARRPreloadConfig(TIM4, ENABLE);
    TIM_Cmd(TIM4, ENABLE);
}

void SetPwmDuty(U8 ch, 	U16 percent)
{
	TIM_OCInitTypeDef TIM_OCInitStructure;
	
	TIM_OCInitStructure.TIM_OCMode = TIM_OCMode_PWM1;
   	 TIM_OCInitStructure.TIM_OutputState = TIM_OutputState_Enable;
  	  TIM_OCInitStructure.TIM_Pulse = percent;
   	 TIM_OCInitStructure.TIM_OCPolarity = TIM_OCPolarity_High;

	if(ch == 1)
	{
	    	TIM_OC1Init(TIM4, &TIM_OCInitStructure);
	    	TIM_OC1PreloadConfig(TIM4, TIM_OCPreload_Disable);
	}
	else if(ch == 2)
	{
		TIM_OC2Init(TIM4, &TIM_OCInitStructure);
	    	TIM_OC2PreloadConfig(TIM4, TIM_OCPreload_Disable);
	}
	
}
