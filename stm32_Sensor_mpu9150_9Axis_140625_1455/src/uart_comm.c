/*
 * (C) COPYRIGHT 2009 CRZ
 *
 * File Name : uart_comm.c
 * Author    : POOH
 * Version   : V1.0
 * Date      : 11/21/2012
 */

/* includes */

#include "hw_config.h"
#include "uart_queue.h"

/* functions */

void UartComm_SendData_OneChar(uint8_t ch)
{
    /* Send one byte from USARTy to USARTz */
    USART_SendData(USART2, ch);

    /* Loop until USARTy DR register is empty */ 
    while(USART_GetFlagStatus(USART2, USART_FLAG_TXE) == RESET);
}

uint8_t UartComm_GetChar_Wait(void)
{
    while(TRUE == UartQueue_Comm_Is_Empty())
    {
        ;
    }
    return UartQueue_Comm_DeQueue();
}

int8_t UartComm_GetChar_Timeout(uint8_t * data_p)
{
    uint16_t timeoutVal = 500; /* 10 msec * 500 = 5 seconds */

    while(TRUE == UartQueue_Comm_Is_Empty())
    {
        Delay(10);
        if(0 == timeoutVal)
        {
            DEBUG_MSG_FUNC_ERROR;
            return -1;
        }
        else
        {
            timeoutVal --;
        }
        continue;
    }

    * data_p = UartQueue_Comm_DeQueue();
//    printf("UART GetData: %02X\n", * data_p);
    return 0;
}

