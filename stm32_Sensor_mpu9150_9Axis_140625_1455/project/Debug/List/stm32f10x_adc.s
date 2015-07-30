///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.6.53336/W32 for ARM    25/Jun/2014  14:55:02 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    Libraries\STM32F10x_StdPeriph_Driver\src\stm32f10x_adc. /
//                    c                                                       /
//    Command line =  D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    Libraries\STM32F10x_StdPeriph_Driver\src\stm32f10x_adc. /
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
//                    project\Debug\List\stm32f10x_adc.s                      /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm32f10x_adc

        #define SHT_PROGBITS 0x1

        EXTERN RCC_APB2PeriphResetCmd
        EXTERN assert_failed

        PUBLIC ADC_AnalogWatchdogCmd
        PUBLIC ADC_AnalogWatchdogSingleChannelConfig
        PUBLIC ADC_AnalogWatchdogThresholdsConfig
        PUBLIC ADC_AutoInjectedConvCmd
        PUBLIC ADC_ClearFlag
        PUBLIC ADC_ClearITPendingBit
        PUBLIC ADC_Cmd
        PUBLIC ADC_DMACmd
        PUBLIC ADC_DeInit
        PUBLIC ADC_DiscModeChannelCountConfig
        PUBLIC ADC_DiscModeCmd
        PUBLIC ADC_ExternalTrigConvCmd
        PUBLIC ADC_ExternalTrigInjectedConvCmd
        PUBLIC ADC_ExternalTrigInjectedConvConfig
        PUBLIC ADC_GetCalibrationStatus
        PUBLIC ADC_GetConversionValue
        PUBLIC ADC_GetDualModeConversionValue
        PUBLIC ADC_GetFlagStatus
        PUBLIC ADC_GetITStatus
        PUBLIC ADC_GetInjectedConversionValue
        PUBLIC ADC_GetResetCalibrationStatus
        PUBLIC ADC_GetSoftwareStartConvStatus
        PUBLIC ADC_GetSoftwareStartInjectedConvCmdStatus
        PUBLIC ADC_ITConfig
        PUBLIC ADC_Init
        PUBLIC ADC_InjectedChannelConfig
        PUBLIC ADC_InjectedDiscModeCmd
        PUBLIC ADC_InjectedSequencerLengthConfig
        PUBLIC ADC_RegularChannelConfig
        PUBLIC ADC_ResetCalibration
        PUBLIC ADC_SetInjectedOffset
        PUBLIC ADC_SoftwareStartConvCmd
        PUBLIC ADC_SoftwareStartInjectedConvCmd
        PUBLIC ADC_StartCalibration
        PUBLIC ADC_StructInit
        PUBLIC ADC_TempSensorVrefintCmd


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_DeInit:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.W    R0,??DataTable22  ;; 0x40012400
        CMP      R4,R0
        BEQ.N    ??ADC_DeInit_0
        LDR.W    R0,??DataTable22_1  ;; 0x40012800
        CMP      R4,R0
        BEQ.N    ??ADC_DeInit_0
        LDR.W    R0,??DataTable22_2  ;; 0x40013c00
        CMP      R4,R0
        BEQ.N    ??ADC_DeInit_0
        MOVS     R1,#+188
        LDR.W    R0,??DataTable22_3
        BL       assert_failed
??ADC_DeInit_0:
        LDR.W    R0,??DataTable22  ;; 0x40012400
        CMP      R4,R0
        BNE.N    ??ADC_DeInit_1
        MOVS     R1,#+1
        MOV      R0,#+512
        BL       RCC_APB2PeriphResetCmd
        MOVS     R1,#+0
        MOV      R0,#+512
        BL       RCC_APB2PeriphResetCmd
        B.N      ??ADC_DeInit_2
??ADC_DeInit_1:
        LDR.W    R0,??DataTable22_1  ;; 0x40012800
        CMP      R4,R0
        BNE.N    ??ADC_DeInit_3
        MOVS     R1,#+1
        MOV      R0,#+1024
        BL       RCC_APB2PeriphResetCmd
        MOVS     R1,#+0
        MOV      R0,#+1024
        BL       RCC_APB2PeriphResetCmd
        B.N      ??ADC_DeInit_2
??ADC_DeInit_3:
        LDR.W    R0,??DataTable22_2  ;; 0x40013c00
        CMP      R4,R0
        BNE.N    ??ADC_DeInit_2
        MOVS     R1,#+1
        MOV      R0,#+32768
        BL       RCC_APB2PeriphResetCmd
        MOVS     R1,#+0
        MOV      R0,#+32768
        BL       RCC_APB2PeriphResetCmd
??ADC_DeInit_2:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_Init:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        MOVS     R7,#+0
        LDR.W    R0,??DataTable22  ;; 0x40012400
        CMP      R4,R0
        BEQ.N    ??ADC_Init_0
        LDR.W    R0,??DataTable22_1  ;; 0x40012800
        CMP      R4,R0
        BEQ.N    ??ADC_Init_0
        LDR.W    R0,??DataTable22_2  ;; 0x40013c00
        CMP      R4,R0
        BEQ.N    ??ADC_Init_0
        MOVS     R1,#+229
        LDR.W    R0,??DataTable22_3
        BL       assert_failed
??ADC_Init_0:
        LDR      R0,[R5, #+0]
        CMP      R0,#+0
        BEQ.N    ??ADC_Init_1
        LDR      R0,[R5, #+0]
        CMP      R0,#+65536
        BEQ.N    ??ADC_Init_1
        LDR      R0,[R5, #+0]
        CMP      R0,#+131072
        BEQ.N    ??ADC_Init_1
        LDR      R0,[R5, #+0]
        CMP      R0,#+196608
        BEQ.N    ??ADC_Init_1
        LDR      R0,[R5, #+0]
        CMP      R0,#+262144
        BEQ.N    ??ADC_Init_1
        LDR      R0,[R5, #+0]
        CMP      R0,#+327680
        BEQ.N    ??ADC_Init_1
        LDR      R0,[R5, #+0]
        CMP      R0,#+393216
        BEQ.N    ??ADC_Init_1
        LDR      R0,[R5, #+0]
        CMP      R0,#+458752
        BEQ.N    ??ADC_Init_1
        LDR      R0,[R5, #+0]
        CMP      R0,#+524288
        BEQ.N    ??ADC_Init_1
        LDR      R0,[R5, #+0]
        CMP      R0,#+589824
        BEQ.N    ??ADC_Init_1
        MOVS     R1,#+230
        LDR.W    R0,??DataTable22_3
        BL       assert_failed
??ADC_Init_1:
        LDRB     R0,[R5, #+4]
        CMP      R0,#+0
        BEQ.N    ??ADC_Init_2
        LDRB     R0,[R5, #+4]
        CMP      R0,#+1
        BEQ.N    ??ADC_Init_2
        MOVS     R1,#+231
        LDR.W    R0,??DataTable22_3
        BL       assert_failed
??ADC_Init_2:
        LDRB     R0,[R5, #+5]
        CMP      R0,#+0
        BEQ.N    ??ADC_Init_3
        LDRB     R0,[R5, #+5]
        CMP      R0,#+1
        BEQ.N    ??ADC_Init_3
        MOVS     R1,#+232
        LDR.W    R0,??DataTable22_3
        BL       assert_failed
??ADC_Init_3:
        LDR      R0,[R5, #+8]
        CMP      R0,#+0
        BEQ.N    ??ADC_Init_4
        LDR      R0,[R5, #+8]
        CMP      R0,#+131072
        BEQ.N    ??ADC_Init_4
        LDR      R0,[R5, #+8]
        CMP      R0,#+262144
        BEQ.N    ??ADC_Init_4
        LDR      R0,[R5, #+8]
        CMP      R0,#+393216
        BEQ.N    ??ADC_Init_4
        LDR      R0,[R5, #+8]
        CMP      R0,#+524288
        BEQ.N    ??ADC_Init_4
        LDR      R0,[R5, #+8]
        CMP      R0,#+655360
        BEQ.N    ??ADC_Init_4
        LDR      R0,[R5, #+8]
        CMP      R0,#+786432
        BEQ.N    ??ADC_Init_4
        LDR      R0,[R5, #+8]
        CMP      R0,#+917504
        BEQ.N    ??ADC_Init_4
        LDR      R0,[R5, #+8]
        CMP      R0,#+0
        BEQ.N    ??ADC_Init_4
        LDR      R0,[R5, #+8]
        CMP      R0,#+131072
        BEQ.N    ??ADC_Init_4
        LDR      R0,[R5, #+8]
        CMP      R0,#+393216
        BEQ.N    ??ADC_Init_4
        LDR      R0,[R5, #+8]
        CMP      R0,#+524288
        BEQ.N    ??ADC_Init_4
        LDR      R0,[R5, #+8]
        CMP      R0,#+655360
        BEQ.N    ??ADC_Init_4
        LDR      R0,[R5, #+8]
        CMP      R0,#+786432
        BEQ.N    ??ADC_Init_4
        MOVS     R1,#+233
        LDR.W    R0,??DataTable22_3
        BL       assert_failed
??ADC_Init_4:
        LDR      R0,[R5, #+12]
        CMP      R0,#+0
        BEQ.N    ??ADC_Init_5
        LDR      R0,[R5, #+12]
        CMP      R0,#+2048
        BEQ.N    ??ADC_Init_5
        MOVS     R1,#+234
        LDR.W    R0,??DataTable22_3
        BL       assert_failed
??ADC_Init_5:
        LDRB     R0,[R5, #+16]
        CMP      R0,#+1
        BCC.N    ??ADC_Init_6
        LDRB     R0,[R5, #+16]
        CMP      R0,#+17
        BCC.N    ??ADC_Init_7
??ADC_Init_6:
        MOVS     R1,#+235
        LDR.W    R0,??DataTable22_3
        BL       assert_failed
??ADC_Init_7:
        LDR      R0,[R4, #+4]
        MOVS     R6,R0
        LDR.W    R0,??DataTable24  ;; 0xfff0feff
        ANDS     R6,R0,R6
        LDR      R0,[R5, #+0]
        LDRB     R1,[R5, #+4]
        ORRS     R0,R0,R1, LSL #+8
        ORRS     R6,R0,R6
        STR      R6,[R4, #+4]
        LDR      R0,[R4, #+8]
        MOVS     R6,R0
        LDR.W    R0,??DataTable28  ;; 0xfff1f7fd
        ANDS     R6,R0,R6
        LDR      R0,[R5, #+12]
        LDR      R1,[R5, #+8]
        ORRS     R0,R1,R0
        LDRB     R1,[R5, #+5]
        ORRS     R0,R0,R1, LSL #+1
        ORRS     R6,R0,R6
        STR      R6,[R4, #+8]
        LDR      R0,[R4, #+44]
        MOVS     R6,R0
        BICS     R6,R6,#0xF00000
        LDRB     R0,[R5, #+16]
        SUBS     R0,R0,#+1
        ORRS     R7,R0,R7
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        ORRS     R6,R6,R7, LSL #+20
        STR      R6,[R4, #+44]
        POP      {R0,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_StructInit:
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        MOVS     R1,#+0
        STRB     R1,[R0, #+4]
        MOVS     R1,#+0
        STRB     R1,[R0, #+5]
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
        MOVS     R1,#+1
        STRB     R1,[R0, #+16]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_Cmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable22  ;; 0x40012400
        CMP      R4,R0
        BEQ.N    ??ADC_Cmd_0
        LDR.W    R0,??DataTable22_1  ;; 0x40012800
        CMP      R4,R0
        BEQ.N    ??ADC_Cmd_0
        LDR.W    R0,??DataTable22_2  ;; 0x40013c00
        CMP      R4,R0
        BEQ.N    ??ADC_Cmd_0
        MOV      R1,#+308
        LDR.W    R0,??DataTable22_3
        BL       assert_failed
??ADC_Cmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??ADC_Cmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??ADC_Cmd_1
        MOVW     R1,#+309
        LDR.W    R0,??DataTable22_3
        BL       assert_failed
??ADC_Cmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??ADC_Cmd_2
        LDR      R0,[R4, #+8]
        ORRS     R0,R0,#0x1
        STR      R0,[R4, #+8]
        B.N      ??ADC_Cmd_3
??ADC_Cmd_2:
        LDR      R0,[R4, #+8]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        STR      R0,[R4, #+8]
??ADC_Cmd_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_DMACmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable22  ;; 0x40012400
        CMP      R4,R0
        BEQ.N    ??ADC_DMACmd_0
        LDR.W    R0,??DataTable22_2  ;; 0x40013c00
        CMP      R4,R0
        BEQ.N    ??ADC_DMACmd_0
        MOVW     R1,#+333
        LDR.W    R0,??DataTable22_3
        BL       assert_failed
??ADC_DMACmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??ADC_DMACmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??ADC_DMACmd_1
        MOV      R1,#+334
        LDR.W    R0,??DataTable22_3
        BL       assert_failed
??ADC_DMACmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??ADC_DMACmd_2
        LDR      R0,[R4, #+8]
        MOV      R1,#+256
        ORRS     R0,R1,R0
        STR      R0,[R4, #+8]
        B.N      ??ADC_DMACmd_3
??ADC_DMACmd_2:
        LDR      R0,[R4, #+8]
        BICS     R0,R0,#0x100
        STR      R0,[R4, #+8]
??ADC_DMACmd_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_ITConfig:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,#+0
        LDR.W    R0,??DataTable22  ;; 0x40012400
        CMP      R4,R0
        BEQ.N    ??ADC_ITConfig_0
        LDR.W    R0,??DataTable22_1  ;; 0x40012800
        CMP      R4,R0
        BEQ.N    ??ADC_ITConfig_0
        LDR.W    R0,??DataTable22_2  ;; 0x40013c00
        CMP      R4,R0
        BEQ.N    ??ADC_ITConfig_0
        MOVW     R1,#+363
        LDR.W    R0,??DataTable22_3
        BL       assert_failed
??ADC_ITConfig_0:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??ADC_ITConfig_1
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+1
        BEQ.N    ??ADC_ITConfig_1
        MOV      R1,#+364
        LDR.W    R0,??DataTable22_3
        BL       assert_failed
??ADC_ITConfig_1:
        MOVW     R0,#+63519
        TST      R5,R0
        BNE.N    ??ADC_ITConfig_2
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BNE.N    ??ADC_ITConfig_3
??ADC_ITConfig_2:
        MOVW     R1,#+365
        LDR.W    R0,??DataTable22_3
        BL       assert_failed
??ADC_ITConfig_3:
        MOVS     R0,R5
        MOVS     R7,R0
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??ADC_ITConfig_4
        LDR      R0,[R4, #+4]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        ORRS     R0,R7,R0
        STR      R0,[R4, #+4]
        B.N      ??ADC_ITConfig_5
??ADC_ITConfig_4:
        LDR      R0,[R4, #+4]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        BICS     R0,R0,R7
        STR      R0,[R4, #+4]
??ADC_ITConfig_5:
        POP      {R0,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_ResetCalibration:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.W    R0,??DataTable22  ;; 0x40012400
        CMP      R4,R0
        BEQ.N    ??ADC_ResetCalibration_0
        LDR.W    R0,??DataTable22_1  ;; 0x40012800
        CMP      R4,R0
        BEQ.N    ??ADC_ResetCalibration_0
        LDR.W    R0,??DataTable22_2  ;; 0x40013c00
        CMP      R4,R0
        BEQ.N    ??ADC_ResetCalibration_0
        MOV      R1,#+388
        LDR.W    R0,??DataTable22_3
        BL       assert_failed
??ADC_ResetCalibration_0:
        LDR      R0,[R4, #+8]
        ORRS     R0,R0,#0x8
        STR      R0,[R4, #+8]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_GetResetCalibrationStatus:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        LDR.W    R0,??DataTable22  ;; 0x40012400
        CMP      R4,R0
        BEQ.N    ??ADC_GetResetCalibrationStatus_0
        LDR.W    R0,??DataTable22_1  ;; 0x40012800
        CMP      R4,R0
        BEQ.N    ??ADC_GetResetCalibrationStatus_0
        LDR.W    R0,??DataTable22_2  ;; 0x40013c00
        CMP      R4,R0
        BEQ.N    ??ADC_GetResetCalibrationStatus_0
        MOV      R1,#+402
        LDR.W    R0,??DataTable22_3
        BL       assert_failed
??ADC_GetResetCalibrationStatus_0:
        LDR      R0,[R4, #+8]
        LSLS     R0,R0,#+28
        BPL.N    ??ADC_GetResetCalibrationStatus_1
        MOVS     R0,#+1
        MOVS     R5,R0
        B.N      ??ADC_GetResetCalibrationStatus_2
??ADC_GetResetCalibrationStatus_1:
        MOVS     R0,#+0
        MOVS     R5,R0
??ADC_GetResetCalibrationStatus_2:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_StartCalibration:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.W    R0,??DataTable22  ;; 0x40012400
        CMP      R4,R0
        BEQ.N    ??ADC_StartCalibration_0
        LDR.W    R0,??DataTable22_1  ;; 0x40012800
        CMP      R4,R0
        BEQ.N    ??ADC_StartCalibration_0
        LDR.W    R0,??DataTable22_2  ;; 0x40013c00
        CMP      R4,R0
        BEQ.N    ??ADC_StartCalibration_0
        MOV      R1,#+426
        LDR.W    R0,??DataTable22_3
        BL       assert_failed
??ADC_StartCalibration_0:
        LDR      R0,[R4, #+8]
        ORRS     R0,R0,#0x4
        STR      R0,[R4, #+8]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_GetCalibrationStatus:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        LDR.W    R0,??DataTable22  ;; 0x40012400
        CMP      R4,R0
        BEQ.N    ??ADC_GetCalibrationStatus_0
        LDR.W    R0,??DataTable22_1  ;; 0x40012800
        CMP      R4,R0
        BEQ.N    ??ADC_GetCalibrationStatus_0
        LDR.W    R0,??DataTable22_2  ;; 0x40013c00
        CMP      R4,R0
        BEQ.N    ??ADC_GetCalibrationStatus_0
        MOV      R1,#+440
        LDR.W    R0,??DataTable34
        BL       assert_failed
??ADC_GetCalibrationStatus_0:
        LDR      R0,[R4, #+8]
        LSLS     R0,R0,#+29
        BPL.N    ??ADC_GetCalibrationStatus_1
        MOVS     R0,#+1
        MOVS     R5,R0
        B.N      ??ADC_GetCalibrationStatus_2
??ADC_GetCalibrationStatus_1:
        MOVS     R0,#+0
        MOVS     R5,R0
??ADC_GetCalibrationStatus_2:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_SoftwareStartConvCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable22  ;; 0x40012400
        CMP      R4,R0
        BEQ.N    ??ADC_SoftwareStartConvCmd_0
        LDR.W    R0,??DataTable22_1  ;; 0x40012800
        CMP      R4,R0
        BEQ.N    ??ADC_SoftwareStartConvCmd_0
        LDR.W    R0,??DataTable22_2  ;; 0x40013c00
        CMP      R4,R0
        BEQ.N    ??ADC_SoftwareStartConvCmd_0
        MOV      R1,#+466
        LDR.W    R0,??DataTable34
        BL       assert_failed
??ADC_SoftwareStartConvCmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??ADC_SoftwareStartConvCmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??ADC_SoftwareStartConvCmd_1
        MOVW     R1,#+467
        LDR.W    R0,??DataTable34
        BL       assert_failed
??ADC_SoftwareStartConvCmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??ADC_SoftwareStartConvCmd_2
        LDR      R0,[R4, #+8]
        ORRS     R0,R0,#0x500000
        STR      R0,[R4, #+8]
        B.N      ??ADC_SoftwareStartConvCmd_3
??ADC_SoftwareStartConvCmd_2:
        LDR      R0,[R4, #+8]
        BICS     R0,R0,#0x500000
        STR      R0,[R4, #+8]
??ADC_SoftwareStartConvCmd_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_GetSoftwareStartConvStatus:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        LDR.W    R0,??DataTable22  ;; 0x40012400
        CMP      R4,R0
        BEQ.N    ??ADC_GetSoftwareStartConvStatus_0
        LDR.W    R0,??DataTable22_1  ;; 0x40012800
        CMP      R4,R0
        BEQ.N    ??ADC_GetSoftwareStartConvStatus_0
        LDR.W    R0,??DataTable22_2  ;; 0x40013c00
        CMP      R4,R0
        BEQ.N    ??ADC_GetSoftwareStartConvStatus_0
        MOVW     R1,#+491
        LDR.W    R0,??DataTable34
        BL       assert_failed
??ADC_GetSoftwareStartConvStatus_0:
        LDR      R0,[R4, #+8]
        LSLS     R0,R0,#+9
        BPL.N    ??ADC_GetSoftwareStartConvStatus_1
        MOVS     R0,#+1
        MOVS     R5,R0
        B.N      ??ADC_GetSoftwareStartConvStatus_2
??ADC_GetSoftwareStartConvStatus_1:
        MOVS     R0,#+0
        MOVS     R5,R0
??ADC_GetSoftwareStartConvStatus_2:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_DiscModeChannelCountConfig:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R7,#+0
        MOVS     R6,#+0
        LDR.W    R0,??DataTable22  ;; 0x40012400
        CMP      R4,R0
        BEQ.N    ??ADC_DiscModeChannelCountConfig_0
        LDR.W    R0,??DataTable22_1  ;; 0x40012800
        CMP      R4,R0
        BEQ.N    ??ADC_DiscModeChannelCountConfig_0
        LDR.W    R0,??DataTable22_2  ;; 0x40013c00
        CMP      R4,R0
        BEQ.N    ??ADC_DiscModeChannelCountConfig_0
        MOV      R1,#+520
        LDR.W    R0,??DataTable34
        BL       assert_failed
??ADC_DiscModeChannelCountConfig_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BCC.N    ??ADC_DiscModeChannelCountConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+9
        BCC.N    ??ADC_DiscModeChannelCountConfig_2
??ADC_DiscModeChannelCountConfig_1:
        MOVW     R1,#+521
        LDR.W    R0,??DataTable34
        BL       assert_failed
??ADC_DiscModeChannelCountConfig_2:
        LDR      R0,[R4, #+4]
        MOVS     R7,R0
        BICS     R7,R7,#0xE000
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        SUBS     R0,R5,#+1
        MOVS     R6,R0
        ORRS     R7,R7,R6, LSL #+13
        STR      R7,[R4, #+4]
        POP      {R0,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_DiscModeCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable22  ;; 0x40012400
        CMP      R4,R0
        BEQ.N    ??ADC_DiscModeCmd_0
        LDR.W    R0,??DataTable22_1  ;; 0x40012800
        CMP      R4,R0
        BEQ.N    ??ADC_DiscModeCmd_0
        LDR.W    R0,??DataTable22_2  ;; 0x40013c00
        CMP      R4,R0
        BEQ.N    ??ADC_DiscModeCmd_0
        MOVW     R1,#+545
        LDR.W    R0,??DataTable34
        BL       assert_failed
??ADC_DiscModeCmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??ADC_DiscModeCmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??ADC_DiscModeCmd_1
        MOVW     R1,#+546
        LDR.W    R0,??DataTable34
        BL       assert_failed
??ADC_DiscModeCmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??ADC_DiscModeCmd_2
        LDR      R0,[R4, #+4]
        ORRS     R0,R0,#0x800
        STR      R0,[R4, #+4]
        B.N      ??ADC_DiscModeCmd_3
??ADC_DiscModeCmd_2:
        LDR      R0,[R4, #+4]
        BICS     R0,R0,#0x800
        STR      R0,[R4, #+4]
??ADC_DiscModeCmd_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_RegularChannelConfig:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        MOVS     R8,#+0
        MOVS     R9,#+0
        LDR.W    R0,??DataTable22  ;; 0x40012400
        CMP      R4,R0
        BEQ.N    ??ADC_RegularChannelConfig_0
        LDR.W    R0,??DataTable22_1  ;; 0x40012800
        CMP      R4,R0
        BEQ.N    ??ADC_RegularChannelConfig_0
        LDR.W    R0,??DataTable22_2  ;; 0x40013c00
        CMP      R4,R0
        BEQ.N    ??ADC_RegularChannelConfig_0
        MOV      R1,#+600
        LDR.W    R0,??DataTable34
        BL       assert_failed
??ADC_RegularChannelConfig_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??ADC_RegularChannelConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??ADC_RegularChannelConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+2
        BEQ.N    ??ADC_RegularChannelConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+3
        BEQ.N    ??ADC_RegularChannelConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+4
        BEQ.N    ??ADC_RegularChannelConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+5
        BEQ.N    ??ADC_RegularChannelConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+6
        BEQ.N    ??ADC_RegularChannelConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+7
        BEQ.N    ??ADC_RegularChannelConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+8
        BEQ.N    ??ADC_RegularChannelConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+9
        BEQ.N    ??ADC_RegularChannelConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+10
        BEQ.N    ??ADC_RegularChannelConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+11
        BEQ.N    ??ADC_RegularChannelConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+12
        BEQ.N    ??ADC_RegularChannelConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+13
        BEQ.N    ??ADC_RegularChannelConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+14
        BEQ.N    ??ADC_RegularChannelConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+15
        BEQ.N    ??ADC_RegularChannelConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+16
        BEQ.N    ??ADC_RegularChannelConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+17
        BEQ.N    ??ADC_RegularChannelConfig_1
        MOVW     R1,#+601
        LDR.W    R0,??DataTable34
        BL       assert_failed
??ADC_RegularChannelConfig_1:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+1
        BCC.N    ??ADC_RegularChannelConfig_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+17
        BCC.N    ??ADC_RegularChannelConfig_3
??ADC_RegularChannelConfig_2:
        MOVW     R1,#+602
        LDR.W    R0,??DataTable34
        BL       assert_failed
??ADC_RegularChannelConfig_3:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+0
        BEQ.N    ??ADC_RegularChannelConfig_4
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+1
        BEQ.N    ??ADC_RegularChannelConfig_4
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+2
        BEQ.N    ??ADC_RegularChannelConfig_4
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+3
        BEQ.N    ??ADC_RegularChannelConfig_4
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+4
        BEQ.N    ??ADC_RegularChannelConfig_4
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+5
        BEQ.N    ??ADC_RegularChannelConfig_4
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+6
        BEQ.N    ??ADC_RegularChannelConfig_4
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+7
        BEQ.N    ??ADC_RegularChannelConfig_4
        MOVW     R1,#+603
        LDR.W    R0,??DataTable34
        BL       assert_failed
??ADC_RegularChannelConfig_4:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+10
        BCC.N    ??ADC_RegularChannelConfig_5
        LDR      R0,[R4, #+12]
        MOV      R8,R0
        MOVS     R0,#+7
        SUBS     R1,R5,#+10
        MOVS     R2,#+3
        MULS     R1,R2,R1
        LSLS     R0,R0,R1
        MOV      R9,R0
        BICS     R8,R8,R9
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        SUBS     R0,R5,#+10
        MOVS     R1,#+3
        MULS     R0,R1,R0
        LSLS     R0,R7,R0
        MOV      R9,R0
        ORRS     R8,R9,R8
        STR      R8,[R4, #+12]
        B.N      ??ADC_RegularChannelConfig_6
??ADC_RegularChannelConfig_5:
        LDR      R0,[R4, #+16]
        MOV      R8,R0
        MOVS     R0,#+7
        MOVS     R1,#+3
        MUL      R1,R1,R5
        LSLS     R0,R0,R1
        MOV      R9,R0
        BICS     R8,R8,R9
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        MOVS     R0,#+3
        MUL      R0,R0,R5
        LSLS     R0,R7,R0
        MOV      R9,R0
        ORRS     R8,R9,R8
        STR      R8,[R4, #+16]
??ADC_RegularChannelConfig_6:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+7
        BCS.N    ??ADC_RegularChannelConfig_7
        LDR      R0,[R4, #+52]
        MOV      R8,R0
        MOVS     R0,#+31
        SUBS     R1,R6,#+1
        MOVS     R2,#+5
        MULS     R1,R2,R1
        LSLS     R0,R0,R1
        MOV      R9,R0
        BICS     R8,R8,R9
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        SUBS     R0,R6,#+1
        MOVS     R1,#+5
        MULS     R0,R1,R0
        LSLS     R0,R5,R0
        MOV      R9,R0
        ORRS     R8,R9,R8
        STR      R8,[R4, #+52]
        B.N      ??ADC_RegularChannelConfig_8
??ADC_RegularChannelConfig_7:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+13
        BCS.N    ??ADC_RegularChannelConfig_9
        LDR      R0,[R4, #+48]
        MOV      R8,R0
        MOVS     R0,#+31
        SUBS     R1,R6,#+7
        MOVS     R2,#+5
        MULS     R1,R2,R1
        LSLS     R0,R0,R1
        MOV      R9,R0
        BICS     R8,R8,R9
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        SUBS     R0,R6,#+7
        MOVS     R1,#+5
        MULS     R0,R1,R0
        LSLS     R0,R5,R0
        MOV      R9,R0
        ORRS     R8,R9,R8
        STR      R8,[R4, #+48]
        B.N      ??ADC_RegularChannelConfig_8
??ADC_RegularChannelConfig_9:
        LDR      R0,[R4, #+44]
        MOV      R8,R0
        MOVS     R0,#+31
        SUBS     R1,R6,#+13
        MOVS     R2,#+5
        MULS     R1,R2,R1
        LSLS     R0,R0,R1
        MOV      R9,R0
        BICS     R8,R8,R9
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        SUBS     R0,R6,#+13
        MOVS     R1,#+5
        MULS     R0,R1,R0
        LSLS     R0,R5,R0
        MOV      R9,R0
        ORRS     R8,R9,R8
        STR      R8,[R4, #+44]
??ADC_RegularChannelConfig_8:
        POP      {R0,R4-R9,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_ExternalTrigConvCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable22  ;; 0x40012400
        CMP      R4,R0
        BEQ.N    ??ADC_ExternalTrigConvCmd_0
        LDR.N    R0,??DataTable22_1  ;; 0x40012800
        CMP      R4,R0
        BEQ.N    ??ADC_ExternalTrigConvCmd_0
        LDR.N    R0,??DataTable22_2  ;; 0x40013c00
        CMP      R4,R0
        BEQ.N    ??ADC_ExternalTrigConvCmd_0
        MOVW     R1,#+695
        LDR.W    R0,??DataTable34
        BL       assert_failed
??ADC_ExternalTrigConvCmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??ADC_ExternalTrigConvCmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??ADC_ExternalTrigConvCmd_1
        MOV      R1,#+696
        LDR.W    R0,??DataTable34
        BL       assert_failed
??ADC_ExternalTrigConvCmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??ADC_ExternalTrigConvCmd_2
        LDR      R0,[R4, #+8]
        ORRS     R0,R0,#0x100000
        STR      R0,[R4, #+8]
        B.N      ??ADC_ExternalTrigConvCmd_3
??ADC_ExternalTrigConvCmd_2:
        LDR      R0,[R4, #+8]
        BICS     R0,R0,#0x100000
        STR      R0,[R4, #+8]
??ADC_ExternalTrigConvCmd_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_GetConversionValue:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.N    R0,??DataTable22  ;; 0x40012400
        CMP      R4,R0
        BEQ.N    ??ADC_GetConversionValue_0
        LDR.N    R0,??DataTable22_1  ;; 0x40012800
        CMP      R4,R0
        BEQ.N    ??ADC_GetConversionValue_0
        LDR.N    R0,??DataTable22_2  ;; 0x40013c00
        CMP      R4,R0
        BEQ.N    ??ADC_GetConversionValue_0
        MOVW     R1,#+717
        LDR.W    R0,??DataTable34
        BL       assert_failed
??ADC_GetConversionValue_0:
        LDR      R0,[R4, #+76]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_GetDualModeConversionValue:
        LDR.W    R0,??DataTable34_1  ;; 0x4001244c
        LDR      R0,[R0, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_AutoInjectedConvCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable22  ;; 0x40012400
        CMP      R4,R0
        BEQ.N    ??ADC_AutoInjectedConvCmd_0
        LDR.N    R0,??DataTable22_1  ;; 0x40012800
        CMP      R4,R0
        BEQ.N    ??ADC_AutoInjectedConvCmd_0
        LDR.N    R0,??DataTable22_2  ;; 0x40013c00
        CMP      R4,R0
        BEQ.N    ??ADC_AutoInjectedConvCmd_0
        MOVW     R1,#+743
        LDR.W    R0,??DataTable34
        BL       assert_failed
??ADC_AutoInjectedConvCmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??ADC_AutoInjectedConvCmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??ADC_AutoInjectedConvCmd_1
        MOV      R1,#+744
        LDR.W    R0,??DataTable34
        BL       assert_failed
??ADC_AutoInjectedConvCmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??ADC_AutoInjectedConvCmd_2
        LDR      R0,[R4, #+4]
        ORRS     R0,R0,#0x400
        STR      R0,[R4, #+4]
        B.N      ??ADC_AutoInjectedConvCmd_3
??ADC_AutoInjectedConvCmd_2:
        LDR      R0,[R4, #+4]
        BICS     R0,R0,#0x400
        STR      R0,[R4, #+4]
??ADC_AutoInjectedConvCmd_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_InjectedDiscModeCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable22  ;; 0x40012400
        CMP      R4,R0
        BEQ.N    ??ADC_InjectedDiscModeCmd_0
        LDR.N    R0,??DataTable22_1  ;; 0x40012800
        CMP      R4,R0
        BEQ.N    ??ADC_InjectedDiscModeCmd_0
        LDR.N    R0,??DataTable22_2  ;; 0x40013c00
        CMP      R4,R0
        BEQ.N    ??ADC_InjectedDiscModeCmd_0
        MOVW     R1,#+769
        LDR.W    R0,??DataTable34
        BL       assert_failed
??ADC_InjectedDiscModeCmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??ADC_InjectedDiscModeCmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??ADC_InjectedDiscModeCmd_1
        MOVW     R1,#+770
        LDR.W    R0,??DataTable34
        BL       assert_failed
??ADC_InjectedDiscModeCmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??ADC_InjectedDiscModeCmd_2
        LDR      R0,[R4, #+4]
        ORRS     R0,R0,#0x1000
        STR      R0,[R4, #+4]
        B.N      ??ADC_InjectedDiscModeCmd_3
??ADC_InjectedDiscModeCmd_2:
        LDR      R0,[R4, #+4]
        BICS     R0,R0,#0x1000
        STR      R0,[R4, #+4]
??ADC_InjectedDiscModeCmd_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_ExternalTrigInjectedConvConfig:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.N    R0,??DataTable22  ;; 0x40012400
        CMP      R4,R0
        BEQ.N    ??ADC_ExternalTrigInjectedConvConfig_0
        LDR.N    R0,??DataTable22_1  ;; 0x40012800
        CMP      R4,R0
        BEQ.N    ??ADC_ExternalTrigInjectedConvConfig_0
        LDR.N    R0,??DataTable22_2  ;; 0x40013c00
        CMP      R4,R0
        BEQ.N    ??ADC_ExternalTrigInjectedConvConfig_0
        MOVW     R1,#+809
        LDR.W    R0,??DataTable34
        BL       assert_failed
??ADC_ExternalTrigInjectedConvConfig_0:
        CMP      R5,#+0
        BEQ.N    ??ADC_ExternalTrigInjectedConvConfig_1
        CMP      R5,#+4096
        BEQ.N    ??ADC_ExternalTrigInjectedConvConfig_1
        CMP      R5,#+8192
        BEQ.N    ??ADC_ExternalTrigInjectedConvConfig_1
        CMP      R5,#+12288
        BEQ.N    ??ADC_ExternalTrigInjectedConvConfig_1
        CMP      R5,#+16384
        BEQ.N    ??ADC_ExternalTrigInjectedConvConfig_1
        CMP      R5,#+20480
        BEQ.N    ??ADC_ExternalTrigInjectedConvConfig_1
        CMP      R5,#+24576
        BEQ.N    ??ADC_ExternalTrigInjectedConvConfig_1
        CMP      R5,#+28672
        BEQ.N    ??ADC_ExternalTrigInjectedConvConfig_1
        CMP      R5,#+8192
        BEQ.N    ??ADC_ExternalTrigInjectedConvConfig_1
        CMP      R5,#+12288
        BEQ.N    ??ADC_ExternalTrigInjectedConvConfig_1
        CMP      R5,#+16384
        BEQ.N    ??ADC_ExternalTrigInjectedConvConfig_1
        CMP      R5,#+20480
        BEQ.N    ??ADC_ExternalTrigInjectedConvConfig_1
        CMP      R5,#+24576
        BEQ.N    ??ADC_ExternalTrigInjectedConvConfig_1
        MOVW     R1,#+810
        LDR.W    R0,??DataTable34
        BL       assert_failed
??ADC_ExternalTrigInjectedConvConfig_1:
        LDR      R0,[R4, #+8]
        MOVS     R6,R0
        BICS     R6,R6,#0x7000
        ORRS     R6,R5,R6
        STR      R6,[R4, #+8]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_ExternalTrigInjectedConvCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable22  ;; 0x40012400
        CMP      R4,R0
        BEQ.N    ??ADC_ExternalTrigInjectedConvCmd_0
        LDR.N    R0,??DataTable22_1  ;; 0x40012800
        CMP      R4,R0
        BEQ.N    ??ADC_ExternalTrigInjectedConvCmd_0
        LDR.N    R0,??DataTable22_2  ;; 0x40013c00
        CMP      R4,R0
        BEQ.N    ??ADC_ExternalTrigInjectedConvCmd_0
        MOVW     R1,#+833
        LDR.W    R0,??DataTable34
        BL       assert_failed
??ADC_ExternalTrigInjectedConvCmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??ADC_ExternalTrigInjectedConvCmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??ADC_ExternalTrigInjectedConvCmd_1
        MOVW     R1,#+834
        LDR.W    R0,??DataTable34
        BL       assert_failed
??ADC_ExternalTrigInjectedConvCmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??ADC_ExternalTrigInjectedConvCmd_2
        LDR      R0,[R4, #+8]
        ORRS     R0,R0,#0x8000
        STR      R0,[R4, #+8]
        B.N      ??ADC_ExternalTrigInjectedConvCmd_3
??ADC_ExternalTrigInjectedConvCmd_2:
        LDR      R0,[R4, #+8]
        BICS     R0,R0,#0x8000
        STR      R0,[R4, #+8]
??ADC_ExternalTrigInjectedConvCmd_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_SoftwareStartInjectedConvCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable22  ;; 0x40012400
        CMP      R4,R0
        BEQ.N    ??ADC_SoftwareStartInjectedConvCmd_0
        LDR.N    R0,??DataTable22_1  ;; 0x40012800
        CMP      R4,R0
        BEQ.N    ??ADC_SoftwareStartInjectedConvCmd_0
        LDR.N    R0,??DataTable22_2  ;; 0x40013c00
        CMP      R4,R0
        BEQ.N    ??ADC_SoftwareStartInjectedConvCmd_0
        MOVW     R1,#+858
        LDR.W    R0,??DataTable34
        BL       assert_failed
??ADC_SoftwareStartInjectedConvCmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??ADC_SoftwareStartInjectedConvCmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??ADC_SoftwareStartInjectedConvCmd_1
        MOVW     R1,#+859
        LDR.W    R0,??DataTable34
        BL       assert_failed
??ADC_SoftwareStartInjectedConvCmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??ADC_SoftwareStartInjectedConvCmd_2
        LDR      R0,[R4, #+8]
        ORRS     R0,R0,#0x208000
        STR      R0,[R4, #+8]
        B.N      ??ADC_SoftwareStartInjectedConvCmd_3
??ADC_SoftwareStartInjectedConvCmd_2:
        LDR      R0,[R4, #+8]
        BICS     R0,R0,#0x208000
        STR      R0,[R4, #+8]
??ADC_SoftwareStartInjectedConvCmd_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_GetSoftwareStartInjectedConvCmdStatus:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        LDR.N    R0,??DataTable22  ;; 0x40012400
        CMP      R4,R0
        BEQ.N    ??ADC_GetSoftwareStartInjectedConvCmdStatus_0
        LDR.N    R0,??DataTable22_1  ;; 0x40012800
        CMP      R4,R0
        BEQ.N    ??ADC_GetSoftwareStartInjectedConvCmdStatus_0
        LDR.N    R0,??DataTable22_2  ;; 0x40013c00
        CMP      R4,R0
        BEQ.N    ??ADC_GetSoftwareStartInjectedConvCmdStatus_0
        MOVW     R1,#+883
        LDR.W    R0,??DataTable34
        BL       assert_failed
??ADC_GetSoftwareStartInjectedConvCmdStatus_0:
        LDR      R0,[R4, #+8]
        LSLS     R0,R0,#+10
        BPL.N    ??ADC_GetSoftwareStartInjectedConvCmdStatus_1
        MOVS     R0,#+1
        MOVS     R5,R0
        B.N      ??ADC_GetSoftwareStartInjectedConvCmdStatus_2
??ADC_GetSoftwareStartInjectedConvCmdStatus_1:
        MOVS     R0,#+0
        MOVS     R5,R0
??ADC_GetSoftwareStartInjectedConvCmdStatus_2:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22:
        DC32     0x40012400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_1:
        DC32     0x40012800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_2:
        DC32     0x40013c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_3:
        DC32     `?<Constant "D:\\\\zWk.Src\\\\Mango-M32-...">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_InjectedChannelConfig:
        PUSH     {R4-R10,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        MOVS     R8,#+0
        MOVS     R9,#+0
        MOVS     R10,#+0
        LDR.W    R0,??DataTable34_2  ;; 0x40012400
        CMP      R4,R0
        BEQ.N    ??ADC_InjectedChannelConfig_0
        LDR.W    R0,??DataTable34_3  ;; 0x40012800
        CMP      R4,R0
        BEQ.N    ??ADC_InjectedChannelConfig_0
        LDR.W    R0,??DataTable34_4  ;; 0x40013c00
        CMP      R4,R0
        BEQ.N    ??ADC_InjectedChannelConfig_0
        MOV      R1,#+940
        LDR.W    R0,??DataTable34
        BL       assert_failed
??ADC_InjectedChannelConfig_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??ADC_InjectedChannelConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??ADC_InjectedChannelConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+2
        BEQ.N    ??ADC_InjectedChannelConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+3
        BEQ.N    ??ADC_InjectedChannelConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+4
        BEQ.N    ??ADC_InjectedChannelConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+5
        BEQ.N    ??ADC_InjectedChannelConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+6
        BEQ.N    ??ADC_InjectedChannelConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+7
        BEQ.N    ??ADC_InjectedChannelConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+8
        BEQ.N    ??ADC_InjectedChannelConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+9
        BEQ.N    ??ADC_InjectedChannelConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+10
        BEQ.N    ??ADC_InjectedChannelConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+11
        BEQ.N    ??ADC_InjectedChannelConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+12
        BEQ.N    ??ADC_InjectedChannelConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+13
        BEQ.N    ??ADC_InjectedChannelConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+14
        BEQ.N    ??ADC_InjectedChannelConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+15
        BEQ.N    ??ADC_InjectedChannelConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+16
        BEQ.N    ??ADC_InjectedChannelConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+17
        BEQ.N    ??ADC_InjectedChannelConfig_1
        MOVW     R1,#+941
        LDR.W    R0,??DataTable34
        BL       assert_failed
??ADC_InjectedChannelConfig_1:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+1
        BCC.N    ??ADC_InjectedChannelConfig_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+5
        BCC.N    ??ADC_InjectedChannelConfig_3
??ADC_InjectedChannelConfig_2:
        MOVW     R1,#+942
        LDR.W    R0,??DataTable34
        BL       assert_failed
??ADC_InjectedChannelConfig_3:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+0
        BEQ.N    ??ADC_InjectedChannelConfig_4
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+1
        BEQ.N    ??ADC_InjectedChannelConfig_4
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+2
        BEQ.N    ??ADC_InjectedChannelConfig_4
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+3
        BEQ.N    ??ADC_InjectedChannelConfig_4
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+4
        BEQ.N    ??ADC_InjectedChannelConfig_4
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+5
        BEQ.N    ??ADC_InjectedChannelConfig_4
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+6
        BEQ.N    ??ADC_InjectedChannelConfig_4
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+7
        BEQ.N    ??ADC_InjectedChannelConfig_4
        MOVW     R1,#+943
        LDR.W    R0,??DataTable34
        BL       assert_failed
??ADC_InjectedChannelConfig_4:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+10
        BCC.N    ??ADC_InjectedChannelConfig_5
        LDR      R0,[R4, #+12]
        MOV      R8,R0
        MOVS     R0,#+7
        SUBS     R1,R5,#+10
        MOVS     R2,#+3
        MULS     R1,R2,R1
        LSLS     R0,R0,R1
        MOV      R9,R0
        BICS     R8,R8,R9
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        SUBS     R0,R5,#+10
        MOVS     R1,#+3
        MULS     R0,R1,R0
        LSLS     R0,R7,R0
        MOV      R9,R0
        ORRS     R8,R9,R8
        STR      R8,[R4, #+12]
        B.N      ??ADC_InjectedChannelConfig_6
??ADC_InjectedChannelConfig_5:
        LDR      R0,[R4, #+16]
        MOV      R8,R0
        MOVS     R0,#+7
        MOVS     R1,#+3
        MUL      R1,R1,R5
        LSLS     R0,R0,R1
        MOV      R9,R0
        BICS     R8,R8,R9
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        MOVS     R0,#+3
        MUL      R0,R0,R5
        LSLS     R0,R7,R0
        MOV      R9,R0
        ORRS     R8,R9,R8
        STR      R8,[R4, #+16]
??ADC_InjectedChannelConfig_6:
        LDR      R0,[R4, #+56]
        MOV      R8,R0
        UBFX     R0,R8,#+20,#+2
        MOV      R10,R0
        MOVS     R0,#+31
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADDS     R1,R6,#+3
        SUBS     R1,R1,R10
        SUBS     R1,R1,#+1
        MOVS     R2,#+5
        MULS     R1,R2,R1
        LSLS     R0,R0,R1
        MOV      R9,R0
        BICS     R8,R8,R9
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADDS     R0,R6,#+3
        SUBS     R0,R0,R10
        SUBS     R0,R0,#+1
        MOVS     R1,#+5
        MULS     R0,R1,R0
        LSLS     R0,R5,R0
        MOV      R9,R0
        ORRS     R8,R9,R8
        STR      R8,[R4, #+56]
        POP      {R4-R10,PC}      ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_InjectedSequencerLengthConfig:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R7,#+0
        MOVS     R6,#+0
        LDR.W    R0,??DataTable34_2  ;; 0x40012400
        CMP      R4,R0
        BEQ.N    ??ADC_InjectedSequencerLengthConfig_0
        LDR.W    R0,??DataTable34_3  ;; 0x40012800
        CMP      R4,R0
        BEQ.N    ??ADC_InjectedSequencerLengthConfig_0
        LDR.W    R0,??DataTable34_4  ;; 0x40013c00
        CMP      R4,R0
        BEQ.N    ??ADC_InjectedSequencerLengthConfig_0
        MOV      R1,#+1004
        LDR.W    R0,??DataTable34
        BL       assert_failed
??ADC_InjectedSequencerLengthConfig_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BCC.N    ??ADC_InjectedSequencerLengthConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+5
        BCC.N    ??ADC_InjectedSequencerLengthConfig_2
??ADC_InjectedSequencerLengthConfig_1:
        MOVW     R1,#+1005
        LDR.W    R0,??DataTable34
        BL       assert_failed
??ADC_InjectedSequencerLengthConfig_2:
        LDR      R0,[R4, #+56]
        MOVS     R7,R0
        BICS     R7,R7,#0x300000
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        SUBS     R0,R5,#+1
        MOVS     R6,R0
        ORRS     R7,R7,R6, LSL #+20
        STR      R7,[R4, #+56]
        POP      {R0,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24:
        DC32     0xfff0feff

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_SetInjectedOffset:
        PUSH     {R4-R6,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        LDR.W    R0,??DataTable34_2  ;; 0x40012400
        CMP      R4,R0
        BEQ.N    ??ADC_SetInjectedOffset_0
        LDR.W    R0,??DataTable34_3  ;; 0x40012800
        CMP      R4,R0
        BEQ.N    ??ADC_SetInjectedOffset_0
        LDR.W    R0,??DataTable34_4  ;; 0x40013c00
        CMP      R4,R0
        BEQ.N    ??ADC_SetInjectedOffset_0
        MOVW     R1,#+1036
        LDR.W    R0,??DataTable34
        BL       assert_failed
??ADC_SetInjectedOffset_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+20
        BEQ.N    ??ADC_SetInjectedOffset_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+24
        BEQ.N    ??ADC_SetInjectedOffset_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+28
        BEQ.N    ??ADC_SetInjectedOffset_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+32
        BEQ.N    ??ADC_SetInjectedOffset_1
        MOVW     R1,#+1037
        LDR.W    R0,??DataTable34
        BL       assert_failed
??ADC_SetInjectedOffset_1:
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+4096
        BCC.N    ??ADC_SetInjectedOffset_2
        MOVW     R1,#+1038
        LDR.W    R0,??DataTable34
        BL       assert_failed
??ADC_SetInjectedOffset_2:
        STR      R4,[SP, #+0]
        LDR      R0,[SP, #+0]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R0,R5,R0
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        STR      R6,[R0, #+0]
        POP      {R0,R1,R4-R6,PC}  ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_GetInjectedConversionValue:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        LDR.W    R0,??DataTable34_2  ;; 0x40012400
        CMP      R4,R0
        BEQ.N    ??ADC_GetInjectedConversionValue_0
        LDR.W    R0,??DataTable34_3  ;; 0x40012800
        CMP      R4,R0
        BEQ.N    ??ADC_GetInjectedConversionValue_0
        LDR.W    R0,??DataTable34_4  ;; 0x40013c00
        CMP      R4,R0
        BEQ.N    ??ADC_GetInjectedConversionValue_0
        MOVW     R1,#+1063
        LDR.W    R0,??DataTable34
        BL       assert_failed
??ADC_GetInjectedConversionValue_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+20
        BEQ.N    ??ADC_GetInjectedConversionValue_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+24
        BEQ.N    ??ADC_GetInjectedConversionValue_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+28
        BEQ.N    ??ADC_GetInjectedConversionValue_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+32
        BEQ.N    ??ADC_GetInjectedConversionValue_1
        MOV      R1,#+1064
        LDR.W    R0,??DataTable34
        BL       assert_failed
??ADC_GetInjectedConversionValue_1:
        STR      R4,[SP, #+0]
        LDR      R0,[SP, #+0]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R1,R5,#+40
        ADDS     R0,R1,R0
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
        LDR      R0,[R0, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        POP      {R1,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_AnalogWatchdogCmd:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.W    R0,??DataTable34_2  ;; 0x40012400
        CMP      R4,R0
        BEQ.N    ??ADC_AnalogWatchdogCmd_0
        LDR.W    R0,??DataTable34_3  ;; 0x40012800
        CMP      R4,R0
        BEQ.N    ??ADC_AnalogWatchdogCmd_0
        LDR.W    R0,??DataTable34_4  ;; 0x40013c00
        CMP      R4,R0
        BEQ.N    ??ADC_AnalogWatchdogCmd_0
        MOVW     R1,#+1092
        LDR.N    R0,??DataTable34
        BL       assert_failed
??ADC_AnalogWatchdogCmd_0:
        LDR.N    R0,??DataTable34_5  ;; 0x800200
        CMP      R5,R0
        BEQ.N    ??ADC_AnalogWatchdogCmd_1
        LDR.N    R0,??DataTable34_6  ;; 0x400200
        CMP      R5,R0
        BEQ.N    ??ADC_AnalogWatchdogCmd_1
        LDR.N    R0,??DataTable34_7  ;; 0xc00200
        CMP      R5,R0
        BEQ.N    ??ADC_AnalogWatchdogCmd_1
        CMP      R5,#+8388608
        BEQ.N    ??ADC_AnalogWatchdogCmd_1
        CMP      R5,#+4194304
        BEQ.N    ??ADC_AnalogWatchdogCmd_1
        CMP      R5,#+12582912
        BEQ.N    ??ADC_AnalogWatchdogCmd_1
        CMP      R5,#+0
        BEQ.N    ??ADC_AnalogWatchdogCmd_1
        MOVW     R1,#+1093
        LDR.N    R0,??DataTable34
        BL       assert_failed
??ADC_AnalogWatchdogCmd_1:
        LDR      R0,[R4, #+4]
        MOVS     R6,R0
        LDR.N    R0,??DataTable34_8  ;; 0xff3ffdff
        ANDS     R6,R0,R6
        ORRS     R6,R5,R6
        STR      R6,[R4, #+4]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_AnalogWatchdogThresholdsConfig:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        LDR.N    R0,??DataTable34_2  ;; 0x40012400
        CMP      R4,R0
        BEQ.N    ??ADC_AnalogWatchdogThresholdsConfig_0
        LDR.N    R0,??DataTable34_3  ;; 0x40012800
        CMP      R4,R0
        BEQ.N    ??ADC_AnalogWatchdogThresholdsConfig_0
        LDR.N    R0,??DataTable34_4  ;; 0x40013c00
        CMP      R4,R0
        BEQ.N    ??ADC_AnalogWatchdogThresholdsConfig_0
        MOVW     R1,#+1117
        LDR.N    R0,??DataTable34
        BL       assert_failed
??ADC_AnalogWatchdogThresholdsConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+4096
        BCC.N    ??ADC_AnalogWatchdogThresholdsConfig_1
        MOVW     R1,#+1118
        LDR.N    R0,??DataTable34
        BL       assert_failed
??ADC_AnalogWatchdogThresholdsConfig_1:
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+4096
        BCC.N    ??ADC_AnalogWatchdogThresholdsConfig_2
        MOVW     R1,#+1119
        LDR.N    R0,??DataTable34
        BL       assert_failed
??ADC_AnalogWatchdogThresholdsConfig_2:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        STR      R5,[R4, #+36]
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        STR      R6,[R4, #+40]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28:
        DC32     0xfff1f7fd

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_AnalogWatchdogSingleChannelConfig:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.N    R0,??DataTable34_2  ;; 0x40012400
        CMP      R4,R0
        BEQ.N    ??ADC_AnalogWatchdogSingleChannelConfig_0
        LDR.N    R0,??DataTable34_3  ;; 0x40012800
        CMP      R4,R0
        BEQ.N    ??ADC_AnalogWatchdogSingleChannelConfig_0
        LDR.N    R0,??DataTable34_4  ;; 0x40013c00
        CMP      R4,R0
        BEQ.N    ??ADC_AnalogWatchdogSingleChannelConfig_0
        MOVW     R1,#+1155
        LDR.N    R0,??DataTable34
        BL       assert_failed
??ADC_AnalogWatchdogSingleChannelConfig_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??ADC_AnalogWatchdogSingleChannelConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??ADC_AnalogWatchdogSingleChannelConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+2
        BEQ.N    ??ADC_AnalogWatchdogSingleChannelConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+3
        BEQ.N    ??ADC_AnalogWatchdogSingleChannelConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+4
        BEQ.N    ??ADC_AnalogWatchdogSingleChannelConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+5
        BEQ.N    ??ADC_AnalogWatchdogSingleChannelConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+6
        BEQ.N    ??ADC_AnalogWatchdogSingleChannelConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+7
        BEQ.N    ??ADC_AnalogWatchdogSingleChannelConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+8
        BEQ.N    ??ADC_AnalogWatchdogSingleChannelConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+9
        BEQ.N    ??ADC_AnalogWatchdogSingleChannelConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+10
        BEQ.N    ??ADC_AnalogWatchdogSingleChannelConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+11
        BEQ.N    ??ADC_AnalogWatchdogSingleChannelConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+12
        BEQ.N    ??ADC_AnalogWatchdogSingleChannelConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+13
        BEQ.N    ??ADC_AnalogWatchdogSingleChannelConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+14
        BEQ.N    ??ADC_AnalogWatchdogSingleChannelConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+15
        BEQ.N    ??ADC_AnalogWatchdogSingleChannelConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+16
        BEQ.N    ??ADC_AnalogWatchdogSingleChannelConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+17
        BEQ.N    ??ADC_AnalogWatchdogSingleChannelConfig_1
        MOVW     R1,#+1156
        LDR.N    R0,??DataTable34
        BL       assert_failed
??ADC_AnalogWatchdogSingleChannelConfig_1:
        LDR      R0,[R4, #+4]
        MOVS     R6,R0
        LSRS     R6,R6,#+5
        LSLS     R6,R6,#+5
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ORRS     R6,R5,R6
        STR      R6,[R4, #+4]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_TempSensorVrefintCmd:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??ADC_TempSensorVrefintCmd_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??ADC_TempSensorVrefintCmd_0
        MOV      R1,#+1176
        LDR.N    R0,??DataTable34
        BL       assert_failed
??ADC_TempSensorVrefintCmd_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??ADC_TempSensorVrefintCmd_1
        LDR.N    R0,??DataTable34_9  ;; 0x40012408
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x800000
        LDR.N    R1,??DataTable34_9  ;; 0x40012408
        STR      R0,[R1, #+0]
        B.N      ??ADC_TempSensorVrefintCmd_2
??ADC_TempSensorVrefintCmd_1:
        LDR.N    R0,??DataTable34_9  ;; 0x40012408
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x800000
        LDR.N    R1,??DataTable34_9  ;; 0x40012408
        STR      R0,[R1, #+0]
??ADC_TempSensorVrefintCmd_2:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_GetFlagStatus:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.N    R0,??DataTable34_2  ;; 0x40012400
        CMP      R4,R0
        BEQ.N    ??ADC_GetFlagStatus_0
        LDR.N    R0,??DataTable34_3  ;; 0x40012800
        CMP      R4,R0
        BEQ.N    ??ADC_GetFlagStatus_0
        LDR.N    R0,??DataTable34_4  ;; 0x40013c00
        CMP      R4,R0
        BEQ.N    ??ADC_GetFlagStatus_0
        MOVW     R1,#+1205
        LDR.N    R0,??DataTable34
        BL       assert_failed
??ADC_GetFlagStatus_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??ADC_GetFlagStatus_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+2
        BEQ.N    ??ADC_GetFlagStatus_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+4
        BEQ.N    ??ADC_GetFlagStatus_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+8
        BEQ.N    ??ADC_GetFlagStatus_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+16
        BEQ.N    ??ADC_GetFlagStatus_1
        MOVW     R1,#+1206
        LDR.N    R0,??DataTable34
        BL       assert_failed
??ADC_GetFlagStatus_1:
        LDR      R0,[R4, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        TST      R0,R5
        BEQ.N    ??ADC_GetFlagStatus_2
        MOVS     R0,#+1
        MOVS     R6,R0
        B.N      ??ADC_GetFlagStatus_3
??ADC_GetFlagStatus_2:
        MOVS     R0,#+0
        MOVS     R6,R0
??ADC_GetFlagStatus_3:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_ClearFlag:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable34_2  ;; 0x40012400
        CMP      R4,R0
        BEQ.N    ??ADC_ClearFlag_0
        LDR.N    R0,??DataTable34_3  ;; 0x40012800
        CMP      R4,R0
        BEQ.N    ??ADC_ClearFlag_0
        LDR.N    R0,??DataTable34_4  ;; 0x40013c00
        CMP      R4,R0
        BEQ.N    ??ADC_ClearFlag_0
        MOVW     R1,#+1237
        LDR.N    R0,??DataTable34
        BL       assert_failed
??ADC_ClearFlag_0:
        MOVS     R0,#+224
        TST      R5,R0
        BNE.N    ??ADC_ClearFlag_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BNE.N    ??ADC_ClearFlag_2
??ADC_ClearFlag_1:
        MOVW     R1,#+1238
        LDR.N    R0,??DataTable34
        BL       assert_failed
??ADC_ClearFlag_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MVNS     R0,R5
        STR      R0,[R4, #+0]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_GetITStatus:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        MOVS     R7,#+0
        MOVS     R8,#+0
        LDR.N    R0,??DataTable34_2  ;; 0x40012400
        CMP      R4,R0
        BEQ.N    ??ADC_GetITStatus_0
        LDR.N    R0,??DataTable34_3  ;; 0x40012800
        CMP      R4,R0
        BEQ.N    ??ADC_GetITStatus_0
        LDR.N    R0,??DataTable34_4  ;; 0x40013c00
        CMP      R4,R0
        BEQ.N    ??ADC_GetITStatus_0
        MOVW     R1,#+1258
        LDR.N    R0,??DataTable34
        BL       assert_failed
??ADC_GetITStatus_0:
        MOV      R0,#+544
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??ADC_GetITStatus_1
        MOV      R0,#+320
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??ADC_GetITStatus_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+1152
        BEQ.N    ??ADC_GetITStatus_1
        MOVW     R1,#+1259
        LDR.N    R0,??DataTable34
        BL       assert_failed
??ADC_GetITStatus_1:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        LSRS     R0,R5,#+8
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MOVS     R7,R0
        LDR      R0,[R4, #+4]
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ANDS     R0,R1,R0
        MOV      R8,R0
        LDR      R0,[R4, #+0]
        TST      R0,R7
        BEQ.N    ??ADC_GetITStatus_2
        CMP      R8,#+0
        BEQ.N    ??ADC_GetITStatus_2
        MOVS     R0,#+1
        MOVS     R6,R0
        B.N      ??ADC_GetITStatus_3
??ADC_GetITStatus_2:
        MOVS     R0,#+0
        MOVS     R6,R0
??ADC_GetITStatus_3:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R8,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_ClearITPendingBit:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.N    R0,??DataTable34_2  ;; 0x40012400
        CMP      R4,R0
        BEQ.N    ??ADC_ClearITPendingBit_0
        LDR.N    R0,??DataTable34_3  ;; 0x40012800
        CMP      R4,R0
        BEQ.N    ??ADC_ClearITPendingBit_0
        LDR.N    R0,??DataTable34_4  ;; 0x40013c00
        CMP      R4,R0
        BEQ.N    ??ADC_ClearITPendingBit_0
        MOVW     R1,#+1293
        LDR.N    R0,??DataTable34
        BL       assert_failed
??ADC_ClearITPendingBit_0:
        MOVW     R0,#+63519
        TST      R5,R0
        BNE.N    ??ADC_ClearITPendingBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BNE.N    ??ADC_ClearITPendingBit_2
??ADC_ClearITPendingBit_1:
        MOVW     R1,#+1294
        LDR.N    R0,??DataTable34
        BL       assert_failed
??ADC_ClearITPendingBit_2:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        LSRS     R0,R5,#+8
        MOVS     R6,R0
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MVNS     R0,R6
        STR      R0,[R4, #+0]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable34:
        DC32     `?<Constant "D:\\\\zWk.Src\\\\Mango-M32-...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable34_1:
        DC32     0x4001244c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable34_2:
        DC32     0x40012400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable34_3:
        DC32     0x40012800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable34_4:
        DC32     0x40013c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable34_5:
        DC32     0x800200

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable34_6:
        DC32     0x400200

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable34_7:
        DC32     0xc00200

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable34_8:
        DC32     0xff3ffdff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable34_9:
        DC32     0x40012408

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
        DC8 78H, 5FH, 61H, 64H, 63H, 2EH, 63H, 0

        END
// 
//   112 bytes in section .rodata
// 4 218 bytes in section .text
// 
// 4 218 bytes of CODE  memory
//   112 bytes of CONST memory
//
//Errors: none
//Warnings: none
