///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.6.53336/W32 for ARM    25/Jun/2014  14:55:04 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    src\usb_pwr.c                                           /
//    Command line =  D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    src\usb_pwr.c -D USE_STDPERIPH_DRIVER -lcN              /
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
//                    project\Debug\List\usb_pwr.s                            /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME usb_pwr

        #define SHT_PROGBITS 0x1

        EXTERN Enter_LowPowerMode
        EXTERN Leave_LowPowerMode
        EXTERN USB_Cable_Config
        EXTERN wInterrupt_Mask

        PUBLIC PowerOff
        PUBLIC PowerOn
        PUBLIC Resume
        PUBLIC ResumeS
        PUBLIC Resume_Init
        PUBLIC Suspend
        PUBLIC bDeviceState
        PUBLIC fSuspendEnabled


        SECTION `.bss`:DATA:REORDER:NOROOT(2)
bDeviceState:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(0)
fSuspendEnabled:
        DATA
        DC8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
ResumeS:
        DS8 4

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
PowerOn:
        MOVS     R0,#+1
        MOVS     R1,R0
        LDR.N    R0,??DataTable4  ;; 0x40005c40
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable4_1
        MOVS     R2,#+0
        STRH     R2,[R0, #+0]
        LDR.N    R0,??DataTable4  ;; 0x40005c40
        LDR.N    R2,??DataTable4_1
        LDRH     R2,[R2, #+0]
        STR      R2,[R0, #+0]
        LDR.N    R0,??DataTable4_2  ;; 0x40005c44
        MOVS     R2,#+0
        STR      R2,[R0, #+0]
        LDR.N    R0,??DataTable4_1
        MOV      R2,#+7168
        STRH     R2,[R0, #+0]
        LDR.N    R0,??DataTable4  ;; 0x40005c40
        LDR.N    R2,??DataTable4_1
        LDRH     R2,[R2, #+0]
        STR      R2,[R0, #+0]
        MOVS     R0,#+0
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
PowerOff:
        PUSH     {R7,LR}
        LDR.N    R0,??DataTable4  ;; 0x40005c40
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable4_2  ;; 0x40005c44
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        MOVS     R0,#+0
        BL       USB_Cable_Config
        LDR.N    R0,??DataTable4  ;; 0x40005c40
        MOVS     R1,#+3
        STR      R1,[R0, #+0]
        MOVS     R0,#+0
        POP      {R1,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Suspend:
        PUSH     {R4,LR}
        LDR.N    R0,??DataTable4  ;; 0x40005c40
        LDR      R0,[R0, #+0]
        MOVS     R4,R0
        ORRS     R4,R4,#0x8
        LDR.N    R0,??DataTable4  ;; 0x40005c40
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        STR      R4,[R0, #+0]
        LDR.N    R0,??DataTable4  ;; 0x40005c40
        LDR      R0,[R0, #+0]
        MOVS     R4,R0
        ORRS     R4,R4,#0x4
        LDR.N    R0,??DataTable4  ;; 0x40005c40
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        STR      R4,[R0, #+0]
        BL       Enter_LowPowerMode
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Resume_Init:
        PUSH     {R4,LR}
        LDR.N    R0,??DataTable4  ;; 0x40005c40
        LDR      R0,[R0, #+0]
        MOVS     R4,R0
        MOVW     R0,#+65531
        ANDS     R4,R0,R4
        LDR.N    R0,??DataTable4  ;; 0x40005c40
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        STR      R4,[R0, #+0]
        BL       Leave_LowPowerMode
        LDR.N    R0,??DataTable4  ;; 0x40005c40
        MOV      R1,#+48896
        STR      R1,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Resume:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+7
        BEQ.N    ??Resume_0
        LDR.N    R0,??DataTable4_3
        STRB     R4,[R0, #+0]
??Resume_0:
        LDR.N    R0,??DataTable4_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Resume_1
        CMP      R0,#+2
        BEQ.N    ??Resume_2
        BCC.N    ??Resume_3
        CMP      R0,#+4
        BEQ.N    ??Resume_4
        BCC.N    ??Resume_5
        CMP      R0,#+5
        BEQ.N    ??Resume_6
        B.N      ??Resume_7
??Resume_1:
        BL       Resume_Init
        LDR.N    R0,??DataTable4_3
        MOVS     R1,#+6
        STRB     R1,[R0, #+0]
        B.N      ??Resume_8
??Resume_3:
        BL       Resume_Init
        LDR.N    R0,??DataTable4_3
        MOVS     R1,#+4
        STRB     R1,[R0, #+0]
        B.N      ??Resume_8
??Resume_2:
        LDR.N    R0,??DataTable4_3
        MOVS     R1,#+2
        STRB     R1,[R0, #+1]
        LDR.N    R0,??DataTable4_3
        MOVS     R1,#+3
        STRB     R1,[R0, #+0]
        B.N      ??Resume_8
??Resume_5:
        LDR.N    R0,??DataTable4_3
        LDRB     R0,[R0, #+1]
        SUBS     R0,R0,#+1
        LDR.N    R1,??DataTable4_3
        STRB     R0,[R1, #+1]
        LDR.N    R0,??DataTable4_3
        LDRB     R0,[R0, #+1]
        CMP      R0,#+0
        BNE.N    ??Resume_9
        LDR.N    R0,??DataTable4_3
        MOVS     R1,#+4
        STRB     R1,[R0, #+0]
??Resume_9:
        B.N      ??Resume_8
??Resume_4:
        LDR.N    R0,??DataTable4  ;; 0x40005c40
        LDR      R0,[R0, #+0]
        MOVS     R5,R0
        ORRS     R5,R5,#0x10
        LDR.N    R0,??DataTable4  ;; 0x40005c40
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        STR      R5,[R0, #+0]
        LDR.N    R0,??DataTable4_3
        MOVS     R1,#+5
        STRB     R1,[R0, #+0]
        LDR.N    R0,??DataTable4_3
        MOVS     R1,#+10
        STRB     R1,[R0, #+1]
        B.N      ??Resume_8
??Resume_6:
        LDR.N    R0,??DataTable4_3
        LDRB     R0,[R0, #+1]
        SUBS     R0,R0,#+1
        LDR.N    R1,??DataTable4_3
        STRB     R0,[R1, #+1]
        LDR.N    R0,??DataTable4_3
        LDRB     R0,[R0, #+1]
        CMP      R0,#+0
        BNE.N    ??Resume_10
        LDR.N    R0,??DataTable4  ;; 0x40005c40
        LDR      R0,[R0, #+0]
        MOVS     R5,R0
        MOVW     R0,#+65519
        ANDS     R5,R0,R5
        LDR.N    R0,??DataTable4  ;; 0x40005c40
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        STR      R5,[R0, #+0]
        LDR.N    R0,??DataTable4_3
        MOVS     R1,#+6
        STRB     R1,[R0, #+0]
??Resume_10:
        B.N      ??Resume_8
??Resume_7:
        LDR.N    R0,??DataTable4_3
        MOVS     R1,#+6
        STRB     R1,[R0, #+0]
??Resume_8:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     0x40005c40

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     wInterrupt_Mask

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     0x40005c44

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     ResumeS

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
//   8 bytes in section .bss
//   1 byte  in section .data
// 356 bytes in section .text
// 
// 356 bytes of CODE memory
//   9 bytes of DATA memory
//
//Errors: none
//Warnings: none
