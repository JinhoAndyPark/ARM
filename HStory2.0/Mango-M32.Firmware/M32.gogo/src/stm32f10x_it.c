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
#include "stm32f10x_it.h"
#include "stm32f10x_exti.h"
#include "stm32f10x_dma.h"

#include "hw_config.h"

/* Private typedef -----------------------------------------------------------*/

/* Private define ------------------------------------------------------------*/

/* Private macro -------------------------------------------------------------*/

/* Private variables ---------------------------------------------------------*/


/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/


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
* Function Name  : TIM2_IRQHandler
* Description    : This function handles TIM2 global interrupt request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void TIM2_IRQHandler(void)
{
    TIM_ClearITPendingBit(TIM2,TIM_IT_Update);
 
    switch(starting_point)
    {
      case 0:
      {
        TIM4->CNT=0;
       // target_tmp=(int16_t)(target*(1228.0/90.0)+2867.0);
        target_tmp=2180;
        Pos_Con(target_tmp,volume_tmp,500);
        TIM3->CCR1=(uint16_t)volume_Pos_out;
      }
      break;
      case 1:
      {
        PosVel_Con(angle(target),Encoder_Count1,1000);
        
        TIM3->CCR1=(uint16_t)Pos_out;
      }
      break;
    }
    if(volume_tmp>=3950)
    {
      TIM_Cmd(TIM3, DISABLE);
    }
    else
    {
     
     if(start_flag==1)
     {
      starting_point=1;
      GPIOB->BSRR = GPIO_Pin_8|GPIO_Pin_5;
      GPIOB->BRR = GPIO_Pin_9;
      target=angle_data;
      TIM_Cmd(TIM3, ENABLE);
        rx_data[0]=0;
        rx_data[1]=0;
        rx_data[2]=0;
        rx_data[3]=0;
        rx_data[4]=0;
        rx_data[5]=0;
        rx_data[6]=0;
        rx_data[7]=0;
        rx_data[8]=0;
        rx_data[9]=0;
        rx_data[10]=0;
        rx_data[11]=0;
        rx_data[12]=0;
        rx_data[13]=0;
        rx_data[14]=0;
        rx_data[15]=0;
        rx_data[16]=0;
     
        
        data=1;   
        start_flag=0;
    }
      if(complete_flag==1)
      {
        GPIOB->BSRR = GPIO_Pin_5|GPIO_Pin_9;
        GPIOB->BRR = GPIO_Pin_8;
        rx_data[0]=0;
        rx_data[1]=0;
        rx_data[2]=0;
        rx_data[3]=0;
        rx_data[4]=0;
        rx_data[5]=0;
        rx_data[6]=0;
        rx_data[7]=0;
        rx_data[8]=0;
        rx_data[9]=0;
        rx_data[10]=0;
        rx_data[11]=0;
        rx_data[12]=0;
        rx_data[13]=0;
        rx_data[14]=0;
        rx_data[15]=0;
        rx_data[16]=0;
    
         complete_flag=0; 
      }
    }
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
   USART_ClearITPendingBit(USART3,USART_IT_RXNE);

   
   if(rx_data[0]==181)
   {
     rx_data[data++] = USART_ReceiveData(USART3);
     checksum=rx_data[0]+rx_data[1]+rx_data[2]+rx_data[3]+rx_data[4]+rx_data[5]+rx_data[6]+rx_data[7]+rx_data[8]+rx_data[9]+rx_data[10]+rx_data[11]+rx_data[12]+rx_data[13]+rx_data[14];
       
      
     rx_checksum=rx_data[15];
    if(rx_data[16]==182)
    {
     
     if(checksum==rx_checksum)
     {
        
  /* First MCU */ 
        /* if(rx_data[1]==1)
         {
           GPIOB->BRR = GPIO_Pin_9;
           GPIOB->BSRR = GPIO_Pin_5;
           angle_data=rx_data[2];
         }   
        */
        /* Second MCU */
          
       /*  if(rx_data[3]==2)
         {
           GPIOB->BRR = GPIO_Pin_9;
           GPIOB->BSRR = GPIO_Pin_5;
           angle_data=rx_data[4];
         }
         */
          /* Third MCU */
          
      /*   if(rx_data[5]==3)
         {
           GPIOB->BRR = GPIO_Pin_9;
           GPIOB->BSRR = GPIO_Pin_5;
           angle_data=rx_data[6];
         } 
        */
          /* Fourth MCU */
          
         if(rx_data[7]==4)
         {
           GPIOB->BRR = GPIO_Pin_9;
           GPIOB->BSRR = GPIO_Pin_5;
           angle_data=rx_data[8];
         } 
         
           /* Fifth MCU */
         
     /*    if(rx_data[9]==5)
         {
           GPIOB->BRR = GPIO_Pin_9;
           GPIOB->BSRR = GPIO_Pin_5;
           angle_data=rx_data[10];
         } */
         
           /* Sixh MCU */
      /*   if(rx_data[11]==6)
         {
           GPIOB->BRR = GPIO_Pin_9;
           GPIOB->BSRR = GPIO_Pin_5;
           angle_data=rx_data[12];
         }*/
         
           /* Seventh MCU */
         
       /*  if(rx_data[13]==7)
         {
           GPIOB->BRR = GPIO_Pin_9;
           GPIOB->BSRR = GPIO_Pin_5;
           angle_data=rx_data[14];
         } */
         start_flag=1;
     }
     else
     {
       data=1;
       complete_flag=1;
     }
    }
   }
   else
   {
     rx_data[0]=USART_ReceiveData(USART3);
     
   }
}

/******************* (C) COPYRIGHT 2009 STMicroelectronics *****END OF FILE****/
