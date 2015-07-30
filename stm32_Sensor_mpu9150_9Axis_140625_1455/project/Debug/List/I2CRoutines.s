///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.6.53336/W32 for ARM    25/Jun/2014  14:55:07 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    src\I2CRoutines.c                                       /
//    Command line =  D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    src\I2CRoutines.c -D USE_STDPERIPH_DRIVER -lcN          /
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
//                    project\Debug\List\I2CRoutines.s                        /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME I2CRoutines

        #define SHT_PROGBITS 0x1

        EXTERN DMA_ClearFlag
        EXTERN DMA_Cmd
        EXTERN DMA_DeInit
        EXTERN DMA_GetFlagStatus
        EXTERN DMA_Init
        EXTERN GPIO_Init
        EXTERN I2C_GenerateSTOP
        EXTERN I2C_Init
        EXTERN RCC_AHBPeriphClockCmd
        EXTERN RCC_APB1PeriphClockCmd
        EXTERN RCC_APB1PeriphResetCmd
        EXTERN RCC_APB2PeriphClockCmd

        PUBLIC Address
        PUBLIC Buffer_Rx1
        PUBLIC Buffer_Tx1
        PUBLIC I2CDMA_InitStructure
        PUBLIC I2CDirection
        PUBLIC I2C_DMAConfig
        PUBLIC I2C_LowLevel_Init
        PUBLIC I2C_Master_BufferRead
        PUBLIC I2C_Master_BufferWrite
        PUBLIC I2C_Slave_BufferReadWrite
        PUBLIC NumbOfBytes1
        PUBLIC NumbOfBytes2


        SECTION `.bss`:DATA:REORDER:NOROOT(2)
I2CDMA_InitStructure:
        DS8 44

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
I2CDirection:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
NumbOfBytes1:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
NumbOfBytes2:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
Address:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
Buffer_Rx1:
        DS8 1256

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
Buffer_Tx1:
        DS8 1256

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_Master_BufferRead:
        PUSH     {R2-R8,LR}
        MOVS     R5,R0
        MOVS     R6,R1
        MOVS     R7,R2
        MOV      R8,R3
        LDR      R4,[SP, #+32]
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        LDRH     R0,[R5, #+4]
        MOV      R1,#+256
        ORRS     R0,R1,R0
        STRH     R0,[R5, #+4]
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+2
        BNE.N    ??I2C_Master_BufferRead_0
        MOVS     R3,#+1
        MOVS     R2,R7
        MOVS     R1,R6
        MOVS     R0,R5
        BL       I2C_DMAConfig
        LDRH     R0,[R5, #+4]
        ORRS     R0,R0,#0x1000
        STRH     R0,[R5, #+4]
        LDRH     R0,[R5, #+4]
        ORRS     R0,R0,#0x800
        STRH     R0,[R5, #+4]
        MOVW     R0,#+65535
        STR      R0,[SP, #+0]
        LDRH     R0,[R5, #+0]
        MOV      R1,#+256
        ORRS     R0,R1,R0
        STRH     R0,[R5, #+0]
??I2C_Master_BufferRead_1:
        LDRH     R0,[R5, #+20]
        LSLS     R0,R0,#+31
        BMI.N    ??I2C_Master_BufferRead_2
        LDR      R0,[SP, #+0]
        SUBS     R1,R0,#+1
        STR      R1,[SP, #+0]
        CMP      R0,#+0
        BNE.N    ??I2C_Master_BufferRead_1
        MOVS     R0,#+0
        B.N      ??I2C_Master_BufferRead_3
??I2C_Master_BufferRead_2:
        MOVW     R0,#+65535
        STR      R0,[SP, #+0]
        ORRS     R4,R4,#0x1
        LDR.W    R0,??DataTable3
        STRB     R4,[R0, #+0]
        LDR.W    R0,??DataTable3
        LDRB     R0,[R0, #+0]
        STRH     R0,[R5, #+16]
??I2C_Master_BufferRead_4:
        LDRH     R0,[R5, #+20]
        LSLS     R0,R0,#+30
        BMI.N    ??I2C_Master_BufferRead_5
        LDR      R0,[SP, #+0]
        SUBS     R1,R0,#+1
        STR      R1,[SP, #+0]
        CMP      R0,#+0
        BNE.N    ??I2C_Master_BufferRead_4
        MOVS     R0,#+0
        B.N      ??I2C_Master_BufferRead_3
??I2C_Master_BufferRead_5:
        LDRH     R0,[R5, #+24]
        STR      R0,[SP, #+4]
        LDR.W    R0,??DataTable3_1  ;; 0x40005400
        CMP      R5,R0
        BNE.N    ??I2C_Master_BufferRead_6
??I2C_Master_BufferRead_7:
        MOVS     R0,#+33554432
        BL       DMA_GetFlagStatus
        CMP      R0,#+0
        BEQ.N    ??I2C_Master_BufferRead_7
        MOVS     R1,#+0
        LDR.W    R0,??DataTable3_2  ;; 0x40020080
        BL       DMA_Cmd
        MOVS     R0,#+33554432
        BL       DMA_ClearFlag
        B.N      ??I2C_Master_BufferRead_8
??I2C_Master_BufferRead_6:
        MOVS     R0,#+131072
        BL       DMA_GetFlagStatus
        CMP      R0,#+0
        BEQ.N    ??I2C_Master_BufferRead_6
        MOVS     R1,#+0
        LDR.W    R0,??DataTable3_3  ;; 0x40020058
        BL       DMA_Cmd
        MOVS     R0,#+131072
        BL       DMA_ClearFlag
??I2C_Master_BufferRead_8:
        LDRH     R0,[R5, #+0]
        MOV      R1,#+512
        ORRS     R0,R1,R0
        STRH     R0,[R5, #+0]
??I2C_Master_BufferRead_9:
        LDRH     R0,[R5, #+0]
        LSLS     R0,R0,#+22
        BMI.N    ??I2C_Master_BufferRead_9
        B.N      ??I2C_Master_BufferRead_10
??I2C_Master_BufferRead_0:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BNE.W    ??I2C_Master_BufferRead_11
        CMP      R7,#+1
        BNE.N    ??I2C_Master_BufferRead_12
        MOVW     R0,#+65535
        STR      R0,[SP, #+0]
        LDRH     R0,[R5, #+0]
        MOV      R1,#+256
        ORRS     R0,R1,R0
        STRH     R0,[R5, #+0]
??I2C_Master_BufferRead_13:
        LDRH     R0,[R5, #+20]
        LSLS     R0,R0,#+31
        BMI.N    ??I2C_Master_BufferRead_14
        LDR      R0,[SP, #+0]
        SUBS     R1,R0,#+1
        STR      R1,[SP, #+0]
        CMP      R0,#+0
        BNE.N    ??I2C_Master_BufferRead_13
        MOVS     R0,#+0
        B.N      ??I2C_Master_BufferRead_3
??I2C_Master_BufferRead_14:
        ORRS     R4,R4,#0x1
        LDR.W    R0,??DataTable3
        STRB     R4,[R0, #+0]
        LDR.W    R0,??DataTable3
        LDRB     R0,[R0, #+0]
        STRH     R0,[R5, #+16]
        MOVW     R0,#+65535
        STR      R0,[SP, #+0]
??I2C_Master_BufferRead_15:
        LDRH     R0,[R5, #+20]
        LSLS     R0,R0,#+30
        BMI.N    ??I2C_Master_BufferRead_16
        LDR      R0,[SP, #+0]
        SUBS     R1,R0,#+1
        STR      R1,[SP, #+0]
        CMP      R0,#+0
        BNE.N    ??I2C_Master_BufferRead_15
        MOVS     R0,#+0
        B.N      ??I2C_Master_BufferRead_3
??I2C_Master_BufferRead_16:
        LDRH     R0,[R5, #+0]
        MOVW     R1,#+64511
        ANDS     R0,R1,R0
        STRH     R0,[R5, #+0]
        CPSID    I
        LDRH     R0,[R5, #+24]
        STR      R0,[SP, #+4]
        LDRH     R0,[R5, #+0]
        MOV      R1,#+512
        ORRS     R0,R1,R0
        STRH     R0,[R5, #+0]
        CPSIE    I
??I2C_Master_BufferRead_17:
        LDRH     R0,[R5, #+20]
        LSLS     R0,R0,#+25
        BPL.N    ??I2C_Master_BufferRead_17
        LDRH     R0,[R5, #+16]
        STRB     R0,[R6, #+0]
??I2C_Master_BufferRead_18:
        LDRH     R0,[R5, #+0]
        LSLS     R0,R0,#+22
        BMI.N    ??I2C_Master_BufferRead_18
        LDRH     R0,[R5, #+0]
        ORRS     R0,R0,#0x400
        STRH     R0,[R5, #+0]
        B.N      ??I2C_Master_BufferRead_10
??I2C_Master_BufferRead_12:
        CMP      R7,#+2
        BNE.N    ??I2C_Master_BufferRead_19
        LDRH     R0,[R5, #+0]
        ORRS     R0,R0,#0x800
        STRH     R0,[R5, #+0]
        MOVW     R0,#+65535
        STR      R0,[SP, #+0]
        LDRH     R0,[R5, #+0]
        MOV      R1,#+256
        ORRS     R0,R1,R0
        STRH     R0,[R5, #+0]
??I2C_Master_BufferRead_20:
        LDRH     R0,[R5, #+20]
        LSLS     R0,R0,#+31
        BMI.N    ??I2C_Master_BufferRead_21
        LDR      R0,[SP, #+0]
        SUBS     R1,R0,#+1
        STR      R1,[SP, #+0]
        CMP      R0,#+0
        BNE.N    ??I2C_Master_BufferRead_20
        MOVS     R0,#+0
        B.N      ??I2C_Master_BufferRead_3
??I2C_Master_BufferRead_21:
        MOVW     R0,#+65535
        STR      R0,[SP, #+0]
        ORRS     R4,R4,#0x1
        LDR.W    R0,??DataTable3
        STRB     R4,[R0, #+0]
        LDR.W    R0,??DataTable3
        LDRB     R0,[R0, #+0]
        STRH     R0,[R5, #+16]
??I2C_Master_BufferRead_22:
        LDRH     R0,[R5, #+20]
        LSLS     R0,R0,#+30
        BMI.N    ??I2C_Master_BufferRead_23
        LDR      R0,[SP, #+0]
        SUBS     R1,R0,#+1
        STR      R1,[SP, #+0]
        CMP      R0,#+0
        BNE.N    ??I2C_Master_BufferRead_22
        MOVS     R0,#+0
        B.N      ??I2C_Master_BufferRead_3
??I2C_Master_BufferRead_23:
        CPSID    I
        LDRH     R0,[R5, #+24]
        STR      R0,[SP, #+4]
        LDRH     R0,[R5, #+0]
        MOVW     R1,#+64511
        ANDS     R0,R1,R0
        STRH     R0,[R5, #+0]
        CPSIE    I
??I2C_Master_BufferRead_24:
        LDRH     R0,[R5, #+20]
        LSLS     R0,R0,#+29
        BPL.N    ??I2C_Master_BufferRead_24
        CPSID    I
        MOVS     R1,#+1
        MOVS     R0,R5
        BL       I2C_GenerateSTOP
        LDRH     R0,[R5, #+16]
        STRB     R0,[R6, #+0]
        CPSIE    I
        ADDS     R6,R6,#+1
        LDRH     R0,[R5, #+16]
        STRB     R0,[R6, #+0]
??I2C_Master_BufferRead_25:
        LDRH     R0,[R5, #+0]
        LSLS     R0,R0,#+22
        BMI.N    ??I2C_Master_BufferRead_25
        LDRH     R0,[R5, #+0]
        ORRS     R0,R0,#0x400
        STRH     R0,[R5, #+0]
        LDRH     R0,[R5, #+0]
        MOVW     R1,#+63487
        ANDS     R0,R1,R0
        STRH     R0,[R5, #+0]
        B.N      ??I2C_Master_BufferRead_10
??I2C_Master_BufferRead_19:
        MOVW     R0,#+65535
        STR      R0,[SP, #+0]
        LDRH     R0,[R5, #+0]
        MOV      R1,#+256
        ORRS     R0,R1,R0
        STRH     R0,[R5, #+0]
??I2C_Master_BufferRead_26:
        LDRH     R0,[R5, #+20]
        LSLS     R0,R0,#+31
        BMI.N    ??I2C_Master_BufferRead_27
        LDR      R0,[SP, #+0]
        SUBS     R1,R0,#+1
        STR      R1,[SP, #+0]
        CMP      R0,#+0
        BNE.N    ??I2C_Master_BufferRead_26
        MOVS     R0,#+0
        B.N      ??I2C_Master_BufferRead_3
??I2C_Master_BufferRead_27:
        MOVW     R0,#+65535
        STR      R0,[SP, #+0]
        ORRS     R4,R4,#0x1
        LDR.W    R0,??DataTable3
        STRB     R4,[R0, #+0]
        LDR.W    R0,??DataTable3
        LDRB     R0,[R0, #+0]
        STRH     R0,[R5, #+16]
??I2C_Master_BufferRead_28:
        LDRH     R0,[R5, #+20]
        LSLS     R0,R0,#+30
        BMI.N    ??I2C_Master_BufferRead_29
        LDR      R0,[SP, #+0]
        SUBS     R1,R0,#+1
        STR      R1,[SP, #+0]
        CMP      R0,#+0
        BNE.N    ??I2C_Master_BufferRead_28
        MOVS     R0,#+0
        B.N      ??I2C_Master_BufferRead_3
??I2C_Master_BufferRead_29:
        LDRH     R0,[R5, #+24]
        STR      R0,[SP, #+4]
??I2C_Master_BufferRead_30:
        CMP      R7,#+0
        BEQ.N    ??I2C_Master_BufferRead_31
        CMP      R7,#+3
        BEQ.N    ??I2C_Master_BufferRead_32
??I2C_Master_BufferRead_33:
        LDRH     R0,[R5, #+20]
        LSLS     R0,R0,#+29
        BPL.N    ??I2C_Master_BufferRead_33
        LDRH     R0,[R5, #+16]
        STRB     R0,[R6, #+0]
        ADDS     R6,R6,#+1
        SUBS     R7,R7,#+1
??I2C_Master_BufferRead_32:
        CMP      R7,#+3
        BNE.N    ??I2C_Master_BufferRead_30
??I2C_Master_BufferRead_34:
        LDRH     R0,[R5, #+20]
        LSLS     R0,R0,#+29
        BPL.N    ??I2C_Master_BufferRead_34
        LDRH     R0,[R5, #+0]
        MOVW     R1,#+64511
        ANDS     R0,R1,R0
        STRH     R0,[R5, #+0]
        CPSID    I
        LDRH     R0,[R5, #+16]
        STRB     R0,[R6, #+0]
        ADDS     R6,R6,#+1
        LDRH     R0,[R5, #+0]
        MOV      R1,#+512
        ORRS     R0,R1,R0
        STRH     R0,[R5, #+0]
        LDRH     R0,[R5, #+16]
        STRB     R0,[R6, #+0]
        CPSIE    I
        ADDS     R6,R6,#+1
??I2C_Master_BufferRead_35:
        LDRH     R0,[R5, #+20]
        LSLS     R0,R0,#+25
        BPL.N    ??I2C_Master_BufferRead_35
        LDRH     R0,[R5, #+16]
        STRB     R0,[R6, #+0]
        MOVS     R0,#+0
        MOVS     R7,R0
        B.N      ??I2C_Master_BufferRead_30
??I2C_Master_BufferRead_31:
        LDRH     R0,[R5, #+0]
        LSLS     R0,R0,#+22
        BMI.N    ??I2C_Master_BufferRead_31
        LDRH     R0,[R5, #+0]
        ORRS     R0,R0,#0x400
        STRH     R0,[R5, #+0]
        B.N      ??I2C_Master_BufferRead_10
??I2C_Master_BufferRead_11:
        LDRH     R0,[R5, #+4]
        MOV      R1,#+512
        ORRS     R0,R1,R0
        STRH     R0,[R5, #+4]
        LDRH     R0,[R5, #+4]
        ORRS     R0,R0,#0x400
        STRH     R0,[R5, #+4]
        LDR.W    R0,??DataTable3_4
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
        ORRS     R4,R4,#0x1
        LDR.W    R0,??DataTable3
        STRB     R4,[R0, #+0]
        LDR.W    R0,??DataTable3_1  ;; 0x40005400
        CMP      R5,R0
        BNE.N    ??I2C_Master_BufferRead_36
        LDR.W    R0,??DataTable3_5
        STR      R7,[R0, #+0]
        B.N      ??I2C_Master_BufferRead_37
??I2C_Master_BufferRead_36:
        LDR.W    R0,??DataTable3_6
        STR      R7,[R0, #+0]
??I2C_Master_BufferRead_37:
        LDRH     R0,[R5, #+0]
        MOV      R1,#+256
        ORRS     R0,R1,R0
        STRH     R0,[R5, #+0]
??I2C_Master_BufferRead_38:
        LDRH     R0,[R5, #+0]
        LSLS     R0,R0,#+23
        BMI.N    ??I2C_Master_BufferRead_38
??I2C_Master_BufferRead_39:
        LDRH     R0,[R5, #+24]
        LSLS     R0,R0,#+30
        BMI.N    ??I2C_Master_BufferRead_39
        LDRH     R0,[R5, #+0]
        ORRS     R0,R0,#0x400
        STRH     R0,[R5, #+0]
??I2C_Master_BufferRead_10:
        MOVS     R0,#+1
??I2C_Master_BufferRead_3:
        POP      {R1,R2,R4-R8,PC}  ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_Master_BufferWrite:
        PUSH     {R2-R8,LR}
        MOVS     R5,R0
        MOVS     R6,R1
        MOVS     R7,R2
        MOV      R8,R3
        LDR      R4,[SP, #+32]
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        LDRH     R0,[R5, #+4]
        MOV      R1,#+256
        ORRS     R0,R1,R0
        STRH     R0,[R5, #+4]
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+2
        BNE.N    ??I2C_Master_BufferWrite_0
        MOVW     R0,#+65535
        STR      R0,[SP, #+0]
        MOVS     R3,#+0
        MOVS     R2,R7
        MOVS     R1,R6
        MOVS     R0,R5
        BL       I2C_DMAConfig
        LDRH     R0,[R5, #+4]
        ORRS     R0,R0,#0x800
        STRH     R0,[R5, #+4]
        LDRH     R0,[R5, #+0]
        MOV      R1,#+256
        ORRS     R0,R1,R0
        STRH     R0,[R5, #+0]
??I2C_Master_BufferWrite_1:
        LDRH     R0,[R5, #+20]
        LSLS     R0,R0,#+31
        BMI.N    ??I2C_Master_BufferWrite_2
        LDR      R0,[SP, #+0]
        SUBS     R1,R0,#+1
        STR      R1,[SP, #+0]
        CMP      R0,#+0
        BNE.N    ??I2C_Master_BufferWrite_1
        MOVS     R0,#+0
        B.N      ??I2C_Master_BufferWrite_3
??I2C_Master_BufferWrite_2:
        MOVW     R0,#+65535
        STR      R0,[SP, #+0]
        ANDS     R4,R4,#0xFE
        LDR.W    R0,??DataTable3
        STRB     R4,[R0, #+0]
        LDR.W    R0,??DataTable3
        LDRB     R0,[R0, #+0]
        STRH     R0,[R5, #+16]
??I2C_Master_BufferWrite_4:
        LDRH     R0,[R5, #+20]
        LSLS     R0,R0,#+30
        BMI.N    ??I2C_Master_BufferWrite_5
        LDR      R0,[SP, #+0]
        SUBS     R1,R0,#+1
        STR      R1,[SP, #+0]
        CMP      R0,#+0
        BNE.N    ??I2C_Master_BufferWrite_4
        MOVS     R0,#+0
        B.N      ??I2C_Master_BufferWrite_3
??I2C_Master_BufferWrite_5:
        LDRH     R0,[R5, #+24]
        STR      R0,[SP, #+4]
        LDR.W    R0,??DataTable3_1  ;; 0x40005400
        CMP      R5,R0
        BNE.N    ??I2C_Master_BufferWrite_6
??I2C_Master_BufferWrite_7:
        MOVS     R0,#+2097152
        BL       DMA_GetFlagStatus
        CMP      R0,#+0
        BEQ.N    ??I2C_Master_BufferWrite_7
        MOVS     R1,#+0
        LDR.W    R0,??DataTable3_7  ;; 0x4002006c
        BL       DMA_Cmd
        MOVS     R0,#+2097152
        BL       DMA_ClearFlag
        B.N      ??I2C_Master_BufferWrite_8
??I2C_Master_BufferWrite_6:
        MOV      R0,#+8192
        BL       DMA_GetFlagStatus
        CMP      R0,#+0
        BEQ.N    ??I2C_Master_BufferWrite_6
        MOVS     R1,#+0
        LDR.W    R0,??DataTable3_8  ;; 0x40020044
        BL       DMA_Cmd
        MOV      R0,#+8192
        BL       DMA_ClearFlag
??I2C_Master_BufferWrite_8:
        LDRH     R0,[R5, #+20]
        LSLS     R0,R0,#+29
        BPL.N    ??I2C_Master_BufferWrite_8
        LDRH     R0,[R5, #+0]
        MOV      R1,#+512
        ORRS     R0,R1,R0
        STRH     R0,[R5, #+0]
??I2C_Master_BufferWrite_9:
        LDRH     R0,[R5, #+0]
        LSLS     R0,R0,#+22
        BMI.N    ??I2C_Master_BufferWrite_9
        B.N      ??I2C_Master_BufferWrite_10
??I2C_Master_BufferWrite_0:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BNE.N    ??I2C_Master_BufferWrite_11
        MOVW     R0,#+65535
        STR      R0,[SP, #+0]
        LDRH     R0,[R5, #+0]
        MOV      R1,#+256
        ORRS     R0,R1,R0
        STRH     R0,[R5, #+0]
??I2C_Master_BufferWrite_12:
        LDRH     R0,[R5, #+20]
        LSLS     R0,R0,#+31
        BMI.N    ??I2C_Master_BufferWrite_13
        LDR      R0,[SP, #+0]
        SUBS     R1,R0,#+1
        STR      R1,[SP, #+0]
        CMP      R0,#+0
        BNE.N    ??I2C_Master_BufferWrite_12
        MOVS     R0,#+0
        B.N      ??I2C_Master_BufferWrite_3
??I2C_Master_BufferWrite_13:
        ANDS     R4,R4,#0xFE
        LDR.W    R0,??DataTable3
        STRB     R4,[R0, #+0]
        LDR.W    R0,??DataTable3
        LDRB     R0,[R0, #+0]
        STRH     R0,[R5, #+16]
        MOVW     R0,#+65535
        STR      R0,[SP, #+0]
??I2C_Master_BufferWrite_14:
        LDRH     R0,[R5, #+20]
        LSLS     R0,R0,#+30
        BMI.N    ??I2C_Master_BufferWrite_15
        LDR      R0,[SP, #+0]
        SUBS     R1,R0,#+1
        STR      R1,[SP, #+0]
        CMP      R0,#+0
        BNE.N    ??I2C_Master_BufferWrite_14
        MOVS     R0,#+0
        B.N      ??I2C_Master_BufferWrite_3
??I2C_Master_BufferWrite_15:
        LDRH     R0,[R5, #+24]
        STR      R0,[SP, #+4]
        LDRB     R0,[R6, #+0]
        STRH     R0,[R5, #+16]
        ADDS     R6,R6,#+1
        SUBS     R7,R7,#+1
??I2C_Master_BufferWrite_16:
        MOVS     R0,R7
        SUBS     R7,R0,#+1
        CMP      R0,#+0
        BEQ.N    ??I2C_Master_BufferWrite_17
??I2C_Master_BufferWrite_18:
        LDRH     R0,[R5, #+20]
        LSLS     R0,R0,#+29
        BPL.N    ??I2C_Master_BufferWrite_18
        LDRB     R0,[R6, #+0]
        STRH     R0,[R5, #+16]
        ADDS     R6,R6,#+1
        B.N      ??I2C_Master_BufferWrite_16
??I2C_Master_BufferWrite_17:
        LDRH     R0,[R5, #+20]
        LSLS     R0,R0,#+29
        BPL.N    ??I2C_Master_BufferWrite_17
        LDRH     R0,[R5, #+0]
        MOV      R1,#+512
        ORRS     R0,R1,R0
        STRH     R0,[R5, #+0]
??I2C_Master_BufferWrite_19:
        LDRH     R0,[R5, #+0]
        LSLS     R0,R0,#+22
        BMI.N    ??I2C_Master_BufferWrite_19
        B.N      ??I2C_Master_BufferWrite_10
??I2C_Master_BufferWrite_11:
        LDRH     R0,[R5, #+4]
        MOV      R1,#+512
        ORRS     R0,R1,R0
        STRH     R0,[R5, #+4]
        LDRH     R0,[R5, #+4]
        ORRS     R0,R0,#0x400
        STRH     R0,[R5, #+4]
        LDR.N    R0,??DataTable3_4
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        ANDS     R4,R4,#0xFE
        LDR.N    R0,??DataTable3
        STRB     R4,[R0, #+0]
        LDR.N    R0,??DataTable3_1  ;; 0x40005400
        CMP      R5,R0
        BNE.N    ??I2C_Master_BufferWrite_20
        LDR.N    R0,??DataTable3_5
        STR      R7,[R0, #+0]
        B.N      ??I2C_Master_BufferWrite_21
??I2C_Master_BufferWrite_20:
        LDR.N    R0,??DataTable3_6
        STR      R7,[R0, #+0]
??I2C_Master_BufferWrite_21:
        LDRH     R0,[R5, #+0]
        MOV      R1,#+256
        ORRS     R0,R1,R0
        STRH     R0,[R5, #+0]
??I2C_Master_BufferWrite_22:
        LDRH     R0,[R5, #+0]
        LSLS     R0,R0,#+23
        BMI.N    ??I2C_Master_BufferWrite_22
??I2C_Master_BufferWrite_23:
        LDRH     R0,[R5, #+24]
        LSLS     R0,R0,#+30
        BMI.N    ??I2C_Master_BufferWrite_23
??I2C_Master_BufferWrite_10:
        MOVS     R0,#+1
??I2C_Master_BufferWrite_3:
        POP      {R1,R2,R4-R8,PC}  ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_Slave_BufferReadWrite:
        LDRH     R2,[R0, #+4]
        MOV      R3,#+512
        ORRS     R2,R3,R2
        STRH     R2,[R0, #+4]
        LDRH     R2,[R0, #+4]
        MOV      R3,#+256
        ORRS     R2,R3,R2
        STRH     R2,[R0, #+4]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+2
        BNE.N    ??I2C_Slave_BufferReadWrite_0
        LDRH     R2,[R0, #+4]
        ORRS     R2,R2,#0x800
        STRH     R2,[R0, #+4]
        B.N      ??I2C_Slave_BufferReadWrite_1
??I2C_Slave_BufferReadWrite_0:
        LDRH     R2,[R0, #+4]
        ORRS     R2,R2,#0x400
        STRH     R2,[R0, #+4]
??I2C_Slave_BufferReadWrite_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_LowLevel_Init:
        PUSH     {R4,LR}
        SUB      SP,SP,#+24
        MOVS     R4,R0
        MOVS     R1,#+1
        MOVS     R0,#+8
        BL       RCC_APB2PeriphClockCmd
        MOVS     R1,#+1
        MOVS     R0,#+1
        BL       RCC_AHBPeriphClockCmd
        LDR.N    R0,??DataTable3_1  ;; 0x40005400
        CMP      R4,R0
        BNE.N    ??I2C_LowLevel_Init_0
        MOVS     R1,#+1
        MOVS     R0,#+2097152
        BL       RCC_APB1PeriphClockCmd
        MOVS     R0,#+64
        STRH     R0,[SP, #+0]
        MOVS     R0,#+3
        STRB     R0,[SP, #+2]
        MOVS     R0,#+28
        STRB     R0,[SP, #+3]
        ADD      R1,SP,#+0
        LDR.N    R0,??DataTable3_9  ;; 0x40010c00
        BL       GPIO_Init
        MOVS     R0,#+128
        STRH     R0,[SP, #+0]
        ADD      R1,SP,#+0
        LDR.N    R0,??DataTable3_9  ;; 0x40010c00
        BL       GPIO_Init
        MOVS     R1,#+1
        MOVS     R0,#+2097152
        BL       RCC_APB1PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+2097152
        BL       RCC_APB1PeriphResetCmd
        B.N      ??I2C_LowLevel_Init_1
??I2C_LowLevel_Init_0:
        MOVS     R1,#+1
        MOVS     R0,#+4194304
        BL       RCC_APB1PeriphClockCmd
        MOV      R0,#+1024
        STRH     R0,[SP, #+0]
        MOVS     R0,#+3
        STRB     R0,[SP, #+2]
        MOVS     R0,#+28
        STRB     R0,[SP, #+3]
        ADD      R1,SP,#+0
        LDR.N    R0,??DataTable3_9  ;; 0x40010c00
        BL       GPIO_Init
        MOV      R0,#+2048
        STRH     R0,[SP, #+0]
        ADD      R1,SP,#+0
        LDR.N    R0,??DataTable3_9  ;; 0x40010c00
        BL       GPIO_Init
        MOVS     R1,#+1
        MOVS     R0,#+4194304
        BL       RCC_APB1PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+4194304
        BL       RCC_APB1PeriphResetCmd
??I2C_LowLevel_Init_1:
        MOVS     R0,#+0
        STRH     R0,[SP, #+8]
        MOVW     R0,#+49151
        STRH     R0,[SP, #+10]
        MOVS     R0,#+40
        STRH     R0,[SP, #+12]
        MOV      R0,#+1024
        STRH     R0,[SP, #+14]
        MOV      R0,#+16384
        STRH     R0,[SP, #+16]
        LDR.N    R0,??DataTable3_10  ;; 0x61a80
        STR      R0,[SP, #+4]
        ADD      R1,SP,#+4
        LDR.N    R0,??DataTable3_1  ;; 0x40005400
        BL       I2C_Init
        MOVS     R0,#+48
        STRH     R0,[SP, #+12]
        ADD      R1,SP,#+4
        LDR.N    R0,??DataTable3_11  ;; 0x40005800
        BL       I2C_Init
        LDR.N    R0,??DataTable3_1  ;; 0x40005400
        CMP      R4,R0
        BNE.N    ??I2C_LowLevel_Init_2
        LDR.N    R0,??DataTable3_7  ;; 0x4002006c
        BL       DMA_DeInit
        LDR.N    R0,??DataTable3_12
        LDR.N    R1,??DataTable3_13  ;; 0x40005410
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable3_12
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        LDR.N    R0,??DataTable3_12
        MOVS     R1,#+16
        STR      R1,[R0, #+8]
        LDR.N    R0,??DataTable3_12
        MOVW     R1,#+65535
        STR      R1,[R0, #+12]
        LDR.N    R0,??DataTable3_12
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
        LDR.N    R0,??DataTable3_12
        MOVS     R1,#+128
        STR      R1,[R0, #+20]
        LDR.N    R0,??DataTable3_12
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
        LDR.N    R0,??DataTable3_12
        MOVS     R1,#+0
        STR      R1,[R0, #+28]
        LDR.N    R0,??DataTable3_12
        MOVS     R1,#+0
        STR      R1,[R0, #+32]
        LDR.N    R0,??DataTable3_12
        MOV      R1,#+12288
        STR      R1,[R0, #+36]
        LDR.N    R0,??DataTable3_12
        MOVS     R1,#+0
        STR      R1,[R0, #+40]
        LDR.N    R1,??DataTable3_12
        LDR.N    R0,??DataTable3_7  ;; 0x4002006c
        BL       DMA_Init
        LDR.N    R0,??DataTable3_2  ;; 0x40020080
        BL       DMA_DeInit
        LDR.N    R1,??DataTable3_12
        LDR.N    R0,??DataTable3_2  ;; 0x40020080
        BL       DMA_Init
        B.N      ??I2C_LowLevel_Init_3
??I2C_LowLevel_Init_2:
        LDR.N    R0,??DataTable3_8  ;; 0x40020044
        BL       DMA_DeInit
        LDR.N    R0,??DataTable3_12
        LDR.N    R1,??DataTable3_14  ;; 0x40005810
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable3_12
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        LDR.N    R0,??DataTable3_12
        MOVS     R1,#+16
        STR      R1,[R0, #+8]
        LDR.N    R0,??DataTable3_12
        MOVW     R1,#+65535
        STR      R1,[R0, #+12]
        LDR.N    R0,??DataTable3_12
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
        LDR.N    R0,??DataTable3_12
        MOVS     R1,#+128
        STR      R1,[R0, #+20]
        LDR.N    R0,??DataTable3_12
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
        LDR.N    R0,??DataTable3_12
        MOVS     R1,#+0
        STR      R1,[R0, #+28]
        LDR.N    R0,??DataTable3_12
        MOVS     R1,#+0
        STR      R1,[R0, #+32]
        LDR.N    R0,??DataTable3_12
        MOV      R1,#+12288
        STR      R1,[R0, #+36]
        LDR.N    R0,??DataTable3_12
        MOVS     R1,#+0
        STR      R1,[R0, #+40]
        LDR.N    R1,??DataTable3_12
        LDR.N    R0,??DataTable3_8  ;; 0x40020044
        BL       DMA_Init
        LDR.N    R0,??DataTable3_3  ;; 0x40020058
        BL       DMA_DeInit
        LDR.N    R1,??DataTable3_12
        LDR.N    R0,??DataTable3_3  ;; 0x40020058
        BL       DMA_Init
??I2C_LowLevel_Init_3:
        ADD      SP,SP,#+24
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_DMAConfig:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        CMP      R7,#+0
        BNE.N    ??I2C_DMAConfig_0
        LDR.N    R0,??DataTable3_12
        STR      R5,[R0, #+4]
        LDR.N    R0,??DataTable3_12
        MOVS     R1,#+16
        STR      R1,[R0, #+8]
        LDR.N    R0,??DataTable3_12
        STR      R6,[R0, #+12]
        LDR.N    R0,??DataTable3_1  ;; 0x40005400
        CMP      R4,R0
        BNE.N    ??I2C_DMAConfig_1
        LDR.N    R0,??DataTable3_12
        LDR.N    R1,??DataTable3_13  ;; 0x40005410
        STR      R1,[R0, #+0]
        MOVS     R1,#+0
        LDR.N    R0,??DataTable3_7  ;; 0x4002006c
        BL       DMA_Cmd
        LDR.N    R1,??DataTable3_12
        LDR.N    R0,??DataTable3_7  ;; 0x4002006c
        BL       DMA_Init
        MOVS     R1,#+1
        LDR.N    R0,??DataTable3_7  ;; 0x4002006c
        BL       DMA_Cmd
        B.N      ??I2C_DMAConfig_2
??I2C_DMAConfig_1:
        LDR.N    R0,??DataTable3_12
        LDR.N    R1,??DataTable3_14  ;; 0x40005810
        STR      R1,[R0, #+0]
        MOVS     R1,#+0
        LDR.N    R0,??DataTable3_8  ;; 0x40020044
        BL       DMA_Cmd
        LDR.N    R1,??DataTable3_12
        LDR.N    R0,??DataTable3_8  ;; 0x40020044
        BL       DMA_Init
        MOVS     R1,#+1
        LDR.N    R0,??DataTable3_8  ;; 0x40020044
        BL       DMA_Cmd
        B.N      ??I2C_DMAConfig_2
??I2C_DMAConfig_0:
        LDR.N    R0,??DataTable3_12
        STR      R5,[R0, #+4]
        LDR.N    R0,??DataTable3_12
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
        LDR.N    R0,??DataTable3_12
        STR      R6,[R0, #+12]
        LDR.N    R0,??DataTable3_1  ;; 0x40005400
        CMP      R4,R0
        BNE.N    ??I2C_DMAConfig_3
        LDR.N    R0,??DataTable3_12
        LDR.N    R1,??DataTable3_13  ;; 0x40005410
        STR      R1,[R0, #+0]
        MOVS     R1,#+0
        LDR.N    R0,??DataTable3_2  ;; 0x40020080
        BL       DMA_Cmd
        LDR.N    R1,??DataTable3_12
        LDR.N    R0,??DataTable3_2  ;; 0x40020080
        BL       DMA_Init
        MOVS     R1,#+1
        LDR.N    R0,??DataTable3_2  ;; 0x40020080
        BL       DMA_Cmd
        B.N      ??I2C_DMAConfig_2
??I2C_DMAConfig_3:
        LDR.N    R0,??DataTable3_12
        LDR.N    R1,??DataTable3_14  ;; 0x40005810
        STR      R1,[R0, #+0]
        MOVS     R1,#+0
        LDR.N    R0,??DataTable3_3  ;; 0x40020058
        BL       DMA_Cmd
        LDR.N    R1,??DataTable3_12
        LDR.N    R0,??DataTable3_3  ;; 0x40020058
        BL       DMA_Init
        MOVS     R1,#+1
        LDR.N    R0,??DataTable3_3  ;; 0x40020058
        BL       DMA_Cmd
??I2C_DMAConfig_2:
        POP      {R0,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     Address

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     0x40005400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     0x40020080

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DC32     0x40020058

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DC32     I2CDirection

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_5:
        DC32     NumbOfBytes1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_6:
        DC32     NumbOfBytes2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_7:
        DC32     0x4002006c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_8:
        DC32     0x40020044

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_9:
        DC32     0x40010c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_10:
        DC32     0x61a80

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_11:
        DC32     0x40005800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_12:
        DC32     I2CDMA_InitStructure

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_13:
        DC32     0x40005410

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_14:
        DC32     0x40005810

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
// 2 569 bytes in section .bss
// 2 030 bytes in section .text
// 
// 2 030 bytes of CODE memory
// 2 569 bytes of DATA memory
//
//Errors: none
//Warnings: none
