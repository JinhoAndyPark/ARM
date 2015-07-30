#include "hw_config.h"
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
Con2- 4  - PC6(PC6)        - USART_Dir(0 - RXD 1 - TXD)
*/
RCC_ClocksTypeDef  rcc_clocks;

int main(void)
{
    RCC_Configuration();     
    RCC_GetClocksFreq(&rcc_clocks);
    NVIC_Configuration();
    GPIO_Configuration();
    EXTI_Configuration();
    TIM_Configuration();
    ADC_Initial();
    DMA_Initial();
    USART3_Init();
    Tim_Encoder_initial();
    /* Setup SysTick Timer for 1 msec interrupts  */
    if (SysTick_Config(rcc_clocks.SYSCLK_Frequency / 1000))
           while (1);
    
    Delay(500);
   
    max485_RX_Mode();
    Motor_Enable();
    Motor_Direction_Plus();
    GPIOB -> BSRR = GPIO_Pin_8|GPIO_Pin_9|GPIO_Pin_5;
    USART_ITConfig(USART3,USART_IT_RXNE,ENABLE);
    while(1)
    {
     
  //   Delay(500);
    //  TIM3->CCR1=1000;
     // volt = (float) ADC1ConvertedValue[1] * 3.3 / (float) 4095;
      volume_tmp =(uint16_t)(0.9*volume_old+(1-0.9)*ADC1ConvertedValue[0]);
      volume_old= ADC1ConvertedValue[0];
     // Usart_putnum(Encoder_Count1);
     // Newline();
    }
}
