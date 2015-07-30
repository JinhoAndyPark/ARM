#ifndef __LED_H
#define __LED_H

/* Includes ------------------------------------------------------------------*/

#include "stm32f10x.h"
#include "stdio.h"

/* Exported types ------------------------------------------------------------*/

/* Exported constants --------------------------------------------------------*/

typedef enum
{
    LED1 = 0,
    LED2 = 1,
    LED3 = 2
} LED_NUM_E;

#define NUM_OF_LEDS    3

#define GPIO_LED             GPIOB

#define GPIO_LED1_PIN        GPIO_Pin_9 /* RED */
#define GPIO_LED2_PIN        GPIO_Pin_5 /* YELLOW */ 
#define GPIO_LED3_PIN        GPIO_Pin_8 /* BLUE */

/* Exported macro ------------------------------------------------------------*/

/* Exported functions ------------------------------------------------------- */

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
void LED_Initialize(void);
void LED_Test(void);

/* External variables --------------------------------------------------------*/

#endif  /* __LED_H */
