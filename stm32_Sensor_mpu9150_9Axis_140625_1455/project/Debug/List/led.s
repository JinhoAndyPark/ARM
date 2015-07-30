///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.6.53336/W32 for ARM    25/Jun/2014  14:55:08 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    src\led.c                                               /
//    Command line =  D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    src\led.c -D USE_STDPERIPH_DRIVER -lcN                  /
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
//                    project\Debug\List\led.s                                /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME led

        #define SHT_PROGBITS 0x1

        EXTERN GPIO_Init
        EXTERN GPIO_ReadOutputDataBit
        EXTERN GPIO_ResetBits
        EXTERN GPIO_SetBits
        EXTERN GPIO_WriteBit
        EXTERN RCC_APB2PeriphClockCmd
        EXTERN delay_1_second

        PUBLIC LED_Initialize
        PUBLIC LED_Off_All
        PUBLIC LED_Off_Blue
        PUBLIC LED_Off_Red
        PUBLIC LED_Off_Yellow
        PUBLIC LED_OnOffAll_Mult
        PUBLIC LED_On_All
        PUBLIC LED_On_Blue
        PUBLIC LED_On_Red
        PUBLIC LED_On_Yellow
        PUBLIC LED_Test
        PUBLIC LED_Toggle_Blue
        PUBLIC LED_Toggle_Red
        PUBLIC LED_Toggle_Yellow


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
LED_On_Red:
        PUSH     {R7,LR}
        MOV      R1,#+512
        LDR.N    R0,??DataTable9  ;; 0x40010c00
        BL       GPIO_ResetBits
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
LED_Off_Red:
        PUSH     {R7,LR}
        MOV      R1,#+512
        LDR.N    R0,??DataTable9  ;; 0x40010c00
        BL       GPIO_SetBits
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
LED_Toggle_Red:
        PUSH     {R7,LR}
        MOV      R1,#+512
        LDR.N    R0,??DataTable9  ;; 0x40010c00
        BL       GPIO_ReadOutputDataBit
        RSBS     R2,R0,#+1
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOV      R1,#+512
        LDR.N    R0,??DataTable9  ;; 0x40010c00
        BL       GPIO_WriteBit
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
LED_On_Yellow:
        PUSH     {R7,LR}
        MOVS     R1,#+32
        LDR.N    R0,??DataTable9  ;; 0x40010c00
        BL       GPIO_ResetBits
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
LED_Off_Yellow:
        PUSH     {R7,LR}
        MOVS     R1,#+32
        LDR.N    R0,??DataTable9  ;; 0x40010c00
        BL       GPIO_SetBits
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
LED_Toggle_Yellow:
        PUSH     {R7,LR}
        MOVS     R1,#+32
        LDR.N    R0,??DataTable9  ;; 0x40010c00
        BL       GPIO_ReadOutputDataBit
        RSBS     R2,R0,#+1
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+32
        LDR.N    R0,??DataTable9  ;; 0x40010c00
        BL       GPIO_WriteBit
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
LED_On_Blue:
        PUSH     {R7,LR}
        MOV      R1,#+256
        LDR.N    R0,??DataTable9  ;; 0x40010c00
        BL       GPIO_ResetBits
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
LED_Off_Blue:
        PUSH     {R7,LR}
        MOV      R1,#+256
        LDR.N    R0,??DataTable9  ;; 0x40010c00
        BL       GPIO_SetBits
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
LED_Toggle_Blue:
        PUSH     {R7,LR}
        MOV      R1,#+256
        LDR.N    R0,??DataTable9  ;; 0x40010c00
        BL       GPIO_ReadOutputDataBit
        RSBS     R2,R0,#+1
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOV      R1,#+256
        LDR.N    R0,??DataTable9  ;; 0x40010c00
        BL       GPIO_WriteBit
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
LED_On_All:
        PUSH     {R7,LR}
        BL       LED_On_Red
        BL       LED_On_Yellow
        BL       LED_On_Blue
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
LED_Off_All:
        PUSH     {R7,LR}
        BL       LED_Off_Red
        BL       LED_Off_Yellow
        BL       LED_Off_Blue
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
LED_OnOffAll_Mult:
        PUSH     {R4,LR}
        MOVS     R4,R0
??LED_OnOffAll_Mult_0:
        CMP      R4,#+0
        BEQ.N    ??LED_OnOffAll_Mult_1
        BL       LED_Off_Red
        BL       LED_On_Yellow
        BL       LED_On_Blue
        BL       delay_1_second
        BL       LED_On_Red
        BL       LED_Off_Yellow
        BL       LED_On_Blue
        BL       delay_1_second
        BL       LED_On_Red
        BL       LED_On_Yellow
        BL       LED_Off_Blue
        BL       delay_1_second
        SUBS     R4,R4,#+1
        B.N      ??LED_OnOffAll_Mult_0
??LED_OnOffAll_Mult_1:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
LED_Initialize:
        PUSH     {R7,LR}
        MOVS     R1,#+1
        MOVS     R0,#+8
        BL       RCC_APB2PeriphClockCmd
        MOV      R0,#+800
        STRH     R0,[SP, #+0]
        MOVS     R0,#+3
        STRB     R0,[SP, #+2]
        MOVS     R0,#+16
        STRB     R0,[SP, #+3]
        ADD      R1,SP,#+0
        LDR.N    R0,??DataTable9  ;; 0x40010c00
        BL       GPIO_Init
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9:
        DC32     0x40010c00

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
LED_Test:
        PUSH     {R7,LR}
        BL       LED_On_All
        BL       delay_1_second
        BL       LED_Off_All
        BL       delay_1_second
        MOVS     R0,#+3
        BL       LED_OnOffAll_Mult
        POP      {R0,PC}          ;; return

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
// 330 bytes in section .text
// 
// 330 bytes of CODE memory
//
//Errors: none
//Warnings: none
