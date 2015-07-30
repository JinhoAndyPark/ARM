///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.6.53336/W32 for ARM    25/Jun/2014  14:55:06 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    src\usb_endp.c                                          /
//    Command line =  D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    src\usb_endp.c -D USE_STDPERIPH_DRIVER -lcN             /
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
//                    project\Debug\List\usb_endp.s                           /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME usb_endp

        #define SHT_PROGBITS 0x1

        EXTERN DebugMsg_FunctionStart
        EXTERN GPIO_Write
        EXTERN GPIO_WriteBit
        EXTERN SetEPRxStatus
        EXTERN USB_SIL_Read

        PUBLIC EP1_IN_Callback
        PUBLIC EP1_OUT_Callback
        PUBLIC Receive_Buffer


        SECTION `.bss`:DATA:REORDER:NOROOT(1)
Receive_Buffer:
        DS8 2

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
EP1_IN_Callback:
        PUSH     {R7,LR}
        LDR.N    R0,??DataTable1
        BL       DebugMsg_FunctionStart
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
EP1_OUT_Callback:
        PUSH     {R4,LR}
        LDR.N    R0,??DataTable1_1
        BL       DebugMsg_FunctionStart
        LDR.N    R1,??DataTable1_2
        MOVS     R0,#+1
        BL       USB_SIL_Read
        LDR.N    R0,??DataTable1_2
        LDRB     R0,[R0, #+1]
        CMP      R0,#+0
        BNE.N    ??EP1_OUT_Callback_0
        MOVS     R0,#+1
        MOVS     R4,R0
        B.N      ??EP1_OUT_Callback_1
??EP1_OUT_Callback_0:
        MOVS     R0,#+0
        MOVS     R4,R0
??EP1_OUT_Callback_1:
        LDR.N    R0,??DataTable1_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??EP1_OUT_Callback_2
        BCC.N    ??EP1_OUT_Callback_3
        CMP      R0,#+3
        BEQ.N    ??EP1_OUT_Callback_4
        BCC.N    ??EP1_OUT_Callback_5
        B.N      ??EP1_OUT_Callback_3
??EP1_OUT_Callback_2:
        MOVS     R2,R4
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOV      R1,#+512
        LDR.N    R0,??DataTable1_3  ;; 0x40010c00
        BL       GPIO_WriteBit
        B.N      ??EP1_OUT_Callback_6
??EP1_OUT_Callback_5:
        MOVS     R2,R4
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+32
        LDR.N    R0,??DataTable1_3  ;; 0x40010c00
        BL       GPIO_WriteBit
        B.N      ??EP1_OUT_Callback_6
??EP1_OUT_Callback_4:
        MOVS     R2,R4
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOV      R1,#+256
        LDR.N    R0,??DataTable1_3  ;; 0x40010c00
        BL       GPIO_WriteBit
        B.N      ??EP1_OUT_Callback_6
??EP1_OUT_Callback_3:
        MOVW     R1,#+64735
        LDR.N    R0,??DataTable1_3  ;; 0x40010c00
        BL       GPIO_Write
??EP1_OUT_Callback_6:
        MOV      R1,#+12288
        MOVS     R0,#+1
        BL       SetEPRxStatus
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     ??__FUNCTION__

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     ??__FUNCTION___1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     Receive_Buffer

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     0x40010c00

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute char const EP1_IN_Callback::__FUNCTION__[16]
??__FUNCTION__:
        DATA
        DC8 "EP1_IN_Callback"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute char const EP1_OUT_Callback::__FUNCTION__[17]
??__FUNCTION___1:
        DATA
        DC8 "EP1_OUT_Callback"
        DC8 0, 0, 0

        END
// 
//   2 bytes in section .bss
//  36 bytes in section .rodata
// 146 bytes in section .text
// 
// 146 bytes of CODE  memory
//  36 bytes of CONST memory
//   2 bytes of DATA  memory
//
//Errors: none
//Warnings: none
