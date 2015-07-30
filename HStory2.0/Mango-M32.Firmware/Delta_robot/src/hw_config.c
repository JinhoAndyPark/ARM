#include "hw_config.h"

/* defines */
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
#ifdef __GNUC__
  #define PUTCHAR_PROTOTYPE int __io_putchar(int ch)
#else
  #define PUTCHAR_PROTOTYPE int fputc(int ch, FILE *f)
#endif /* __GNUC__ */

/* global variables */

uint32_t ADC_ConvertedValueX = 0;
uint32_t ADC_ConvertedValueX_1 = 0;
static volatile uint32_t TimingDelay;

/* functions */

void delay_1_second(void)
{
    Delay(1000);
}

void delay_100_milli_second(void)
{
    Delay(100);
}

void TIM_Configuration(void)
{ 
    TIM_TimeBaseInitTypeDef  TIM_TimeBaseStruct;
    TIM_OCInitTypeDef  TIM_OCInitStruct;
  
    /* Time2 base configuration */
    TIM_TimeBaseStruct.TIM_Period = 29;
    TIM_TimeBaseStruct.TIM_Prescaler = 7199;
    TIM_TimeBaseStruct.TIM_ClockDivision = TIM_CKD_DIV1;
    TIM_TimeBaseStruct.TIM_CounterMode = TIM_CounterMode_Up;
  
    TIM_TimeBaseInit(TIM2, &TIM_TimeBaseStruct);
  
    TIM_Cmd(TIM2, ENABLE);
    TIM_ITConfig(TIM2,TIM_IT_Update,ENABLE);
    
    /* Time3 base configuration */
    TIM_TimeBaseStruct.TIM_Period = 5999;
    TIM_TimeBaseStruct.TIM_Prescaler = 0;
    TIM_TimeBaseStruct.TIM_ClockDivision = 0;
    TIM_TimeBaseStruct.TIM_CounterMode = TIM_CounterMode_Up;
  
    TIM_TimeBaseInit(TIM3,&TIM_TimeBaseStruct);
     /* Time3 PWM1 Mode configuration: Channel1 */
    TIM_OCInitStruct.TIM_OCMode = TIM_OCMode_PWM1;
    TIM_OCInitStruct.TIM_OutputState = TIM_OutputState_Enable;
    TIM_OCInitStruct.TIM_Pulse = 0;
    TIM_OCInitStruct.TIM_OCPolarity = TIM_OCPolarity_High;
  
    TIM_OC1Init(TIM3, &TIM_OCInitStruct);
  
    TIM_OC1PreloadConfig(TIM3, TIM_OCPreload_Enable);
    
    TIM_Cmd(TIM3, ENABLE);
}
void ADC_Initial(void)
{
  ADC_InitTypeDef ADC_InitStruct;
  
  ADC_InitStruct.ADC_Mode=ADC_Mode_Independent;
  ADC_InitStruct.ADC_ScanConvMode=DISABLE;;
  ADC_InitStruct.ADC_ContinuousConvMode = ENABLE;
  ADC_InitStruct.ADC_ExternalTrigConv = ADC_ExternalTrigConv_None;
  ADC_InitStruct.ADC_DataAlign=ADC_DataAlign_Right;
  ADC_InitStruct.ADC_NbrOfChannel=1;
  ADC_Init(ADC1,&ADC_InitStruct);
  
  ADC_RegularChannelConfig(ADC1,ADC_Channel_10,1,ADC_SampleTime_55Cycles5);
 
  ADC_DMACmd(ADC1,ENABLE);
  
  ADC_Cmd(ADC1,ENABLE);
  
  ADC_ResetCalibration(ADC1);
  
  while(ADC_GetResetCalibrationStatus(ADC1));
  
  ADC_StartCalibration(ADC1);
  
  while(ADC_GetCalibrationStatus(ADC1));
  
  ADC_SoftwareStartConvCmd(ADC1,ENABLE);
  HSE_VALUE
}
void USART3_Init(void)
{
    USART_InitTypeDef USART_InitStruct;
    
    USART_InitStruct.USART_BaudRate = 230400;
    USART_InitStruct.USART_WordLength = USART_WordLength_8b;
    USART_InitStruct.USART_StopBits = USART_StopBits_1;
    USART_InitStruct.USART_Parity = USART_Parity_No;
    USART_InitStruct.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
    USART_InitStruct.USART_Mode = USART_Mode_Rx|USART_Mode_Tx;
    
    USART_Init(USART3,&USART_InitStruct);   4
    USART_Cmd(USART3, ENABLE);
}
void DMA_Initial(void)
{
  DMA_InitTypeDef DMA_InitStruct;
  
  DMA_DeInit(DMA1_Channel1);
  DMA_InitStruct.DMA_PeripheralBaseAddr=(u32)0x4001244C;
  DMA_InitStruct.DMA_MemoryBaseAddr=(uint32_t)&ADC1ConvertedValue;
  DMA_InitStruct.DMA_DIR=DMA_DIR_PeripheralSRC;
  DMA_InitStruct.DMA_BufferSize=1;
  DMA_InitStruct.DMA_PeripheralInc=DMA_PeripheralInc_Disable;
  DMA_InitStruct.DMA_MemoryInc=DMA_MemoryInc_Enable;
  DMA_InitStruct.DMA_PeripheralDataSize=DMA_PeripheralDataSize_HalfWord;
  DMA_InitStruct.DMA_MemoryDataSize=DMA_MemoryDataSize_HalfWord;
  DMA_InitStruct.DMA_Mode=DMA_Mode_Circular;
  DMA_InitStruct.DMA_Priority=DMA_Priority_High;
  DMA_InitStruct.DMA_M2M=DMA_M2M_Disable;
  DMA_Init(DMA1_Channel1,&DMA_InitStruct);
  
  DMA_Cmd(DMA1_Channel1,ENABLE);
  
}
void RCC_Configuration(void)
{
    SystemInit();
    RCC_ADCCLKConfig(RCC_PCLK2_Div6);
    RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA, ENABLE);
    RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOB, ENABLE);
    RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOC, ENABLE);
    RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOD, ENABLE);
    RCC_APB1PeriphClockCmd(RCC_APB1Periph_USART3, ENABLE);
    RCC_APB2PeriphClockCmd(RCC_APB2Periph_AFIO, ENABLE);
    RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM2,ENABLE);
    RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM3,ENABLE);
    RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM4,ENABLE);
    RCC_AHBPeriphClockCmd(RCC_AHBPeriph_DMA1, ENABLE);
    RCC_APB2PeriphClockCmd(RCC_APB2Periph_ADC1,ENABLE);
}

/*******************************************************************************
* Function Name  : NVIC_Configuration
* Description    : Configures Vector Table base location.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void NVIC_Configuration(void)
{ 
    NVIC_InitTypeDef NVIC_InitStructure;

#ifdef  VECT_TAB_RAM
    /* Set the Vector Table base location at 0x20000000 */ 
    NVIC_SetVectorTable(NVIC_VectTab_RAM, 0x0); 
#else  /* VECT_TAB_FLASH  */
    /* Set the Vector Table base location at 0x08000000 */ 
    NVIC_SetVectorTable(NVIC_VectTab_FLASH, 0x0);   
#endif

    /* Configure one bit for preemption priority */
    NVIC_PriorityGroupConfig(NVIC_PriorityGroup_0);

    /* Enable the EXTI0 Interrupt */
    NVIC_InitStructure.NVIC_IRQChannel = EXTI0_IRQn;
    NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0;
    NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
    NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
    NVIC_Init(&NVIC_InitStructure);

    /* Enable the EXTI1 Interrupt */
    NVIC_InitStructure.NVIC_IRQChannel = EXTI1_IRQn;
    NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0;
    NVIC_InitStructure.NVIC_IRQChannelSubPriority = 1;
    NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
    NVIC_Init(&NVIC_InitStructure);
    /* Enable the TIM2 Interrupt */
    NVIC_InitStructure.NVIC_IRQChannel = TIM2_IRQn;
    NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0;
    NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
    NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
    NVIC_Init(&NVIC_InitStructure);
    /* Enable the USART3 Interrupt */
    NVIC_InitStructure.NVIC_IRQChannel = USART3_IRQn;
    NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0;
    NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
    NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
    NVIC_Init(&NVIC_InitStructure);  
}
void Tim_Encoder_initial(void)
{
   TIM_TimeBaseInitTypeDef TIM_TimeBaseStructure;

     /*----------------Encoder 1--------------------*/
    TIM_TimeBaseStructure.TIM_Prescaler = 0;    // prescaler 사용 안함,  encoder 신호를 그대로 사용
    TIM_TimeBaseStructure.TIM_Period = 65535;      // max, 카운트 최대값을 바꾸고 싶다면 이걸 바꾸면 된다
    TIM_TimeBaseStructure.TIM_ClockDivision = TIM_CKD_DIV1;
    TIM_TimeBaseStructure.TIM_CounterMode = TIM_CounterMode_Up;
    TIM_TimeBaseStructure.TIM_RepetitionCounter = 0;
    TIM_TimeBaseInit(TIM4, &TIM_TimeBaseStructure);
    TIM_EncoderInterfaceConfig(TIM4, TIM_EncoderMode_TI12, TIM_ICPolarity_Rising, TIM_ICPolarity_Rising);
   
    TIM_ARRPreloadConfig(TIM4, ENABLE); 
    TIM_Cmd(TIM4, ENABLE); // TIM5 enable counter   
}

void GPIO_Configuration(void)
{
    GPIO_InitTypeDef GPIO_InitStructure;
 
    /* Configure USARTx_Tx as alternate function push-pull */
    GPIO_InitStructure.GPIO_Pin   = GPIO_USART_Tx_Pin;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_InitStructure.GPIO_Mode  = GPIO_Mode_AF_PP;
    GPIO_Init(GPIO_USART, &GPIO_InitStructure);
    /* Configure USARTx_Rx as input floating */
    GPIO_InitStructure.GPIO_Pin  = GPIO_USART_Rx_Pin;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;
    GPIO_Init(GPIO_USART, &GPIO_InitStructure);
    /* Configure gpio as input : Button WKUP & USER */
    GPIO_InitStructure.GPIO_Pin  = GPIO_KEY1_PIN | GPIO_KEY2_PIN;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;
    GPIO_Init(GPIO_KEY, &GPIO_InitStructure);
    /* Configure gpio as output : LED1, LED2, LED3 */
    GPIO_InitStructure.GPIO_Pin   = GPIO_LED1_PIN | GPIO_LED2_PIN | GPIO_LED3_PIN ;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_InitStructure.GPIO_Mode  = GPIO_Mode_Out_PP;
    GPIO_Init(GPIO_LED, &GPIO_InitStructure);
    /* Configure gpio as output : USART 485 Direction */
    GPIO_InitStructure.GPIO_Pin   = GPIO_Pin_6 ;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_InitStructure.GPIO_Mode  = GPIO_Mode_Out_PP;
    GPIO_Init(GPIOC, &GPIO_InitStructure);
     /***************Motor PWM*******************/
    GPIO_InitStructure.GPIO_Pin =  GPIO_Pin_6;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_Init(GPIOA, &GPIO_InitStructure);
    /***************Motor DIR*******************/
    GPIO_InitStructure.GPIO_Pin =  GPIO_Pin_4|GPIO_Pin_5;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_Init(GPIOC, &GPIO_InitStructure);
    /***************Motor ENABLE*******************/
    GPIO_InitStructure.GPIO_Pin =  GPIO_Pin_7;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_Init(GPIOA, &GPIO_InitStructure);
    /*******************Encoder***************/
    GPIO_InitStructure.GPIO_Pin     = GPIO_Pin_6 | GPIO_Pin_7;  // PC6, PC7
    GPIO_InitStructure.GPIO_Speed   = GPIO_Speed_50MHz;
    GPIO_InitStructure.GPIO_Mode    = GPIO_Mode_IPU; 
    GPIO_Init(GPIOB, &GPIO_InitStructure);
    /*******************Volume resister***************/
    GPIO_InitStructure.GPIO_Pin     = GPIO_Pin_0;  
    GPIO_InitStructure.GPIO_Mode    = GPIO_Mode_AIN; 
    GPIO_Init(GPIOC, &GPIO_InitStructure);
    /*******************Current Sensor****************/
    GPIO_InitStructure.GPIO_Pin     = GPIO_Pin_1;  
    GPIO_InitStructure.GPIO_Mode    = GPIO_Mode_AIN; 
    GPIO_Init(GPIOC, &GPIO_InitStructure);
}

/*******************************************************************************
* Function Name : EXTI_Configuration.
* Description   : Configure the EXTI lines for Key and Tamper push buttons.
* Input         : None.
* Output        : None.
* Return value  : The direction value.
*******************************************************************************/
void EXTI_Configuration(void)
{ 
    EXTI_InitTypeDef EXTI_InitStructure;

    /* Configure gpio as input : Button Left-WKUP */
    /* Connect EXTI Line to gpio pin */
    GPIO_EXTILineConfig(GPIO_PORTSOURCE_KEY, GPIO_PINSOURCE_KEY1);

    /* Configure EXTI Line to generate an interrupt */
    EXTI_InitStructure.EXTI_Line    = GPIO_EXTI_Line_KEY1;
    EXTI_InitStructure.EXTI_Mode    = EXTI_Mode_Interrupt;
    EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Falling;
    EXTI_InitStructure.EXTI_LineCmd = ENABLE;
    EXTI_Init(&EXTI_InitStructure);

    /* Configure gpio as input : Button Right-USER */
    /* Connect EXTI Line to gpio pin */
    GPIO_EXTILineConfig(GPIO_PORTSOURCE_KEY, GPIO_PINSOURCE_KEY2);

    /* Configure EXTI Line to generate an interrupt */  
    EXTI_InitStructure.EXTI_Line    = GPIO_EXTI_Line_KEY2;
    EXTI_InitStructure.EXTI_Mode    = EXTI_Mode_Interrupt;
    EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Falling;
    EXTI_InitStructure.EXTI_LineCmd = ENABLE;
    EXTI_Init(&EXTI_InitStructure);

   
}
/**
  * @brief  Inserts a delay time.
  * @param  nTime: specifies the delay time length, in milliseconds.
  * @retval None
  */
void Delay(__IO uint32_t nTime)
{ 
  TimingDelay = nTime;

  while(TimingDelay != 0);
}
void SerialPutChar(uint16_t c)
{
  USART_SendData(USART3,c);
  while(USART_GetFlagStatus(USART3,USART_FLAG_TXE)==RESET);
}
void Usart_putnum(uint16_t NumData)
{
  uint16_t TempData; 


  TempData = (NumData%100000)/10000;          //10000 자리 출력 
  SerialPutChar(TempData+48);  
  
  TempData = (NumData%10000)/1000;          //1000 자리 출력 
  SerialPutChar(TempData+48);  


  TempData = (NumData%1000)/100; 
  SerialPutChar(TempData+48);                // 100 자리 출력 
  
  TempData = (NumData%100)/10; 
  SerialPutChar(TempData+48);                // 10 자리 출력 


  TempData = NumData%10; 
  SerialPutChar(TempData+48);				// 1의 자리 출력 
}
void Newline()
{
   SerialPutChar(10);
   SerialPutChar(13);
}
void Space()
{
   SerialPutChar(32);
}
/**
  * @brief  Decrements the TimingDelay variable.
  * @param  None
  * @retval None
  */
void TimingDelay_Decrement(void)
{
  if (TimingDelay != 0x00)
  { 
    TimingDelay--;
  }
}


