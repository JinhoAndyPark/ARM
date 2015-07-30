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
#include "zigbee_test.h"
#include "usb_lib.h"
#include "usb_pwr.h"
#include "usb_istr.h"
#include "usb_desc.h"

/* defines */

#define RCC_APB2Periph_GPIO_USB_DISCONNECT  RCC_APB2Periph_GPIOA
#define RCC_APB2Periph_GPIO_USART           RCC_APB2Periph_GPIOA
#define RCC_APB2Periph_GPIO_KEY             RCC_APB2Periph_GPIOA
#define RCC_APB2Periph_GPIO_LED             RCC_APB2Periph_GPIOB

#define GPIO_LED             GPIOB
#define GPIO_KEY             GPIOA
#define GPIO_USART           GPIOA

#define GPIO_USB_DISCONNECT        GPIOA

#define GPIO_RF_SPI                GPIOA
#define GPIO_RF_RESET              GPIOC
#define GPIO_RF_VREG_EN            GPIOC
#define GPIO_RF_GPIO0_4            GPIOC
#define GPIO_RF_GPIO5              GPIOD

#define GPIO_LED1_PIN        GPIO_Pin_9 /* RED */
#define GPIO_LED2_PIN        GPIO_Pin_5 /* YELLOW */ 
#define GPIO_LED3_PIN        GPIO_Pin_8 /* BLUE */

#define GPIO_KEY1_PIN        GPIO_Pin_0 /* LEFT_WKUP */
#define GPIO_KEY2_PIN        GPIO_Pin_1 /* RIGHT_USER */

#define GPIO_USART_Rx_Pin    GPIO_Pin_10
#define GPIO_USART_Tx_Pin    GPIO_Pin_9

#define GPIO_USB_DISCONNECT_PIN    GPIO_Pin_8

#define GPIO_RF_SPI_NCS_PIN        GPIO_Pin_4
#define GPIO_RF_SPI_CLK_PIN        GPIO_Pin_5
#define GPIO_RF_SPI_MISO_PIN       GPIO_Pin_6
#define GPIO_RF_SPI_MOSI_PIN       GPIO_Pin_7

#define GPIO_RF_RESET_PIN          GPIO_Pin_6
#define GPIO_RF_VREG_EN_PIN        GPIO_Pin_7

#define GPIO_RF_GPIO0_PIN          GPIO_Pin_8
#define GPIO_RF_GPIO1_PIN          GPIO_Pin_9
#define GPIO_RF_GPIO2_PIN          GPIO_Pin_10
#define GPIO_RF_GPIO3_PIN          GPIO_Pin_11
#define GPIO_RF_GPIO4_PIN          GPIO_Pin_12
#define GPIO_RF_GPIO5_PIN          GPIO_Pin_2

#define GPIO_PORTSOURCE_KEY        GPIO_PortSourceGPIOA
#define GPIO_PINSOURCE_KEY1        GPIO_PinSource0
#define GPIO_PINSOURCE_KEY2        GPIO_PinSource1
#define GPIO_EXTI_Line_KEY1        EXTI_Line0
#define GPIO_EXTI_Line_KEY2        EXTI_Line1

#define GPIO_PORTSOURCE_RF_GPIO0   GPIO_PortSourceGPIOC
#define GPIO_PINSOURCE_RF_GPIO0    GPIO_PinSource8
#define GPIO_EXTI_Line_RF_GPIO0    EXTI_Line8

/* functions */

void LED_On_Red (void);
void LED_Off_Red (void);
void LED_On_Yellow (void);
void LED_Off_Yellow (void);
void LED_On_Blue (void);
void LED_Off_Blue (void);
void LED_On_All (void);
void LED_Off_All (void);

void Set_USBClock(void);
void Enter_LowPowerMode(void);
void Leave_LowPowerMode(void);
void USB_Interrupts_Config(void);
void USB_Cable_Config (FunctionalState NewState);
void RCC_Configuration(void);
void NVIC_Configuration(void);
void GPIO_Configuration(void);
void EXTI_Configuration(void);
void USART1_Init(void);
void Get_SerialNum(void);
void SPIx_Init(void);
uint8_t USART_GetCharacter(USART_TypeDef *  usart_p);

void LED_Test (void);
void KEY_Test (void);

void Delay(__IO uint32_t nTime);
void TimingDelay_Decrement(void);

void delay_1_second(void);
void delay_100_milli_second(void);

#endif  /*__HW_CONFIG_H */

