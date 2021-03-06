/*
 * (C) COPYRIGHT 2009 CRZ
 *
 * File Name : led.c
 * Author    : POOH
 * Version   : V1.0
 * Date      : 08/13/2009
 */

/* Includes */

#include "platform_config.h"

/* functions */

/*
 * GPIO_LED1_PIN  // RED
 * GPIO_LED2_PIN  // YELLOW
 * GPIO_LED3_PIN  // BLUE
 */

void LED_On_Red (void)
{
    GPIOB_BRR |= GPIO_LED1_PIN;
}

void LED_Off_Red (void)
{
    GPIOB_BSRR |= GPIO_LED1_PIN;
}

void LED_On_Yellow (void)
{
    GPIOB_BRR |= GPIO_LED2_PIN;
}

void LED_Off_Yellow (void)
{
    GPIOB_BSRR |= GPIO_LED2_PIN;
}

void LED_On_Blue (void)
{
    GPIOB_BRR |= GPIO_LED3_PIN;
}

void LED_Off_Blue (void)
{
    GPIOB_BSRR |= GPIO_LED3_PIN;
}

void LED_On_All (void)
{
    LED_On_Red();
    LED_On_Yellow();
    LED_On_Blue();
}

void LED_Off_All (void)
{
    LED_Off_Red();
    LED_Off_Yellow();
    LED_Off_Blue();
}

void LED_OnOffAll_Mult(uint32_t count)
{
    for(; count > 0; count --)
    {
        LED_Off_Red();
        LED_On_Yellow();
        LED_On_Blue();
        delay_1_second();

        LED_On_Red();
        LED_Off_Yellow();
        LED_On_Blue();
        delay_1_second();

        LED_On_Red();
        LED_On_Yellow();
        LED_Off_Blue();
        delay_1_second();
    }
}

void LED_Test (void)
{
#if 0           //#if 0 다음 #endif 까지 걍 주석처리하겠다 라는 의미임 #else는 그와중에 주석처리 안하겟다는것 
    LED_On_All();
    delay_1_second();
    LED_Off_All();
    delay_1_second();
    LED_On_All();
 
#else
    LED_OnOffAll_Mult(30);
#endif
}
