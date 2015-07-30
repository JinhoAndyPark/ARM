/*==============================================================================
 *
 *   Main Function
 *
 *    	File Name   	: main.c
 *    	Version        	: 1.0
 *    	Date           	: 2014.03.06
 *		Modified       	: 2014.03.06 By Park, Jin-ho
 *		Author         	: Park, Jin-ho  (27th)
 *		MPU_Type       	: STM32F103RC(72MHz)
 *		Compiler		: IAR Embedded Workbench For ARM
 *		Copyright(c) ROLAB, Kwangwoon University.
 *    	All Rights Reserved.
 *
==============================================================================*/

//------------------------------------------------------------------------------
//	=== Include Headerfile ===
//------------------------------------------------------------------------------
#include "Hw_config.h"

//------------------------------------------------------------------------------
//                   		=== defines ===
//------------------------------------------------------------------------------
#ifdef __GNUC__
  #define PUTCHAR_PROTOTYPE int __io_putchar(int ch)
#else
  #define PUTCHAR_PROTOTYPE int fputc(int ch, FILE *f)
#endif /* __GNUC__ */

//------------------------------------------------------------------------------
//                   		=== global variables ===
//------------------------------------------------------------------------------
RCC_ClocksTypeDef  rcc_clocks;
static volatile uint32_t TimingDelay;

extern volatile uint16_t ADCConvertedValue[ADCMAXCH];
volatile uint16_t Dis;
//------------------------------------------------------------------------------
//                   		=== functions ===
//------------------------------------------------------------------------------


PUTCHAR_PROTOTYPE
{
    /* Write a character to the USART */  
    if( ch == '\n') {
        USART_SendData(USART1, '\r');
        while(USART_GetFlagStatus(USART1, USART_FLAG_TXE) == RESET);
        USART_SendData(USART1, '\n');
    }else {
        USART_SendData(USART1, (u8) ch);
    }
    
    /* Loop until the end of transmission */
    while(USART_GetFlagStatus(USART1, USART_FLAG_TXE) == RESET);

    return ch;
}
/*
void Delay_us(uint32_t uSecs) {
	SysTick_Config(SystemCoreClock / DELAY_TICK_FREQUENCY_US);
	TimingDelay = uSecs+1;
	while (TimingDelay != 0);
}
*/
void TimingDelay_Decrement(void)
{
	if (TimingDelay != 0x00)
	{ 
		TimingDelay--;
	}
}
void delay_int_count(volatile unsigned int nTime)
{
	for(; nTime > 0; nTime--);
}
void delay_1_second(void)
{
    Delay(1000);
}

void Delay(__IO uint32_t nTime)
{ 
		
	TimingDelay = nTime;

	while(TimingDelay != 0);
}

void delay_100_milli_second(void)
{
    Delay(100);
}

void RCC_Configuration(void)
{
    SystemInit();

	RCC_GetClocksFreq(&rcc_clocks);
/*
	if (SysTick_Config(rcc_clocks.SYSCLK_Frequency / 1000))
    { 
        // Capture error 
        while (1);
    }
    */
    RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA, ENABLE);
    RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOB, ENABLE);
    RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOC, ENABLE);
   

	/* Enable AFIO clock */
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_AFIO, ENABLE);

	RCC_APB2PeriphClockCmd(RCC_APB2Periph_USART1, ENABLE);
	 
//	RCC_APB1PeriphClockCmd(RCC_APB1Periph_USART2, ENABLE);
	
//	RCC_APB1PeriphClockCmd(RCC_APB1Periph_USART3, ENABLE);

	RCC_APB2PeriphClockCmd(RCC_APB2Periph_ADC1, ENABLE);

	RCC_AHBPeriphClockCmd(RCC_AHBPeriph_DMA1, ENABLE);
	
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_SPI2,ENABLE);
//	RCC_APB2PeriphClockCmd(RCC_APB2Periph_TIM1, ENABLE);	
	
//	RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM2, ENABLE);

//	RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM3, ENABLE);

//	RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM4, ENABLE);
	
}

void DMA_Configuration(void)
{
    DMA_InitTypeDef DMA_InitStructure;

    /* DMA1 channel1 configuration */
    DMA_DeInit(DMA1_Channel1);
    DMA_InitStructure.DMA_PeripheralBaseAddr = ADC1_DR_Address;
    DMA_InitStructure.DMA_MemoryBaseAddr = (uint32_t)&ADCConvertedValue;
    DMA_InitStructure.DMA_DIR = DMA_DIR_PeripheralSRC;
    DMA_InitStructure.DMA_BufferSize = ADCMAXCH;	//8		
    DMA_InitStructure.DMA_PeripheralInc = DMA_PeripheralInc_Disable;
    DMA_InitStructure.DMA_MemoryInc = DMA_MemoryInc_Enable;	
    DMA_InitStructure.DMA_PeripheralDataSize = DMA_PeripheralDataSize_HalfWord;
    DMA_InitStructure.DMA_MemoryDataSize = DMA_MemoryDataSize_HalfWord;
    DMA_InitStructure.DMA_Mode = DMA_Mode_Circular;	//DMA_Mode_Normal
    DMA_InitStructure.DMA_Priority = DMA_Priority_High;
    DMA_InitStructure.DMA_M2M = DMA_M2M_Disable;
    DMA_Init(DMA1_Channel1, &DMA_InitStructure);
	//DMA_Init(DMA1_Channel2, &DMA_InitStructure);
	//DMA_Init(DMA1_Channel3, &DMA_InitStructure);
	//DMA_Init(DMA1_Channel4, &DMA_InitStructure);
    /* Enable DMA1 Channel1 */
    DMA_Cmd(DMA1_Channel1, ENABLE);
//	DMA_Cmd(DMA1_Channel2, ENABLE);
//	DMA_Cmd(DMA1_Channel3, ENABLE);
//	DMA_Cmd(DMA1_Channel4, ENABLE);
}

void ADC_Configuration(void)
{
    ADC_InitTypeDef  ADC_InitStructure;

    /* ADC1 Configuration */
    ADC_InitStructure.ADC_Mode = ADC_Mode_Independent; //ADC_Mode_RegSimult;  
    ADC_InitStructure.ADC_ScanConvMode = ENABLE;	//continuous
    ADC_InitStructure.ADC_ContinuousConvMode = ENABLE;
    ADC_InitStructure.ADC_ExternalTrigConv = ADC_ExternalTrigConv_None;	
    ADC_InitStructure.ADC_DataAlign = ADC_DataAlign_Right;
    ADC_InitStructure.ADC_NbrOfChannel = ADCMAXCH;	//8
    ADC_Init(ADC1, &ADC_InitStructure);

    /* ADC1 regular channel14 configuration */ 
	ADC_RegularChannelConfig(ADC1, ADC_Channel_8, 1, ADC_SampleTime_55Cycles5); //ADCConvertedValue[0]
	ADC_RegularChannelConfig(ADC1, ADC_Channel_9, 2, ADC_SampleTime_55Cycles5); //ADCConvertedValue[1]
	ADC_RegularChannelConfig(ADC1, ADC_Channel_10, 3, ADC_SampleTime_55Cycles5); //ADCConvertedValue[2]
	ADC_RegularChannelConfig(ADC1, ADC_Channel_11, 4, ADC_SampleTime_55Cycles5); //ADCConvertedValue[3]
	ADC_RegularChannelConfig(ADC1, ADC_Channel_12, 5, ADC_SampleTime_55Cycles5); //ADCConvertedValue[4]
	ADC_RegularChannelConfig(ADC1, ADC_Channel_13, 6, ADC_SampleTime_55Cycles5); //ADCConvertedValue[5]
	ADC_RegularChannelConfig(ADC1, ADC_Channel_14, 7, ADC_SampleTime_55Cycles5); //ADCConvertedValue[6]
	ADC_RegularChannelConfig(ADC1, ADC_Channel_15, 8, ADC_SampleTime_55Cycles5); //ADCConvertedValue[7]

    /* Enable ADC1 DMA */
    ADC_DMACmd(ADC1, ENABLE);

    /* Enable ADC1 */
    ADC_Cmd(ADC1, ENABLE);

    /* Enable ADC1 reset calibaration register */   
    ADC_ResetCalibration(ADC1);
	
    /* Check the end of ADC1 reset calibration register */
    while(ADC_GetResetCalibrationStatus(ADC1));

    /* Start ADC1 calibaration */
    ADC_StartCalibration(ADC1);
	
    /* Check the end of ADC1 calibration */
    while(ADC_GetCalibrationStatus(ADC1));
 
    /* Start ADC1 Software Conversion */ 
    ADC_SoftwareStartConvCmd(ADC1, ENABLE);
	
}

void TIM_Configuration(void)
{ 
    TIM_TimeBaseInitTypeDef  TIM_TimeBaseStructure;
    
    TIM_OCInitTypeDef TIM_OCInitStructure;

	/*---------------Period of Control-----------------*/
/*	TIM_TimeBaseStructure.TIM_Period = 9999; 		// 0.0001s= 100usec         
	TIM_TimeBaseStructure.TIM_Prescaler = 7199;//rcc_clocks.PCLK1_Frequency*2/1000000;       
	TIM_TimeBaseStructure.TIM_ClockDivision = TIM_CKD_DIV1;    
	TIM_TimeBaseStructure.TIM_CounterMode = TIM_CounterMode_Up; 
   	TIM_TimeBaseStructure.TIM_RepetitionCounter = 0;
    
	TIM_TimeBaseInit(TIM1, &TIM_TimeBaseStructure);
  
    TIM_Cmd(TIM1, ENABLE);
	TIM_ClearITPendingBit(TIM1, TIM_IT_Update);
    TIM_ITConfig(TIM1,TIM_IT_Update,ENABLE);
*/
	//Time4 PWM Mode configuration: Channel1(PB6), Channel2(PB7) 
	TIM_TimeBaseStructure.TIM_Period = 999;     //0.001
	TIM_TimeBaseStructure.TIM_Prescaler = 35; //1Mhz = 1us
	TIM_TimeBaseStructure.TIM_ClockDivision = 0;    
	TIM_TimeBaseStructure.TIM_CounterMode = TIM_CounterMode_Up;  
	TIM_TimeBaseStructure.TIM_RepetitionCounter = 0x0000;
	TIM_TimeBaseInit(TIM4, &TIM_TimeBaseStructure);

	TIM_OCInitStructure.TIM_OCMode = TIM_OCMode_PWM1;
	TIM_OCInitStructure.TIM_OutputState = TIM_OutputState_Enable;
	TIM_OCInitStructure.TIM_Pulse = 0;	//Initial setting
	TIM_OCInitStructure.TIM_OCPolarity = TIM_OCPolarity_High;
    
	TIM_OC1Init(TIM4, &TIM_OCInitStructure);
	TIM_OC1PreloadConfig(TIM4, TIM_OCPreload_Enable);

    
    TIM_OC2Init(TIM4, &TIM_OCInitStructure);
   	TIM_OC2PreloadConfig(TIM4, TIM_OCPreload_Enable);
    
	TIM_ARRPreloadConfig(TIM4, ENABLE);
  	TIM_Cmd(TIM4, ENABLE);
	
	//Myfunction for useful
	SetPwmPeriod(999);	//0.001
	/*
	 Time2 PWM1 Mode configuration: Channel1, Channel2 
	TIM_TimeBaseStructure.TIM_Period = 5999; 		// 1us*100= 100usec         
    TIM_TimeBaseStructure.TIM_Prescaler = 0;//rcc_clocks.PCLK1_Frequency*2/1000000;       
    TIM_TimeBaseStructure.TIM_ClockDivision = 0;    
    TIM_TimeBaseStructure.TIM_CounterMode = TIM_CounterMode_Up;  
    TIM_TimeBaseStructure.TIM_RepetitionCounter = 0x0000;
    TIM_TimeBaseInit(TIM2, &TIM_TimeBaseStructure);
    
    TIM_OCInitStructure.TIM_OCMode = TIM_OCMode_PWM1;
    TIM_OCInitStructure.TIM_OutputState = TIM_OutputState_Enable;
    TIM_OCInitStructure.TIM_Pulse = 0;	//Initial setting
    TIM_OCInitStructure.TIM_OCPolarity = TIM_OCPolarity_High;
    
    TIM_OC1Init(TIM2, &TIM_OCInitStructure);
    TIM_OC1PreloadConfig(TIM2, TIM_OCPreload_Enable);
    
    
    TIM_OC2Init(TIM2, &TIM_OCInitStructure);
    TIM_OC2PreloadConfig(TIM2, TIM_OCPreload_Enable);
    
    TIM_ARRPreloadConfig(TIM2, ENABLE);
    TIM_Cmd(TIM2, ENABLE);

	SetPwmPeriod(999);	//0.001

	*/
	
}


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
	NVIC_PriorityGroupConfig(NVIC_PriorityGroup_2);
	
	/* Enable the USART1 Interrupt */
    NVIC_InitStructure.NVIC_IRQChannel = USART1_IRQn;
    NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0;// priority each group 0,1,2,3,4
    NVIC_InitStructure.NVIC_IRQChannelSubPriority = 1;	//priority sub in each group xxxxx
    NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
    NVIC_Init(&NVIC_InitStructure); 
	
	 /* Enable the USART2 Interrupt */
    NVIC_InitStructure.NVIC_IRQChannel = USART2_IRQn;
    NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0;// priority each group 0,1,2,3,4
    NVIC_InitStructure.NVIC_IRQChannelSubPriority = 2;   //priority sub in each group xxxxx
    NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
    NVIC_Init(&NVIC_InitStructure); 


	/* Enable the USART3 Interrupt */

	NVIC_InitStructure.NVIC_IRQChannel = USART3_IRQn;
    NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0;
    NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;	
    NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
    NVIC_Init(&NVIC_InitStructure); 	

	 /* Enable the TIM1 Interrupt */
/*    NVIC_InitStructure.NVIC_IRQChannel = TIM1_UP_IRQn;
    NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0;
    NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
    NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
    NVIC_Init(&NVIC_InitStructure);
*/
	
	//Enable the EXTI0 Interrupt
/*	NVIC_InitStructure.NVIC_IRQChannel = EXTI0_IRQn;
    NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0;
    NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
    NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
    NVIC_Init(&NVIC_InitStructure);

	
	//Enable the EXTI1 Interrupt 
	NVIC_InitStructure.NVIC_IRQChannel = EXTI1_IRQn;
    NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0;
    NVIC_InitStructure.NVIC_IRQChannelSubPriority = 1;
    NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
    NVIC_Init(&NVIC_InitStructure);
*/	
	//Enable the EXT4 Interrupt 
	NVIC_InitStructure.NVIC_IRQChannel = EXTI4_IRQn;
  	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0;
  	NVIC_InitStructure.NVIC_IRQChannelSubPriority = 4;
  	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
   	NVIC_Init(&NVIC_InitStructure);
		
}


void EXTI_Configuration(void)
{ 
    EXTI_InitTypeDef EXTI_InitStructure;

/*	// Configure gpio as input : Button Left-WKUP 
    // Connect EXTI Line to gpio pin 
    GPIO_EXTILineConfig(GPIO_PortSourceGPIOA, GPIO_PinSource0);
	// Configure EXTI Line to generate an interrupt 
    EXTI_InitStructure.EXTI_Line    = EXTI_Line0;
    EXTI_InitStructure.EXTI_Mode    = EXTI_Mode_Interrupt;
    EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Falling;
    EXTI_InitStructure.EXTI_LineCmd = ENABLE;
    EXTI_Init(&EXTI_InitStructure);
	
	// Configure gpio as input : Button Right-USER 
    // Connect EXTI Line to gpio pin 
	GPIO_EXTILineConfig(GPIO_PortSourceGPIOA, GPIO_PinSource1);
	// Configure EXTI Line to generate an inter frupt 
    EXTI_InitStructure.EXTI_Line    = EXTI_Line1;
    EXTI_InitStructure.EXTI_Mode    = EXTI_Mode_Interrupt;
    EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Falling;
    EXTI_InitStructure.EXTI_LineCmd = ENABLE;
    EXTI_Init(&EXTI_InitStructure);
*/
	// nRf24L01 spi IRQ(PA4)
	// Connect EXTI Line to gpio pin
	GPIO_EXTILineConfig(GPIO_PortSourceGPIOA, GPIO_PinSource4);
	
	// Configure EXTI Line to generate an interrupt
   	EXTI_InitStructure.EXTI_Line    = EXTI_Line4;
   	EXTI_InitStructure.EXTI_Mode    = EXTI_Mode_Interrupt;
   	EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Falling;
   	EXTI_InitStructure.EXTI_LineCmd = ENABLE;
   	EXTI_Init(&EXTI_InitStructure);

}


void GPIO_Configuration(void)
{
    GPIO_InitTypeDef GPIO_InitStructure;

    /* Configure USART1_Tx as alternate function push-pull */
    GPIO_InitStructure.GPIO_Pin   = GPIO_USART1_Tx_Pin;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_InitStructure.GPIO_Mode  = GPIO_Mode_AF_PP;
    GPIO_Init(GPIOA, &GPIO_InitStructure);

    /* Configure USART1_Rx as input floating */
    GPIO_InitStructure.GPIO_Pin  = GPIO_USART1_Rx_Pin;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;
    GPIO_Init(GPIOA, &GPIO_InitStructure);
	
    /* Configure USART2_Tx as alternate function push-pull */
    GPIO_InitStructure.GPIO_Pin   = GPIO_USART2_Tx_Pin;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_InitStructure.GPIO_Mode  = GPIO_Mode_AF_PP;
    GPIO_Init(GPIOA, &GPIO_InitStructure);

    /* Configure USART2_Rx as input floating */
    GPIO_InitStructure.GPIO_Pin  = GPIO_USART2_Rx_Pin;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;
    GPIO_Init(GPIOA, &GPIO_InitStructure);
	
	 /* Configure USART3_Tx as alternate function push-pull */
    GPIO_InitStructure.GPIO_Pin   = GPIO_USART3_Tx_Pin;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_InitStructure.GPIO_Mode  = GPIO_Mode_AF_PP;
    GPIO_Init(GPIOB, &GPIO_InitStructure);

    /* Configure USART3_Rx as input floating */
    GPIO_InitStructure.GPIO_Pin  = GPIO_USART3_Rx_Pin;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;
    GPIO_Init(GPIOB, &GPIO_InitStructure);

/*	
	// Configure gpio as input : Button WKUP & USER 
    GPIO_InitStructure.GPIO_Pin  = GPIO_Pin_0 | GPIO_Pin_1;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;
    GPIO_Init(GPIOA, &GPIO_InitStructure);
*/	
	
	// Configure ADC input : PB0(ADC8),PB1(ADC9)
	GPIO_InitStructure.GPIO_Pin  = GPIO_Pin_0|GPIO_Pin_1;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AIN;
  	GPIO_Init(GPIOB, &GPIO_InitStructure);

	// Configure ADC input : PC0(ADC10),PC1(ADC11),PC2(ADC12),PC3(ADC13),PC4(ADC14),PC5(ADC15)
	GPIO_InitStructure.GPIO_Pin  = GPIO_Pin_0|GPIO_Pin_1|GPIO_Pin_2|GPIO_Pin_3|GPIO_Pin_4|GPIO_Pin_5;
   	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AIN;
   	GPIO_Init(GPIOC, &GPIO_InitStructure);

	//Configure GPIO : LED1(PB5), LED2(PB8), LED2(PB9)
	GPIO_InitStructure.GPIO_Pin   = GPIO_Pin_5 | GPIO_Pin_8 | GPIO_Pin_9;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_InitStructure.GPIO_Mode  = GPIO_Mode_Out_PP;
	GPIO_Init(GPIOB, &GPIO_InitStructure);

	//Configure GPIO : nRF24L01 IRQ(PA4)
	GPIO_InitStructure.GPIO_Pin   = GPIO_Pin_4;
	GPIO_InitStructure.GPIO_Mode  = GPIO_Mode_IN_FLOATING;
	GPIO_Init(GPIOA, &GPIO_InitStructure);

	GPIO_InitStructure.GPIO_Pin   = GPIO_Pin_9 ;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_InitStructure.GPIO_Mode  = GPIO_Mode_Out_PP;
	GPIO_Init(GPIOC, &GPIO_InitStructure);
		
}

void USART1_Init(int baurRate)
{
    USART_InitTypeDef USART_InitStructure;

    /* USARTx configuration ------------------------------------------------------*/
    /* USARTx configured as follow:
     - BaudRate = 115200 baud  
     - Word Length = 8 Bits
     - One Stop Bit
     - No parity
     - Hardware flow control disabled (RTS and CTS signals)
     - Receive and transmit enabled
    */
    USART_InitStructure.USART_BaudRate   = baurRate;
    USART_InitStructure.USART_WordLength = USART_WordLength_8b;
    USART_InitStructure.USART_StopBits   = USART_StopBits_1;
    USART_InitStructure.USART_Parity     = USART_Parity_No ;
    USART_InitStructure.USART_HardwareFlowControl
                                         = USART_HardwareFlowControl_None;
    USART_InitStructure.USART_Mode       = USART_Mode_Rx | USART_Mode_Tx;

	/* RX INTERRUPT ENABLE */
	USART_ITConfig(USART1, USART_IT_RXNE, ENABLE);

    /* Configure the USARTx */ 
    USART_Init(USART1, &USART_InitStructure);

    /* Enable the USART1 */
    USART_Cmd(USART1, ENABLE);
}

void USART2_Init(int baurRate)
{
    USART_InitTypeDef USART_InitStructure;

    /* USARTx configuration ------------------------------------------------------*/
    /* USARTx configured as follow:
     - BaudRate = 115200 baud  
     - Word Length = 8 Bits
     - One Stop Bit
     - No parity
     - Hardware flow control disabled (RTS and CTS signals)
     - Receive and transmit enabled
     */
    USART_InitStructure.USART_BaudRate   = baurRate;
    USART_InitStructure.USART_WordLength = USART_WordLength_8b;
    USART_InitStructure.USART_StopBits   = USART_StopBits_1;
    USART_InitStructure.USART_Parity     = USART_Parity_No ;
    USART_InitStructure.USART_HardwareFlowControl
                                         = USART_HardwareFlowControl_None;
    USART_InitStructure.USART_Mode       = USART_Mode_Rx | USART_Mode_Tx;

    /* RX INTERRUPT ENABLE */
    USART_ITConfig(USART2, USART_IT_RXNE, ENABLE);

    /* Configure the USARTx   */ 
    USART_Init(USART2, &USART_InitStructure);

    /* Enable the USART2 */
    USART_Cmd(USART2, ENABLE);
}

void USART3_Init(int baurRate)
{
    USART_InitTypeDef USART_InitStructure;
    
    USART_InitStructure.USART_BaudRate = baurRate;
    USART_InitStructure.USART_WordLength = USART_WordLength_8b;
    USART_InitStructure.USART_StopBits = USART_StopBits_1;
    USART_InitStructure.USART_Parity = USART_Parity_No;
    USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
    USART_InitStructure.USART_Mode = USART_Mode_Rx|USART_Mode_Tx;

	/* RX INTERRUPT ENABLE */
	USART_ITConfig(USART3, USART_IT_RXNE, ENABLE);
	
    /* Configure the USARTx */
    USART_Init(USART3,&USART_InitStructure);  
	/* Enable the USART3 */
    USART_Cmd(USART3, ENABLE);
}


	
