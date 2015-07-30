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

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

/* includes */

#include "stm32f10x.h"

#include <stdio.h>
#include <stdarg.h>
#include <stdlib.h>
#include <string.h>

#include "debug.h"
#include "led.h"
#include "I2CRoutines.h"
#include "test_sensor9axis.h"

/* global variables */

extern __IO uint16_t BoardDetectValue;

/* defines */

#define GPIO_USB_DISCONNECT        GPIOA
#define GPIO_USB_DISCONNECT_PIN    GPIO_Pin_8

#define GPIO_USART           GPIOA
#define GPIO_I2C1            GPIOB

#define GPIO_USART_1_Rx_Pin    GPIO_Pin_10  /* PA10 */
#define GPIO_USART_1_Tx_Pin    GPIO_Pin_9   /* PA9 */
//#define GPIO_USART_2_Rx_Pin    GPIO_Pin_3   /* PA3 */
//#define GPIO_USART_2_Tx_Pin    GPIO_Pin_2   /* PA2 */

#define GPIO_I2C1_SCL_PIN          GPIO_Pin_6  /* PB6 */
#define GPIO_I2C1_SDA_PIN          GPIO_Pin_7  /* PB7 */

/* functions */

void Set_USBClock(void);
void Enter_LowPowerMode(void);
void Leave_LowPowerMode(void);
void USB_Interrupts_Config(void);
void USB_Cable_Config (FunctionalState NewState);
void USB_Initialize (void);
void RCC_Configuration(void);
void NVIC_Configuration(void);
void GPIO_Configuration(void);

void USART1_Init_forSerial(void);
void USART2_Init_forComm(void);

#if 0
uint8_t USART_GetCharacter(USART_TypeDef *  usart_p);
#else
uint8_t UartSerialGetChar_Wait(void);
#endif

void LED_Test (void);
void KEY_Test (void);
void KEY_Initialize (void);

void Delay(__IO uint32_t nTime);
void TimingDelay_Decrement(void);

void delay_1_second(void);
void delay_100_milli_second(void);

void Seven_Segment_Test(void);
void Seven_Segment_Initilaze(void);

void board_detect_initialzie(void);
void board_detect(void);

#ifdef __cplusplus
}
#endif /* __cplusplus */

#endif  /*__HW_CONFIG_H */

