#ifndef __UART_COMM_H
#define __UART_COMM_H

/* Includes ------------------------------------------------------------------*/

#include "stm32f10x.h"
#include "stdio.h"

/* Exported types ------------------------------------------------------------*/

/* Exported constants --------------------------------------------------------*/

/* Exported macro ------------------------------------------------------------*/

/* Exported functions ------------------------------------------------------- */

void UartComm_SendData_OneChar(uint8_t ch);
uint8_t UartComm_GetChar_Wait(void);
int8_t UartComm_GetChar_Timeout(uint8_t * data_p);

/* External variables --------------------------------------------------------*/

#endif  /* __UART_COMM_H */
