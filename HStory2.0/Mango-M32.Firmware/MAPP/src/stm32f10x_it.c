/**
  ******************************************************************************
  * @file    SysTick/stm32f10x_it.c 
  * @author  MCD Application Team
  * @version V3.1.0
  * @date    06/19/2009
  * @brief   Main Interrupt Service Routines.
  *          This file provides template for all exceptions handler and peripherals
  *          interrupt service routine.
  ******************************************************************************
  * @copy
  *
* THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
  * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
  * TIME. AS A RESULT, STMICROELECTRONICS SHALL NOT BE HELD LIABLE FOR ANY
  * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING

  * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
  * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
  *
  * <h2><center>&copy; COPYRIGHT 2009 STMicroelectronics</center></h2>
  */ 

/* Includes ------------------------------------------------------------------*/
//#include "stm32f10x_it.h"
//#include "stm32f10x_exti.h"
//#include "stm32f10x_dma.h"

#include "hw_config.h"

/* Private typedef -----------------------------------------------------------*/

/* Private define ------------------------------------------------------------*/

/* Private macro -------------------------------------------------------------*/

/* Private variables ---------------------------------------------------------*/
uint8_t Send_Buffer[2];
U8 Encoder_Flag=0;
U16 Encoder_Sum1, Encoder_Sum2;


U8 i=0;
//0~65535
//-32768 ~ 32767
/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/

/******************************************************************************/
/*            Cortex-M3 Processor Exceptions Handlers                         */
/******************************************************************************/

/**
  * @brief  This function handles NMI exception.
  * @param  None
  * @retval None
  */
void NMI_Handler(void)
{
}

/**
  * @brief  This function handles Hard Fault exception.
  * @param  None
  * @retval None
  */
void HardFault_Handler(void)
{
    /* Go to infinite loop when Hard Fault exception occurs */
    while (1)
    {
    }
}

/**
  * @brief  This function handles Memory Manage exception.
  * @param  None
  * @retval None
  */
void MemManage_Handler(void)
{
    /* Go to infinite loop when Memory Manage exception occurs */
    while (1)
    {
    }
}

/**
  * @brief  This function handles Bus Fault exception.
  * @param  None
  * @retval None
  */
void BusFault_Handler(void)
{
    /* Go to infinite loop when Bus Fault exception occurs */
    while (1)
    {
    }
}

/**
  * @brief  This function handles Usage Fault exception.
  * @param  None
  * @retval None
  */
void UsageFault_Handler(void)
{
    /* Go to infinite loop when Usage Fault exception occurs */
    while (1)
    {
    }
}

/**
  * @brief  This function handles SVCall exception.
  * @param  None
  * @retval None
  */
void SVC_Handler(void)
{
}

/**
  * @brief  This function handles Debug Monitor exception.
  * @param  None
  * @retval None
  */
void DebugMon_Handler(void)
{
}

/**
  * @brief  This function handles PendSV_Handler exception.
  * @param  None
  * @retval None
  */
void PendSV_Handler(void)
{
}

/**
  * @brief  This function handles SysTick Handler.
  * @param  None
  * @retval None
  */
void SysTick_Handler(void)
{
    TimingDelay_Decrement();
}

/******************************************************************************/
/*            STM32F10x Peripherals Interrupt Handlers                        */
/*  Add here the Interrupt Handler for the used peripheral(s) (PPP), for the  */
/*  available peripheral interrupt handler's name please refer to the startup */
/*  file (startup_stm32f10x_xx.s).                                            */
/******************************************************************************/

/*******************************************************************************
* Function Name  : WWDG_IRQHandler
* Description    : This function handles WWDG interrupt request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void WWDG_IRQHandler(void)
{
}

/*******************************************************************************
* Function Name  : PVD_IRQHandler
* Description    : This function handles PVD interrupt request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void PVD_IRQHandler(void)
{
}

/*******************************************************************************
* Function Name  : TAMPER_IRQHandler
* Description    : This function handles Tamper interrupt request. 
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void TAMPER_IRQHandler(void)
{
}

/*******************************************************************************
* Function Name  : RTC_IRQHandler
* Description    : This function handles RTC global interrupt request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void RTC_IRQHandler(void)
{
}

/*******************************************************************************
* Function Name  : FLASH_IRQHandler
* Description    : This function handles Flash interrupt request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void FLASH_IRQHandler(void)
{
}

/*******************************************************************************
* Function Name  : RCC_IRQHandler
* Description    : This function handles RCC interrupt request. 
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void RCC_IRQHandler(void)
{
}

/*******************************************************************************
* Function Name  : EXTI0_IRQHandler
* Description    : This function handles External interrupt Line 0 request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/

void EXTI0_IRQHandler(void)
{
	if(EXTI_GetITStatus(EXTI_Line0) != RESET)
	{
        Usart_Putnum(10);
	
		
		EXTI_ClearITPendingBit(EXTI_Line0);
	}
}

/*******************************************************************************
* Function Name  : EXTI1_IRQHandler
* Description    : This function handles External interrupt Line 1 request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/

void EXTI1_IRQHandler(void)
{
	if(EXTI_GetITStatus(EXTI_Line1) != RESET)	//이 안에 들어와야함 otherwise 무한루프 
	{
		Usart_Putnum(12);
		
		EXTI_ClearITPendingBit(EXTI_Line1);	// need this otherwise 무한루프
	}
}

/*******************************************************************************
* Function Name  : EXTI2_IRQHandler
* Description    : This function handles External interrupt Line 2 request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void EXTI2_IRQHandler(void)
{
}

/*******************************************************************************
* Function Name  : EXTI3_IRQHandler
* Description    : This function handles External interrupt Line 3 request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void EXTI3_IRQHandler(void)
{
	if(EXTI_GetITStatus(EXTI_Line3) != RESET)
	{
        printf("Button3 Press\n");

		EXTI_ClearITPendingBit(EXTI_Line3);
	}
}

/*******************************************************************************
* Function Name  : EXTI4_IRQHandler
* Description    : This function handles External interrupt Line 4 request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void EXTI4_IRQHandler(void)
{
}

/*******************************************************************************
* Function Name  : DMA1_Channel1_IRQHandler
* Description    : This function handles DMA1 Channel 1 interrupt request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void DMA1_Channel1_IRQHandler(void)
{
  
}

/*******************************************************************************
* Function Name  : DMA1_Channel2_IRQHandler
* Description    : This function handles DMA1 Channel 2 interrupt request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void DMA1_Channel2_IRQHandler(void)
{
}

/*******************************************************************************
* Function Name  : DMA1_Channel3_IRQHandler
* Description    : This function handles DMA1 Channel 3 interrupt request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void DMA1_Channel3_IRQHandler(void)
{
}

/*******************************************************************************
* Function Name  : DMA1_Channel4_IRQHandler
* Description    : This function handles DMA1 Channel 4 interrupt request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void DMA1_Channel4_IRQHandler(void)
{
}

/*******************************************************************************
* Function Name  : DMA1_Channel5_IRQHandler
* Description    : This function handles DMA1 Channel 5 interrupt request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void DMA1_Channel5_IRQHandler(void)
{
}

/*******************************************************************************
* Function Name  : DMA1_Channel6_IRQHandler
* Description    : This function handles DMA1 Channel 6 interrupt request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void DMA1_Channel6_IRQHandler(void)
{
}

/*******************************************************************************
* Function Name  : DMA1_Channel7_IRQHandler
* Description    : This function handles DMA1 Channel 7 interrupt request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void DMA1_Channel7_IRQHandler(void)
{
}

/*******************************************************************************
* Function Name  : ADC1_2_IRQHandler
* Description    : This function handles ADC1 and ADC2 global interrupts requests.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void ADC1_2_IRQHandler(void)
{
}

/*******************************************************************************
* Function Name  : USB_HP_CAN_TX_IRQHandler
* Description    : This function handles USB High Priority or CAN TX interrupts 
*                  requests.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void USB_HP_CAN1_TX_IRQHandler(void)
{
}

/*******************************************************************************
* Function Name  : USB_LP_CAN_RX0_IRQHandler
* Description    : This function handles USB Low Priority or CAN RX0 interrupts 
*                  requests.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void USB_LP_CAN1_RX0_IRQHandler(void)
{
//    USB_Istr();
}

/*******************************************************************************
* Function Name  : CAN_RX1_IRQHandler
* Description    : This function handles CAN RX1 interrupt request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void CAN1_RX1_IRQHandler(void)
{
}

/*******************************************************************************
* Function Name  : CAN_SCE_IRQHandler
* Description    : This function handles CAN SCE interrupt request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void CAN1_SCE_IRQHandler(void)
{
}

/*******************************************************************************
* Function Name  : EXTI9_5_IRQHandler
* Description    : This function handles External lines 9 to 5 interrupt request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void EXTI9_5_IRQHandler(void)
{              /*
   if(EXTI_GetITStatus(EXTI_Line6) != RESET)
   { 
     Usart_Putnum(1);
     EXTI_ClearITPendingBit(EXTI_Line6);
   }
   
   if(EXTI_GetITStatus(EXTI_Line7) != RESET)
   {
    Usart_Putnum(2);
     EXTI_ClearITPendingBit(EXTI_Line7);
   } */
   
}


/*******************************************************************************
* Function Name  : TIM1_BRK_IRQHandler
* Description    : This function handles TIM1 Break interrupt request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void TIM1_BRK_IRQHandler(void)
{
}

/*******************************************************************************
* Function Name  : TIM1_UP_IRQHandler
* Description    : This function handles TIM1 overflow and update interrupt 
*                  request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void TIM1_UP_IRQHandler(void)
{	
	
	TIM_ClearITPendingBit(TIM1, TIM_IT_Update);
	Encoder_Count1 = TIM_GetCounter(TIM4); Encoder_Count2=TIM_GetCounter(TIM3);

	for(i=0;i<ADCMAXCH;i++)	
	{			
		Dis[i] =  (11.65/( ADCConvertedValue[i]*3.3/4095)) - 0.147;
		if(ADCConvertedValue[i]<750) 
		{Dis[i]=0;Dis[9]=0;}
	}

	switch(MMode)
	{	
		case 1:// GO!!!Front
		{	
			Encoder_Sum1=Encoder_Count1+Encoder_Sum1;// Encoder_Sum2+=Encoder_Count2;
			if((Encoder_Sum1 & 0xf000) == 0xf000)	//65535 to 61440
			Encoder_Sum1 = (-1)*(0xffff-Encoder_Sum1);	//about minus(-1)*(65535-Encoder_Sum1);
			/*----------------------left motor ccw-----------------------*/
			if((Encoder_Count2 & 0xf000) == 0xf000)	//65535 to 61440
			{
				Encoder_Count2 = (0xffff-Encoder_Count2);	//about minus(-1)*(65535-Encoder_Sum1);
				Encoder_Sum2 = Encoder_Count2 + Encoder_Sum2;
			}
			else if(Encoder_Count2 < 1000)	// forward approximately
			Encoder_Sum2 = Encoder_Sum2 - Encoder_Count2;
		
			//Usart_Putnum(Encoder_Sum1);Newline();
			//Usart_Putnum(Encoder_Sum2);
		
			//Pos_Front_R(9837,Encoder_Sum1);Pos_Front_L(9828,Encoder_Sum2);
			Pos_Front_R(7780,Encoder_Sum1);Pos_Front_L(7640,Encoder_Sum2);
			ccnt++;
			if(ccnt==58)
			{Send_Packet3(0);}
			if(ccnt==117)
			{Send_Packet3(0);}
			if(ccnt==176)
			{Send_Packet3(0);}
			if(ccnt==234)
			{MMode=0;ccnt=0;Encoder_Sum1=0;Encoder_Sum2=0;Send_Packet3(0);}
			if(Dis[5]!=0 && Dis[5]<=6)
			{MMode=0;ccnt=0;Encoder_Sum1=0;Encoder_Sum2=0;}
			TIM4->CNT = 0;	TIM3->CNT = 0;
		}
		break;
		case 2:// Back
		{
			/*---------------------right motor ccw-----------------------*/
			if((Encoder_Count1 & 0xf000) == 0xf000)	//65535 to 61440
			{
				Encoder_Count1 = (0xffff-Encoder_Count1);	//about minus(-1)*(65535-Encoder_Sum1);
				Encoder_Sum1 = Encoder_Count1 + Encoder_Sum1;
			}
			else if(Encoder_Count1 < 1000)	// forward approximately
			Encoder_Sum1 = Encoder_Sum1 - Encoder_Count1;
			/*----------------------left motor cw-----------------------*/
			Encoder_Sum2=Encoder_Count2+Encoder_Sum2;// Encoder_Sum2+=Encoder_Count2;
			if((Encoder_Sum2 & 0xf000) == 0xf000)	//65535 to 61440
			Encoder_Sum2 = (-1)*(0xffff-Encoder_Sum2);	//about minus(-1)*(65535-Encoder_Sum1);
		
			
			Usart_Putnum(Encoder_Sum1);Newline();
			Usart_Putnum(Encoder_Sum2);
			Pos_Con2_R(400,Encoder_Sum1);Pos_Con1_L(400,Encoder_Sum2);
			ccnt++;
			if(ccnt==15)
			{MMode=0;ccnt=0;Encoder_Sum1=0;Encoder_Sum2=0;}
			
			TIM4->CNT = 0;	TIM3->CNT = 0;
		}
		break;
		
	//	case 3:// right_cw left_cw -> turn left
	//	{	
			/*---------------------right motor cw-----------------------*/
	//		Encoder_Sum1=Encoder_Count1+Encoder_Sum1;// Encoder_Sum2+=Encoder_Count2;
	//		if((Encoder_Sum1 & 0xf000) == 0xf000)	//65535 to 61440
	//		Encoder_Sum1 = (-1)*(0xffff-Encoder_Sum1);	//about minus(-1)*(65535-Encoder_Sum1);
			/*----------------------left motor cw-----------------------*/
	//		Encoder_Sum2=Encoder_Count2+Encoder_Sum2;// Encoder_Sum2+=Encoder_Count2;
	//		if((Encoder_Sum2 & 0xf000) == 0xf000)	//65535 to 61440
	//		Encoder_Sum2 = (-1)*(0xffff-Encoder_Sum2);	//about minus(-1)*(65535-Encoder_Sum1);
			
	//		Usart_Putnum(Encoder_Sum1);Newline();
	//		Usart_Putnum(Encoder_Sum2);
	//		//Pos_Con1_R(1316,Encoder_Sum1);Pos_Con1_L(1316,Encoder_Sum2);
	//		Pos_Left90_R(1276,Encoder_Sum1);Pos_Left90_L(1226,Encoder_Sum2);
	//		ccnt++;
	//		if(ccnt==300)
	//		{MMode=0;ccnt=0;Encoder_Sum1=0;Encoder_Sum2=0;}
			
	//		TIM4->CNT = 0;	TIM3->CNT = 0;
	//	}
	//	break;
		
		case 4:	// right_ccw left_ccw -> turn right
		{
			/*-------------------right motor ccw--------------------------*/
			if((Encoder_Count1 & 0xf000) == 0xf000)	//65535 to 61440
			{
				Encoder_Count1 = (0xffff-Encoder_Count1);	//about minus(-1)*(65535-Encoder_Sum1);
				Encoder_Sum1 = Encoder_Count1 + Encoder_Sum1;
			}
			else if(Encoder_Count1 < 1000)	// forward approximately
			Encoder_Sum1 = Encoder_Sum1 - Encoder_Count1;
			/*-------------------left motor ccw--------------------------*/
			if((Encoder_Count2 & 0xf000) == 0xf000)	//65535 to 61440
			{
				Encoder_Count2 = (0xffff-Encoder_Count2);	//about minus(-1)*(65535-Encoder_Sum1);
				Encoder_Sum2 = Encoder_Count2 + Encoder_Sum2;
			}
			else if(Encoder_Count2 < 1000)	// forward approximately
			Encoder_Sum2 = Encoder_Sum2 - Encoder_Count2;

			Pos_Right90_R(8450,Encoder_Sum1); Pos_Right90_L(9200,Encoder_Sum2);

			ccnt++;
			if(ccnt==300)
			{MMode=0;ccnt=0;Encoder_Sum1=0;Encoder_Sum2=0;Send_Packet3(90);}
			
			TIM4->CNT = 0;	TIM3->CNT = 0;
		}
		break;
		
		//case 5:// right_cw left_cw -> turn left45
	//	{
			/*---------------------right motor cw-----------------------*/
		//	Encoder_Sum1=Encoder_Count1+Encoder_Sum1;// Encoder_Sum2+=Encoder_Count2;
		//	if((Encoder_Sum1 & 0xf000) == 0xf000)	//65535 to 61440
		//	Encoder_Sum1 = (-1)*(0xffff-Encoder_Sum1);	//about minus(-1)*(65535-Encoder_Sum1);
			/*----------------------left motor cw-----------------------*/
		/*	Encoder_Sum2=Encoder_Count2+Encoder_Sum2;// Encoder_Sum2+=Encoder_Count2;
			if((Encoder_Sum2 & 0xf000) == 0xf000)	//65535 to 61440
			Encoder_Sum2 = (-1)*(0xffff-Encoder_Sum2);	//about minus(-1)*(65535-Encoder_Sum1);
			
			Usart_Putnum(Encoder_Sum1);Newline();
			Usart_Putnum(Encoder_Sum2);
			//Pos_Con1_R(1316,Encoder_Sum1);Pos_Con1_L(1316,Encoder_Sum2);
			Pos_Left90_R(value,Encoder_Sum1);Pos_Left90_L(value,Encoder_Sum2);
			
			ccnt++;
			if(ccnt==15)
			{MMode=0;ccnt=0;Encoder_Sum1=0;Encoder_Sum2=0;}
			
			TIM4->CNT = 0;	TIM3->CNT = 0;
		}
		break;*/

		case 6:	// right_ccw left_ccw -> turn right45
		{
			/*-------------------right motor ccw--------------------------*/
			if((Encoder_Count1 & 0xf000) == 0xf000)	//65535 to 61440
			{
				Encoder_Count1 = (0xffff-Encoder_Count1);	//about minus(-1)*(65535-Encoder_Sum1);
				Encoder_Sum1 = Encoder_Count1 + Encoder_Sum1;
			}
			else if(Encoder_Count1 < 1000)	// forward approximately
			Encoder_Sum1 = Encoder_Sum1 - Encoder_Count1;
			/*-------------------left motor ccw--------------------------*/
			if((Encoder_Count2 & 0xf000) == 0xf000)	//65535 to 61440
			{
				Encoder_Count2 = (0xffff-Encoder_Count2);	//about minus(-1)*(65535-Encoder_Sum1);
				Encoder_Sum2 = Encoder_Count2 + Encoder_Sum2;
			}
			else if(Encoder_Count2 < 1000)	// forward approximately
			Encoder_Sum2 = Encoder_Sum2 - Encoder_Count2;
			
			Pos_Right90_R(900,Encoder_Sum1);Pos_Right90_L(900,Encoder_Sum2);
			
			ccnt++;
			if(ccnt==70)
			{MMode=0;ccnt=0;Encoder_Sum1=0;Encoder_Sum2=0;}
			TIM4->CNT = 0;	TIM3->CNT = 0;
		}
		break;
		
		case 5000:// right_cw left_cw -> turn left45
		{
			/*---------------------right motor cw-----------------------*/
			Encoder_Sum1=Encoder_Count1+Encoder_Sum1;// Encoder_Sum2+=Encoder_Count2;
			if((Encoder_Sum1 & 0xf000) == 0xf000)	//65535 to 61440
			Encoder_Sum1 = (-1)*(0xffff-Encoder_Sum1);	//about minus(-1)*(65535-Encoder_Sum1);
			/*----------------------left motor cw-----------------------*/
			Encoder_Sum2=Encoder_Count2+Encoder_Sum2;// Encoder_Sum2+=Encoder_Count2;
			if((Encoder_Sum2 & 0xf000) == 0xf000)	//65535 to 61440
			Encoder_Sum2 = (-1)*(0xffff-Encoder_Sum2);	//about minus(-1)*(65535-Encoder_Sum1);
			
			Usart_Putnum(Encoder_Sum1);Newline();
			Usart_Putnum(Encoder_Sum2);
			//Pos_Con1_R(1316,Encoder_Sum1);Pos_Con1_L(1316,Encoder_Sum2);
			Pos_Left90_R(676,Encoder_Sum1);Pos_Left90_L(626,Encoder_Sum2);
			TIM4->CNT = 0;	TIM3->CNT = 0;
			ccnt++;
			//if(ccnt==100)
			//{ccnt=0; Encoder_Sum1=0;Encoder_Sum2=0;MMode=6;}
		}
		break;

		case 5001:	// right_ccw left_ccw -> turn right45
		{
			/*-------------------right motor ccw--------------------------*/
			if((Encoder_Count1 & 0xf000) == 0xf000)	//65535 to 61440
			{
				Encoder_Count1 = (0xffff-Encoder_Count1);	//about minus(-1)*(65535-Encoder_Sum1);
				Encoder_Sum1 = Encoder_Count1 + Encoder_Sum1;
			}
			else if(Encoder_Count1 < 1000)	// forward approximately
			Encoder_Sum1 = Encoder_Sum1 - Encoder_Count1;
			/*-------------------left motor ccw--------------------------*/
			if((Encoder_Count2 & 0xf000) == 0xf000)	//65535 to 61440
			{
				Encoder_Count2 = (0xffff-Encoder_Count2);	//about minus(-1)*(65535-Encoder_Sum1);
				Encoder_Sum2 = Encoder_Count2 + Encoder_Sum2;
			}
			else if(Encoder_Count2 < 1000)	// forward approximately
			Encoder_Sum2 = Encoder_Sum2 - Encoder_Count2;
			
			Usart_Putnum(Encoder_Sum1);Newline();
			Usart_Putnum(Encoder_Sum2);
			
			//Pos_Con2_R(1316,Encoder_Sum1); Pos_Con2_L(1316,Encoder_Sum2);
			Pos_Right90_R(606,Encoder_Sum1); Pos_Right90_L(676,Encoder_Sum2);
			ccnt++;
			if(ccnt==40)
			{MMode=0;ccnt=0;Encoder_Sum1=0;Encoder_Sum2=0;}
			
			TIM4->CNT = 0;	TIM3->CNT = 0;
		}
		break;
		
	}
}

/*******************************************************************************
* Function Name  : I2C1_EV_IRQHandler
* Description    : This function handles I2C1 Event interrupt request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void I2C1_EV_IRQHandler(void)
{
}

/*******************************************************************************
* Function Name  : I2C1_ER_IRQHandler
* Description    : This function handles I2C1 Error interrupt request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void I2C1_ER_IRQHandler(void)
{
}

/*******************************************************************************
* Function Name  : I2C2_EV_IRQHandler
* Description    : This function handles I2C2 Event interrupt request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void I2C2_EV_IRQHandler(void)
{
}

/*******************************************************************************
* Function Name  : I2C2_ER_IRQHandler
* Description    : This function handles I2C2 Error interrupt request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void I2C2_ER_IRQHandler(void)
{
}

/*******************************************************************************
* Function Name  : SPI1_IRQHandler
* Description    : This function handles SPI1 global interrupt request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void SPI1_IRQHandler(void)
{
}

/*******************************************************************************
* Function Name  : SPI2_IRQHandler
* Description    : This function handles SPI2 global interrupt request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void SPI2_IRQHandler(void)
{
}

/*******************************************************************************
* Function Name  : USART1_IRQHandler
* Description    : This function handles USART1 global interrupt request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void USART1_IRQHandler(void)
{	

	USART_ClearITPendingBit(USART1, USART_IT_RXNE);
	
   if(USART_GetITStatus(USART1, USART_IT_RXNE) == RESET)
   {
	   	Rx_Buffer[data]=USART_ReceiveData(USART1);
		//SerialPutChar(Rx_Buffer[data]);
		//SerialPutChar3(Rx_Buffer[data]);
	/*	
		if(Rx_Buffer[data]>10)
		{
			if(Flag==0)
			{value = Rx_Buffer[data]*100; Flag=1;}
			else if(Flag==1)
			{value1 = Rx_Buffer[data]*100; Flag=0;}
		}*/
		if(Rx_Buffer[data]==5)
		{Flag=1;}
		if(Rx_Buffer[data]==6)
		{Flag=0;}
		if(Flag==0)
		{ SerialPutChar3(Rx_Buffer[data]);}
		if(Flag==1)
		{
			if(Rx_Buffer[data]==3)
			{
				/*for(i=0;i<ADCMAXCH;i++)	
				{	
					Dis[i] =  (11.65/( ADCConvertedValue[i]*3.3/4095)) - 0.147;
					if(ADCConvertedValue[i]<550) 
					{Dis[i]=0;}
					//if(Dis[i] > 31) Dis[i] = 30;
					Usart_Putnum(Dis[i]);//SerialPutChar(Dis[i]);
					Newline();
					SerialPutChar3(Rx_Buffer[data]);
				}
				*/
				Send_Packet(0);
				Send_Packet3(0);
			}	
			if(Rx_Buffer[data]==4)
			{
				for(i=0;i<ADCMAXCH;i++)	
				{	
					//Dis[i] =  (11.65/( ADCConvertedValue[i]*3.3/4095)) - 0.147;
					
					Usart_Putnum(Dis[i]);
					Newline();
					Usart_Putnum(ADCConvertedValue[i]);

				}
		}
		}
	
   }
		
   
	//{	
		//Rx_Buffer[data]=data;
		//data++;
		//USART_ClearITPendingBit(USART1, USART_IT_RXNE);
		/*Rx_Buffer[data]=USART_ReceiveData(USART1);
		
		Usart_Putnum(Rx_Buffer[data]);
		data++;*/
		/*
		if(Rx_Buffer[data]==1)
		Usart_Putnum(10);
		else if(Rx_Buffer[data]==2)
		Usart_Putnum(20);
		*/
	
    
	
	
}

/*******************************************************************************
* Function Name  : USART2_IRQHandler
* Description    : This function handles USART2 global interrupt request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void USART2_IRQHandler(void)
{

}

/*******************************************************************************
* Function Name  : USART3_IRQHandler
* Description    : This function handles USART3 global interrupt request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void USART3_IRQHandler(void)
{	
	 USART_ClearITPendingBit(USART3, USART_IT_RXNE);
	
   if(USART_GetITStatus(USART3, USART_IT_RXNE) == RESET)
   {
	   	Rx_Buffer[data]=USART_ReceiveData(USART3);
		
		Usart_Putnum(Rx_Buffer[data]);
		//USART1RxIntProc();
    }

	
}


/*******************************************************************************
* Function Name  : UART4_IRQHandler
* Description    : This function handles UART4 global interrupt request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void UART4_IRQHandler(void)
{

}

/*******************************************************************************
* Function Name  : EXTI15_10_IRQHandler
* Description    : This function handles External lines 15 to 10 interrupt request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void EXTI15_10_IRQHandler(void)
{    /*          
   if(EXTI_GetITStatus(EXTI_Line11) != RESET)
   { 
     //Usart_Putnum(3);
     EXTI_ClearITPendingBit(EXTI_Line11);
   }
   
   if(EXTI_GetITStatus(EXTI_Line12) != RESET)
   {
   	cnt++;
    Usart_Putnum(cnt);
     EXTI_ClearITPendingBit(EXTI_Line12);
   } */
}

/*******************************************************************************
* Function Name  : RTCAlarm_IRQHandler
* Description    : This function handles RTC Alarm interrupt request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void RTCAlarm_IRQHandler(void)
{
}

/*******************************************************************************
* Function Name  : USBWakeUp_IRQHandler
* Description    : This function handles USB WakeUp interrupt request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void USBWakeUp_IRQHandler(void)
{
#if 1
    EXTI_ClearITPendingBit(EXTI_Line18);
#endif
}

/******************* (C) COPYRIGHT 2009 STMicroelectronics *****END OF FILE****/
