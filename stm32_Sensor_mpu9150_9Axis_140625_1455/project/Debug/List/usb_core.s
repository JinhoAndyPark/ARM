///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.6.53336/W32 for ARM    25/Jun/2014  14:55:05 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    Libraries\STM32_USB-FS-Device_Driver\src\usb_core.c     /
//    Command line =  D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    Libraries\STM32_USB-FS-Device_Driver\src\usb_core.c -D  /
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
//                    project\Debug\List\usb_core.s                           /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME usb_core

        #define SHT_PROGBITS 0x1

        EXTERN ByteSwap
        EXTERN ClearDTOG_RX
        EXTERN ClearDTOG_TX
        EXTERN Device_Property
        EXTERN Device_Table
        EXTERN GetEPRxAddr
        EXTERN GetEPTxAddr
        EXTERN PMAToUserBufferCopy
        EXTERN SaveRState
        EXTERN SaveTState
        EXTERN SetEPRxCount
        EXTERN SetEPTxCount
        EXTERN SetEPTxStatus
        EXTERN UserToPMABufferCopy
        EXTERN pInformation
        EXTERN pProperty
        EXTERN pUser_Standard_Requests

        PUBLIC Data_Mul_MaxPacketSize
        PUBLIC In0_Process
        PUBLIC NOP_Process
        PUBLIC Out0_Process
        PUBLIC Post0_Process
        PUBLIC SetDeviceAddress
        PUBLIC Setup0_Process
        PUBLIC Standard_ClearFeature
        PUBLIC Standard_GetConfiguration
        PUBLIC Standard_GetDescriptorData
        PUBLIC Standard_GetInterface
        PUBLIC Standard_GetStatus
        PUBLIC Standard_SetConfiguration
        PUBLIC Standard_SetDeviceFeature
        PUBLIC Standard_SetEndPointFeature
        PUBLIC Standard_SetInterface
        PUBLIC StatusInfo


        SECTION `.bss`:DATA:REORDER:NOROOT(2)
StatusInfo:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
Data_Mul_MaxPacketSize:
        DS8 1

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Standard_GetConfiguration:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+0
        BNE.N    ??Standard_GetConfiguration_0
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        STRH     R1,[R0, #+16]
        MOVS     R0,#+0
        B.N      ??Standard_GetConfiguration_1
??Standard_GetConfiguration_0:
        LDR.W    R0,??DataTable15_1
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+0]
        BLX      R0
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+10
??Standard_GetConfiguration_1:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Standard_SetConfiguration:
        PUSH     {R7,LR}
        LDR.W    R0,??DataTable15_2
        LDRB     R0,[R0, #+1]
        LDR.W    R1,??DataTable15
        LDR      R1,[R1, #+0]
        LDRB     R1,[R1, #+3]
        CMP      R0,R1
        BCC.N    ??Standard_SetConfiguration_0
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+2]
        CMP      R0,#+0
        BNE.N    ??Standard_SetConfiguration_0
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRH     R0,[R0, #+4]
        CMP      R0,#+0
        BNE.N    ??Standard_SetConfiguration_0
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable15
        LDR      R1,[R1, #+0]
        LDRB     R1,[R1, #+3]
        STRB     R1,[R0, #+10]
        LDR.W    R0,??DataTable15_1
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+4]
        BLX      R0
        MOVS     R0,#+0
        B.N      ??Standard_SetConfiguration_1
??Standard_SetConfiguration_0:
        MOVS     R0,#+2
??Standard_SetConfiguration_1:
        POP      {R1,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Standard_GetInterface:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+0
        BNE.N    ??Standard_GetInterface_0
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        STRH     R1,[R0, #+16]
        MOVS     R0,#+0
        B.N      ??Standard_GetInterface_1
??Standard_GetInterface_0:
        LDR.W    R0,??DataTable15_1
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+8]
        BLX      R0
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+12
??Standard_GetInterface_1:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Standard_SetInterface:
        PUSH     {R4,LR}
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+3]
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+5]
        LDR.W    R2,??DataTable17
        LDR      R2,[R2, #+0]
        LDR      R2,[R2, #+24]
        BLX      R2
        MOVS     R4,R0
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+10]
        CMP      R0,#+0
        BEQ.N    ??Standard_SetInterface_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??Standard_SetInterface_1
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+4]
        CMP      R0,#+0
        BNE.N    ??Standard_SetInterface_1
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+2]
        CMP      R0,#+0
        BEQ.N    ??Standard_SetInterface_2
??Standard_SetInterface_1:
        MOVS     R0,#+2
        B.N      ??Standard_SetInterface_3
??Standard_SetInterface_2:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??Standard_SetInterface_0
        LDR.W    R0,??DataTable15_1
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+12]
        BLX      R0
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable15
        LDR      R1,[R1, #+0]
        LDRB     R1,[R1, #+5]
        STRB     R1,[R0, #+11]
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable15
        LDR      R1,[R1, #+0]
        LDRB     R1,[R1, #+3]
        STRB     R1,[R0, #+12]
        MOVS     R0,#+0
        B.N      ??Standard_SetInterface_3
??Standard_SetInterface_0:
        MOVS     R0,#+2
??Standard_SetInterface_3:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Standard_GetStatus:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+0
        BNE.N    ??Standard_GetStatus_0
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        STRH     R1,[R0, #+16]
        MOVS     R0,#+0
        B.N      ??Standard_GetStatus_1
??Standard_GetStatus_0:
        LDR.W    R0,??DataTable17_1
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+127
        TST      R0,R1
        BNE.N    ??Standard_GetStatus_2
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+9]
        LSLS     R1,R0,#+26
        BPL.N    ??Standard_GetStatus_3
        LDR.W    R1,??DataTable17_1
        LDRB     R1,[R1, #+0]
        ORRS     R1,R1,#0x2
        LDR.W    R2,??DataTable17_1
        STRB     R1,[R2, #+0]
        B.N      ??Standard_GetStatus_4
??Standard_GetStatus_3:
        LDR.W    R1,??DataTable17_1
        LDRB     R1,[R1, #+0]
        ANDS     R1,R1,#0xFD
        LDR.W    R2,??DataTable17_1
        STRB     R1,[R2, #+0]
??Standard_GetStatus_4:
        LSLS     R1,R0,#+25
        BPL.N    ??Standard_GetStatus_5
        LDR.W    R1,??DataTable17_1
        LDRB     R1,[R1, #+0]
        ORRS     R1,R1,#0x1
        LDR.W    R2,??DataTable17_1
        STRB     R1,[R2, #+0]
        B.N      ??Standard_GetStatus_6
??Standard_GetStatus_5:
        LDR.W    R1,??DataTable17_1
        LDRB     R1,[R1, #+0]
        ANDS     R1,R1,#0xFE
        LDR.W    R2,??DataTable17_1
        STRB     R1,[R2, #+0]
        B.N      ??Standard_GetStatus_6
??Standard_GetStatus_2:
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0x7F
        CMP      R0,#+1
        BNE.N    ??Standard_GetStatus_7
        LDR.W    R0,??DataTable17_1
        B.N      ??Standard_GetStatus_1
??Standard_GetStatus_7:
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0x7F
        CMP      R0,#+2
        BNE.N    ??Standard_GetStatus_8
        LDR.W    R1,??DataTable15
        LDR      R1,[R1, #+0]
        LDRB     R1,[R1, #+5]
        ANDS     R2,R1,#0xF
        MOVS     R0,R2
        LSLS     R2,R1,#+24
        BPL.N    ??Standard_GetStatus_9
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable17_2  ;; 0x40005c00
        LDR      R2,[R2, R0, LSL #+2]
        ANDS     R2,R2,#0x30
        CMP      R2,#+16
        BNE.N    ??Standard_GetStatus_6
        LDR.W    R2,??DataTable17_1
        LDRB     R2,[R2, #+0]
        ORRS     R2,R2,#0x1
        LDR.W    R3,??DataTable17_1
        STRB     R2,[R3, #+0]
        B.N      ??Standard_GetStatus_6
??Standard_GetStatus_9:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable17_2  ;; 0x40005c00
        LDR      R2,[R2, R0, LSL #+2]
        ANDS     R2,R2,#0x3000
        CMP      R2,#+4096
        BNE.N    ??Standard_GetStatus_6
        LDR.W    R2,??DataTable17_1
        LDRB     R2,[R2, #+0]
        ORRS     R2,R2,#0x1
        LDR.W    R3,??DataTable17_1
        STRB     R2,[R3, #+0]
        B.N      ??Standard_GetStatus_6
??Standard_GetStatus_8:
        MOVS     R0,#+0
        B.N      ??Standard_GetStatus_1
??Standard_GetStatus_6:
        LDR.W    R0,??DataTable15_1
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+16]
        BLX      R0
        LDR.W    R0,??DataTable17_1
??Standard_GetStatus_1:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Standard_ClearFeature:
        PUSH     {R3-R9,LR}
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+0]
        ANDS     R4,R0,#0x7F
        CMP      R4,#+0
        BNE.N    ??Standard_ClearFeature_0
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+9]
        ANDS     R0,R0,#0xDF
        LDR.W    R1,??DataTable15
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+9]
        MOVS     R0,#+0
        B.N      ??Standard_ClearFeature_1
??Standard_ClearFeature_0:
        CMP      R4,#+2
        BNE.W    ??Standard_ClearFeature_2
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRH     R0,[R0, #+2]
        CMP      R0,#+0
        BNE.N    ??Standard_ClearFeature_3
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+4]
        CMP      R0,#+0
        BEQ.N    ??Standard_ClearFeature_4
??Standard_ClearFeature_3:
        MOVS     R0,#+2
        B.N      ??Standard_ClearFeature_1
??Standard_ClearFeature_4:
        LDR.W    R0,??DataTable15_2
        MOVS     R6,R0
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+5]
        MOV      R8,R0
        BICS     R0,R8,#0x80
        MOV      R9,R0
        MOV      R7,R9
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+5]
        LSLS     R0,R0,#+24
        BPL.N    ??Standard_ClearFeature_5
        LDR.W    R0,??DataTable17_2  ;; 0x40005c00
        LDR      R0,[R0, R7, LSL #+2]
        ANDS     R0,R0,#0x30
        MOVS     R5,R0
        B.N      ??Standard_ClearFeature_6
??Standard_ClearFeature_5:
        LDR.W    R0,??DataTable17_2  ;; 0x40005c00
        LDR      R0,[R0, R7, LSL #+2]
        ANDS     R0,R0,#0x3000
        MOVS     R5,R0
??Standard_ClearFeature_6:
        LDRB     R0,[R6, #+0]
        CMP      R9,R0
        BCS.N    ??Standard_ClearFeature_7
        CMP      R5,#+0
        BEQ.N    ??Standard_ClearFeature_7
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+10]
        CMP      R0,#+0
        BNE.N    ??Standard_ClearFeature_8
??Standard_ClearFeature_7:
        MOVS     R0,#+2
        B.N      ??Standard_ClearFeature_1
??Standard_ClearFeature_8:
        MOV      R0,R8
        LSLS     R0,R0,#+24
        BPL.N    ??Standard_ClearFeature_9
        LDR.W    R0,??DataTable17_2  ;; 0x40005c00
        LDR      R0,[R0, R7, LSL #+2]
        ANDS     R0,R0,#0x30
        CMP      R0,#+16
        BNE.N    ??Standard_ClearFeature_10
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       ClearDTOG_TX
        MOVS     R1,#+48
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       SetEPTxStatus
        B.N      ??Standard_ClearFeature_10
??Standard_ClearFeature_9:
        LDR.W    R0,??DataTable17_2  ;; 0x40005c00
        LDR      R0,[R0, R7, LSL #+2]
        ANDS     R0,R0,#0x3000
        CMP      R0,#+4096
        BNE.N    ??Standard_ClearFeature_10
        CMP      R7,#+0
        BNE.N    ??Standard_ClearFeature_11
        LDR.W    R0,??DataTable17_3
        LDRB     R1,[R0, #+44]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       SetEPRxCount
        LDR.W    R1,??DataTable17_2  ;; 0x40005c00
        LDR      R1,[R1, R7, LSL #+2]
        MOVW     R2,#+49039
        ANDS     R1,R2,R1
        MOVS     R0,R1
        EORS     R0,R0,#0x1000
        EORS     R0,R0,#0x2000
        LDR.W    R1,??DataTable17_2  ;; 0x40005c00
        ORR      R0,R0,#0x8000
        ORRS     R0,R0,#0x80
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        STR      R0,[R1, R7, LSL #+2]
        B.N      ??Standard_ClearFeature_10
??Standard_ClearFeature_11:
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       ClearDTOG_RX
        LDR.W    R1,??DataTable17_2  ;; 0x40005c00
        LDR      R1,[R1, R7, LSL #+2]
        MOVW     R2,#+49039
        ANDS     R1,R2,R1
        MOVS     R0,R1
        EORS     R0,R0,#0x1000
        EORS     R0,R0,#0x2000
        LDR.W    R1,??DataTable17_2  ;; 0x40005c00
        ORR      R0,R0,#0x8000
        ORRS     R0,R0,#0x80
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        STR      R0,[R1, R7, LSL #+2]
??Standard_ClearFeature_10:
        LDR.W    R0,??DataTable15_1
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+20]
        BLX      R0
        MOVS     R0,#+0
        B.N      ??Standard_ClearFeature_1
??Standard_ClearFeature_2:
        MOVS     R0,#+2
??Standard_ClearFeature_1:
        POP      {R1,R4-R9,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Standard_SetEndPointFeature:
        PUSH     {R3-R7,LR}
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+5]
        MOVS     R4,R0
        BICS     R0,R4,#0x80
        MOVS     R6,R0
        MOVS     R5,R6
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+5]
        LSLS     R0,R0,#+24
        BPL.N    ??Standard_SetEndPointFeature_0
        LDR.W    R0,??DataTable17_2  ;; 0x40005c00
        LDR      R0,[R0, R5, LSL #+2]
        ANDS     R0,R0,#0x30
        MOVS     R7,R0
        B.N      ??Standard_SetEndPointFeature_1
??Standard_SetEndPointFeature_0:
        LDR.W    R0,??DataTable17_2  ;; 0x40005c00
        LDR      R0,[R0, R5, LSL #+2]
        ANDS     R0,R0,#0x3000
        MOVS     R7,R0
??Standard_SetEndPointFeature_1:
        LDR.W    R0,??DataTable15_2
        LDRB     R0,[R0, #+0]
        CMP      R5,R0
        BCS.N    ??Standard_SetEndPointFeature_2
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRH     R0,[R0, #+2]
        CMP      R0,#+0
        BNE.N    ??Standard_SetEndPointFeature_2
        CMP      R7,#+0
        BEQ.N    ??Standard_SetEndPointFeature_2
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+10]
        CMP      R0,#+0
        BNE.N    ??Standard_SetEndPointFeature_3
??Standard_SetEndPointFeature_2:
        MOVS     R0,#+2
        B.N      ??Standard_SetEndPointFeature_4
??Standard_SetEndPointFeature_3:
        MOVS     R0,R4
        LSLS     R0,R0,#+24
        BPL.N    ??Standard_SetEndPointFeature_5
        LDR.W    R1,??DataTable17_2  ;; 0x40005c00
        LDR      R1,[R1, R5, LSL #+2]
        MOVW     R2,#+36799
        ANDS     R1,R2,R1
        MOVS     R0,R1
        EORS     R0,R0,#0x10
        LDR.W    R1,??DataTable17_2  ;; 0x40005c00
        ORR      R0,R0,#0x8000
        ORRS     R0,R0,#0x80
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        STR      R0,[R1, R5, LSL #+2]
        B.N      ??Standard_SetEndPointFeature_6
??Standard_SetEndPointFeature_5:
        LDR.W    R1,??DataTable17_2  ;; 0x40005c00
        LDR      R1,[R1, R5, LSL #+2]
        MOVW     R2,#+49039
        ANDS     R1,R2,R1
        MOVS     R0,R1
        EORS     R0,R0,#0x1000
        LDR.W    R1,??DataTable17_2  ;; 0x40005c00
        ORR      R0,R0,#0x8000
        ORRS     R0,R0,#0x80
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        STR      R0,[R1, R5, LSL #+2]
??Standard_SetEndPointFeature_6:
        LDR.W    R0,??DataTable15_1
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+24]
        BLX      R0
        MOVS     R0,#+0
??Standard_SetEndPointFeature_4:
        POP      {R1,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Standard_SetDeviceFeature:
        PUSH     {R7,LR}
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+9]
        ORRS     R0,R0,#0x20
        LDR.W    R1,??DataTable15
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+9]
        LDR.W    R0,??DataTable15_1
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+28]
        BLX      R0
        MOVS     R0,#+0
        POP      {R1,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Standard_GetDescriptorData:
        PUSH     {R4}
        MOVS     R2,R0
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRH     R0,[R0, #+18]
        MOVS     R3,R0
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        CMP      R2,#+0
        BNE.N    ??Standard_GetDescriptorData_0
        LDRH     R0,[R1, #+4]
        SUBS     R0,R0,R3
        LDR.W    R4,??DataTable15
        LDR      R4,[R4, #+0]
        STRH     R0,[R4, #+16]
        MOVS     R0,#+0
        B.N      ??Standard_GetDescriptorData_1
??Standard_GetDescriptorData_0:
        LDR      R0,[R1, #+0]
        ADDS     R0,R3,R0
??Standard_GetDescriptorData_1:
        POP      {R4}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DataStageOut:
        PUSH     {R3-R7,LR}
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        ADDS     R4,R0,#+16
        LDRH     R0,[R4, #+0]
        MOVS     R5,R0
        LDR      R0,[R4, #+8]
        CMP      R0,#+0
        BEQ.N    ??DataStageOut_0
        CMP      R5,#+0
        BEQ.N    ??DataStageOut_0
        LDRH     R0,[R4, #+4]
        MOVS     R7,R0
        CMP      R5,R7
        BCS.N    ??DataStageOut_1
        MOVS     R7,R5
??DataStageOut_1:
        MOVS     R0,R7
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LDR      R1,[R4, #+8]
        BLX      R1
        MOVS     R6,R0
        LDRH     R0,[R4, #+0]
        SUBS     R0,R0,R7
        STRH     R0,[R4, #+0]
        LDRH     R0,[R4, #+2]
        ADDS     R0,R7,R0
        STRH     R0,[R4, #+2]
        MOVS     R0,#+0
        BL       GetEPRxAddr
        MOVS     R2,R7
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R1,R0
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R6
        BL       PMAToUserBufferCopy
??DataStageOut_0:
        LDRH     R0,[R4, #+0]
        CMP      R0,#+0
        BEQ.N    ??DataStageOut_2
        LDR.W    R0,??DataTable17_4
        MOV      R1,#+12288
        STRH     R1,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       SetEPTxCount
        LDR.W    R0,??DataTable17_5
        MOVS     R1,#+48
        STRH     R1,[R0, #+0]
??DataStageOut_2:
        LDRH     R0,[R4, #+0]
        LDRH     R1,[R4, #+4]
        CMP      R0,R1
        BCC.N    ??DataStageOut_3
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        MOVS     R1,#+3
        STRB     R1,[R0, #+8]
        B.N      ??DataStageOut_4
??DataStageOut_3:
        LDRH     R0,[R4, #+0]
        CMP      R0,#+1
        BCC.N    ??DataStageOut_5
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        MOVS     R1,#+5
        STRB     R1,[R0, #+8]
        B.N      ??DataStageOut_4
??DataStageOut_5:
        LDRH     R0,[R4, #+0]
        CMP      R0,#+0
        BNE.N    ??DataStageOut_4
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        MOVS     R1,#+6
        STRB     R1,[R0, #+8]
        LDR.W    R0,??DataTable17_6  ;; 0x40005c50
        LDR      R0,[R0, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LDR.W    R1,??DataTable17_7  ;; 0x40006004
        MOVS     R2,#+0
        STR      R2,[R1, R0, LSL #+1]
        LDR.W    R0,??DataTable17_5
        MOVS     R1,#+48
        STRH     R1,[R0, #+0]
??DataStageOut_4:
        POP      {R0,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DataStageIn:
        PUSH     {R4-R8,LR}
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        ADDS     R4,R0,#+16
        LDRH     R5,[R4, #+0]
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRB     R6,[R0, #+8]
        CMP      R5,#+0
        BNE.N    ??DataStageIn_0
        CMP      R6,#+4
        BNE.N    ??DataStageIn_0
        LDR.W    R0,??DataTable17_8
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??DataStageIn_1
        LDR.W    R0,??DataTable17_6  ;; 0x40005c50
        LDR      R0,[R0, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LDR.W    R1,??DataTable17_7  ;; 0x40006004
        MOVS     R2,#+0
        STR      R2,[R1, R0, LSL #+1]
        LDR.W    R0,??DataTable17_5
        MOVS     R1,#+48
        STRH     R1,[R0, #+0]
        MOVS     R0,#+4
        MOVS     R6,R0
        LDR.W    R0,??DataTable17_8
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        B.N      ??DataStageIn_2
??DataStageIn_1:
        MOVS     R0,#+7
        MOVS     R6,R0
        LDR.W    R0,??DataTable17_5
        MOVS     R1,#+16
        STRH     R1,[R0, #+0]
??DataStageIn_2:
        B.N      ??DataStageIn_3
??DataStageIn_0:
        LDRH     R0,[R4, #+4]
        MOV      R8,R0
        CMP      R8,R5
        BCC.N    ??DataStageIn_4
        MOVS     R6,#+4
        B.N      ??DataStageIn_5
??DataStageIn_4:
        MOVS     R6,#+2
??DataStageIn_5:
        CMP      R5,R8
        BCS.N    ??DataStageIn_6
        MOV      R8,R5
??DataStageIn_6:
        MOV      R0,R8
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LDR      R1,[R4, #+8]
        BLX      R1
        MOVS     R7,R0
        MOVS     R0,#+0
        BL       GetEPTxAddr
        MOV      R2,R8
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R1,R0
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R7
        BL       UserToPMABufferCopy
        MOV      R1,R8
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+0
        BL       SetEPTxCount
        LDRH     R0,[R4, #+0]
        SUBS     R0,R0,R8
        STRH     R0,[R4, #+0]
        LDRH     R0,[R4, #+2]
        ADDS     R0,R8,R0
        STRH     R0,[R4, #+2]
        LDR.W    R0,??DataTable17_5
        MOVS     R1,#+48
        STRH     R1,[R0, #+0]
        LDR.W    R0,??DataTable17_4
        MOV      R1,#+12288
        STRH     R1,[R0, #+0]
??DataStageIn_3:
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        STRB     R6,[R0, #+8]
        POP      {R4-R8,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
NoData_Setup0:
        PUSH     {R4-R6,LR}
        MOVS     R4,#+2
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRB     R5,[R0, #+1]
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+127
        TST      R0,R1
        BNE.N    ??NoData_Setup0_0
        CMP      R5,#+9
        BNE.N    ??NoData_Setup0_1
        BL       Standard_SetConfiguration
        MOVS     R4,R0
        B.N      ??NoData_Setup0_2
??NoData_Setup0_1:
        CMP      R5,#+5
        BNE.N    ??NoData_Setup0_3
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+3]
        CMP      R0,#+128
        BCS.N    ??NoData_Setup0_4
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+2]
        CMP      R0,#+0
        BNE.N    ??NoData_Setup0_4
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRH     R0,[R0, #+4]
        CMP      R0,#+0
        BNE.N    ??NoData_Setup0_4
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+10]
        CMP      R0,#+0
        BEQ.N    ??NoData_Setup0_5
??NoData_Setup0_4:
        MOVS     R0,#+8
        MOVS     R6,R0
        B.N      ??NoData_Setup0_6
??NoData_Setup0_5:
        MOVS     R0,#+0
        MOVS     R4,R0
        B.N      ??NoData_Setup0_2
??NoData_Setup0_3:
        CMP      R5,#+3
        BNE.N    ??NoData_Setup0_7
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+3]
        CMP      R0,#+1
        BNE.N    ??NoData_Setup0_8
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRH     R0,[R0, #+4]
        CMP      R0,#+0
        BNE.N    ??NoData_Setup0_8
        BL       Standard_SetDeviceFeature
        MOVS     R4,R0
        B.N      ??NoData_Setup0_2
??NoData_Setup0_8:
        MOVS     R0,#+2
        MOVS     R4,R0
        B.N      ??NoData_Setup0_2
??NoData_Setup0_7:
        CMP      R5,#+1
        BNE.N    ??NoData_Setup0_2
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+3]
        CMP      R0,#+1
        BNE.N    ??NoData_Setup0_9
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRH     R0,[R0, #+4]
        CMP      R0,#+0
        BNE.N    ??NoData_Setup0_9
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+9]
        LSLS     R0,R0,#+26
        BPL.N    ??NoData_Setup0_9
        BL       Standard_ClearFeature
        MOVS     R4,R0
        B.N      ??NoData_Setup0_2
??NoData_Setup0_9:
        MOVS     R0,#+2
        MOVS     R4,R0
        B.N      ??NoData_Setup0_2
??NoData_Setup0_0:
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0x7F
        CMP      R0,#+1
        BNE.N    ??NoData_Setup0_10
        CMP      R5,#+11
        BNE.N    ??NoData_Setup0_2
        BL       Standard_SetInterface
        MOVS     R4,R0
        B.N      ??NoData_Setup0_2
??NoData_Setup0_10:
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0x7F
        CMP      R0,#+2
        BNE.N    ??NoData_Setup0_11
        CMP      R5,#+1
        BNE.N    ??NoData_Setup0_12
        BL       Standard_ClearFeature
        MOVS     R4,R0
        B.N      ??NoData_Setup0_2
??NoData_Setup0_12:
        CMP      R5,#+3
        BNE.N    ??NoData_Setup0_2
        BL       Standard_SetEndPointFeature
        MOVS     R4,R0
        B.N      ??NoData_Setup0_2
??NoData_Setup0_11:
        MOVS     R0,#+2
        MOVS     R4,R0
??NoData_Setup0_2:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??NoData_Setup0_13
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable17
        LDR      R1,[R1, #+0]
        LDR      R1,[R1, #+20]
        BLX      R1
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+3
        BNE.N    ??NoData_Setup0_13
        MOVS     R0,#+9
        MOVS     R6,R0
        B.N      ??NoData_Setup0_6
??NoData_Setup0_13:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??NoData_Setup0_14
        MOVS     R0,#+8
        MOVS     R6,R0
        B.N      ??NoData_Setup0_6
??NoData_Setup0_14:
        MOVS     R0,#+6
        MOVS     R6,R0
        LDR.W    R0,??DataTable17_6  ;; 0x40005c50
        LDR      R0,[R0, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LDR.W    R1,??DataTable17_7  ;; 0x40006004
        MOVS     R2,#+0
        STR      R2,[R1, R0, LSL #+1]
        LDR.W    R0,??DataTable17_5
        MOVS     R1,#+48
        STRH     R1,[R0, #+0]
??NoData_Setup0_6:
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        STRB     R6,[R0, #+8]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Data_Setup0:
        PUSH     {R4-R10,LR}
        SUB      SP,SP,#+8
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRB     R6,[R0, #+1]
        MOVS     R0,#+0
        MOVS     R4,R0
        MOVS     R0,#+0
        MOV      R9,R0
        CMP      R6,#+6
        BNE.N    ??Data_Setup0_0
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+127
        TST      R0,R1
        BNE.W    ??Data_Setup0_1
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+2]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??Data_Setup0_2
        LDR.W    R1,??DataTable17
        LDR      R1,[R1, #+0]
        LDR      R1,[R1, #+28]
        MOVS     R4,R1
        B.N      ??Data_Setup0_1
??Data_Setup0_2:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BNE.N    ??Data_Setup0_3
        LDR.W    R1,??DataTable17
        LDR      R1,[R1, #+0]
        LDR      R1,[R1, #+32]
        MOVS     R4,R1
        B.N      ??Data_Setup0_1
??Data_Setup0_3:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+3
        BNE.W    ??Data_Setup0_1
        LDR.W    R1,??DataTable17
        LDR      R1,[R1, #+0]
        LDR      R1,[R1, #+36]
        MOVS     R4,R1
        B.N      ??Data_Setup0_1
??Data_Setup0_0:
        CMP      R6,#+0
        BNE.N    ??Data_Setup0_4
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRH     R0,[R0, #+2]
        CMP      R0,#+0
        BNE.N    ??Data_Setup0_4
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRH     R0,[R0, #+6]
        CMP      R0,#+2
        BNE.N    ??Data_Setup0_4
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+4]
        CMP      R0,#+0
        BNE.N    ??Data_Setup0_4
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+127
        TST      R0,R1
        BNE.N    ??Data_Setup0_5
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRH     R0,[R0, #+4]
        CMP      R0,#+0
        BNE.N    ??Data_Setup0_5
        LDR.W    R0,??DataTable17_9
        MOVS     R4,R0
        B.N      ??Data_Setup0_1
??Data_Setup0_5:
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0x7F
        CMP      R0,#+1
        BNE.N    ??Data_Setup0_6
        MOVS     R1,#+0
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+5]
        LDR.W    R2,??DataTable17
        LDR      R2,[R2, #+0]
        LDR      R2,[R2, #+24]
        BLX      R2
        CMP      R0,#+0
        BNE.N    ??Data_Setup0_1
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+10]
        CMP      R0,#+0
        BEQ.N    ??Data_Setup0_1
        LDR.W    R0,??DataTable17_9
        MOVS     R4,R0
        B.N      ??Data_Setup0_1
??Data_Setup0_6:
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0x7F
        CMP      R0,#+2
        BNE.N    ??Data_Setup0_1
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+5]
        ANDS     R0,R0,#0xF
        MOVS     R7,R0
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+5]
        ANDS     R0,R0,#0x70
        MOV      R8,R0
        LDR.N    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+5]
        LSLS     R0,R0,#+24
        BPL.N    ??Data_Setup0_7
        LDR.W    R0,??DataTable17_2  ;; 0x40005c00
        LDR      R0,[R0, R7, LSL #+2]
        ANDS     R0,R0,#0x30
        MOV      R10,R0
        B.N      ??Data_Setup0_8
??Data_Setup0_7:
        LDR.W    R0,??DataTable17_2  ;; 0x40005c00
        LDR      R0,[R0, R7, LSL #+2]
        ANDS     R0,R0,#0x3000
        MOV      R10,R0
??Data_Setup0_8:
        LDR.N    R0,??DataTable15_2
        LDRB     R0,[R0, #+0]
        CMP      R7,R0
        BCS.N    ??Data_Setup0_1
        CMP      R8,#+0
        BNE.N    ??Data_Setup0_1
        CMP      R10,#+0
        BEQ.N    ??Data_Setup0_1
        LDR.W    R0,??DataTable17_9
        MOVS     R4,R0
        B.N      ??Data_Setup0_1
??Data_Setup0_4:
        CMP      R6,#+8
        BNE.N    ??Data_Setup0_9
        LDR.N    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+127
        TST      R0,R1
        BNE.N    ??Data_Setup0_1
        LDR.W    R0,??DataTable17_10
        MOVS     R4,R0
        B.N      ??Data_Setup0_1
??Data_Setup0_9:
        CMP      R6,#+10
        BNE.N    ??Data_Setup0_1
        LDR.N    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0x7F
        CMP      R0,#+1
        BNE.N    ??Data_Setup0_1
        LDR.N    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+10]
        CMP      R0,#+0
        BEQ.N    ??Data_Setup0_1
        LDR.N    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRH     R0,[R0, #+2]
        CMP      R0,#+0
        BNE.N    ??Data_Setup0_1
        LDR.N    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+4]
        CMP      R0,#+0
        BNE.N    ??Data_Setup0_1
        LDR.N    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRH     R0,[R0, #+6]
        CMP      R0,#+1
        BNE.N    ??Data_Setup0_1
        MOVS     R1,#+0
        LDR.N    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+5]
        LDR.N    R2,??DataTable17
        LDR      R2,[R2, #+0]
        LDR      R2,[R2, #+24]
        BLX      R2
        CMP      R0,#+0
        BNE.N    ??Data_Setup0_1
        LDR.N    R0,??DataTable17_11
        MOVS     R4,R0
??Data_Setup0_1:
        MOVS     R0,R4
        CMP      R0,#+0
        BEQ.N    ??Data_Setup0_10
        LDR.N    R0,??DataTable15
        LDR      R0,[R0, #+0]
        STRH     R9,[R0, #+18]
        LDR.N    R0,??DataTable15
        LDR      R0,[R0, #+0]
        STR      R4,[R0, #+24]
        MOVS     R0,#+0
        BLX      R4
        MOVS     R0,#+0
        MOVS     R5,R0
        B.N      ??Data_Setup0_11
??Data_Setup0_10:
        LDR.N    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+1]
        LDR.N    R1,??DataTable17
        LDR      R1,[R1, #+0]
        LDR      R1,[R1, #+16]
        BLX      R1
        MOVS     R5,R0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+3
        BNE.N    ??Data_Setup0_11
        LDR.N    R0,??DataTable15
        LDR      R0,[R0, #+0]
        MOVS     R1,#+9
        STRB     R1,[R0, #+8]
        B.N      ??Data_Setup0_12
??Data_Setup0_11:
        LDR.N    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRH     R0,[R0, #+16]
        MOVW     R1,#+65535
        CMP      R0,R1
        BNE.N    ??Data_Setup0_13
        LDR.N    R0,??DataTable15
        LDR      R0,[R0, #+0]
        MOVS     R1,#+9
        STRB     R1,[R0, #+8]
        B.N      ??Data_Setup0_12
??Data_Setup0_13:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+2
        BEQ.N    ??Data_Setup0_14
        LDR.N    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRH     R0,[R0, #+16]
        CMP      R0,#+0
        BNE.N    ??Data_Setup0_15
??Data_Setup0_14:
        LDR.N    R0,??DataTable15
        LDR      R0,[R0, #+0]
        MOVS     R1,#+8
        STRB     R1,[R0, #+8]
        B.N      ??Data_Setup0_12
??Data_Setup0_15:
        LDR.N    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??Data_Setup0_16
        LDR.N    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRH     R0,[R0, #+6]
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
        LDR.N    R1,??DataTable15
        LDR      R1,[R1, #+0]
        LDRH     R1,[R1, #+16]
        CMP      R0,R1
        BCS.N    ??Data_Setup0_17
        LDR.N    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDR      R1,[SP, #+0]
        STRH     R1,[R0, #+16]
        B.N      ??Data_Setup0_18
??Data_Setup0_17:
        LDR.N    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRH     R0,[R0, #+16]
        LDR.N    R1,??DataTable15
        LDR      R1,[R1, #+0]
        LDRH     R1,[R1, #+6]
        CMP      R0,R1
        BCS.N    ??Data_Setup0_18
        LDR.N    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRH     R0,[R0, #+16]
        LDR.N    R1,??DataTable17
        LDR      R1,[R1, #+0]
        LDRB     R1,[R1, #+44]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BCS.N    ??Data_Setup0_19
        LDR.N    R0,??DataTable17_8
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        B.N      ??Data_Setup0_18
??Data_Setup0_19:
        LDR.N    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRH     R0,[R0, #+16]
        LDR.N    R1,??DataTable17
        LDR      R1,[R1, #+0]
        LDRB     R1,[R1, #+44]
        SDIV     R2,R0,R1
        MLS      R0,R1,R2,R0
        CMP      R0,#+0
        BNE.N    ??Data_Setup0_18
        LDR.N    R0,??DataTable17_8
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
??Data_Setup0_18:
        LDR.N    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable17
        LDR      R1,[R1, #+0]
        LDRB     R1,[R1, #+44]
        STRH     R1,[R0, #+20]
        BL       DataStageIn
        B.N      ??Data_Setup0_20
??Data_Setup0_16:
        LDR.N    R0,??DataTable15
        LDR      R0,[R0, #+0]
        MOVS     R1,#+3
        STRB     R1,[R0, #+8]
        LDR.N    R0,??DataTable17_4
        MOV      R1,#+12288
        STRH     R1,[R0, #+0]
??Data_Setup0_20:
??Data_Setup0_12:
        POP      {R0,R1,R4-R10,PC}  ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Setup0_Process:
        PUSH     {R3-R5,LR}
        MOVS     R5,#+1
        LDR.N    R0,??DataTable17_6  ;; 0x40005c50
        LDR      R0,[R0, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LDR.N    R1,??DataTable17_12  ;; 0x40006008
        LDRH     R0,[R1, R0, LSL #+1]
        LSLS     R0,R0,#+1
        ADD      R0,R0,#+1073741824
        ADDS     R0,R0,#+24576
        MOVS     R4,R0
        LDR.N    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+8]
        CMP      R0,#+9
        BEQ.N    ??Setup0_Process_0
        LDR.N    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRB     R1,[R4, #+0]
        STRB     R1,[R0, #+0]
        ADDS     R4,R4,#+1
        LDR.N    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRB     R1,[R4, #+0]
        STRB     R1,[R0, #+1]
        ADDS     R4,R4,#+1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        ADDS     R4,R4,R5, LSL #+1
        MOVS     R0,R4
        ADDS     R4,R0,#+2
        LDRH     R0,[R0, #+0]
        BL       ByteSwap
        LDR.N    R1,??DataTable15
        LDR      R1,[R1, #+0]
        STRH     R0,[R1, #+2]
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        ADDS     R4,R4,R5, LSL #+1
        MOVS     R0,R4
        ADDS     R4,R0,#+2
        LDRH     R0,[R0, #+0]
        BL       ByteSwap
        LDR.N    R1,??DataTable15
        LDR      R1,[R1, #+0]
        STRH     R0,[R1, #+4]
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        ADDS     R4,R4,R5, LSL #+1
        LDR.N    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRH     R1,[R4, #+0]
        STRH     R1,[R0, #+6]
??Setup0_Process_0:
        LDR.N    R0,??DataTable15
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        STRB     R1,[R0, #+8]
        LDR.N    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRH     R0,[R0, #+6]
        CMP      R0,#+0
        BNE.N    ??Setup0_Process_1
        BL       NoData_Setup0
        B.N      ??Setup0_Process_2
??Setup0_Process_1:
        BL       Data_Setup0
??Setup0_Process_2:
        BL       Post0_Process
        POP      {R1,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
In0_Process:
        PUSH     {R4,LR}
        LDR.N    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRB     R4,[R0, #+8]
        CMP      R4,#+2
        BEQ.N    ??In0_Process_0
        CMP      R4,#+4
        BNE.N    ??In0_Process_1
??In0_Process_0:
        BL       DataStageIn
        LDR.N    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+8]
        MOVS     R4,R0
        B.N      ??In0_Process_2
??In0_Process_1:
        CMP      R4,#+6
        BNE.N    ??In0_Process_3
        LDR.N    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+1]
        CMP      R0,#+5
        BNE.N    ??In0_Process_4
        LDR.N    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+127
        TST      R0,R1
        BNE.N    ??In0_Process_4
        LDR.N    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+3]
        BL       SetDeviceAddress
        LDR.N    R0,??DataTable15_1
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+32]
        BLX      R0
??In0_Process_4:
        LDR.N    R0,??DataTable17
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+8]
        BLX      R0
        MOVS     R0,#+8
        MOVS     R4,R0
        B.N      ??In0_Process_2
??In0_Process_3:
        MOVS     R0,#+8
        MOVS     R4,R0
??In0_Process_2:
        LDR.N    R0,??DataTable15
        LDR      R0,[R0, #+0]
        STRB     R4,[R0, #+8]
        BL       Post0_Process
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Out0_Process:
        PUSH     {R4,LR}
        LDR.N    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRB     R4,[R0, #+8]
        CMP      R4,#+2
        BEQ.N    ??Out0_Process_0
        CMP      R4,#+4
        BNE.N    ??Out0_Process_1
??Out0_Process_0:
        MOVS     R0,#+8
        MOVS     R4,R0
        B.N      ??Out0_Process_2
??Out0_Process_1:
        CMP      R4,#+3
        BEQ.N    ??Out0_Process_3
        CMP      R4,#+5
        BNE.N    ??Out0_Process_4
??Out0_Process_3:
        BL       DataStageOut
        LDR.N    R0,??DataTable15
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+8]
        MOVS     R4,R0
        B.N      ??Out0_Process_2
??Out0_Process_4:
        CMP      R4,#+7
        BNE.N    ??Out0_Process_5
        LDR.N    R0,??DataTable17
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+12]
        BLX      R0
        MOVS     R0,#+8
        MOVS     R4,R0
        B.N      ??Out0_Process_2
??Out0_Process_5:
        MOVS     R0,#+8
        MOVS     R4,R0
??Out0_Process_2:
        LDR.N    R0,??DataTable15
        LDR      R0,[R0, #+0]
        STRB     R4,[R0, #+8]
        BL       Post0_Process
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15:
        DC32     pInformation

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_1:
        DC32     pUser_Standard_Requests

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_2:
        DC32     Device_Table

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Post0_Process:
        PUSH     {R7,LR}
        LDR.N    R0,??DataTable17_3
        LDRB     R1,[R0, #+44]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+0
        BL       SetEPRxCount
        LDR.N    R0,??DataTable17_13
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+8]
        CMP      R0,#+8
        BNE.N    ??Post0_Process_0
        LDR.N    R0,??DataTable17_4
        MOV      R1,#+4096
        STRH     R1,[R0, #+0]
        LDR.N    R0,??DataTable17_5
        MOVS     R1,#+16
        STRH     R1,[R0, #+0]
??Post0_Process_0:
        LDR.N    R0,??DataTable17_13
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+8]
        CMP      R0,#+9
        BNE.N    ??Post0_Process_1
        MOVS     R0,#+1
        B.N      ??Post0_Process_2
??Post0_Process_1:
        MOVS     R0,#+0
??Post0_Process_2:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SetDeviceAddress:
        PUSH     {R4,R5}
        LDR.N    R2,??DataTable17_14
        LDRB     R2,[R2, #+0]
        MOVS     R3,#+0
        MOVS     R1,R3
??SetDeviceAddress_0:
        CMP      R1,R2
        BCS.N    ??SetDeviceAddress_1
        MOVS     R3,R1
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR.N    R4,??DataTable17_2  ;; 0x40005c00
        LDR      R3,[R4, R3, LSL #+2]
        MOVW     R4,#+36751
        ANDS     R3,R4,R3
        MOVS     R4,R1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ORRS     R3,R4,R3
        ORR      R3,R3,#0x8000
        ORRS     R3,R3,#0x80
        MOVS     R4,R1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R5,??DataTable17_2  ;; 0x40005c00
        STR      R3,[R5, R4, LSL #+2]
        ADDS     R1,R1,#+1
        B.N      ??SetDeviceAddress_0
??SetDeviceAddress_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ORRS     R3,R0,#0x80
        LDR.N    R4,??DataTable17_15  ;; 0x40005c4c
        STR      R3,[R4, #+0]
        POP      {R4,R5}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17:
        DC32     pProperty

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_1:
        DC32     StatusInfo

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_2:
        DC32     0x40005c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_3:
        DC32     Device_Property

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_4:
        DC32     SaveRState

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_5:
        DC32     SaveTState

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_6:
        DC32     0x40005c50

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_7:
        DC32     0x40006004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_8:
        DC32     Data_Mul_MaxPacketSize

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_9:
        DC32     Standard_GetStatus

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_10:
        DC32     Standard_GetConfiguration

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_11:
        DC32     Standard_GetInterface

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_12:
        DC32     0x40006008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_13:
        DC32     pInformation

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_14:
        DC32     Device_Table

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_15:
        DC32     0x40005c4c

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
NOP_Process:
        BX       LR               ;; return

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
//     5 bytes in section .bss
// 3 246 bytes in section .text
// 
// 3 246 bytes of CODE memory
//     5 bytes of DATA memory
//
//Errors: none
//Warnings: none
