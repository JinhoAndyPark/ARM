///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.6.53336/W32 for ARM    25/Jun/2014  14:55:00 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    Libraries\CMSIS\Device\ST\STM32F10x\Source\Templates\sy /
//                    stem_stm32f10x.c                                        /
//    Command line =  D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    Libraries\CMSIS\Device\ST\STM32F10x\Source\Templates\sy /
//                    stem_stm32f10x.c -D USE_STDPERIPH_DRIVER -lcN           /
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
//                    project\Debug\List\system_stm32f10x.s                   /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME system_stm32f10x

        #define SHT_PROGBITS 0x1

        PUBLIC AHBPrescTable
        PUBLIC SystemCoreClock
        PUBLIC SystemCoreClockUpdate
        PUBLIC SystemInit


        SECTION `.data`:DATA:REORDER:NOROOT(2)
SystemCoreClock:
        DATA
        DC32 72000000

        SECTION `.data`:DATA:REORDER:NOROOT(2)
AHBPrescTable:
        DATA
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 3, 4, 6, 7, 8, 9

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SystemInit:
        PUSH     {R7,LR}
        LDR.N    R0,??DataTable2  ;; 0x40021000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable2  ;; 0x40021000
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable2_1  ;; 0x40021004
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_2  ;; 0xf8ff0000
        ANDS     R0,R1,R0
        LDR.N    R1,??DataTable2_1  ;; 0x40021004
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable2  ;; 0x40021000
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_3  ;; 0xfef6ffff
        ANDS     R0,R1,R0
        LDR.N    R1,??DataTable2  ;; 0x40021000
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable2  ;; 0x40021000
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x40000
        LDR.N    R1,??DataTable2  ;; 0x40021000
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable2_1  ;; 0x40021004
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x7F0000
        LDR.N    R1,??DataTable2_1  ;; 0x40021004
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable2_4  ;; 0x40021008
        MOVS     R1,#+10420224
        STR      R1,[R0, #+0]
        BL       SetSysClock
        LDR.N    R0,??DataTable2_5  ;; 0xe000ed08
        MOVS     R1,#+134217728
        STR      R1,[R0, #+0]
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SystemCoreClockUpdate:
        PUSH     {R4}
        MOVS     R0,#+0
        MOVS     R1,#+0
        MOVS     R2,#+0
        LDR.N    R3,??DataTable2_1  ;; 0x40021004
        LDR      R3,[R3, #+0]
        ANDS     R3,R3,#0xC
        MOVS     R0,R3
        MOVS     R3,R0
        CMP      R3,#+0
        BEQ.N    ??SystemCoreClockUpdate_0
        CMP      R3,#+4
        BEQ.N    ??SystemCoreClockUpdate_1
        CMP      R3,#+8
        BEQ.N    ??SystemCoreClockUpdate_2
        B.N      ??SystemCoreClockUpdate_3
??SystemCoreClockUpdate_0:
        LDR.N    R3,??DataTable2_6
        LDR.N    R4,??DataTable2_7  ;; 0x7a1200
        STR      R4,[R3, #+0]
        B.N      ??SystemCoreClockUpdate_4
??SystemCoreClockUpdate_1:
        LDR.N    R3,??DataTable2_6
        LDR.N    R4,??DataTable2_8  ;; 0xb71b00
        STR      R4,[R3, #+0]
        B.N      ??SystemCoreClockUpdate_4
??SystemCoreClockUpdate_2:
        LDR.N    R3,??DataTable2_1  ;; 0x40021004
        LDR      R3,[R3, #+0]
        ANDS     R3,R3,#0x3C0000
        MOVS     R1,R3
        LDR.N    R3,??DataTable2_1  ;; 0x40021004
        LDR      R3,[R3, #+0]
        ANDS     R3,R3,#0x10000
        MOVS     R2,R3
        LSRS     R1,R1,#+18
        ADDS     R1,R1,#+2
        CMP      R2,#+0
        BNE.N    ??SystemCoreClockUpdate_5
        LDR.N    R3,??DataTable2_9  ;; 0x3d0900
        MUL      R3,R3,R1
        LDR.N    R4,??DataTable2_6
        STR      R3,[R4, #+0]
        B.N      ??SystemCoreClockUpdate_6
??SystemCoreClockUpdate_5:
        LDR.N    R3,??DataTable2_1  ;; 0x40021004
        LDR      R3,[R3, #+0]
        LSLS     R3,R3,#+14
        BPL.N    ??SystemCoreClockUpdate_7
        LDR.N    R3,??DataTable2_10  ;; 0x5b8d80
        MUL      R3,R3,R1
        LDR.N    R4,??DataTable2_6
        STR      R3,[R4, #+0]
        B.N      ??SystemCoreClockUpdate_6
??SystemCoreClockUpdate_7:
        LDR.N    R3,??DataTable2_8  ;; 0xb71b00
        MUL      R3,R3,R1
        LDR.N    R4,??DataTable2_6
        STR      R3,[R4, #+0]
??SystemCoreClockUpdate_6:
        B.N      ??SystemCoreClockUpdate_4
??SystemCoreClockUpdate_3:
        LDR.N    R3,??DataTable2_6
        LDR.N    R4,??DataTable2_7  ;; 0x7a1200
        STR      R4,[R3, #+0]
??SystemCoreClockUpdate_4:
        LDR.N    R3,??DataTable2_1  ;; 0x40021004
        LDR      R3,[R3, #+0]
        UBFX     R3,R3,#+4,#+4
        LDR.N    R4,??DataTable2_11
        LDRB     R3,[R3, R4]
        MOVS     R0,R3
        LDR.N    R3,??DataTable2_6
        LDR      R3,[R3, #+0]
        LSRS     R3,R3,R0
        LDR.N    R4,??DataTable2_6
        STR      R3,[R4, #+0]
        POP      {R4}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SetSysClock:
        PUSH     {R7,LR}
        BL       SetSysClockTo72
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SetSysClockTo72:
        SUB      SP,SP,#+8
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        LDR.N    R0,??DataTable2  ;; 0x40021000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000
        LDR.N    R1,??DataTable2  ;; 0x40021000
        STR      R0,[R1, #+0]
??SetSysClockTo72_0:
        LDR.N    R0,??DataTable2  ;; 0x40021000
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x20000
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+4]
        ADDS     R0,R0,#+1
        STR      R0,[SP, #+4]
        LDR      R0,[SP, #+0]
        CMP      R0,#+0
        BNE.N    ??SetSysClockTo72_1
        LDR      R0,[SP, #+4]
        CMP      R0,#+1280
        BNE.N    ??SetSysClockTo72_0
??SetSysClockTo72_1:
        LDR.N    R0,??DataTable2  ;; 0x40021000
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+14
        BPL.N    ??SetSysClockTo72_2
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        B.N      ??SetSysClockTo72_3
??SetSysClockTo72_2:
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
??SetSysClockTo72_3:
        LDR      R0,[SP, #+0]
        CMP      R0,#+1
        BNE.N    ??SetSysClockTo72_4
        LDR.N    R0,??DataTable2_12  ;; 0x40022000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10
        LDR.N    R1,??DataTable2_12  ;; 0x40022000
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable2_12  ;; 0x40022000
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+2
        LSLS     R0,R0,#+2
        LDR.N    R1,??DataTable2_12  ;; 0x40022000
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable2_12  ;; 0x40022000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable2_12  ;; 0x40022000
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable2_1  ;; 0x40021004
        LDR.N    R1,??DataTable2_1  ;; 0x40021004
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable2_1  ;; 0x40021004
        LDR.N    R1,??DataTable2_1  ;; 0x40021004
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable2_1  ;; 0x40021004
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x400
        LDR.N    R1,??DataTable2_1  ;; 0x40021004
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable2_1  ;; 0x40021004
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x3F0000
        LDR.N    R1,??DataTable2_1  ;; 0x40021004
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable2_1  ;; 0x40021004
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x110000
        LDR.N    R1,??DataTable2_1  ;; 0x40021004
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable2  ;; 0x40021000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000000
        LDR.N    R1,??DataTable2  ;; 0x40021000
        STR      R0,[R1, #+0]
??SetSysClockTo72_5:
        LDR.N    R0,??DataTable2  ;; 0x40021000
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+6
        BPL.N    ??SetSysClockTo72_5
        LDR.N    R0,??DataTable2_1  ;; 0x40021004
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+2
        LSLS     R0,R0,#+2
        LDR.N    R1,??DataTable2_1  ;; 0x40021004
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable2_1  ;; 0x40021004
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable2_1  ;; 0x40021004
        STR      R0,[R1, #+0]
??SetSysClockTo72_6:
        LDR.N    R0,??DataTable2_1  ;; 0x40021004
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0xC
        CMP      R0,#+8
        BNE.N    ??SetSysClockTo72_6
??SetSysClockTo72_4:
        ADD      SP,SP,#+8
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     0x40021000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     0x40021004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     0xf8ff0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     0xfef6ffff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     0x40021008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DC32     0xe000ed08

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_6:
        DC32     SystemCoreClock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_7:
        DC32     0x7a1200

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_8:
        DC32     0xb71b00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_9:
        DC32     0x3d0900

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_10:
        DC32     0x5b8d80

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_11:
        DC32     AHBPrescTable

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_12:
        DC32     0x40022000

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
//  20 bytes in section .data
// 524 bytes in section .text
// 
// 524 bytes of CODE memory
//  20 bytes of DATA memory
//
//Errors: none
//Warnings: none
