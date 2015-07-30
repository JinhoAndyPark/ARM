///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.6.53336/W32 for ARM    25/Jun/2014  14:55:06 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    src\key.c                                               /
//    Command line =  D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    src\key.c -D USE_STDPERIPH_DRIVER -lcN                  /
//                    D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    project\Debug\List\ -lb D:\zWk.Src\Mango-M32-MPU-9150\m /
//                    32_Sensor_mpu9150_9Axis\project\Debug\List\             /
//                    --diag_suppress Pe549,Pa082 -o                          /
//                    D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    project\Debug\Obj\ --no_cse --no_unroll --no_inline     /
//                    --no_code_motion --no_tbaa --no_clustering              /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M3 -e --fpu=None --dlib_config             /
//                    "C:\Program Files (x86)\IAR Systems\Embedded Workbench  /
//                    6.0_0\arm\INC\c\DLib_Config_Full.h" -I                  /
//                    D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    project\..\inc\ -I D:\zWk.Src\Mango-M32-MPU-9150\m32_Se /
//                    nsor_mpu9150_9Axis\project\..\Sensor9Axis\ -I           /
//                    D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    project\..\PCA9555_GPIO_Ext\ -I                         /
//                    D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    project\..\OLED\ -I D:\zWk.Src\Mango-M32-MPU-9150\m32_S /
//                    ensor_mpu9150_9Axis\project\..\SRAM\ -I                 /
//                    D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    project\..\Libraries\STM32_USB-FS-Device_Driver\inc\    /
//                    -I D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Ax /
//                    is\project\..\Libraries\STM32F10x_StdPeriph_Driver\inc\ /
//                     -I D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9A /
//                    xis\project\..\Libraries\CMSIS\Device\ST\STM32F10x\Incl /
//                    ude\ -On -I "C:\Program Files (x86)\IAR                 /
//                    Systems\Embedded Workbench 6.0_0\arm\CMSIS\Include\"    /
//    List file    =  D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    project\Debug\List\key.s                                /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME key

        #define SHT_PROGBITS 0x1

        EXTERN EXTI_Init
        EXTERN GPIO_EXTILineConfig
        EXTERN GPIO_Init
        EXTERN GPIO_ReadInputDataBit
        EXTERN LED_Off_All
        EXTERN LED_Off_Blue
        EXTERN LED_Off_Red
        EXTERN LED_Off_Yellow
        EXTERN LED_On_Blue
        EXTERN LED_On_Red
        EXTERN LED_On_Yellow
        EXTERN NVIC_Init
        EXTERN RCC_APB2PeriphClockCmd
        EXTERN delay_100_milli_second

        PUBLIC KEY_Initialize
        PUBLIC KEY_Test


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
KEY_Initialize:
        PUSH     {LR}
        SUB      SP,SP,#+20
        MOVS     R1,#+1
        MOVS     R0,#+4
        BL       RCC_APB2PeriphClockCmd
        MOVS     R0,#+3
        STRH     R0,[SP, #+12]
        MOVS     R0,#+4
        STRB     R0,[SP, #+15]
        ADD      R1,SP,#+12
        LDR.N    R0,??DataTable1  ;; 0x40010800
        BL       GPIO_Init
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       GPIO_EXTILineConfig
        MOVS     R0,#+1
        STR      R0,[SP, #+4]
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
        MOVS     R0,#+12
        STRB     R0,[SP, #+9]
        MOVS     R0,#+1
        STRB     R0,[SP, #+10]
        ADD      R0,SP,#+4
        BL       EXTI_Init
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       GPIO_EXTILineConfig
        MOVS     R0,#+2
        STR      R0,[SP, #+4]
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
        MOVS     R0,#+12
        STRB     R0,[SP, #+9]
        MOVS     R0,#+1
        STRB     R0,[SP, #+10]
        ADD      R0,SP,#+4
        BL       EXTI_Init
        MOVS     R0,#+6
        STRB     R0,[SP, #+0]
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
        MOVS     R0,#+0
        STRB     R0,[SP, #+2]
        MOVS     R0,#+1
        STRB     R0,[SP, #+3]
        ADD      R0,SP,#+0
        BL       NVIC_Init
        MOVS     R0,#+7
        STRB     R0,[SP, #+0]
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
        MOVS     R0,#+1
        STRB     R0,[SP, #+2]
        MOVS     R0,#+1
        STRB     R0,[SP, #+3]
        ADD      R0,SP,#+0
        BL       NVIC_Init
        ADD      SP,SP,#+20
        POP      {PC}             ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
KEY_Test:
        PUSH     {R4,LR}
        MOVS     R4,#+0
        BL       LED_Off_All
??KEY_Test_0:
        BL       delay_100_milli_second
        MOVS     R0,R4
        ADDS     R4,R0,#+1
        LSLS     R0,R0,#+31
        BMI.N    ??KEY_Test_1
        BL       LED_On_Blue
        B.N      ??KEY_Test_2
??KEY_Test_1:
        BL       LED_Off_Blue
??KEY_Test_2:
        MOVS     R1,#+1
        LDR.N    R0,??DataTable1  ;; 0x40010800
        BL       GPIO_ReadInputDataBit
        CMP      R0,#+1
        BNE.N    ??KEY_Test_3
        BL       LED_On_Red
        B.N      ??KEY_Test_4
??KEY_Test_3:
        BL       LED_Off_Red
??KEY_Test_4:
        MOVS     R1,#+2
        LDR.N    R0,??DataTable1  ;; 0x40010800
        BL       GPIO_ReadInputDataBit
        CMP      R0,#+1
        BNE.N    ??KEY_Test_5
        BL       LED_On_Yellow
        B.N      ??KEY_Test_0
??KEY_Test_5:
        BL       LED_Off_Yellow
        B.N      ??KEY_Test_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     0x40010800

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 
// 248 bytes in section .text
// 
// 248 bytes of CODE memory
//
//Errors: none
//Warnings: none
