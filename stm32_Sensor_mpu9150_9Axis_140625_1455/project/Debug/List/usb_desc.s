///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.6.53336/W32 for ARM    25/Jun/2014  14:55:06 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    src\usb_desc.c                                          /
//    Command line =  D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    src\usb_desc.c -D USE_STDPERIPH_DRIVER -lcN             /
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
//                    project\Debug\List\usb_desc.s                           /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME usb_desc

        #define SHT_PROGBITS 0x1

        PUBLIC CustomHID_ConfigDescriptor
        PUBLIC CustomHID_DeviceDescriptor
        PUBLIC CustomHID_ReportDescriptor
        PUBLIC CustomHID_StringLangID
        PUBLIC CustomHID_StringProduct
        PUBLIC CustomHID_StringSerial
        PUBLIC CustomHID_StringVendor


        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
CustomHID_DeviceDescriptor:
        DATA
        DC8 18, 1, 0, 2, 0, 0, 0, 64, 131, 4, 80, 87, 0, 2, 1, 2, 3, 1, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
CustomHID_ConfigDescriptor:
        DATA
        DC8 9, 2, 41, 0, 1, 1, 0, 192, 50, 9, 4, 0, 0, 2, 3, 0, 0, 0, 9, 33, 16
        DC8 1, 0, 1, 34, 163, 0, 7, 5, 129, 3, 2, 0, 32, 7, 5, 1, 3, 2, 0, 32
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
CustomHID_ReportDescriptor:
        DATA
        DC8 6, 255, 0, 9, 1, 161, 1, 133, 1, 9, 1, 21, 0, 37, 1, 117, 8, 149, 1
        DC8 177, 130, 133, 1, 9, 1, 145, 130, 133, 2, 9, 2, 21, 0, 37, 1, 117
        DC8 8, 149, 1, 177, 130, 133, 2, 9, 2, 145, 130, 133, 3, 9, 3, 21, 0
        DC8 37, 1, 117, 8, 149, 1, 177, 130, 133, 3, 9, 3, 145, 130, 133, 4, 9
        DC8 4, 21, 0, 37, 1, 117, 8, 149, 1, 177, 130, 133, 4, 9, 4, 145, 130
        DC8 133, 5, 9, 5, 21, 0, 37, 1, 117, 1, 129, 130, 9, 5, 117, 1, 177
        DC8 130, 117, 7, 129, 131, 133, 5, 117, 7, 177, 131, 133, 6, 9, 6, 21
        DC8 0, 37, 1, 117, 1, 129, 130, 9, 6, 117, 1, 177, 130, 117, 7, 129
        DC8 131, 133, 6, 117, 7, 177, 131, 133, 7, 9, 7, 21, 0, 38, 255, 0, 117
        DC8 8, 129, 130, 133, 7, 9, 7, 177, 130, 192, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
CustomHID_StringLangID:
        DATA
        DC8 4, 3, 9, 4

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
CustomHID_StringVendor:
        DATA
        DC8 38, 3, 83, 0, 84, 0, 77, 0, 105, 0, 99, 0, 114, 0, 111, 0, 101, 0
        DC8 108, 0, 101, 0, 99, 0, 116, 0, 114, 0, 111, 0, 110, 0, 105, 0, 99
        DC8 0, 115, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
CustomHID_StringProduct:
        DATA
        DC8 32, 3, 83, 0, 84, 0, 77, 0, 51, 0, 50, 0, 32, 0, 67, 0, 117, 0, 115
        DC8 0, 116, 0, 109, 0, 32, 0, 72, 0, 73, 0, 68, 0

        SECTION `.data`:DATA:REORDER:NOROOT(2)
CustomHID_StringSerial:
        DATA
        DC8 26, 3, 83, 0, 84, 0, 77, 0, 51, 0, 50, 0, 49, 0, 48, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0

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
//  28 bytes in section .data
// 304 bytes in section .rodata
// 
// 304 bytes of CONST memory
//  28 bytes of DATA  memory
//
//Errors: none
//Warnings: none
