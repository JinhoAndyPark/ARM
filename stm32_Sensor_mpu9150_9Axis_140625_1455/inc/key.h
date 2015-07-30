#ifndef __KEY_H
#define __KEY_H

/* Includes ------------------------------------------------------------------*/

#include "stm32f10x.h"
#include "stdio.h"
#include "hw_types.h"

/* Exported types ------------------------------------------------------------*/

/* Exported constants --------------------------------------------------------*/

typedef enum
{
    KEY1 = 0,
    KEY2 = 1,
    KEY3 = 2
} KEY_NUM_E;

#define NUM_OF_KEYS    3

#define GPIO_KEY             GPIOA

#define GPIO_KEY1_PIN        GPIO_Pin_0
#define GPIO_KEY2_PIN        GPIO_Pin_1

#define GPIO_PORTSOURCE_KEY        GPIO_PortSourceGPIOA
#define GPIO_PINSOURCE_KEY1        GPIO_PinSource0
#define GPIO_PINSOURCE_KEY2        GPIO_PinSource1
#define GPIO_EXTI_Line_KEY1        EXTI_Line0
#define GPIO_EXTI_Line_KEY2        EXTI_Line1

/* Exported macro ------------------------------------------------------------*/

/* Exported functions ------------------------------------------------------- */

bool IsKeyClicked(KEY_NUM_E keyNum);

/* External variables --------------------------------------------------------*/

#endif  /* __KEY_H */
