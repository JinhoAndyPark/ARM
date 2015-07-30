///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.6.53336/W32 for ARM    25/Jun/2014  14:55:02 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    Libraries\STM32F10x_StdPeriph_Driver\src\stm32f10x_tim. /
//                    c                                                       /
//    Command line =  D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    Libraries\STM32F10x_StdPeriph_Driver\src\stm32f10x_tim. /
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
//                    project\Debug\List\stm32f10x_tim.s                      /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm32f10x_tim

        #define SHT_PROGBITS 0x1

        EXTERN RCC_APB1PeriphResetCmd
        EXTERN RCC_APB2PeriphResetCmd
        EXTERN assert_failed

        PUBLIC TIM_ARRPreloadConfig
        PUBLIC TIM_BDTRConfig
        PUBLIC TIM_BDTRStructInit
        PUBLIC TIM_CCPreloadControl
        PUBLIC TIM_CCxCmd
        PUBLIC TIM_CCxNCmd
        PUBLIC TIM_ClearFlag
        PUBLIC TIM_ClearITPendingBit
        PUBLIC TIM_ClearOC1Ref
        PUBLIC TIM_ClearOC2Ref
        PUBLIC TIM_ClearOC3Ref
        PUBLIC TIM_ClearOC4Ref
        PUBLIC TIM_Cmd
        PUBLIC TIM_CounterModeConfig
        PUBLIC TIM_CtrlPWMOutputs
        PUBLIC TIM_DMACmd
        PUBLIC TIM_DMAConfig
        PUBLIC TIM_DeInit
        PUBLIC TIM_ETRClockMode1Config
        PUBLIC TIM_ETRClockMode2Config
        PUBLIC TIM_ETRConfig
        PUBLIC TIM_EncoderInterfaceConfig
        PUBLIC TIM_ForcedOC1Config
        PUBLIC TIM_ForcedOC2Config
        PUBLIC TIM_ForcedOC3Config
        PUBLIC TIM_ForcedOC4Config
        PUBLIC TIM_GenerateEvent
        PUBLIC TIM_GetCapture1
        PUBLIC TIM_GetCapture2
        PUBLIC TIM_GetCapture3
        PUBLIC TIM_GetCapture4
        PUBLIC TIM_GetCounter
        PUBLIC TIM_GetFlagStatus
        PUBLIC TIM_GetITStatus
        PUBLIC TIM_GetPrescaler
        PUBLIC TIM_ICInit
        PUBLIC TIM_ICStructInit
        PUBLIC TIM_ITConfig
        PUBLIC TIM_ITRxExternalClockConfig
        PUBLIC TIM_InternalClockConfig
        PUBLIC TIM_OC1FastConfig
        PUBLIC TIM_OC1Init
        PUBLIC TIM_OC1NPolarityConfig
        PUBLIC TIM_OC1PolarityConfig
        PUBLIC TIM_OC1PreloadConfig
        PUBLIC TIM_OC2FastConfig
        PUBLIC TIM_OC2Init
        PUBLIC TIM_OC2NPolarityConfig
        PUBLIC TIM_OC2PolarityConfig
        PUBLIC TIM_OC2PreloadConfig
        PUBLIC TIM_OC3FastConfig
        PUBLIC TIM_OC3Init
        PUBLIC TIM_OC3NPolarityConfig
        PUBLIC TIM_OC3PolarityConfig
        PUBLIC TIM_OC3PreloadConfig
        PUBLIC TIM_OC4FastConfig
        PUBLIC TIM_OC4Init
        PUBLIC TIM_OC4PolarityConfig
        PUBLIC TIM_OC4PreloadConfig
        PUBLIC TIM_OCStructInit
        PUBLIC TIM_PWMIConfig
        PUBLIC TIM_PrescalerConfig
        PUBLIC TIM_SelectCCDMA
        PUBLIC TIM_SelectCOM
        PUBLIC TIM_SelectHallSensor
        PUBLIC TIM_SelectInputTrigger
        PUBLIC TIM_SelectMasterSlaveMode
        PUBLIC TIM_SelectOCxM
        PUBLIC TIM_SelectOnePulseMode
        PUBLIC TIM_SelectOutputTrigger
        PUBLIC TIM_SelectSlaveMode
        PUBLIC TIM_SetAutoreload
        PUBLIC TIM_SetClockDivision
        PUBLIC TIM_SetCompare1
        PUBLIC TIM_SetCompare2
        PUBLIC TIM_SetCompare3
        PUBLIC TIM_SetCompare4
        PUBLIC TIM_SetCounter
        PUBLIC TIM_SetIC1Prescaler
        PUBLIC TIM_SetIC2Prescaler
        PUBLIC TIM_SetIC3Prescaler
        PUBLIC TIM_SetIC4Prescaler
        PUBLIC TIM_TIxExternalClockConfig
        PUBLIC TIM_TimeBaseInit
        PUBLIC TIM_TimeBaseStructInit
        PUBLIC TIM_UpdateDisableConfig
        PUBLIC TIM_UpdateRequestConfig


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_DeInit:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.W    R0,??DataTable5  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_DeInit_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_DeInit_0
        LDR.W    R0,??DataTable5_1  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_DeInit_0
        LDR.W    R0,??DataTable5_2  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_DeInit_0
        LDR.W    R0,??DataTable5_3  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_DeInit_0
        LDR.W    R0,??DataTable5_4  ;; 0x40001000
        CMP      R4,R0
        BEQ.N    ??TIM_DeInit_0
        LDR.W    R0,??DataTable5_5  ;; 0x40001400
        CMP      R4,R0
        BEQ.N    ??TIM_DeInit_0
        LDR.W    R0,??DataTable5_6  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_DeInit_0
        LDR.W    R0,??DataTable5_7  ;; 0x40014c00
        CMP      R4,R0
        BEQ.N    ??TIM_DeInit_0
        LDR.W    R0,??DataTable5_8  ;; 0x40015000
        CMP      R4,R0
        BEQ.N    ??TIM_DeInit_0
        LDR.W    R0,??DataTable5_9  ;; 0x40015400
        CMP      R4,R0
        BEQ.N    ??TIM_DeInit_0
        LDR.W    R0,??DataTable5_10  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_DeInit_0
        LDR.W    R0,??DataTable5_11  ;; 0x40001c00
        CMP      R4,R0
        BEQ.N    ??TIM_DeInit_0
        LDR.W    R0,??DataTable5_12  ;; 0x40002000
        CMP      R4,R0
        BEQ.N    ??TIM_DeInit_0
        LDR.W    R0,??DataTable5_13  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_DeInit_0
        LDR.W    R0,??DataTable5_14  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_DeInit_0
        LDR.W    R0,??DataTable6  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_DeInit_0
        MOVS     R1,#+131
        LDR.W    R0,??DataTable5_15
        BL       assert_failed
??TIM_DeInit_0:
        LDR.W    R0,??DataTable5  ;; 0x40012c00
        CMP      R4,R0
        BNE.N    ??TIM_DeInit_1
        MOVS     R1,#+1
        MOV      R0,#+2048
        BL       RCC_APB2PeriphResetCmd
        MOVS     R1,#+0
        MOV      R0,#+2048
        BL       RCC_APB2PeriphResetCmd
        B.N      ??TIM_DeInit_2
??TIM_DeInit_1:
        CMP      R4,#+1073741824
        BNE.N    ??TIM_DeInit_3
        MOVS     R1,#+1
        MOVS     R0,#+1
        BL       RCC_APB1PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+1
        BL       RCC_APB1PeriphResetCmd
        B.N      ??TIM_DeInit_2
??TIM_DeInit_3:
        LDR.W    R0,??DataTable5_1  ;; 0x40000400
        CMP      R4,R0
        BNE.N    ??TIM_DeInit_4
        MOVS     R1,#+1
        MOVS     R0,#+2
        BL       RCC_APB1PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+2
        BL       RCC_APB1PeriphResetCmd
        B.N      ??TIM_DeInit_2
??TIM_DeInit_4:
        LDR.W    R0,??DataTable5_2  ;; 0x40000800
        CMP      R4,R0
        BNE.N    ??TIM_DeInit_5
        MOVS     R1,#+1
        MOVS     R0,#+4
        BL       RCC_APB1PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+4
        BL       RCC_APB1PeriphResetCmd
        B.N      ??TIM_DeInit_2
??TIM_DeInit_5:
        LDR.W    R0,??DataTable5_3  ;; 0x40000c00
        CMP      R4,R0
        BNE.N    ??TIM_DeInit_6
        MOVS     R1,#+1
        MOVS     R0,#+8
        BL       RCC_APB1PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+8
        BL       RCC_APB1PeriphResetCmd
        B.N      ??TIM_DeInit_2
??TIM_DeInit_6:
        LDR.W    R0,??DataTable5_4  ;; 0x40001000
        CMP      R4,R0
        BNE.N    ??TIM_DeInit_7
        MOVS     R1,#+1
        MOVS     R0,#+16
        BL       RCC_APB1PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+16
        BL       RCC_APB1PeriphResetCmd
        B.N      ??TIM_DeInit_2
??TIM_DeInit_7:
        LDR.W    R0,??DataTable5_5  ;; 0x40001400
        CMP      R4,R0
        BNE.N    ??TIM_DeInit_8
        MOVS     R1,#+1
        MOVS     R0,#+32
        BL       RCC_APB1PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+32
        BL       RCC_APB1PeriphResetCmd
        B.N      ??TIM_DeInit_2
??TIM_DeInit_8:
        LDR.W    R0,??DataTable5_6  ;; 0x40013400
        CMP      R4,R0
        BNE.N    ??TIM_DeInit_9
        MOVS     R1,#+1
        MOV      R0,#+8192
        BL       RCC_APB2PeriphResetCmd
        MOVS     R1,#+0
        MOV      R0,#+8192
        BL       RCC_APB2PeriphResetCmd
        B.N      ??TIM_DeInit_2
??TIM_DeInit_9:
        LDR.W    R0,??DataTable5_7  ;; 0x40014c00
        CMP      R4,R0
        BNE.N    ??TIM_DeInit_10
        MOVS     R1,#+1
        MOVS     R0,#+524288
        BL       RCC_APB2PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+524288
        BL       RCC_APB2PeriphResetCmd
        B.N      ??TIM_DeInit_2
??TIM_DeInit_10:
        LDR.W    R0,??DataTable5_8  ;; 0x40015000
        CMP      R4,R0
        BNE.N    ??TIM_DeInit_11
        MOVS     R1,#+1
        MOVS     R0,#+1048576
        BL       RCC_APB2PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+1048576
        BL       RCC_APB2PeriphResetCmd
        B.N      ??TIM_DeInit_2
??TIM_DeInit_11:
        LDR.W    R0,??DataTable5_9  ;; 0x40015400
        CMP      R4,R0
        BNE.N    ??TIM_DeInit_12
        MOVS     R1,#+1
        MOVS     R0,#+2097152
        BL       RCC_APB2PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+2097152
        BL       RCC_APB2PeriphResetCmd
        B.N      ??TIM_DeInit_2
??TIM_DeInit_12:
        LDR.W    R0,??DataTable5_10  ;; 0x40001800
        CMP      R4,R0
        BNE.N    ??TIM_DeInit_13
        MOVS     R1,#+1
        MOVS     R0,#+64
        BL       RCC_APB1PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+64
        BL       RCC_APB1PeriphResetCmd
        B.N      ??TIM_DeInit_2
??TIM_DeInit_13:
        LDR.W    R0,??DataTable5_11  ;; 0x40001c00
        CMP      R4,R0
        BNE.N    ??TIM_DeInit_14
        MOVS     R1,#+1
        MOVS     R0,#+128
        BL       RCC_APB1PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+128
        BL       RCC_APB1PeriphResetCmd
        B.N      ??TIM_DeInit_2
??TIM_DeInit_14:
        LDR.W    R0,??DataTable5_12  ;; 0x40002000
        CMP      R4,R0
        BNE.N    ??TIM_DeInit_15
        MOVS     R1,#+1
        MOV      R0,#+256
        BL       RCC_APB1PeriphResetCmd
        MOVS     R1,#+0
        MOV      R0,#+256
        BL       RCC_APB1PeriphResetCmd
        B.N      ??TIM_DeInit_2
??TIM_DeInit_15:
        LDR.W    R0,??DataTable5_13  ;; 0x40014000
        CMP      R4,R0
        BNE.N    ??TIM_DeInit_16
        MOVS     R1,#+1
        MOVS     R0,#+65536
        BL       RCC_APB2PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+65536
        BL       RCC_APB2PeriphResetCmd
        B.N      ??TIM_DeInit_2
??TIM_DeInit_16:
        LDR.W    R0,??DataTable5_14  ;; 0x40014400
        CMP      R4,R0
        BNE.N    ??TIM_DeInit_17
        MOVS     R1,#+1
        MOVS     R0,#+131072
        BL       RCC_APB2PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+131072
        BL       RCC_APB2PeriphResetCmd
        B.N      ??TIM_DeInit_2
??TIM_DeInit_17:
        LDR.W    R0,??DataTable6  ;; 0x40014800
        CMP      R4,R0
        BNE.N    ??TIM_DeInit_2
        MOVS     R1,#+1
        MOVS     R0,#+262144
        BL       RCC_APB2PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+262144
        BL       RCC_APB2PeriphResetCmd
??TIM_DeInit_2:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_TimeBaseInit:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.W    R0,??DataTable5  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_TimeBaseInit_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_TimeBaseInit_0
        LDR.W    R0,??DataTable5_1  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_TimeBaseInit_0
        LDR.W    R0,??DataTable5_2  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_TimeBaseInit_0
        LDR.W    R0,??DataTable5_3  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_TimeBaseInit_0
        LDR.W    R0,??DataTable5_4  ;; 0x40001000
        CMP      R4,R0
        BEQ.N    ??TIM_TimeBaseInit_0
        LDR.W    R0,??DataTable5_5  ;; 0x40001400
        CMP      R4,R0
        BEQ.N    ??TIM_TimeBaseInit_0
        LDR.W    R0,??DataTable5_6  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_TimeBaseInit_0
        LDR.W    R0,??DataTable5_7  ;; 0x40014c00
        CMP      R4,R0
        BEQ.N    ??TIM_TimeBaseInit_0
        LDR.W    R0,??DataTable5_8  ;; 0x40015000
        CMP      R4,R0
        BEQ.N    ??TIM_TimeBaseInit_0
        LDR.W    R0,??DataTable5_9  ;; 0x40015400
        CMP      R4,R0
        BEQ.N    ??TIM_TimeBaseInit_0
        LDR.W    R0,??DataTable5_10  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_TimeBaseInit_0
        LDR.W    R0,??DataTable5_11  ;; 0x40001c00
        CMP      R4,R0
        BEQ.N    ??TIM_TimeBaseInit_0
        LDR.W    R0,??DataTable5_12  ;; 0x40002000
        CMP      R4,R0
        BEQ.N    ??TIM_TimeBaseInit_0
        LDR.W    R0,??DataTable5_13  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_TimeBaseInit_0
        LDR.W    R0,??DataTable5_14  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_TimeBaseInit_0
        LDR.W    R0,??DataTable8  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_TimeBaseInit_0
        MOVS     R1,#+237
        LDR.W    R0,??DataTable5_15
        BL       assert_failed
??TIM_TimeBaseInit_0:
        LDRH     R0,[R5, #+2]
        CMP      R0,#+0
        BEQ.N    ??TIM_TimeBaseInit_1
        LDRH     R0,[R5, #+2]
        CMP      R0,#+16
        BEQ.N    ??TIM_TimeBaseInit_1
        LDRH     R0,[R5, #+2]
        CMP      R0,#+32
        BEQ.N    ??TIM_TimeBaseInit_1
        LDRH     R0,[R5, #+2]
        CMP      R0,#+64
        BEQ.N    ??TIM_TimeBaseInit_1
        LDRH     R0,[R5, #+2]
        CMP      R0,#+96
        BEQ.N    ??TIM_TimeBaseInit_1
        MOVS     R1,#+238
        LDR.W    R0,??DataTable5_15
        BL       assert_failed
??TIM_TimeBaseInit_1:
        LDRH     R0,[R5, #+6]
        CMP      R0,#+0
        BEQ.N    ??TIM_TimeBaseInit_2
        LDRH     R0,[R5, #+6]
        MOV      R1,#+256
        CMP      R0,R1
        BEQ.N    ??TIM_TimeBaseInit_2
        LDRH     R0,[R5, #+6]
        MOV      R1,#+512
        CMP      R0,R1
        BEQ.N    ??TIM_TimeBaseInit_2
        MOVS     R1,#+239
        LDR.W    R0,??DataTable5_15
        BL       assert_failed
??TIM_TimeBaseInit_2:
        LDRH     R0,[R4, #+0]
        MOVS     R6,R0
        LDR.W    R0,??DataTable5  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_TimeBaseInit_3
        LDR.W    R0,??DataTable5_6  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_TimeBaseInit_3
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_TimeBaseInit_3
        LDR.W    R0,??DataTable5_1  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_TimeBaseInit_3
        LDR.W    R0,??DataTable5_2  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_TimeBaseInit_3
        LDR.W    R0,??DataTable5_3  ;; 0x40000c00
        CMP      R4,R0
        BNE.N    ??TIM_TimeBaseInit_4
??TIM_TimeBaseInit_3:
        MOVW     R0,#+65423
        ANDS     R6,R0,R6
        LDRH     R0,[R5, #+2]
        ORRS     R6,R0,R6
??TIM_TimeBaseInit_4:
        LDR.W    R0,??DataTable5_4  ;; 0x40001000
        CMP      R4,R0
        BEQ.N    ??TIM_TimeBaseInit_5
        LDR.W    R0,??DataTable5_5  ;; 0x40001400
        CMP      R4,R0
        BEQ.N    ??TIM_TimeBaseInit_5
        MOVW     R0,#+64767
        ANDS     R6,R0,R6
        LDRH     R0,[R5, #+6]
        ORRS     R6,R0,R6
??TIM_TimeBaseInit_5:
        STRH     R6,[R4, #+0]
        LDRH     R0,[R5, #+4]
        STRH     R0,[R4, #+44]
        LDRH     R0,[R5, #+0]
        STRH     R0,[R4, #+40]
        LDR.W    R0,??DataTable5  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_TimeBaseInit_6
        LDR.W    R0,??DataTable5_6  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_TimeBaseInit_6
        LDR.W    R0,??DataTable5_13  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_TimeBaseInit_6
        LDR.W    R0,??DataTable5_14  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_TimeBaseInit_6
        LDR.W    R0,??DataTable8  ;; 0x40014800
        CMP      R4,R0
        BNE.N    ??TIM_TimeBaseInit_7
??TIM_TimeBaseInit_6:
        LDRB     R0,[R5, #+8]
        STRH     R0,[R4, #+48]
??TIM_TimeBaseInit_7:
        MOVS     R0,#+1
        STRH     R0,[R4, #+20]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_OC1Init:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        MOVS     R7,#+0
        MOVS     R8,#+0
        LDR.W    R0,??DataTable5  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC1Init_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_OC1Init_0
        LDR.W    R0,??DataTable5_1  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_OC1Init_0
        LDR.W    R0,??DataTable5_2  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_OC1Init_0
        LDR.W    R0,??DataTable5_3  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC1Init_0
        LDR.W    R0,??DataTable5_6  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_OC1Init_0
        LDR.W    R0,??DataTable5_7  ;; 0x40014c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC1Init_0
        LDR.W    R0,??DataTable5_8  ;; 0x40015000
        CMP      R4,R0
        BEQ.N    ??TIM_OC1Init_0
        LDR.W    R0,??DataTable5_9  ;; 0x40015400
        CMP      R4,R0
        BEQ.N    ??TIM_OC1Init_0
        LDR.W    R0,??DataTable5_10  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_OC1Init_0
        LDR.W    R0,??DataTable5_11  ;; 0x40001c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC1Init_0
        LDR.W    R0,??DataTable5_12  ;; 0x40002000
        CMP      R4,R0
        BEQ.N    ??TIM_OC1Init_0
        LDR.W    R0,??DataTable5_13  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_OC1Init_0
        LDR.W    R0,??DataTable5_14  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_OC1Init_0
        LDR.W    R0,??DataTable6  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_OC1Init_0
        MOV      R1,#+290
        LDR.W    R0,??DataTable5_15
        BL       assert_failed
??TIM_OC1Init_0:
        LDRH     R0,[R5, #+0]
        CMP      R0,#+0
        BEQ.N    ??TIM_OC1Init_1
        LDRH     R0,[R5, #+0]
        CMP      R0,#+16
        BEQ.N    ??TIM_OC1Init_1
        LDRH     R0,[R5, #+0]
        CMP      R0,#+32
        BEQ.N    ??TIM_OC1Init_1
        LDRH     R0,[R5, #+0]
        CMP      R0,#+48
        BEQ.N    ??TIM_OC1Init_1
        LDRH     R0,[R5, #+0]
        CMP      R0,#+96
        BEQ.N    ??TIM_OC1Init_1
        LDRH     R0,[R5, #+0]
        CMP      R0,#+112
        BEQ.N    ??TIM_OC1Init_1
        MOVW     R1,#+291
        LDR.W    R0,??DataTable5_15
        BL       assert_failed
??TIM_OC1Init_1:
        LDRH     R0,[R5, #+2]
        CMP      R0,#+0
        BEQ.N    ??TIM_OC1Init_2
        LDRH     R0,[R5, #+2]
        CMP      R0,#+1
        BEQ.N    ??TIM_OC1Init_2
        MOV      R1,#+292
        LDR.W    R0,??DataTable5_15
        BL       assert_failed
??TIM_OC1Init_2:
        LDRH     R0,[R5, #+8]
        CMP      R0,#+0
        BEQ.N    ??TIM_OC1Init_3
        LDRH     R0,[R5, #+8]
        CMP      R0,#+2
        BEQ.N    ??TIM_OC1Init_3
        MOVW     R1,#+293
        LDR.W    R0,??DataTable5_15
        BL       assert_failed
??TIM_OC1Init_3:
        LDRH     R0,[R4, #+32]
        MOVW     R1,#+65534
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+32]
        LDRH     R0,[R4, #+32]
        MOVS     R7,R0
        LDRH     R0,[R4, #+4]
        MOV      R8,R0
        LDRH     R0,[R4, #+24]
        MOVS     R6,R0
        MOVW     R0,#+65423
        ANDS     R6,R0,R6
        MOVW     R0,#+65532
        ANDS     R6,R0,R6
        LDRH     R0,[R5, #+0]
        ORRS     R6,R0,R6
        MOVW     R0,#+65533
        ANDS     R7,R0,R7
        LDRH     R0,[R5, #+8]
        ORRS     R7,R0,R7
        LDRH     R0,[R5, #+2]
        ORRS     R7,R0,R7
        LDR.W    R0,??DataTable5  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC1Init_4
        LDR.W    R0,??DataTable5_6  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_OC1Init_4
        LDR.W    R0,??DataTable5_13  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_OC1Init_4
        LDR.W    R0,??DataTable5_14  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_OC1Init_4
        LDR.W    R0,??DataTable6  ;; 0x40014800
        CMP      R4,R0
        BNE.N    ??TIM_OC1Init_5
??TIM_OC1Init_4:
        LDRH     R0,[R5, #+4]
        CMP      R0,#+0
        BEQ.N    ??TIM_OC1Init_6
        LDRH     R0,[R5, #+4]
        CMP      R0,#+4
        BEQ.N    ??TIM_OC1Init_6
        MOV      R1,#+322
        LDR.W    R0,??DataTable5_15
        BL       assert_failed
??TIM_OC1Init_6:
        LDRH     R0,[R5, #+10]
        CMP      R0,#+0
        BEQ.N    ??TIM_OC1Init_7
        LDRH     R0,[R5, #+10]
        CMP      R0,#+8
        BEQ.N    ??TIM_OC1Init_7
        MOVW     R1,#+323
        LDR.W    R0,??DataTable5_15
        BL       assert_failed
??TIM_OC1Init_7:
        LDRH     R0,[R5, #+14]
        MOV      R1,#+512
        CMP      R0,R1
        BEQ.N    ??TIM_OC1Init_8
        LDRH     R0,[R5, #+14]
        CMP      R0,#+0
        BEQ.N    ??TIM_OC1Init_8
        MOV      R1,#+324
        LDR.W    R0,??DataTable5_15
        BL       assert_failed
??TIM_OC1Init_8:
        LDRH     R0,[R5, #+12]
        MOV      R1,#+256
        CMP      R0,R1
        BEQ.N    ??TIM_OC1Init_9
        LDRH     R0,[R5, #+12]
        CMP      R0,#+0
        BEQ.N    ??TIM_OC1Init_9
        MOVW     R1,#+325
        LDR.W    R0,??DataTable5_15
        BL       assert_failed
??TIM_OC1Init_9:
        MOVW     R0,#+65527
        ANDS     R7,R0,R7
        LDRH     R0,[R5, #+10]
        ORRS     R7,R0,R7
        MOVW     R0,#+65531
        ANDS     R7,R0,R7
        LDRH     R0,[R5, #+4]
        ORRS     R7,R0,R7
        MOVW     R0,#+65279
        ANDS     R8,R0,R8
        MOVW     R0,#+65023
        ANDS     R8,R0,R8
        LDRH     R0,[R5, #+12]
        ORRS     R8,R0,R8
        LDRH     R0,[R5, #+14]
        ORRS     R8,R0,R8
??TIM_OC1Init_5:
        STRH     R8,[R4, #+4]
        STRH     R6,[R4, #+24]
        LDRH     R0,[R5, #+6]
        STRH     R0,[R4, #+52]
        STRH     R7,[R4, #+32]
        POP      {R4-R8,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_OC2Init:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        MOVS     R7,#+0
        MOVS     R8,#+0
        LDR.W    R0,??DataTable5  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC2Init_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_OC2Init_0
        LDR.W    R0,??DataTable5_1  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_OC2Init_0
        LDR.W    R0,??DataTable5_2  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_OC2Init_0
        LDR.W    R0,??DataTable5_3  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC2Init_0
        LDR.W    R0,??DataTable5_6  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_OC2Init_0
        LDR.W    R0,??DataTable5_7  ;; 0x40014c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC2Init_0
        LDR.W    R0,??DataTable5_10  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_OC2Init_0
        LDR.W    R0,??DataTable5_13  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_OC2Init_0
        MOVW     R1,#+373
        LDR.W    R0,??DataTable5_15
        BL       assert_failed
??TIM_OC2Init_0:
        LDRH     R0,[R5, #+0]
        CMP      R0,#+0
        BEQ.N    ??TIM_OC2Init_1
        LDRH     R0,[R5, #+0]
        CMP      R0,#+16
        BEQ.N    ??TIM_OC2Init_1
        LDRH     R0,[R5, #+0]
        CMP      R0,#+32
        BEQ.N    ??TIM_OC2Init_1
        LDRH     R0,[R5, #+0]
        CMP      R0,#+48
        BEQ.N    ??TIM_OC2Init_1
        LDRH     R0,[R5, #+0]
        CMP      R0,#+96
        BEQ.N    ??TIM_OC2Init_1
        LDRH     R0,[R5, #+0]
        CMP      R0,#+112
        BEQ.N    ??TIM_OC2Init_1
        MOV      R1,#+374
        LDR.W    R0,??DataTable5_15
        BL       assert_failed
??TIM_OC2Init_1:
        LDRH     R0,[R5, #+2]
        CMP      R0,#+0
        BEQ.N    ??TIM_OC2Init_2
        LDRH     R0,[R5, #+2]
        CMP      R0,#+1
        BEQ.N    ??TIM_OC2Init_2
        MOVW     R1,#+375
        LDR.W    R0,??DataTable5_15
        BL       assert_failed
??TIM_OC2Init_2:
        LDRH     R0,[R5, #+8]
        CMP      R0,#+0
        BEQ.N    ??TIM_OC2Init_3
        LDRH     R0,[R5, #+8]
        CMP      R0,#+2
        BEQ.N    ??TIM_OC2Init_3
        MOV      R1,#+376
        LDR.W    R0,??DataTable5_15
        BL       assert_failed
??TIM_OC2Init_3:
        LDRH     R0,[R4, #+32]
        MOVW     R1,#+65519
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+32]
        LDRH     R0,[R4, #+32]
        MOVS     R7,R0
        LDRH     R0,[R4, #+4]
        MOV      R8,R0
        LDRH     R0,[R4, #+24]
        MOVS     R6,R0
        MOVW     R0,#+36863
        ANDS     R6,R0,R6
        MOVW     R0,#+64767
        ANDS     R6,R0,R6
        LDRH     R0,[R5, #+0]
        ORRS     R6,R6,R0, LSL #+8
        MOVW     R0,#+65503
        ANDS     R7,R0,R7
        LDRH     R0,[R5, #+8]
        ORRS     R7,R7,R0, LSL #+4
        LDRH     R0,[R5, #+2]
        ORRS     R7,R7,R0, LSL #+4
        LDR.W    R0,??DataTable5  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC2Init_4
        LDR.W    R0,??DataTable5_6  ;; 0x40013400
        CMP      R4,R0
        BNE.N    ??TIM_OC2Init_5
??TIM_OC2Init_4:
        LDRH     R0,[R5, #+4]
        CMP      R0,#+0
        BEQ.N    ??TIM_OC2Init_6
        LDRH     R0,[R5, #+4]
        CMP      R0,#+4
        BEQ.N    ??TIM_OC2Init_6
        MOVW     R1,#+405
        LDR.W    R0,??DataTable5_15
        BL       assert_failed
??TIM_OC2Init_6:
        LDRH     R0,[R5, #+10]
        CMP      R0,#+0
        BEQ.N    ??TIM_OC2Init_7
        LDRH     R0,[R5, #+10]
        CMP      R0,#+8
        BEQ.N    ??TIM_OC2Init_7
        MOV      R1,#+406
        LDR.W    R0,??DataTable5_15
        BL       assert_failed
??TIM_OC2Init_7:
        LDRH     R0,[R5, #+14]
        MOV      R1,#+512
        CMP      R0,R1
        BEQ.N    ??TIM_OC2Init_8
        LDRH     R0,[R5, #+14]
        CMP      R0,#+0
        BEQ.N    ??TIM_OC2Init_8
        MOVW     R1,#+407
        LDR.N    R0,??DataTable5_15
        BL       assert_failed
??TIM_OC2Init_8:
        LDRH     R0,[R5, #+12]
        MOV      R1,#+256
        CMP      R0,R1
        BEQ.N    ??TIM_OC2Init_9
        LDRH     R0,[R5, #+12]
        CMP      R0,#+0
        BEQ.N    ??TIM_OC2Init_9
        MOV      R1,#+408
        LDR.N    R0,??DataTable5_15
        BL       assert_failed
??TIM_OC2Init_9:
        MOVW     R0,#+65407
        ANDS     R7,R0,R7
        LDRH     R0,[R5, #+10]
        ORRS     R7,R7,R0, LSL #+4
        MOVW     R0,#+65471
        ANDS     R7,R0,R7
        LDRH     R0,[R5, #+4]
        ORRS     R7,R7,R0, LSL #+4
        MOVW     R0,#+64511
        ANDS     R8,R0,R8
        MOVW     R0,#+63487
        ANDS     R8,R0,R8
        LDRH     R0,[R5, #+12]
        ORRS     R8,R8,R0, LSL #+2
        LDRH     R0,[R5, #+14]
        ORRS     R8,R8,R0, LSL #+2
??TIM_OC2Init_5:
        STRH     R8,[R4, #+4]
        STRH     R6,[R4, #+24]
        LDRH     R0,[R5, #+6]
        STRH     R0,[R4, #+56]
        STRH     R7,[R4, #+32]
        POP      {R4-R8,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_OC3Init:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        MOVS     R7,#+0
        MOVS     R8,#+0
        LDR.N    R0,??DataTable5  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC3Init_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_OC3Init_0
        LDR.N    R0,??DataTable5_1  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_OC3Init_0
        LDR.N    R0,??DataTable5_2  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_OC3Init_0
        LDR.N    R0,??DataTable5_3  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC3Init_0
        LDR.N    R0,??DataTable5_6  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_OC3Init_0
        MOVW     R1,#+455
        LDR.N    R0,??DataTable5_15
        BL       assert_failed
??TIM_OC3Init_0:
        LDRH     R0,[R5, #+0]
        CMP      R0,#+0
        BEQ.N    ??TIM_OC3Init_1
        LDRH     R0,[R5, #+0]
        CMP      R0,#+16
        BEQ.N    ??TIM_OC3Init_1
        LDRH     R0,[R5, #+0]
        CMP      R0,#+32
        BEQ.N    ??TIM_OC3Init_1
        LDRH     R0,[R5, #+0]
        CMP      R0,#+48
        BEQ.N    ??TIM_OC3Init_1
        LDRH     R0,[R5, #+0]
        CMP      R0,#+96
        BEQ.N    ??TIM_OC3Init_1
        LDRH     R0,[R5, #+0]
        CMP      R0,#+112
        BEQ.N    ??TIM_OC3Init_1
        MOV      R1,#+456
        LDR.N    R0,??DataTable5_15
        BL       assert_failed
??TIM_OC3Init_1:
        LDRH     R0,[R5, #+2]
        CMP      R0,#+0
        BEQ.N    ??TIM_OC3Init_2
        LDRH     R0,[R5, #+2]
        CMP      R0,#+1
        BEQ.N    ??TIM_OC3Init_2
        MOVW     R1,#+457
        LDR.N    R0,??DataTable5_15
        BL       assert_failed
??TIM_OC3Init_2:
        LDRH     R0,[R5, #+8]
        CMP      R0,#+0
        BEQ.N    ??TIM_OC3Init_3
        LDRH     R0,[R5, #+8]
        CMP      R0,#+2
        BEQ.N    ??TIM_OC3Init_3
        MOV      R1,#+458
        LDR.N    R0,??DataTable5_15
        BL       assert_failed
??TIM_OC3Init_3:
        LDRH     R0,[R4, #+32]
        MOVW     R1,#+65279
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+32]
        LDRH     R0,[R4, #+32]
        MOVS     R7,R0
        LDRH     R0,[R4, #+4]
        MOV      R8,R0
        LDRH     R0,[R4, #+28]
        MOVS     R6,R0
        MOVW     R0,#+65423
        ANDS     R6,R0,R6
        MOVW     R0,#+65532
        ANDS     R6,R0,R6
        LDRH     R0,[R5, #+0]
        ORRS     R6,R0,R6
        MOVW     R0,#+65023
        ANDS     R7,R0,R7
        LDRH     R0,[R5, #+8]
        ORRS     R7,R7,R0, LSL #+8
        LDRH     R0,[R5, #+2]
        ORRS     R7,R7,R0, LSL #+8
        LDR.N    R0,??DataTable5  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC3Init_4
        LDR.N    R0,??DataTable5_6  ;; 0x40013400
        CMP      R4,R0
        BNE.N    ??TIM_OC3Init_5
??TIM_OC3Init_4:
        LDRH     R0,[R5, #+4]
        CMP      R0,#+0
        BEQ.N    ??TIM_OC3Init_6
        LDRH     R0,[R5, #+4]
        CMP      R0,#+4
        BEQ.N    ??TIM_OC3Init_6
        MOV      R1,#+486
        LDR.N    R0,??DataTable5_15
        BL       assert_failed
??TIM_OC3Init_6:
        LDRH     R0,[R5, #+10]
        CMP      R0,#+0
        BEQ.N    ??TIM_OC3Init_7
        LDRH     R0,[R5, #+10]
        CMP      R0,#+8
        BEQ.N    ??TIM_OC3Init_7
        MOVW     R1,#+487
        LDR.N    R0,??DataTable5_15
        BL       assert_failed
??TIM_OC3Init_7:
        LDRH     R0,[R5, #+14]
        MOV      R1,#+512
        CMP      R0,R1
        BEQ.N    ??TIM_OC3Init_8
        LDRH     R0,[R5, #+14]
        CMP      R0,#+0
        BEQ.N    ??TIM_OC3Init_8
        MOV      R1,#+488
        LDR.N    R0,??DataTable5_15
        BL       assert_failed
??TIM_OC3Init_8:
        LDRH     R0,[R5, #+12]
        MOV      R1,#+256
        CMP      R0,R1
        BEQ.N    ??TIM_OC3Init_9
        LDRH     R0,[R5, #+12]
        CMP      R0,#+0
        BEQ.N    ??TIM_OC3Init_9
        MOVW     R1,#+489
        LDR.N    R0,??DataTable5_15
        BL       assert_failed
??TIM_OC3Init_9:
        MOVW     R0,#+63487
        ANDS     R7,R0,R7
        LDRH     R0,[R5, #+10]
        ORRS     R7,R7,R0, LSL #+8
        MOVW     R0,#+64511
        ANDS     R7,R0,R7
        LDRH     R0,[R5, #+4]
        ORRS     R7,R7,R0, LSL #+8
        MOVW     R0,#+61439
        ANDS     R8,R0,R8
        MOVW     R0,#+57343
        ANDS     R8,R0,R8
        LDRH     R0,[R5, #+12]
        ORRS     R8,R8,R0, LSL #+4
        LDRH     R0,[R5, #+14]
        ORRS     R8,R8,R0, LSL #+4
??TIM_OC3Init_5:
        STRH     R8,[R4, #+4]
        STRH     R6,[R4, #+28]
        LDRH     R0,[R5, #+6]
        STRH     R0,[R4, #+60]
        STRH     R7,[R4, #+32]
        POP      {R4-R8,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_OC4Init:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        MOVS     R7,#+0
        MOVS     R8,#+0
        LDR.N    R0,??DataTable5  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC4Init_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_OC4Init_0
        LDR.N    R0,??DataTable5_1  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_OC4Init_0
        LDR.N    R0,??DataTable5_2  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_OC4Init_0
        LDR.N    R0,??DataTable5_3  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC4Init_0
        LDR.N    R0,??DataTable5_6  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_OC4Init_0
        MOVW     R1,#+534
        LDR.N    R0,??DataTable5_15
        BL       assert_failed
??TIM_OC4Init_0:
        LDRH     R0,[R5, #+0]
        CMP      R0,#+0
        BEQ.N    ??TIM_OC4Init_1
        LDRH     R0,[R5, #+0]
        CMP      R0,#+16
        BEQ.N    ??TIM_OC4Init_1
        LDRH     R0,[R5, #+0]
        CMP      R0,#+32
        BEQ.N    ??TIM_OC4Init_1
        LDRH     R0,[R5, #+0]
        CMP      R0,#+48
        BEQ.N    ??TIM_OC4Init_1
        LDRH     R0,[R5, #+0]
        CMP      R0,#+96
        BEQ.N    ??TIM_OC4Init_1
        LDRH     R0,[R5, #+0]
        CMP      R0,#+112
        BEQ.N    ??TIM_OC4Init_1
        MOVW     R1,#+535
        LDR.N    R0,??DataTable5_15
        BL       assert_failed
??TIM_OC4Init_1:
        LDRH     R0,[R5, #+2]
        CMP      R0,#+0
        BEQ.N    ??TIM_OC4Init_2
        LDRH     R0,[R5, #+2]
        CMP      R0,#+1
        BEQ.N    ??TIM_OC4Init_2
        MOV      R1,#+536
        LDR.N    R0,??DataTable5_15
        BL       assert_failed
??TIM_OC4Init_2:
        LDRH     R0,[R5, #+8]
        CMP      R0,#+0
        BEQ.N    ??TIM_OC4Init_3
        LDRH     R0,[R5, #+8]
        CMP      R0,#+2
        BEQ.N    ??TIM_OC4Init_3
        MOVW     R1,#+537
        LDR.N    R0,??DataTable5_15
        BL       assert_failed
??TIM_OC4Init_3:
        LDRH     R0,[R4, #+32]
        MOVW     R1,#+61439
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+32]
        LDRH     R0,[R4, #+32]
        MOVS     R7,R0
        LDRH     R0,[R4, #+4]
        MOV      R8,R0
        LDRH     R0,[R4, #+28]
        MOVS     R6,R0
        MOVW     R0,#+36863
        ANDS     R6,R0,R6
        MOVW     R0,#+64767
        ANDS     R6,R0,R6
        LDRH     R0,[R5, #+0]
        ORRS     R6,R6,R0, LSL #+8
        MOVW     R0,#+57343
        ANDS     R7,R0,R7
        LDRH     R0,[R5, #+8]
        ORRS     R7,R7,R0, LSL #+12
        LDRH     R0,[R5, #+2]
        ORRS     R7,R7,R0, LSL #+12
        LDR.N    R0,??DataTable5  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC4Init_4
        LDR.N    R0,??DataTable5_6  ;; 0x40013400
        CMP      R4,R0
        BNE.N    ??TIM_OC4Init_5
??TIM_OC4Init_4:
        LDRH     R0,[R5, #+12]
        MOV      R1,#+256
        CMP      R0,R1
        BEQ.N    ??TIM_OC4Init_6
        LDRH     R0,[R5, #+12]
        CMP      R0,#+0
        BEQ.N    ??TIM_OC4Init_6
        MOVW     R1,#+566
        LDR.N    R0,??DataTable5_15
        BL       assert_failed
??TIM_OC4Init_6:
        MOVW     R0,#+49151
        ANDS     R8,R0,R8
        LDRH     R0,[R5, #+12]
        ORRS     R8,R8,R0, LSL #+6
??TIM_OC4Init_5:
        STRH     R8,[R4, #+4]
        STRH     R6,[R4, #+28]
        LDRH     R0,[R5, #+6]
        STRH     R0,[R4, #+64]
        STRH     R7,[R4, #+32]
        POP      {R4-R8,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DC32     0x40012c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_1:
        DC32     0x40000400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_2:
        DC32     0x40000800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_3:
        DC32     0x40000c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_4:
        DC32     0x40001000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_5:
        DC32     0x40001400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_6:
        DC32     0x40013400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_7:
        DC32     0x40014c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_8:
        DC32     0x40015000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_9:
        DC32     0x40015400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_10:
        DC32     0x40001800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_11:
        DC32     0x40001c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_12:
        DC32     0x40002000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_13:
        DC32     0x40014000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_14:
        DC32     0x40014400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_15:
        DC32     `?<Constant "D:\\\\zWk.Src\\\\Mango-M32-...">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_ICInit:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDRH     R0,[R5, #+0]
        CMP      R0,#+0
        BEQ.N    ??TIM_ICInit_0
        LDRH     R0,[R5, #+0]
        CMP      R0,#+4
        BEQ.N    ??TIM_ICInit_0
        LDRH     R0,[R5, #+0]
        CMP      R0,#+8
        BEQ.N    ??TIM_ICInit_0
        LDRH     R0,[R5, #+0]
        CMP      R0,#+12
        BEQ.N    ??TIM_ICInit_0
        MOV      R1,#+596
        LDR.W    R0,??DataTable18
        BL       assert_failed
??TIM_ICInit_0:
        LDRH     R0,[R5, #+4]
        CMP      R0,#+1
        BEQ.N    ??TIM_ICInit_1
        LDRH     R0,[R5, #+4]
        CMP      R0,#+2
        BEQ.N    ??TIM_ICInit_1
        LDRH     R0,[R5, #+4]
        CMP      R0,#+3
        BEQ.N    ??TIM_ICInit_1
        MOVW     R1,#+597
        LDR.W    R0,??DataTable18
        BL       assert_failed
??TIM_ICInit_1:
        LDRH     R0,[R5, #+6]
        CMP      R0,#+0
        BEQ.N    ??TIM_ICInit_2
        LDRH     R0,[R5, #+6]
        CMP      R0,#+4
        BEQ.N    ??TIM_ICInit_2
        LDRH     R0,[R5, #+6]
        CMP      R0,#+8
        BEQ.N    ??TIM_ICInit_2
        LDRH     R0,[R5, #+6]
        CMP      R0,#+12
        BEQ.N    ??TIM_ICInit_2
        MOVW     R1,#+598
        LDR.W    R0,??DataTable18
        BL       assert_failed
??TIM_ICInit_2:
        LDRH     R0,[R5, #+8]
        CMP      R0,#+16
        BCC.N    ??TIM_ICInit_3
        MOVW     R1,#+599
        LDR.W    R0,??DataTable18
        BL       assert_failed
??TIM_ICInit_3:
        LDR.W    R0,??DataTable14  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_ICInit_4
        LDR.W    R0,??DataTable14_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_ICInit_4
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_ICInit_4
        LDR.W    R0,??DataTable14_2  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_ICInit_4
        LDR.W    R0,??DataTable14_3  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_ICInit_4
        LDR.W    R0,??DataTable14_4  ;; 0x40000c00
        CMP      R4,R0
        BNE.N    ??TIM_ICInit_5
??TIM_ICInit_4:
        LDRH     R0,[R5, #+2]
        CMP      R0,#+0
        BEQ.N    ??TIM_ICInit_6
        LDRH     R0,[R5, #+2]
        CMP      R0,#+2
        BEQ.N    ??TIM_ICInit_6
        MOV      R1,#+604
        LDR.W    R0,??DataTable18
        BL       assert_failed
        B.N      ??TIM_ICInit_6
??TIM_ICInit_5:
        LDRH     R0,[R5, #+2]
        CMP      R0,#+0
        BEQ.N    ??TIM_ICInit_6
        LDRH     R0,[R5, #+2]
        CMP      R0,#+2
        BEQ.N    ??TIM_ICInit_6
        LDRH     R0,[R5, #+2]
        CMP      R0,#+10
        BEQ.N    ??TIM_ICInit_6
        MOV      R1,#+608
        LDR.W    R0,??DataTable18
        BL       assert_failed
??TIM_ICInit_6:
        LDRH     R0,[R5, #+0]
        CMP      R0,#+0
        BNE.N    ??TIM_ICInit_7
        LDR.W    R0,??DataTable14  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_ICInit_8
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_ICInit_8
        LDR.W    R0,??DataTable14_2  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_ICInit_8
        LDR.W    R0,??DataTable14_3  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_ICInit_8
        LDR.W    R0,??DataTable14_4  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_ICInit_8
        LDR.W    R0,??DataTable14_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_ICInit_8
        LDR.W    R0,??DataTable15  ;; 0x40014c00
        CMP      R4,R0
        BEQ.N    ??TIM_ICInit_8
        LDR.W    R0,??DataTable15_1  ;; 0x40015000
        CMP      R4,R0
        BEQ.N    ??TIM_ICInit_8
        LDR.W    R0,??DataTable15_2  ;; 0x40015400
        CMP      R4,R0
        BEQ.N    ??TIM_ICInit_8
        LDR.W    R0,??DataTable15_3  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_ICInit_8
        LDR.W    R0,??DataTable15_4  ;; 0x40001c00
        CMP      R4,R0
        BEQ.N    ??TIM_ICInit_8
        LDR.W    R0,??DataTable15_5  ;; 0x40002000
        CMP      R4,R0
        BEQ.N    ??TIM_ICInit_8
        LDR.W    R0,??DataTable15_6  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_ICInit_8
        LDR.W    R0,??DataTable15_7  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_ICInit_8
        LDR.N    R0,??DataTable6  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_ICInit_8
        MOV      R1,#+612
        LDR.W    R0,??DataTable18
        BL       assert_failed
??TIM_ICInit_8:
        LDRH     R3,[R5, #+8]
        LDRH     R2,[R5, #+4]
        LDRH     R1,[R5, #+2]
        MOVS     R0,R4
        BL       TI1_Config
        LDRH     R1,[R5, #+6]
        MOVS     R0,R4
        BL       TIM_SetIC1Prescaler
        B.N      ??TIM_ICInit_9
??TIM_ICInit_7:
        LDRH     R0,[R5, #+0]
        CMP      R0,#+4
        BNE.N    ??TIM_ICInit_10
        LDR.W    R0,??DataTable14  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_ICInit_11
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_ICInit_11
        LDR.W    R0,??DataTable14_2  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_ICInit_11
        LDR.W    R0,??DataTable14_3  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_ICInit_11
        LDR.W    R0,??DataTable14_4  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_ICInit_11
        LDR.W    R0,??DataTable14_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_ICInit_11
        LDR.W    R0,??DataTable15  ;; 0x40014c00
        CMP      R4,R0
        BEQ.N    ??TIM_ICInit_11
        LDR.W    R0,??DataTable15_3  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_ICInit_11
        LDR.W    R0,??DataTable15_6  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_ICInit_11
        MOVW     R1,#+622
        LDR.W    R0,??DataTable18
        BL       assert_failed
??TIM_ICInit_11:
        LDRH     R3,[R5, #+8]
        LDRH     R2,[R5, #+4]
        LDRH     R1,[R5, #+2]
        MOVS     R0,R4
        BL       TI2_Config
        LDRH     R1,[R5, #+6]
        MOVS     R0,R4
        BL       TIM_SetIC2Prescaler
        B.N      ??TIM_ICInit_9
??TIM_ICInit_10:
        LDRH     R0,[R5, #+0]
        CMP      R0,#+8
        BNE.N    ??TIM_ICInit_12
        LDR.W    R0,??DataTable14  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_ICInit_13
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_ICInit_13
        LDR.W    R0,??DataTable14_2  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_ICInit_13
        LDR.W    R0,??DataTable14_3  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_ICInit_13
        LDR.W    R0,??DataTable14_4  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_ICInit_13
        LDR.W    R0,??DataTable14_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_ICInit_13
        MOV      R1,#+632
        LDR.W    R0,??DataTable18
        BL       assert_failed
??TIM_ICInit_13:
        LDRH     R3,[R5, #+8]
        LDRH     R2,[R5, #+4]
        LDRH     R1,[R5, #+2]
        MOVS     R0,R4
        BL       TI3_Config
        LDRH     R1,[R5, #+6]
        MOVS     R0,R4
        BL       TIM_SetIC3Prescaler
        B.N      ??TIM_ICInit_9
??TIM_ICInit_12:
        LDR.W    R0,??DataTable14  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_ICInit_14
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_ICInit_14
        LDR.W    R0,??DataTable14_2  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_ICInit_14
        LDR.W    R0,??DataTable14_3  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_ICInit_14
        LDR.W    R0,??DataTable14_4  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_ICInit_14
        LDR.W    R0,??DataTable14_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_ICInit_14
        MOVW     R1,#+642
        LDR.W    R0,??DataTable18
        BL       assert_failed
??TIM_ICInit_14:
        LDRH     R3,[R5, #+8]
        LDRH     R2,[R5, #+4]
        LDRH     R1,[R5, #+2]
        MOVS     R0,R4
        BL       TI4_Config
        LDRH     R1,[R5, #+6]
        MOVS     R0,R4
        BL       TIM_SetIC4Prescaler
??TIM_ICInit_9:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC32     0x40014800

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_PWMIConfig:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        MOVS     R7,#+1
        LDR.W    R0,??DataTable14  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_PWMIConfig_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_PWMIConfig_0
        LDR.W    R0,??DataTable14_2  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_PWMIConfig_0
        LDR.W    R0,??DataTable14_3  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_PWMIConfig_0
        LDR.W    R0,??DataTable14_4  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_PWMIConfig_0
        LDR.W    R0,??DataTable14_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_PWMIConfig_0
        LDR.W    R0,??DataTable15  ;; 0x40014c00
        CMP      R4,R0
        BEQ.N    ??TIM_PWMIConfig_0
        LDR.W    R0,??DataTable15_3  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_PWMIConfig_0
        LDR.W    R0,??DataTable15_6  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_PWMIConfig_0
        MOVW     R1,#+665
        LDR.W    R0,??DataTable18
        BL       assert_failed
??TIM_PWMIConfig_0:
        LDRH     R0,[R5, #+2]
        CMP      R0,#+0
        BNE.N    ??TIM_PWMIConfig_1
        MOVS     R0,#+2
        MOVS     R6,R0
        B.N      ??TIM_PWMIConfig_2
??TIM_PWMIConfig_1:
        MOVS     R0,#+0
        MOVS     R6,R0
??TIM_PWMIConfig_2:
        LDRH     R0,[R5, #+4]
        CMP      R0,#+1
        BNE.N    ??TIM_PWMIConfig_3
        MOVS     R0,#+2
        MOVS     R7,R0
        B.N      ??TIM_PWMIConfig_4
??TIM_PWMIConfig_3:
        MOVS     R0,#+1
        MOVS     R7,R0
??TIM_PWMIConfig_4:
        LDRH     R0,[R5, #+0]
        CMP      R0,#+0
        BNE.N    ??TIM_PWMIConfig_5
        LDRH     R3,[R5, #+8]
        LDRH     R2,[R5, #+4]
        LDRH     R1,[R5, #+2]
        MOVS     R0,R4
        BL       TI1_Config
        LDRH     R1,[R5, #+6]
        MOVS     R0,R4
        BL       TIM_SetIC1Prescaler
        LDRH     R3,[R5, #+8]
        MOVS     R2,R7
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R1,R6
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R4
        BL       TI2_Config
        LDRH     R1,[R5, #+6]
        MOVS     R0,R4
        BL       TIM_SetIC2Prescaler
        B.N      ??TIM_PWMIConfig_6
??TIM_PWMIConfig_5:
        LDRH     R3,[R5, #+8]
        LDRH     R2,[R5, #+4]
        LDRH     R1,[R5, #+2]
        MOVS     R0,R4
        BL       TI2_Config
        LDRH     R1,[R5, #+6]
        MOVS     R0,R4
        BL       TIM_SetIC2Prescaler
        LDRH     R3,[R5, #+8]
        MOVS     R2,R7
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R1,R6
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R4
        BL       TI1_Config
        LDRH     R1,[R5, #+6]
        MOVS     R0,R4
        BL       TIM_SetIC1Prescaler
??TIM_PWMIConfig_6:
        POP      {R0,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_BDTRConfig:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable14  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_BDTRConfig_0
        LDR.W    R0,??DataTable14_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_BDTRConfig_0
        LDR.W    R0,??DataTable15_6  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_BDTRConfig_0
        LDR.W    R0,??DataTable15_7  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_BDTRConfig_0
        LDR.N    R0,??DataTable8  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_BDTRConfig_0
        MOVW     R1,#+721
        LDR.W    R0,??DataTable18
        BL       assert_failed
??TIM_BDTRConfig_0:
        LDRH     R0,[R5, #+0]
        CMP      R0,#+2048
        BEQ.N    ??TIM_BDTRConfig_1
        LDRH     R0,[R5, #+0]
        CMP      R0,#+0
        BEQ.N    ??TIM_BDTRConfig_1
        MOVW     R1,#+722
        LDR.W    R0,??DataTable18
        BL       assert_failed
??TIM_BDTRConfig_1:
        LDRH     R0,[R5, #+2]
        CMP      R0,#+1024
        BEQ.N    ??TIM_BDTRConfig_2
        LDRH     R0,[R5, #+2]
        CMP      R0,#+0
        BEQ.N    ??TIM_BDTRConfig_2
        MOVW     R1,#+723
        LDR.W    R0,??DataTable18
        BL       assert_failed
??TIM_BDTRConfig_2:
        LDRH     R0,[R5, #+4]
        CMP      R0,#+0
        BEQ.N    ??TIM_BDTRConfig_3
        LDRH     R0,[R5, #+4]
        MOV      R1,#+256
        CMP      R0,R1
        BEQ.N    ??TIM_BDTRConfig_3
        LDRH     R0,[R5, #+4]
        MOV      R1,#+512
        CMP      R0,R1
        BEQ.N    ??TIM_BDTRConfig_3
        LDRH     R0,[R5, #+4]
        MOV      R1,#+768
        CMP      R0,R1
        BEQ.N    ??TIM_BDTRConfig_3
        MOV      R1,#+724
        LDR.W    R0,??DataTable18
        BL       assert_failed
??TIM_BDTRConfig_3:
        LDRH     R0,[R5, #+8]
        CMP      R0,#+4096
        BEQ.N    ??TIM_BDTRConfig_4
        LDRH     R0,[R5, #+8]
        CMP      R0,#+0
        BEQ.N    ??TIM_BDTRConfig_4
        MOVW     R1,#+725
        LDR.W    R0,??DataTable18
        BL       assert_failed
??TIM_BDTRConfig_4:
        LDRH     R0,[R5, #+10]
        CMP      R0,#+0
        BEQ.N    ??TIM_BDTRConfig_5
        LDRH     R0,[R5, #+10]
        CMP      R0,#+8192
        BEQ.N    ??TIM_BDTRConfig_5
        MOVW     R1,#+726
        LDR.W    R0,??DataTable18
        BL       assert_failed
??TIM_BDTRConfig_5:
        LDRH     R0,[R5, #+12]
        CMP      R0,#+16384
        BEQ.N    ??TIM_BDTRConfig_6
        LDRH     R0,[R5, #+12]
        CMP      R0,#+0
        BEQ.N    ??TIM_BDTRConfig_6
        MOVW     R1,#+727
        LDR.W    R0,??DataTable18
        BL       assert_failed
??TIM_BDTRConfig_6:
        LDRH     R0,[R5, #+0]
        LDRH     R1,[R5, #+2]
        ORRS     R0,R1,R0
        LDRH     R1,[R5, #+4]
        ORRS     R0,R1,R0
        LDRH     R1,[R5, #+6]
        ORRS     R0,R1,R0
        LDRH     R1,[R5, #+8]
        ORRS     R0,R1,R0
        LDRH     R1,[R5, #+10]
        ORRS     R0,R1,R0
        LDRH     R1,[R5, #+12]
        ORRS     R0,R1,R0
        STRH     R0,[R4, #+68]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8:
        DC32     0x40014800

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_TimeBaseStructInit:
        MOVW     R1,#+65535
        STRH     R1,[R0, #+4]
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
        MOVS     R1,#+0
        STRH     R1,[R0, #+6]
        MOVS     R1,#+0
        STRH     R1,[R0, #+2]
        MOVS     R1,#+0
        STRB     R1,[R0, #+8]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_OCStructInit:
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
        MOVS     R1,#+0
        STRH     R1,[R0, #+2]
        MOVS     R1,#+0
        STRH     R1,[R0, #+4]
        MOVS     R1,#+0
        STRH     R1,[R0, #+6]
        MOVS     R1,#+0
        STRH     R1,[R0, #+8]
        MOVS     R1,#+0
        STRH     R1,[R0, #+10]
        MOVS     R1,#+0
        STRH     R1,[R0, #+12]
        MOVS     R1,#+0
        STRH     R1,[R0, #+14]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_ICStructInit:
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
        MOVS     R1,#+0
        STRH     R1,[R0, #+2]
        MOVS     R1,#+1
        STRH     R1,[R0, #+4]
        MOVS     R1,#+0
        STRH     R1,[R0, #+6]
        MOVS     R1,#+0
        STRH     R1,[R0, #+8]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_BDTRStructInit:
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
        MOVS     R1,#+0
        STRH     R1,[R0, #+2]
        MOVS     R1,#+0
        STRH     R1,[R0, #+4]
        MOVS     R1,#+0
        STRH     R1,[R0, #+6]
        MOVS     R1,#+0
        STRH     R1,[R0, #+8]
        MOVS     R1,#+0
        STRH     R1,[R0, #+10]
        MOVS     R1,#+0
        STRH     R1,[R0, #+12]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_Cmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable14  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_Cmd_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_Cmd_0
        LDR.W    R0,??DataTable14_2  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_Cmd_0
        LDR.W    R0,??DataTable14_3  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_Cmd_0
        LDR.W    R0,??DataTable14_4  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_Cmd_0
        LDR.W    R0,??DataTable20  ;; 0x40001000
        CMP      R4,R0
        BEQ.N    ??TIM_Cmd_0
        LDR.W    R0,??DataTable20_1  ;; 0x40001400
        CMP      R4,R0
        BEQ.N    ??TIM_Cmd_0
        LDR.W    R0,??DataTable14_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_Cmd_0
        LDR.W    R0,??DataTable15  ;; 0x40014c00
        CMP      R4,R0
        BEQ.N    ??TIM_Cmd_0
        LDR.W    R0,??DataTable15_1  ;; 0x40015000
        CMP      R4,R0
        BEQ.N    ??TIM_Cmd_0
        LDR.W    R0,??DataTable15_2  ;; 0x40015400
        CMP      R4,R0
        BEQ.N    ??TIM_Cmd_0
        LDR.W    R0,??DataTable15_3  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_Cmd_0
        LDR.W    R0,??DataTable15_4  ;; 0x40001c00
        CMP      R4,R0
        BEQ.N    ??TIM_Cmd_0
        LDR.W    R0,??DataTable15_5  ;; 0x40002000
        CMP      R4,R0
        BEQ.N    ??TIM_Cmd_0
        LDR.W    R0,??DataTable15_6  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_Cmd_0
        LDR.W    R0,??DataTable15_7  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_Cmd_0
        LDR.W    R0,??DataTable21  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_Cmd_0
        MOVW     R1,#+815
        LDR.W    R0,??DataTable18
        BL       assert_failed
??TIM_Cmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??TIM_Cmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??TIM_Cmd_1
        MOV      R1,#+816
        LDR.W    R0,??DataTable18
        BL       assert_failed
??TIM_Cmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??TIM_Cmd_2
        LDRH     R0,[R4, #+0]
        ORRS     R0,R0,#0x1
        STRH     R0,[R4, #+0]
        B.N      ??TIM_Cmd_3
??TIM_Cmd_2:
        LDRH     R0,[R4, #+0]
        MOVW     R1,#+65534
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+0]
??TIM_Cmd_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_CtrlPWMOutputs:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable14  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_CtrlPWMOutputs_0
        LDR.W    R0,??DataTable14_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_CtrlPWMOutputs_0
        LDR.W    R0,??DataTable15_6  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_CtrlPWMOutputs_0
        LDR.W    R0,??DataTable15_7  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_CtrlPWMOutputs_0
        LDR.W    R0,??DataTable21  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_CtrlPWMOutputs_0
        MOV      R1,#+840
        LDR.W    R0,??DataTable18
        BL       assert_failed
??TIM_CtrlPWMOutputs_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??TIM_CtrlPWMOutputs_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??TIM_CtrlPWMOutputs_1
        MOVW     R1,#+841
        LDR.W    R0,??DataTable18
        BL       assert_failed
??TIM_CtrlPWMOutputs_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??TIM_CtrlPWMOutputs_2
        LDRH     R0,[R4, #+68]
        ORRS     R0,R0,#0x8000
        STRH     R0,[R4, #+68]
        B.N      ??TIM_CtrlPWMOutputs_3
??TIM_CtrlPWMOutputs_2:
        LDRH     R0,[R4, #+68]
        LSLS     R0,R0,#+17       ;; ZeroExtS R0,R0,#+17,#+17
        LSRS     R0,R0,#+17
        STRH     R0,[R4, #+68]
??TIM_CtrlPWMOutputs_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_ITConfig:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        LDR.W    R0,??DataTable14  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_ITConfig_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_ITConfig_0
        LDR.W    R0,??DataTable14_2  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_ITConfig_0
        LDR.W    R0,??DataTable14_3  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_ITConfig_0
        LDR.W    R0,??DataTable14_4  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_ITConfig_0
        LDR.W    R0,??DataTable20  ;; 0x40001000
        CMP      R4,R0
        BEQ.N    ??TIM_ITConfig_0
        LDR.W    R0,??DataTable20_1  ;; 0x40001400
        CMP      R4,R0
        BEQ.N    ??TIM_ITConfig_0
        LDR.W    R0,??DataTable14_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_ITConfig_0
        LDR.W    R0,??DataTable15  ;; 0x40014c00
        CMP      R4,R0
        BEQ.N    ??TIM_ITConfig_0
        LDR.W    R0,??DataTable15_1  ;; 0x40015000
        CMP      R4,R0
        BEQ.N    ??TIM_ITConfig_0
        LDR.W    R0,??DataTable15_2  ;; 0x40015400
        CMP      R4,R0
        BEQ.N    ??TIM_ITConfig_0
        LDR.W    R0,??DataTable15_3  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_ITConfig_0
        LDR.W    R0,??DataTable15_4  ;; 0x40001c00
        CMP      R4,R0
        BEQ.N    ??TIM_ITConfig_0
        LDR.W    R0,??DataTable15_5  ;; 0x40002000
        CMP      R4,R0
        BEQ.N    ??TIM_ITConfig_0
        LDR.W    R0,??DataTable15_6  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_ITConfig_0
        LDR.W    R0,??DataTable15_7  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_ITConfig_0
        LDR.W    R0,??DataTable21  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_ITConfig_0
        MOVW     R1,#+881
        LDR.W    R0,??DataTable18
        BL       assert_failed
??TIM_ITConfig_0:
        MOV      R0,#+65280
        TST      R5,R0
        BNE.N    ??TIM_ITConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BNE.N    ??TIM_ITConfig_2
??TIM_ITConfig_1:
        MOVW     R1,#+882
        LDR.W    R0,??DataTable18
        BL       assert_failed
??TIM_ITConfig_2:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??TIM_ITConfig_3
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+1
        BEQ.N    ??TIM_ITConfig_3
        MOVW     R1,#+883
        LDR.W    R0,??DataTable18
        BL       assert_failed
??TIM_ITConfig_3:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??TIM_ITConfig_4
        LDRH     R0,[R4, #+12]
        ORRS     R0,R5,R0
        STRH     R0,[R4, #+12]
        B.N      ??TIM_ITConfig_5
??TIM_ITConfig_4:
        LDRH     R0,[R4, #+12]
        BICS     R0,R0,R5
        STRH     R0,[R4, #+12]
??TIM_ITConfig_5:
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_GenerateEvent:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable14  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_GenerateEvent_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_GenerateEvent_0
        LDR.N    R0,??DataTable14_2  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_GenerateEvent_0
        LDR.N    R0,??DataTable14_3  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_GenerateEvent_0
        LDR.N    R0,??DataTable14_4  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_GenerateEvent_0
        LDR.W    R0,??DataTable20  ;; 0x40001000
        CMP      R4,R0
        BEQ.N    ??TIM_GenerateEvent_0
        LDR.W    R0,??DataTable20_1  ;; 0x40001400
        CMP      R4,R0
        BEQ.N    ??TIM_GenerateEvent_0
        LDR.N    R0,??DataTable14_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_GenerateEvent_0
        LDR.N    R0,??DataTable15  ;; 0x40014c00
        CMP      R4,R0
        BEQ.N    ??TIM_GenerateEvent_0
        LDR.N    R0,??DataTable15_1  ;; 0x40015000
        CMP      R4,R0
        BEQ.N    ??TIM_GenerateEvent_0
        LDR.N    R0,??DataTable15_2  ;; 0x40015400
        CMP      R4,R0
        BEQ.N    ??TIM_GenerateEvent_0
        LDR.N    R0,??DataTable15_3  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_GenerateEvent_0
        LDR.N    R0,??DataTable15_4  ;; 0x40001c00
        CMP      R4,R0
        BEQ.N    ??TIM_GenerateEvent_0
        LDR.N    R0,??DataTable15_5  ;; 0x40002000
        CMP      R4,R0
        BEQ.N    ??TIM_GenerateEvent_0
        LDR.N    R0,??DataTable15_6  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_GenerateEvent_0
        LDR.N    R0,??DataTable15_7  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_GenerateEvent_0
        LDR.W    R0,??DataTable21  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_GenerateEvent_0
        MOVW     R1,#+918
        LDR.W    R0,??DataTable18
        BL       assert_failed
??TIM_GenerateEvent_0:
        MOV      R0,#+65280
        TST      R5,R0
        BNE.N    ??TIM_GenerateEvent_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BNE.N    ??TIM_GenerateEvent_2
??TIM_GenerateEvent_1:
        MOVW     R1,#+919
        LDR.W    R0,??DataTable18
        BL       assert_failed
??TIM_GenerateEvent_2:
        STRH     R5,[R4, #+20]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_DMAConfig:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        LDR.N    R0,??DataTable14  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_DMAConfig_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_DMAConfig_0
        LDR.N    R0,??DataTable14_2  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_DMAConfig_0
        LDR.N    R0,??DataTable14_3  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_DMAConfig_0
        LDR.N    R0,??DataTable14_4  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_DMAConfig_0
        LDR.N    R0,??DataTable14_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_DMAConfig_0
        LDR.N    R0,??DataTable15_6  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_DMAConfig_0
        LDR.N    R0,??DataTable15_7  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_DMAConfig_0
        LDR.W    R0,??DataTable21  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_DMAConfig_0
        MOVW     R1,#+946
        LDR.W    R0,??DataTable18
        BL       assert_failed
??TIM_DMAConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_DMAConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+1
        BEQ.N    ??TIM_DMAConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+2
        BEQ.N    ??TIM_DMAConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+3
        BEQ.N    ??TIM_DMAConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+4
        BEQ.N    ??TIM_DMAConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+5
        BEQ.N    ??TIM_DMAConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+6
        BEQ.N    ??TIM_DMAConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+7
        BEQ.N    ??TIM_DMAConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8
        BEQ.N    ??TIM_DMAConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+9
        BEQ.N    ??TIM_DMAConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+10
        BEQ.N    ??TIM_DMAConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+11
        BEQ.N    ??TIM_DMAConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+12
        BEQ.N    ??TIM_DMAConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+13
        BEQ.N    ??TIM_DMAConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+14
        BEQ.N    ??TIM_DMAConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+15
        BEQ.N    ??TIM_DMAConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+16
        BEQ.N    ??TIM_DMAConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+17
        BEQ.N    ??TIM_DMAConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+18
        BEQ.N    ??TIM_DMAConfig_1
        MOVW     R1,#+947
        LDR.W    R0,??DataTable18
        BL       assert_failed
??TIM_DMAConfig_1:
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+0
        BEQ.N    ??TIM_DMAConfig_2
        MOV      R0,#+256
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,R0
        BEQ.N    ??TIM_DMAConfig_2
        MOV      R0,#+512
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,R0
        BEQ.N    ??TIM_DMAConfig_2
        MOV      R0,#+768
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,R0
        BEQ.N    ??TIM_DMAConfig_2
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+1024
        BEQ.N    ??TIM_DMAConfig_2
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+1280
        BEQ.N    ??TIM_DMAConfig_2
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+1536
        BEQ.N    ??TIM_DMAConfig_2
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+1792
        BEQ.N    ??TIM_DMAConfig_2
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+2048
        BEQ.N    ??TIM_DMAConfig_2
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+2304
        BEQ.N    ??TIM_DMAConfig_2
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+2560
        BEQ.N    ??TIM_DMAConfig_2
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+2816
        BEQ.N    ??TIM_DMAConfig_2
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+3072
        BEQ.N    ??TIM_DMAConfig_2
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+3328
        BEQ.N    ??TIM_DMAConfig_2
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+3584
        BEQ.N    ??TIM_DMAConfig_2
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+3840
        BEQ.N    ??TIM_DMAConfig_2
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+4096
        BEQ.N    ??TIM_DMAConfig_2
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+4352
        BEQ.N    ??TIM_DMAConfig_2
        MOV      R1,#+948
        LDR.W    R0,??DataTable18
        BL       assert_failed
??TIM_DMAConfig_2:
        ORRS     R0,R6,R5
        STRH     R0,[R4, #+72]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_DMACmd:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        LDR.N    R0,??DataTable14  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_DMACmd_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_DMACmd_0
        LDR.N    R0,??DataTable14_2  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_DMACmd_0
        LDR.N    R0,??DataTable14_3  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_DMACmd_0
        LDR.N    R0,??DataTable14_4  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_DMACmd_0
        LDR.W    R0,??DataTable20  ;; 0x40001000
        CMP      R4,R0
        BEQ.N    ??TIM_DMACmd_0
        LDR.W    R0,??DataTable20_1  ;; 0x40001400
        CMP      R4,R0
        BEQ.N    ??TIM_DMACmd_0
        LDR.N    R0,??DataTable14_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_DMACmd_0
        LDR.N    R0,??DataTable15_6  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_DMACmd_0
        LDR.N    R0,??DataTable15_7  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_DMACmd_0
        LDR.W    R0,??DataTable21  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_DMACmd_0
        MOVW     R1,#+973
        LDR.N    R0,??DataTable18
        BL       assert_failed
??TIM_DMACmd_0:
        MOVW     R0,#+33023
        TST      R5,R0
        BNE.N    ??TIM_DMACmd_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BNE.N    ??TIM_DMACmd_2
??TIM_DMACmd_1:
        MOVW     R1,#+974
        LDR.N    R0,??DataTable18
        BL       assert_failed
??TIM_DMACmd_2:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??TIM_DMACmd_3
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+1
        BEQ.N    ??TIM_DMACmd_3
        MOVW     R1,#+975
        LDR.N    R0,??DataTable18
        BL       assert_failed
??TIM_DMACmd_3:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??TIM_DMACmd_4
        LDRH     R0,[R4, #+12]
        ORRS     R0,R5,R0
        STRH     R0,[R4, #+12]
        B.N      ??TIM_DMACmd_5
??TIM_DMACmd_4:
        LDRH     R0,[R4, #+12]
        BICS     R0,R0,R5
        STRH     R0,[R4, #+12]
??TIM_DMACmd_5:
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14:
        DC32     0x40012c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_1:
        DC32     0x40013400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_2:
        DC32     0x40000400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_3:
        DC32     0x40000800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_4:
        DC32     0x40000c00

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_InternalClockConfig:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.W    R0,??DataTable29  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_InternalClockConfig_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_InternalClockConfig_0
        LDR.W    R0,??DataTable29_1  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_InternalClockConfig_0
        LDR.W    R0,??DataTable29_2  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_InternalClockConfig_0
        LDR.W    R0,??DataTable29_3  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_InternalClockConfig_0
        LDR.W    R0,??DataTable29_4  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_InternalClockConfig_0
        LDR.N    R0,??DataTable15  ;; 0x40014c00
        CMP      R4,R0
        BEQ.N    ??TIM_InternalClockConfig_0
        LDR.N    R0,??DataTable15_3  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_InternalClockConfig_0
        LDR.N    R0,??DataTable15_6  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_InternalClockConfig_0
        MOVW     R1,#+998
        LDR.N    R0,??DataTable18
        BL       assert_failed
??TIM_InternalClockConfig_0:
        LDRH     R0,[R4, #+8]
        MOVW     R1,#+65528
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+8]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15:
        DC32     0x40014c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_1:
        DC32     0x40015000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_2:
        DC32     0x40015400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_3:
        DC32     0x40001800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_4:
        DC32     0x40001c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_5:
        DC32     0x40002000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_6:
        DC32     0x40014000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_7:
        DC32     0x40014400

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_ITRxExternalClockConfig:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable29  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_ITRxExternalClockConfig_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_ITRxExternalClockConfig_0
        LDR.W    R0,??DataTable29_1  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_ITRxExternalClockConfig_0
        LDR.W    R0,??DataTable29_2  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_ITRxExternalClockConfig_0
        LDR.W    R0,??DataTable29_3  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_ITRxExternalClockConfig_0
        LDR.W    R0,??DataTable29_4  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_ITRxExternalClockConfig_0
        LDR.W    R0,??DataTable31  ;; 0x40014c00
        CMP      R4,R0
        BEQ.N    ??TIM_ITRxExternalClockConfig_0
        LDR.W    R0,??DataTable31_1  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_ITRxExternalClockConfig_0
        LDR.W    R0,??DataTable31_2  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_ITRxExternalClockConfig_0
        MOVW     R1,#+1017
        LDR.N    R0,??DataTable18
        BL       assert_failed
??TIM_ITRxExternalClockConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_ITRxExternalClockConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+16
        BEQ.N    ??TIM_ITRxExternalClockConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+32
        BEQ.N    ??TIM_ITRxExternalClockConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+48
        BEQ.N    ??TIM_ITRxExternalClockConfig_1
        MOVW     R1,#+1018
        LDR.N    R0,??DataTable18
        BL       assert_failed
??TIM_ITRxExternalClockConfig_1:
        MOVS     R1,R5
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R4
        BL       TIM_SelectInputTrigger
        LDRH     R0,[R4, #+8]
        ORRS     R0,R0,#0x7
        STRH     R0,[R4, #+8]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_TIxExternalClockConfig:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        LDR.W    R0,??DataTable29  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_TIxExternalClockConfig_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_TIxExternalClockConfig_0
        LDR.W    R0,??DataTable29_1  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_TIxExternalClockConfig_0
        LDR.W    R0,??DataTable29_2  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_TIxExternalClockConfig_0
        LDR.W    R0,??DataTable29_3  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_TIxExternalClockConfig_0
        LDR.W    R0,??DataTable29_4  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_TIxExternalClockConfig_0
        LDR.W    R0,??DataTable31  ;; 0x40014c00
        CMP      R4,R0
        BEQ.N    ??TIM_TIxExternalClockConfig_0
        LDR.W    R0,??DataTable31_1  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_TIxExternalClockConfig_0
        LDR.W    R0,??DataTable31_2  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_TIxExternalClockConfig_0
        MOVW     R1,#+1045
        LDR.N    R0,??DataTable18
        BL       assert_failed
??TIM_TIxExternalClockConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+80
        BEQ.N    ??TIM_TIxExternalClockConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+96
        BEQ.N    ??TIM_TIxExternalClockConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+64
        BEQ.N    ??TIM_TIxExternalClockConfig_1
        MOVW     R1,#+1046
        LDR.N    R0,??DataTable18
        BL       assert_failed
??TIM_TIxExternalClockConfig_1:
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+0
        BEQ.N    ??TIM_TIxExternalClockConfig_2
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+2
        BEQ.N    ??TIM_TIxExternalClockConfig_2
        MOVW     R1,#+1047
        LDR.N    R0,??DataTable18
        BL       assert_failed
??TIM_TIxExternalClockConfig_2:
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        CMP      R7,#+16
        BCC.N    ??TIM_TIxExternalClockConfig_3
        MOV      R1,#+1048
        LDR.N    R0,??DataTable18
        BL       assert_failed
??TIM_TIxExternalClockConfig_3:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+96
        BNE.N    ??TIM_TIxExternalClockConfig_4
        MOVS     R3,R7
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        MOVS     R2,#+1
        MOVS     R1,R6
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R4
        BL       TI2_Config
        B.N      ??TIM_TIxExternalClockConfig_5
??TIM_TIxExternalClockConfig_4:
        MOVS     R3,R7
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        MOVS     R2,#+1
        MOVS     R1,R6
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R4
        BL       TI1_Config
??TIM_TIxExternalClockConfig_5:
        MOVS     R1,R5
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R4
        BL       TIM_SelectInputTrigger
        LDRH     R0,[R4, #+8]
        ORRS     R0,R0,#0x7
        STRH     R0,[R4, #+8]
        POP      {R0,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_ETRClockMode1Config:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        MOVS     R8,#+0
        LDR.W    R0,??DataTable29  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_ETRClockMode1Config_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_ETRClockMode1Config_0
        LDR.W    R0,??DataTable29_1  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_ETRClockMode1Config_0
        LDR.W    R0,??DataTable29_2  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_ETRClockMode1Config_0
        LDR.W    R0,??DataTable29_3  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_ETRClockMode1Config_0
        LDR.W    R0,??DataTable29_4  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_ETRClockMode1Config_0
        MOVW     R1,#+1086
        LDR.N    R0,??DataTable18
        BL       assert_failed
??TIM_ETRClockMode1Config_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_ETRClockMode1Config_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+4096
        BEQ.N    ??TIM_ETRClockMode1Config_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8192
        BEQ.N    ??TIM_ETRClockMode1Config_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+12288
        BEQ.N    ??TIM_ETRClockMode1Config_1
        MOVW     R1,#+1087
        LDR.N    R0,??DataTable18
        BL       assert_failed
??TIM_ETRClockMode1Config_1:
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+32768
        BEQ.N    ??TIM_ETRClockMode1Config_2
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+0
        BEQ.N    ??TIM_ETRClockMode1Config_2
        MOV      R1,#+1088
        LDR.N    R0,??DataTable18
        BL       assert_failed
??TIM_ETRClockMode1Config_2:
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        CMP      R7,#+16
        BCC.N    ??TIM_ETRClockMode1Config_3
        MOVW     R1,#+1089
        LDR.N    R0,??DataTable18
        BL       assert_failed
??TIM_ETRClockMode1Config_3:
        MOVS     R3,R7
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        MOVS     R2,R6
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R1,R5
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R4
        BL       TIM_ETRConfig
        LDRH     R0,[R4, #+8]
        MOV      R8,R0
        MOVW     R0,#+65528
        ANDS     R8,R0,R8
        ORRS     R8,R8,#0x7
        MOVW     R0,#+65423
        ANDS     R8,R0,R8
        ORRS     R8,R8,#0x70
        STRH     R8,[R4, #+8]
        POP      {R4-R8,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18:
        DC32     `?<Constant "D:\\\\zWk.Src\\\\Mango-M32-...">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_ETRClockMode2Config:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        LDR.W    R0,??DataTable29  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_ETRClockMode2Config_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_ETRClockMode2Config_0
        LDR.W    R0,??DataTable29_1  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_ETRClockMode2Config_0
        LDR.W    R0,??DataTable29_2  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_ETRClockMode2Config_0
        LDR.W    R0,??DataTable29_3  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_ETRClockMode2Config_0
        LDR.W    R0,??DataTable29_4  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_ETRClockMode2Config_0
        MOVW     R1,#+1127
        LDR.W    R0,??DataTable40
        BL       assert_failed
??TIM_ETRClockMode2Config_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_ETRClockMode2Config_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+4096
        BEQ.N    ??TIM_ETRClockMode2Config_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8192
        BEQ.N    ??TIM_ETRClockMode2Config_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+12288
        BEQ.N    ??TIM_ETRClockMode2Config_1
        MOV      R1,#+1128
        LDR.W    R0,??DataTable40
        BL       assert_failed
??TIM_ETRClockMode2Config_1:
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+32768
        BEQ.N    ??TIM_ETRClockMode2Config_2
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+0
        BEQ.N    ??TIM_ETRClockMode2Config_2
        MOVW     R1,#+1129
        LDR.W    R0,??DataTable40
        BL       assert_failed
??TIM_ETRClockMode2Config_2:
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        CMP      R7,#+16
        BCC.N    ??TIM_ETRClockMode2Config_3
        MOVW     R1,#+1130
        LDR.W    R0,??DataTable40
        BL       assert_failed
??TIM_ETRClockMode2Config_3:
        MOVS     R3,R7
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        MOVS     R2,R6
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R1,R5
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R4
        BL       TIM_ETRConfig
        LDRH     R0,[R4, #+8]
        ORRS     R0,R0,#0x4000
        STRH     R0,[R4, #+8]
        POP      {R0,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_ETRConfig:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        MOVS     R8,#+0
        LDR.W    R0,??DataTable29  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_ETRConfig_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_ETRConfig_0
        LDR.W    R0,??DataTable29_1  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_ETRConfig_0
        LDR.W    R0,??DataTable29_2  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_ETRConfig_0
        LDR.W    R0,??DataTable29_3  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_ETRConfig_0
        LDR.W    R0,??DataTable29_4  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_ETRConfig_0
        MOVW     R1,#+1159
        LDR.W    R0,??DataTable40
        BL       assert_failed
??TIM_ETRConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_ETRConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+4096
        BEQ.N    ??TIM_ETRConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8192
        BEQ.N    ??TIM_ETRConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+12288
        BEQ.N    ??TIM_ETRConfig_1
        MOV      R1,#+1160
        LDR.W    R0,??DataTable40
        BL       assert_failed
??TIM_ETRConfig_1:
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+32768
        BEQ.N    ??TIM_ETRConfig_2
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+0
        BEQ.N    ??TIM_ETRConfig_2
        MOVW     R1,#+1161
        LDR.W    R0,??DataTable40
        BL       assert_failed
??TIM_ETRConfig_2:
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        CMP      R7,#+16
        BCC.N    ??TIM_ETRConfig_3
        MOVW     R1,#+1162
        LDR.W    R0,??DataTable40
        BL       assert_failed
??TIM_ETRConfig_3:
        LDRH     R0,[R4, #+8]
        MOV      R8,R0
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        ORRS     R0,R6,R7, LSL #+8
        ORRS     R0,R0,R5
        ORRS     R8,R0,R8
        STRH     R8,[R4, #+8]
        POP      {R4-R8,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20:
        DC32     0x40001000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_1:
        DC32     0x40001400

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_PrescalerConfig:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        LDR.W    R0,??DataTable29  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_PrescalerConfig_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_PrescalerConfig_0
        LDR.W    R0,??DataTable29_1  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_PrescalerConfig_0
        LDR.W    R0,??DataTable29_2  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_PrescalerConfig_0
        LDR.W    R0,??DataTable29_3  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_PrescalerConfig_0
        LDR.W    R0,??DataTable35  ;; 0x40001000
        CMP      R4,R0
        BEQ.N    ??TIM_PrescalerConfig_0
        LDR.W    R0,??DataTable35_1  ;; 0x40001400
        CMP      R4,R0
        BEQ.N    ??TIM_PrescalerConfig_0
        LDR.W    R0,??DataTable29_4  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_PrescalerConfig_0
        LDR.W    R0,??DataTable31  ;; 0x40014c00
        CMP      R4,R0
        BEQ.N    ??TIM_PrescalerConfig_0
        LDR.W    R0,??DataTable35_2  ;; 0x40015000
        CMP      R4,R0
        BEQ.N    ??TIM_PrescalerConfig_0
        LDR.W    R0,??DataTable35_3  ;; 0x40015400
        CMP      R4,R0
        BEQ.N    ??TIM_PrescalerConfig_0
        LDR.W    R0,??DataTable31_1  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_PrescalerConfig_0
        LDR.W    R0,??DataTable35_4  ;; 0x40001c00
        CMP      R4,R0
        BEQ.N    ??TIM_PrescalerConfig_0
        LDR.W    R0,??DataTable36  ;; 0x40002000
        CMP      R4,R0
        BEQ.N    ??TIM_PrescalerConfig_0
        LDR.W    R0,??DataTable31_2  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_PrescalerConfig_0
        LDR.W    R0,??DataTable36_1  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_PrescalerConfig_0
        LDR.N    R0,??DataTable21  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_PrescalerConfig_0
        MOVW     R1,#+1185
        LDR.W    R0,??DataTable40
        BL       assert_failed
??TIM_PrescalerConfig_0:
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+0
        BEQ.N    ??TIM_PrescalerConfig_1
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+1
        BEQ.N    ??TIM_PrescalerConfig_1
        MOVW     R1,#+1186
        LDR.W    R0,??DataTable40
        BL       assert_failed
??TIM_PrescalerConfig_1:
        STRH     R5,[R4, #+40]
        STRH     R6,[R4, #+20]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21:
        DC32     0x40014800

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_CounterModeConfig:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.W    R0,??DataTable29  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_CounterModeConfig_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_CounterModeConfig_0
        LDR.W    R0,??DataTable29_1  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_CounterModeConfig_0
        LDR.W    R0,??DataTable29_2  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_CounterModeConfig_0
        LDR.W    R0,??DataTable29_3  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_CounterModeConfig_0
        LDR.W    R0,??DataTable29_4  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_CounterModeConfig_0
        MOVW     R1,#+1209
        LDR.W    R0,??DataTable40
        BL       assert_failed
??TIM_CounterModeConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_CounterModeConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+16
        BEQ.N    ??TIM_CounterModeConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+32
        BEQ.N    ??TIM_CounterModeConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+64
        BEQ.N    ??TIM_CounterModeConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+96
        BEQ.N    ??TIM_CounterModeConfig_1
        MOVW     R1,#+1210
        LDR.W    R0,??DataTable40
        BL       assert_failed
??TIM_CounterModeConfig_1:
        LDRH     R0,[R4, #+0]
        MOVS     R6,R0
        MOVW     R0,#+65423
        ANDS     R6,R0,R6
        ORRS     R6,R5,R6
        STRH     R6,[R4, #+0]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_SelectInputTrigger:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.W    R0,??DataTable29  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_SelectInputTrigger_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_SelectInputTrigger_0
        LDR.W    R0,??DataTable29_1  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_SelectInputTrigger_0
        LDR.W    R0,??DataTable29_2  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_SelectInputTrigger_0
        LDR.W    R0,??DataTable29_3  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_SelectInputTrigger_0
        LDR.W    R0,??DataTable29_4  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_SelectInputTrigger_0
        LDR.W    R0,??DataTable31  ;; 0x40014c00
        CMP      R4,R0
        BEQ.N    ??TIM_SelectInputTrigger_0
        LDR.W    R0,??DataTable31_1  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_SelectInputTrigger_0
        LDR.W    R0,??DataTable31_2  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_SelectInputTrigger_0
        MOVW     R1,#+1239
        LDR.W    R0,??DataTable40
        BL       assert_failed
??TIM_SelectInputTrigger_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_SelectInputTrigger_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+16
        BEQ.N    ??TIM_SelectInputTrigger_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+32
        BEQ.N    ??TIM_SelectInputTrigger_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+48
        BEQ.N    ??TIM_SelectInputTrigger_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+64
        BEQ.N    ??TIM_SelectInputTrigger_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+80
        BEQ.N    ??TIM_SelectInputTrigger_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+96
        BEQ.N    ??TIM_SelectInputTrigger_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+112
        BEQ.N    ??TIM_SelectInputTrigger_1
        MOV      R1,#+1240
        LDR.W    R0,??DataTable40
        BL       assert_failed
??TIM_SelectInputTrigger_1:
        LDRH     R0,[R4, #+8]
        MOVS     R6,R0
        MOVW     R0,#+65423
        ANDS     R6,R0,R6
        ORRS     R6,R5,R6
        STRH     R6,[R4, #+8]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_EncoderInterfaceConfig:
        PUSH     {R4-R10,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        MOVS     R8,#+0
        MOVS     R9,#+0
        MOVS     R10,#+0
        LDR.W    R0,??DataTable29  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_EncoderInterfaceConfig_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_EncoderInterfaceConfig_0
        LDR.W    R0,??DataTable29_1  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_EncoderInterfaceConfig_0
        LDR.W    R0,??DataTable29_2  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_EncoderInterfaceConfig_0
        LDR.W    R0,??DataTable29_3  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_EncoderInterfaceConfig_0
        LDR.W    R0,??DataTable29_4  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_EncoderInterfaceConfig_0
        LDR.W    R0,??DataTable36_2  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_EncoderInterfaceConfig_0
        MOVW     R1,#+1278
        LDR.W    R0,??DataTable40
        BL       assert_failed
??TIM_EncoderInterfaceConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+1
        BEQ.N    ??TIM_EncoderInterfaceConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+2
        BEQ.N    ??TIM_EncoderInterfaceConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+3
        BEQ.N    ??TIM_EncoderInterfaceConfig_1
        MOVW     R1,#+1279
        LDR.W    R0,??DataTable40
        BL       assert_failed
??TIM_EncoderInterfaceConfig_1:
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+0
        BEQ.N    ??TIM_EncoderInterfaceConfig_2
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+2
        BEQ.N    ??TIM_EncoderInterfaceConfig_2
        MOV      R1,#+1280
        LDR.W    R0,??DataTable40
        BL       assert_failed
??TIM_EncoderInterfaceConfig_2:
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        CMP      R7,#+0
        BEQ.N    ??TIM_EncoderInterfaceConfig_3
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        CMP      R7,#+2
        BEQ.N    ??TIM_EncoderInterfaceConfig_3
        MOVW     R1,#+1281
        LDR.W    R0,??DataTable40
        BL       assert_failed
??TIM_EncoderInterfaceConfig_3:
        LDRH     R0,[R4, #+8]
        MOV      R8,R0
        LDRH     R0,[R4, #+24]
        MOV      R9,R0
        LDRH     R0,[R4, #+32]
        MOV      R10,R0
        MOVW     R0,#+65528
        ANDS     R8,R0,R8
        ORRS     R8,R5,R8
        MOVW     R0,#+64764
        ANDS     R9,R0,R9
        MOVW     R0,#+257
        ORRS     R9,R0,R9
        MOVW     R0,#+65501
        ANDS     R10,R0,R10
        ORRS     R0,R6,R7, LSL #+4
        ORRS     R10,R0,R10
        STRH     R8,[R4, #+8]
        STRH     R9,[R4, #+24]
        STRH     R10,[R4, #+32]
        POP      {R4-R10,PC}      ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_ForcedOC1Config:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.N    R0,??DataTable29  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_ForcedOC1Config_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_ForcedOC1Config_0
        LDR.N    R0,??DataTable29_1  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_ForcedOC1Config_0
        LDR.N    R0,??DataTable29_2  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_ForcedOC1Config_0
        LDR.N    R0,??DataTable29_3  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_ForcedOC1Config_0
        LDR.N    R0,??DataTable29_4  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_ForcedOC1Config_0
        LDR.W    R0,??DataTable35_5  ;; 0x40014c00
        CMP      R4,R0
        BEQ.N    ??TIM_ForcedOC1Config_0
        LDR.W    R0,??DataTable35_2  ;; 0x40015000
        CMP      R4,R0
        BEQ.N    ??TIM_ForcedOC1Config_0
        LDR.W    R0,??DataTable35_3  ;; 0x40015400
        CMP      R4,R0
        BEQ.N    ??TIM_ForcedOC1Config_0
        LDR.W    R0,??DataTable35_6  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_ForcedOC1Config_0
        LDR.W    R0,??DataTable35_4  ;; 0x40001c00
        CMP      R4,R0
        BEQ.N    ??TIM_ForcedOC1Config_0
        LDR.W    R0,??DataTable36  ;; 0x40002000
        CMP      R4,R0
        BEQ.N    ??TIM_ForcedOC1Config_0
        LDR.W    R0,??DataTable36_2  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_ForcedOC1Config_0
        LDR.W    R0,??DataTable36_1  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_ForcedOC1Config_0
        LDR.W    R0,??DataTable41  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_ForcedOC1Config_0
        MOVW     R1,#+1325
        LDR.W    R0,??DataTable40
        BL       assert_failed
??TIM_ForcedOC1Config_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+80
        BEQ.N    ??TIM_ForcedOC1Config_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+64
        BEQ.N    ??TIM_ForcedOC1Config_1
        MOVW     R1,#+1326
        LDR.W    R0,??DataTable40
        BL       assert_failed
??TIM_ForcedOC1Config_1:
        LDRH     R0,[R4, #+24]
        MOVS     R6,R0
        MOVW     R0,#+65423
        ANDS     R6,R0,R6
        ORRS     R6,R5,R6
        STRH     R6,[R4, #+24]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_ForcedOC2Config:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.N    R0,??DataTable29  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_ForcedOC2Config_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_ForcedOC2Config_0
        LDR.N    R0,??DataTable29_1  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_ForcedOC2Config_0
        LDR.N    R0,??DataTable29_2  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_ForcedOC2Config_0
        LDR.N    R0,??DataTable29_3  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_ForcedOC2Config_0
        LDR.N    R0,??DataTable29_4  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_ForcedOC2Config_0
        LDR.W    R0,??DataTable35_5  ;; 0x40014c00
        CMP      R4,R0
        BEQ.N    ??TIM_ForcedOC2Config_0
        LDR.W    R0,??DataTable35_6  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_ForcedOC2Config_0
        LDR.W    R0,??DataTable36_2  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_ForcedOC2Config_0
        MOVW     R1,#+1349
        LDR.W    R0,??DataTable40
        BL       assert_failed
??TIM_ForcedOC2Config_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+80
        BEQ.N    ??TIM_ForcedOC2Config_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+64
        BEQ.N    ??TIM_ForcedOC2Config_1
        MOVW     R1,#+1350
        LDR.W    R0,??DataTable40
        BL       assert_failed
??TIM_ForcedOC2Config_1:
        LDRH     R0,[R4, #+24]
        MOVS     R6,R0
        MOVW     R0,#+36863
        ANDS     R6,R0,R6
        ORRS     R6,R6,R5, LSL #+8
        STRH     R6,[R4, #+24]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_ForcedOC3Config:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.N    R0,??DataTable29  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_ForcedOC3Config_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_ForcedOC3Config_0
        LDR.N    R0,??DataTable29_1  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_ForcedOC3Config_0
        LDR.N    R0,??DataTable29_2  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_ForcedOC3Config_0
        LDR.N    R0,??DataTable29_3  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_ForcedOC3Config_0
        LDR.N    R0,??DataTable29_4  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_ForcedOC3Config_0
        MOVW     R1,#+1373
        LDR.W    R0,??DataTable40
        BL       assert_failed
??TIM_ForcedOC3Config_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+80
        BEQ.N    ??TIM_ForcedOC3Config_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+64
        BEQ.N    ??TIM_ForcedOC3Config_1
        MOVW     R1,#+1374
        LDR.W    R0,??DataTable40
        BL       assert_failed
??TIM_ForcedOC3Config_1:
        LDRH     R0,[R4, #+28]
        MOVS     R6,R0
        MOVW     R0,#+65423
        ANDS     R6,R0,R6
        ORRS     R6,R5,R6
        STRH     R6,[R4, #+28]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_ForcedOC4Config:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.N    R0,??DataTable29  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_ForcedOC4Config_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_ForcedOC4Config_0
        LDR.N    R0,??DataTable29_1  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_ForcedOC4Config_0
        LDR.N    R0,??DataTable29_2  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_ForcedOC4Config_0
        LDR.N    R0,??DataTable29_3  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_ForcedOC4Config_0
        LDR.N    R0,??DataTable29_4  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_ForcedOC4Config_0
        MOVW     R1,#+1397
        LDR.W    R0,??DataTable40
        BL       assert_failed
??TIM_ForcedOC4Config_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+80
        BEQ.N    ??TIM_ForcedOC4Config_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+64
        BEQ.N    ??TIM_ForcedOC4Config_1
        MOVW     R1,#+1398
        LDR.W    R0,??DataTable40
        BL       assert_failed
??TIM_ForcedOC4Config_1:
        LDRH     R0,[R4, #+28]
        MOVS     R6,R0
        MOVW     R0,#+36863
        ANDS     R6,R0,R6
        ORRS     R6,R6,R5, LSL #+8
        STRH     R6,[R4, #+28]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_ARRPreloadConfig:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable29  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_ARRPreloadConfig_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_ARRPreloadConfig_0
        LDR.N    R0,??DataTable29_1  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_ARRPreloadConfig_0
        LDR.N    R0,??DataTable29_2  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_ARRPreloadConfig_0
        LDR.N    R0,??DataTable29_3  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_ARRPreloadConfig_0
        LDR.W    R0,??DataTable35  ;; 0x40001000
        CMP      R4,R0
        BEQ.N    ??TIM_ARRPreloadConfig_0
        LDR.W    R0,??DataTable35_1  ;; 0x40001400
        CMP      R4,R0
        BEQ.N    ??TIM_ARRPreloadConfig_0
        LDR.N    R0,??DataTable29_4  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_ARRPreloadConfig_0
        LDR.W    R0,??DataTable35_5  ;; 0x40014c00
        CMP      R4,R0
        BEQ.N    ??TIM_ARRPreloadConfig_0
        LDR.W    R0,??DataTable35_2  ;; 0x40015000
        CMP      R4,R0
        BEQ.N    ??TIM_ARRPreloadConfig_0
        LDR.W    R0,??DataTable35_3  ;; 0x40015400
        CMP      R4,R0
        BEQ.N    ??TIM_ARRPreloadConfig_0
        LDR.W    R0,??DataTable35_6  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_ARRPreloadConfig_0
        LDR.W    R0,??DataTable35_4  ;; 0x40001c00
        CMP      R4,R0
        BEQ.N    ??TIM_ARRPreloadConfig_0
        LDR.W    R0,??DataTable36  ;; 0x40002000
        CMP      R4,R0
        BEQ.N    ??TIM_ARRPreloadConfig_0
        LDR.W    R0,??DataTable36_2  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_ARRPreloadConfig_0
        LDR.W    R0,??DataTable36_1  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_ARRPreloadConfig_0
        LDR.W    R0,??DataTable41  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_ARRPreloadConfig_0
        MOVW     R1,#+1418
        LDR.W    R0,??DataTable40
        BL       assert_failed
??TIM_ARRPreloadConfig_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??TIM_ARRPreloadConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??TIM_ARRPreloadConfig_1
        MOVW     R1,#+1419
        LDR.W    R0,??DataTable40
        BL       assert_failed
??TIM_ARRPreloadConfig_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??TIM_ARRPreloadConfig_2
        LDRH     R0,[R4, #+0]
        ORRS     R0,R0,#0x80
        STRH     R0,[R4, #+0]
        B.N      ??TIM_ARRPreloadConfig_3
??TIM_ARRPreloadConfig_2:
        LDRH     R0,[R4, #+0]
        MOVW     R1,#+65407
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+0]
??TIM_ARRPreloadConfig_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable29:
        DC32     0x40012c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable29_1:
        DC32     0x40000400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable29_2:
        DC32     0x40000800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable29_3:
        DC32     0x40000c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable29_4:
        DC32     0x40013400

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_SelectCOM:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable46  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_SelectCOM_0
        LDR.W    R0,??DataTable46_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_SelectCOM_0
        LDR.W    R0,??DataTable36_2  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_SelectCOM_0
        LDR.W    R0,??DataTable36_1  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_SelectCOM_0
        LDR.W    R0,??DataTable41  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_SelectCOM_0
        MOVW     R1,#+1442
        LDR.W    R0,??DataTable40
        BL       assert_failed
??TIM_SelectCOM_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??TIM_SelectCOM_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??TIM_SelectCOM_1
        MOVW     R1,#+1443
        LDR.W    R0,??DataTable40
        BL       assert_failed
??TIM_SelectCOM_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??TIM_SelectCOM_2
        LDRH     R0,[R4, #+4]
        ORRS     R0,R0,#0x4
        STRH     R0,[R4, #+4]
        B.N      ??TIM_SelectCOM_3
??TIM_SelectCOM_2:
        LDRH     R0,[R4, #+4]
        MOVW     R1,#+65531
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+4]
??TIM_SelectCOM_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_SelectCCDMA:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable46  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_SelectCCDMA_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_SelectCCDMA_0
        LDR.W    R0,??DataTable47  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_SelectCCDMA_0
        LDR.W    R0,??DataTable47_1  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_SelectCCDMA_0
        LDR.W    R0,??DataTable48  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_SelectCCDMA_0
        LDR.W    R0,??DataTable46_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_SelectCCDMA_0
        LDR.N    R0,??DataTable36_2  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_SelectCCDMA_0
        LDR.N    R0,??DataTable36_1  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_SelectCCDMA_0
        LDR.W    R0,??DataTable41  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_SelectCCDMA_0
        MOVW     R1,#+1467
        LDR.W    R0,??DataTable40
        BL       assert_failed
??TIM_SelectCCDMA_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??TIM_SelectCCDMA_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??TIM_SelectCCDMA_1
        MOVW     R1,#+1468
        LDR.W    R0,??DataTable40
        BL       assert_failed
??TIM_SelectCCDMA_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??TIM_SelectCCDMA_2
        LDRH     R0,[R4, #+4]
        ORRS     R0,R0,#0x8
        STRH     R0,[R4, #+4]
        B.N      ??TIM_SelectCCDMA_3
??TIM_SelectCCDMA_2:
        LDRH     R0,[R4, #+4]
        MOVW     R1,#+65527
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+4]
??TIM_SelectCCDMA_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31:
        DC32     0x40014c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_1:
        DC32     0x40001800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_2:
        DC32     0x40014000

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_CCPreloadControl:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable46  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_CCPreloadControl_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_CCPreloadControl_0
        LDR.W    R0,??DataTable47  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_CCPreloadControl_0
        LDR.W    R0,??DataTable47_1  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_CCPreloadControl_0
        LDR.W    R0,??DataTable48  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_CCPreloadControl_0
        LDR.W    R0,??DataTable46_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_CCPreloadControl_0
        LDR.N    R0,??DataTable36_2  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_CCPreloadControl_0
        MOVW     R1,#+1492
        LDR.W    R0,??DataTable40
        BL       assert_failed
??TIM_CCPreloadControl_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??TIM_CCPreloadControl_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??TIM_CCPreloadControl_1
        MOVW     R1,#+1493
        LDR.W    R0,??DataTable40
        BL       assert_failed
??TIM_CCPreloadControl_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??TIM_CCPreloadControl_2
        LDRH     R0,[R4, #+4]
        ORRS     R0,R0,#0x1
        STRH     R0,[R4, #+4]
        B.N      ??TIM_CCPreloadControl_3
??TIM_CCPreloadControl_2:
        LDRH     R0,[R4, #+4]
        MOVW     R1,#+65534
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+4]
??TIM_CCPreloadControl_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_OC1PreloadConfig:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.W    R0,??DataTable46  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC1PreloadConfig_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_OC1PreloadConfig_0
        LDR.W    R0,??DataTable47  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_OC1PreloadConfig_0
        LDR.W    R0,??DataTable47_1  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_OC1PreloadConfig_0
        LDR.W    R0,??DataTable48  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC1PreloadConfig_0
        LDR.W    R0,??DataTable46_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_OC1PreloadConfig_0
        LDR.N    R0,??DataTable35_5  ;; 0x40014c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC1PreloadConfig_0
        LDR.N    R0,??DataTable35_2  ;; 0x40015000
        CMP      R4,R0
        BEQ.N    ??TIM_OC1PreloadConfig_0
        LDR.N    R0,??DataTable35_3  ;; 0x40015400
        CMP      R4,R0
        BEQ.N    ??TIM_OC1PreloadConfig_0
        LDR.N    R0,??DataTable35_6  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_OC1PreloadConfig_0
        LDR.N    R0,??DataTable35_4  ;; 0x40001c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC1PreloadConfig_0
        LDR.N    R0,??DataTable36  ;; 0x40002000
        CMP      R4,R0
        BEQ.N    ??TIM_OC1PreloadConfig_0
        LDR.N    R0,??DataTable36_2  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_OC1PreloadConfig_0
        LDR.N    R0,??DataTable36_1  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_OC1PreloadConfig_0
        LDR.W    R0,??DataTable41  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_OC1PreloadConfig_0
        MOVW     R1,#+1519
        LDR.W    R0,??DataTable40
        BL       assert_failed
??TIM_OC1PreloadConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8
        BEQ.N    ??TIM_OC1PreloadConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_OC1PreloadConfig_1
        MOV      R1,#+1520
        LDR.W    R0,??DataTable40
        BL       assert_failed
??TIM_OC1PreloadConfig_1:
        LDRH     R0,[R4, #+24]
        MOVS     R6,R0
        MOVW     R0,#+65527
        ANDS     R6,R0,R6
        ORRS     R6,R5,R6
        STRH     R6,[R4, #+24]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_OC2PreloadConfig:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.W    R0,??DataTable46  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC2PreloadConfig_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_OC2PreloadConfig_0
        LDR.W    R0,??DataTable47  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_OC2PreloadConfig_0
        LDR.W    R0,??DataTable47_1  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_OC2PreloadConfig_0
        LDR.W    R0,??DataTable48  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC2PreloadConfig_0
        LDR.W    R0,??DataTable46_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_OC2PreloadConfig_0
        LDR.N    R0,??DataTable35_5  ;; 0x40014c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC2PreloadConfig_0
        LDR.N    R0,??DataTable35_6  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_OC2PreloadConfig_0
        LDR.N    R0,??DataTable36_2  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_OC2PreloadConfig_0
        MOV      R1,#+1544
        LDR.N    R0,??DataTable40
        BL       assert_failed
??TIM_OC2PreloadConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8
        BEQ.N    ??TIM_OC2PreloadConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_OC2PreloadConfig_1
        MOVW     R1,#+1545
        LDR.N    R0,??DataTable40
        BL       assert_failed
??TIM_OC2PreloadConfig_1:
        LDRH     R0,[R4, #+24]
        MOVS     R6,R0
        MOVW     R0,#+63487
        ANDS     R6,R0,R6
        ORRS     R6,R6,R5, LSL #+8
        STRH     R6,[R4, #+24]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_OC3PreloadConfig:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.W    R0,??DataTable46  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC3PreloadConfig_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_OC3PreloadConfig_0
        LDR.W    R0,??DataTable47  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_OC3PreloadConfig_0
        LDR.W    R0,??DataTable47_1  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_OC3PreloadConfig_0
        LDR.W    R0,??DataTable48  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC3PreloadConfig_0
        LDR.W    R0,??DataTable46_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_OC3PreloadConfig_0
        MOV      R1,#+1568
        LDR.N    R0,??DataTable40
        BL       assert_failed
??TIM_OC3PreloadConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8
        BEQ.N    ??TIM_OC3PreloadConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_OC3PreloadConfig_1
        MOVW     R1,#+1569
        LDR.N    R0,??DataTable40
        BL       assert_failed
??TIM_OC3PreloadConfig_1:
        LDRH     R0,[R4, #+28]
        MOVS     R6,R0
        MOVW     R0,#+65527
        ANDS     R6,R0,R6
        ORRS     R6,R5,R6
        STRH     R6,[R4, #+28]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable35:
        DC32     0x40001000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable35_1:
        DC32     0x40001400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable35_2:
        DC32     0x40015000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable35_3:
        DC32     0x40015400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable35_4:
        DC32     0x40001c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable35_5:
        DC32     0x40014c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable35_6:
        DC32     0x40001800

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_OC4PreloadConfig:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.W    R0,??DataTable46  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC4PreloadConfig_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_OC4PreloadConfig_0
        LDR.W    R0,??DataTable47  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_OC4PreloadConfig_0
        LDR.W    R0,??DataTable47_1  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_OC4PreloadConfig_0
        LDR.W    R0,??DataTable48  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC4PreloadConfig_0
        LDR.W    R0,??DataTable46_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_OC4PreloadConfig_0
        MOV      R1,#+1592
        LDR.N    R0,??DataTable40
        BL       assert_failed
??TIM_OC4PreloadConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8
        BEQ.N    ??TIM_OC4PreloadConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_OC4PreloadConfig_1
        MOVW     R1,#+1593
        LDR.N    R0,??DataTable40
        BL       assert_failed
??TIM_OC4PreloadConfig_1:
        LDRH     R0,[R4, #+28]
        MOVS     R6,R0
        MOVW     R0,#+63487
        ANDS     R6,R0,R6
        ORRS     R6,R6,R5, LSL #+8
        STRH     R6,[R4, #+28]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable36:
        DC32     0x40002000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable36_1:
        DC32     0x40014400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable36_2:
        DC32     0x40014000

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_OC1FastConfig:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.W    R0,??DataTable46  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC1FastConfig_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_OC1FastConfig_0
        LDR.W    R0,??DataTable47  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_OC1FastConfig_0
        LDR.W    R0,??DataTable47_1  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_OC1FastConfig_0
        LDR.W    R0,??DataTable48  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC1FastConfig_0
        LDR.W    R0,??DataTable46_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_OC1FastConfig_0
        LDR.W    R0,??DataTable53  ;; 0x40014c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC1FastConfig_0
        LDR.W    R0,??DataTable53_1  ;; 0x40015000
        CMP      R4,R0
        BEQ.N    ??TIM_OC1FastConfig_0
        LDR.W    R0,??DataTable53_2  ;; 0x40015400
        CMP      R4,R0
        BEQ.N    ??TIM_OC1FastConfig_0
        LDR.W    R0,??DataTable53_3  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_OC1FastConfig_0
        LDR.W    R0,??DataTable53_4  ;; 0x40001c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC1FastConfig_0
        LDR.W    R0,??DataTable53_5  ;; 0x40002000
        CMP      R4,R0
        BEQ.N    ??TIM_OC1FastConfig_0
        LDR.W    R0,??DataTable53_6  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_OC1FastConfig_0
        LDR.W    R0,??DataTable53_7  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_OC1FastConfig_0
        LDR.N    R0,??DataTable41  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_OC1FastConfig_0
        MOV      R1,#+1616
        LDR.N    R0,??DataTable40
        BL       assert_failed
??TIM_OC1FastConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+4
        BEQ.N    ??TIM_OC1FastConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_OC1FastConfig_1
        MOVW     R1,#+1617
        LDR.N    R0,??DataTable40
        BL       assert_failed
??TIM_OC1FastConfig_1:
        LDRH     R0,[R4, #+24]
        MOVS     R6,R0
        MOVW     R0,#+65531
        ANDS     R6,R0,R6
        ORRS     R6,R5,R6
        STRH     R6,[R4, #+24]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_OC2FastConfig:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.W    R0,??DataTable46  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC2FastConfig_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_OC2FastConfig_0
        LDR.W    R0,??DataTable47  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_OC2FastConfig_0
        LDR.W    R0,??DataTable47_1  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_OC2FastConfig_0
        LDR.W    R0,??DataTable48  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC2FastConfig_0
        LDR.W    R0,??DataTable46_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_OC2FastConfig_0
        LDR.W    R0,??DataTable53  ;; 0x40014c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC2FastConfig_0
        LDR.W    R0,??DataTable53_3  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_OC2FastConfig_0
        LDR.W    R0,??DataTable53_6  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_OC2FastConfig_0
        MOVW     R1,#+1642
        LDR.N    R0,??DataTable40
        BL       assert_failed
??TIM_OC2FastConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+4
        BEQ.N    ??TIM_OC2FastConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_OC2FastConfig_1
        MOVW     R1,#+1643
        LDR.N    R0,??DataTable40
        BL       assert_failed
??TIM_OC2FastConfig_1:
        LDRH     R0,[R4, #+24]
        MOVS     R6,R0
        MOVW     R0,#+64511
        ANDS     R6,R0,R6
        ORRS     R6,R6,R5, LSL #+8
        STRH     R6,[R4, #+24]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_OC3FastConfig:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.W    R0,??DataTable46  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC3FastConfig_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_OC3FastConfig_0
        LDR.W    R0,??DataTable47  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_OC3FastConfig_0
        LDR.W    R0,??DataTable47_1  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_OC3FastConfig_0
        LDR.W    R0,??DataTable48  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC3FastConfig_0
        LDR.W    R0,??DataTable46_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_OC3FastConfig_0
        MOVW     R1,#+1667
        LDR.N    R0,??DataTable40
        BL       assert_failed
??TIM_OC3FastConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+4
        BEQ.N    ??TIM_OC3FastConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_OC3FastConfig_1
        MOVW     R1,#+1668
        LDR.N    R0,??DataTable40
        BL       assert_failed
??TIM_OC3FastConfig_1:
        LDRH     R0,[R4, #+28]
        MOVS     R6,R0
        MOVW     R0,#+65531
        ANDS     R6,R0,R6
        ORRS     R6,R5,R6
        STRH     R6,[R4, #+28]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_OC4FastConfig:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.N    R0,??DataTable46  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC4FastConfig_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_OC4FastConfig_0
        LDR.W    R0,??DataTable47  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_OC4FastConfig_0
        LDR.W    R0,??DataTable47_1  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_OC4FastConfig_0
        LDR.W    R0,??DataTable48  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC4FastConfig_0
        LDR.N    R0,??DataTable46_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_OC4FastConfig_0
        MOVW     R1,#+1692
        LDR.N    R0,??DataTable40
        BL       assert_failed
??TIM_OC4FastConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+4
        BEQ.N    ??TIM_OC4FastConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_OC4FastConfig_1
        MOVW     R1,#+1693
        LDR.N    R0,??DataTable40
        BL       assert_failed
??TIM_OC4FastConfig_1:
        LDRH     R0,[R4, #+28]
        MOVS     R6,R0
        MOVW     R0,#+64511
        ANDS     R6,R0,R6
        ORRS     R6,R6,R5, LSL #+8
        STRH     R6,[R4, #+28]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable40:
        DC32     `?<Constant "D:\\\\zWk.Src\\\\Mango-M32-...">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_ClearOC1Ref:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.N    R0,??DataTable46  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_ClearOC1Ref_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_ClearOC1Ref_0
        LDR.N    R0,??DataTable47  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_ClearOC1Ref_0
        LDR.N    R0,??DataTable47_1  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_ClearOC1Ref_0
        LDR.W    R0,??DataTable48  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_ClearOC1Ref_0
        LDR.N    R0,??DataTable46_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_ClearOC1Ref_0
        MOVW     R1,#+1717
        LDR.W    R0,??DataTable62
        BL       assert_failed
??TIM_ClearOC1Ref_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+128
        BEQ.N    ??TIM_ClearOC1Ref_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_ClearOC1Ref_1
        MOVW     R1,#+1718
        LDR.W    R0,??DataTable62
        BL       assert_failed
??TIM_ClearOC1Ref_1:
        LDRH     R0,[R4, #+24]
        MOVS     R6,R0
        MOVW     R0,#+65407
        ANDS     R6,R0,R6
        ORRS     R6,R5,R6
        STRH     R6,[R4, #+24]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable41:
        DC32     0x40014800

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_ClearOC2Ref:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.N    R0,??DataTable46  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_ClearOC2Ref_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_ClearOC2Ref_0
        LDR.N    R0,??DataTable47  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_ClearOC2Ref_0
        LDR.N    R0,??DataTable47_1  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_ClearOC2Ref_0
        LDR.N    R0,??DataTable48  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_ClearOC2Ref_0
        LDR.N    R0,??DataTable46_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_ClearOC2Ref_0
        MOVW     R1,#+1743
        LDR.W    R0,??DataTable62
        BL       assert_failed
??TIM_ClearOC2Ref_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+128
        BEQ.N    ??TIM_ClearOC2Ref_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_ClearOC2Ref_1
        MOV      R1,#+1744
        LDR.W    R0,??DataTable62
        BL       assert_failed
??TIM_ClearOC2Ref_1:
        LDRH     R0,[R4, #+24]
        MOVS     R6,R0
        LSLS     R6,R6,#+17       ;; ZeroExtS R6,R6,#+17,#+17
        LSRS     R6,R6,#+17
        ORRS     R6,R6,R5, LSL #+8
        STRH     R6,[R4, #+24]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_ClearOC3Ref:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.N    R0,??DataTable46  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_ClearOC3Ref_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_ClearOC3Ref_0
        LDR.N    R0,??DataTable47  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_ClearOC3Ref_0
        LDR.N    R0,??DataTable47_1  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_ClearOC3Ref_0
        LDR.N    R0,??DataTable48  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_ClearOC3Ref_0
        LDR.N    R0,??DataTable46_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_ClearOC3Ref_0
        MOVW     R1,#+1767
        LDR.W    R0,??DataTable62
        BL       assert_failed
??TIM_ClearOC3Ref_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+128
        BEQ.N    ??TIM_ClearOC3Ref_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_ClearOC3Ref_1
        MOV      R1,#+1768
        LDR.W    R0,??DataTable62
        BL       assert_failed
??TIM_ClearOC3Ref_1:
        LDRH     R0,[R4, #+28]
        MOVS     R6,R0
        MOVW     R0,#+65407
        ANDS     R6,R0,R6
        ORRS     R6,R5,R6
        STRH     R6,[R4, #+28]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_ClearOC4Ref:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.N    R0,??DataTable46  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_ClearOC4Ref_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_ClearOC4Ref_0
        LDR.N    R0,??DataTable47  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_ClearOC4Ref_0
        LDR.N    R0,??DataTable47_1  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_ClearOC4Ref_0
        LDR.N    R0,??DataTable48  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_ClearOC4Ref_0
        LDR.N    R0,??DataTable46_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_ClearOC4Ref_0
        MOVW     R1,#+1791
        LDR.W    R0,??DataTable62
        BL       assert_failed
??TIM_ClearOC4Ref_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+128
        BEQ.N    ??TIM_ClearOC4Ref_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_ClearOC4Ref_1
        MOV      R1,#+1792
        LDR.W    R0,??DataTable62
        BL       assert_failed
??TIM_ClearOC4Ref_1:
        LDRH     R0,[R4, #+28]
        MOVS     R6,R0
        LSLS     R6,R6,#+17       ;; ZeroExtS R6,R6,#+17,#+17
        LSRS     R6,R6,#+17
        ORRS     R6,R6,R5, LSL #+8
        STRH     R6,[R4, #+28]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_OC1PolarityConfig:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.N    R0,??DataTable46  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC1PolarityConfig_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_OC1PolarityConfig_0
        LDR.N    R0,??DataTable47  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_OC1PolarityConfig_0
        LDR.N    R0,??DataTable47_1  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_OC1PolarityConfig_0
        LDR.N    R0,??DataTable48  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC1PolarityConfig_0
        LDR.N    R0,??DataTable46_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_OC1PolarityConfig_0
        LDR.W    R0,??DataTable53  ;; 0x40014c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC1PolarityConfig_0
        LDR.W    R0,??DataTable53_1  ;; 0x40015000
        CMP      R4,R0
        BEQ.N    ??TIM_OC1PolarityConfig_0
        LDR.W    R0,??DataTable53_2  ;; 0x40015400
        CMP      R4,R0
        BEQ.N    ??TIM_OC1PolarityConfig_0
        LDR.W    R0,??DataTable53_3  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_OC1PolarityConfig_0
        LDR.W    R0,??DataTable53_4  ;; 0x40001c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC1PolarityConfig_0
        LDR.W    R0,??DataTable53_5  ;; 0x40002000
        CMP      R4,R0
        BEQ.N    ??TIM_OC1PolarityConfig_0
        LDR.W    R0,??DataTable53_6  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_OC1PolarityConfig_0
        LDR.W    R0,??DataTable53_7  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_OC1PolarityConfig_0
        LDR.W    R0,??DataTable58  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_OC1PolarityConfig_0
        MOVW     R1,#+1815
        LDR.W    R0,??DataTable62
        BL       assert_failed
??TIM_OC1PolarityConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_OC1PolarityConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+2
        BEQ.N    ??TIM_OC1PolarityConfig_1
        MOV      R1,#+1816
        LDR.W    R0,??DataTable62
        BL       assert_failed
??TIM_OC1PolarityConfig_1:
        LDRH     R0,[R4, #+32]
        MOVS     R6,R0
        MOVW     R0,#+65533
        ANDS     R6,R0,R6
        ORRS     R6,R5,R6
        STRH     R6,[R4, #+32]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_OC1NPolarityConfig:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.N    R0,??DataTable46  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC1NPolarityConfig_0
        LDR.N    R0,??DataTable46_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_OC1NPolarityConfig_0
        LDR.W    R0,??DataTable53_6  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_OC1NPolarityConfig_0
        LDR.W    R0,??DataTable53_7  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_OC1NPolarityConfig_0
        LDR.W    R0,??DataTable58  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_OC1NPolarityConfig_0
        MOVW     R1,#+1838
        LDR.W    R0,??DataTable62
        BL       assert_failed
??TIM_OC1NPolarityConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_OC1NPolarityConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8
        BEQ.N    ??TIM_OC1NPolarityConfig_1
        MOVW     R1,#+1839
        LDR.W    R0,??DataTable62
        BL       assert_failed
??TIM_OC1NPolarityConfig_1:
        LDRH     R0,[R4, #+32]
        MOVS     R6,R0
        MOVW     R0,#+65527
        ANDS     R6,R0,R6
        ORRS     R6,R5,R6
        STRH     R6,[R4, #+32]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable46:
        DC32     0x40012c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable46_1:
        DC32     0x40013400

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_OC2PolarityConfig:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.W    R0,??DataTable59  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC2PolarityConfig_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_OC2PolarityConfig_0
        LDR.N    R0,??DataTable47  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_OC2PolarityConfig_0
        LDR.N    R0,??DataTable47_1  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_OC2PolarityConfig_0
        LDR.N    R0,??DataTable48  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC2PolarityConfig_0
        LDR.W    R0,??DataTable59_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_OC2PolarityConfig_0
        LDR.N    R0,??DataTable53  ;; 0x40014c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC2PolarityConfig_0
        LDR.N    R0,??DataTable53_3  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_OC2PolarityConfig_0
        LDR.N    R0,??DataTable53_6  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_OC2PolarityConfig_0
        MOVW     R1,#+1862
        LDR.W    R0,??DataTable62
        BL       assert_failed
??TIM_OC2PolarityConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_OC2PolarityConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+2
        BEQ.N    ??TIM_OC2PolarityConfig_1
        MOVW     R1,#+1863
        LDR.W    R0,??DataTable62
        BL       assert_failed
??TIM_OC2PolarityConfig_1:
        LDRH     R0,[R4, #+32]
        MOVS     R6,R0
        MOVW     R0,#+65503
        ANDS     R6,R0,R6
        ORRS     R6,R6,R5, LSL #+4
        STRH     R6,[R4, #+32]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable47:
        DC32     0x40000400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable47_1:
        DC32     0x40000800

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_OC2NPolarityConfig:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.W    R0,??DataTable59  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC2NPolarityConfig_0
        LDR.W    R0,??DataTable59_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_OC2NPolarityConfig_0
        MOVW     R1,#+1885
        LDR.W    R0,??DataTable62
        BL       assert_failed
??TIM_OC2NPolarityConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_OC2NPolarityConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8
        BEQ.N    ??TIM_OC2NPolarityConfig_1
        MOVW     R1,#+1886
        LDR.W    R0,??DataTable62
        BL       assert_failed
??TIM_OC2NPolarityConfig_1:
        LDRH     R0,[R4, #+32]
        MOVS     R6,R0
        MOVW     R0,#+65407
        ANDS     R6,R0,R6
        ORRS     R6,R6,R5, LSL #+4
        STRH     R6,[R4, #+32]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable48:
        DC32     0x40000c00

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_OC3PolarityConfig:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.W    R0,??DataTable59  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC3PolarityConfig_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_OC3PolarityConfig_0
        LDR.W    R0,??DataTable61  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_OC3PolarityConfig_0
        LDR.W    R0,??DataTable61_1  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_OC3PolarityConfig_0
        LDR.W    R0,??DataTable61_2  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC3PolarityConfig_0
        LDR.W    R0,??DataTable59_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_OC3PolarityConfig_0
        MOVW     R1,#+1909
        LDR.W    R0,??DataTable62
        BL       assert_failed
??TIM_OC3PolarityConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_OC3PolarityConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+2
        BEQ.N    ??TIM_OC3PolarityConfig_1
        MOVW     R1,#+1910
        LDR.W    R0,??DataTable62
        BL       assert_failed
??TIM_OC3PolarityConfig_1:
        LDRH     R0,[R4, #+32]
        MOVS     R6,R0
        MOVW     R0,#+65023
        ANDS     R6,R0,R6
        ORRS     R6,R6,R5, LSL #+8
        STRH     R6,[R4, #+32]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_OC3NPolarityConfig:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.W    R0,??DataTable59  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC3NPolarityConfig_0
        LDR.W    R0,??DataTable59_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_OC3NPolarityConfig_0
        MOVW     R1,#+1933
        LDR.W    R0,??DataTable62
        BL       assert_failed
??TIM_OC3NPolarityConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_OC3NPolarityConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8
        BEQ.N    ??TIM_OC3NPolarityConfig_1
        MOVW     R1,#+1934
        LDR.W    R0,??DataTable62
        BL       assert_failed
??TIM_OC3NPolarityConfig_1:
        LDRH     R0,[R4, #+32]
        MOVS     R6,R0
        MOVW     R0,#+63487
        ANDS     R6,R0,R6
        ORRS     R6,R6,R5, LSL #+8
        STRH     R6,[R4, #+32]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_OC4PolarityConfig:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.W    R0,??DataTable59  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC4PolarityConfig_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_OC4PolarityConfig_0
        LDR.W    R0,??DataTable61  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_OC4PolarityConfig_0
        LDR.W    R0,??DataTable61_1  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_OC4PolarityConfig_0
        LDR.W    R0,??DataTable61_2  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_OC4PolarityConfig_0
        LDR.W    R0,??DataTable59_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_OC4PolarityConfig_0
        MOVW     R1,#+1957
        LDR.W    R0,??DataTable62
        BL       assert_failed
??TIM_OC4PolarityConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_OC4PolarityConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+2
        BEQ.N    ??TIM_OC4PolarityConfig_1
        MOVW     R1,#+1958
        LDR.W    R0,??DataTable62
        BL       assert_failed
??TIM_OC4PolarityConfig_1:
        LDRH     R0,[R4, #+32]
        MOVS     R6,R0
        MOVW     R0,#+57343
        ANDS     R6,R0,R6
        ORRS     R6,R6,R5, LSL #+12
        STRH     R6,[R4, #+32]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_CCxCmd:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,#+0
        LDR.W    R0,??DataTable59  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_CCxCmd_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_CCxCmd_0
        LDR.W    R0,??DataTable61  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_CCxCmd_0
        LDR.W    R0,??DataTable61_1  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_CCxCmd_0
        LDR.W    R0,??DataTable61_2  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_CCxCmd_0
        LDR.W    R0,??DataTable59_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_CCxCmd_0
        LDR.N    R0,??DataTable53  ;; 0x40014c00
        CMP      R4,R0
        BEQ.N    ??TIM_CCxCmd_0
        LDR.N    R0,??DataTable53_1  ;; 0x40015000
        CMP      R4,R0
        BEQ.N    ??TIM_CCxCmd_0
        LDR.N    R0,??DataTable53_2  ;; 0x40015400
        CMP      R4,R0
        BEQ.N    ??TIM_CCxCmd_0
        LDR.N    R0,??DataTable53_3  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_CCxCmd_0
        LDR.N    R0,??DataTable53_4  ;; 0x40001c00
        CMP      R4,R0
        BEQ.N    ??TIM_CCxCmd_0
        LDR.N    R0,??DataTable53_5  ;; 0x40002000
        CMP      R4,R0
        BEQ.N    ??TIM_CCxCmd_0
        LDR.N    R0,??DataTable53_6  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_CCxCmd_0
        LDR.N    R0,??DataTable53_7  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_CCxCmd_0
        LDR.W    R0,??DataTable58  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_CCxCmd_0
        MOVW     R1,#+1985
        LDR.W    R0,??DataTable62
        BL       assert_failed
??TIM_CCxCmd_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_CCxCmd_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+4
        BEQ.N    ??TIM_CCxCmd_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8
        BEQ.N    ??TIM_CCxCmd_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+12
        BEQ.N    ??TIM_CCxCmd_1
        MOVW     R1,#+1986
        LDR.W    R0,??DataTable62
        BL       assert_failed
??TIM_CCxCmd_1:
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+1
        BEQ.N    ??TIM_CCxCmd_2
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+0
        BEQ.N    ??TIM_CCxCmd_2
        MOVW     R1,#+1987
        LDR.W    R0,??DataTable62
        BL       assert_failed
??TIM_CCxCmd_2:
        MOVS     R0,#+1
        LSLS     R0,R0,R5
        MOVS     R7,R0
        LDRH     R0,[R4, #+32]
        BICS     R0,R0,R7
        STRH     R0,[R4, #+32]
        LDRH     R0,[R4, #+32]
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        LSLS     R1,R6,R5
        ORRS     R0,R1,R0
        STRH     R0,[R4, #+32]
        POP      {R0,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_CCxNCmd:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,#+0
        LDR.W    R0,??DataTable59  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_CCxNCmd_0
        LDR.W    R0,??DataTable59_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_CCxNCmd_0
        LDR.N    R0,??DataTable53_6  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_CCxNCmd_0
        LDR.N    R0,??DataTable53_7  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_CCxNCmd_0
        LDR.W    R0,??DataTable58  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_CCxNCmd_0
        MOVW     R1,#+2015
        LDR.W    R0,??DataTable62
        BL       assert_failed
??TIM_CCxNCmd_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_CCxNCmd_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+4
        BEQ.N    ??TIM_CCxNCmd_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8
        BEQ.N    ??TIM_CCxNCmd_1
        MOV      R1,#+2016
        LDR.W    R0,??DataTable62
        BL       assert_failed
??TIM_CCxNCmd_1:
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+4
        BEQ.N    ??TIM_CCxNCmd_2
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+0
        BEQ.N    ??TIM_CCxNCmd_2
        MOVW     R1,#+2017
        LDR.W    R0,??DataTable62
        BL       assert_failed
??TIM_CCxNCmd_2:
        MOVS     R0,#+4
        LSLS     R0,R0,R5
        MOVS     R7,R0
        LDRH     R0,[R4, #+32]
        BICS     R0,R0,R7
        STRH     R0,[R4, #+32]
        LDRH     R0,[R4, #+32]
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        LSLS     R1,R6,R5
        ORRS     R0,R1,R0
        STRH     R0,[R4, #+32]
        POP      {R0,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable53:
        DC32     0x40014c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable53_1:
        DC32     0x40015000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable53_2:
        DC32     0x40015400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable53_3:
        DC32     0x40001800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable53_4:
        DC32     0x40001c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable53_5:
        DC32     0x40002000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable53_6:
        DC32     0x40014000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable53_7:
        DC32     0x40014400

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_SelectOCxM:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,#+0
        MOVS     R8,#+0
        LDR.W    R0,??DataTable59  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOCxM_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_SelectOCxM_0
        LDR.W    R0,??DataTable61  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOCxM_0
        LDR.W    R0,??DataTable61_1  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOCxM_0
        LDR.W    R0,??DataTable61_2  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOCxM_0
        LDR.W    R0,??DataTable59_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOCxM_0
        LDR.W    R0,??DataTable65  ;; 0x40014c00
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOCxM_0
        LDR.W    R0,??DataTable65_1  ;; 0x40015000
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOCxM_0
        LDR.W    R0,??DataTable65_2  ;; 0x40015400
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOCxM_0
        LDR.W    R0,??DataTable65_3  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOCxM_0
        LDR.W    R0,??DataTable65_4  ;; 0x40001c00
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOCxM_0
        LDR.W    R0,??DataTable65_5  ;; 0x40002000
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOCxM_0
        LDR.W    R0,??DataTable65_6  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOCxM_0
        LDR.W    R0,??DataTable66  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOCxM_0
        LDR.W    R0,??DataTable58  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOCxM_0
        MOVW     R1,#+2057
        LDR.W    R0,??DataTable62
        BL       assert_failed
??TIM_SelectOCxM_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_SelectOCxM_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+4
        BEQ.N    ??TIM_SelectOCxM_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8
        BEQ.N    ??TIM_SelectOCxM_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+12
        BEQ.N    ??TIM_SelectOCxM_1
        MOVW     R1,#+2058
        LDR.W    R0,??DataTable62
        BL       assert_failed
??TIM_SelectOCxM_1:
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+0
        BEQ.N    ??TIM_SelectOCxM_2
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+16
        BEQ.N    ??TIM_SelectOCxM_2
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+32
        BEQ.N    ??TIM_SelectOCxM_2
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+48
        BEQ.N    ??TIM_SelectOCxM_2
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+96
        BEQ.N    ??TIM_SelectOCxM_2
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+112
        BEQ.N    ??TIM_SelectOCxM_2
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+80
        BEQ.N    ??TIM_SelectOCxM_2
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+64
        BEQ.N    ??TIM_SelectOCxM_2
        MOVW     R1,#+2059
        LDR.W    R0,??DataTable62
        BL       assert_failed
??TIM_SelectOCxM_2:
        MOVS     R7,R4
        ADDS     R7,R7,#+24
        MOVS     R0,#+1
        LSLS     R0,R0,R5
        MOV      R8,R0
        LDRH     R0,[R4, #+32]
        BICS     R0,R0,R8
        STRH     R0,[R4, #+32]
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_SelectOCxM_3
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8
        BNE.N    ??TIM_SelectOCxM_4
??TIM_SelectOCxM_3:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        LSRS     R0,R5,#+1
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        ADDS     R7,R0,R7
        LDR      R0,[R7, #+0]
        BICS     R0,R0,#0x70
        STR      R0,[R7, #+0]
        LDR      R0,[R7, #+0]
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        ORRS     R0,R6,R0
        STR      R0,[R7, #+0]
        B.N      ??TIM_SelectOCxM_5
??TIM_SelectOCxM_4:
        SUBS     R0,R5,#+4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R0,R0,#+1
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        ADDS     R7,R0,R7
        LDR      R0,[R7, #+0]
        BICS     R0,R0,#0x7000
        STR      R0,[R7, #+0]
        LDR      R0,[R7, #+0]
        LSLS     R1,R6,#+8
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        ORRS     R0,R1,R0
        STR      R0,[R7, #+0]
??TIM_SelectOCxM_5:
        POP      {R4-R8,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_UpdateDisableConfig:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable59  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_UpdateDisableConfig_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_UpdateDisableConfig_0
        LDR.W    R0,??DataTable61  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_UpdateDisableConfig_0
        LDR.W    R0,??DataTable61_1  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_UpdateDisableConfig_0
        LDR.W    R0,??DataTable61_2  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_UpdateDisableConfig_0
        LDR.W    R0,??DataTable67  ;; 0x40001000
        CMP      R4,R0
        BEQ.N    ??TIM_UpdateDisableConfig_0
        LDR.W    R0,??DataTable67_1  ;; 0x40001400
        CMP      R4,R0
        BEQ.N    ??TIM_UpdateDisableConfig_0
        LDR.W    R0,??DataTable59_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_UpdateDisableConfig_0
        LDR.W    R0,??DataTable65  ;; 0x40014c00
        CMP      R4,R0
        BEQ.N    ??TIM_UpdateDisableConfig_0
        LDR.W    R0,??DataTable65_1  ;; 0x40015000
        CMP      R4,R0
        BEQ.N    ??TIM_UpdateDisableConfig_0
        LDR.W    R0,??DataTable65_2  ;; 0x40015400
        CMP      R4,R0
        BEQ.N    ??TIM_UpdateDisableConfig_0
        LDR.W    R0,??DataTable65_3  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_UpdateDisableConfig_0
        LDR.W    R0,??DataTable65_4  ;; 0x40001c00
        CMP      R4,R0
        BEQ.N    ??TIM_UpdateDisableConfig_0
        LDR.W    R0,??DataTable65_5  ;; 0x40002000
        CMP      R4,R0
        BEQ.N    ??TIM_UpdateDisableConfig_0
        LDR.W    R0,??DataTable65_6  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_UpdateDisableConfig_0
        LDR.W    R0,??DataTable66  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_UpdateDisableConfig_0
        LDR.N    R0,??DataTable58  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_UpdateDisableConfig_0
        MOVW     R1,#+2101
        LDR.W    R0,??DataTable62
        BL       assert_failed
??TIM_UpdateDisableConfig_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??TIM_UpdateDisableConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??TIM_UpdateDisableConfig_1
        MOVW     R1,#+2102
        LDR.W    R0,??DataTable62
        BL       assert_failed
??TIM_UpdateDisableConfig_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??TIM_UpdateDisableConfig_2
        LDRH     R0,[R4, #+0]
        ORRS     R0,R0,#0x2
        STRH     R0,[R4, #+0]
        B.N      ??TIM_UpdateDisableConfig_3
??TIM_UpdateDisableConfig_2:
        LDRH     R0,[R4, #+0]
        MOVW     R1,#+65533
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+0]
??TIM_UpdateDisableConfig_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_UpdateRequestConfig:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable59  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_UpdateRequestConfig_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_UpdateRequestConfig_0
        LDR.W    R0,??DataTable61  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_UpdateRequestConfig_0
        LDR.W    R0,??DataTable61_1  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_UpdateRequestConfig_0
        LDR.W    R0,??DataTable61_2  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_UpdateRequestConfig_0
        LDR.W    R0,??DataTable67  ;; 0x40001000
        CMP      R4,R0
        BEQ.N    ??TIM_UpdateRequestConfig_0
        LDR.W    R0,??DataTable67_1  ;; 0x40001400
        CMP      R4,R0
        BEQ.N    ??TIM_UpdateRequestConfig_0
        LDR.N    R0,??DataTable59_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_UpdateRequestConfig_0
        LDR.W    R0,??DataTable65  ;; 0x40014c00
        CMP      R4,R0
        BEQ.N    ??TIM_UpdateRequestConfig_0
        LDR.W    R0,??DataTable65_1  ;; 0x40015000
        CMP      R4,R0
        BEQ.N    ??TIM_UpdateRequestConfig_0
        LDR.W    R0,??DataTable65_2  ;; 0x40015400
        CMP      R4,R0
        BEQ.N    ??TIM_UpdateRequestConfig_0
        LDR.W    R0,??DataTable65_3  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_UpdateRequestConfig_0
        LDR.W    R0,??DataTable65_4  ;; 0x40001c00
        CMP      R4,R0
        BEQ.N    ??TIM_UpdateRequestConfig_0
        LDR.W    R0,??DataTable65_5  ;; 0x40002000
        CMP      R4,R0
        BEQ.N    ??TIM_UpdateRequestConfig_0
        LDR.W    R0,??DataTable65_6  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_UpdateRequestConfig_0
        LDR.W    R0,??DataTable66  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_UpdateRequestConfig_0
        LDR.N    R0,??DataTable58  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_UpdateRequestConfig_0
        MOVW     R1,#+2129
        LDR.W    R0,??DataTable62
        BL       assert_failed
??TIM_UpdateRequestConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_UpdateRequestConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+1
        BEQ.N    ??TIM_UpdateRequestConfig_1
        MOVW     R1,#+2130
        LDR.W    R0,??DataTable62
        BL       assert_failed
??TIM_UpdateRequestConfig_1:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_UpdateRequestConfig_2
        LDRH     R0,[R4, #+0]
        ORRS     R0,R0,#0x4
        STRH     R0,[R4, #+0]
        B.N      ??TIM_UpdateRequestConfig_3
??TIM_UpdateRequestConfig_2:
        LDRH     R0,[R4, #+0]
        MOVW     R1,#+65531
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+0]
??TIM_UpdateRequestConfig_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_SelectHallSensor:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable59  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_SelectHallSensor_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_SelectHallSensor_0
        LDR.N    R0,??DataTable61  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_SelectHallSensor_0
        LDR.N    R0,??DataTable61_1  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_SelectHallSensor_0
        LDR.N    R0,??DataTable61_2  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_SelectHallSensor_0
        LDR.N    R0,??DataTable59_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_SelectHallSensor_0
        LDR.W    R0,??DataTable65  ;; 0x40014c00
        CMP      R4,R0
        BEQ.N    ??TIM_SelectHallSensor_0
        LDR.W    R0,??DataTable65_3  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_SelectHallSensor_0
        LDR.W    R0,??DataTable65_6  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_SelectHallSensor_0
        MOVW     R1,#+2153
        LDR.W    R0,??DataTable62
        BL       assert_failed
??TIM_SelectHallSensor_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??TIM_SelectHallSensor_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??TIM_SelectHallSensor_1
        MOVW     R1,#+2154
        LDR.W    R0,??DataTable62
        BL       assert_failed
??TIM_SelectHallSensor_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??TIM_SelectHallSensor_2
        LDRH     R0,[R4, #+4]
        ORRS     R0,R0,#0x80
        STRH     R0,[R4, #+4]
        B.N      ??TIM_SelectHallSensor_3
??TIM_SelectHallSensor_2:
        LDRH     R0,[R4, #+4]
        MOVW     R1,#+65407
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+4]
??TIM_SelectHallSensor_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_SelectOnePulseMode:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable59  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOnePulseMode_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_SelectOnePulseMode_0
        LDR.N    R0,??DataTable61  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOnePulseMode_0
        LDR.N    R0,??DataTable61_1  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOnePulseMode_0
        LDR.N    R0,??DataTable61_2  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOnePulseMode_0
        LDR.W    R0,??DataTable67  ;; 0x40001000
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOnePulseMode_0
        LDR.W    R0,??DataTable67_1  ;; 0x40001400
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOnePulseMode_0
        LDR.N    R0,??DataTable59_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOnePulseMode_0
        LDR.W    R0,??DataTable65  ;; 0x40014c00
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOnePulseMode_0
        LDR.W    R0,??DataTable65_1  ;; 0x40015000
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOnePulseMode_0
        LDR.W    R0,??DataTable65_2  ;; 0x40015400
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOnePulseMode_0
        LDR.W    R0,??DataTable65_3  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOnePulseMode_0
        LDR.W    R0,??DataTable65_4  ;; 0x40001c00
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOnePulseMode_0
        LDR.W    R0,??DataTable65_5  ;; 0x40002000
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOnePulseMode_0
        LDR.W    R0,??DataTable65_6  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOnePulseMode_0
        LDR.W    R0,??DataTable66  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOnePulseMode_0
        LDR.N    R0,??DataTable58  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOnePulseMode_0
        MOVW     R1,#+2179
        LDR.N    R0,??DataTable62
        BL       assert_failed
??TIM_SelectOnePulseMode_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8
        BEQ.N    ??TIM_SelectOnePulseMode_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_SelectOnePulseMode_1
        MOVW     R1,#+2180
        LDR.N    R0,??DataTable62
        BL       assert_failed
??TIM_SelectOnePulseMode_1:
        LDRH     R0,[R4, #+0]
        MOVW     R1,#+65527
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+0]
        LDRH     R0,[R4, #+0]
        ORRS     R0,R5,R0
        STRH     R0,[R4, #+0]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable58:
        DC32     0x40014800

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_SelectOutputTrigger:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable59  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOutputTrigger_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_SelectOutputTrigger_0
        LDR.N    R0,??DataTable61  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOutputTrigger_0
        LDR.N    R0,??DataTable61_1  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOutputTrigger_0
        LDR.N    R0,??DataTable61_2  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOutputTrigger_0
        LDR.W    R0,??DataTable67  ;; 0x40001000
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOutputTrigger_0
        LDR.W    R0,??DataTable67_1  ;; 0x40001400
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOutputTrigger_0
        LDR.N    R0,??DataTable59_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOutputTrigger_0
        LDR.W    R0,??DataTable65  ;; 0x40014c00
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOutputTrigger_0
        LDR.W    R0,??DataTable65_3  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOutputTrigger_0
        LDR.W    R0,??DataTable65_6  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_SelectOutputTrigger_0
        MOVW     R1,#+2211
        LDR.N    R0,??DataTable62
        BL       assert_failed
??TIM_SelectOutputTrigger_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_SelectOutputTrigger_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+16
        BEQ.N    ??TIM_SelectOutputTrigger_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+32
        BEQ.N    ??TIM_SelectOutputTrigger_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+48
        BEQ.N    ??TIM_SelectOutputTrigger_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+64
        BEQ.N    ??TIM_SelectOutputTrigger_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+80
        BEQ.N    ??TIM_SelectOutputTrigger_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+96
        BEQ.N    ??TIM_SelectOutputTrigger_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+112
        BEQ.N    ??TIM_SelectOutputTrigger_1
        MOVW     R1,#+2212
        LDR.N    R0,??DataTable62
        BL       assert_failed
??TIM_SelectOutputTrigger_1:
        LDRH     R0,[R4, #+4]
        MOVW     R1,#+65423
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+4]
        LDRH     R0,[R4, #+4]
        ORRS     R0,R5,R0
        STRH     R0,[R4, #+4]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable59:
        DC32     0x40012c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable59_1:
        DC32     0x40013400

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_SelectSlaveMode:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable74  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_SelectSlaveMode_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_SelectSlaveMode_0
        LDR.N    R0,??DataTable61  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_SelectSlaveMode_0
        LDR.N    R0,??DataTable61_1  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_SelectSlaveMode_0
        LDR.N    R0,??DataTable61_2  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_SelectSlaveMode_0
        LDR.W    R0,??DataTable74_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_SelectSlaveMode_0
        LDR.N    R0,??DataTable65  ;; 0x40014c00
        CMP      R4,R0
        BEQ.N    ??TIM_SelectSlaveMode_0
        LDR.N    R0,??DataTable65_3  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_SelectSlaveMode_0
        LDR.N    R0,??DataTable65_6  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_SelectSlaveMode_0
        MOVW     R1,#+2234
        LDR.N    R0,??DataTable62
        BL       assert_failed
??TIM_SelectSlaveMode_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+4
        BEQ.N    ??TIM_SelectSlaveMode_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+5
        BEQ.N    ??TIM_SelectSlaveMode_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+6
        BEQ.N    ??TIM_SelectSlaveMode_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+7
        BEQ.N    ??TIM_SelectSlaveMode_1
        MOVW     R1,#+2235
        LDR.N    R0,??DataTable62
        BL       assert_failed
??TIM_SelectSlaveMode_1:
        LDRH     R0,[R4, #+8]
        MOVW     R1,#+65528
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+8]
        LDRH     R0,[R4, #+8]
        ORRS     R0,R5,R0
        STRH     R0,[R4, #+8]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_SelectMasterSlaveMode:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable74  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_SelectMasterSlaveMode_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_SelectMasterSlaveMode_0
        LDR.N    R0,??DataTable61  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_SelectMasterSlaveMode_0
        LDR.N    R0,??DataTable61_1  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_SelectMasterSlaveMode_0
        LDR.N    R0,??DataTable61_2  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_SelectMasterSlaveMode_0
        LDR.W    R0,??DataTable74_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_SelectMasterSlaveMode_0
        LDR.N    R0,??DataTable65  ;; 0x40014c00
        CMP      R4,R0
        BEQ.N    ??TIM_SelectMasterSlaveMode_0
        LDR.N    R0,??DataTable65_3  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_SelectMasterSlaveMode_0
        LDR.N    R0,??DataTable65_6  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_SelectMasterSlaveMode_0
        MOVW     R1,#+2255
        LDR.N    R0,??DataTable62
        BL       assert_failed
??TIM_SelectMasterSlaveMode_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+128
        BEQ.N    ??TIM_SelectMasterSlaveMode_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_SelectMasterSlaveMode_1
        MOV      R1,#+2256
        LDR.N    R0,??DataTable62
        BL       assert_failed
??TIM_SelectMasterSlaveMode_1:
        LDRH     R0,[R4, #+8]
        MOVW     R1,#+65407
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+8]
        LDRH     R0,[R4, #+8]
        ORRS     R0,R5,R0
        STRH     R0,[R4, #+8]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable61:
        DC32     0x40000400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable61_1:
        DC32     0x40000800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable61_2:
        DC32     0x40000c00

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_SetCounter:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable74  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_SetCounter_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_SetCounter_0
        LDR.W    R0,??DataTable76  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_SetCounter_0
        LDR.W    R0,??DataTable76_1  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_SetCounter_0
        LDR.W    R0,??DataTable76_2  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_SetCounter_0
        LDR.N    R0,??DataTable67  ;; 0x40001000
        CMP      R4,R0
        BEQ.N    ??TIM_SetCounter_0
        LDR.N    R0,??DataTable67_1  ;; 0x40001400
        CMP      R4,R0
        BEQ.N    ??TIM_SetCounter_0
        LDR.W    R0,??DataTable74_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_SetCounter_0
        LDR.N    R0,??DataTable65  ;; 0x40014c00
        CMP      R4,R0
        BEQ.N    ??TIM_SetCounter_0
        LDR.N    R0,??DataTable65_1  ;; 0x40015000
        CMP      R4,R0
        BEQ.N    ??TIM_SetCounter_0
        LDR.N    R0,??DataTable65_2  ;; 0x40015400
        CMP      R4,R0
        BEQ.N    ??TIM_SetCounter_0
        LDR.N    R0,??DataTable65_3  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_SetCounter_0
        LDR.N    R0,??DataTable65_4  ;; 0x40001c00
        CMP      R4,R0
        BEQ.N    ??TIM_SetCounter_0
        LDR.N    R0,??DataTable65_5  ;; 0x40002000
        CMP      R4,R0
        BEQ.N    ??TIM_SetCounter_0
        LDR.N    R0,??DataTable65_6  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_SetCounter_0
        LDR.N    R0,??DataTable66  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_SetCounter_0
        LDR.W    R0,??DataTable77  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_SetCounter_0
        MOVW     R1,#+2273
        LDR.N    R0,??DataTable62
        BL       assert_failed
??TIM_SetCounter_0:
        STRH     R5,[R4, #+36]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable62:
        DC32     `?<Constant "D:\\\\zWk.Src\\\\Mango-M32-...">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_SetAutoreload:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable74  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_SetAutoreload_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_SetAutoreload_0
        LDR.W    R0,??DataTable76  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_SetAutoreload_0
        LDR.W    R0,??DataTable76_1  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_SetAutoreload_0
        LDR.W    R0,??DataTable76_2  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_SetAutoreload_0
        LDR.N    R0,??DataTable67  ;; 0x40001000
        CMP      R4,R0
        BEQ.N    ??TIM_SetAutoreload_0
        LDR.N    R0,??DataTable67_1  ;; 0x40001400
        CMP      R4,R0
        BEQ.N    ??TIM_SetAutoreload_0
        LDR.W    R0,??DataTable74_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_SetAutoreload_0
        LDR.N    R0,??DataTable65  ;; 0x40014c00
        CMP      R4,R0
        BEQ.N    ??TIM_SetAutoreload_0
        LDR.N    R0,??DataTable65_1  ;; 0x40015000
        CMP      R4,R0
        BEQ.N    ??TIM_SetAutoreload_0
        LDR.N    R0,??DataTable65_2  ;; 0x40015400
        CMP      R4,R0
        BEQ.N    ??TIM_SetAutoreload_0
        LDR.N    R0,??DataTable65_3  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_SetAutoreload_0
        LDR.N    R0,??DataTable65_4  ;; 0x40001c00
        CMP      R4,R0
        BEQ.N    ??TIM_SetAutoreload_0
        LDR.N    R0,??DataTable65_5  ;; 0x40002000
        CMP      R4,R0
        BEQ.N    ??TIM_SetAutoreload_0
        LDR.N    R0,??DataTable65_6  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_SetAutoreload_0
        LDR.N    R0,??DataTable66  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_SetAutoreload_0
        LDR.W    R0,??DataTable77  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_SetAutoreload_0
        MOVW     R1,#+2287
        LDR.W    R0,??DataTable85
        BL       assert_failed
??TIM_SetAutoreload_0:
        STRH     R5,[R4, #+44]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_SetCompare1:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable74  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_SetCompare1_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_SetCompare1_0
        LDR.W    R0,??DataTable76  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_SetCompare1_0
        LDR.W    R0,??DataTable76_1  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_SetCompare1_0
        LDR.W    R0,??DataTable76_2  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_SetCompare1_0
        LDR.W    R0,??DataTable74_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_SetCompare1_0
        LDR.N    R0,??DataTable65  ;; 0x40014c00
        CMP      R4,R0
        BEQ.N    ??TIM_SetCompare1_0
        LDR.N    R0,??DataTable65_1  ;; 0x40015000
        CMP      R4,R0
        BEQ.N    ??TIM_SetCompare1_0
        LDR.N    R0,??DataTable65_2  ;; 0x40015400
        CMP      R4,R0
        BEQ.N    ??TIM_SetCompare1_0
        LDR.N    R0,??DataTable65_3  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_SetCompare1_0
        LDR.N    R0,??DataTable65_4  ;; 0x40001c00
        CMP      R4,R0
        BEQ.N    ??TIM_SetCompare1_0
        LDR.N    R0,??DataTable65_5  ;; 0x40002000
        CMP      R4,R0
        BEQ.N    ??TIM_SetCompare1_0
        LDR.N    R0,??DataTable65_6  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_SetCompare1_0
        LDR.N    R0,??DataTable66  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_SetCompare1_0
        LDR.W    R0,??DataTable77  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_SetCompare1_0
        MOVW     R1,#+2301
        LDR.W    R0,??DataTable85
        BL       assert_failed
??TIM_SetCompare1_0:
        STRH     R5,[R4, #+52]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_SetCompare2:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable74  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_SetCompare2_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_SetCompare2_0
        LDR.W    R0,??DataTable76  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_SetCompare2_0
        LDR.W    R0,??DataTable76_1  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_SetCompare2_0
        LDR.W    R0,??DataTable76_2  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_SetCompare2_0
        LDR.W    R0,??DataTable74_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_SetCompare2_0
        LDR.N    R0,??DataTable65  ;; 0x40014c00
        CMP      R4,R0
        BEQ.N    ??TIM_SetCompare2_0
        LDR.N    R0,??DataTable65_3  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_SetCompare2_0
        LDR.N    R0,??DataTable65_6  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_SetCompare2_0
        MOVW     R1,#+2315
        LDR.W    R0,??DataTable85
        BL       assert_failed
??TIM_SetCompare2_0:
        STRH     R5,[R4, #+56]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable65:
        DC32     0x40014c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable65_1:
        DC32     0x40015000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable65_2:
        DC32     0x40015400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable65_3:
        DC32     0x40001800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable65_4:
        DC32     0x40001c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable65_5:
        DC32     0x40002000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable65_6:
        DC32     0x40014000

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_SetCompare3:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable74  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_SetCompare3_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_SetCompare3_0
        LDR.W    R0,??DataTable76  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_SetCompare3_0
        LDR.W    R0,??DataTable76_1  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_SetCompare3_0
        LDR.W    R0,??DataTable76_2  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_SetCompare3_0
        LDR.W    R0,??DataTable74_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_SetCompare3_0
        MOVW     R1,#+2329
        LDR.W    R0,??DataTable85
        BL       assert_failed
??TIM_SetCompare3_0:
        STRH     R5,[R4, #+60]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable66:
        DC32     0x40014400

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_SetCompare4:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable74  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_SetCompare4_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_SetCompare4_0
        LDR.W    R0,??DataTable76  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_SetCompare4_0
        LDR.W    R0,??DataTable76_1  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_SetCompare4_0
        LDR.W    R0,??DataTable76_2  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_SetCompare4_0
        LDR.W    R0,??DataTable74_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_SetCompare4_0
        MOVW     R1,#+2343
        LDR.W    R0,??DataTable85
        BL       assert_failed
??TIM_SetCompare4_0:
        STRH     R5,[R4, #+64]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable67:
        DC32     0x40001000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable67_1:
        DC32     0x40001400

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_SetIC1Prescaler:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable74  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_SetIC1Prescaler_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_SetIC1Prescaler_0
        LDR.W    R0,??DataTable76  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_SetIC1Prescaler_0
        LDR.W    R0,??DataTable76_1  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_SetIC1Prescaler_0
        LDR.W    R0,??DataTable76_2  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_SetIC1Prescaler_0
        LDR.W    R0,??DataTable74_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_SetIC1Prescaler_0
        LDR.W    R0,??DataTable80  ;; 0x40014c00
        CMP      R4,R0
        BEQ.N    ??TIM_SetIC1Prescaler_0
        LDR.W    R0,??DataTable80_1  ;; 0x40015000
        CMP      R4,R0
        BEQ.N    ??TIM_SetIC1Prescaler_0
        LDR.W    R0,??DataTable80_2  ;; 0x40015400
        CMP      R4,R0
        BEQ.N    ??TIM_SetIC1Prescaler_0
        LDR.W    R0,??DataTable80_3  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_SetIC1Prescaler_0
        LDR.W    R0,??DataTable80_4  ;; 0x40001c00
        CMP      R4,R0
        BEQ.N    ??TIM_SetIC1Prescaler_0
        LDR.W    R0,??DataTable80_5  ;; 0x40002000
        CMP      R4,R0
        BEQ.N    ??TIM_SetIC1Prescaler_0
        LDR.W    R0,??DataTable80_6  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_SetIC1Prescaler_0
        LDR.W    R0,??DataTable80_7  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_SetIC1Prescaler_0
        LDR.W    R0,??DataTable77  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_SetIC1Prescaler_0
        MOVW     R1,#+2362
        LDR.W    R0,??DataTable85
        BL       assert_failed
??TIM_SetIC1Prescaler_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_SetIC1Prescaler_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+4
        BEQ.N    ??TIM_SetIC1Prescaler_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8
        BEQ.N    ??TIM_SetIC1Prescaler_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+12
        BEQ.N    ??TIM_SetIC1Prescaler_1
        MOVW     R1,#+2363
        LDR.W    R0,??DataTable85
        BL       assert_failed
??TIM_SetIC1Prescaler_1:
        LDRH     R0,[R4, #+24]
        MOVW     R1,#+65523
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+24]
        LDRH     R0,[R4, #+24]
        ORRS     R0,R5,R0
        STRH     R0,[R4, #+24]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_SetIC2Prescaler:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable74  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_SetIC2Prescaler_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_SetIC2Prescaler_0
        LDR.W    R0,??DataTable76  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_SetIC2Prescaler_0
        LDR.W    R0,??DataTable76_1  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_SetIC2Prescaler_0
        LDR.W    R0,??DataTable76_2  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_SetIC2Prescaler_0
        LDR.N    R0,??DataTable74_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_SetIC2Prescaler_0
        LDR.W    R0,??DataTable80  ;; 0x40014c00
        CMP      R4,R0
        BEQ.N    ??TIM_SetIC2Prescaler_0
        LDR.W    R0,??DataTable80_3  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_SetIC2Prescaler_0
        LDR.W    R0,??DataTable80_6  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_SetIC2Prescaler_0
        MOV      R1,#+2384
        LDR.W    R0,??DataTable85
        BL       assert_failed
??TIM_SetIC2Prescaler_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_SetIC2Prescaler_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+4
        BEQ.N    ??TIM_SetIC2Prescaler_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8
        BEQ.N    ??TIM_SetIC2Prescaler_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+12
        BEQ.N    ??TIM_SetIC2Prescaler_1
        MOVW     R1,#+2385
        LDR.W    R0,??DataTable85
        BL       assert_failed
??TIM_SetIC2Prescaler_1:
        LDRH     R0,[R4, #+24]
        MOVW     R1,#+62463
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+24]
        LDRH     R0,[R4, #+24]
        ORRS     R0,R0,R5, LSL #+8
        STRH     R0,[R4, #+24]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_SetIC3Prescaler:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable74  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_SetIC3Prescaler_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_SetIC3Prescaler_0
        LDR.N    R0,??DataTable76  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_SetIC3Prescaler_0
        LDR.N    R0,??DataTable76_1  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_SetIC3Prescaler_0
        LDR.N    R0,??DataTable76_2  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_SetIC3Prescaler_0
        LDR.N    R0,??DataTable74_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_SetIC3Prescaler_0
        MOVW     R1,#+2406
        LDR.W    R0,??DataTable85
        BL       assert_failed
??TIM_SetIC3Prescaler_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_SetIC3Prescaler_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+4
        BEQ.N    ??TIM_SetIC3Prescaler_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8
        BEQ.N    ??TIM_SetIC3Prescaler_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+12
        BEQ.N    ??TIM_SetIC3Prescaler_1
        MOVW     R1,#+2407
        LDR.W    R0,??DataTable85
        BL       assert_failed
??TIM_SetIC3Prescaler_1:
        LDRH     R0,[R4, #+28]
        MOVW     R1,#+65523
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+28]
        LDRH     R0,[R4, #+28]
        ORRS     R0,R5,R0
        STRH     R0,[R4, #+28]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_SetIC4Prescaler:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable74  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_SetIC4Prescaler_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_SetIC4Prescaler_0
        LDR.N    R0,??DataTable76  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_SetIC4Prescaler_0
        LDR.N    R0,??DataTable76_1  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_SetIC4Prescaler_0
        LDR.N    R0,??DataTable76_2  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_SetIC4Prescaler_0
        LDR.N    R0,??DataTable74_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_SetIC4Prescaler_0
        MOVW     R1,#+2428
        LDR.W    R0,??DataTable85
        BL       assert_failed
??TIM_SetIC4Prescaler_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_SetIC4Prescaler_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+4
        BEQ.N    ??TIM_SetIC4Prescaler_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8
        BEQ.N    ??TIM_SetIC4Prescaler_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+12
        BEQ.N    ??TIM_SetIC4Prescaler_1
        MOVW     R1,#+2429
        LDR.W    R0,??DataTable85
        BL       assert_failed
??TIM_SetIC4Prescaler_1:
        LDRH     R0,[R4, #+28]
        MOVW     R1,#+62463
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+28]
        LDRH     R0,[R4, #+28]
        ORRS     R0,R0,R5, LSL #+8
        STRH     R0,[R4, #+28]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_SetClockDivision:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable74  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_SetClockDivision_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_SetClockDivision_0
        LDR.N    R0,??DataTable76  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_SetClockDivision_0
        LDR.N    R0,??DataTable76_1  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_SetClockDivision_0
        LDR.N    R0,??DataTable76_2  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_SetClockDivision_0
        LDR.N    R0,??DataTable74_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_SetClockDivision_0
        LDR.W    R0,??DataTable80  ;; 0x40014c00
        CMP      R4,R0
        BEQ.N    ??TIM_SetClockDivision_0
        LDR.W    R0,??DataTable80_1  ;; 0x40015000
        CMP      R4,R0
        BEQ.N    ??TIM_SetClockDivision_0
        LDR.W    R0,??DataTable80_2  ;; 0x40015400
        CMP      R4,R0
        BEQ.N    ??TIM_SetClockDivision_0
        LDR.W    R0,??DataTable80_3  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_SetClockDivision_0
        LDR.W    R0,??DataTable80_4  ;; 0x40001c00
        CMP      R4,R0
        BEQ.N    ??TIM_SetClockDivision_0
        LDR.W    R0,??DataTable80_5  ;; 0x40002000
        CMP      R4,R0
        BEQ.N    ??TIM_SetClockDivision_0
        LDR.W    R0,??DataTable80_6  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_SetClockDivision_0
        LDR.W    R0,??DataTable80_7  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_SetClockDivision_0
        LDR.N    R0,??DataTable77  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_SetClockDivision_0
        MOVW     R1,#+2450
        LDR.W    R0,??DataTable85
        BL       assert_failed
??TIM_SetClockDivision_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??TIM_SetClockDivision_1
        MOV      R0,#+256
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??TIM_SetClockDivision_1
        MOV      R0,#+512
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??TIM_SetClockDivision_1
        MOVW     R1,#+2451
        LDR.W    R0,??DataTable85
        BL       assert_failed
??TIM_SetClockDivision_1:
        LDRH     R0,[R4, #+0]
        MOVW     R1,#+64767
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+0]
        LDRH     R0,[R4, #+0]
        ORRS     R0,R5,R0
        STRH     R0,[R4, #+0]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_GetCapture1:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.N    R0,??DataTable74  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_GetCapture1_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_GetCapture1_0
        LDR.N    R0,??DataTable76  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_GetCapture1_0
        LDR.N    R0,??DataTable76_1  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_GetCapture1_0
        LDR.N    R0,??DataTable76_2  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_GetCapture1_0
        LDR.N    R0,??DataTable74_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_GetCapture1_0
        LDR.W    R0,??DataTable80  ;; 0x40014c00
        CMP      R4,R0
        BEQ.N    ??TIM_GetCapture1_0
        LDR.W    R0,??DataTable80_1  ;; 0x40015000
        CMP      R4,R0
        BEQ.N    ??TIM_GetCapture1_0
        LDR.W    R0,??DataTable80_2  ;; 0x40015400
        CMP      R4,R0
        BEQ.N    ??TIM_GetCapture1_0
        LDR.W    R0,??DataTable80_3  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_GetCapture1_0
        LDR.W    R0,??DataTable80_4  ;; 0x40001c00
        CMP      R4,R0
        BEQ.N    ??TIM_GetCapture1_0
        LDR.W    R0,??DataTable80_5  ;; 0x40002000
        CMP      R4,R0
        BEQ.N    ??TIM_GetCapture1_0
        LDR.W    R0,??DataTable80_6  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_GetCapture1_0
        LDR.W    R0,??DataTable80_7  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_GetCapture1_0
        LDR.N    R0,??DataTable77  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_GetCapture1_0
        MOVW     R1,#+2466
        LDR.W    R0,??DataTable85
        BL       assert_failed
??TIM_GetCapture1_0:
        LDRH     R0,[R4, #+52]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_GetCapture2:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.N    R0,??DataTable74  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_GetCapture2_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_GetCapture2_0
        LDR.N    R0,??DataTable76  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_GetCapture2_0
        LDR.N    R0,??DataTable76_1  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_GetCapture2_0
        LDR.N    R0,??DataTable76_2  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_GetCapture2_0
        LDR.N    R0,??DataTable74_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_GetCapture2_0
        LDR.W    R0,??DataTable80  ;; 0x40014c00
        CMP      R4,R0
        BEQ.N    ??TIM_GetCapture2_0
        LDR.W    R0,??DataTable80_3  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_GetCapture2_0
        LDR.W    R0,??DataTable80_6  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_GetCapture2_0
        MOVW     R1,#+2479
        LDR.W    R0,??DataTable85
        BL       assert_failed
??TIM_GetCapture2_0:
        LDRH     R0,[R4, #+56]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable74:
        DC32     0x40012c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable74_1:
        DC32     0x40013400

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_GetCapture3:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.W    R0,??DataTable86  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_GetCapture3_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_GetCapture3_0
        LDR.N    R0,??DataTable76  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_GetCapture3_0
        LDR.N    R0,??DataTable76_1  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_GetCapture3_0
        LDR.N    R0,??DataTable76_2  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_GetCapture3_0
        LDR.W    R0,??DataTable86_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_GetCapture3_0
        MOVW     R1,#+2492
        LDR.W    R0,??DataTable85
        BL       assert_failed
??TIM_GetCapture3_0:
        LDRH     R0,[R4, #+60]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_GetCapture4:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.W    R0,??DataTable86  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_GetCapture4_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_GetCapture4_0
        LDR.N    R0,??DataTable76  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_GetCapture4_0
        LDR.N    R0,??DataTable76_1  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_GetCapture4_0
        LDR.N    R0,??DataTable76_2  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_GetCapture4_0
        LDR.W    R0,??DataTable86_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_GetCapture4_0
        MOVW     R1,#+2505
        LDR.W    R0,??DataTable85
        BL       assert_failed
??TIM_GetCapture4_0:
        LDRH     R0,[R4, #+64]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable76:
        DC32     0x40000400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable76_1:
        DC32     0x40000800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable76_2:
        DC32     0x40000c00

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_GetCounter:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.W    R0,??DataTable86  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_GetCounter_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_GetCounter_0
        LDR.W    R0,??DataTable86_2  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_GetCounter_0
        LDR.W    R0,??DataTable86_3  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_GetCounter_0
        LDR.W    R0,??DataTable86_4  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_GetCounter_0
        LDR.W    R0,??DataTable86_5  ;; 0x40001000
        CMP      R4,R0
        BEQ.N    ??TIM_GetCounter_0
        LDR.W    R0,??DataTable86_6  ;; 0x40001400
        CMP      R4,R0
        BEQ.N    ??TIM_GetCounter_0
        LDR.W    R0,??DataTable86_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_GetCounter_0
        LDR.N    R0,??DataTable80  ;; 0x40014c00
        CMP      R4,R0
        BEQ.N    ??TIM_GetCounter_0
        LDR.N    R0,??DataTable80_1  ;; 0x40015000
        CMP      R4,R0
        BEQ.N    ??TIM_GetCounter_0
        LDR.N    R0,??DataTable80_2  ;; 0x40015400
        CMP      R4,R0
        BEQ.N    ??TIM_GetCounter_0
        LDR.N    R0,??DataTable80_3  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_GetCounter_0
        LDR.N    R0,??DataTable80_4  ;; 0x40001c00
        CMP      R4,R0
        BEQ.N    ??TIM_GetCounter_0
        LDR.N    R0,??DataTable80_5  ;; 0x40002000
        CMP      R4,R0
        BEQ.N    ??TIM_GetCounter_0
        LDR.N    R0,??DataTable80_6  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_GetCounter_0
        LDR.N    R0,??DataTable80_7  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_GetCounter_0
        LDR.N    R0,??DataTable77  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_GetCounter_0
        MOVW     R1,#+2518
        LDR.W    R0,??DataTable85
        BL       assert_failed
??TIM_GetCounter_0:
        LDRH     R0,[R4, #+36]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable77:
        DC32     0x40014800

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_GetPrescaler:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.W    R0,??DataTable86  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_GetPrescaler_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_GetPrescaler_0
        LDR.W    R0,??DataTable86_2  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_GetPrescaler_0
        LDR.W    R0,??DataTable86_3  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_GetPrescaler_0
        LDR.W    R0,??DataTable86_4  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_GetPrescaler_0
        LDR.W    R0,??DataTable86_5  ;; 0x40001000
        CMP      R4,R0
        BEQ.N    ??TIM_GetPrescaler_0
        LDR.W    R0,??DataTable86_6  ;; 0x40001400
        CMP      R4,R0
        BEQ.N    ??TIM_GetPrescaler_0
        LDR.W    R0,??DataTable86_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_GetPrescaler_0
        LDR.N    R0,??DataTable80  ;; 0x40014c00
        CMP      R4,R0
        BEQ.N    ??TIM_GetPrescaler_0
        LDR.N    R0,??DataTable80_1  ;; 0x40015000
        CMP      R4,R0
        BEQ.N    ??TIM_GetPrescaler_0
        LDR.N    R0,??DataTable80_2  ;; 0x40015400
        CMP      R4,R0
        BEQ.N    ??TIM_GetPrescaler_0
        LDR.N    R0,??DataTable80_3  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_GetPrescaler_0
        LDR.N    R0,??DataTable80_4  ;; 0x40001c00
        CMP      R4,R0
        BEQ.N    ??TIM_GetPrescaler_0
        LDR.N    R0,??DataTable80_5  ;; 0x40002000
        CMP      R4,R0
        BEQ.N    ??TIM_GetPrescaler_0
        LDR.N    R0,??DataTable80_6  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_GetPrescaler_0
        LDR.N    R0,??DataTable80_7  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_GetPrescaler_0
        LDR.W    R0,??DataTable86_7  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_GetPrescaler_0
        MOVW     R1,#+2531
        LDR.W    R0,??DataTable85
        BL       assert_failed
??TIM_GetPrescaler_0:
        LDRH     R0,[R4, #+40]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_GetFlagStatus:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.W    R0,??DataTable86  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_GetFlagStatus_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_GetFlagStatus_0
        LDR.W    R0,??DataTable86_2  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_GetFlagStatus_0
        LDR.W    R0,??DataTable86_3  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_GetFlagStatus_0
        LDR.W    R0,??DataTable86_4  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_GetFlagStatus_0
        LDR.W    R0,??DataTable86_5  ;; 0x40001000
        CMP      R4,R0
        BEQ.N    ??TIM_GetFlagStatus_0
        LDR.W    R0,??DataTable86_6  ;; 0x40001400
        CMP      R4,R0
        BEQ.N    ??TIM_GetFlagStatus_0
        LDR.W    R0,??DataTable86_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_GetFlagStatus_0
        LDR.N    R0,??DataTable80  ;; 0x40014c00
        CMP      R4,R0
        BEQ.N    ??TIM_GetFlagStatus_0
        LDR.N    R0,??DataTable80_1  ;; 0x40015000
        CMP      R4,R0
        BEQ.N    ??TIM_GetFlagStatus_0
        LDR.N    R0,??DataTable80_2  ;; 0x40015400
        CMP      R4,R0
        BEQ.N    ??TIM_GetFlagStatus_0
        LDR.N    R0,??DataTable80_3  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_GetFlagStatus_0
        LDR.N    R0,??DataTable80_4  ;; 0x40001c00
        CMP      R4,R0
        BEQ.N    ??TIM_GetFlagStatus_0
        LDR.N    R0,??DataTable80_5  ;; 0x40002000
        CMP      R4,R0
        BEQ.N    ??TIM_GetFlagStatus_0
        LDR.N    R0,??DataTable80_6  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_GetFlagStatus_0
        LDR.N    R0,??DataTable80_7  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_GetFlagStatus_0
        LDR.W    R0,??DataTable86_7  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_GetFlagStatus_0
        MOVW     R1,#+2566
        LDR.W    R0,??DataTable85
        BL       assert_failed
??TIM_GetFlagStatus_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+1
        BEQ.N    ??TIM_GetFlagStatus_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+2
        BEQ.N    ??TIM_GetFlagStatus_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+4
        BEQ.N    ??TIM_GetFlagStatus_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8
        BEQ.N    ??TIM_GetFlagStatus_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+16
        BEQ.N    ??TIM_GetFlagStatus_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+32
        BEQ.N    ??TIM_GetFlagStatus_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+64
        BEQ.N    ??TIM_GetFlagStatus_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+128
        BEQ.N    ??TIM_GetFlagStatus_1
        MOV      R0,#+512
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??TIM_GetFlagStatus_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+1024
        BEQ.N    ??TIM_GetFlagStatus_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+2048
        BEQ.N    ??TIM_GetFlagStatus_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+4096
        BEQ.N    ??TIM_GetFlagStatus_1
        MOVW     R1,#+2567
        LDR.W    R0,??DataTable85
        BL       assert_failed
??TIM_GetFlagStatus_1:
        LDRH     R0,[R4, #+16]
        TST      R0,R5
        BEQ.N    ??TIM_GetFlagStatus_2
        MOVS     R0,#+1
        MOVS     R6,R0
        B.N      ??TIM_GetFlagStatus_3
??TIM_GetFlagStatus_2:
        MOVS     R0,#+0
        MOVS     R6,R0
??TIM_GetFlagStatus_3:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_ClearFlag:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable86  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_ClearFlag_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_ClearFlag_0
        LDR.W    R0,??DataTable86_2  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_ClearFlag_0
        LDR.W    R0,??DataTable86_3  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_ClearFlag_0
        LDR.W    R0,??DataTable86_4  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_ClearFlag_0
        LDR.W    R0,??DataTable86_5  ;; 0x40001000
        CMP      R4,R0
        BEQ.N    ??TIM_ClearFlag_0
        LDR.W    R0,??DataTable86_6  ;; 0x40001400
        CMP      R4,R0
        BEQ.N    ??TIM_ClearFlag_0
        LDR.W    R0,??DataTable86_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_ClearFlag_0
        LDR.N    R0,??DataTable80  ;; 0x40014c00
        CMP      R4,R0
        BEQ.N    ??TIM_ClearFlag_0
        LDR.N    R0,??DataTable80_1  ;; 0x40015000
        CMP      R4,R0
        BEQ.N    ??TIM_ClearFlag_0
        LDR.N    R0,??DataTable80_2  ;; 0x40015400
        CMP      R4,R0
        BEQ.N    ??TIM_ClearFlag_0
        LDR.N    R0,??DataTable80_3  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_ClearFlag_0
        LDR.N    R0,??DataTable80_4  ;; 0x40001c00
        CMP      R4,R0
        BEQ.N    ??TIM_ClearFlag_0
        LDR.N    R0,??DataTable80_5  ;; 0x40002000
        CMP      R4,R0
        BEQ.N    ??TIM_ClearFlag_0
        LDR.N    R0,??DataTable80_6  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_ClearFlag_0
        LDR.N    R0,??DataTable80_7  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_ClearFlag_0
        LDR.W    R0,??DataTable86_7  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_ClearFlag_0
        MOVW     R1,#+2609
        LDR.W    R0,??DataTable85
        BL       assert_failed
??TIM_ClearFlag_0:
        MOV      R0,#+57600
        TST      R5,R0
        BNE.N    ??TIM_ClearFlag_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BNE.N    ??TIM_ClearFlag_2
??TIM_ClearFlag_1:
        MOVW     R1,#+2610
        LDR.W    R0,??DataTable85
        BL       assert_failed
??TIM_ClearFlag_2:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        MVNS     R0,R5
        STRH     R0,[R4, #+16]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable80:
        DC32     0x40014c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable80_1:
        DC32     0x40015000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable80_2:
        DC32     0x40015400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable80_3:
        DC32     0x40001800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable80_4:
        DC32     0x40001c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable80_5:
        DC32     0x40002000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable80_6:
        DC32     0x40014000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable80_7:
        DC32     0x40014400

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_GetITStatus:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        MOVS     R7,#+0
        MOVS     R8,#+0
        LDR.W    R0,??DataTable86  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_GetITStatus_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_GetITStatus_0
        LDR.W    R0,??DataTable86_2  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_GetITStatus_0
        LDR.W    R0,??DataTable86_3  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_GetITStatus_0
        LDR.W    R0,??DataTable86_4  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_GetITStatus_0
        LDR.W    R0,??DataTable86_5  ;; 0x40001000
        CMP      R4,R0
        BEQ.N    ??TIM_GetITStatus_0
        LDR.W    R0,??DataTable86_6  ;; 0x40001400
        CMP      R4,R0
        BEQ.N    ??TIM_GetITStatus_0
        LDR.W    R0,??DataTable86_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_GetITStatus_0
        LDR.W    R0,??DataTable86_8  ;; 0x40014c00
        CMP      R4,R0
        BEQ.N    ??TIM_GetITStatus_0
        LDR.W    R0,??DataTable86_9  ;; 0x40015000
        CMP      R4,R0
        BEQ.N    ??TIM_GetITStatus_0
        LDR.W    R0,??DataTable86_10  ;; 0x40015400
        CMP      R4,R0
        BEQ.N    ??TIM_GetITStatus_0
        LDR.W    R0,??DataTable86_11  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_GetITStatus_0
        LDR.W    R0,??DataTable86_12  ;; 0x40001c00
        CMP      R4,R0
        BEQ.N    ??TIM_GetITStatus_0
        LDR.W    R0,??DataTable86_13  ;; 0x40002000
        CMP      R4,R0
        BEQ.N    ??TIM_GetITStatus_0
        LDR.W    R0,??DataTable86_14  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_GetITStatus_0
        LDR.N    R0,??DataTable86_15  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_GetITStatus_0
        LDR.N    R0,??DataTable86_7  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_GetITStatus_0
        MOVW     R1,#+2643
        LDR.N    R0,??DataTable85
        BL       assert_failed
??TIM_GetITStatus_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+1
        BEQ.N    ??TIM_GetITStatus_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+2
        BEQ.N    ??TIM_GetITStatus_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+4
        BEQ.N    ??TIM_GetITStatus_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8
        BEQ.N    ??TIM_GetITStatus_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+16
        BEQ.N    ??TIM_GetITStatus_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+32
        BEQ.N    ??TIM_GetITStatus_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+64
        BEQ.N    ??TIM_GetITStatus_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+128
        BEQ.N    ??TIM_GetITStatus_1
        MOVW     R1,#+2644
        LDR.N    R0,??DataTable85
        BL       assert_failed
??TIM_GetITStatus_1:
        LDRH     R0,[R4, #+16]
        ANDS     R0,R5,R0
        MOVS     R7,R0
        LDRH     R0,[R4, #+12]
        ANDS     R0,R5,R0
        MOV      R8,R0
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        CMP      R7,#+0
        BEQ.N    ??TIM_GetITStatus_2
        UXTH     R8,R8            ;; ZeroExt  R8,R8,#+16,#+16
        CMP      R8,#+0
        BEQ.N    ??TIM_GetITStatus_2
        MOVS     R0,#+1
        MOVS     R6,R0
        B.N      ??TIM_GetITStatus_3
??TIM_GetITStatus_2:
        MOVS     R0,#+0
        MOVS     R6,R0
??TIM_GetITStatus_3:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R8,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM_ClearITPendingBit:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable86  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_ClearITPendingBit_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_ClearITPendingBit_0
        LDR.N    R0,??DataTable86_2  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_ClearITPendingBit_0
        LDR.N    R0,??DataTable86_3  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_ClearITPendingBit_0
        LDR.N    R0,??DataTable86_4  ;; 0x40000c00
        CMP      R4,R0
        BEQ.N    ??TIM_ClearITPendingBit_0
        LDR.N    R0,??DataTable86_5  ;; 0x40001000
        CMP      R4,R0
        BEQ.N    ??TIM_ClearITPendingBit_0
        LDR.N    R0,??DataTable86_6  ;; 0x40001400
        CMP      R4,R0
        BEQ.N    ??TIM_ClearITPendingBit_0
        LDR.N    R0,??DataTable86_1  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_ClearITPendingBit_0
        LDR.N    R0,??DataTable86_8  ;; 0x40014c00
        CMP      R4,R0
        BEQ.N    ??TIM_ClearITPendingBit_0
        LDR.N    R0,??DataTable86_9  ;; 0x40015000
        CMP      R4,R0
        BEQ.N    ??TIM_ClearITPendingBit_0
        LDR.N    R0,??DataTable86_10  ;; 0x40015400
        CMP      R4,R0
        BEQ.N    ??TIM_ClearITPendingBit_0
        LDR.N    R0,??DataTable86_11  ;; 0x40001800
        CMP      R4,R0
        BEQ.N    ??TIM_ClearITPendingBit_0
        LDR.N    R0,??DataTable86_12  ;; 0x40001c00
        CMP      R4,R0
        BEQ.N    ??TIM_ClearITPendingBit_0
        LDR.N    R0,??DataTable86_13  ;; 0x40002000
        CMP      R4,R0
        BEQ.N    ??TIM_ClearITPendingBit_0
        LDR.N    R0,??DataTable86_14  ;; 0x40014000
        CMP      R4,R0
        BEQ.N    ??TIM_ClearITPendingBit_0
        LDR.N    R0,??DataTable86_15  ;; 0x40014400
        CMP      R4,R0
        BEQ.N    ??TIM_ClearITPendingBit_0
        LDR.N    R0,??DataTable86_7  ;; 0x40014800
        CMP      R4,R0
        BEQ.N    ??TIM_ClearITPendingBit_0
        MOVW     R1,#+2685
        LDR.N    R0,??DataTable85
        BL       assert_failed
??TIM_ClearITPendingBit_0:
        MOV      R0,#+65280
        TST      R5,R0
        BNE.N    ??TIM_ClearITPendingBit_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BNE.N    ??TIM_ClearITPendingBit_2
??TIM_ClearITPendingBit_1:
        MOVW     R1,#+2686
        LDR.N    R0,??DataTable85
        BL       assert_failed
??TIM_ClearITPendingBit_2:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        MVNS     R0,R5
        STRH     R0,[R4, #+16]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TI1_Config:
        PUSH     {R4-R7}
        MOVS     R5,#+0
        MOVS     R4,#+0
        LDRH     R6,[R0, #+32]
        MOVW     R7,#+65534
        ANDS     R6,R7,R6
        STRH     R6,[R0, #+32]
        LDRH     R6,[R0, #+24]
        MOVS     R5,R6
        LDRH     R6,[R0, #+32]
        MOVS     R4,R6
        MOVW     R6,#+65292
        ANDS     R5,R6,R5
        ORRS     R6,R2,R3, LSL #+4
        ORRS     R5,R6,R5
        LDR.N    R6,??DataTable86  ;; 0x40012c00
        CMP      R0,R6
        BEQ.N    ??TI1_Config_0
        LDR.N    R6,??DataTable86_1  ;; 0x40013400
        CMP      R0,R6
        BEQ.N    ??TI1_Config_0
        CMP      R0,#+1073741824
        BEQ.N    ??TI1_Config_0
        LDR.N    R6,??DataTable86_2  ;; 0x40000400
        CMP      R0,R6
        BEQ.N    ??TI1_Config_0
        LDR.N    R6,??DataTable86_3  ;; 0x40000800
        CMP      R0,R6
        BEQ.N    ??TI1_Config_0
        LDR.N    R6,??DataTable86_4  ;; 0x40000c00
        CMP      R0,R6
        BNE.N    ??TI1_Config_1
??TI1_Config_0:
        MOVW     R6,#+65533
        ANDS     R4,R6,R4
        ORRS     R6,R1,#0x1
        ORRS     R4,R6,R4
        B.N      ??TI1_Config_2
??TI1_Config_1:
        MOVW     R6,#+65525
        ANDS     R4,R6,R4
        ORRS     R6,R1,#0x1
        ORRS     R4,R6,R4
??TI1_Config_2:
        STRH     R5,[R0, #+24]
        STRH     R4,[R0, #+32]
        POP      {R4-R7}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TI2_Config:
        PUSH     {R4-R7}
        MOVS     R6,#+0
        MOVS     R4,#+0
        MOVS     R5,#+0
        LDRH     R7,[R0, #+32]
        MOVW     R12,#+65519
        ANDS     R7,R12,R7
        STRH     R7,[R0, #+32]
        LDRH     R7,[R0, #+24]
        MOVS     R6,R7
        LDRH     R7,[R0, #+32]
        MOVS     R4,R7
        LSLS     R7,R1,#+4
        MOVS     R5,R7
        MOVW     R7,#+3327
        ANDS     R6,R7,R6
        ORRS     R6,R6,R3, LSL #+12
        ORRS     R6,R6,R2, LSL #+8
        LDR.N    R7,??DataTable86  ;; 0x40012c00
        CMP      R0,R7
        BEQ.N    ??TI2_Config_0
        LDR.N    R7,??DataTable86_1  ;; 0x40013400
        CMP      R0,R7
        BEQ.N    ??TI2_Config_0
        CMP      R0,#+1073741824
        BEQ.N    ??TI2_Config_0
        LDR.N    R7,??DataTable86_2  ;; 0x40000400
        CMP      R0,R7
        BEQ.N    ??TI2_Config_0
        LDR.N    R7,??DataTable86_3  ;; 0x40000800
        CMP      R0,R7
        BEQ.N    ??TI2_Config_0
        LDR.N    R7,??DataTable86_4  ;; 0x40000c00
        CMP      R0,R7
        BNE.N    ??TI2_Config_1
??TI2_Config_0:
        MOVW     R7,#+65503
        ANDS     R4,R7,R4
        ORRS     R7,R5,#0x10
        ORRS     R4,R7,R4
        B.N      ??TI2_Config_2
??TI2_Config_1:
        MOVW     R7,#+65375
        ANDS     R4,R7,R4
        ORRS     R7,R1,#0x10
        ORRS     R4,R7,R4
??TI2_Config_2:
        STRH     R6,[R0, #+24]
        STRH     R4,[R0, #+32]
        POP      {R4-R7}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TI3_Config:
        PUSH     {R4-R7}
        MOVS     R6,#+0
        MOVS     R4,#+0
        MOVS     R5,#+0
        LDRH     R7,[R0, #+32]
        MOVW     R12,#+65279
        ANDS     R7,R12,R7
        STRH     R7,[R0, #+32]
        LDRH     R7,[R0, #+28]
        MOVS     R6,R7
        LDRH     R7,[R0, #+32]
        MOVS     R4,R7
        LSLS     R7,R1,#+8
        MOVS     R5,R7
        MOVW     R7,#+65292
        ANDS     R6,R7,R6
        ORRS     R7,R2,R3, LSL #+4
        ORRS     R6,R7,R6
        LDR.N    R7,??DataTable86  ;; 0x40012c00
        CMP      R0,R7
        BEQ.N    ??TI3_Config_0
        LDR.N    R7,??DataTable86_1  ;; 0x40013400
        CMP      R0,R7
        BEQ.N    ??TI3_Config_0
        CMP      R0,#+1073741824
        BEQ.N    ??TI3_Config_0
        LDR.N    R7,??DataTable86_2  ;; 0x40000400
        CMP      R0,R7
        BEQ.N    ??TI3_Config_0
        LDR.N    R7,??DataTable86_3  ;; 0x40000800
        CMP      R0,R7
        BEQ.N    ??TI3_Config_0
        LDR.N    R7,??DataTable86_4  ;; 0x40000c00
        CMP      R0,R7
        BNE.N    ??TI3_Config_1
??TI3_Config_0:
        MOVW     R7,#+65023
        ANDS     R4,R7,R4
        MOV      R7,#+256
        ORRS     R7,R7,R5
        ORRS     R4,R7,R4
        B.N      ??TI3_Config_2
??TI3_Config_1:
        MOVW     R7,#+62975
        ANDS     R4,R7,R4
        MOV      R7,#+256
        ORRS     R7,R7,R1
        ORRS     R4,R7,R4
??TI3_Config_2:
        STRH     R6,[R0, #+28]
        STRH     R4,[R0, #+32]
        POP      {R4-R7}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable85:
        DC32     `?<Constant "D:\\\\zWk.Src\\\\Mango-M32-...">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TI4_Config:
        PUSH     {R4-R7}
        MOVS     R6,#+0
        MOVS     R4,#+0
        MOVS     R5,#+0
        LDRH     R7,[R0, #+32]
        MOVW     R12,#+61439
        ANDS     R7,R12,R7
        STRH     R7,[R0, #+32]
        LDRH     R7,[R0, #+28]
        MOVS     R6,R7
        LDRH     R7,[R0, #+32]
        MOVS     R4,R7
        LSLS     R7,R1,#+12
        MOVS     R5,R7
        MOVW     R7,#+3327
        ANDS     R6,R7,R6
        ORRS     R6,R6,R2, LSL #+8
        ORRS     R6,R6,R3, LSL #+12
        LDR.N    R7,??DataTable86  ;; 0x40012c00
        CMP      R0,R7
        BEQ.N    ??TI4_Config_0
        LDR.N    R7,??DataTable86_1  ;; 0x40013400
        CMP      R0,R7
        BEQ.N    ??TI4_Config_0
        CMP      R0,#+1073741824
        BEQ.N    ??TI4_Config_0
        LDR.N    R7,??DataTable86_2  ;; 0x40000400
        CMP      R0,R7
        BEQ.N    ??TI4_Config_0
        LDR.N    R7,??DataTable86_3  ;; 0x40000800
        CMP      R0,R7
        BEQ.N    ??TI4_Config_0
        LDR.N    R7,??DataTable86_4  ;; 0x40000c00
        CMP      R0,R7
        BNE.N    ??TI4_Config_1
??TI4_Config_0:
        MOVW     R7,#+57343
        ANDS     R4,R7,R4
        ORRS     R7,R5,#0x1000
        ORRS     R4,R7,R4
        B.N      ??TI4_Config_2
??TI4_Config_1:
        MOVW     R7,#+32255
        ANDS     R4,R7,R4
        ORRS     R7,R1,#0x1000
        ORRS     R4,R7,R4
??TI4_Config_2:
        STRH     R6,[R0, #+28]
        STRH     R4,[R0, #+32]
        POP      {R4-R7}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable86:
        DC32     0x40012c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable86_1:
        DC32     0x40013400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable86_2:
        DC32     0x40000400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable86_3:
        DC32     0x40000800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable86_4:
        DC32     0x40000c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable86_5:
        DC32     0x40001000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable86_6:
        DC32     0x40001400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable86_7:
        DC32     0x40014800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable86_8:
        DC32     0x40014c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable86_9:
        DC32     0x40015000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable86_10:
        DC32     0x40015400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable86_11:
        DC32     0x40001800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable86_12:
        DC32     0x40001c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable86_13:
        DC32     0x40002000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable86_14:
        DC32     0x40014000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable86_15:
        DC32     0x40014400

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
        DC8 78H, 5FH, 74H, 69H, 6DH, 2EH, 63H, 0

        END
// 
//    112 bytes in section .rodata
// 15 498 bytes in section .text
// 
// 15 498 bytes of CODE  memory
//    112 bytes of CONST memory
//
//Errors: none
//Warnings: none
