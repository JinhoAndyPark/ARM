///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.6.53336/W32 for ARM    25/Jun/2014  14:55:10 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    Libraries\STM32F10x_StdPeriph_Driver\src\stm32f10x_rcc. /
//                    c                                                       /
//    Command line =  D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    Libraries\STM32F10x_StdPeriph_Driver\src\stm32f10x_rcc. /
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
//                    project\Debug\List\stm32f10x_rcc.s                      /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm32f10x_rcc

        #define SHT_PROGBITS 0x1

        EXTERN assert_failed

        PUBLIC RCC_ADCCLKConfig
        PUBLIC RCC_AHBPeriphClockCmd
        PUBLIC RCC_APB1PeriphClockCmd
        PUBLIC RCC_APB1PeriphResetCmd
        PUBLIC RCC_APB2PeriphClockCmd
        PUBLIC RCC_APB2PeriphResetCmd
        PUBLIC RCC_AdjustHSICalibrationValue
        PUBLIC RCC_BackupResetCmd
        PUBLIC RCC_ClearFlag
        PUBLIC RCC_ClearITPendingBit
        PUBLIC RCC_ClockSecuritySystemCmd
        PUBLIC RCC_DeInit
        PUBLIC RCC_GetClocksFreq
        PUBLIC RCC_GetFlagStatus
        PUBLIC RCC_GetITStatus
        PUBLIC RCC_GetSYSCLKSource
        PUBLIC RCC_HCLKConfig
        PUBLIC RCC_HSEConfig
        PUBLIC RCC_HSICmd
        PUBLIC RCC_ITConfig
        PUBLIC RCC_LSEConfig
        PUBLIC RCC_LSICmd
        PUBLIC RCC_MCOConfig
        PUBLIC RCC_PCLK1Config
        PUBLIC RCC_PCLK2Config
        PUBLIC RCC_PLLCmd
        PUBLIC RCC_PLLConfig
        PUBLIC RCC_RTCCLKCmd
        PUBLIC RCC_RTCCLKConfig
        PUBLIC RCC_SYSCLKConfig
        PUBLIC RCC_USBCLKConfig
        PUBLIC RCC_WaitForHSEStartUp


        SECTION `.data`:DATA:REORDER:NOROOT(2)
APBAHBPrescTable:
        DATA
        DC8 0, 0, 0, 0, 1, 2, 3, 4, 1, 2, 3, 4, 6, 7, 8, 9

        SECTION `.data`:DATA:REORDER:NOROOT(2)
ADCPrescTable:
        DATA
        DC8 2, 4, 6, 8

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_DeInit:
        LDR.W    R0,??DataTable30  ;; 0x40021000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.W    R1,??DataTable30  ;; 0x40021000
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable30_1  ;; 0x40021004
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable30_2  ;; 0xf8ff0000
        ANDS     R0,R1,R0
        LDR.W    R1,??DataTable30_1  ;; 0x40021004
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable30  ;; 0x40021000
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable30_3  ;; 0xfef6ffff
        ANDS     R0,R1,R0
        LDR.W    R1,??DataTable30  ;; 0x40021000
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable30  ;; 0x40021000
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x40000
        LDR.W    R1,??DataTable30  ;; 0x40021000
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable30_1  ;; 0x40021004
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x7F0000
        LDR.W    R1,??DataTable30_1  ;; 0x40021004
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable30_4  ;; 0x40021008
        MOVS     R1,#+10420224
        STR      R1,[R0, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_HSEConfig:
        PUSH     {R4,LR}
        MOVS     R4,R0
        CMP      R4,#+0
        BEQ.N    ??RCC_HSEConfig_0
        CMP      R4,#+65536
        BEQ.N    ??RCC_HSEConfig_0
        CMP      R4,#+262144
        BEQ.N    ??RCC_HSEConfig_0
        MOVW     R1,#+279
        LDR.W    R0,??DataTable30_5
        BL       assert_failed
??RCC_HSEConfig_0:
        LDR.W    R0,??DataTable30  ;; 0x40021000
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x10000
        LDR.W    R1,??DataTable30  ;; 0x40021000
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable30  ;; 0x40021000
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x40000
        LDR.W    R1,??DataTable30  ;; 0x40021000
        STR      R0,[R1, #+0]
        MOVS     R0,R4
        CMP      R0,#+65536
        BEQ.N    ??RCC_HSEConfig_1
        CMP      R0,#+262144
        BEQ.N    ??RCC_HSEConfig_2
        B.N      ??RCC_HSEConfig_3
??RCC_HSEConfig_1:
        LDR.W    R0,??DataTable30  ;; 0x40021000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000
        LDR.W    R1,??DataTable30  ;; 0x40021000
        STR      R0,[R1, #+0]
        B.N      ??RCC_HSEConfig_4
??RCC_HSEConfig_2:
        LDR.W    R0,??DataTable30  ;; 0x40021000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x50000
        LDR.W    R1,??DataTable30  ;; 0x40021000
        STR      R0,[R1, #+0]
        B.N      ??RCC_HSEConfig_4
??RCC_HSEConfig_3:
??RCC_HSEConfig_4:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_WaitForHSEStartUp:
        PUSH     {R3-R5,LR}
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R4,#+0
        MOVS     R5,#+0
??RCC_WaitForHSEStartUp_0:
        MOVS     R0,#+49
        BL       RCC_GetFlagStatus
        MOVS     R5,R0
        LDR      R0,[SP, #+0]
        ADDS     R0,R0,#+1
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
        CMP      R0,#+1280
        BEQ.N    ??RCC_WaitForHSEStartUp_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??RCC_WaitForHSEStartUp_0
??RCC_WaitForHSEStartUp_1:
        MOVS     R0,#+49
        BL       RCC_GetFlagStatus
        CMP      R0,#+0
        BEQ.N    ??RCC_WaitForHSEStartUp_2
        MOVS     R0,#+1
        MOVS     R4,R0
        B.N      ??RCC_WaitForHSEStartUp_3
??RCC_WaitForHSEStartUp_2:
        MOVS     R0,#+0
        MOVS     R4,R0
??RCC_WaitForHSEStartUp_3:
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_AdjustHSICalibrationValue:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+32
        BCC.N    ??RCC_AdjustHSICalibrationValue_0
        MOV      R1,#+344
        LDR.W    R0,??DataTable30_5
        BL       assert_failed
??RCC_AdjustHSICalibrationValue_0:
        LDR.W    R0,??DataTable30  ;; 0x40021000
        LDR      R0,[R0, #+0]
        MOVS     R5,R0
        BICS     R5,R5,#0xF8
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ORRS     R5,R5,R4, LSL #+3
        LDR.W    R0,??DataTable30  ;; 0x40021000
        STR      R5,[R0, #+0]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_HSICmd:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??RCC_HSICmd_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??RCC_HSICmd_0
        MOVW     R1,#+363
        LDR.W    R0,??DataTable30_5
        BL       assert_failed
??RCC_HSICmd_0:
        LDR.W    R0,??DataTable30_6  ;; 0x42420000
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_PLLConfig:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        CMP      R4,#+0
        BEQ.N    ??RCC_PLLConfig_0
        CMP      R4,#+65536
        BEQ.N    ??RCC_PLLConfig_0
        CMP      R4,#+196608
        BEQ.N    ??RCC_PLLConfig_0
        MOVW     R1,#+389
        LDR.W    R0,??DataTable30_5
        BL       assert_failed
??RCC_PLLConfig_0:
        CMP      R5,#+0
        BEQ.N    ??RCC_PLLConfig_1
        CMP      R5,#+262144
        BEQ.N    ??RCC_PLLConfig_1
        CMP      R5,#+524288
        BEQ.N    ??RCC_PLLConfig_1
        CMP      R5,#+786432
        BEQ.N    ??RCC_PLLConfig_1
        CMP      R5,#+1048576
        BEQ.N    ??RCC_PLLConfig_1
        CMP      R5,#+1310720
        BEQ.N    ??RCC_PLLConfig_1
        CMP      R5,#+1572864
        BEQ.N    ??RCC_PLLConfig_1
        CMP      R5,#+1835008
        BEQ.N    ??RCC_PLLConfig_1
        CMP      R5,#+2097152
        BEQ.N    ??RCC_PLLConfig_1
        CMP      R5,#+2359296
        BEQ.N    ??RCC_PLLConfig_1
        CMP      R5,#+2621440
        BEQ.N    ??RCC_PLLConfig_1
        CMP      R5,#+2883584
        BEQ.N    ??RCC_PLLConfig_1
        CMP      R5,#+3145728
        BEQ.N    ??RCC_PLLConfig_1
        CMP      R5,#+3407872
        BEQ.N    ??RCC_PLLConfig_1
        CMP      R5,#+3670016
        BEQ.N    ??RCC_PLLConfig_1
        MOV      R1,#+390
        LDR.W    R0,??DataTable30_5
        BL       assert_failed
??RCC_PLLConfig_1:
        LDR.W    R0,??DataTable30_1  ;; 0x40021004
        LDR      R0,[R0, #+0]
        MOVS     R6,R0
        BICS     R6,R6,#0x3F0000
        ORRS     R0,R5,R4
        ORRS     R6,R0,R6
        LDR.W    R0,??DataTable30_1  ;; 0x40021004
        STR      R6,[R0, #+0]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_PLLCmd:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??RCC_PLLCmd_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??RCC_PLLCmd_0
        MOV      R1,#+410
        LDR.W    R0,??DataTable30_5
        BL       assert_failed
??RCC_PLLCmd_0:
        LDR.W    R0,??DataTable30_7  ;; 0x42420060
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_SYSCLKConfig:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        CMP      R4,#+0
        BEQ.N    ??RCC_SYSCLKConfig_0
        CMP      R4,#+1
        BEQ.N    ??RCC_SYSCLKConfig_0
        CMP      R4,#+2
        BEQ.N    ??RCC_SYSCLKConfig_0
        MOVW     R1,#+574
        LDR.W    R0,??DataTable30_5
        BL       assert_failed
??RCC_SYSCLKConfig_0:
        LDR.W    R0,??DataTable30_1  ;; 0x40021004
        LDR      R0,[R0, #+0]
        MOVS     R5,R0
        LSRS     R5,R5,#+2
        LSLS     R5,R5,#+2
        ORRS     R5,R4,R5
        LDR.W    R0,??DataTable30_1  ;; 0x40021004
        STR      R5,[R0, #+0]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_GetSYSCLKSource:
        LDR.W    R0,??DataTable30_1  ;; 0x40021004
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0xC
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_HCLKConfig:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        CMP      R4,#+0
        BEQ.N    ??RCC_HCLKConfig_0
        CMP      R4,#+128
        BEQ.N    ??RCC_HCLKConfig_0
        CMP      R4,#+144
        BEQ.N    ??RCC_HCLKConfig_0
        CMP      R4,#+160
        BEQ.N    ??RCC_HCLKConfig_0
        CMP      R4,#+176
        BEQ.N    ??RCC_HCLKConfig_0
        CMP      R4,#+192
        BEQ.N    ??RCC_HCLKConfig_0
        CMP      R4,#+208
        BEQ.N    ??RCC_HCLKConfig_0
        CMP      R4,#+224
        BEQ.N    ??RCC_HCLKConfig_0
        CMP      R4,#+240
        BEQ.N    ??RCC_HCLKConfig_0
        MOVW     R1,#+618
        LDR.W    R0,??DataTable30_5
        BL       assert_failed
??RCC_HCLKConfig_0:
        LDR.W    R0,??DataTable30_1  ;; 0x40021004
        LDR      R0,[R0, #+0]
        MOVS     R5,R0
        BICS     R5,R5,#0xF0
        ORRS     R5,R4,R5
        LDR.W    R0,??DataTable30_1  ;; 0x40021004
        STR      R5,[R0, #+0]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_PCLK1Config:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        CMP      R4,#+0
        BEQ.N    ??RCC_PCLK1Config_0
        CMP      R4,#+1024
        BEQ.N    ??RCC_PCLK1Config_0
        CMP      R4,#+1280
        BEQ.N    ??RCC_PCLK1Config_0
        CMP      R4,#+1536
        BEQ.N    ??RCC_PCLK1Config_0
        CMP      R4,#+1792
        BEQ.N    ??RCC_PCLK1Config_0
        MOV      R1,#+644
        LDR.W    R0,??DataTable30_5
        BL       assert_failed
??RCC_PCLK1Config_0:
        LDR.W    R0,??DataTable30_1  ;; 0x40021004
        LDR      R0,[R0, #+0]
        MOVS     R5,R0
        BICS     R5,R5,#0x700
        ORRS     R5,R4,R5
        LDR.W    R0,??DataTable30_1  ;; 0x40021004
        STR      R5,[R0, #+0]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_PCLK2Config:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        CMP      R4,#+0
        BEQ.N    ??RCC_PCLK2Config_0
        CMP      R4,#+1024
        BEQ.N    ??RCC_PCLK2Config_0
        CMP      R4,#+1280
        BEQ.N    ??RCC_PCLK2Config_0
        CMP      R4,#+1536
        BEQ.N    ??RCC_PCLK2Config_0
        CMP      R4,#+1792
        BEQ.N    ??RCC_PCLK2Config_0
        MOVW     R1,#+670
        LDR.W    R0,??DataTable30_5
        BL       assert_failed
??RCC_PCLK2Config_0:
        LDR.W    R0,??DataTable30_1  ;; 0x40021004
        LDR      R0,[R0, #+0]
        MOVS     R5,R0
        BICS     R5,R5,#0x3800
        ORRS     R5,R5,R4, LSL #+3
        LDR.W    R0,??DataTable30_1  ;; 0x40021004
        STR      R5,[R0, #+0]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_ITConfig:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R0,#+224
        TST      R4,R0
        BNE.N    ??RCC_ITConfig_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??RCC_ITConfig_1
??RCC_ITConfig_0:
        MOVW     R1,#+709
        LDR.W    R0,??DataTable30_5
        BL       assert_failed
??RCC_ITConfig_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??RCC_ITConfig_2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??RCC_ITConfig_2
        MOVW     R1,#+710
        LDR.W    R0,??DataTable30_5
        BL       assert_failed
??RCC_ITConfig_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??RCC_ITConfig_3
        LDR.W    R0,??DataTable30_8  ;; 0x40021009
        LDRB     R0,[R0, #+0]
        ORRS     R0,R4,R0
        LDR.W    R1,??DataTable30_8  ;; 0x40021009
        STRB     R0,[R1, #+0]
        B.N      ??RCC_ITConfig_4
??RCC_ITConfig_3:
        LDR.W    R0,??DataTable30_8  ;; 0x40021009
        LDRB     R0,[R0, #+0]
        BICS     R0,R0,R4
        LDR.W    R1,??DataTable30_8  ;; 0x40021009
        STRB     R0,[R1, #+0]
??RCC_ITConfig_4:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_USBCLKConfig:
        PUSH     {R4,LR}
        MOVS     R4,R0
        CMP      R4,#+0
        BEQ.N    ??RCC_USBCLKConfig_0
        CMP      R4,#+1
        BEQ.N    ??RCC_USBCLKConfig_0
        MOVW     R1,#+737
        LDR.W    R0,??DataTable30_5
        BL       assert_failed
??RCC_USBCLKConfig_0:
        LDR.W    R0,??DataTable30_9  ;; 0x424200d8
        STR      R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_ADCCLKConfig:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        CMP      R4,#+0
        BEQ.N    ??RCC_ADCCLKConfig_0
        CMP      R4,#+16384
        BEQ.N    ??RCC_ADCCLKConfig_0
        CMP      R4,#+32768
        BEQ.N    ??RCC_ADCCLKConfig_0
        CMP      R4,#+49152
        BEQ.N    ??RCC_ADCCLKConfig_0
        MOV      R1,#+776
        LDR.W    R0,??DataTable30_5
        BL       assert_failed
??RCC_ADCCLKConfig_0:
        LDR.W    R0,??DataTable30_1  ;; 0x40021004
        LDR      R0,[R0, #+0]
        MOVS     R5,R0
        BICS     R5,R5,#0xC000
        ORRS     R5,R4,R5
        LDR.W    R0,??DataTable30_1  ;; 0x40021004
        STR      R5,[R0, #+0]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_LSEConfig:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??RCC_LSEConfig_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??RCC_LSEConfig_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+4
        BEQ.N    ??RCC_LSEConfig_0
        MOVW     R1,#+838
        LDR.W    R0,??DataTable30_5
        BL       assert_failed
??RCC_LSEConfig_0:
        LDR.W    R0,??DataTable30_10  ;; 0x40021020
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        LDR.W    R0,??DataTable30_10  ;; 0x40021020
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,R4
        CMP      R0,#+1
        BEQ.N    ??RCC_LSEConfig_1
        CMP      R0,#+4
        BEQ.N    ??RCC_LSEConfig_2
        B.N      ??RCC_LSEConfig_3
??RCC_LSEConfig_1:
        LDR.W    R0,??DataTable30_10  ;; 0x40021020
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
        B.N      ??RCC_LSEConfig_4
??RCC_LSEConfig_2:
        LDR.W    R0,??DataTable30_10  ;; 0x40021020
        MOVS     R1,#+5
        STRB     R1,[R0, #+0]
        B.N      ??RCC_LSEConfig_4
??RCC_LSEConfig_3:
??RCC_LSEConfig_4:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_LSICmd:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??RCC_LSICmd_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??RCC_LSICmd_0
        MOVW     R1,#+871
        LDR.W    R0,??DataTable30_5
        BL       assert_failed
??RCC_LSICmd_0:
        LDR.W    R0,??DataTable30_11  ;; 0x42420480
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_RTCCLKConfig:
        PUSH     {R4,LR}
        MOVS     R4,R0
        MOV      R0,#+256
        CMP      R4,R0
        BEQ.N    ??RCC_RTCCLKConfig_0
        MOV      R0,#+512
        CMP      R4,R0
        BEQ.N    ??RCC_RTCCLKConfig_0
        MOV      R0,#+768
        CMP      R4,R0
        BEQ.N    ??RCC_RTCCLKConfig_0
        MOV      R1,#+888
        LDR.W    R0,??DataTable30_5
        BL       assert_failed
??RCC_RTCCLKConfig_0:
        LDR.W    R0,??DataTable30_10  ;; 0x40021020
        LDR      R0,[R0, #+0]
        ORRS     R0,R4,R0
        LDR.W    R1,??DataTable30_10  ;; 0x40021020
        STR      R0,[R1, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_RTCCLKCmd:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??RCC_RTCCLKCmd_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??RCC_RTCCLKCmd_0
        MOVW     R1,#+902
        LDR.W    R0,??DataTable30_5
        BL       assert_failed
??RCC_RTCCLKCmd_0:
        LDR.W    R0,??DataTable30_12  ;; 0x4242043c
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_GetClocksFreq:
        PUSH     {R4,R5}
        MOVS     R1,#+0
        MOVS     R2,#+0
        MOVS     R3,#+0
        MOVS     R4,#+0
        LDR.W    R5,??DataTable30_1  ;; 0x40021004
        LDR      R5,[R5, #+0]
        ANDS     R5,R5,#0xC
        MOVS     R1,R5
        MOVS     R5,R1
        CMP      R5,#+0
        BEQ.N    ??RCC_GetClocksFreq_0
        CMP      R5,#+4
        BEQ.N    ??RCC_GetClocksFreq_1
        CMP      R5,#+8
        BEQ.N    ??RCC_GetClocksFreq_2
        B.N      ??RCC_GetClocksFreq_3
??RCC_GetClocksFreq_0:
        LDR.W    R5,??DataTable30_13  ;; 0x7a1200
        STR      R5,[R0, #+0]
        B.N      ??RCC_GetClocksFreq_4
??RCC_GetClocksFreq_1:
        LDR.W    R5,??DataTable30_14  ;; 0xb71b00
        STR      R5,[R0, #+0]
        B.N      ??RCC_GetClocksFreq_4
??RCC_GetClocksFreq_2:
        LDR.W    R5,??DataTable30_1  ;; 0x40021004
        LDR      R5,[R5, #+0]
        ANDS     R5,R5,#0x3C0000
        MOVS     R2,R5
        LDR.W    R5,??DataTable30_1  ;; 0x40021004
        LDR      R5,[R5, #+0]
        ANDS     R5,R5,#0x10000
        MOVS     R3,R5
        LSRS     R2,R2,#+18
        ADDS     R2,R2,#+2
        CMP      R3,#+0
        BNE.N    ??RCC_GetClocksFreq_5
        LDR.W    R5,??DataTable30_15  ;; 0x3d0900
        MUL      R5,R5,R2
        STR      R5,[R0, #+0]
        B.N      ??RCC_GetClocksFreq_6
??RCC_GetClocksFreq_5:
        LDR.W    R5,??DataTable30_1  ;; 0x40021004
        LDR      R5,[R5, #+0]
        LSLS     R5,R5,#+14
        BPL.N    ??RCC_GetClocksFreq_7
        LDR.W    R5,??DataTable30_16  ;; 0x5b8d80
        MUL      R5,R5,R2
        STR      R5,[R0, #+0]
        B.N      ??RCC_GetClocksFreq_6
??RCC_GetClocksFreq_7:
        LDR.W    R5,??DataTable30_14  ;; 0xb71b00
        MUL      R5,R5,R2
        STR      R5,[R0, #+0]
??RCC_GetClocksFreq_6:
        B.N      ??RCC_GetClocksFreq_4
??RCC_GetClocksFreq_3:
        LDR.W    R5,??DataTable30_13  ;; 0x7a1200
        STR      R5,[R0, #+0]
??RCC_GetClocksFreq_4:
        LDR.W    R5,??DataTable30_1  ;; 0x40021004
        LDR      R5,[R5, #+0]
        ANDS     R5,R5,#0xF0
        MOVS     R1,R5
        LSRS     R1,R1,#+4
        LDR.W    R5,??DataTable30_17
        LDRB     R5,[R1, R5]
        MOVS     R4,R5
        LDR      R5,[R0, #+0]
        LSRS     R5,R5,R4
        STR      R5,[R0, #+4]
        LDR.W    R5,??DataTable30_1  ;; 0x40021004
        LDR      R5,[R5, #+0]
        ANDS     R5,R5,#0x700
        MOVS     R1,R5
        LSRS     R1,R1,#+8
        LDR.W    R5,??DataTable30_17
        LDRB     R5,[R1, R5]
        MOVS     R4,R5
        LDR      R5,[R0, #+4]
        LSRS     R5,R5,R4
        STR      R5,[R0, #+8]
        LDR.W    R5,??DataTable30_1  ;; 0x40021004
        LDR      R5,[R5, #+0]
        ANDS     R5,R5,#0x3800
        MOVS     R1,R5
        LSRS     R1,R1,#+11
        LDR.W    R5,??DataTable30_17
        LDRB     R5,[R1, R5]
        MOVS     R4,R5
        LDR      R5,[R0, #+4]
        LSRS     R5,R5,R4
        STR      R5,[R0, #+12]
        LDR.W    R5,??DataTable30_1  ;; 0x40021004
        LDR      R5,[R5, #+0]
        ANDS     R5,R5,#0xC000
        MOVS     R1,R5
        LSRS     R1,R1,#+14
        LDR.W    R5,??DataTable30_18
        LDRB     R5,[R1, R5]
        MOVS     R4,R5
        LDR      R5,[R0, #+12]
        UDIV     R5,R5,R4
        STR      R5,[R0, #+16]
        POP      {R4,R5}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_AHBPeriphClockCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable30_19  ;; 0xfffffaa8
        TST      R4,R0
        BNE.N    ??RCC_AHBPeriphClockCmd_0
        CMP      R4,#+0
        BNE.N    ??RCC_AHBPeriphClockCmd_1
??RCC_AHBPeriphClockCmd_0:
        MOVW     R1,#+1073
        LDR.W    R0,??DataTable30_5
        BL       assert_failed
??RCC_AHBPeriphClockCmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??RCC_AHBPeriphClockCmd_2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??RCC_AHBPeriphClockCmd_2
        MOVW     R1,#+1074
        LDR.N    R0,??DataTable30_5
        BL       assert_failed
??RCC_AHBPeriphClockCmd_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??RCC_AHBPeriphClockCmd_3
        LDR.W    R0,??DataTable30_20  ;; 0x40021014
        LDR      R0,[R0, #+0]
        ORRS     R0,R4,R0
        LDR.W    R1,??DataTable30_20  ;; 0x40021014
        STR      R0,[R1, #+0]
        B.N      ??RCC_AHBPeriphClockCmd_4
??RCC_AHBPeriphClockCmd_3:
        LDR.W    R0,??DataTable30_20  ;; 0x40021014
        LDR      R0,[R0, #+0]
        BICS     R0,R0,R4
        LDR.W    R1,??DataTable30_20  ;; 0x40021014
        STR      R0,[R1, #+0]
??RCC_AHBPeriphClockCmd_4:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_APB2PeriphClockCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable30_21  ;; 0xffc00002
        TST      R4,R0
        BNE.N    ??RCC_APB2PeriphClockCmd_0
        CMP      R4,#+0
        BNE.N    ??RCC_APB2PeriphClockCmd_1
??RCC_APB2PeriphClockCmd_0:
        MOV      R1,#+1104
        LDR.N    R0,??DataTable30_5
        BL       assert_failed
??RCC_APB2PeriphClockCmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??RCC_APB2PeriphClockCmd_2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??RCC_APB2PeriphClockCmd_2
        MOVW     R1,#+1105
        LDR.N    R0,??DataTable30_5
        BL       assert_failed
??RCC_APB2PeriphClockCmd_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??RCC_APB2PeriphClockCmd_3
        LDR.N    R0,??DataTable30_22  ;; 0x40021018
        LDR      R0,[R0, #+0]
        ORRS     R0,R4,R0
        LDR.N    R1,??DataTable30_22  ;; 0x40021018
        STR      R0,[R1, #+0]
        B.N      ??RCC_APB2PeriphClockCmd_4
??RCC_APB2PeriphClockCmd_3:
        LDR.N    R0,??DataTable30_22  ;; 0x40021018
        LDR      R0,[R0, #+0]
        BICS     R0,R0,R4
        LDR.N    R1,??DataTable30_22  ;; 0x40021018
        STR      R0,[R1, #+0]
??RCC_APB2PeriphClockCmd_4:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_APB1PeriphClockCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable30_23  ;; 0x81013600
        TST      R4,R0
        BNE.N    ??RCC_APB1PeriphClockCmd_0
        CMP      R4,#+0
        BNE.N    ??RCC_APB1PeriphClockCmd_1
??RCC_APB1PeriphClockCmd_0:
        MOVW     R1,#+1135
        LDR.N    R0,??DataTable30_5
        BL       assert_failed
??RCC_APB1PeriphClockCmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??RCC_APB1PeriphClockCmd_2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??RCC_APB1PeriphClockCmd_2
        MOV      R1,#+1136
        LDR.N    R0,??DataTable30_5
        BL       assert_failed
??RCC_APB1PeriphClockCmd_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??RCC_APB1PeriphClockCmd_3
        LDR.N    R0,??DataTable30_24  ;; 0x4002101c
        LDR      R0,[R0, #+0]
        ORRS     R0,R4,R0
        LDR.N    R1,??DataTable30_24  ;; 0x4002101c
        STR      R0,[R1, #+0]
        B.N      ??RCC_APB1PeriphClockCmd_4
??RCC_APB1PeriphClockCmd_3:
        LDR.N    R0,??DataTable30_24  ;; 0x4002101c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,R4
        LDR.N    R1,??DataTable30_24  ;; 0x4002101c
        STR      R0,[R1, #+0]
??RCC_APB1PeriphClockCmd_4:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_APB2PeriphResetCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable30_21  ;; 0xffc00002
        TST      R4,R0
        BNE.N    ??RCC_APB2PeriphResetCmd_0
        CMP      R4,#+0
        BNE.N    ??RCC_APB2PeriphResetCmd_1
??RCC_APB2PeriphResetCmd_0:
        MOVW     R1,#+1194
        LDR.N    R0,??DataTable30_5
        BL       assert_failed
??RCC_APB2PeriphResetCmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??RCC_APB2PeriphResetCmd_2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??RCC_APB2PeriphResetCmd_2
        MOVW     R1,#+1195
        LDR.N    R0,??DataTable30_5
        BL       assert_failed
??RCC_APB2PeriphResetCmd_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??RCC_APB2PeriphResetCmd_3
        LDR.N    R0,??DataTable30_25  ;; 0x4002100c
        LDR      R0,[R0, #+0]
        ORRS     R0,R4,R0
        LDR.N    R1,??DataTable30_25  ;; 0x4002100c
        STR      R0,[R1, #+0]
        B.N      ??RCC_APB2PeriphResetCmd_4
??RCC_APB2PeriphResetCmd_3:
        LDR.N    R0,??DataTable30_25  ;; 0x4002100c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,R4
        LDR.N    R1,??DataTable30_25  ;; 0x4002100c
        STR      R0,[R1, #+0]
??RCC_APB2PeriphResetCmd_4:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_APB1PeriphResetCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable30_23  ;; 0x81013600
        TST      R4,R0
        BNE.N    ??RCC_APB1PeriphResetCmd_0
        CMP      R4,#+0
        BNE.N    ??RCC_APB1PeriphResetCmd_1
??RCC_APB1PeriphResetCmd_0:
        MOVW     R1,#+1225
        LDR.N    R0,??DataTable30_5
        BL       assert_failed
??RCC_APB1PeriphResetCmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??RCC_APB1PeriphResetCmd_2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??RCC_APB1PeriphResetCmd_2
        MOVW     R1,#+1226
        LDR.N    R0,??DataTable30_5
        BL       assert_failed
??RCC_APB1PeriphResetCmd_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??RCC_APB1PeriphResetCmd_3
        LDR.N    R0,??DataTable30_26  ;; 0x40021010
        LDR      R0,[R0, #+0]
        ORRS     R0,R4,R0
        LDR.N    R1,??DataTable30_26  ;; 0x40021010
        STR      R0,[R1, #+0]
        B.N      ??RCC_APB1PeriphResetCmd_4
??RCC_APB1PeriphResetCmd_3:
        LDR.N    R0,??DataTable30_26  ;; 0x40021010
        LDR      R0,[R0, #+0]
        BICS     R0,R0,R4
        LDR.N    R1,??DataTable30_26  ;; 0x40021010
        STR      R0,[R1, #+0]
??RCC_APB1PeriphResetCmd_4:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_BackupResetCmd:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??RCC_BackupResetCmd_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??RCC_BackupResetCmd_0
        MOVW     R1,#+1246
        LDR.N    R0,??DataTable30_5
        BL       assert_failed
??RCC_BackupResetCmd_0:
        LDR.N    R0,??DataTable30_27  ;; 0x42420440
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_ClockSecuritySystemCmd:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??RCC_ClockSecuritySystemCmd_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??RCC_ClockSecuritySystemCmd_0
        MOVW     R1,#+1259
        LDR.N    R0,??DataTable30_5
        BL       assert_failed
??RCC_ClockSecuritySystemCmd_0:
        LDR.N    R0,??DataTable30_28  ;; 0x4242004c
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_MCOConfig:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??RCC_MCOConfig_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+5
        BEQ.N    ??RCC_MCOConfig_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+4
        BEQ.N    ??RCC_MCOConfig_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+6
        BEQ.N    ??RCC_MCOConfig_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+7
        BEQ.N    ??RCC_MCOConfig_0
        MOVW     R1,#+1291
        LDR.N    R0,??DataTable30_5
        BL       assert_failed
??RCC_MCOConfig_0:
        LDR.N    R0,??DataTable30_29  ;; 0x40021007
        STRB     R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_GetFlagStatus:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        MOVS     R6,#+0
        MOVS     R7,#+0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+33
        BEQ.N    ??RCC_GetFlagStatus_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+49
        BEQ.N    ??RCC_GetFlagStatus_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+57
        BEQ.N    ??RCC_GetFlagStatus_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+65
        BEQ.N    ??RCC_GetFlagStatus_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+97
        BEQ.N    ??RCC_GetFlagStatus_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+122
        BEQ.N    ??RCC_GetFlagStatus_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+123
        BEQ.N    ??RCC_GetFlagStatus_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+124
        BEQ.N    ??RCC_GetFlagStatus_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+125
        BEQ.N    ??RCC_GetFlagStatus_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+126
        BEQ.N    ??RCC_GetFlagStatus_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+127
        BEQ.N    ??RCC_GetFlagStatus_0
        MOVW     R1,#+1338
        LDR.N    R0,??DataTable30_5
        BL       assert_failed
??RCC_GetFlagStatus_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSRS     R0,R4,#+5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R5,R0
        CMP      R5,#+1
        BNE.N    ??RCC_GetFlagStatus_1
        LDR.N    R0,??DataTable30  ;; 0x40021000
        LDR      R0,[R0, #+0]
        MOVS     R6,R0
        B.N      ??RCC_GetFlagStatus_2
??RCC_GetFlagStatus_1:
        CMP      R5,#+2
        BNE.N    ??RCC_GetFlagStatus_3
        LDR.N    R0,??DataTable30_10  ;; 0x40021020
        LDR      R0,[R0, #+0]
        MOVS     R6,R0
        B.N      ??RCC_GetFlagStatus_2
??RCC_GetFlagStatus_3:
        LDR.N    R0,??DataTable30_30  ;; 0x40021024
        LDR      R0,[R0, #+0]
        MOVS     R6,R0
??RCC_GetFlagStatus_2:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ANDS     R0,R4,#0x1F
        MOVS     R5,R0
        MOVS     R0,#+1
        LSLS     R0,R0,R5
        TST      R6,R0
        BEQ.N    ??RCC_GetFlagStatus_4
        MOVS     R0,#+1
        MOVS     R7,R0
        B.N      ??RCC_GetFlagStatus_5
??RCC_GetFlagStatus_4:
        MOVS     R0,#+0
        MOVS     R7,R0
??RCC_GetFlagStatus_5:
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_ClearFlag:
        LDR.N    R0,??DataTable30_30  ;; 0x40021024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000000
        LDR.N    R1,??DataTable30_30  ;; 0x40021024
        STR      R0,[R1, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_GetITStatus:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??RCC_GetITStatus_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+2
        BEQ.N    ??RCC_GetITStatus_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+4
        BEQ.N    ??RCC_GetITStatus_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+8
        BEQ.N    ??RCC_GetITStatus_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+16
        BEQ.N    ??RCC_GetITStatus_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+128
        BEQ.N    ??RCC_GetITStatus_0
        MOVW     R1,#+1412
        LDR.N    R0,??DataTable30_5
        BL       assert_failed
??RCC_GetITStatus_0:
        LDR.N    R0,??DataTable30_4  ;; 0x40021008
        LDR      R0,[R0, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        TST      R0,R4
        BEQ.N    ??RCC_GetITStatus_1
        MOVS     R0,#+1
        MOVS     R5,R0
        B.N      ??RCC_GetITStatus_2
??RCC_GetITStatus_1:
        MOVS     R0,#+0
        MOVS     R5,R0
??RCC_GetITStatus_2:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_ClearITPendingBit:
        PUSH     {R4,LR}
        MOVS     R4,R0
        MOVS     R0,#+96
        TST      R4,R0
        BNE.N    ??RCC_ClearITPendingBit_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??RCC_ClearITPendingBit_1
??RCC_ClearITPendingBit_0:
        MOVW     R1,#+1457
        LDR.N    R0,??DataTable30_5
        BL       assert_failed
??RCC_ClearITPendingBit_1:
        LDR.N    R0,??DataTable30_31  ;; 0x4002100a
        STRB     R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30:
        DC32     0x40021000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_1:
        DC32     0x40021004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_2:
        DC32     0xf8ff0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_3:
        DC32     0xfef6ffff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_4:
        DC32     0x40021008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_5:
        DC32     `?<Constant "D:\\\\zWk.Src\\\\Mango-M32-...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_6:
        DC32     0x42420000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_7:
        DC32     0x42420060

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_8:
        DC32     0x40021009

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_9:
        DC32     0x424200d8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_10:
        DC32     0x40021020

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_11:
        DC32     0x42420480

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_12:
        DC32     0x4242043c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_13:
        DC32     0x7a1200

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_14:
        DC32     0xb71b00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_15:
        DC32     0x3d0900

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_16:
        DC32     0x5b8d80

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_17:
        DC32     APBAHBPrescTable

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_18:
        DC32     ADCPrescTable

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_19:
        DC32     0xfffffaa8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_20:
        DC32     0x40021014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_21:
        DC32     0xffc00002

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_22:
        DC32     0x40021018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_23:
        DC32     0x81013600

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_24:
        DC32     0x4002101c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_25:
        DC32     0x4002100c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_26:
        DC32     0x40021010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_27:
        DC32     0x42420440

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_28:
        DC32     0x4242004c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_29:
        DC32     0x40021007

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_30:
        DC32     0x40021024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_31:
        DC32     0x4002100a

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
        DC8 78H, 5FH, 72H, 63H, 63H, 2EH, 63H, 0

        END
// 
//    20 bytes in section .data
//   112 bytes in section .rodata
// 2 434 bytes in section .text
// 
// 2 434 bytes of CODE  memory
//   112 bytes of CONST memory
//    20 bytes of DATA  memory
//
//Errors: none
//Warnings: none
