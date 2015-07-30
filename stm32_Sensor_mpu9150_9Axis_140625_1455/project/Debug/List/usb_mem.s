///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.6.53336/W32 for ARM    25/Jun/2014  14:55:05 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    Libraries\STM32_USB-FS-Device_Driver\src\usb_mem.c      /
//    Command line =  D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    Libraries\STM32_USB-FS-Device_Driver\src\usb_mem.c -D   /
//                    USE_STDPERIPH_DRIVER -lcN D:\zWk.Src\Mango-M32-MPU-9150 /
//                    \m32_Sensor_mpu9150_9Axis\project\Debug\List\ -lb       /
//                    D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    project\Debug\List\ --diag_suppress Pe549,Pa082 -o      /
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
//                    project\Debug\List\usb_mem.s                            /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME usb_mem

        #define SHT_PROGBITS 0x1

        PUBLIC PMAToUserBufferCopy
        PUBLIC UserToPMABufferCopy


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
UserToPMABufferCopy:
        PUSH     {R4-R7}
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        ADDS     R3,R2,#+1
        ASRS     R3,R3,#+1
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LSLS     R12,R1,#+1
        ADD      R12,R12,#+1073741824
        ADDS     R12,R12,#+24576
        MOV      R7,R12
        MOVS     R4,R3
??UserToPMABufferCopy_0:
        CMP      R4,#+0
        BEQ.N    ??UserToPMABufferCopy_1
        LDRB     R12,[R0, #+0]
        MOV      R5,R12
        ADDS     R0,R0,#+1
        LDRB     R12,[R0, #+0]
        ORRS     R12,R5,R12, LSL #+8
        MOV      R6,R12
        STRH     R6,[R7, #+0]
        ADDS     R7,R7,#+2
        ADDS     R7,R7,#+2
        ADDS     R0,R0,#+1
        SUBS     R4,R4,#+1
        B.N      ??UserToPMABufferCopy_0
??UserToPMABufferCopy_1:
        POP      {R4-R7}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
PMAToUserBufferCopy:
        PUSH     {R4-R6}
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        ADDS     R3,R2,#+1
        ASRS     R3,R3,#+1
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LSLS     R6,R1,#+1
        ADD      R6,R6,#+1073741824
        ADDS     R6,R6,#+24576
        MOVS     R5,R6
        MOVS     R4,R3
??PMAToUserBufferCopy_0:
        CMP      R4,#+0
        BEQ.N    ??PMAToUserBufferCopy_1
        LDR      R6,[R5, #+0]
        STRH     R6,[R0, #+0]
        ADDS     R5,R5,#+4
        ADDS     R0,R0,#+1
        ADDS     R0,R0,#+1
        SUBS     R4,R4,#+1
        B.N      ??PMAToUserBufferCopy_0
??PMAToUserBufferCopy_1:
        POP      {R4-R6}
        BX       LR               ;; return

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
// 110 bytes in section .text
// 
// 110 bytes of CODE memory
//
//Errors: none
//Warnings: none
