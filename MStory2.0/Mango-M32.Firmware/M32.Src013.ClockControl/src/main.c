/*
 * (C) COPYRIGHT 2009 CRZ
 *
 * File Name : main.c
 * Author    : POOH
 * Version   : V1.0
 * Date      : 08/12/2009
 */

/* includes */

#include "hw_config.h"

/* functions */

extern __IO uint32_t StartUpCounter;

void System_Information()
{
    printf("USART1->BRR : 0x%08X\n", USART1->BRR);
    printf("StartUpCounter : %d\n", StartUpCounter);
}

/*
 * Name   : main
 * Input  : None
 * Output : None
 * Return : None
 */
int main(void)
{
    uint8_t ch;

    RCC_Configuration();

    RCC->APB2ENR |= RCC_APB2Periph_GPIOA;
    RCC->APB2ENR |= RCC_APB2Periph_GPIOB;
    RCC->APB2ENR |= RCC_APB2Periph_USART1;

    GPIO_Configuration();

    USART1_Init();

    while(1)
    {
        printf("\n---------------------\n");
        printf("Press menu key\n");
        printf("---------------------\n");
        printf("0> System Information\n");
        printf("---------------------\n");
        printf("1> LED Test\n");
        printf("2> KEY Test\n");
        printf("3> 7-Segment Test\n");
        printf("---------------------\n");
        printf("x> quit\n\n");

        ch = USART_GetCharacter(USART1);
        printf(" is selected\n\n");

        switch((char)ch)
        {
        case '0':
            System_Information();
            break;

        case '1':
            LED_Test();
            break;

        case '2':
            KEY_Test();
            break;

        case '3':
            Seven_Segment_Test();
            break;
        }

        if('x' == (char)ch)
        {
            break;
        }
    }
}
