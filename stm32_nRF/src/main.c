/*==============================================================================
 *
 *   Main Function
 *
 *       File Name      : main.c
 *       Version           : 1.0
 *       Date              : 2014.03.06
 *      Modified          : 2014.03.06 By Park, Jin-ho
 *      Author            : Park, Jin-ho  (27th)
 *      MPU_Type          : STM32F103BC(72MHz)
 *      Compiler      : IAR Embedded Workbench For ARM
 *      Copyright(c) ROLAB, Kwangwoon University.
 *       All Rights Reserved.
 *
==============================================================================*/

#include "Hw_config.h"      // 프로그램의 헤더파일 설정
#include "nRF24L01.h"


//------------------------------------------------------------------------------
//                         === Variable Declaration ===
//------------------------------------------------------------------------------
void Init_Main(void);

//------------------------------------------------------------------------------
//                         === Interrupt Service Routine ===
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
//                         === Main Function ===
//------------------------------------------------------------------------------

extern unsigned char buf[32] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
//extern unsigned char bbuf[32]= {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0x1e};
extern unsigned char bbuf[32]= {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
extern unsigned char bbbuf[32]= {2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,0,0x3c};
extern volatile uint16_t ADCConvertedValue[ADCMAXCH] = {0,0,0,0,0,0,0,0};
// Configure ADC input : PB0(ADC8), PB1(ADC9)
// Configure ADC input : PC0(ADC10), PC1(ADC11), PC2(ADC12), PC3(ADC13), PC4(ADC14), PC5(ADC15)

void main(void)
{ 
	U8 temp_ADC = 0;		// ADC value 임시저장
	uint16_t CHK = 0;	
	uint16_t i = 0;
	Init_Main();		// 초기화_MCU
	print_Reg();		// Register Print

//receiver set time in 390us from trans ID to receive ID
//sensor trans time needs 100~150us
   while(1)
   {
   		CHK = 0;
   		for(i=0; i<4; i++)
   		{
			bbuf[i*2] = (U8)(ADCConvertedValue[i]>>8);
			CHK += bbuf[i*2];
			bbuf[i*2 + 1] = (U8)ADCConvertedValue[i];
			CHK += bbuf[i*2 + 1];
   		}
   		bbuf[30] = (U8)(CHK>>8);
   		bbuf[31] = (U8)CHK;



   		
	//	while(USART_GetFlagStatus(USART1,USART_FLAG_TXE)==RESET);
	/*
		printf("ADC8  = %d\n", ADCConvertedValue[0]);
		printf("ADC9  = %d\n", ADCConvertedValue[1]);
		printf("ADC10 = %d\n", ADCConvertedValue[2]);
		printf("ADC11 = %d\n", ADCConvertedValue[3]);
		printf("ADC12 = %d\n", ADCConvertedValue[4]);
		printf("ADC13 = %d\n", ADCConvertedValue[5]);
		printf("ADC14 = %d\n", ADCConvertedValue[6]);
		printf("ADC15 = %d\n", ADCConvertedValue[7]);
	*/
	
	/*
   		temp_ADC = (U8)(ADCConvertedValue[0]>>8);
   		printf("%d\n", temp_ADC);
		
		temp_ADC = (U8)ADCConvertedValue[0];
   		printf("%d\n", temp_ADC);		
   	*/

	//	falling 방식
   	/*
   		while( !(nRF24_ReadReg(nRF24_REG_FIFO_STATUS) & 1))
	   	{
		//	GPIO_SetBits(GPIOC,GPIO_Pin_9);

			nRF24_ReadBuf(nRF24_CMD_R_RX_PAYLOAD,buf,1);	//3	//it takes 15us  , receiver sent 770 ~800 us
		//	GPIO_ResetBits(GPIOC,GPIO_Pin_9);
	      	nRF24_RWReg(nRF24_CMD_WREG |nRF24_REG_STATUS, _BV(RX_DR) | _BV(TX_DS) | _BV(MAX_RT) );
		//	USART_SendData(USART1,buf[0]);
	
		
			if(buf[0] == '1')			// 780us * 8(ID:0~7) = 6240
			{
				GPIO_SetBits(GPIOC,GPIO_Pin_9);
				nRF24_TXMode(bbbbbuf, 32);				// it takes 500us
				GPIO_ResetBits(GPIOC,GPIO_Pin_9);
				nRF24_RXMode();
			}
		}
	*/
   }
      
   
}


//------------------------------------------------------------------------------
//                          === Initialize Function ===
//------------------------------------------------------------------------------
void Init_Main(void)
{
	RCC_Configuration();
//  RCC_GetClocksFreq(&rcc_clocks);
	GPIO_Configuration();
	NVIC_Configuration();
	DMA_Configuration();
	ADC_Configuration();
//  TIM_Configuration();
	EXTI_Configuration();

	nRF24_init();
//	nRF24_ClearIRQFlags();

	USART1_Init(57600);   // in 36mhz error 0% 
}