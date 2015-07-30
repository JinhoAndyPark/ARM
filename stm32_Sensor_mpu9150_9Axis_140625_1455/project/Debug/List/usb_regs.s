///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.6.53336/W32 for ARM    25/Jun/2014  14:55:05 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    Libraries\STM32_USB-FS-Device_Driver\src\usb_regs.c     /
//    Command line =  D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    Libraries\STM32_USB-FS-Device_Driver\src\usb_regs.c -D  /
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
//                    project\Debug\List\usb_regs.s                           /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME usb_regs

        #define SHT_PROGBITS 0x1

        PUBLIC ByteSwap
        PUBLIC ClearDTOG_RX
        PUBLIC ClearDTOG_TX
        PUBLIC ClearEPDoubleBuff
        PUBLIC ClearEP_CTR_RX
        PUBLIC ClearEP_CTR_TX
        PUBLIC ClearEP_KIND
        PUBLIC Clear_Status_Out
        PUBLIC FreeUserBuffer
        PUBLIC GetBTABLE
        PUBLIC GetCNTR
        PUBLIC GetDADDR
        PUBLIC GetENDPOINT
        PUBLIC GetEPAddress
        PUBLIC GetEPDblBuf0Addr
        PUBLIC GetEPDblBuf0Count
        PUBLIC GetEPDblBuf1Addr
        PUBLIC GetEPDblBuf1Count
        PUBLIC GetEPDblBufDir
        PUBLIC GetEPRxAddr
        PUBLIC GetEPRxCount
        PUBLIC GetEPRxStatus
        PUBLIC GetEPTxAddr
        PUBLIC GetEPTxCount
        PUBLIC GetEPTxStatus
        PUBLIC GetEPType
        PUBLIC GetFNR
        PUBLIC GetISTR
        PUBLIC GetRxStallStatus
        PUBLIC GetTxStallStatus
        PUBLIC SetBTABLE
        PUBLIC SetCNTR
        PUBLIC SetDADDR
        PUBLIC SetDouBleBuffEPStall
        PUBLIC SetENDPOINT
        PUBLIC SetEPAddress
        PUBLIC SetEPCountRxReg
        PUBLIC SetEPDblBuf0Addr
        PUBLIC SetEPDblBuf0Count
        PUBLIC SetEPDblBuf1Addr
        PUBLIC SetEPDblBuf1Count
        PUBLIC SetEPDblBuffAddr
        PUBLIC SetEPDblBuffCount
        PUBLIC SetEPDoubleBuff
        PUBLIC SetEPRxAddr
        PUBLIC SetEPRxCount
        PUBLIC SetEPRxStatus
        PUBLIC SetEPRxValid
        PUBLIC SetEPTxAddr
        PUBLIC SetEPTxCount
        PUBLIC SetEPTxStatus
        PUBLIC SetEPTxValid
        PUBLIC SetEPType
        PUBLIC SetEP_KIND
        PUBLIC SetISTR
        PUBLIC Set_Status_Out
        PUBLIC ToWord
        PUBLIC ToggleDTOG_RX
        PUBLIC ToggleDTOG_TX


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SetCNTR:
        LDR.W    R1,??DataTable55  ;; 0x40005c40
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        STR      R0,[R1, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
GetCNTR:
        LDR.W    R0,??DataTable55  ;; 0x40005c40
        LDR      R0,[R0, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SetISTR:
        LDR.W    R1,??DataTable55_1  ;; 0x40005c44
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        STR      R0,[R1, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
GetISTR:
        LDR.W    R0,??DataTable55_1  ;; 0x40005c44
        LDR      R0,[R0, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
GetFNR:
        LDR.W    R0,??DataTable55_2  ;; 0x40005c48
        LDR      R0,[R0, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SetDADDR:
        LDR.W    R1,??DataTable55_3  ;; 0x40005c4c
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        STR      R0,[R1, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
GetDADDR:
        LDR.W    R0,??DataTable55_3  ;; 0x40005c4c
        LDR      R0,[R0, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SetBTABLE:
        MOVW     R1,#+65528
        ANDS     R1,R1,R0
        LDR.W    R2,??DataTable55_4  ;; 0x40005c50
        STR      R1,[R2, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
GetBTABLE:
        LDR.W    R0,??DataTable55_4  ;; 0x40005c50
        LDR      R0,[R0, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SetENDPOINT:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable55_5  ;; 0x40005c00
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        STR      R1,[R2, R0, LSL #+2]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
GetENDPOINT:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable55_5  ;; 0x40005c00
        LDR      R0,[R1, R0, LSL #+2]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SetEPType:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable55_5  ;; 0x40005c00
        LDR      R2,[R2, R0, LSL #+2]
        MOVW     R3,#+35215
        ANDS     R2,R3,R2
        ORRS     R2,R1,R2
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R3,??DataTable55_5  ;; 0x40005c00
        STR      R2,[R3, R0, LSL #+2]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
GetEPType:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable55_5  ;; 0x40005c00
        LDR      R0,[R1, R0, LSL #+2]
        ANDS     R0,R0,#0x600
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SetEPTxStatus:
        PUSH     {R4}
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R3,??DataTable55_5  ;; 0x40005c00
        LDR      R3,[R3, R0, LSL #+2]
        MOVW     R4,#+36799
        ANDS     R3,R4,R3
        MOVS     R2,R3
        LSLS     R3,R1,#+27
        BPL.N    ??SetEPTxStatus_0
        EORS     R2,R2,#0x10
??SetEPTxStatus_0:
        LSLS     R3,R1,#+26
        BPL.N    ??SetEPTxStatus_1
        EORS     R2,R2,#0x20
??SetEPTxStatus_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R3,??DataTable55_5  ;; 0x40005c00
        ORR      R2,R2,#0x8000
        ORRS     R2,R2,#0x80
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        STR      R2,[R3, R0, LSL #+2]
        POP      {R4}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SetEPRxStatus:
        PUSH     {R4}
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R3,??DataTable55_5  ;; 0x40005c00
        LDR      R3,[R3, R0, LSL #+2]
        MOVW     R4,#+49039
        ANDS     R3,R4,R3
        MOVS     R2,R3
        LSLS     R3,R1,#+19
        BPL.N    ??SetEPRxStatus_0
        EORS     R2,R2,#0x1000
??SetEPRxStatus_0:
        LSLS     R3,R1,#+18
        BPL.N    ??SetEPRxStatus_1
        EORS     R2,R2,#0x2000
??SetEPRxStatus_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R3,??DataTable55_5  ;; 0x40005c00
        ORR      R2,R2,#0x8000
        ORRS     R2,R2,#0x80
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        STR      R2,[R3, R0, LSL #+2]
        POP      {R4}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SetDouBleBuffEPStall:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       GetENDPOINT
        MOVS     R6,R0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BNE.N    ??SetDouBleBuffEPStall_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??DataTable55_5  ;; 0x40005c00
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        BICS     R1,R6,#0x1000
        STR      R1,[R0, R4, LSL #+2]
        B.N      ??SetDouBleBuffEPStall_1
??SetDouBleBuffEPStall_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+2
        BNE.N    ??SetDouBleBuffEPStall_1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??DataTable55_5  ;; 0x40005c00
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        BICS     R1,R6,#0x10
        STR      R1,[R0, R4, LSL #+2]
??SetDouBleBuffEPStall_1:
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
GetEPTxStatus:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable55_5  ;; 0x40005c00
        LDR      R0,[R1, R0, LSL #+2]
        ANDS     R0,R0,#0x30
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
GetEPRxStatus:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable55_5  ;; 0x40005c00
        LDR      R0,[R1, R0, LSL #+2]
        ANDS     R0,R0,#0x3000
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SetEPTxValid:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable55_5  ;; 0x40005c00
        LDR      R2,[R2, R0, LSL #+2]
        MOVW     R3,#+36799
        ANDS     R2,R3,R2
        MOVS     R1,R2
        EORS     R1,R1,#0x10
        EORS     R1,R1,#0x20
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable55_5  ;; 0x40005c00
        ORR      R1,R1,#0x8000
        ORRS     R1,R1,#0x80
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        STR      R1,[R2, R0, LSL #+2]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SetEPRxValid:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable55_5  ;; 0x40005c00
        LDR      R2,[R2, R0, LSL #+2]
        MOVW     R3,#+49039
        ANDS     R2,R3,R2
        MOVS     R1,R2
        EORS     R1,R1,#0x1000
        EORS     R1,R1,#0x2000
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable55_5  ;; 0x40005c00
        ORR      R1,R1,#0x8000
        ORRS     R1,R1,#0x80
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        STR      R1,[R2, R0, LSL #+2]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SetEP_KIND:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable55_5  ;; 0x40005c00
        LDR      R1,[R1, R0, LSL #+2]
        MOVW     R2,#+36751
        ANDS     R1,R2,R1
        ORR      R1,R1,#0x8100
        ORRS     R1,R1,#0x80
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable55_5  ;; 0x40005c00
        STR      R1,[R2, R0, LSL #+2]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ClearEP_KIND:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable55_5  ;; 0x40005c00
        LDR      R1,[R1, R0, LSL #+2]
        MOVW     R2,#+36495
        ANDS     R1,R2,R1
        ORR      R1,R1,#0x8000
        ORRS     R1,R1,#0x80
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable55_5  ;; 0x40005c00
        STR      R1,[R2, R0, LSL #+2]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Clear_Status_Out:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable55_5  ;; 0x40005c00
        LDR      R1,[R1, R0, LSL #+2]
        MOVW     R2,#+36495
        ANDS     R1,R2,R1
        ORR      R1,R1,#0x8000
        ORRS     R1,R1,#0x80
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable55_5  ;; 0x40005c00
        STR      R1,[R2, R0, LSL #+2]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Set_Status_Out:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable55_5  ;; 0x40005c00
        LDR      R1,[R1, R0, LSL #+2]
        MOVW     R2,#+36751
        ANDS     R1,R2,R1
        ORR      R1,R1,#0x8100
        ORRS     R1,R1,#0x80
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable55_5  ;; 0x40005c00
        STR      R1,[R2, R0, LSL #+2]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SetEPDoubleBuff:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable55_5  ;; 0x40005c00
        LDR      R1,[R1, R0, LSL #+2]
        MOVW     R2,#+36751
        ANDS     R1,R2,R1
        ORR      R1,R1,#0x8100
        ORRS     R1,R1,#0x80
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable55_5  ;; 0x40005c00
        STR      R1,[R2, R0, LSL #+2]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ClearEPDoubleBuff:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable55_5  ;; 0x40005c00
        LDR      R1,[R1, R0, LSL #+2]
        MOVW     R2,#+36495
        ANDS     R1,R2,R1
        ORR      R1,R1,#0x8000
        ORRS     R1,R1,#0x80
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable55_5  ;; 0x40005c00
        STR      R1,[R2, R0, LSL #+2]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
GetTxStallStatus:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable55_5  ;; 0x40005c00
        LDR      R0,[R1, R0, LSL #+2]
        ANDS     R0,R0,#0x30
        CMP      R0,#+16
        BNE.N    ??GetTxStallStatus_0
        MOVS     R0,#+1
        B.N      ??GetTxStallStatus_1
??GetTxStallStatus_0:
        MOVS     R0,#+0
??GetTxStallStatus_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
GetRxStallStatus:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable55_5  ;; 0x40005c00
        LDR      R0,[R1, R0, LSL #+2]
        ANDS     R0,R0,#0x3000
        CMP      R0,#+4096
        BNE.N    ??GetRxStallStatus_0
        MOVS     R0,#+1
        B.N      ??GetRxStallStatus_1
??GetRxStallStatus_0:
        MOVS     R0,#+0
??GetRxStallStatus_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ClearEP_CTR_RX:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable55_5  ;; 0x40005c00
        LDR      R1,[R1, R0, LSL #+2]
        MOVW     R2,#+3983
        ANDS     R1,R2,R1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable55_5  ;; 0x40005c00
        STR      R1,[R2, R0, LSL #+2]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ClearEP_CTR_TX:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable55_5  ;; 0x40005c00
        LDR      R1,[R1, R0, LSL #+2]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVW     R2,#+36623
        ANDS     R1,R2,R1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable55_5  ;; 0x40005c00
        STR      R1,[R2, R0, LSL #+2]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ToggleDTOG_RX:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable55_5  ;; 0x40005c00
        LDR      R1,[R1, R0, LSL #+2]
        MOVW     R2,#+36751
        ANDS     R1,R2,R1
        ORR      R1,R1,#0xC000
        ORRS     R1,R1,#0x80
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable55_5  ;; 0x40005c00
        STR      R1,[R2, R0, LSL #+2]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ToggleDTOG_TX:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable55_5  ;; 0x40005c00
        LDR      R1,[R1, R0, LSL #+2]
        MOVW     R2,#+36751
        ANDS     R1,R2,R1
        ORR      R1,R1,#0x8000
        ORRS     R1,R1,#0xC0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable55_5  ;; 0x40005c00
        STR      R1,[R2, R0, LSL #+2]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ClearDTOG_RX:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable55_5  ;; 0x40005c00
        LDR      R1,[R1, R0, LSL #+2]
        LSLS     R1,R1,#+17
        BPL.N    ??ClearDTOG_RX_0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable55_5  ;; 0x40005c00
        LDR      R1,[R1, R0, LSL #+2]
        MOVW     R2,#+36751
        ANDS     R1,R2,R1
        ORR      R1,R1,#0xC000
        ORRS     R1,R1,#0x80
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable55_5  ;; 0x40005c00
        STR      R1,[R2, R0, LSL #+2]
??ClearDTOG_RX_0:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ClearDTOG_TX:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable55_5  ;; 0x40005c00
        LDR      R1,[R1, R0, LSL #+2]
        LSLS     R1,R1,#+25
        BPL.N    ??ClearDTOG_TX_0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable55_5  ;; 0x40005c00
        LDR      R1,[R1, R0, LSL #+2]
        MOVW     R2,#+36751
        ANDS     R1,R2,R1
        ORR      R1,R1,#0x8000
        ORRS     R1,R1,#0xC0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable55_5  ;; 0x40005c00
        STR      R1,[R2, R0, LSL #+2]
??ClearDTOG_TX_0:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SetEPAddress:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable55_5  ;; 0x40005c00
        LDR      R2,[R2, R0, LSL #+2]
        MOVW     R3,#+36751
        ANDS     R2,R3,R2
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ORRS     R2,R1,R2
        ORR      R2,R2,#0x8000
        ORRS     R2,R2,#0x80
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R3,??DataTable55_5  ;; 0x40005c00
        STR      R2,[R3, R0, LSL #+2]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
GetEPAddress:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable55_5  ;; 0x40005c00
        LDR      R0,[R1, R0, LSL #+2]
        ANDS     R0,R0,#0xF
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SetEPTxAddr:
        PUSH     {R4}
        LDR.W    R2,??DataTable55_4  ;; 0x40005c50
        LDR      R2,[R2, #+0]
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R2,R2,R0, LSL #+3
        LDR.W    R3,??DataTable55_6  ;; 0x40006000
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LSRS     R4,R1,#+1
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        LSLS     R4,R4,#+1
        STR      R4,[R3, R2, LSL #+1]
        POP      {R4}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SetEPRxAddr:
        PUSH     {R4}
        LDR.W    R2,??DataTable55_4  ;; 0x40005c50
        LDR      R2,[R2, #+0]
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R2,R2,R0, LSL #+3
        LDR.W    R3,??DataTable55_7  ;; 0x40006008
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LSRS     R4,R1,#+1
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        LSLS     R4,R4,#+1
        STR      R4,[R3, R2, LSL #+1]
        POP      {R4}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
GetEPTxAddr:
        LDR.W    R1,??DataTable55_4  ;; 0x40005c50
        LDR      R1,[R1, #+0]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R0,R1,R0, LSL #+3
        LDR.W    R1,??DataTable55_6  ;; 0x40006000
        LDR      R0,[R1, R0, LSL #+1]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
GetEPRxAddr:
        LDR.W    R1,??DataTable55_4  ;; 0x40005c50
        LDR      R1,[R1, #+0]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R0,R1,R0, LSL #+3
        LDR.W    R1,??DataTable55_7  ;; 0x40006008
        LDR      R0,[R1, R0, LSL #+1]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SetEPTxCount:
        LDR.W    R2,??DataTable55_4  ;; 0x40005c50
        LDR      R2,[R2, #+0]
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R2,R2,R0, LSL #+3
        LDR.W    R3,??DataTable55_8  ;; 0x40006004
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        STR      R1,[R3, R2, LSL #+1]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SetEPCountRxReg:
        PUSH     {R4}
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+63
        BCC.N    ??SetEPCountRxReg_0
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LSRS     R3,R1,#+5
        MOVS     R2,R3
        MOVS     R3,#+31
        TST      R1,R3
        BNE.N    ??SetEPCountRxReg_1
        SUBS     R2,R2,#+1
??SetEPCountRxReg_1:
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        LSLS     R2,R2,#+10
        ORRS     R2,R2,#0x8000
        STR      R2,[R0, #+0]
        B.N      ??SetEPCountRxReg_2
??SetEPCountRxReg_0:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LSRS     R3,R1,#+1
        MOVS     R2,R3
        LSLS     R3,R1,#+31
        BPL.N    ??SetEPCountRxReg_3
        ADDS     R2,R2,#+1
??SetEPCountRxReg_3:
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        LSLS     R2,R2,#+10
        STR      R2,[R0, #+0]
??SetEPCountRxReg_2:
        POP      {R4}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SetEPRxCount:
        PUSH     {R4,R5}
        LDR.W    R3,??DataTable55_4  ;; 0x40005c50
        LDR      R3,[R3, #+0]
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R3,R3,R0, LSL #+3
        LDR.W    R4,??DataTable55_9  ;; 0x4000600c
        ADDS     R3,R4,R3, LSL #+1
        MOVS     R2,R3
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+63
        BCC.N    ??SetEPRxCount_0
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LSRS     R4,R1,#+5
        MOVS     R3,R4
        MOVS     R4,#+31
        TST      R1,R4
        BNE.N    ??SetEPRxCount_1
        SUBS     R3,R3,#+1
??SetEPRxCount_1:
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        LSLS     R3,R3,#+10
        ORRS     R3,R3,#0x8000
        STR      R3,[R2, #+0]
        B.N      ??SetEPRxCount_2
??SetEPRxCount_0:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LSRS     R4,R1,#+1
        MOVS     R3,R4
        LSLS     R4,R1,#+31
        BPL.N    ??SetEPRxCount_3
        ADDS     R3,R3,#+1
??SetEPRxCount_3:
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        LSLS     R3,R3,#+10
        STR      R3,[R2, #+0]
??SetEPRxCount_2:
        POP      {R4,R5}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
GetEPTxCount:
        LDR.W    R1,??DataTable55_4  ;; 0x40005c50
        LDR      R1,[R1, #+0]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R0,R1,R0, LSL #+3
        LDR.W    R1,??DataTable55_8  ;; 0x40006004
        LDR      R0,[R1, R0, LSL #+1]
        LSLS     R0,R0,#+22       ;; ZeroExtS R0,R0,#+22,#+22
        LSRS     R0,R0,#+22
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
GetEPRxCount:
        LDR.N    R1,??DataTable55_4  ;; 0x40005c50
        LDR      R1,[R1, #+0]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R0,R1,R0, LSL #+3
        LDR.N    R1,??DataTable55_9  ;; 0x4000600c
        LDR      R0,[R1, R0, LSL #+1]
        LSLS     R0,R0,#+22       ;; ZeroExtS R0,R0,#+22,#+22
        LSRS     R0,R0,#+22
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SetEPDblBuffAddr:
        PUSH     {R4,R5}
        LDR.N    R3,??DataTable55_4  ;; 0x40005c50
        LDR      R3,[R3, #+0]
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R3,R3,R0, LSL #+3
        LDR.N    R4,??DataTable55_6  ;; 0x40006000
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LSRS     R5,R1,#+1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        LSLS     R5,R5,#+1
        STR      R5,[R4, R3, LSL #+1]
        LDR.N    R3,??DataTable55_4  ;; 0x40005c50
        LDR      R3,[R3, #+0]
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R3,R3,R0, LSL #+3
        LDR.N    R4,??DataTable55_7  ;; 0x40006008
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        LSRS     R5,R2,#+1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        LSLS     R5,R5,#+1
        STR      R5,[R4, R3, LSL #+1]
        POP      {R4,R5}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SetEPDblBuf0Addr:
        PUSH     {R4}
        LDR.N    R2,??DataTable55_4  ;; 0x40005c50
        LDR      R2,[R2, #+0]
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R2,R2,R0, LSL #+3
        LDR.N    R3,??DataTable55_6  ;; 0x40006000
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LSRS     R4,R1,#+1
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        LSLS     R4,R4,#+1
        STR      R4,[R3, R2, LSL #+1]
        POP      {R4}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SetEPDblBuf1Addr:
        PUSH     {R4}
        LDR.N    R2,??DataTable55_4  ;; 0x40005c50
        LDR      R2,[R2, #+0]
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R2,R2,R0, LSL #+3
        LDR.N    R3,??DataTable55_7  ;; 0x40006008
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LSRS     R4,R1,#+1
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        LSLS     R4,R4,#+1
        STR      R4,[R3, R2, LSL #+1]
        POP      {R4}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
GetEPDblBuf0Addr:
        LDR.N    R1,??DataTable55_4  ;; 0x40005c50
        LDR      R1,[R1, #+0]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R0,R1,R0, LSL #+3
        LDR.N    R1,??DataTable55_6  ;; 0x40006000
        LDR      R0,[R1, R0, LSL #+1]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
GetEPDblBuf1Addr:
        LDR.N    R1,??DataTable55_4  ;; 0x40005c50
        LDR      R1,[R1, #+0]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R0,R1,R0, LSL #+3
        LDR.N    R1,??DataTable55_7  ;; 0x40006008
        LDR      R0,[R1, R0, LSL #+1]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SetEPDblBuffCount:
        PUSH     {R4-R6}
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+1
        BNE.N    ??SetEPDblBuffCount_0
        LDR.N    R4,??DataTable55_4  ;; 0x40005c50
        LDR      R4,[R4, #+0]
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R4,R4,R0, LSL #+3
        LDR.N    R5,??DataTable55_8  ;; 0x40006004
        ADDS     R4,R5,R4, LSL #+1
        MOVS     R3,R4
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        CMP      R2,#+63
        BCC.N    ??SetEPDblBuffCount_1
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        LSRS     R5,R2,#+5
        MOVS     R4,R5
        MOVS     R5,#+31
        TST      R2,R5
        BNE.N    ??SetEPDblBuffCount_2
        SUBS     R4,R4,#+1
??SetEPDblBuffCount_2:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        LSLS     R4,R4,#+10
        ORRS     R4,R4,#0x8000
        STR      R4,[R3, #+0]
        B.N      ??SetEPDblBuffCount_3
??SetEPDblBuffCount_1:
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        LSRS     R5,R2,#+1
        MOVS     R4,R5
        LSLS     R5,R2,#+31
        BPL.N    ??SetEPDblBuffCount_4
        ADDS     R4,R4,#+1
??SetEPDblBuffCount_4:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        LSLS     R4,R4,#+10
        STR      R4,[R3, #+0]
        B.N      ??SetEPDblBuffCount_3
??SetEPDblBuffCount_0:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+2
        BNE.N    ??SetEPDblBuffCount_3
        LDR.N    R3,??DataTable55_4  ;; 0x40005c50
        LDR      R3,[R3, #+0]
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R3,R3,R0, LSL #+3
        LDR.N    R4,??DataTable55_8  ;; 0x40006004
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        STR      R2,[R4, R3, LSL #+1]
??SetEPDblBuffCount_3:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+1
        BNE.N    ??SetEPDblBuffCount_5
        LDR.N    R4,??DataTable55_4  ;; 0x40005c50
        LDR      R4,[R4, #+0]
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R4,R4,R0, LSL #+3
        LDR.N    R5,??DataTable55_9  ;; 0x4000600c
        ADDS     R4,R5,R4, LSL #+1
        MOVS     R3,R4
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        CMP      R2,#+63
        BCC.N    ??SetEPDblBuffCount_6
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        LSRS     R5,R2,#+5
        MOVS     R4,R5
        MOVS     R5,#+31
        TST      R2,R5
        BNE.N    ??SetEPDblBuffCount_7
        SUBS     R4,R4,#+1
??SetEPDblBuffCount_7:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        LSLS     R4,R4,#+10
        ORRS     R4,R4,#0x8000
        STR      R4,[R3, #+0]
        B.N      ??SetEPDblBuffCount_8
??SetEPDblBuffCount_6:
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        LSRS     R5,R2,#+1
        MOVS     R4,R5
        LSLS     R5,R2,#+31
        BPL.N    ??SetEPDblBuffCount_9
        ADDS     R4,R4,#+1
??SetEPDblBuffCount_9:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        LSLS     R4,R4,#+10
        STR      R4,[R3, #+0]
        B.N      ??SetEPDblBuffCount_8
??SetEPDblBuffCount_5:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+2
        BNE.N    ??SetEPDblBuffCount_8
        LDR.N    R3,??DataTable55_4  ;; 0x40005c50
        LDR      R3,[R3, #+0]
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R3,R3,R0, LSL #+3
        LDR.N    R4,??DataTable55_9  ;; 0x4000600c
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        STR      R2,[R4, R3, LSL #+1]
??SetEPDblBuffCount_8:
        POP      {R4-R6}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SetEPDblBuf0Count:
        PUSH     {R4-R6}
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+1
        BNE.N    ??SetEPDblBuf0Count_0
        LDR.N    R4,??DataTable55_4  ;; 0x40005c50
        LDR      R4,[R4, #+0]
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R4,R4,R0, LSL #+3
        LDR.N    R5,??DataTable55_8  ;; 0x40006004
        ADDS     R4,R5,R4, LSL #+1
        MOVS     R3,R4
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        CMP      R2,#+63
        BCC.N    ??SetEPDblBuf0Count_1
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        LSRS     R5,R2,#+5
        MOVS     R4,R5
        MOVS     R5,#+31
        TST      R2,R5
        BNE.N    ??SetEPDblBuf0Count_2
        SUBS     R4,R4,#+1
??SetEPDblBuf0Count_2:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        LSLS     R4,R4,#+10
        ORRS     R4,R4,#0x8000
        STR      R4,[R3, #+0]
        B.N      ??SetEPDblBuf0Count_3
??SetEPDblBuf0Count_1:
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        LSRS     R5,R2,#+1
        MOVS     R4,R5
        LSLS     R5,R2,#+31
        BPL.N    ??SetEPDblBuf0Count_4
        ADDS     R4,R4,#+1
??SetEPDblBuf0Count_4:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        LSLS     R4,R4,#+10
        STR      R4,[R3, #+0]
        B.N      ??SetEPDblBuf0Count_3
??SetEPDblBuf0Count_0:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+2
        BNE.N    ??SetEPDblBuf0Count_3
        LDR.N    R3,??DataTable55_4  ;; 0x40005c50
        LDR      R3,[R3, #+0]
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R3,R3,R0, LSL #+3
        LDR.N    R4,??DataTable55_8  ;; 0x40006004
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        STR      R2,[R4, R3, LSL #+1]
??SetEPDblBuf0Count_3:
        POP      {R4-R6}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SetEPDblBuf1Count:
        PUSH     {R4-R6}
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+1
        BNE.N    ??SetEPDblBuf1Count_0
        LDR.N    R4,??DataTable55_4  ;; 0x40005c50
        LDR      R4,[R4, #+0]
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R4,R4,R0, LSL #+3
        LDR.N    R5,??DataTable55_9  ;; 0x4000600c
        ADDS     R4,R5,R4, LSL #+1
        MOVS     R3,R4
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        CMP      R2,#+63
        BCC.N    ??SetEPDblBuf1Count_1
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        LSRS     R5,R2,#+5
        MOVS     R4,R5
        MOVS     R5,#+31
        TST      R2,R5
        BNE.N    ??SetEPDblBuf1Count_2
        SUBS     R4,R4,#+1
??SetEPDblBuf1Count_2:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        LSLS     R4,R4,#+10
        ORRS     R4,R4,#0x8000
        STR      R4,[R3, #+0]
        B.N      ??SetEPDblBuf1Count_3
??SetEPDblBuf1Count_1:
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        LSRS     R5,R2,#+1
        MOVS     R4,R5
        LSLS     R5,R2,#+31
        BPL.N    ??SetEPDblBuf1Count_4
        ADDS     R4,R4,#+1
??SetEPDblBuf1Count_4:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        LSLS     R4,R4,#+10
        STR      R4,[R3, #+0]
        B.N      ??SetEPDblBuf1Count_3
??SetEPDblBuf1Count_0:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+2
        BNE.N    ??SetEPDblBuf1Count_3
        LDR.N    R3,??DataTable55_4  ;; 0x40005c50
        LDR      R3,[R3, #+0]
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R3,R3,R0, LSL #+3
        LDR.N    R4,??DataTable55_9  ;; 0x4000600c
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        STR      R2,[R4, R3, LSL #+1]
??SetEPDblBuf1Count_3:
        POP      {R4-R6}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
GetEPDblBuf0Count:
        LDR.N    R1,??DataTable55_4  ;; 0x40005c50
        LDR      R1,[R1, #+0]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R0,R1,R0, LSL #+3
        LDR.N    R1,??DataTable55_8  ;; 0x40006004
        LDR      R0,[R1, R0, LSL #+1]
        LSLS     R0,R0,#+22       ;; ZeroExtS R0,R0,#+22,#+22
        LSRS     R0,R0,#+22
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
GetEPDblBuf1Count:
        LDR.N    R1,??DataTable55_4  ;; 0x40005c50
        LDR      R1,[R1, #+0]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R0,R1,R0, LSL #+3
        LDR.N    R1,??DataTable55_9  ;; 0x4000600c
        LDR      R0,[R1, R0, LSL #+1]
        LSLS     R0,R0,#+22       ;; ZeroExtS R0,R0,#+22,#+22
        LSRS     R0,R0,#+22
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
GetEPDblBufDir:
        MOVS     R1,R0
        LDR.N    R0,??DataTable55_4  ;; 0x40005c50
        LDR      R0,[R0, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R0,R1, LSL #+3
        LDR.N    R2,??DataTable55_9  ;; 0x4000600c
        LDR      R0,[R2, R0, LSL #+1]
        MOV      R2,#+64512
        TST      R0,R2
        BEQ.N    ??GetEPDblBufDir_0
        MOVS     R0,#+1
        B.N      ??GetEPDblBufDir_1
??GetEPDblBufDir_0:
        LDR.N    R0,??DataTable55_4  ;; 0x40005c50
        LDR      R0,[R0, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R0,R1, LSL #+3
        LDR.N    R2,??DataTable55_8  ;; 0x40006004
        LDR      R0,[R2, R0, LSL #+1]
        LSLS     R0,R0,#+22
        BEQ.N    ??GetEPDblBufDir_2
        MOVS     R0,#+2
        B.N      ??GetEPDblBufDir_1
??GetEPDblBufDir_2:
        MOVS     R0,#+0
??GetEPDblBufDir_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FreeUserBuffer:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+1
        BNE.N    ??FreeUserBuffer_0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable55_5  ;; 0x40005c00
        LDR      R2,[R2, R0, LSL #+2]
        MOVW     R3,#+36751
        ANDS     R2,R3,R2
        ORR      R2,R2,#0x8000
        ORRS     R2,R2,#0xC0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R3,??DataTable55_5  ;; 0x40005c00
        STR      R2,[R3, R0, LSL #+2]
        B.N      ??FreeUserBuffer_1
??FreeUserBuffer_0:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+2
        BNE.N    ??FreeUserBuffer_1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable55_5  ;; 0x40005c00
        LDR      R2,[R2, R0, LSL #+2]
        MOVW     R3,#+36751
        ANDS     R2,R3,R2
        ORR      R2,R2,#0xC000
        ORRS     R2,R2,#0x80
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R3,??DataTable55_5  ;; 0x40005c00
        STR      R2,[R3, R0, LSL #+2]
??FreeUserBuffer_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable55:
        DC32     0x40005c40

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable55_1:
        DC32     0x40005c44

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable55_2:
        DC32     0x40005c48

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable55_3:
        DC32     0x40005c4c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable55_4:
        DC32     0x40005c50

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable55_5:
        DC32     0x40005c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable55_6:
        DC32     0x40006000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable55_7:
        DC32     0x40006008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable55_8:
        DC32     0x40006004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable55_9:
        DC32     0x4000600c

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ToWord:
        MOVS     R2,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ORRS     R3,R1,R2, LSL #+8
        MOVS     R0,R3
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ByteSwap:
        MOVS     R1,R0
        MOVS     R3,R1
        MOVS     R2,R3
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LSLS     R3,R2,#+8
        ORRS     R3,R3,R1, LSR #+8
        MOVS     R0,R3
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
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
// 2 260 bytes in section .text
// 
// 2 260 bytes of CODE memory
//
//Errors: none
//Warnings: none
