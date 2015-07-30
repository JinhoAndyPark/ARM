#ifndef __HW_CONFIG_H
#define __HW_CONFIG_H

/* includes */

#include "stm32f10x.h"
#include "stdio.h"
#include "debug.h"

#include "Global_variable.h"
/*
Con1- 4  - PC0(ADC12_IN10) - volume resister
Con1- 3  - PC1(ADC12_IN11) - Current Sensor
Con2- 5  - PA6(TIM3_CH1) - DC Motor_PWM
Con2- 6  - PA7(TIM3_CH2) - Motor_Enable
Con2- 7  - PC4(ADC12_IN14) - Direction A
Con2- 8  - PC5(ADC12_IN14) - Direction B
Con1- 8  - PB6(TIM4_CH1) - Encoder A
Con1- 9  - PB7(TIM4_CH2) - Encoder B
           PB8,9,5       - LED1,2,3
           PA0,1         - SW3,4
Con2- 10 - PB11(USART3_TX) - USART_TX
Con2- 11 - PB12(USART3_RX) - USART_RX
Con2- 4  - PC6(PC6)        - USART_Dir
*/
/* global variables */


/* defines */

#define GPIO_LED             GPIOB
#define GPIO_KEY             GPIOA
#define GPIO_USART           GPIOB

#define GPIO_LED1_PIN        GPIO_Pin_9 /* RED */
#define GPIO_LED2_PIN        GPIO_Pin_5 /* YELLOW */ 
#define GPIO_LED3_PIN        GPIO_Pin_8 /* BLUE */

#define GPIO_KEY1_PIN        GPIO_Pin_0 /* LEFT_WKUP */
#define GPIO_KEY2_PIN        GPIO_Pin_1 /* RIGHT_USER */

#define GPIO_USART_Rx_Pin    GPIO_Pin_11
#define GPIO_USART_Tx_Pin    GPIO_Pin_10

#define GPIO_PORTSOURCE_KEY        GPIO_PortSourceGPIOA
#define GPIO_PINSOURCE_KEY1        GPIO_PinSource0
#define GPIO_PINSOURCE_KEY2        GPIO_PinSource1
#define GPIO_EXTI_Line_KEY1        EXTI_Line0
#define GPIO_EXTI_Line_KEY2        EXTI_Line1

void LED_On_Red (void);
void LED_Off_Red (void);
void LED_Toggle_Red (void);
void LED_On_Yellow (void);
void LED_Off_Yellow (void);
void LED_Toggle_Yellow (void);
void LED_On_Blue (void);
void LED_Off_Blue (void);
void LED_Toggle_Blue (void);
void LED_On_All (void);
void LED_Off_All (void);

void RCC_Configuration(void);
void NVIC_Configuration(void);
void GPIO_Configuration(void);
void TIM_Configuration(void);
void EXTI_Configuration(void);
void USART3_Init(void);
double angle(double angle);
double integer_decimal(double integ, double deci);
void Newline();
void Space();
void Motor_Enable(void);
void Motor_Disable(void);
void Motor_Direction_Plus(void);
void Motor_Direction_Minus(void);
void max485_TX_Mode(void);
void max485_RX_Mode(void);
void LED_Test (void);
void KEY_Test (void);
void ADC_Initial(void);
void DMA_Initial(void);
void Delay(__IO uint32_t nTime);
void TimingDelay_Decrement(void);
void Tim_Encoder_initial(void);
void Usart_putnum(uint16_t NumData);
void delay_1_second(void);
void delay_100_milli_second(void);
void SerialPutChar(uint16_t c);
void PosVel_Con(double Current,uint16_t Encoder_cnt,int16_t Vel_limit);
void Pos_Con(double Current,uint16_t Encoder_cnt,int16_t Vel_limit);
#ifdef BOARD_DEF_MANGO_M32
    void Seven_Segment_Test(void);
#elif  BOARD_DEF_MANGO_Z1
    void SPIx_Init(void);
#endif

#endif  /*__HW_CONFIG_H */

