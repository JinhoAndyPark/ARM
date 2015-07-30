/*
 * (C) COPYRIGHT 2009 CRZ
 *
 * File Name : main.c
 * 
 * History 
 *
 * when         who       what, where, why
 *--------------------------------------------------------------
 * 08/12/2009   POOH      Initial release
 * 05/20/2013   sikim     Modify for Humidity sensor
 */

/* includes */

#include "hw_config.h"
#include "hw_types.h"
#include "uart_queue.h"
#include "usb_lib.h"
#include "usb_pwr.h"
#include "usb_istr.h"
#include "usb_desc.h"

/* global variables */

RCC_ClocksTypeDef  rcc_clocks;

bool g_TestProcessState = FALSE;

/* functions */

void System_Information()
{
    printf("\nProgram Build Date: %s, Time: %s\n", __DATE__, __TIME__);

    printf("SYSCLK_Frequency = %d\n",rcc_clocks.SYSCLK_Frequency );
    printf("HCLK_Frequency = %d\n",rcc_clocks.HCLK_Frequency );
    printf("PCLK1_Frequency = %d\n",rcc_clocks.PCLK1_Frequency );
    printf("PCLK2_Frequency = %d\n",rcc_clocks.PCLK2_Frequency );
    printf("ADCCLK_Frequency = %d\n",rcc_clocks.ADCCLK_Frequency );
}

void USB_Test_Start (void)
{
    USB_Interrupts_Config();
    Set_USBClock();
    USB_Init();
}

#if 0
/**
  * @brief  Configures the used Timers.
  * @param  None
  * @retval None
  */
void TIM_Configuration(void)
{
    TIM_TimeBaseInitTypeDef  TIM_TimeBaseStructure;

    /* TIM2 configuration */
    TIM_TimeBaseStructure.TIM_Period = 0x4AF;          
    TIM_TimeBaseStructure.TIM_Prescaler = 0xEA5F;       
    TIM_TimeBaseStructure.TIM_ClockDivision = TIM_CKD_DIV1;    
    TIM_TimeBaseStructure.TIM_CounterMode = TIM_CounterMode_Up;  
    TIM_TimeBaseStructure.TIM_RepetitionCounter = 0x0000;
    TIM_TimeBaseInit(TIM2, &TIM_TimeBaseStructure);

    /* TIM2 enable counter */
    TIM_Cmd(TIM2, ENABLE);

    /* Immediate load of TIM2 Precaler value */
    TIM_PrescalerConfig(TIM2, 0xEA5F, TIM_PSCReloadMode_Immediate);

    /* Clear TIM2 update pending flag */
    TIM_ClearFlag(TIM2, TIM_FLAG_Update);

    /* Enable TIM2 Update interrupt */
    TIM_ITConfig(TIM2, TIM_IT_Update, ENABLE);
}

void ADC_Configuration(void)
{
    ADC_InitTypeDef  ADC_InitStructure;

    /* ADC1 Configuration */
    ADC_InitStructure.ADC_Mode = ADC_Mode_Independent;
    ADC_InitStructure.ADC_ScanConvMode = DISABLE;
    ADC_InitStructure.ADC_ContinuousConvMode = ENABLE;
    ADC_InitStructure.ADC_ExternalTrigConv = ADC_ExternalTrigConv_None;
    ADC_InitStructure.ADC_DataAlign = ADC_DataAlign_Right;
    ADC_InitStructure.ADC_NbrOfChannel = 1;
    ADC_Init(ADC1, &ADC_InitStructure);

    /* ADC1 regular channel8 configuration */ 
    ADC_RegularChannelConfig(ADC1, ADC_Channel_8, 1, ADC_SampleTime_55Cycles5);

    /* Enable ADC1 DMA */
//    ADC_DMACmd(ADC1, ENABLE);

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

void TIM_Configuration(void);
void ADC_Configuration(void);
#endif

static bool g_print_menu_control_flag = TRUE;

#if 0
// Second Timer consume flag
bool g_sec_time_consume_flag = FALSE;
#endif

static void print_menu_command(void)
{
    if(TRUE == g_print_menu_control_flag)
    {
        printf("\n---------------------\n");
        printf("Press menu key\n");
        printf("---------------------\n");
        printf("0> System Information\n");
        printf("---------------------\n");
        printf("1> LED Test\n");
        printf("2> KEY Test\n");
        printf("3> 7-Segment Test\n");
        printf("4> USB HID Test\n");
        printf("5> Auto Sensor Board Detect\n");
        printf("6> MPU 9150 9 Axis Sensor Test\n");
        printf("---------------------\n");
        printf("x> quit\n\n");
    }

    g_print_menu_control_flag = FALSE;
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

    /* System Clocks Configuration */
    RCC_Configuration();

    RCC_GetClocksFreq(&rcc_clocks);

    /* NVIC configuration */
    NVIC_Configuration();

    /* Configure the GPIO ports */
    GPIO_Configuration();

    /* UART initialization */
    USART1_Init_forSerial();
//    USART2_Init_forComm();

    printf("\n\n[Sensor Test] ...\n");

    USB_Initialize();    
    printf("USB_Initialize() done\n");

    LED_Initialize();
    printf("LED_Initialize() done\n");

    Seven_Segment_Initilaze();
    printf("Seven_Segment_Initilaze() done\n");

    KEY_Initialize();
    printf("KEY_Initialize() done\n");

    board_detect_initialzie();
    printf("board_detect_initialzie() done\n");

    /* Configure I2C */
    I2C_LowLevel_Init(I2C1);
    printf("I2C_LowLevel_Init() done\n");

#if 0
    /* Configure TIM */
    TIM_Configuration();
    printf("TIM_Configuration() done\n");

    /* Configure ADC */
    ADC_Configuration();
    printf("ADC_Configuration() done\n");
#endif

    /* Setup SysTick Timer for 1 msec interrupts  */
    if (SysTick_Config(rcc_clocks.SYSCLK_Frequency / 1000))
    { 
        /* Capture error */ 
        while (1);
    }
    printf("SysTick_Config() done\n");

//    USB_Cable_Config(DISABLE);        

    Delay(500);

    System_Information();
    
    while(1)
    {
        print_menu_command();

        if(FALSE == UartQueue_Serial_Is_Empty())
        {
            ch = UartQueue_Serial_DeQueue();
            printf("%c is selected\n\n", (char)ch);

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

            case '4':
                g_TestProcessState = TRUE;

                /* USB initialization */
                USB_Test_Start();
                Delay(500);
                USB_Cable_Config(ENABLE);
                break;

            case '5':
                board_detect();
                break;

            case '6':
                Test_Sensor9Axis();
                break;
            }

            g_print_menu_control_flag = TRUE;

            if('x' == (char)ch)
            {
                break;
            }
        }
    }

    return 0;
}

