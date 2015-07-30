///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.6.53336/W32 for ARM    25/Jun/2014  14:55:07 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    src\seven_segment.c                                     /
//    Command line =  D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    src\seven_segment.c -D USE_STDPERIPH_DRIVER -lcN        /
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
//                    project\Debug\List\seven_segment.s                      /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME seven_segment

        #define SHT_PROGBITS 0x1

        EXTERN GPIO_Init
        EXTERN RCC_APB2PeriphClockCmd
        EXTERN delay_1_second
        EXTERN printf

        PUBLIC Off_7_SEG_AllPin
        PUBLIC Off_7_SEG_OnePin
        PUBLIC On_7_SEG_AllPin
        PUBLIC On_7_SEG_OnePin
        PUBLIC OutPut_7_SEG_Number
        PUBLIC PowerOff_7_SEG
        PUBLIC PowerOn_7_SEG
        PUBLIC Seven_Segment_Initilaze
        PUBLIC Seven_Segment_Test


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
PowerOn_7_SEG:
        LDR.N    R0,??DataTable5  ;; 0x40011014
        LDR      R0,[R0, #+0]
        MOV      R1,#+256
        ORRS     R0,R1,R0
        LDR.N    R1,??DataTable5  ;; 0x40011014
        STR      R0,[R1, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
PowerOff_7_SEG:
        LDR.N    R0,??DataTable5_1  ;; 0x40011010
        LDR      R0,[R0, #+0]
        MOV      R1,#+256
        ORRS     R0,R1,R0
        LDR.N    R1,??DataTable5_1  ;; 0x40011010
        STR      R0,[R1, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
On_7_SEG_OnePin:
        LDR.N    R1,??DataTable5  ;; 0x40011014
        LDR      R1,[R1, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        ORRS     R1,R0,R1
        LDR.N    R2,??DataTable5  ;; 0x40011014
        STR      R1,[R2, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Off_7_SEG_OnePin:
        LDR.N    R1,??DataTable5_1  ;; 0x40011010
        LDR      R1,[R1, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        ORRS     R1,R0,R1
        LDR.N    R2,??DataTable5_1  ;; 0x40011010
        STR      R1,[R2, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
On_7_SEG_AllPin:
        PUSH     {R7,LR}
        MOVS     R0,#+255
        BL       On_7_SEG_OnePin
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Off_7_SEG_AllPin:
        PUSH     {R7,LR}
        MOVS     R0,#+255
        BL       Off_7_SEG_OnePin
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
OutPut_7_SEG_Number:
        PUSH     {R4,LR}
        MOVS     R4,R0
        BL       Off_7_SEG_AllPin
        CMP      R4,#+0
        BEQ.N    ??OutPut_7_SEG_Number_0
        CMP      R4,#+2
        BEQ.N    ??OutPut_7_SEG_Number_1
        BCC.N    ??OutPut_7_SEG_Number_2
        CMP      R4,#+4
        BEQ.N    ??OutPut_7_SEG_Number_3
        BCC.N    ??OutPut_7_SEG_Number_4
        CMP      R4,#+6
        BEQ.N    ??OutPut_7_SEG_Number_5
        BCC.N    ??OutPut_7_SEG_Number_6
        CMP      R4,#+8
        BEQ.N    ??OutPut_7_SEG_Number_7
        BCC.N    ??OutPut_7_SEG_Number_8
        CMP      R4,#+9
        BEQ.N    ??OutPut_7_SEG_Number_9
        B.N      ??OutPut_7_SEG_Number_10
??OutPut_7_SEG_Number_0:
        MOVS     R0,#+63
        BL       On_7_SEG_OnePin
        B.N      ??OutPut_7_SEG_Number_10
??OutPut_7_SEG_Number_2:
        MOVS     R0,#+6
        BL       On_7_SEG_OnePin
        B.N      ??OutPut_7_SEG_Number_10
??OutPut_7_SEG_Number_1:
        MOVS     R0,#+155
        BL       On_7_SEG_OnePin
        B.N      ??OutPut_7_SEG_Number_10
??OutPut_7_SEG_Number_4:
        MOVS     R0,#+143
        BL       On_7_SEG_OnePin
        B.N      ??OutPut_7_SEG_Number_10
??OutPut_7_SEG_Number_3:
        MOVS     R0,#+166
        BL       On_7_SEG_OnePin
        B.N      ??OutPut_7_SEG_Number_10
??OutPut_7_SEG_Number_6:
        MOVS     R0,#+173
        BL       On_7_SEG_OnePin
        B.N      ??OutPut_7_SEG_Number_10
??OutPut_7_SEG_Number_5:
        MOVS     R0,#+189
        BL       On_7_SEG_OnePin
        B.N      ??OutPut_7_SEG_Number_10
??OutPut_7_SEG_Number_8:
        MOVS     R0,#+39
        BL       On_7_SEG_OnePin
        B.N      ??OutPut_7_SEG_Number_10
??OutPut_7_SEG_Number_7:
        MOVS     R0,#+191
        BL       On_7_SEG_OnePin
        B.N      ??OutPut_7_SEG_Number_10
??OutPut_7_SEG_Number_9:
        MOVS     R0,#+175
        BL       On_7_SEG_OnePin
??OutPut_7_SEG_Number_10:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Seven_Segment_Initilaze:
        PUSH     {R7,LR}
        MOVS     R1,#+1
        MOVS     R0,#+16
        BL       RCC_APB2PeriphClockCmd
        MOVW     R0,#+511
        STRH     R0,[SP, #+0]
        MOVS     R0,#+3
        STRB     R0,[SP, #+2]
        MOVS     R0,#+16
        STRB     R0,[SP, #+3]
        ADD      R1,SP,#+0
        LDR.N    R0,??DataTable5_2  ;; 0x40011000
        BL       GPIO_Init
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Seven_Segment_Test:
        PUSH     {R4,LR}
        LDR.N    R0,??DataTable5_3
        BL       printf
        BL       PowerOn_7_SEG
        BL       delay_1_second
        BL       Off_7_SEG_AllPin
        MOVS     R0,#+1
        BL       On_7_SEG_OnePin
        BL       delay_1_second
        MOVS     R0,#+2
        BL       On_7_SEG_OnePin
        BL       delay_1_second
        MOVS     R0,#+4
        BL       On_7_SEG_OnePin
        BL       delay_1_second
        MOVS     R0,#+8
        BL       On_7_SEG_OnePin
        BL       delay_1_second
        MOVS     R0,#+16
        BL       On_7_SEG_OnePin
        BL       delay_1_second
        MOVS     R0,#+32
        BL       On_7_SEG_OnePin
        BL       delay_1_second
        MOVS     R0,#+128
        BL       On_7_SEG_OnePin
        BL       delay_1_second
        MOVS     R0,#+64
        BL       On_7_SEG_OnePin
        BL       delay_1_second
        MOVS     R0,#+0
        MOVS     R4,R0
??Seven_Segment_Test_0:
        CMP      R4,#+10
        BGE.N    ??Seven_Segment_Test_1
        MOVS     R0,R4
        BL       OutPut_7_SEG_Number
        BL       delay_1_second
        ADDS     R4,R4,#+1
        B.N      ??Seven_Segment_Test_0
??Seven_Segment_Test_1:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DC32     0x40011014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_1:
        DC32     0x40011010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_2:
        DC32     0x40011000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_3:
        DC32     `?<Constant "Seven_Segment_Test\\n">`

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Seven_Segment_Test\\n">`:
        DATA
        DC8 "Seven_Segment_Test\012"

        END
// 
//  20 bytes in section .rodata
// 382 bytes in section .text
// 
// 382 bytes of CODE  memory
//  20 bytes of CONST memory
//
//Errors: none
//Warnings: none
