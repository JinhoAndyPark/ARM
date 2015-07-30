///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.6.53336/W32 for ARM    25/Jun/2014  14:55:01 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    Libraries\STM32F10x_StdPeriph_Driver\src\stm32f10x_gpio /
//                    .c                                                      /
//    Command line =  D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    Libraries\STM32F10x_StdPeriph_Driver\src\stm32f10x_gpio /
//                    .c -D USE_STDPERIPH_DRIVER -lcN                         /
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
//                    project\Debug\List\stm32f10x_gpio.s                     /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm32f10x_gpio

        #define SHT_PROGBITS 0x1

        EXTERN RCC_APB2PeriphResetCmd
        EXTERN assert_failed

        PUBLIC GPIO_AFIODeInit
        PUBLIC GPIO_DeInit
        PUBLIC GPIO_ETH_MediaInterfaceConfig
        PUBLIC GPIO_EXTILineConfig
        PUBLIC GPIO_EventOutputCmd
        PUBLIC GPIO_EventOutputConfig
        PUBLIC GPIO_Init
        PUBLIC GPIO_PinLockConfig
        PUBLIC GPIO_PinRemapConfig
        PUBLIC GPIO_ReadInputData
        PUBLIC GPIO_ReadInputDataBit
        PUBLIC GPIO_ReadOutputData
        PUBLIC GPIO_ReadOutputDataBit
        PUBLIC GPIO_ResetBits
        PUBLIC GPIO_SetBits
        PUBLIC GPIO_StructInit
        PUBLIC GPIO_Write
        PUBLIC GPIO_WriteBit


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
GPIO_DeInit:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.W    R0,??DataTable12  ;; 0x40010800
        CMP      R4,R0
        BEQ.N    ??GPIO_DeInit_0
        LDR.W    R0,??DataTable12_1  ;; 0x40010c00
        CMP      R4,R0
        BEQ.N    ??GPIO_DeInit_0
        LDR.W    R0,??DataTable12_2  ;; 0x40011000
        CMP      R4,R0
        BEQ.N    ??GPIO_DeInit_0
        LDR.W    R0,??DataTable12_3  ;; 0x40011400
        CMP      R4,R0
        BEQ.N    ??GPIO_DeInit_0
        LDR.W    R0,??DataTable12_4  ;; 0x40011800
        CMP      R4,R0
        BEQ.N    ??GPIO_DeInit_0
        LDR.W    R0,??DataTable12_5  ;; 0x40011c00
        CMP      R4,R0
        BEQ.N    ??GPIO_DeInit_0
        LDR.W    R0,??DataTable13  ;; 0x40012000
        CMP      R4,R0
        BEQ.N    ??GPIO_DeInit_0
        MOVS     R1,#+117
        LDR.W    R0,??DataTable12_6
        BL       assert_failed
??GPIO_DeInit_0:
        LDR.W    R0,??DataTable12  ;; 0x40010800
        CMP      R4,R0
        BNE.N    ??GPIO_DeInit_1
        MOVS     R1,#+1
        MOVS     R0,#+4
        BL       RCC_APB2PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+4
        BL       RCC_APB2PeriphResetCmd
        B.N      ??GPIO_DeInit_2
??GPIO_DeInit_1:
        LDR.W    R0,??DataTable12_1  ;; 0x40010c00
        CMP      R4,R0
        BNE.N    ??GPIO_DeInit_3
        MOVS     R1,#+1
        MOVS     R0,#+8
        BL       RCC_APB2PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+8
        BL       RCC_APB2PeriphResetCmd
        B.N      ??GPIO_DeInit_2
??GPIO_DeInit_3:
        LDR.W    R0,??DataTable12_2  ;; 0x40011000
        CMP      R4,R0
        BNE.N    ??GPIO_DeInit_4
        MOVS     R1,#+1
        MOVS     R0,#+16
        BL       RCC_APB2PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+16
        BL       RCC_APB2PeriphResetCmd
        B.N      ??GPIO_DeInit_2
??GPIO_DeInit_4:
        LDR.W    R0,??DataTable12_3  ;; 0x40011400
        CMP      R4,R0
        BNE.N    ??GPIO_DeInit_5
        MOVS     R1,#+1
        MOVS     R0,#+32
        BL       RCC_APB2PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+32
        BL       RCC_APB2PeriphResetCmd
        B.N      ??GPIO_DeInit_2
??GPIO_DeInit_5:
        LDR.W    R0,??DataTable12_4  ;; 0x40011800
        CMP      R4,R0
        BNE.N    ??GPIO_DeInit_6
        MOVS     R1,#+1
        MOVS     R0,#+64
        BL       RCC_APB2PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+64
        BL       RCC_APB2PeriphResetCmd
        B.N      ??GPIO_DeInit_2
??GPIO_DeInit_6:
        LDR.W    R0,??DataTable12_5  ;; 0x40011c00
        CMP      R4,R0
        BNE.N    ??GPIO_DeInit_7
        MOVS     R1,#+1
        MOVS     R0,#+128
        BL       RCC_APB2PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+128
        BL       RCC_APB2PeriphResetCmd
        B.N      ??GPIO_DeInit_2
??GPIO_DeInit_7:
        LDR.W    R0,??DataTable13  ;; 0x40012000
        CMP      R4,R0
        BNE.N    ??GPIO_DeInit_2
        MOVS     R1,#+1
        MOV      R0,#+256
        BL       RCC_APB2PeriphResetCmd
        MOVS     R1,#+0
        MOV      R0,#+256
        BL       RCC_APB2PeriphResetCmd
??GPIO_DeInit_2:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
GPIO_AFIODeInit:
        PUSH     {R7,LR}
        MOVS     R1,#+1
        MOVS     R0,#+1
        BL       RCC_APB2PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+1
        BL       RCC_APB2PeriphResetCmd
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
GPIO_Init:
        PUSH     {R3-R11,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        MOVS     R7,#+0
        MOVS     R8,#+0
        MOVS     R9,#+0
        MOVS     R10,#+0
        MOVS     R11,#+0
        LDR.W    R0,??DataTable12  ;; 0x40010800
        CMP      R4,R0
        BEQ.N    ??GPIO_Init_0
        LDR.W    R0,??DataTable12_1  ;; 0x40010c00
        CMP      R4,R0
        BEQ.N    ??GPIO_Init_0
        LDR.W    R0,??DataTable12_2  ;; 0x40011000
        CMP      R4,R0
        BEQ.N    ??GPIO_Init_0
        LDR.W    R0,??DataTable12_3  ;; 0x40011400
        CMP      R4,R0
        BEQ.N    ??GPIO_Init_0
        LDR.W    R0,??DataTable12_4  ;; 0x40011800
        CMP      R4,R0
        BEQ.N    ??GPIO_Init_0
        LDR.W    R0,??DataTable12_5  ;; 0x40011c00
        CMP      R4,R0
        BEQ.N    ??GPIO_Init_0
        LDR.W    R0,??DataTable13  ;; 0x40012000
        CMP      R4,R0
        BEQ.N    ??GPIO_Init_0
        MOVS     R1,#+184
        LDR.W    R0,??DataTable15
        BL       assert_failed
??GPIO_Init_0:
        LDRB     R0,[R5, #+3]
        CMP      R0,#+0
        BEQ.N    ??GPIO_Init_1
        LDRB     R0,[R5, #+3]
        CMP      R0,#+4
        BEQ.N    ??GPIO_Init_1
        LDRB     R0,[R5, #+3]
        CMP      R0,#+40
        BEQ.N    ??GPIO_Init_1
        LDRB     R0,[R5, #+3]
        CMP      R0,#+72
        BEQ.N    ??GPIO_Init_1
        LDRB     R0,[R5, #+3]
        CMP      R0,#+20
        BEQ.N    ??GPIO_Init_1
        LDRB     R0,[R5, #+3]
        CMP      R0,#+16
        BEQ.N    ??GPIO_Init_1
        LDRB     R0,[R5, #+3]
        CMP      R0,#+28
        BEQ.N    ??GPIO_Init_1
        LDRB     R0,[R5, #+3]
        CMP      R0,#+24
        BEQ.N    ??GPIO_Init_1
        MOVS     R1,#+185
        LDR.W    R0,??DataTable15
        BL       assert_failed
??GPIO_Init_1:
        LDRH     R0,[R5, #+0]
        CMP      R0,#+0
        BNE.N    ??GPIO_Init_2
        MOVS     R1,#+186
        LDR.W    R0,??DataTable15
        BL       assert_failed
??GPIO_Init_2:
        LDRB     R0,[R5, #+3]
        ANDS     R0,R0,#0xF
        MOVS     R6,R0
        LDRB     R0,[R5, #+3]
        LSLS     R0,R0,#+27
        BPL.N    ??GPIO_Init_3
        LDRB     R0,[R5, #+2]
        CMP      R0,#+1
        BEQ.N    ??GPIO_Init_4
        LDRB     R0,[R5, #+2]
        CMP      R0,#+2
        BEQ.N    ??GPIO_Init_4
        LDRB     R0,[R5, #+2]
        CMP      R0,#+3
        BEQ.N    ??GPIO_Init_4
        MOVS     R1,#+193
        LDR.W    R0,??DataTable15
        BL       assert_failed
??GPIO_Init_4:
        LDRB     R0,[R5, #+2]
        ORRS     R6,R0,R6
??GPIO_Init_3:
        LDRB     R0,[R5, #+0]
        LSLS     R0,R0,#+24
        BEQ.N    ??GPIO_Init_5
        LDR      R0,[R4, #+0]
        MOV      R10,R0
        MOVS     R0,#+0
        MOV      R8,R0
??GPIO_Init_6:
        CMP      R8,#+8
        BCS.N    ??GPIO_Init_7
        MOVS     R0,#+1
        LSLS     R0,R0,R8
        MOV      R9,R0
        LDRH     R0,[R5, #+0]
        ANDS     R0,R9,R0
        MOVS     R7,R0
        CMP      R7,R9
        BNE.N    ??GPIO_Init_8
        LSLS     R0,R8,#+2
        MOV      R9,R0
        MOVS     R0,#+15
        LSLS     R0,R0,R9
        MOV      R11,R0
        BICS     R10,R10,R11
        LSLS     R0,R6,R9
        ORRS     R10,R0,R10
        LDRB     R0,[R5, #+3]
        CMP      R0,#+40
        BNE.N    ??GPIO_Init_9
        MOVS     R0,#+1
        LSLS     R0,R0,R8
        STR      R0,[R4, #+20]
        B.N      ??GPIO_Init_8
??GPIO_Init_9:
        LDRB     R0,[R5, #+3]
        CMP      R0,#+72
        BNE.N    ??GPIO_Init_8
        MOVS     R0,#+1
        LSLS     R0,R0,R8
        STR      R0,[R4, #+16]
??GPIO_Init_8:
        ADDS     R8,R8,#+1
        B.N      ??GPIO_Init_6
??GPIO_Init_7:
        STR      R10,[R4, #+0]
??GPIO_Init_5:
        LDRH     R0,[R5, #+0]
        MOV      R1,#+256
        CMP      R0,R1
        BCC.N    ??GPIO_Init_10
        LDR      R0,[R4, #+4]
        MOV      R10,R0
        MOVS     R0,#+0
        MOV      R8,R0
??GPIO_Init_11:
        CMP      R8,#+8
        BCS.N    ??GPIO_Init_12
        MOVS     R0,#+1
        ADDS     R1,R8,#+8
        LSLS     R0,R0,R1
        MOV      R9,R0
        LDRH     R0,[R5, #+0]
        ANDS     R0,R9,R0
        MOVS     R7,R0
        CMP      R7,R9
        BNE.N    ??GPIO_Init_13
        LSLS     R0,R8,#+2
        MOV      R9,R0
        MOVS     R0,#+15
        LSLS     R0,R0,R9
        MOV      R11,R0
        BICS     R10,R10,R11
        LSLS     R0,R6,R9
        ORRS     R10,R0,R10
        LDRB     R0,[R5, #+3]
        CMP      R0,#+40
        BNE.N    ??GPIO_Init_14
        MOVS     R0,#+1
        ADDS     R1,R8,#+8
        LSLS     R0,R0,R1
        STR      R0,[R4, #+20]
??GPIO_Init_14:
        LDRB     R0,[R5, #+3]
        CMP      R0,#+72
        BNE.N    ??GPIO_Init_13
        MOVS     R0,#+1
        ADDS     R1,R8,#+8
        LSLS     R0,R0,R1
        STR      R0,[R4, #+16]
??GPIO_Init_13:
        ADDS     R8,R8,#+1
        B.N      ??GPIO_Init_11
??GPIO_Init_12:
        STR      R10,[R4, #+4]
??GPIO_Init_10:
        POP      {R0,R4-R11,PC}   ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
GPIO_StructInit:
        MOVW     R1,#+65535
        STRH     R1,[R0, #+0]
        MOVS     R1,#+2
        STRB     R1,[R0, #+2]
        MOVS     R1,#+4
        STRB     R1,[R0, #+3]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
GPIO_ReadInputDataBit:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.W    R0,??DataTable12  ;; 0x40010800
        CMP      R4,R0
        BEQ.N    ??GPIO_ReadInputDataBit_0
        LDR.W    R0,??DataTable12_1  ;; 0x40010c00
        CMP      R4,R0
        BEQ.N    ??GPIO_ReadInputDataBit_0
        LDR.W    R0,??DataTable12_2  ;; 0x40011000
        CMP      R4,R0
        BEQ.N    ??GPIO_ReadInputDataBit_0
        LDR.W    R0,??DataTable12_3  ;; 0x40011400
        CMP      R4,R0
        BEQ.N    ??GPIO_ReadInputDataBit_0
        LDR.W    R0,??DataTable12_4  ;; 0x40011800
        CMP      R4,R0
        BEQ.N    ??GPIO_ReadInputDataBit_0
        LDR.W    R0,??DataTable12_5  ;; 0x40011c00
        CMP      R4,R0
        BEQ.N    ??GPIO_ReadInputDataBit_0
        LDR.W    R0,??DataTable13  ;; 0x40012000
        CMP      R4,R0
        BEQ.N    ??GPIO_ReadInputDataBit_0
        MOV      R1,#+292
        LDR.W    R0,??DataTable15
        BL       assert_failed
??GPIO_ReadInputDataBit_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+1
        BEQ.N    ??GPIO_ReadInputDataBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+2
        BEQ.N    ??GPIO_ReadInputDataBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+4
        BEQ.N    ??GPIO_ReadInputDataBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8
        BEQ.N    ??GPIO_ReadInputDataBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+16
        BEQ.N    ??GPIO_ReadInputDataBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+32
        BEQ.N    ??GPIO_ReadInputDataBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+64
        BEQ.N    ??GPIO_ReadInputDataBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+128
        BEQ.N    ??GPIO_ReadInputDataBit_1
        MOV      R0,#+256
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??GPIO_ReadInputDataBit_1
        MOV      R0,#+512
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??GPIO_ReadInputDataBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+1024
        BEQ.N    ??GPIO_ReadInputDataBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+2048
        BEQ.N    ??GPIO_ReadInputDataBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+4096
        BEQ.N    ??GPIO_ReadInputDataBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8192
        BEQ.N    ??GPIO_ReadInputDataBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+16384
        BEQ.N    ??GPIO_ReadInputDataBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+32768
        BEQ.N    ??GPIO_ReadInputDataBit_1
        MOVW     R1,#+293
        LDR.W    R0,??DataTable15
        BL       assert_failed
??GPIO_ReadInputDataBit_1:
        LDR      R0,[R4, #+8]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        TST      R0,R5
        BEQ.N    ??GPIO_ReadInputDataBit_2
        MOVS     R0,#+1
        MOVS     R6,R0
        B.N      ??GPIO_ReadInputDataBit_3
??GPIO_ReadInputDataBit_2:
        MOVS     R0,#+0
        MOVS     R6,R0
??GPIO_ReadInputDataBit_3:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
GPIO_ReadInputData:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.W    R0,??DataTable12  ;; 0x40010800
        CMP      R4,R0
        BEQ.N    ??GPIO_ReadInputData_0
        LDR.W    R0,??DataTable12_1  ;; 0x40010c00
        CMP      R4,R0
        BEQ.N    ??GPIO_ReadInputData_0
        LDR.W    R0,??DataTable12_2  ;; 0x40011000
        CMP      R4,R0
        BEQ.N    ??GPIO_ReadInputData_0
        LDR.W    R0,??DataTable12_3  ;; 0x40011400
        CMP      R4,R0
        BEQ.N    ??GPIO_ReadInputData_0
        LDR.W    R0,??DataTable12_4  ;; 0x40011800
        CMP      R4,R0
        BEQ.N    ??GPIO_ReadInputData_0
        LDR.W    R0,??DataTable12_5  ;; 0x40011c00
        CMP      R4,R0
        BEQ.N    ??GPIO_ReadInputData_0
        LDR.W    R0,??DataTable13  ;; 0x40012000
        CMP      R4,R0
        BEQ.N    ??GPIO_ReadInputData_0
        MOV      R1,#+314
        LDR.W    R0,??DataTable15
        BL       assert_failed
??GPIO_ReadInputData_0:
        LDR      R0,[R4, #+8]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
GPIO_ReadOutputDataBit:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.W    R0,??DataTable12  ;; 0x40010800
        CMP      R4,R0
        BEQ.N    ??GPIO_ReadOutputDataBit_0
        LDR.W    R0,??DataTable12_1  ;; 0x40010c00
        CMP      R4,R0
        BEQ.N    ??GPIO_ReadOutputDataBit_0
        LDR.W    R0,??DataTable12_2  ;; 0x40011000
        CMP      R4,R0
        BEQ.N    ??GPIO_ReadOutputDataBit_0
        LDR.W    R0,??DataTable12_3  ;; 0x40011400
        CMP      R4,R0
        BEQ.N    ??GPIO_ReadOutputDataBit_0
        LDR.W    R0,??DataTable12_4  ;; 0x40011800
        CMP      R4,R0
        BEQ.N    ??GPIO_ReadOutputDataBit_0
        LDR.W    R0,??DataTable12_5  ;; 0x40011c00
        CMP      R4,R0
        BEQ.N    ??GPIO_ReadOutputDataBit_0
        LDR.W    R0,??DataTable13  ;; 0x40012000
        CMP      R4,R0
        BEQ.N    ??GPIO_ReadOutputDataBit_0
        MOV      R1,#+330
        LDR.W    R0,??DataTable15
        BL       assert_failed
??GPIO_ReadOutputDataBit_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+1
        BEQ.N    ??GPIO_ReadOutputDataBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+2
        BEQ.N    ??GPIO_ReadOutputDataBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+4
        BEQ.N    ??GPIO_ReadOutputDataBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8
        BEQ.N    ??GPIO_ReadOutputDataBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+16
        BEQ.N    ??GPIO_ReadOutputDataBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+32
        BEQ.N    ??GPIO_ReadOutputDataBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+64
        BEQ.N    ??GPIO_ReadOutputDataBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+128
        BEQ.N    ??GPIO_ReadOutputDataBit_1
        MOV      R0,#+256
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??GPIO_ReadOutputDataBit_1
        MOV      R0,#+512
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??GPIO_ReadOutputDataBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+1024
        BEQ.N    ??GPIO_ReadOutputDataBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+2048
        BEQ.N    ??GPIO_ReadOutputDataBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+4096
        BEQ.N    ??GPIO_ReadOutputDataBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8192
        BEQ.N    ??GPIO_ReadOutputDataBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+16384
        BEQ.N    ??GPIO_ReadOutputDataBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+32768
        BEQ.N    ??GPIO_ReadOutputDataBit_1
        MOVW     R1,#+331
        LDR.W    R0,??DataTable15
        BL       assert_failed
??GPIO_ReadOutputDataBit_1:
        LDR      R0,[R4, #+12]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        TST      R0,R5
        BEQ.N    ??GPIO_ReadOutputDataBit_2
        MOVS     R0,#+1
        MOVS     R6,R0
        B.N      ??GPIO_ReadOutputDataBit_3
??GPIO_ReadOutputDataBit_2:
        MOVS     R0,#+0
        MOVS     R6,R0
??GPIO_ReadOutputDataBit_3:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
GPIO_ReadOutputData:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.W    R0,??DataTable12  ;; 0x40010800
        CMP      R4,R0
        BEQ.N    ??GPIO_ReadOutputData_0
        LDR.W    R0,??DataTable12_1  ;; 0x40010c00
        CMP      R4,R0
        BEQ.N    ??GPIO_ReadOutputData_0
        LDR.W    R0,??DataTable12_2  ;; 0x40011000
        CMP      R4,R0
        BEQ.N    ??GPIO_ReadOutputData_0
        LDR.W    R0,??DataTable12_3  ;; 0x40011400
        CMP      R4,R0
        BEQ.N    ??GPIO_ReadOutputData_0
        LDR.W    R0,??DataTable12_4  ;; 0x40011800
        CMP      R4,R0
        BEQ.N    ??GPIO_ReadOutputData_0
        LDR.W    R0,??DataTable12_5  ;; 0x40011c00
        CMP      R4,R0
        BEQ.N    ??GPIO_ReadOutputData_0
        LDR.W    R0,??DataTable13  ;; 0x40012000
        CMP      R4,R0
        BEQ.N    ??GPIO_ReadOutputData_0
        MOV      R1,#+352
        LDR.W    R0,??DataTable15
        BL       assert_failed
??GPIO_ReadOutputData_0:
        LDR      R0,[R4, #+12]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
GPIO_SetBits:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable12  ;; 0x40010800
        CMP      R4,R0
        BEQ.N    ??GPIO_SetBits_0
        LDR.W    R0,??DataTable12_1  ;; 0x40010c00
        CMP      R4,R0
        BEQ.N    ??GPIO_SetBits_0
        LDR.W    R0,??DataTable12_2  ;; 0x40011000
        CMP      R4,R0
        BEQ.N    ??GPIO_SetBits_0
        LDR.W    R0,??DataTable12_3  ;; 0x40011400
        CMP      R4,R0
        BEQ.N    ??GPIO_SetBits_0
        LDR.W    R0,??DataTable12_4  ;; 0x40011800
        CMP      R4,R0
        BEQ.N    ??GPIO_SetBits_0
        LDR.N    R0,??DataTable12_5  ;; 0x40011c00
        CMP      R4,R0
        BEQ.N    ??GPIO_SetBits_0
        LDR.W    R0,??DataTable13  ;; 0x40012000
        CMP      R4,R0
        BEQ.N    ??GPIO_SetBits_0
        MOVW     R1,#+367
        LDR.W    R0,??DataTable15
        BL       assert_failed
??GPIO_SetBits_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BNE.N    ??GPIO_SetBits_1
        MOV      R1,#+368
        LDR.W    R0,??DataTable15
        BL       assert_failed
??GPIO_SetBits_1:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        STR      R5,[R4, #+16]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
GPIO_ResetBits:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable12  ;; 0x40010800
        CMP      R4,R0
        BEQ.N    ??GPIO_ResetBits_0
        LDR.N    R0,??DataTable12_1  ;; 0x40010c00
        CMP      R4,R0
        BEQ.N    ??GPIO_ResetBits_0
        LDR.N    R0,??DataTable12_2  ;; 0x40011000
        CMP      R4,R0
        BEQ.N    ??GPIO_ResetBits_0
        LDR.N    R0,??DataTable12_3  ;; 0x40011400
        CMP      R4,R0
        BEQ.N    ??GPIO_ResetBits_0
        LDR.N    R0,??DataTable12_4  ;; 0x40011800
        CMP      R4,R0
        BEQ.N    ??GPIO_ResetBits_0
        LDR.N    R0,??DataTable12_5  ;; 0x40011c00
        CMP      R4,R0
        BEQ.N    ??GPIO_ResetBits_0
        LDR.W    R0,??DataTable13  ;; 0x40012000
        CMP      R4,R0
        BEQ.N    ??GPIO_ResetBits_0
        MOVW     R1,#+383
        LDR.W    R0,??DataTable15
        BL       assert_failed
??GPIO_ResetBits_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BNE.N    ??GPIO_ResetBits_1
        MOV      R1,#+384
        LDR.W    R0,??DataTable15
        BL       assert_failed
??GPIO_ResetBits_1:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        STR      R5,[R4, #+20]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
GPIO_WriteBit:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        LDR.N    R0,??DataTable12  ;; 0x40010800
        CMP      R4,R0
        BEQ.N    ??GPIO_WriteBit_0
        LDR.N    R0,??DataTable12_1  ;; 0x40010c00
        CMP      R4,R0
        BEQ.N    ??GPIO_WriteBit_0
        LDR.N    R0,??DataTable12_2  ;; 0x40011000
        CMP      R4,R0
        BEQ.N    ??GPIO_WriteBit_0
        LDR.N    R0,??DataTable12_3  ;; 0x40011400
        CMP      R4,R0
        BEQ.N    ??GPIO_WriteBit_0
        LDR.N    R0,??DataTable12_4  ;; 0x40011800
        CMP      R4,R0
        BEQ.N    ??GPIO_WriteBit_0
        LDR.N    R0,??DataTable12_5  ;; 0x40011c00
        CMP      R4,R0
        BEQ.N    ??GPIO_WriteBit_0
        LDR.W    R0,??DataTable13  ;; 0x40012000
        CMP      R4,R0
        BEQ.N    ??GPIO_WriteBit_0
        MOVW     R1,#+403
        LDR.W    R0,??DataTable15
        BL       assert_failed
??GPIO_WriteBit_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+1
        BEQ.N    ??GPIO_WriteBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+2
        BEQ.N    ??GPIO_WriteBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+4
        BEQ.N    ??GPIO_WriteBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8
        BEQ.N    ??GPIO_WriteBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+16
        BEQ.N    ??GPIO_WriteBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+32
        BEQ.N    ??GPIO_WriteBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+64
        BEQ.N    ??GPIO_WriteBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+128
        BEQ.N    ??GPIO_WriteBit_1
        MOV      R0,#+256
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??GPIO_WriteBit_1
        MOV      R0,#+512
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??GPIO_WriteBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+1024
        BEQ.N    ??GPIO_WriteBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+2048
        BEQ.N    ??GPIO_WriteBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+4096
        BEQ.N    ??GPIO_WriteBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8192
        BEQ.N    ??GPIO_WriteBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+16384
        BEQ.N    ??GPIO_WriteBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+32768
        BEQ.N    ??GPIO_WriteBit_1
        MOV      R1,#+404
        LDR.W    R0,??DataTable15
        BL       assert_failed
??GPIO_WriteBit_1:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??GPIO_WriteBit_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+1
        BEQ.N    ??GPIO_WriteBit_2
        MOVW     R1,#+405
        LDR.W    R0,??DataTable15
        BL       assert_failed
??GPIO_WriteBit_2:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??GPIO_WriteBit_3
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        STR      R5,[R4, #+16]
        B.N      ??GPIO_WriteBit_4
??GPIO_WriteBit_3:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        STR      R5,[R4, #+20]
??GPIO_WriteBit_4:
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
GPIO_Write:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable12  ;; 0x40010800
        CMP      R4,R0
        BEQ.N    ??GPIO_Write_0
        LDR.N    R0,??DataTable12_1  ;; 0x40010c00
        CMP      R4,R0
        BEQ.N    ??GPIO_Write_0
        LDR.N    R0,??DataTable12_2  ;; 0x40011000
        CMP      R4,R0
        BEQ.N    ??GPIO_Write_0
        LDR.N    R0,??DataTable12_3  ;; 0x40011400
        CMP      R4,R0
        BEQ.N    ??GPIO_Write_0
        LDR.N    R0,??DataTable12_4  ;; 0x40011800
        CMP      R4,R0
        BEQ.N    ??GPIO_Write_0
        LDR.N    R0,??DataTable12_5  ;; 0x40011c00
        CMP      R4,R0
        BEQ.N    ??GPIO_Write_0
        LDR.W    R0,??DataTable13  ;; 0x40012000
        CMP      R4,R0
        BEQ.N    ??GPIO_Write_0
        MOV      R1,#+426
        LDR.W    R0,??DataTable15
        BL       assert_failed
??GPIO_Write_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        STR      R5,[R4, #+12]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
GPIO_PinLockConfig:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+65536
        LDR.N    R0,??DataTable12  ;; 0x40010800
        CMP      R4,R0
        BEQ.N    ??GPIO_PinLockConfig_0
        LDR.N    R0,??DataTable12_1  ;; 0x40010c00
        CMP      R4,R0
        BEQ.N    ??GPIO_PinLockConfig_0
        LDR.N    R0,??DataTable12_2  ;; 0x40011000
        CMP      R4,R0
        BEQ.N    ??GPIO_PinLockConfig_0
        LDR.N    R0,??DataTable12_3  ;; 0x40011400
        CMP      R4,R0
        BEQ.N    ??GPIO_PinLockConfig_0
        LDR.N    R0,??DataTable12_4  ;; 0x40011800
        CMP      R4,R0
        BEQ.N    ??GPIO_PinLockConfig_0
        LDR.N    R0,??DataTable12_5  ;; 0x40011c00
        CMP      R4,R0
        BEQ.N    ??GPIO_PinLockConfig_0
        LDR.W    R0,??DataTable13  ;; 0x40012000
        CMP      R4,R0
        BEQ.N    ??GPIO_PinLockConfig_0
        MOVW     R1,#+443
        LDR.W    R0,??DataTable15
        BL       assert_failed
??GPIO_PinLockConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BNE.N    ??GPIO_PinLockConfig_1
        MOV      R1,#+444
        LDR.W    R0,??DataTable15
        BL       assert_failed
??GPIO_PinLockConfig_1:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        ORRS     R6,R5,R6
        STR      R6,[R4, #+24]
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        STR      R5,[R4, #+24]
        STR      R6,[R4, #+24]
        LDR      R0,[R4, #+24]
        MOVS     R6,R0
        LDR      R0,[R4, #+24]
        MOVS     R6,R0
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
GPIO_EventOutputConfig:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??GPIO_EventOutputConfig_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??GPIO_EventOutputConfig_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+2
        BEQ.N    ??GPIO_EventOutputConfig_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+3
        BEQ.N    ??GPIO_EventOutputConfig_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+4
        BEQ.N    ??GPIO_EventOutputConfig_0
        MOV      R1,#+472
        LDR.N    R0,??DataTable12_6
        BL       assert_failed
??GPIO_EventOutputConfig_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??GPIO_EventOutputConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??GPIO_EventOutputConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+2
        BEQ.N    ??GPIO_EventOutputConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+3
        BEQ.N    ??GPIO_EventOutputConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+4
        BEQ.N    ??GPIO_EventOutputConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+5
        BEQ.N    ??GPIO_EventOutputConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+6
        BEQ.N    ??GPIO_EventOutputConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+7
        BEQ.N    ??GPIO_EventOutputConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+8
        BEQ.N    ??GPIO_EventOutputConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+9
        BEQ.N    ??GPIO_EventOutputConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+10
        BEQ.N    ??GPIO_EventOutputConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+11
        BEQ.N    ??GPIO_EventOutputConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+12
        BEQ.N    ??GPIO_EventOutputConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+13
        BEQ.N    ??GPIO_EventOutputConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+14
        BEQ.N    ??GPIO_EventOutputConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+15
        BEQ.N    ??GPIO_EventOutputConfig_1
        MOVW     R1,#+473
        LDR.N    R0,??DataTable12_6
        BL       assert_failed
??GPIO_EventOutputConfig_1:
        LDR.W    R0,??DataTable15_1  ;; 0x40010000
        LDR      R0,[R0, #+0]
        MOVS     R6,R0
        MOVW     R0,#+65408
        ANDS     R6,R0,R6
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ORRS     R6,R6,R4, LSL #+4
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ORRS     R6,R5,R6
        LDR.W    R0,??DataTable15_1  ;; 0x40010000
        STR      R6,[R0, #+0]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
GPIO_EventOutputCmd:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??GPIO_EventOutputCmd_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??GPIO_EventOutputCmd_0
        MOV      R1,#+492
        LDR.N    R0,??DataTable12_6
        BL       assert_failed
??GPIO_EventOutputCmd_0:
        LDR.W    R0,??DataTable15_2  ;; 0x4220001c
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12:
        DC32     0x40010800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_1:
        DC32     0x40010c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_2:
        DC32     0x40011000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_3:
        DC32     0x40011400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_4:
        DC32     0x40011800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_5:
        DC32     0x40011c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_6:
        DC32     `?<Constant "D:\\\\zWk.Src\\\\Mango-M32-...">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
GPIO_PinRemapConfig:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        MOVS     R7,#+0
        MOVS     R8,#+0
        MOVS     R9,#+0
        CMP      R4,#+1
        BEQ.W    ??GPIO_PinRemapConfig_0
        CMP      R4,#+2
        BEQ.W    ??GPIO_PinRemapConfig_0
        CMP      R4,#+4
        BEQ.W    ??GPIO_PinRemapConfig_0
        CMP      R4,#+8
        BEQ.N    ??GPIO_PinRemapConfig_0
        LDR.N    R0,??DataTable15_3  ;; 0x140010
        CMP      R4,R0
        BEQ.N    ??GPIO_PinRemapConfig_0
        LDR.N    R0,??DataTable15_4  ;; 0x140030
        CMP      R4,R0
        BEQ.N    ??GPIO_PinRemapConfig_0
        LDR.N    R0,??DataTable15_5  ;; 0x160040
        CMP      R4,R0
        BEQ.N    ??GPIO_PinRemapConfig_0
        LDR.N    R0,??DataTable15_6  ;; 0x1600c0
        CMP      R4,R0
        BEQ.N    ??GPIO_PinRemapConfig_0
        LDR.N    R0,??DataTable15_7  ;; 0x180100
        CMP      R4,R0
        BEQ.N    ??GPIO_PinRemapConfig_0
        LDR.N    R0,??DataTable15_8  ;; 0x180200
        CMP      R4,R0
        BEQ.N    ??GPIO_PinRemapConfig_0
        LDR.N    R0,??DataTable15_9  ;; 0x180300
        CMP      R4,R0
        BEQ.N    ??GPIO_PinRemapConfig_0
        LDR.N    R0,??DataTable15_10  ;; 0x1a0800
        CMP      R4,R0
        BEQ.N    ??GPIO_PinRemapConfig_0
        LDR.N    R0,??DataTable15_11  ;; 0x1a0c00
        CMP      R4,R0
        BEQ.N    ??GPIO_PinRemapConfig_0
        CMP      R4,#+4096
        BEQ.N    ??GPIO_PinRemapConfig_0
        CMP      R4,#+1916928
        BEQ.N    ??GPIO_PinRemapConfig_0
        CMP      R4,#+1925120
        BEQ.N    ??GPIO_PinRemapConfig_0
        CMP      R4,#+32768
        BEQ.N    ??GPIO_PinRemapConfig_0
        LDR.N    R0,??DataTable15_12  ;; 0x200001
        CMP      R4,R0
        BEQ.N    ??GPIO_PinRemapConfig_0
        LDR.N    R0,??DataTable15_13  ;; 0x200002
        CMP      R4,R0
        BEQ.N    ??GPIO_PinRemapConfig_0
        LDR.N    R0,??DataTable15_14  ;; 0x200004
        CMP      R4,R0
        BEQ.N    ??GPIO_PinRemapConfig_0
        LDR.N    R0,??DataTable15_15  ;; 0x200008
        CMP      R4,R0
        BEQ.N    ??GPIO_PinRemapConfig_0
        LDR.N    R0,??DataTable15_16  ;; 0x200010
        CMP      R4,R0
        BEQ.N    ??GPIO_PinRemapConfig_0
        CMP      R4,#+2097184
        BEQ.N    ??GPIO_PinRemapConfig_0
        LDR.N    R0,??DataTable15_17  ;; 0x200040
        CMP      R4,R0
        BEQ.N    ??GPIO_PinRemapConfig_0
        LDR.N    R0,??DataTable15_18  ;; 0x300100
        CMP      R4,R0
        BEQ.N    ??GPIO_PinRemapConfig_0
        LDR.N    R0,??DataTable15_19  ;; 0x300200
        CMP      R4,R0
        BEQ.N    ??GPIO_PinRemapConfig_0
        LDR.N    R0,??DataTable15_20  ;; 0x300400
        CMP      R4,R0
        BEQ.N    ??GPIO_PinRemapConfig_0
        LDR.N    R0,??DataTable15_21  ;; 0x201100
        CMP      R4,R0
        BEQ.N    ??GPIO_PinRemapConfig_0
        LDR.N    R0,??DataTable15_22  ;; 0x202000
        CMP      R4,R0
        BEQ.N    ??GPIO_PinRemapConfig_0
        CMP      R4,#+2113536
        BEQ.N    ??GPIO_PinRemapConfig_0
        LDR.N    R0,??DataTable15_23  ;; 0x80000001
        CMP      R4,R0
        BEQ.N    ??GPIO_PinRemapConfig_0
        LDR.N    R0,??DataTable15_24  ;; 0x80000002
        CMP      R4,R0
        BEQ.N    ??GPIO_PinRemapConfig_0
        LDR.N    R0,??DataTable15_25  ;; 0x80000004
        CMP      R4,R0
        BEQ.N    ??GPIO_PinRemapConfig_0
        LDR.N    R0,??DataTable15_26  ;; 0x80000008
        CMP      R4,R0
        BEQ.N    ??GPIO_PinRemapConfig_0
        LDR.N    R0,??DataTable15_27  ;; 0x80000010
        CMP      R4,R0
        BEQ.N    ??GPIO_PinRemapConfig_0
        LDR.N    R0,??DataTable15_28  ;; 0x80000020
        CMP      R4,R0
        BEQ.N    ??GPIO_PinRemapConfig_0
        LDR.N    R0,??DataTable15_29  ;; 0x80000040
        CMP      R4,R0
        BEQ.N    ??GPIO_PinRemapConfig_0
        LDR.N    R0,??DataTable15_30  ;; 0x80000080
        CMP      R4,R0
        BEQ.N    ??GPIO_PinRemapConfig_0
        LDR.N    R0,??DataTable15_31  ;; 0x80000100
        CMP      R4,R0
        BEQ.N    ??GPIO_PinRemapConfig_0
        LDR.N    R0,??DataTable15_32  ;; 0x80000200
        CMP      R4,R0
        BEQ.N    ??GPIO_PinRemapConfig_0
        LDR.N    R0,??DataTable15_33  ;; 0x80000400
        CMP      R4,R0
        BEQ.N    ??GPIO_PinRemapConfig_0
        LDR.N    R0,??DataTable15_34  ;; 0x80000800
        CMP      R4,R0
        BEQ.N    ??GPIO_PinRemapConfig_0
        LDR.N    R0,??DataTable15_35  ;; 0x80001000
        CMP      R4,R0
        BEQ.N    ??GPIO_PinRemapConfig_0
        LDR.N    R0,??DataTable15_36  ;; 0x80002000
        CMP      R4,R0
        BEQ.N    ??GPIO_PinRemapConfig_0
        MOV      R1,#+560
        LDR.N    R0,??DataTable15
        BL       assert_failed
??GPIO_PinRemapConfig_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??GPIO_PinRemapConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??GPIO_PinRemapConfig_1
        MOVW     R1,#+561
        LDR.N    R0,??DataTable15
        BL       assert_failed
??GPIO_PinRemapConfig_1:
        CMP      R4,#+0
        BPL.N    ??GPIO_PinRemapConfig_2
        LDR.N    R0,??DataTable15_37  ;; 0x4001001c
        LDR      R0,[R0, #+0]
        MOV      R8,R0
        B.N      ??GPIO_PinRemapConfig_3
??GPIO_PinRemapConfig_2:
        LDR.N    R0,??DataTable15_38  ;; 0x40010004
        LDR      R0,[R0, #+0]
        MOV      R8,R0
??GPIO_PinRemapConfig_3:
        UBFX     R0,R4,#+16,#+4
        MOV      R9,R0
        UXTH     R0,R4            ;; ZeroExt  R0,R4,#+16,#+16
        MOVS     R6,R0
        ANDS     R0,R4,#0x300000
        CMP      R0,#+3145728
        BNE.N    ??GPIO_PinRemapConfig_4
        BICS     R8,R8,#0xF000000
        LDR.N    R0,??DataTable15_38  ;; 0x40010004
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0xF000000
        LDR.N    R1,??DataTable15_38  ;; 0x40010004
        STR      R0,[R1, #+0]
        B.N      ??GPIO_PinRemapConfig_5
??GPIO_PinRemapConfig_4:
        LSLS     R0,R4,#+11
        BPL.N    ??GPIO_PinRemapConfig_6
        MOVS     R0,#+3
        LSLS     R0,R0,R9
        MOVS     R7,R0
        BICS     R8,R8,R7
        ORRS     R8,R8,#0xF000000
        B.N      ??GPIO_PinRemapConfig_5
??GPIO_PinRemapConfig_6:
        LSRS     R0,R4,#+21
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R0,R0,#+4
        LSLS     R0,R6,R0
        BICS     R8,R8,R0
        ORRS     R8,R8,#0xF000000
??GPIO_PinRemapConfig_5:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??GPIO_PinRemapConfig_7
        LSRS     R0,R4,#+21
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R0,R0,#+4
        LSLS     R0,R6,R0
        ORRS     R8,R0,R8
??GPIO_PinRemapConfig_7:
        CMP      R4,#+0
        BPL.N    ??GPIO_PinRemapConfig_8
        LDR.N    R0,??DataTable15_37  ;; 0x4001001c
        STR      R8,[R0, #+0]
        B.N      ??GPIO_PinRemapConfig_9
??GPIO_PinRemapConfig_8:
        LDR.N    R0,??DataTable15_38  ;; 0x40010004
        STR      R8,[R0, #+0]
??GPIO_PinRemapConfig_9:
        POP      {R0,R4-R9,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13:
        DC32     0x40012000

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
GPIO_EXTILineConfig:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??GPIO_EXTILineConfig_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??GPIO_EXTILineConfig_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+2
        BEQ.N    ??GPIO_EXTILineConfig_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+3
        BEQ.N    ??GPIO_EXTILineConfig_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+4
        BEQ.N    ??GPIO_EXTILineConfig_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+5
        BEQ.N    ??GPIO_EXTILineConfig_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+6
        BEQ.N    ??GPIO_EXTILineConfig_0
        MOVW     R1,#+619
        LDR.N    R0,??DataTable15
        BL       assert_failed
??GPIO_EXTILineConfig_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??GPIO_EXTILineConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??GPIO_EXTILineConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+2
        BEQ.N    ??GPIO_EXTILineConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+3
        BEQ.N    ??GPIO_EXTILineConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+4
        BEQ.N    ??GPIO_EXTILineConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+5
        BEQ.N    ??GPIO_EXTILineConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+6
        BEQ.N    ??GPIO_EXTILineConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+7
        BEQ.N    ??GPIO_EXTILineConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+8
        BEQ.N    ??GPIO_EXTILineConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+9
        BEQ.N    ??GPIO_EXTILineConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+10
        BEQ.N    ??GPIO_EXTILineConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+11
        BEQ.N    ??GPIO_EXTILineConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+12
        BEQ.N    ??GPIO_EXTILineConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+13
        BEQ.N    ??GPIO_EXTILineConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+14
        BEQ.N    ??GPIO_EXTILineConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+15
        BEQ.N    ??GPIO_EXTILineConfig_1
        MOV      R1,#+620
        LDR.N    R0,??DataTable15
        BL       assert_failed
??GPIO_EXTILineConfig_1:
        MOVS     R0,#+15
        ANDS     R1,R5,#0x3
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R1,R1,#+2
        LSLS     R0,R0,R1
        MOVS     R6,R0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ASRS     R0,R5,#+2
        LDR.N    R1,??DataTable15_39  ;; 0x40010008
        LDR      R0,[R1, R0, LSL #+2]
        BICS     R0,R0,R6
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ASRS     R1,R5,#+2
        LDR.N    R2,??DataTable15_39  ;; 0x40010008
        STR      R0,[R2, R1, LSL #+2]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ASRS     R0,R5,#+2
        LDR.N    R1,??DataTable15_39  ;; 0x40010008
        LDR      R0,[R1, R0, LSL #+2]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ANDS     R1,R5,#0x3
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R1,R1,#+2
        LSLS     R1,R4,R1
        ORRS     R0,R1,R0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ASRS     R1,R5,#+2
        LDR.N    R2,??DataTable15_39  ;; 0x40010008
        STR      R0,[R2, R1, LSL #+2]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
GPIO_ETH_MediaInterfaceConfig:
        PUSH     {R4,LR}
        MOVS     R4,R0
        CMP      R4,#+0
        BEQ.N    ??GPIO_ETH_MediaInterfaceConfig_0
        CMP      R4,#+1
        BEQ.N    ??GPIO_ETH_MediaInterfaceConfig_0
        MOVW     R1,#+638
        LDR.N    R0,??DataTable15
        BL       assert_failed
??GPIO_ETH_MediaInterfaceConfig_0:
        LDR.N    R0,??DataTable15_40  ;; 0x422000dc
        STR      R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15:
        DC32     `?<Constant "D:\\\\zWk.Src\\\\Mango-M32-...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_1:
        DC32     0x40010000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_2:
        DC32     0x4220001c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_3:
        DC32     0x140010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_4:
        DC32     0x140030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_5:
        DC32     0x160040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_6:
        DC32     0x1600c0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_7:
        DC32     0x180100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_8:
        DC32     0x180200

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_9:
        DC32     0x180300

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_10:
        DC32     0x1a0800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_11:
        DC32     0x1a0c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_12:
        DC32     0x200001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_13:
        DC32     0x200002

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_14:
        DC32     0x200004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_15:
        DC32     0x200008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_16:
        DC32     0x200010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_17:
        DC32     0x200040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_18:
        DC32     0x300100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_19:
        DC32     0x300200

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_20:
        DC32     0x300400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_21:
        DC32     0x201100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_22:
        DC32     0x202000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_23:
        DC32     0x80000001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_24:
        DC32     0x80000002

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_25:
        DC32     0x80000004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_26:
        DC32     0x80000008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_27:
        DC32     0x80000010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_28:
        DC32     0x80000020

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_29:
        DC32     0x80000040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_30:
        DC32     0x80000080

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_31:
        DC32     0x80000100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_32:
        DC32     0x80000200

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_33:
        DC32     0x80000400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_34:
        DC32     0x80000800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_35:
        DC32     0x80001000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_36:
        DC32     0x80002000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_37:
        DC32     0x4001001c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_38:
        DC32     0x40010004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_39:
        DC32     0x40010008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_40:
        DC32     0x422000dc

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "D:\\\\zWk.Src\\\\Mango-M32-...">`:
        DATA
        DC8 44H, 3AH, 5CH, 7AH, 57H, 6BH, 2EH, 53H
        DC8 72H, 63H, 5CH, 4DH, 61H, 6EH, 67H, 6FH
        DC8 2DH, 4DH, 33H, 32H, 2DH, 4DH, 50H, 55H
        DC8 2DH, 39H, 31H, 35H, 30H, 5CH, 6DH, 33H
        DC8 32H, 5FH, 53H, 65H, 6EH, 73H, 6FH, 72H
        DC8 5FH, 6DH, 70H, 75H, 39H, 31H, 35H, 30H
        DC8 5FH, 39H, 41H, 78H, 69H, 73H, 5CH, 4CH
        DC8 69H, 62H, 72H, 61H, 72H, 69H, 65H, 73H
        DC8 5CH, 53H, 54H, 4DH, 33H, 32H, 46H, 31H
        DC8 30H, 78H, 5FH, 53H, 74H, 64H, 50H, 65H
        DC8 72H, 69H, 70H, 68H, 5FH, 44H, 72H, 69H
        DC8 76H, 65H, 72H, 5CH, 73H, 72H, 63H, 5CH
        DC8 73H, 74H, 6DH, 33H, 32H, 66H, 31H, 30H
        DC8 78H, 5FH, 67H, 70H, 69H, 6FH, 2EH, 63H
        DC8 0
        DC8 0, 0, 0

        END
// 
//   116 bytes in section .rodata
// 3 070 bytes in section .text
// 
// 3 070 bytes of CODE  memory
//   116 bytes of CONST memory
//
//Errors: none
//Warnings: none
