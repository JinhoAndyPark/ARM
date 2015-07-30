/*
 * (C) COPYRIGHT 2009 CRZ
 *
 * File Name : hw_config.h
 * Author    : POOH
 * Version   : V1.0
 * Date      : 08/12/2009
 */

#ifndef __HW_CONFIG_H
#define __HW_CONFIG_H

/* includes */

#include "stm32f10x.h"
#include "stdio.h"
#include "debug.h"

#include "mydefs.h"
#include "Global_variable.h"

/* defines */

#define ADC1_DR_Address    ((uint32_t)0x4001244C)
#define ADCMAXCH        11

#define GPIO_USART1_Rx_Pin    GPIO_Pin_10
#define GPIO_USART1_Tx_Pin    GPIO_Pin_9

#define GPIO_USART3_Rx_Pin    GPIO_Pin_11
#define GPIO_USART3_Tx_Pin    GPIO_Pin_10
#define Forward 0 
#define Backward 1


/* extern */
//extern RCC_ClocksTypeDef  rcc_clocks;
extern volatile uint16_t ADCConvertedValue[ADCMAXCH]; 
//extern volatile uint16_t Dis = (88.2/(ADCConvertedValue[1]/819+0.1))-15;// need to edit
/* functions */
void Delay(__IO uint32_t nTime);
void TimingDelay_Decrement(void);
void delay_1_second(void);
void delay_100_milli_second(void);

void RCC_Configuration(void);
void DMA_Configuration(void);
void ADC_Configuration(void);
void TIM_Configuration(void);
void NVIC_Configuration(void);
void EXTI_Configuration(void);
void GPIO_Configuration(void);

void USART1_Init(int baurRate);
void USART3_Init(int baurRate);
void Tim_Encoder_initial(void);

#endif  /*__HW_CONFIG_H */

