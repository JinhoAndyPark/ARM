/*
 * (C) COPYRIGHT 2014 CRZ
 *
 * File Name : test_sensor9axis.c
 * Author    : POOH
 * Version   : V1.0
 * Date      : 04/08/2014
 */

/* includes */

#include "hw_config.h"

#include "MPU6050.h"
#include "I2Cdev.h"

/* functions */

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

bool UartQueue_Serial_Is_Empty(void);
uint16_t UartQueue_Serial_DeQueue(void);

#ifdef __cplusplus
}
#endif /* __cplusplus */

extern uint8_t Buffer_Rx1[];
extern uint8_t Buffer_Tx1[];

/*
 * device operation
 */

uint8_t SENSOR9AXIS_Read_Bytes(uint8_t devAddr, uint8_t regAddr, uint8_t length, uint8_t *data)
{
    /*
     * devAddr should be shifted 1 bit to left ...
     */
    
    Status  i2cRW_status;

    /* Disable FSMC */
    RCC_AHBPeriphClockCmd(RCC_AHBPeriph_FSMC, DISABLE);

    Buffer_Tx1[0] = regAddr;

    i2cRW_status = I2C_Master_BufferWrite(I2C1, Buffer_Tx1, 1, Interrupt, devAddr << 1);
    if(Error == i2cRW_status)
    {
        DEBUG_MSG_FUNC_ERROR;
        return 0;
    }

    i2cRW_status = I2C_Master_BufferRead(I2C1, data, length, Polling, devAddr << 1);
    if(Error == i2cRW_status)
    {
        DEBUG_MSG_FUNC_ERROR;
        return 0;
    }

    /* Enable FSMC */
    RCC_AHBPeriphClockCmd(RCC_AHBPeriph_FSMC, ENABLE);

    return length;
}

int8_t SENSOR9AXIS_Write_Bytes(uint8_t devAddr, uint8_t regAddr, uint8_t length, uint8_t *data)
{
    Status  i2cRW_status;

    /* Disable FSMC */
    RCC_AHBPeriphClockCmd(RCC_AHBPeriph_FSMC, DISABLE);

    Buffer_Tx1[0] = regAddr;
    memcpy(&Buffer_Tx1[1], data, length);

    i2cRW_status = I2C_Master_BufferWrite(I2C1, Buffer_Tx1, length + 1, Interrupt, devAddr << 1);
    if(Error == i2cRW_status)
    {
        DEBUG_MSG_FUNC_ERROR;
        return -1;
    }

    /* Enable FSMC */
    RCC_AHBPeriphClockCmd(RCC_AHBPeriph_FSMC, ENABLE);

    return 0;
}

static bool g_print_menu_control_flag = true;

static void print_menu_command(void)
{
    if(true == g_print_menu_control_flag)
    {
        printf("\n---------------------\n");
        printf("Press menu key\n");
        printf("---------------------\n");
        printf("1> Get Device ID\n");
        printf("2> Get Device ID (MPU-9150 Magnetometer)\n");
        printf("3> Init & Read 9 axis data\n");
        printf("---------------------\n");
        printf("x> quit\n\n");
    }

    g_print_menu_control_flag = false;
}

MPU6050 g_MPU_9150;

void Test_Sensor9Axis(void)
{
    uint8_t ch, dataVal;

    DEBUG_MSG_FUNC_START;

    while(1)
    {
        print_menu_command();

        if(false == UartQueue_Serial_Is_Empty())
        {
            ch = UartQueue_Serial_DeQueue();
            printf("%c is selected\n\n", (char)ch);

            switch((char)ch)
            {
            case '0':
                break;

            case '1':
                dataVal = g_MPU_9150.getDeviceID();
                printf("Device ID: 0x%02X\n", dataVal);
                break;

            case '2':
            	// read mag - set i2c bypass enable pin to true to access magnetometer
            	I2Cdev::writeByte(MPU6050_DEFAULT_ADDRESS, MPU6050_RA_INT_PIN_CFG, 0x02);
            	Delay(50);
                // enable the magnetometer
            	I2Cdev::writeByte(MPU9150_RA_MAG_ADDRESS, 0x0A, 0x01);
            	Delay(50);
                I2Cdev::readByte(MPU9150_RA_MAG_ADDRESS, 0, &dataVal);
                printf("Device ID: 0x%02X\n", dataVal);
                break;

            case '3':
                {
                    int16_t ax, ay, az;
                    int16_t gx, gy, gz;
                    int16_t mx, my, mz;

                    g_MPU_9150.initialize();
                    printf("MPU9150 initialize done.\n");

                    while(1)
                    {
                        // read raw accel/gyro measurements from device
                        g_MPU_9150.getMotion9(&ax, &ay, &az, &gx, &gy, &gz, &mx, &my, &mz);
                        printf("ax: %d, ay: %d, az: %d, gx: %d, gy: %d, gz: %d, mx: %d, my: %d, mz: %d\n",
                            ax, ay, az, gx, gy, gz, mx, my, mz);
                        Delay(300);
                    }
                }
                break;
            }

            g_print_menu_control_flag = true;

            if('x' == (char)ch)
            {
                break;
            }
        }
    }

    return;
}

