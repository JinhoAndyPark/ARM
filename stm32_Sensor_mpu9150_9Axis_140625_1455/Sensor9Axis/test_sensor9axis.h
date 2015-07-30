#ifndef __TEST_SENSOR9AXIS_H
#define __TEST_SENSOR9AXIS_H

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

/* Includes ------------------------------------------------------------------*/

#include "stm32f10x.h"
#include "stdio.h"

/* Exported types ------------------------------------------------------------*/

/* Exported constants --------------------------------------------------------*/

/* Exported macro ------------------------------------------------------------*/

/* Exported functions ------------------------------------------------------- */

void Test_Sensor9Axis(void);

uint8_t SENSOR9AXIS_Read_Bytes(uint8_t devAddr, uint8_t regAddr, uint8_t length, uint8_t *data);
int8_t SENSOR9AXIS_Write_Bytes(uint8_t devAddr, uint8_t regAddr, uint8_t length, uint8_t *data);

/* External variables --------------------------------------------------------*/

#ifdef __cplusplus
}
#endif /* __cplusplus */

#endif  /* __TEST_SENSOR9AXIS_H */

