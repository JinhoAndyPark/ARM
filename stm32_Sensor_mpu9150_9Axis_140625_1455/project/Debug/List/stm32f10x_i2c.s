///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.6.53336/W32 for ARM    25/Jun/2014  14:55:00 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    Libraries\STM32F10x_StdPeriph_Driver\src\stm32f10x_i2c. /
//                    c                                                       /
//    Command line =  D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    Libraries\STM32F10x_StdPeriph_Driver\src\stm32f10x_i2c. /
//                    c -D USE_STDPERIPH_DRIVER -lcN                          /
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
//                    project\Debug\List\stm32f10x_i2c.s                      /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm32f10x_i2c

        #define SHT_PROGBITS 0x1

        EXTERN RCC_APB1PeriphResetCmd
        EXTERN RCC_GetClocksFreq
        EXTERN assert_failed

        PUBLIC I2C_ARPCmd
        PUBLIC I2C_AcknowledgeConfig
        PUBLIC I2C_CalculatePEC
        PUBLIC I2C_CheckEvent
        PUBLIC I2C_ClearFlag
        PUBLIC I2C_ClearITPendingBit
        PUBLIC I2C_Cmd
        PUBLIC I2C_DMACmd
        PUBLIC I2C_DMALastTransferCmd
        PUBLIC I2C_DeInit
        PUBLIC I2C_DualAddressCmd
        PUBLIC I2C_FastModeDutyCycleConfig
        PUBLIC I2C_GeneralCallCmd
        PUBLIC I2C_GenerateSTART
        PUBLIC I2C_GenerateSTOP
        PUBLIC I2C_GetFlagStatus
        PUBLIC I2C_GetITStatus
        PUBLIC I2C_GetLastEvent
        PUBLIC I2C_GetPEC
        PUBLIC I2C_ITConfig
        PUBLIC I2C_Init
        PUBLIC I2C_NACKPositionConfig
        PUBLIC I2C_OwnAddress2Config
        PUBLIC I2C_PECPositionConfig
        PUBLIC I2C_ReadRegister
        PUBLIC I2C_ReceiveData
        PUBLIC I2C_SMBusAlertConfig
        PUBLIC I2C_Send7bitAddress
        PUBLIC I2C_SendData
        PUBLIC I2C_SoftwareResetCmd
        PUBLIC I2C_StretchClockCmd
        PUBLIC I2C_StructInit
        PUBLIC I2C_TransmitPEC


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_DeInit:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.W    R0,??DataTable27  ;; 0x40005400
        CMP      R4,R0
        BEQ.N    ??I2C_DeInit_0
        LDR.W    R0,??DataTable25  ;; 0x40005800
        CMP      R4,R0
        BEQ.N    ??I2C_DeInit_0
        MOVS     R1,#+171
        LDR.W    R0,??DataTable25_1
        BL       assert_failed
??I2C_DeInit_0:
        LDR.W    R0,??DataTable27  ;; 0x40005400
        CMP      R4,R0
        BNE.N    ??I2C_DeInit_1
        MOVS     R1,#+1
        MOVS     R0,#+2097152
        BL       RCC_APB1PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+2097152
        BL       RCC_APB1PeriphResetCmd
        B.N      ??I2C_DeInit_2
??I2C_DeInit_1:
        MOVS     R1,#+1
        MOVS     R0,#+4194304
        BL       RCC_APB1PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+4194304
        BL       RCC_APB1PeriphResetCmd
??I2C_DeInit_2:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_Init:
        PUSH     {R4-R9,LR}
        SUB      SP,SP,#+20
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        MOVS     R7,#+0
        MOVS     R8,#+4
        LDR.W    R9,??DataTable26  ;; 0x7a1200
        LDR.W    R0,??DataTable27  ;; 0x40005400
        CMP      R4,R0
        BEQ.N    ??I2C_Init_0
        LDR.W    R0,??DataTable25  ;; 0x40005800
        CMP      R4,R0
        BEQ.N    ??I2C_Init_0
        MOVS     R1,#+204
        LDR.W    R0,??DataTable25_1
        BL       assert_failed
??I2C_Init_0:
        LDR      R0,[R5, #+0]
        CMP      R0,#+0
        BEQ.N    ??I2C_Init_1
        LDR      R0,[R5, #+0]
        LDR.W    R1,??DataTable27_1  ;; 0x61a81
        CMP      R0,R1
        BCC.N    ??I2C_Init_2
??I2C_Init_1:
        MOVS     R1,#+205
        LDR.W    R0,??DataTable25_1
        BL       assert_failed
??I2C_Init_2:
        LDRH     R0,[R5, #+4]
        CMP      R0,#+0
        BEQ.N    ??I2C_Init_3
        LDRH     R0,[R5, #+4]
        CMP      R0,#+2
        BEQ.N    ??I2C_Init_3
        LDRH     R0,[R5, #+4]
        CMP      R0,#+10
        BEQ.N    ??I2C_Init_3
        MOVS     R1,#+206
        LDR.W    R0,??DataTable25_1
        BL       assert_failed
??I2C_Init_3:
        LDRH     R0,[R5, #+6]
        CMP      R0,#+16384
        BEQ.N    ??I2C_Init_4
        LDRH     R0,[R5, #+6]
        MOVW     R1,#+49151
        CMP      R0,R1
        BEQ.N    ??I2C_Init_4
        MOVS     R1,#+207
        LDR.W    R0,??DataTable25_1
        BL       assert_failed
??I2C_Init_4:
        LDRH     R0,[R5, #+8]
        CMP      R0,#+1024
        BCC.N    ??I2C_Init_5
        MOVS     R1,#+208
        LDR.W    R0,??DataTable25_1
        BL       assert_failed
??I2C_Init_5:
        LDRH     R0,[R5, #+10]
        CMP      R0,#+1024
        BEQ.N    ??I2C_Init_6
        LDRH     R0,[R5, #+10]
        CMP      R0,#+0
        BEQ.N    ??I2C_Init_6
        MOVS     R1,#+209
        LDR.W    R0,??DataTable25_1
        BL       assert_failed
??I2C_Init_6:
        LDRH     R0,[R5, #+12]
        CMP      R0,#+16384
        BEQ.N    ??I2C_Init_7
        LDRH     R0,[R5, #+12]
        CMP      R0,#+49152
        BEQ.N    ??I2C_Init_7
        MOVS     R1,#+210
        LDR.W    R0,??DataTable25_1
        BL       assert_failed
??I2C_Init_7:
        LDRH     R0,[R4, #+4]
        MOVS     R6,R0
        MOVW     R0,#+65472
        ANDS     R6,R0,R6
        ADD      R0,SP,#+0
        BL       RCC_GetClocksFreq
        LDR      R0,[SP, #+8]
        MOV      R9,R0
        LDR.W    R0,??DataTable27_2  ;; 0xf4240
        UDIV     R0,R9,R0
        MOVS     R7,R0
        ORRS     R6,R7,R6
        STRH     R6,[R4, #+4]
        LDRH     R0,[R4, #+0]
        MOVW     R1,#+65534
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+0]
        MOVS     R0,#+0
        MOVS     R6,R0
        LDR      R0,[R5, #+0]
        LDR.W    R1,??DataTable31  ;; 0x186a1
        CMP      R0,R1
        BCS.N    ??I2C_Init_8
        LDR      R0,[R5, #+0]
        LSLS     R0,R0,#+1
        UDIV     R0,R9,R0
        MOV      R8,R0
        UXTH     R8,R8            ;; ZeroExt  R8,R8,#+16,#+16
        CMP      R8,#+4
        BCS.N    ??I2C_Init_9
        MOVS     R0,#+4
        MOV      R8,R0
??I2C_Init_9:
        ORRS     R6,R8,R6
        ADDS     R0,R7,#+1
        STRH     R0,[R4, #+32]
        B.N      ??I2C_Init_10
??I2C_Init_8:
        LDRH     R0,[R5, #+6]
        MOVW     R1,#+49151
        CMP      R0,R1
        BNE.N    ??I2C_Init_11
        LDR      R0,[R5, #+0]
        MOVS     R1,#+3
        MULS     R0,R1,R0
        UDIV     R0,R9,R0
        MOV      R8,R0
        B.N      ??I2C_Init_12
??I2C_Init_11:
        LDR      R0,[R5, #+0]
        MOVS     R1,#+25
        MULS     R0,R1,R0
        UDIV     R0,R9,R0
        MOV      R8,R0
        ORRS     R8,R8,#0x4000
??I2C_Init_12:
        LSLS     R0,R8,#+20
        BNE.N    ??I2C_Init_13
        ORRS     R8,R8,#0x1
??I2C_Init_13:
        ORRS     R0,R8,#0x8000
        ORRS     R6,R0,R6
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        MOV      R0,#+300
        MUL      R0,R0,R7
        MOV      R1,#+1000
        SDIV     R0,R0,R1
        ADDS     R0,R0,#+1
        STRH     R0,[R4, #+32]
??I2C_Init_10:
        STRH     R6,[R4, #+28]
        LDRH     R0,[R4, #+0]
        ORRS     R0,R0,#0x1
        STRH     R0,[R4, #+0]
        LDRH     R0,[R4, #+0]
        MOVS     R6,R0
        MOVW     R0,#+64501
        ANDS     R6,R0,R6
        LDRH     R0,[R5, #+4]
        LDRH     R1,[R5, #+10]
        ORRS     R0,R1,R0
        ORRS     R6,R0,R6
        STRH     R6,[R4, #+0]
        LDRH     R0,[R5, #+12]
        LDRH     R1,[R5, #+8]
        ORRS     R0,R1,R0
        STRH     R0,[R4, #+8]
        ADD      SP,SP,#+20
        POP      {R4-R9,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_StructInit:
        MOVW     R1,#+5000
        STR      R1,[R0, #+0]
        MOVS     R1,#+0
        STRH     R1,[R0, #+4]
        MOVW     R1,#+49151
        STRH     R1,[R0, #+6]
        MOVS     R1,#+0
        STRH     R1,[R0, #+8]
        MOVS     R1,#+0
        STRH     R1,[R0, #+10]
        MOV      R1,#+16384
        STRH     R1,[R0, #+12]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_Cmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable27  ;; 0x40005400
        CMP      R4,R0
        BEQ.N    ??I2C_Cmd_0
        LDR.W    R0,??DataTable25  ;; 0x40005800
        CMP      R4,R0
        BEQ.N    ??I2C_Cmd_0
        MOVW     R1,#+331
        LDR.W    R0,??DataTable25_1
        BL       assert_failed
??I2C_Cmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??I2C_Cmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??I2C_Cmd_1
        MOV      R1,#+332
        LDR.W    R0,??DataTable25_1
        BL       assert_failed
??I2C_Cmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??I2C_Cmd_2
        LDRH     R0,[R4, #+0]
        ORRS     R0,R0,#0x1
        STRH     R0,[R4, #+0]
        B.N      ??I2C_Cmd_3
??I2C_Cmd_2:
        LDRH     R0,[R4, #+0]
        MOVW     R1,#+65534
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+0]
??I2C_Cmd_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_DMACmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable27  ;; 0x40005400
        CMP      R4,R0
        BEQ.N    ??I2C_DMACmd_0
        LDR.W    R0,??DataTable25  ;; 0x40005800
        CMP      R4,R0
        BEQ.N    ??I2C_DMACmd_0
        MOVW     R1,#+355
        LDR.W    R0,??DataTable25_1
        BL       assert_failed
??I2C_DMACmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??I2C_DMACmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??I2C_DMACmd_1
        MOV      R1,#+356
        LDR.W    R0,??DataTable25_1
        BL       assert_failed
??I2C_DMACmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??I2C_DMACmd_2
        LDRH     R0,[R4, #+4]
        ORRS     R0,R0,#0x800
        STRH     R0,[R4, #+4]
        B.N      ??I2C_DMACmd_3
??I2C_DMACmd_2:
        LDRH     R0,[R4, #+4]
        MOVW     R1,#+63487
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+4]
??I2C_DMACmd_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_DMALastTransferCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable27  ;; 0x40005400
        CMP      R4,R0
        BEQ.N    ??I2C_DMALastTransferCmd_0
        LDR.W    R0,??DataTable25  ;; 0x40005800
        CMP      R4,R0
        BEQ.N    ??I2C_DMALastTransferCmd_0
        MOVW     R1,#+379
        LDR.W    R0,??DataTable25_1
        BL       assert_failed
??I2C_DMALastTransferCmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??I2C_DMALastTransferCmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??I2C_DMALastTransferCmd_1
        MOV      R1,#+380
        LDR.W    R0,??DataTable25_1
        BL       assert_failed
??I2C_DMALastTransferCmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??I2C_DMALastTransferCmd_2
        LDRH     R0,[R4, #+4]
        ORRS     R0,R0,#0x1000
        STRH     R0,[R4, #+4]
        B.N      ??I2C_DMALastTransferCmd_3
??I2C_DMALastTransferCmd_2:
        LDRH     R0,[R4, #+4]
        MOVW     R1,#+61439
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+4]
??I2C_DMALastTransferCmd_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_GenerateSTART:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable27  ;; 0x40005400
        CMP      R4,R0
        BEQ.N    ??I2C_GenerateSTART_0
        LDR.W    R0,??DataTable25  ;; 0x40005800
        CMP      R4,R0
        BEQ.N    ??I2C_GenerateSTART_0
        MOVW     R1,#+403
        LDR.W    R0,??DataTable25_1
        BL       assert_failed
??I2C_GenerateSTART_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??I2C_GenerateSTART_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??I2C_GenerateSTART_1
        MOV      R1,#+404
        LDR.W    R0,??DataTable25_1
        BL       assert_failed
??I2C_GenerateSTART_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??I2C_GenerateSTART_2
        LDRH     R0,[R4, #+0]
        MOV      R1,#+256
        ORRS     R0,R1,R0
        STRH     R0,[R4, #+0]
        B.N      ??I2C_GenerateSTART_3
??I2C_GenerateSTART_2:
        LDRH     R0,[R4, #+0]
        MOVW     R1,#+65279
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+0]
??I2C_GenerateSTART_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_GenerateSTOP:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable27  ;; 0x40005400
        CMP      R4,R0
        BEQ.N    ??I2C_GenerateSTOP_0
        LDR.W    R0,??DataTable25  ;; 0x40005800
        CMP      R4,R0
        BEQ.N    ??I2C_GenerateSTOP_0
        MOVW     R1,#+427
        LDR.W    R0,??DataTable25_1
        BL       assert_failed
??I2C_GenerateSTOP_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??I2C_GenerateSTOP_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??I2C_GenerateSTOP_1
        MOV      R1,#+428
        LDR.W    R0,??DataTable25_1
        BL       assert_failed
??I2C_GenerateSTOP_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??I2C_GenerateSTOP_2
        LDRH     R0,[R4, #+0]
        MOV      R1,#+512
        ORRS     R0,R1,R0
        STRH     R0,[R4, #+0]
        B.N      ??I2C_GenerateSTOP_3
??I2C_GenerateSTOP_2:
        LDRH     R0,[R4, #+0]
        MOVW     R1,#+65023
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+0]
??I2C_GenerateSTOP_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_AcknowledgeConfig:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable27  ;; 0x40005400
        CMP      R4,R0
        BEQ.N    ??I2C_AcknowledgeConfig_0
        LDR.W    R0,??DataTable25  ;; 0x40005800
        CMP      R4,R0
        BEQ.N    ??I2C_AcknowledgeConfig_0
        MOVW     R1,#+451
        LDR.W    R0,??DataTable25_1
        BL       assert_failed
??I2C_AcknowledgeConfig_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??I2C_AcknowledgeConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??I2C_AcknowledgeConfig_1
        MOV      R1,#+452
        LDR.W    R0,??DataTable25_1
        BL       assert_failed
??I2C_AcknowledgeConfig_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??I2C_AcknowledgeConfig_2
        LDRH     R0,[R4, #+0]
        ORRS     R0,R0,#0x400
        STRH     R0,[R4, #+0]
        B.N      ??I2C_AcknowledgeConfig_3
??I2C_AcknowledgeConfig_2:
        LDRH     R0,[R4, #+0]
        MOVW     R1,#+64511
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+0]
??I2C_AcknowledgeConfig_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_OwnAddress2Config:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.W    R0,??DataTable27  ;; 0x40005400
        CMP      R4,R0
        BEQ.N    ??I2C_OwnAddress2Config_0
        LDR.W    R0,??DataTable25  ;; 0x40005800
        CMP      R4,R0
        BEQ.N    ??I2C_OwnAddress2Config_0
        MOV      R1,#+476
        LDR.W    R0,??DataTable25_1
        BL       assert_failed
??I2C_OwnAddress2Config_0:
        LDRH     R0,[R4, #+12]
        MOVS     R6,R0
        MOVW     R0,#+65281
        ANDS     R6,R0,R6
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ANDS     R0,R5,#0xFE
        ORRS     R6,R0,R6
        STRH     R6,[R4, #+12]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_DualAddressCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable27  ;; 0x40005400
        CMP      R4,R0
        BEQ.N    ??I2C_DualAddressCmd_0
        LDR.W    R0,??DataTable25  ;; 0x40005800
        CMP      R4,R0
        BEQ.N    ??I2C_DualAddressCmd_0
        MOVW     R1,#+501
        LDR.W    R0,??DataTable25_1
        BL       assert_failed
??I2C_DualAddressCmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??I2C_DualAddressCmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??I2C_DualAddressCmd_1
        MOV      R1,#+502
        LDR.W    R0,??DataTable25_1
        BL       assert_failed
??I2C_DualAddressCmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??I2C_DualAddressCmd_2
        LDRH     R0,[R4, #+12]
        ORRS     R0,R0,#0x1
        STRH     R0,[R4, #+12]
        B.N      ??I2C_DualAddressCmd_3
??I2C_DualAddressCmd_2:
        LDRH     R0,[R4, #+12]
        MOVW     R1,#+65534
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+12]
??I2C_DualAddressCmd_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_GeneralCallCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable27  ;; 0x40005400
        CMP      R4,R0
        BEQ.N    ??I2C_GeneralCallCmd_0
        LDR.W    R0,??DataTable25  ;; 0x40005800
        CMP      R4,R0
        BEQ.N    ??I2C_GeneralCallCmd_0
        MOVW     R1,#+525
        LDR.W    R0,??DataTable25_1
        BL       assert_failed
??I2C_GeneralCallCmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??I2C_GeneralCallCmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??I2C_GeneralCallCmd_1
        MOVW     R1,#+526
        LDR.W    R0,??DataTable25_1
        BL       assert_failed
??I2C_GeneralCallCmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??I2C_GeneralCallCmd_2
        LDRH     R0,[R4, #+0]
        ORRS     R0,R0,#0x40
        STRH     R0,[R4, #+0]
        B.N      ??I2C_GeneralCallCmd_3
??I2C_GeneralCallCmd_2:
        LDRH     R0,[R4, #+0]
        MOVW     R1,#+65471
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+0]
??I2C_GeneralCallCmd_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_ITConfig:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        LDR.W    R0,??DataTable27  ;; 0x40005400
        CMP      R4,R0
        BEQ.N    ??I2C_ITConfig_0
        LDR.W    R0,??DataTable25  ;; 0x40005800
        CMP      R4,R0
        BEQ.N    ??I2C_ITConfig_0
        MOVW     R1,#+554
        LDR.W    R0,??DataTable25_1
        BL       assert_failed
??I2C_ITConfig_0:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??I2C_ITConfig_1
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+1
        BEQ.N    ??I2C_ITConfig_1
        MOVW     R1,#+555
        LDR.W    R0,??DataTable25_1
        BL       assert_failed
??I2C_ITConfig_1:
        MOVW     R0,#+63743
        TST      R5,R0
        BNE.N    ??I2C_ITConfig_2
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BNE.N    ??I2C_ITConfig_3
??I2C_ITConfig_2:
        MOV      R1,#+556
        LDR.W    R0,??DataTable25_1
        BL       assert_failed
??I2C_ITConfig_3:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??I2C_ITConfig_4
        LDRH     R0,[R4, #+4]
        ORRS     R0,R5,R0
        STRH     R0,[R4, #+4]
        B.N      ??I2C_ITConfig_5
??I2C_ITConfig_4:
        LDRH     R0,[R4, #+4]
        BICS     R0,R0,R5
        STRH     R0,[R4, #+4]
??I2C_ITConfig_5:
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_SendData:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable27  ;; 0x40005400
        CMP      R4,R0
        BEQ.N    ??I2C_SendData_0
        LDR.W    R0,??DataTable25  ;; 0x40005800
        CMP      R4,R0
        BEQ.N    ??I2C_SendData_0
        MOVW     R1,#+579
        LDR.W    R0,??DataTable25_1
        BL       assert_failed
??I2C_SendData_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STRH     R5,[R4, #+16]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_ReceiveData:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.W    R0,??DataTable27  ;; 0x40005400
        CMP      R4,R0
        BEQ.N    ??I2C_ReceiveData_0
        LDR.W    R0,??DataTable25  ;; 0x40005800
        CMP      R4,R0
        BEQ.N    ??I2C_ReceiveData_0
        MOV      R1,#+592
        LDR.W    R0,??DataTable25_1
        BL       assert_failed
??I2C_ReceiveData_0:
        LDRH     R0,[R4, #+16]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_Send7bitAddress:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        LDR.W    R0,??DataTable27  ;; 0x40005400
        CMP      R4,R0
        BEQ.N    ??I2C_Send7bitAddress_0
        LDR.W    R0,??DataTable25  ;; 0x40005800
        CMP      R4,R0
        BEQ.N    ??I2C_Send7bitAddress_0
        MOVW     R1,#+610
        LDR.W    R0,??DataTable25_1
        BL       assert_failed
??I2C_Send7bitAddress_0:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??I2C_Send7bitAddress_1
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+1
        BEQ.N    ??I2C_Send7bitAddress_1
        MOVW     R1,#+611
        LDR.W    R0,??DataTable25_1
        BL       assert_failed
??I2C_Send7bitAddress_1:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??I2C_Send7bitAddress_2
        ORRS     R5,R5,#0x1
        B.N      ??I2C_Send7bitAddress_3
??I2C_Send7bitAddress_2:
        ANDS     R5,R5,#0xFE
??I2C_Send7bitAddress_3:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STRH     R5,[R4, #+16]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_ReadRegister:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        LDR.W    R0,??DataTable27  ;; 0x40005400
        CMP      R4,R0
        BEQ.N    ??I2C_ReadRegister_0
        LDR.W    R0,??DataTable25  ;; 0x40005800
        CMP      R4,R0
        BEQ.N    ??I2C_ReadRegister_0
        MOVW     R1,#+647
        LDR.W    R0,??DataTable25_1
        BL       assert_failed
??I2C_ReadRegister_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??I2C_ReadRegister_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+4
        BEQ.N    ??I2C_ReadRegister_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+8
        BEQ.N    ??I2C_ReadRegister_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+12
        BEQ.N    ??I2C_ReadRegister_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+16
        BEQ.N    ??I2C_ReadRegister_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+20
        BEQ.N    ??I2C_ReadRegister_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+24
        BEQ.N    ??I2C_ReadRegister_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+28
        BEQ.N    ??I2C_ReadRegister_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+32
        BEQ.N    ??I2C_ReadRegister_1
        MOV      R1,#+648
        LDR.W    R0,??DataTable25_1
        BL       assert_failed
??I2C_ReadRegister_1:
        STR      R4,[SP, #+0]
        LDR      R0,[SP, #+0]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R0,R5,R0
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
        LDRH     R0,[R0, #+0]
        POP      {R1,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_SoftwareResetCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable27  ;; 0x40005400
        CMP      R4,R0
        BEQ.N    ??I2C_SoftwareResetCmd_0
        LDR.N    R0,??DataTable25  ;; 0x40005800
        CMP      R4,R0
        BEQ.N    ??I2C_SoftwareResetCmd_0
        MOVW     R1,#+667
        LDR.N    R0,??DataTable25_1
        BL       assert_failed
??I2C_SoftwareResetCmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??I2C_SoftwareResetCmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??I2C_SoftwareResetCmd_1
        MOV      R1,#+668
        LDR.N    R0,??DataTable25_1
        BL       assert_failed
??I2C_SoftwareResetCmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??I2C_SoftwareResetCmd_2
        LDRH     R0,[R4, #+0]
        ORRS     R0,R0,#0x8000
        STRH     R0,[R4, #+0]
        B.N      ??I2C_SoftwareResetCmd_3
??I2C_SoftwareResetCmd_2:
        LDRH     R0,[R4, #+0]
        LSLS     R0,R0,#+17       ;; ZeroExtS R0,R0,#+17,#+17
        LSRS     R0,R0,#+17
        STRH     R0,[R4, #+0]
??I2C_SoftwareResetCmd_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_NACKPositionConfig:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable27  ;; 0x40005400
        CMP      R4,R0
        BEQ.N    ??I2C_NACKPositionConfig_0
        LDR.N    R0,??DataTable25  ;; 0x40005800
        CMP      R4,R0
        BEQ.N    ??I2C_NACKPositionConfig_0
        MOVW     R1,#+705
        LDR.N    R0,??DataTable25_1
        BL       assert_failed
??I2C_NACKPositionConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+2048
        BEQ.N    ??I2C_NACKPositionConfig_1
        MOVW     R0,#+63487
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??I2C_NACKPositionConfig_1
        MOVW     R1,#+706
        LDR.N    R0,??DataTable25_1
        BL       assert_failed
??I2C_NACKPositionConfig_1:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+2048
        BNE.N    ??I2C_NACKPositionConfig_2
        LDRH     R0,[R4, #+0]
        ORRS     R0,R0,#0x800
        STRH     R0,[R4, #+0]
        B.N      ??I2C_NACKPositionConfig_3
??I2C_NACKPositionConfig_2:
        LDRH     R0,[R4, #+0]
        MOVW     R1,#+63487
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+0]
??I2C_NACKPositionConfig_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_SMBusAlertConfig:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable27  ;; 0x40005400
        CMP      R4,R0
        BEQ.N    ??I2C_SMBusAlertConfig_0
        LDR.N    R0,??DataTable25  ;; 0x40005800
        CMP      R4,R0
        BEQ.N    ??I2C_SMBusAlertConfig_0
        MOVW     R1,#+733
        LDR.N    R0,??DataTable25_1
        BL       assert_failed
??I2C_SMBusAlertConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8192
        BEQ.N    ??I2C_SMBusAlertConfig_1
        MOVW     R0,#+57343
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??I2C_SMBusAlertConfig_1
        MOVW     R1,#+734
        LDR.N    R0,??DataTable25_1
        BL       assert_failed
??I2C_SMBusAlertConfig_1:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8192
        BNE.N    ??I2C_SMBusAlertConfig_2
        LDRH     R0,[R4, #+0]
        ORRS     R0,R0,#0x2000
        STRH     R0,[R4, #+0]
        B.N      ??I2C_SMBusAlertConfig_3
??I2C_SMBusAlertConfig_2:
        LDRH     R0,[R4, #+0]
        MOVW     R1,#+57343
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+0]
??I2C_SMBusAlertConfig_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_TransmitPEC:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable27  ;; 0x40005400
        CMP      R4,R0
        BEQ.N    ??I2C_TransmitPEC_0
        LDR.N    R0,??DataTable25  ;; 0x40005800
        CMP      R4,R0
        BEQ.N    ??I2C_TransmitPEC_0
        MOVW     R1,#+757
        LDR.N    R0,??DataTable25_1
        BL       assert_failed
??I2C_TransmitPEC_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??I2C_TransmitPEC_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??I2C_TransmitPEC_1
        MOVW     R1,#+758
        LDR.N    R0,??DataTable25_1
        BL       assert_failed
??I2C_TransmitPEC_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??I2C_TransmitPEC_2
        LDRH     R0,[R4, #+0]
        ORRS     R0,R0,#0x1000
        STRH     R0,[R4, #+0]
        B.N      ??I2C_TransmitPEC_3
??I2C_TransmitPEC_2:
        LDRH     R0,[R4, #+0]
        MOVW     R1,#+61439
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+0]
??I2C_TransmitPEC_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_PECPositionConfig:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable27  ;; 0x40005400
        CMP      R4,R0
        BEQ.N    ??I2C_PECPositionConfig_0
        LDR.N    R0,??DataTable25  ;; 0x40005800
        CMP      R4,R0
        BEQ.N    ??I2C_PECPositionConfig_0
        MOV      R1,#+788
        LDR.N    R0,??DataTable25_1
        BL       assert_failed
??I2C_PECPositionConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+2048
        BEQ.N    ??I2C_PECPositionConfig_1
        MOVW     R0,#+63487
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??I2C_PECPositionConfig_1
        MOVW     R1,#+789
        LDR.N    R0,??DataTable25_1
        BL       assert_failed
??I2C_PECPositionConfig_1:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+2048
        BNE.N    ??I2C_PECPositionConfig_2
        LDRH     R0,[R4, #+0]
        ORRS     R0,R0,#0x800
        STRH     R0,[R4, #+0]
        B.N      ??I2C_PECPositionConfig_3
??I2C_PECPositionConfig_2:
        LDRH     R0,[R4, #+0]
        MOVW     R1,#+63487
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+0]
??I2C_PECPositionConfig_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_CalculatePEC:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable27  ;; 0x40005400
        CMP      R4,R0
        BEQ.N    ??I2C_CalculatePEC_0
        LDR.N    R0,??DataTable25  ;; 0x40005800
        CMP      R4,R0
        BEQ.N    ??I2C_CalculatePEC_0
        MOV      R1,#+812
        LDR.N    R0,??DataTable25_1
        BL       assert_failed
??I2C_CalculatePEC_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??I2C_CalculatePEC_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??I2C_CalculatePEC_1
        MOVW     R1,#+813
        LDR.N    R0,??DataTable25_1
        BL       assert_failed
??I2C_CalculatePEC_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??I2C_CalculatePEC_2
        LDRH     R0,[R4, #+0]
        ORRS     R0,R0,#0x20
        STRH     R0,[R4, #+0]
        B.N      ??I2C_CalculatePEC_3
??I2C_CalculatePEC_2:
        LDRH     R0,[R4, #+0]
        MOVW     R1,#+65503
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+0]
??I2C_CalculatePEC_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_GetPEC:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.N    R0,??DataTable27  ;; 0x40005400
        CMP      R4,R0
        BEQ.N    ??I2C_GetPEC_0
        LDR.N    R0,??DataTable25  ;; 0x40005800
        CMP      R4,R0
        BEQ.N    ??I2C_GetPEC_0
        MOVW     R1,#+834
        LDR.N    R0,??DataTable25_1
        BL       assert_failed
??I2C_GetPEC_0:
        LDRH     R0,[R4, #+24]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R0,R0,#+8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_ARPCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable27  ;; 0x40005400
        CMP      R4,R0
        BEQ.N    ??I2C_ARPCmd_0
        LDR.N    R0,??DataTable25  ;; 0x40005800
        CMP      R4,R0
        BEQ.N    ??I2C_ARPCmd_0
        MOVW     R1,#+849
        LDR.N    R0,??DataTable25_1
        BL       assert_failed
??I2C_ARPCmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??I2C_ARPCmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??I2C_ARPCmd_1
        MOVW     R1,#+850
        LDR.N    R0,??DataTable25_1
        BL       assert_failed
??I2C_ARPCmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??I2C_ARPCmd_2
        LDRH     R0,[R4, #+0]
        ORRS     R0,R0,#0x10
        STRH     R0,[R4, #+0]
        B.N      ??I2C_ARPCmd_3
??I2C_ARPCmd_2:
        LDRH     R0,[R4, #+0]
        MOVW     R1,#+65519
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+0]
??I2C_ARPCmd_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_StretchClockCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable27  ;; 0x40005400
        CMP      R4,R0
        BEQ.N    ??I2C_StretchClockCmd_0
        LDR.N    R0,??DataTable25  ;; 0x40005800
        CMP      R4,R0
        BEQ.N    ??I2C_StretchClockCmd_0
        MOVW     R1,#+873
        LDR.N    R0,??DataTable25_1
        BL       assert_failed
??I2C_StretchClockCmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??I2C_StretchClockCmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??I2C_StretchClockCmd_1
        MOVW     R1,#+874
        LDR.N    R0,??DataTable25_1
        BL       assert_failed
??I2C_StretchClockCmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BNE.N    ??I2C_StretchClockCmd_2
        LDRH     R0,[R4, #+0]
        ORRS     R0,R0,#0x80
        STRH     R0,[R4, #+0]
        B.N      ??I2C_StretchClockCmd_3
??I2C_StretchClockCmd_2:
        LDRH     R0,[R4, #+0]
        MOVW     R1,#+65407
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+0]
??I2C_StretchClockCmd_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_FastModeDutyCycleConfig:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable27  ;; 0x40005400
        CMP      R4,R0
        BEQ.N    ??I2C_FastModeDutyCycleConfig_0
        LDR.N    R0,??DataTable25  ;; 0x40005800
        CMP      R4,R0
        BEQ.N    ??I2C_FastModeDutyCycleConfig_0
        MOVW     R1,#+899
        LDR.N    R0,??DataTable25_1
        BL       assert_failed
??I2C_FastModeDutyCycleConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+16384
        BEQ.N    ??I2C_FastModeDutyCycleConfig_1
        MOVW     R0,#+49151
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??I2C_FastModeDutyCycleConfig_1
        MOV      R1,#+900
        LDR.N    R0,??DataTable25_1
        BL       assert_failed
??I2C_FastModeDutyCycleConfig_1:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+16384
        BEQ.N    ??I2C_FastModeDutyCycleConfig_2
        LDRH     R0,[R4, #+28]
        MOVW     R1,#+49151
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+28]
        B.N      ??I2C_FastModeDutyCycleConfig_3
??I2C_FastModeDutyCycleConfig_2:
        LDRH     R0,[R4, #+28]
        ORRS     R0,R0,#0x4000
        STRH     R0,[R4, #+28]
??I2C_FastModeDutyCycleConfig_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25:
        DC32     0x40005800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_1:
        DC32     `?<Constant "D:\\\\zWk.Src\\\\Mango-M32-...">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_CheckEvent:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        MOVS     R7,#+0
        MOVS     R8,#+0
        MOVS     R9,#+0
        LDR.N    R0,??DataTable27  ;; 0x40005400
        CMP      R4,R0
        BEQ.N    ??I2C_CheckEvent_0
        LDR.W    R0,??DataTable31_1  ;; 0x40005800
        CMP      R4,R0
        BEQ.N    ??I2C_CheckEvent_0
        MOVW     R1,#+1043
        LDR.W    R0,??DataTable31_2
        BL       assert_failed
??I2C_CheckEvent_0:
        LDR.W    R0,??DataTable31_3  ;; 0x60082
        CMP      R5,R0
        BEQ.N    ??I2C_CheckEvent_1
        CMP      R5,#+131074
        BEQ.N    ??I2C_CheckEvent_1
        LDR.W    R0,??DataTable31_4  ;; 0x860080
        CMP      R5,R0
        BEQ.N    ??I2C_CheckEvent_1
        CMP      R5,#+8519680
        BEQ.N    ??I2C_CheckEvent_1
        CMP      R5,#+1179648
        BEQ.N    ??I2C_CheckEvent_1
        LDR.W    R0,??DataTable31_5  ;; 0x20040
        CMP      R5,R0
        BEQ.N    ??I2C_CheckEvent_1
        LDR.W    R0,??DataTable31_6  ;; 0x820040
        CMP      R5,R0
        BEQ.N    ??I2C_CheckEvent_1
        LDR.W    R0,??DataTable31_7  ;; 0x120040
        CMP      R5,R0
        BEQ.N    ??I2C_CheckEvent_1
        LDR.W    R0,??DataTable31_8  ;; 0x60084
        CMP      R5,R0
        BEQ.N    ??I2C_CheckEvent_1
        LDR.W    R0,??DataTable31_9  ;; 0x860084
        CMP      R5,R0
        BEQ.N    ??I2C_CheckEvent_1
        LDR.N    R0,??DataTable31_10  ;; 0x160084
        CMP      R5,R0
        BEQ.N    ??I2C_CheckEvent_1
        CMP      R5,#+16
        BEQ.N    ??I2C_CheckEvent_1
        LDR.N    R0,??DataTable31_11  ;; 0x30001
        CMP      R5,R0
        BEQ.N    ??I2C_CheckEvent_1
        LDR.N    R0,??DataTable31_12  ;; 0x70082
        CMP      R5,R0
        BEQ.N    ??I2C_CheckEvent_1
        LDR.N    R0,??DataTable31_13  ;; 0x30002
        CMP      R5,R0
        BEQ.N    ??I2C_CheckEvent_1
        LDR.N    R0,??DataTable31_14  ;; 0x30040
        CMP      R5,R0
        BEQ.N    ??I2C_CheckEvent_1
        LDR.N    R0,??DataTable31_15  ;; 0x70084
        CMP      R5,R0
        BEQ.N    ??I2C_CheckEvent_1
        LDR.N    R0,??DataTable31_16  ;; 0x70080
        CMP      R5,R0
        BEQ.N    ??I2C_CheckEvent_1
        LDR.N    R0,??DataTable31_17  ;; 0x30008
        CMP      R5,R0
        BEQ.N    ??I2C_CheckEvent_1
        CMP      R5,#+1024
        BEQ.N    ??I2C_CheckEvent_1
        MOVW     R1,#+1044
        LDR.N    R0,??DataTable31_2
        BL       assert_failed
??I2C_CheckEvent_1:
        LDRH     R0,[R4, #+20]
        MOVS     R7,R0
        LDRH     R0,[R4, #+24]
        MOV      R8,R0
        LSLS     R8,R8,#+16
        ORRS     R0,R8,R7
        LSLS     R0,R0,#+8        ;; ZeroExtS R0,R0,#+8,#+8
        LSRS     R0,R0,#+8
        MOVS     R6,R0
        ANDS     R0,R5,R6
        CMP      R0,R5
        BNE.N    ??I2C_CheckEvent_2
        MOVS     R0,#+1
        MOV      R9,R0
        B.N      ??I2C_CheckEvent_3
??I2C_CheckEvent_2:
        MOVS     R0,#+0
        MOV      R9,R0
??I2C_CheckEvent_3:
        MOV      R0,R9
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4-R9,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26:
        DC32     0x7a1200

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_GetLastEvent:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        MOVS     R6,#+0
        MOVS     R7,#+0
        LDR.N    R0,??DataTable27  ;; 0x40005400
        CMP      R4,R0
        BEQ.N    ??I2C_GetLastEvent_0
        LDR.N    R0,??DataTable31_1  ;; 0x40005800
        CMP      R4,R0
        BEQ.N    ??I2C_GetLastEvent_0
        MOVW     R1,#+1090
        LDR.N    R0,??DataTable31_2
        BL       assert_failed
??I2C_GetLastEvent_0:
        LDRH     R0,[R4, #+20]
        MOVS     R6,R0
        LDRH     R0,[R4, #+24]
        MOVS     R7,R0
        LSLS     R7,R7,#+16
        ORRS     R0,R7,R6
        LSLS     R0,R0,#+8        ;; ZeroExtS R0,R0,#+8,#+8
        LSRS     R0,R0,#+8
        MOVS     R5,R0
        MOVS     R0,R5
        POP      {R1,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable27:
        DC32     0x40005400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable27_1:
        DC32     0x61a81

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable27_2:
        DC32     0xf4240

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_GetFlagStatus:
        PUSH     {R2-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        LDR.N    R0,??DataTable31_18  ;; 0x40005400
        CMP      R4,R0
        BEQ.N    ??I2C_GetFlagStatus_0
        LDR.N    R0,??DataTable31_1  ;; 0x40005800
        CMP      R4,R0
        BEQ.N    ??I2C_GetFlagStatus_0
        MOVW     R1,#+1145
        LDR.N    R0,??DataTable31_2
        BL       assert_failed
??I2C_GetFlagStatus_0:
        CMP      R5,#+8388608
        BEQ.N    ??I2C_GetFlagStatus_1
        CMP      R5,#+4194304
        BEQ.N    ??I2C_GetFlagStatus_1
        CMP      R5,#+2097152
        BEQ.N    ??I2C_GetFlagStatus_1
        CMP      R5,#+1048576
        BEQ.N    ??I2C_GetFlagStatus_1
        CMP      R5,#+262144
        BEQ.N    ??I2C_GetFlagStatus_1
        CMP      R5,#+131072
        BEQ.N    ??I2C_GetFlagStatus_1
        CMP      R5,#+65536
        BEQ.N    ??I2C_GetFlagStatus_1
        LDR.N    R0,??DataTable31_19  ;; 0x10008000
        CMP      R5,R0
        BEQ.N    ??I2C_GetFlagStatus_1
        LDR.N    R0,??DataTable31_20  ;; 0x10004000
        CMP      R5,R0
        BEQ.N    ??I2C_GetFlagStatus_1
        CMP      R5,#+268439552
        BEQ.N    ??I2C_GetFlagStatus_1
        LDR.N    R0,??DataTable31_21  ;; 0x10000800
        CMP      R5,R0
        BEQ.N    ??I2C_GetFlagStatus_1
        LDR.N    R0,??DataTable31_22  ;; 0x10000400
        CMP      R5,R0
        BEQ.N    ??I2C_GetFlagStatus_1
        LDR.N    R0,??DataTable31_23  ;; 0x10000200
        CMP      R5,R0
        BEQ.N    ??I2C_GetFlagStatus_1
        LDR.N    R0,??DataTable31_24  ;; 0x10000100
        CMP      R5,R0
        BEQ.N    ??I2C_GetFlagStatus_1
        LDR.N    R0,??DataTable31_25  ;; 0x10000080
        CMP      R5,R0
        BEQ.N    ??I2C_GetFlagStatus_1
        LDR.N    R0,??DataTable31_26  ;; 0x10000040
        CMP      R5,R0
        BEQ.N    ??I2C_GetFlagStatus_1
        LDR.N    R0,??DataTable31_27  ;; 0x10000010
        CMP      R5,R0
        BEQ.N    ??I2C_GetFlagStatus_1
        LDR.N    R0,??DataTable31_28  ;; 0x10000008
        CMP      R5,R0
        BEQ.N    ??I2C_GetFlagStatus_1
        LDR.N    R0,??DataTable31_29  ;; 0x10000004
        CMP      R5,R0
        BEQ.N    ??I2C_GetFlagStatus_1
        LDR.N    R0,??DataTable31_30  ;; 0x10000002
        CMP      R5,R0
        BEQ.N    ??I2C_GetFlagStatus_1
        LDR.N    R0,??DataTable31_31  ;; 0x10000001
        CMP      R5,R0
        BEQ.N    ??I2C_GetFlagStatus_1
        MOVW     R1,#+1146
        LDR.N    R0,??DataTable31_2
        BL       assert_failed
??I2C_GetFlagStatus_1:
        STR      R4,[SP, #+0]
        LSRS     R0,R5,#+28
        STR      R0,[SP, #+4]
        LSLS     R5,R5,#+8        ;; ZeroExtS R5,R5,#+8,#+8
        LSRS     R5,R5,#+8
        LDR      R0,[SP, #+4]
        CMP      R0,#+0
        BEQ.N    ??I2C_GetFlagStatus_2
        LDR      R0,[SP, #+0]
        ADDS     R0,R0,#+20
        STR      R0,[SP, #+0]
        B.N      ??I2C_GetFlagStatus_3
??I2C_GetFlagStatus_2:
        LSRS     R5,R5,#+16
        LDR      R0,[SP, #+0]
        ADDS     R0,R0,#+24
        STR      R0,[SP, #+0]
??I2C_GetFlagStatus_3:
        LDR      R0,[SP, #+0]
        LDR      R0,[R0, #+0]
        TST      R0,R5
        BEQ.N    ??I2C_GetFlagStatus_4
        MOVS     R0,#+1
        MOVS     R6,R0
        B.N      ??I2C_GetFlagStatus_5
??I2C_GetFlagStatus_4:
        MOVS     R0,#+0
        MOVS     R6,R0
??I2C_GetFlagStatus_5:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4-R6,PC}  ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_ClearFlag:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.N    R0,??DataTable31_18  ;; 0x40005400
        CMP      R4,R0
        BEQ.N    ??I2C_ClearFlag_0
        LDR.N    R0,??DataTable31_1  ;; 0x40005800
        CMP      R4,R0
        BEQ.N    ??I2C_ClearFlag_0
        MOVW     R1,#+1222
        LDR.N    R0,??DataTable31_2
        BL       assert_failed
??I2C_ClearFlag_0:
        MOVW     R0,#+8447
        TST      R5,R0
        BNE.N    ??I2C_ClearFlag_1
        CMP      R5,#+0
        BNE.N    ??I2C_ClearFlag_2
??I2C_ClearFlag_1:
        MOVW     R1,#+1223
        LDR.N    R0,??DataTable31_2
        BL       assert_failed
??I2C_ClearFlag_2:
        LSLS     R0,R5,#+8        ;; ZeroExtS R0,R5,#+8,#+8
        LSRS     R0,R0,#+8
        MOVS     R6,R0
        MVNS     R0,R6
        STRH     R0,[R4, #+20]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_GetITStatus:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        MOVS     R7,#+0
        LDR.N    R0,??DataTable31_18  ;; 0x40005400
        CMP      R4,R0
        BEQ.N    ??I2C_GetITStatus_0
        LDR.N    R0,??DataTable31_1  ;; 0x40005800
        CMP      R4,R0
        BEQ.N    ??I2C_GetITStatus_0
        MOVW     R1,#+1258
        LDR.N    R0,??DataTable31_2
        BL       assert_failed
??I2C_GetITStatus_0:
        LDR.N    R0,??DataTable31_32  ;; 0x1008000
        CMP      R5,R0
        BEQ.N    ??I2C_GetITStatus_1
        LDR.N    R0,??DataTable31_33  ;; 0x1004000
        CMP      R5,R0
        BEQ.N    ??I2C_GetITStatus_1
        LDR.N    R0,??DataTable31_34  ;; 0x1001000
        CMP      R5,R0
        BEQ.N    ??I2C_GetITStatus_1
        LDR.N    R0,??DataTable31_35  ;; 0x1000800
        CMP      R5,R0
        BEQ.N    ??I2C_GetITStatus_1
        LDR.N    R0,??DataTable31_36  ;; 0x1000400
        CMP      R5,R0
        BEQ.N    ??I2C_GetITStatus_1
        LDR.N    R0,??DataTable31_37  ;; 0x1000200
        CMP      R5,R0
        BEQ.N    ??I2C_GetITStatus_1
        CMP      R5,#+16777472
        BEQ.N    ??I2C_GetITStatus_1
        LDR.N    R0,??DataTable31_38  ;; 0x6000080
        CMP      R5,R0
        BEQ.N    ??I2C_GetITStatus_1
        LDR.N    R0,??DataTable31_39  ;; 0x6000040
        CMP      R5,R0
        BEQ.N    ??I2C_GetITStatus_1
        LDR.N    R0,??DataTable31_40  ;; 0x2000010
        CMP      R5,R0
        BEQ.N    ??I2C_GetITStatus_1
        LDR.N    R0,??DataTable31_41  ;; 0x2000008
        CMP      R5,R0
        BEQ.N    ??I2C_GetITStatus_1
        LDR.N    R0,??DataTable31_42  ;; 0x2000004
        CMP      R5,R0
        BEQ.N    ??I2C_GetITStatus_1
        LDR.N    R0,??DataTable31_43  ;; 0x2000002
        CMP      R5,R0
        BEQ.N    ??I2C_GetITStatus_1
        LDR.N    R0,??DataTable31_44  ;; 0x2000001
        CMP      R5,R0
        BEQ.N    ??I2C_GetITStatus_1
        MOVW     R1,#+1259
        LDR.N    R0,??DataTable31_2
        BL       assert_failed
??I2C_GetITStatus_1:
        LDRH     R0,[R4, #+4]
        ANDS     R0,R0,R5, LSR #+16
        ANDS     R0,R0,#0x700
        MOVS     R7,R0
        LSLS     R5,R5,#+8        ;; ZeroExtS R5,R5,#+8,#+8
        LSRS     R5,R5,#+8
        LDRH     R0,[R4, #+20]
        TST      R0,R5
        BEQ.N    ??I2C_GetITStatus_2
        CMP      R7,#+0
        BEQ.N    ??I2C_GetITStatus_2
        MOVS     R0,#+1
        MOVS     R6,R0
        B.N      ??I2C_GetITStatus_3
??I2C_GetITStatus_2:
        MOVS     R0,#+0
        MOVS     R6,R0
??I2C_GetITStatus_3:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_ClearITPendingBit:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.N    R0,??DataTable31_18  ;; 0x40005400
        CMP      R4,R0
        BEQ.N    ??I2C_ClearITPendingBit_0
        LDR.N    R0,??DataTable31_1  ;; 0x40005800
        CMP      R4,R0
        BEQ.N    ??I2C_ClearITPendingBit_0
        MOVW     R1,#+1317
        LDR.N    R0,??DataTable31_2
        BL       assert_failed
??I2C_ClearITPendingBit_0:
        MOVW     R0,#+8447
        TST      R5,R0
        BNE.N    ??I2C_ClearITPendingBit_1
        CMP      R5,#+0
        BNE.N    ??I2C_ClearITPendingBit_2
??I2C_ClearITPendingBit_1:
        MOVW     R1,#+1318
        LDR.N    R0,??DataTable31_2
        BL       assert_failed
??I2C_ClearITPendingBit_2:
        LSLS     R0,R5,#+8        ;; ZeroExtS R0,R5,#+8,#+8
        LSRS     R0,R0,#+8
        MOVS     R6,R0
        MVNS     R0,R6
        STRH     R0,[R4, #+20]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31:
        DC32     0x186a1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_1:
        DC32     0x40005800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_2:
        DC32     `?<Constant "D:\\\\zWk.Src\\\\Mango-M32-...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_3:
        DC32     0x60082

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_4:
        DC32     0x860080

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_5:
        DC32     0x20040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_6:
        DC32     0x820040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_7:
        DC32     0x120040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_8:
        DC32     0x60084

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_9:
        DC32     0x860084

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_10:
        DC32     0x160084

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_11:
        DC32     0x30001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_12:
        DC32     0x70082

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_13:
        DC32     0x30002

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_14:
        DC32     0x30040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_15:
        DC32     0x70084

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_16:
        DC32     0x70080

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_17:
        DC32     0x30008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_18:
        DC32     0x40005400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_19:
        DC32     0x10008000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_20:
        DC32     0x10004000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_21:
        DC32     0x10000800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_22:
        DC32     0x10000400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_23:
        DC32     0x10000200

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_24:
        DC32     0x10000100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_25:
        DC32     0x10000080

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_26:
        DC32     0x10000040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_27:
        DC32     0x10000010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_28:
        DC32     0x10000008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_29:
        DC32     0x10000004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_30:
        DC32     0x10000002

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_31:
        DC32     0x10000001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_32:
        DC32     0x1008000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_33:
        DC32     0x1004000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_34:
        DC32     0x1001000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_35:
        DC32     0x1000800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_36:
        DC32     0x1000400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_37:
        DC32     0x1000200

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_38:
        DC32     0x6000080

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_39:
        DC32     0x6000040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_40:
        DC32     0x2000010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_41:
        DC32     0x2000008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_42:
        DC32     0x2000004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_43:
        DC32     0x2000002

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_44:
        DC32     0x2000001

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
        DC8 78H, 5FH, 69H, 32H, 63H, 2EH, 63H, 0

        END
// 
//   112 bytes in section .rodata
// 3 462 bytes in section .text
// 
// 3 462 bytes of CODE  memory
//   112 bytes of CONST memory
//
//Errors: none
//Warnings: none
