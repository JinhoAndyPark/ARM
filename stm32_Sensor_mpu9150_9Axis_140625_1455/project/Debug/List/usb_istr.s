///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.6.53336/W32 for ARM    25/Jun/2014  14:55:04 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    src\usb_istr.c                                          /
//    Command line =  D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    src\usb_istr.c -D USE_STDPERIPH_DRIVER -lcN             /
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
//                    project\Debug\List\usb_istr.s                           /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME usb_istr

        #define SHT_PROGBITS 0x1

        EXTERN CTR_LP
        EXTERN Device_Property
        EXTERN EP1_IN_Callback
        EXTERN EP1_OUT_Callback
        EXTERN NOP_Process
        EXTERN Resume
        EXTERN Suspend
        EXTERN fSuspendEnabled
        EXTERN wInterrupt_Mask

        PUBLIC USB_Istr
        PUBLIC bIntPackSOF
        PUBLIC pEpInt_IN
        PUBLIC pEpInt_OUT
        PUBLIC wIstr


        SECTION `.bss`:DATA:REORDER:NOROOT(1)
wIstr:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
bIntPackSOF:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(2)
pEpInt_IN:
        DATA
        DC32 EP1_IN_Callback, NOP_Process, NOP_Process, NOP_Process
        DC32 NOP_Process, NOP_Process, NOP_Process

        SECTION `.data`:DATA:REORDER:NOROOT(2)
pEpInt_OUT:
        DATA
        DC32 EP1_OUT_Callback, NOP_Process, NOP_Process, NOP_Process
        DC32 NOP_Process, NOP_Process, NOP_Process

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
USB_Istr:
        PUSH     {R7,LR}
        LDR.N    R0,??USB_Istr_0
        LDR.N    R1,??USB_Istr_0+0x4  ;; 0x40005c44
        LDR      R1,[R1, #+0]
        STRH     R1,[R0, #+0]
        LDR.N    R0,??USB_Istr_0
        LDRH     R0,[R0, #+0]
        LDR.N    R1,??USB_Istr_0+0x8
        LDRH     R1,[R1, #+0]
        ANDS     R0,R1,R0
        LSLS     R0,R0,#+16
        BPL.N    ??USB_Istr_1
        BL       CTR_LP
??USB_Istr_1:
        LDR.N    R0,??USB_Istr_0
        LDRH     R0,[R0, #+0]
        LDR.N    R1,??USB_Istr_0+0x8
        LDRH     R1,[R1, #+0]
        ANDS     R0,R1,R0
        LSLS     R0,R0,#+21
        BPL.N    ??USB_Istr_2
        LDR.N    R0,??USB_Istr_0+0x4  ;; 0x40005c44
        MOVW     R1,#+64511
        STR      R1,[R0, #+0]
        LDR.N    R0,??USB_Istr_0+0xC
        LDR      R0,[R0, #+4]
        BLX      R0
??USB_Istr_2:
        LDR.N    R0,??USB_Istr_0
        LDRH     R0,[R0, #+0]
        LDR.N    R1,??USB_Istr_0+0x8
        LDRH     R1,[R1, #+0]
        ANDS     R0,R1,R0
        LSLS     R0,R0,#+18
        BPL.N    ??USB_Istr_3
        LDR.N    R0,??USB_Istr_0+0x4  ;; 0x40005c44
        MOVW     R1,#+57343
        STR      R1,[R0, #+0]
??USB_Istr_3:
        LDR.N    R0,??USB_Istr_0
        LDRH     R0,[R0, #+0]
        LDR.N    R1,??USB_Istr_0+0x8
        LDRH     R1,[R1, #+0]
        ANDS     R0,R1,R0
        LSLS     R0,R0,#+19
        BPL.N    ??USB_Istr_4
        LDR.N    R0,??USB_Istr_0+0x4  ;; 0x40005c44
        MOVW     R1,#+61439
        STR      R1,[R0, #+0]
        MOVS     R0,#+0
        BL       Resume
??USB_Istr_4:
        LDR.N    R0,??USB_Istr_0
        LDRH     R0,[R0, #+0]
        LDR.N    R1,??USB_Istr_0+0x8
        LDRH     R1,[R1, #+0]
        ANDS     R0,R1,R0
        LSLS     R0,R0,#+20
        BPL.N    ??USB_Istr_5
        LDR.N    R0,??USB_Istr_0+0x10
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??USB_Istr_6
        BL       Suspend
        B.N      ??USB_Istr_7
??USB_Istr_6:
        MOVS     R0,#+2
        BL       Resume
??USB_Istr_7:
        LDR.N    R0,??USB_Istr_0+0x4  ;; 0x40005c44
        MOVW     R1,#+63487
        STR      R1,[R0, #+0]
??USB_Istr_5:
        LDR.N    R0,??USB_Istr_0
        LDRH     R0,[R0, #+0]
        LDR.N    R1,??USB_Istr_0+0x8
        LDRH     R1,[R1, #+0]
        ANDS     R0,R1,R0
        LSLS     R0,R0,#+22
        BPL.N    ??USB_Istr_8
        LDR.N    R0,??USB_Istr_0+0x4  ;; 0x40005c44
        MOVW     R1,#+65023
        STR      R1,[R0, #+0]
        LDR.N    R0,??USB_Istr_0+0x14
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??USB_Istr_0+0x14
        STRB     R0,[R1, #+0]
??USB_Istr_8:
        LDR.N    R0,??USB_Istr_0
        LDRH     R0,[R0, #+0]
        LDR.N    R1,??USB_Istr_0+0x8
        LDRH     R1,[R1, #+0]
        ANDS     R0,R1,R0
        LSLS     R0,R0,#+23
        BPL.N    ??USB_Istr_9
        LDR.N    R0,??USB_Istr_0+0x4  ;; 0x40005c44
        MOVW     R1,#+65279
        STR      R1,[R0, #+0]
        MOVS     R0,#+7
        BL       Resume
??USB_Istr_9:
        POP      {R0,PC}          ;; return
        Nop      
        DATA
??USB_Istr_0:
        DC32     wIstr
        DC32     0x40005c44
        DC32     wInterrupt_Mask
        DC32     Device_Property
        DC32     fSuspendEnabled
        DC32     bIntPackSOF

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
//   3 bytes in section .bss
//  56 bytes in section .data
// 236 bytes in section .text
// 
// 236 bytes of CODE memory
//  59 bytes of DATA memory
//
//Errors: none
//Warnings: none
