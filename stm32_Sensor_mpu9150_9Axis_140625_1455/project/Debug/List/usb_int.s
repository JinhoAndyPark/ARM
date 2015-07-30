///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.6.53336/W32 for ARM    25/Jun/2014  14:55:06 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    Libraries\STM32_USB-FS-Device_Driver\src\usb_int.c      /
//    Command line =  D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    Libraries\STM32_USB-FS-Device_Driver\src\usb_int.c -D   /
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
//                    project\Debug\List\usb_int.s                            /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME usb_int

        #define SHT_PROGBITS 0x1

        EXTERN EPindex
        EXTERN In0_Process
        EXTERN Out0_Process
        EXTERN Setup0_Process
        EXTERN pEpInt_IN
        EXTERN pEpInt_OUT
        EXTERN wIstr

        PUBLIC CTR_HP
        PUBLIC CTR_LP
        PUBLIC SaveRState
        PUBLIC SaveTState


        SECTION `.bss`:DATA:REORDER:NOROOT(1)
SaveRState:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
SaveTState:
        DS8 2

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CTR_LP:
        PUSH     {R7,LR}
        MOVS     R0,#+0
        STRH     R0,[SP, #+0]
??CTR_LP_0:
        LDR.N    R0,??DataTable1  ;; 0x40005c44
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable1_1
        STRH     R0,[R1, #+0]
        LSLS     R0,R0,#+16
        BPL.W    ??CTR_LP_1
        LDR.N    R0,??DataTable1_1
        LDRH     R0,[R0, #+0]
        ANDS     R0,R0,#0xF
        LDR.N    R1,??DataTable1_2
        STRB     R0,[R1, #+0]
        LDR.N    R0,??DataTable1_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.W    ??CTR_LP_2
        LDR.N    R0,??DataTable1_3
        LDR.N    R1,??DataTable1_4  ;; 0x40005c00
        LDR      R1,[R1, #+0]
        STRH     R1,[R0, #+0]
        LDR.N    R0,??DataTable1_3
        LDRH     R0,[R0, #+0]
        ANDS     R0,R0,#0x30
        LDR.N    R1,??DataTable1_5
        STRH     R0,[R1, #+0]
        LDR.N    R0,??DataTable1_3
        LDRH     R0,[R0, #+0]
        ANDS     R0,R0,#0x3000
        LDR.N    R1,??DataTable1_3
        STRH     R0,[R1, #+0]
        LDR.N    R1,??DataTable1_4  ;; 0x40005c00
        LDR      R1,[R1, #+0]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVW     R2,#+49087
        ANDS     R1,R2,R1
        MOVS     R0,R1
        EORS     R0,R0,#0x2000
        EORS     R0,R0,#0x20
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        ORR      R0,R0,#0x8000
        ORRS     R0,R0,#0x80
        LDR.N    R1,??DataTable1_4  ;; 0x40005c00
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable1_1
        LDRH     R0,[R0, #+0]
        LSLS     R0,R0,#+27
        BMI.N    ??CTR_LP_3
        LDR.N    R0,??DataTable1_4  ;; 0x40005c00
        LDR      R0,[R0, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MOVW     R1,#+36623
        ANDS     R0,R1,R0
        LDR.N    R1,??DataTable1_4  ;; 0x40005c00
        STR      R0,[R1, #+0]
        BL       In0_Process
        LDR.N    R1,??DataTable1_4  ;; 0x40005c00
        LDR      R1,[R1, #+0]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVW     R2,#+49087
        ANDS     R1,R2,R1
        MOVS     R0,R1
        LDR.N    R1,??DataTable1_3
        LDRH     R1,[R1, #+0]
        LSLS     R1,R1,#+19
        BPL.N    ??CTR_LP_4
        EORS     R0,R0,#0x1000
??CTR_LP_4:
        LDR.N    R1,??DataTable1_3
        LDRH     R1,[R1, #+0]
        LSLS     R1,R1,#+18
        BPL.N    ??CTR_LP_5
        EORS     R0,R0,#0x2000
??CTR_LP_5:
        LDR.N    R1,??DataTable1_5
        LDRH     R1,[R1, #+0]
        LSLS     R1,R1,#+27
        BPL.N    ??CTR_LP_6
        EORS     R0,R0,#0x10
??CTR_LP_6:
        LDR.N    R1,??DataTable1_5
        LDRH     R1,[R1, #+0]
        LSLS     R1,R1,#+26
        BPL.N    ??CTR_LP_7
        EORS     R0,R0,#0x20
??CTR_LP_7:
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        ORR      R0,R0,#0x8000
        ORRS     R0,R0,#0x80
        LDR.N    R1,??DataTable1_4  ;; 0x40005c00
        STR      R0,[R1, #+0]
        B.N      ??CTR_LP_8
??CTR_LP_3:
        LDR.N    R0,??DataTable1_4  ;; 0x40005c00
        LDR      R0,[R0, #+0]
        STRH     R0,[SP, #+0]
        LDRH     R0,[SP, #+0]
        LSLS     R0,R0,#+20
        BPL.N    ??CTR_LP_9
        LDR.N    R0,??DataTable1_4  ;; 0x40005c00
        LDR      R0,[R0, #+0]
        MOVW     R1,#+3983
        ANDS     R0,R1,R0
        LDR.N    R1,??DataTable1_4  ;; 0x40005c00
        STR      R0,[R1, #+0]
        BL       Setup0_Process
        LDR.N    R1,??DataTable1_4  ;; 0x40005c00
        LDR      R1,[R1, #+0]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVW     R2,#+49087
        ANDS     R1,R2,R1
        MOVS     R0,R1
        LDR.N    R1,??DataTable1_3
        LDRH     R1,[R1, #+0]
        LSLS     R1,R1,#+19
        BPL.N    ??CTR_LP_10
        EORS     R0,R0,#0x1000
??CTR_LP_10:
        LDR.N    R1,??DataTable1_3
        LDRH     R1,[R1, #+0]
        LSLS     R1,R1,#+18
        BPL.N    ??CTR_LP_11
        EORS     R0,R0,#0x2000
??CTR_LP_11:
        LDR.N    R1,??DataTable1_5
        LDRH     R1,[R1, #+0]
        LSLS     R1,R1,#+27
        BPL.N    ??CTR_LP_12
        EORS     R0,R0,#0x10
??CTR_LP_12:
        LDR.N    R1,??DataTable1_5
        LDRH     R1,[R1, #+0]
        LSLS     R1,R1,#+26
        BPL.N    ??CTR_LP_13
        EORS     R0,R0,#0x20
??CTR_LP_13:
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        ORR      R0,R0,#0x8000
        ORRS     R0,R0,#0x80
        LDR.N    R1,??DataTable1_4  ;; 0x40005c00
        STR      R0,[R1, #+0]
        B.N      ??CTR_LP_8
??CTR_LP_9:
        LDRH     R0,[SP, #+0]
        LSLS     R0,R0,#+16
        BPL.W    ??CTR_LP_0
        LDR.N    R0,??DataTable1_4  ;; 0x40005c00
        LDR      R0,[R0, #+0]
        MOVW     R1,#+3983
        ANDS     R0,R1,R0
        LDR.N    R1,??DataTable1_4  ;; 0x40005c00
        STR      R0,[R1, #+0]
        BL       Out0_Process
        LDR.N    R1,??DataTable1_4  ;; 0x40005c00
        LDR      R1,[R1, #+0]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVW     R2,#+49087
        ANDS     R1,R2,R1
        MOVS     R0,R1
        LDR.N    R1,??DataTable1_3
        LDRH     R1,[R1, #+0]
        LSLS     R1,R1,#+19
        BPL.N    ??CTR_LP_14
        EORS     R0,R0,#0x1000
??CTR_LP_14:
        LDR.N    R1,??DataTable1_3
        LDRH     R1,[R1, #+0]
        LSLS     R1,R1,#+18
        BPL.N    ??CTR_LP_15
        EORS     R0,R0,#0x2000
??CTR_LP_15:
        LDR.N    R1,??DataTable1_5
        LDRH     R1,[R1, #+0]
        LSLS     R1,R1,#+27
        BPL.N    ??CTR_LP_16
        EORS     R0,R0,#0x10
??CTR_LP_16:
        LDR.N    R1,??DataTable1_5
        LDRH     R1,[R1, #+0]
        LSLS     R1,R1,#+26
        BPL.N    ??CTR_LP_17
        EORS     R0,R0,#0x20
??CTR_LP_17:
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        ORR      R0,R0,#0x8000
        ORRS     R0,R0,#0x80
        LDR.N    R1,??DataTable1_4  ;; 0x40005c00
        STR      R0,[R1, #+0]
        B.N      ??CTR_LP_8
??CTR_LP_2:
        LDR.N    R0,??DataTable1_2
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable1_4  ;; 0x40005c00
        LDR      R0,[R1, R0, LSL #+2]
        STRH     R0,[SP, #+0]
        LDRH     R0,[SP, #+0]
        LSLS     R0,R0,#+16
        BPL.N    ??CTR_LP_18
        LDR.N    R0,??DataTable1_2
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable1_4  ;; 0x40005c00
        LDR      R0,[R1, R0, LSL #+2]
        MOVW     R1,#+3983
        ANDS     R0,R1,R0
        LDR.N    R1,??DataTable1_2
        LDRB     R1,[R1, #+0]
        LDR.N    R2,??DataTable1_4  ;; 0x40005c00
        STR      R0,[R2, R1, LSL #+2]
        LDR.N    R0,??DataTable1_2
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable1_6
        ADDS     R0,R1,R0, LSL #+2
        LDR      R0,[R0, #-4]
        BLX      R0
??CTR_LP_18:
        LDRH     R0,[SP, #+0]
        LSLS     R0,R0,#+24
        BPL.W    ??CTR_LP_0
        LDR.N    R0,??DataTable1_2
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable1_4  ;; 0x40005c00
        LDR      R0,[R1, R0, LSL #+2]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MOVW     R1,#+36623
        ANDS     R0,R1,R0
        LDR.N    R1,??DataTable1_2
        LDRB     R1,[R1, #+0]
        LDR.N    R2,??DataTable1_4  ;; 0x40005c00
        STR      R0,[R2, R1, LSL #+2]
        LDR.N    R0,??DataTable1_2
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable1_7
        ADDS     R0,R1,R0, LSL #+2
        LDR      R0,[R0, #-4]
        BLX      R0
        B.N      ??CTR_LP_0
??CTR_LP_1:
??CTR_LP_8:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CTR_HP:
        PUSH     {R4,LR}
        MOVS     R4,#+0
??CTR_HP_0:
        LDR.N    R0,??DataTable1  ;; 0x40005c44
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable1_1
        STRH     R0,[R1, #+0]
        LSLS     R0,R0,#+16
        BPL.N    ??CTR_HP_1
        LDR.N    R0,??DataTable1  ;; 0x40005c44
        MOVW     R1,#+32767
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable1_1
        LDRH     R0,[R0, #+0]
        ANDS     R0,R0,#0xF
        LDR.N    R1,??DataTable1_2
        STRB     R0,[R1, #+0]
        LDR.N    R0,??DataTable1_2
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable1_4  ;; 0x40005c00
        LDR      R0,[R1, R0, LSL #+2]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MOVS     R4,R0
        LSLS     R0,R4,#+16
        BPL.N    ??CTR_HP_2
        LDR.N    R0,??DataTable1_2
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable1_4  ;; 0x40005c00
        LDR      R0,[R1, R0, LSL #+2]
        MOVW     R1,#+3983
        ANDS     R0,R1,R0
        LDR.N    R1,??DataTable1_2
        LDRB     R1,[R1, #+0]
        LDR.N    R2,??DataTable1_4  ;; 0x40005c00
        STR      R0,[R2, R1, LSL #+2]
        LDR.N    R0,??DataTable1_2
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable1_6
        ADDS     R0,R1,R0, LSL #+2
        LDR      R0,[R0, #-4]
        BLX      R0
        B.N      ??CTR_HP_0
??CTR_HP_2:
        MOVS     R0,R4
        LSLS     R0,R0,#+24
        BPL.N    ??CTR_HP_0
        LDR.N    R0,??DataTable1_2
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable1_4  ;; 0x40005c00
        LDR      R0,[R1, R0, LSL #+2]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MOVW     R1,#+36623
        ANDS     R0,R1,R0
        LDR.N    R1,??DataTable1_2
        LDRB     R1,[R1, #+0]
        LDR.N    R2,??DataTable1_4  ;; 0x40005c00
        STR      R0,[R2, R1, LSL #+2]
        LDR.N    R0,??DataTable1_2
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable1_7
        ADDS     R0,R1,R0, LSL #+2
        LDR      R0,[R0, #-4]
        BLX      R0
        B.N      ??CTR_HP_0
??CTR_HP_1:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     0x40005c44

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     wIstr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     EPindex

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     SaveRState

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DC32     0x40005c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_5:
        DC32     SaveTState

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_6:
        DC32     pEpInt_OUT

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_7:
        DC32     pEpInt_IN

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
//   4 bytes in section .bss
// 742 bytes in section .text
// 
// 742 bytes of CODE memory
//   4 bytes of DATA memory
//
//Errors: none
//Warnings: none
