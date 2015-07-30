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
	
	//U8 i;
	
	while(1)
	{   
          
          GPIO_SetBits(GPIOC, GPIO_Pin_9);
          Delay(1000);
          GPIO_ResetBits(GPIOC, GPIO_Pin_9);
          Delay(1000);
	

		//Usart_Putnum(Encoder_Count1); Usart_Putnum(Encoder_Count2);
		//Delay(1000);
	//--------------------------------------------------------------------------
	//		=== Function Module ===
	//--------------------------------------------------------------------------
		//SetPwmPeriod(4, 1000);
		//SetPwmDuty(1, (U8)(ADCConvertedValue[0] * 100 / 4096));
		//SetPwmDuty(2, (U8)(ADCConvertedValue[1] * 100 / 4096));
		//SetPwmDuty(3, (U8)(ADCConvertedValue[2] * 100 / 4096));
/* 
		Move(Forward);
		Delay(3000);
		Move(Backward);
        printf("%04d %04d %04d\n",ADCConvertedValue[0], ADCConvertedValue[1], ADCConvertedValue[2]);
        printf("%d", TIM4->ARR);
        Delay(3000); 
*/
 //printf("%04d %04d %04d\n",ADCConvertedValue[0], ADCConvertedValue[1], ADCConvertedValue[2]);
       // printf("%d", TIM4->ARR);
       /*
       Usart_Putnum(ADCConvertedValue[0]);
	   Delay(1000); 
       Usart_Putnum((U16)(88.2/(ADCConvertedValue[0]/819+0.1))-15);
	   Delay(1000); 
	   Usart_Putnum((U16)(88.2/(ADCConvertedValue[0]/819+0.1))/2-10);
       Delay(1000); 
	   Usart_Putnum((U16) (( (11.65/(( ADCConvertedValue[0]/819) - 0.147 )) - 0.42 ) * 10)-4);
	   Delay(1000); 
	   */
	  /*
	   for(i=0;i<ADCMAXCH;i++)
	   	{
			Usart_Putnum(ADCConvertedValue[i]);
	   	}
	    Delay(1000);*/
	//Usart_Putnum(102);
	//Delay(1000);
	//--------------------------------------------------------------------------    
/*
	SetPwmDuty(1,750);
	Delay(5000);
	SetPwmDuty(1,500);
	Delay(5000);
	SetPwmDuty(2,250);
	Delay(5000);
	*/
	//Usart_Putnum(Rx_Buffer[data]);
	//Delay(1000);
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
//	NVIC_Configuration();
//	DMA_Configuration();
//	ADC_Configuration();
//	TIM_Configuration();
//	EXTI_Configuration();
 //   Tim_Encoder_initial();
	
 //   USART1_Init(57600);	// in 36mhz error 0%
  //  USART3_Init(115200);// in 72mhz error 0%
    //if (SysTick_Config(rcc_clocks.SYSCLK_Frequency / 1000))
    //{ 
        /* Capture error */
    //    while (1);
    //}
}

