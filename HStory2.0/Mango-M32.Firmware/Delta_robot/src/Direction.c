#include "hw_config.h"

void max485_RX_Mode()
{
  GPIO_ResetBits(GPIOC, GPIO_Pin_6);
}
void max485_TX_Mode()
{
  GPIO_SetBits(GPIOC, GPIO_Pin_6);
}
void Motor_Direction_Plus()
{
   GPIOC -> BRR = GPIO_Pin_4;
   GPIOC -> BSRR = GPIO_Pin_5;
}
void Motor_Direction_Minus()
{
   GPIOC -> BSRR = GPIO_Pin_4;
   GPIOC -> BRR = GPIO_Pin_5;
}
void Motor_Enable()
{
   GPIOA -> BSRR = GPIO_Pin_7;
}
void Motor_Disable()
{
  GPIOA -> BRR = GPIO_Pin_7;
}
