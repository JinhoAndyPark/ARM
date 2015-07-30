///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.6.53336/W32 for ARM    25/Jun/2014  14:55:05 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    Libraries\STM32_USB-FS-Device_Driver\src\usb_init.c     /
//    Command line =  D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    Libraries\STM32_USB-FS-Device_Driver\src\usb_init.c -D  /
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
//                    project\Debug\List\usb_init.s                           /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME usb_init

        #define SHT_PROGBITS 0x1

        EXTERN Device_Property
        EXTERN User_Standard_Requests

        PUBLIC Device_Info
        PUBLIC EPindex
        PUBLIC SaveState
        PUBLIC USB_Init
        PUBLIC pInformation
        PUBLIC pProperty
        PUBLIC pUser_Standard_Requests
        PUBLIC wInterrupt_Mask


        SECTION `.bss`:DATA:REORDER:NOROOT(0)
EPindex:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
pInformation:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
pProperty:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
SaveState:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
wInterrupt_Mask:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
Device_Info:
        DS8 28

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
pUser_Standard_Requests:
        DS8 4

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
USB_Init:
        PUSH     {R7,LR}
        LDR.N    R0,??USB_Init_0
        LDR.N    R1,??USB_Init_0+0x4
        STR      R1,[R0, #+0]
        LDR.N    R0,??USB_Init_0
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        STRB     R1,[R0, #+8]
        LDR.N    R0,??USB_Init_0+0x8
        LDR.N    R1,??USB_Init_0+0xC
        STR      R1,[R0, #+0]
        LDR.N    R0,??USB_Init_0+0x10
        LDR.N    R1,??USB_Init_0+0x14
        STR      R1,[R0, #+0]
        LDR.N    R0,??USB_Init_0+0x8
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+0]
        BLX      R0
        POP      {R0,PC}          ;; return
        Nop      
        DATA
??USB_Init_0:
        DC32     pInformation
        DC32     Device_Info
        DC32     pProperty
        DC32     Device_Property
        DC32     pUser_Standard_Requests
        DC32     User_Standard_Requests

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
// 45 bytes in section .bss
// 64 bytes in section .text
// 
// 64 bytes of CODE memory
// 45 bytes of DATA memory
//
//Errors: none
//Warnings: none
