///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.6.53336/W32 for ARM    25/Jun/2014  14:55:10 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    Libraries\STM32F10x_StdPeriph_Driver\src\stm32f10x_fsmc /
//                    .c                                                      /
//    Command line =  D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    Libraries\STM32F10x_StdPeriph_Driver\src\stm32f10x_fsmc /
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
//                    project\Debug\List\stm32f10x_fsmc.s                     /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm32f10x_fsmc

        #define SHT_PROGBITS 0x1

        EXTERN assert_failed

        PUBLIC FSMC_ClearFlag
        PUBLIC FSMC_ClearITPendingBit
        PUBLIC FSMC_GetECC
        PUBLIC FSMC_GetFlagStatus
        PUBLIC FSMC_GetITStatus
        PUBLIC FSMC_ITConfig
        PUBLIC FSMC_NANDCmd
        PUBLIC FSMC_NANDDeInit
        PUBLIC FSMC_NANDECCCmd
        PUBLIC FSMC_NANDInit
        PUBLIC FSMC_NANDStructInit
        PUBLIC FSMC_NORSRAMCmd
        PUBLIC FSMC_NORSRAMDeInit
        PUBLIC FSMC_NORSRAMInit
        PUBLIC FSMC_NORSRAMStructInit
        PUBLIC FSMC_PCCARDCmd
        PUBLIC FSMC_PCCARDDeInit
        PUBLIC FSMC_PCCARDInit
        PUBLIC FSMC_PCCARDStructInit


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FSMC_NORSRAMDeInit:
        PUSH     {R4,LR}
        MOVS     R4,R0
        CMP      R4,#+0
        BEQ.N    ??FSMC_NORSRAMDeInit_0
        CMP      R4,#+2
        BEQ.N    ??FSMC_NORSRAMDeInit_0
        CMP      R4,#+4
        BEQ.N    ??FSMC_NORSRAMDeInit_0
        CMP      R4,#+6
        BEQ.N    ??FSMC_NORSRAMDeInit_0
        MOVS     R1,#+111
        LDR.W    R0,??DataTable12
        BL       assert_failed
??FSMC_NORSRAMDeInit_0:
        CMP      R4,#+0
        BNE.N    ??FSMC_NORSRAMDeInit_1
        LSLS     R0,R4,#+2
        SUBS     R0,R0,#+1610612736
        MOVW     R1,#+12507
        STR      R1,[R0, #+0]
        B.N      ??FSMC_NORSRAMDeInit_2
??FSMC_NORSRAMDeInit_1:
        LSLS     R0,R4,#+2
        SUBS     R0,R0,#+1610612736
        MOVW     R1,#+12498
        STR      R1,[R0, #+0]
??FSMC_NORSRAMDeInit_2:
        LSLS     R0,R4,#+2
        SUBS     R0,R0,#+1610612736
        MVNS     R1,#-268435456
        STR      R1,[R0, #+4]
        LDR.W    R0,??DataTable14  ;; 0xa0000104
        MVNS     R1,#-268435456
        STR      R1,[R0, R4, LSL #+2]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FSMC_NANDDeInit:
        PUSH     {R4,LR}
        MOVS     R4,R0
        CMP      R4,#+16
        BEQ.N    ??FSMC_NANDDeInit_0
        MOV      R0,#+256
        CMP      R4,R0
        BEQ.N    ??FSMC_NANDDeInit_0
        MOVS     R1,#+138
        LDR.W    R0,??DataTable12
        BL       assert_failed
??FSMC_NANDDeInit_0:
        CMP      R4,#+16
        BNE.N    ??FSMC_NANDDeInit_1
        LDR.W    R0,??DataTable13  ;; 0xa0000060
        MOVS     R1,#+24
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable13_1  ;; 0xa0000064
        MOVS     R1,#+64
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable13_2  ;; 0xa0000068
        MOVS     R1,#-50529028
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable13_3  ;; 0xa000006c
        MOVS     R1,#-50529028
        STR      R1,[R0, #+0]
        B.N      ??FSMC_NANDDeInit_2
??FSMC_NANDDeInit_1:
        LDR.W    R0,??DataTable13_4  ;; 0xa0000080
        MOVS     R1,#+24
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable13_5  ;; 0xa0000084
        MOVS     R1,#+64
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable13_6  ;; 0xa0000088
        MOVS     R1,#-50529028
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable14_1  ;; 0xa000008c
        MOVS     R1,#-50529028
        STR      R1,[R0, #+0]
??FSMC_NANDDeInit_2:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FSMC_PCCARDDeInit:
        LDR.W    R0,??DataTable13_7  ;; 0xa00000a0
        MOVS     R1,#+24
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable13_8  ;; 0xa00000a4
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable13_9  ;; 0xa00000a8
        MOVS     R1,#-50529028
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable13_10  ;; 0xa00000ac
        MOVS     R1,#-50529028
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable15  ;; 0xa00000b0
        MOVS     R1,#-50529028
        STR      R1,[R0, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FSMC_NORSRAMInit:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR      R0,[R4, #+0]
        CMP      R0,#+0
        BEQ.N    ??FSMC_NORSRAMInit_0
        LDR      R0,[R4, #+0]
        CMP      R0,#+2
        BEQ.N    ??FSMC_NORSRAMInit_0
        LDR      R0,[R4, #+0]
        CMP      R0,#+4
        BEQ.N    ??FSMC_NORSRAMInit_0
        LDR      R0,[R4, #+0]
        CMP      R0,#+6
        BEQ.N    ??FSMC_NORSRAMInit_0
        MOVS     R1,#+185
        LDR.W    R0,??DataTable12
        BL       assert_failed
??FSMC_NORSRAMInit_0:
        LDR      R0,[R4, #+4]
        CMP      R0,#+0
        BEQ.N    ??FSMC_NORSRAMInit_1
        LDR      R0,[R4, #+4]
        CMP      R0,#+2
        BEQ.N    ??FSMC_NORSRAMInit_1
        MOVS     R1,#+186
        LDR.W    R0,??DataTable12
        BL       assert_failed
??FSMC_NORSRAMInit_1:
        LDR      R0,[R4, #+8]
        CMP      R0,#+0
        BEQ.N    ??FSMC_NORSRAMInit_2
        LDR      R0,[R4, #+8]
        CMP      R0,#+4
        BEQ.N    ??FSMC_NORSRAMInit_2
        LDR      R0,[R4, #+8]
        CMP      R0,#+8
        BEQ.N    ??FSMC_NORSRAMInit_2
        MOVS     R1,#+187
        LDR.W    R0,??DataTable12
        BL       assert_failed
??FSMC_NORSRAMInit_2:
        LDR      R0,[R4, #+12]
        CMP      R0,#+0
        BEQ.N    ??FSMC_NORSRAMInit_3
        LDR      R0,[R4, #+12]
        CMP      R0,#+16
        BEQ.N    ??FSMC_NORSRAMInit_3
        MOVS     R1,#+188
        LDR.W    R0,??DataTable12
        BL       assert_failed
??FSMC_NORSRAMInit_3:
        LDR      R0,[R4, #+16]
        CMP      R0,#+0
        BEQ.N    ??FSMC_NORSRAMInit_4
        LDR      R0,[R4, #+16]
        MOV      R1,#+256
        CMP      R0,R1
        BEQ.N    ??FSMC_NORSRAMInit_4
        MOVS     R1,#+189
        LDR.W    R0,??DataTable12
        BL       assert_failed
??FSMC_NORSRAMInit_4:
        LDR      R0,[R4, #+20]
        CMP      R0,#+0
        BEQ.N    ??FSMC_NORSRAMInit_5
        LDR      R0,[R4, #+20]
        CMP      R0,#+32768
        BEQ.N    ??FSMC_NORSRAMInit_5
        MOVS     R1,#+190
        LDR.W    R0,??DataTable12
        BL       assert_failed
??FSMC_NORSRAMInit_5:
        LDR      R0,[R4, #+24]
        CMP      R0,#+0
        BEQ.N    ??FSMC_NORSRAMInit_6
        LDR      R0,[R4, #+24]
        MOV      R1,#+512
        CMP      R0,R1
        BEQ.N    ??FSMC_NORSRAMInit_6
        MOVS     R1,#+191
        LDR.W    R0,??DataTable12
        BL       assert_failed
??FSMC_NORSRAMInit_6:
        LDR      R0,[R4, #+28]
        CMP      R0,#+0
        BEQ.N    ??FSMC_NORSRAMInit_7
        LDR      R0,[R4, #+28]
        CMP      R0,#+1024
        BEQ.N    ??FSMC_NORSRAMInit_7
        MOVS     R1,#+192
        LDR.W    R0,??DataTable12
        BL       assert_failed
??FSMC_NORSRAMInit_7:
        LDR      R0,[R4, #+32]
        CMP      R0,#+0
        BEQ.N    ??FSMC_NORSRAMInit_8
        LDR      R0,[R4, #+32]
        CMP      R0,#+2048
        BEQ.N    ??FSMC_NORSRAMInit_8
        MOVS     R1,#+193
        LDR.W    R0,??DataTable12
        BL       assert_failed
??FSMC_NORSRAMInit_8:
        LDR      R0,[R4, #+36]
        CMP      R0,#+0
        BEQ.N    ??FSMC_NORSRAMInit_9
        LDR      R0,[R4, #+36]
        CMP      R0,#+4096
        BEQ.N    ??FSMC_NORSRAMInit_9
        MOVS     R1,#+194
        LDR.W    R0,??DataTable12
        BL       assert_failed
??FSMC_NORSRAMInit_9:
        LDR      R0,[R4, #+40]
        CMP      R0,#+0
        BEQ.N    ??FSMC_NORSRAMInit_10
        LDR      R0,[R4, #+40]
        CMP      R0,#+8192
        BEQ.N    ??FSMC_NORSRAMInit_10
        MOVS     R1,#+195
        LDR.W    R0,??DataTable12
        BL       assert_failed
??FSMC_NORSRAMInit_10:
        LDR      R0,[R4, #+44]
        CMP      R0,#+0
        BEQ.N    ??FSMC_NORSRAMInit_11
        LDR      R0,[R4, #+44]
        CMP      R0,#+16384
        BEQ.N    ??FSMC_NORSRAMInit_11
        MOVS     R1,#+196
        LDR.W    R0,??DataTable12
        BL       assert_failed
??FSMC_NORSRAMInit_11:
        LDR      R0,[R4, #+48]
        CMP      R0,#+0
        BEQ.N    ??FSMC_NORSRAMInit_12
        LDR      R0,[R4, #+48]
        CMP      R0,#+524288
        BEQ.N    ??FSMC_NORSRAMInit_12
        MOVS     R1,#+197
        LDR.W    R0,??DataTable12
        BL       assert_failed
??FSMC_NORSRAMInit_12:
        LDR      R0,[R4, #+52]
        LDR      R0,[R0, #+0]
        CMP      R0,#+16
        BCC.N    ??FSMC_NORSRAMInit_13
        MOVS     R1,#+198
        LDR.W    R0,??DataTable12
        BL       assert_failed
??FSMC_NORSRAMInit_13:
        LDR      R0,[R4, #+52]
        LDR      R0,[R0, #+4]
        CMP      R0,#+16
        BCC.N    ??FSMC_NORSRAMInit_14
        MOVS     R1,#+199
        LDR.W    R0,??DataTable12
        BL       assert_failed
??FSMC_NORSRAMInit_14:
        LDR      R0,[R4, #+52]
        LDR      R0,[R0, #+8]
        CMP      R0,#+0
        BEQ.N    ??FSMC_NORSRAMInit_15
        LDR      R0,[R4, #+52]
        LDR      R0,[R0, #+8]
        CMP      R0,#+255
        BLS.N    ??FSMC_NORSRAMInit_16
??FSMC_NORSRAMInit_15:
        MOVS     R1,#+200
        LDR.W    R0,??DataTable12
        BL       assert_failed
??FSMC_NORSRAMInit_16:
        LDR      R0,[R4, #+52]
        LDR      R0,[R0, #+12]
        CMP      R0,#+16
        BCC.N    ??FSMC_NORSRAMInit_17
        MOVS     R1,#+201
        LDR.W    R0,??DataTable12
        BL       assert_failed
??FSMC_NORSRAMInit_17:
        LDR      R0,[R4, #+52]
        LDR      R0,[R0, #+16]
        CMP      R0,#+16
        BCC.N    ??FSMC_NORSRAMInit_18
        MOVS     R1,#+202
        LDR.W    R0,??DataTable12
        BL       assert_failed
??FSMC_NORSRAMInit_18:
        LDR      R0,[R4, #+52]
        LDR      R0,[R0, #+20]
        CMP      R0,#+16
        BCC.N    ??FSMC_NORSRAMInit_19
        MOVS     R1,#+203
        LDR.W    R0,??DataTable12
        BL       assert_failed
??FSMC_NORSRAMInit_19:
        LDR      R0,[R4, #+52]
        LDR      R0,[R0, #+24]
        CMP      R0,#+0
        BEQ.N    ??FSMC_NORSRAMInit_20
        LDR      R0,[R4, #+52]
        LDR      R0,[R0, #+24]
        CMP      R0,#+268435456
        BEQ.N    ??FSMC_NORSRAMInit_20
        LDR      R0,[R4, #+52]
        LDR      R0,[R0, #+24]
        CMP      R0,#+536870912
        BEQ.N    ??FSMC_NORSRAMInit_20
        LDR      R0,[R4, #+52]
        LDR      R0,[R0, #+24]
        CMP      R0,#+805306368
        BEQ.N    ??FSMC_NORSRAMInit_20
        MOVS     R1,#+204
        LDR.W    R0,??DataTable12
        BL       assert_failed
??FSMC_NORSRAMInit_20:
        LDR      R0,[R4, #+4]
        LDR      R1,[R4, #+8]
        ORRS     R0,R1,R0
        LDR      R1,[R4, #+12]
        ORRS     R0,R1,R0
        LDR      R1,[R4, #+16]
        ORRS     R0,R1,R0
        LDR      R1,[R4, #+20]
        ORRS     R0,R1,R0
        LDR      R1,[R4, #+24]
        ORRS     R0,R1,R0
        LDR      R1,[R4, #+28]
        ORRS     R0,R1,R0
        LDR      R1,[R4, #+32]
        ORRS     R0,R1,R0
        LDR      R1,[R4, #+36]
        ORRS     R0,R1,R0
        LDR      R1,[R4, #+40]
        ORRS     R0,R1,R0
        LDR      R1,[R4, #+44]
        ORRS     R0,R1,R0
        LDR      R1,[R4, #+48]
        ORRS     R0,R1,R0
        LDR      R1,[R4, #+0]
        LSLS     R1,R1,#+2
        SUBS     R1,R1,#+1610612736
        STR      R0,[R1, #+0]
        LDR      R0,[R4, #+8]
        CMP      R0,#+8
        BNE.N    ??FSMC_NORSRAMInit_21
        LDR      R0,[R4, #+0]
        LSLS     R0,R0,#+2
        SUBS     R0,R0,#+1610612736
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x40
        LDR      R1,[R4, #+0]
        LSLS     R1,R1,#+2
        SUBS     R1,R1,#+1610612736
        STR      R0,[R1, #+0]
??FSMC_NORSRAMInit_21:
        LDR      R0,[R4, #+52]
        LDR      R0,[R0, #+0]
        LDR      R1,[R4, #+52]
        LDR      R1,[R1, #+4]
        ORRS     R0,R0,R1, LSL #+4
        LDR      R1,[R4, #+52]
        LDR      R1,[R1, #+8]
        ORRS     R0,R0,R1, LSL #+8
        LDR      R1,[R4, #+52]
        LDR      R1,[R1, #+12]
        ORRS     R0,R0,R1, LSL #+16
        LDR      R1,[R4, #+52]
        LDR      R1,[R1, #+16]
        ORRS     R0,R0,R1, LSL #+20
        LDR      R1,[R4, #+52]
        LDR      R1,[R1, #+20]
        ORRS     R0,R0,R1, LSL #+24
        LDR      R1,[R4, #+52]
        LDR      R1,[R1, #+24]
        ORRS     R0,R1,R0
        LDR      R1,[R4, #+0]
        LSLS     R1,R1,#+2
        SUBS     R1,R1,#+1610612736
        STR      R0,[R1, #+4]
        LDR      R0,[R4, #+44]
        CMP      R0,#+16384
        BNE.N    ??FSMC_NORSRAMInit_22
        LDR      R0,[R4, #+56]
        LDR      R0,[R0, #+0]
        CMP      R0,#+16
        BCC.N    ??FSMC_NORSRAMInit_23
        MOVS     R1,#+240
        LDR.W    R0,??DataTable12
        BL       assert_failed
??FSMC_NORSRAMInit_23:
        LDR      R0,[R4, #+56]
        LDR      R0,[R0, #+4]
        CMP      R0,#+16
        BCC.N    ??FSMC_NORSRAMInit_24
        MOVS     R1,#+241
        LDR.W    R0,??DataTable12
        BL       assert_failed
??FSMC_NORSRAMInit_24:
        LDR      R0,[R4, #+56]
        LDR      R0,[R0, #+8]
        CMP      R0,#+0
        BEQ.N    ??FSMC_NORSRAMInit_25
        LDR      R0,[R4, #+56]
        LDR      R0,[R0, #+8]
        CMP      R0,#+255
        BLS.N    ??FSMC_NORSRAMInit_26
??FSMC_NORSRAMInit_25:
        MOVS     R1,#+242
        LDR.W    R0,??DataTable12
        BL       assert_failed
??FSMC_NORSRAMInit_26:
        LDR      R0,[R4, #+56]
        LDR      R0,[R0, #+16]
        CMP      R0,#+16
        BCC.N    ??FSMC_NORSRAMInit_27
        MOVS     R1,#+243
        LDR.W    R0,??DataTable12
        BL       assert_failed
??FSMC_NORSRAMInit_27:
        LDR      R0,[R4, #+56]
        LDR      R0,[R0, #+20]
        CMP      R0,#+16
        BCC.N    ??FSMC_NORSRAMInit_28
        MOVS     R1,#+244
        LDR.W    R0,??DataTable12
        BL       assert_failed
??FSMC_NORSRAMInit_28:
        LDR      R0,[R4, #+56]
        LDR      R0,[R0, #+24]
        CMP      R0,#+0
        BEQ.N    ??FSMC_NORSRAMInit_29
        LDR      R0,[R4, #+56]
        LDR      R0,[R0, #+24]
        CMP      R0,#+268435456
        BEQ.N    ??FSMC_NORSRAMInit_29
        LDR      R0,[R4, #+56]
        LDR      R0,[R0, #+24]
        CMP      R0,#+536870912
        BEQ.N    ??FSMC_NORSRAMInit_29
        LDR      R0,[R4, #+56]
        LDR      R0,[R0, #+24]
        CMP      R0,#+805306368
        BEQ.N    ??FSMC_NORSRAMInit_29
        MOVS     R1,#+245
        LDR.W    R0,??DataTable12
        BL       assert_failed
??FSMC_NORSRAMInit_29:
        LDR      R0,[R4, #+56]
        LDR      R0,[R0, #+0]
        LDR      R1,[R4, #+56]
        LDR      R1,[R1, #+4]
        ORRS     R0,R0,R1, LSL #+4
        LDR      R1,[R4, #+56]
        LDR      R1,[R1, #+8]
        ORRS     R0,R0,R1, LSL #+8
        LDR      R1,[R4, #+56]
        LDR      R1,[R1, #+16]
        ORRS     R0,R0,R1, LSL #+20
        LDR      R1,[R4, #+56]
        LDR      R1,[R1, #+20]
        ORRS     R0,R0,R1, LSL #+24
        LDR      R1,[R4, #+56]
        LDR      R1,[R1, #+24]
        ORRS     R0,R1,R0
        LDR      R1,[R4, #+0]
        LDR.W    R2,??DataTable14  ;; 0xa0000104
        STR      R0,[R2, R1, LSL #+2]
        B.N      ??FSMC_NORSRAMInit_30
??FSMC_NORSRAMInit_22:
        LDR      R0,[R4, #+0]
        LDR.W    R1,??DataTable14  ;; 0xa0000104
        MVNS     R2,#-268435456
        STR      R2,[R1, R0, LSL #+2]
??FSMC_NORSRAMInit_30:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FSMC_NANDInit:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        MOVS     R6,#+0
        MOVS     R7,#+0
        LDR      R0,[R4, #+0]
        CMP      R0,#+16
        BEQ.N    ??FSMC_NANDInit_0
        LDR      R0,[R4, #+0]
        MOV      R1,#+256
        CMP      R0,R1
        BEQ.N    ??FSMC_NANDInit_0
        MOVW     R1,#+273
        LDR.W    R0,??DataTable12
        BL       assert_failed
??FSMC_NANDInit_0:
        LDR      R0,[R4, #+4]
        CMP      R0,#+0
        BEQ.N    ??FSMC_NANDInit_1
        LDR      R0,[R4, #+4]
        CMP      R0,#+2
        BEQ.N    ??FSMC_NANDInit_1
        MOV      R1,#+274
        LDR.W    R0,??DataTable12
        BL       assert_failed
??FSMC_NANDInit_1:
        LDR      R0,[R4, #+8]
        CMP      R0,#+0
        BEQ.N    ??FSMC_NANDInit_2
        LDR      R0,[R4, #+8]
        CMP      R0,#+16
        BEQ.N    ??FSMC_NANDInit_2
        MOVW     R1,#+275
        LDR.W    R0,??DataTable12
        BL       assert_failed
??FSMC_NANDInit_2:
        LDR      R0,[R4, #+12]
        CMP      R0,#+0
        BEQ.N    ??FSMC_NANDInit_3
        LDR      R0,[R4, #+12]
        CMP      R0,#+64
        BEQ.N    ??FSMC_NANDInit_3
        MOV      R1,#+276
        LDR.W    R0,??DataTable12
        BL       assert_failed
??FSMC_NANDInit_3:
        LDR      R0,[R4, #+16]
        CMP      R0,#+0
        BEQ.N    ??FSMC_NANDInit_4
        LDR      R0,[R4, #+16]
        CMP      R0,#+131072
        BEQ.N    ??FSMC_NANDInit_4
        LDR      R0,[R4, #+16]
        CMP      R0,#+262144
        BEQ.N    ??FSMC_NANDInit_4
        LDR      R0,[R4, #+16]
        CMP      R0,#+393216
        BEQ.N    ??FSMC_NANDInit_4
        LDR      R0,[R4, #+16]
        CMP      R0,#+524288
        BEQ.N    ??FSMC_NANDInit_4
        LDR      R0,[R4, #+16]
        CMP      R0,#+655360
        BEQ.N    ??FSMC_NANDInit_4
        MOVW     R1,#+277
        LDR.W    R0,??DataTable12
        BL       assert_failed
??FSMC_NANDInit_4:
        LDR      R0,[R4, #+20]
        CMP      R0,#+255
        BLS.N    ??FSMC_NANDInit_5
        MOV      R1,#+278
        LDR.W    R0,??DataTable12
        BL       assert_failed
??FSMC_NANDInit_5:
        LDR      R0,[R4, #+24]
        CMP      R0,#+255
        BLS.N    ??FSMC_NANDInit_6
        MOVW     R1,#+279
        LDR.W    R0,??DataTable12
        BL       assert_failed
??FSMC_NANDInit_6:
        LDR      R0,[R4, #+28]
        LDR      R0,[R0, #+0]
        CMP      R0,#+255
        BLS.N    ??FSMC_NANDInit_7
        MOV      R1,#+280
        LDR.W    R0,??DataTable12
        BL       assert_failed
??FSMC_NANDInit_7:
        LDR      R0,[R4, #+28]
        LDR      R0,[R0, #+4]
        CMP      R0,#+255
        BLS.N    ??FSMC_NANDInit_8
        MOVW     R1,#+281
        LDR.W    R0,??DataTable12
        BL       assert_failed
??FSMC_NANDInit_8:
        LDR      R0,[R4, #+28]
        LDR      R0,[R0, #+8]
        CMP      R0,#+255
        BLS.N    ??FSMC_NANDInit_9
        MOV      R1,#+282
        LDR.W    R0,??DataTable12
        BL       assert_failed
??FSMC_NANDInit_9:
        LDR      R0,[R4, #+28]
        LDR      R0,[R0, #+12]
        CMP      R0,#+255
        BLS.N    ??FSMC_NANDInit_10
        MOVW     R1,#+283
        LDR.W    R0,??DataTable12
        BL       assert_failed
??FSMC_NANDInit_10:
        LDR      R0,[R4, #+32]
        LDR      R0,[R0, #+0]
        CMP      R0,#+255
        BLS.N    ??FSMC_NANDInit_11
        MOV      R1,#+284
        LDR.W    R0,??DataTable12
        BL       assert_failed
??FSMC_NANDInit_11:
        LDR      R0,[R4, #+32]
        LDR      R0,[R0, #+4]
        CMP      R0,#+255
        BLS.N    ??FSMC_NANDInit_12
        MOVW     R1,#+285
        LDR.W    R0,??DataTable12
        BL       assert_failed
??FSMC_NANDInit_12:
        LDR      R0,[R4, #+32]
        LDR      R0,[R0, #+8]
        CMP      R0,#+255
        BLS.N    ??FSMC_NANDInit_13
        MOV      R1,#+286
        LDR.W    R0,??DataTable12
        BL       assert_failed
??FSMC_NANDInit_13:
        LDR      R0,[R4, #+32]
        LDR      R0,[R0, #+12]
        CMP      R0,#+255
        BLS.N    ??FSMC_NANDInit_14
        MOVW     R1,#+287
        LDR.W    R0,??DataTable12
        BL       assert_failed
??FSMC_NANDInit_14:
        LDR      R0,[R4, #+4]
        LDR      R1,[R4, #+8]
        ORRS     R0,R1,R0
        LDR      R1,[R4, #+12]
        ORRS     R0,R1,R0
        LDR      R1,[R4, #+16]
        ORRS     R0,R1,R0
        LDR      R1,[R4, #+20]
        ORRS     R0,R0,R1, LSL #+9
        LDR      R1,[R4, #+24]
        ORRS     R0,R0,R1, LSL #+13
        ORRS     R0,R0,#0x8
        MOVS     R5,R0
        LDR      R0,[R4, #+28]
        LDR      R0,[R0, #+0]
        LDR      R1,[R4, #+28]
        LDR      R1,[R1, #+4]
        ORRS     R0,R0,R1, LSL #+8
        LDR      R1,[R4, #+28]
        LDR      R1,[R1, #+8]
        ORRS     R0,R0,R1, LSL #+16
        LDR      R1,[R4, #+28]
        LDR      R1,[R1, #+12]
        ORRS     R0,R0,R1, LSL #+24
        MOVS     R6,R0
        LDR      R0,[R4, #+32]
        LDR      R0,[R0, #+0]
        LDR      R1,[R4, #+32]
        LDR      R1,[R1, #+4]
        ORRS     R0,R0,R1, LSL #+8
        LDR      R1,[R4, #+32]
        LDR      R1,[R1, #+8]
        ORRS     R0,R0,R1, LSL #+16
        LDR      R1,[R4, #+32]
        LDR      R1,[R1, #+12]
        ORRS     R0,R0,R1, LSL #+24
        MOVS     R7,R0
        LDR      R0,[R4, #+0]
        CMP      R0,#+16
        BNE.N    ??FSMC_NANDInit_15
        LDR.W    R0,??DataTable13  ;; 0xa0000060
        STR      R5,[R0, #+0]
        LDR.W    R0,??DataTable13_2  ;; 0xa0000068
        STR      R6,[R0, #+0]
        LDR.W    R0,??DataTable13_3  ;; 0xa000006c
        STR      R7,[R0, #+0]
        B.N      ??FSMC_NANDInit_16
??FSMC_NANDInit_15:
        LDR.W    R0,??DataTable13_4  ;; 0xa0000080
        STR      R5,[R0, #+0]
        LDR.W    R0,??DataTable13_6  ;; 0xa0000088
        STR      R6,[R0, #+0]
        LDR.W    R0,??DataTable14_1  ;; 0xa000008c
        STR      R7,[R0, #+0]
??FSMC_NANDInit_16:
        POP      {R0,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FSMC_PCCARDInit:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR      R0,[R4, #+0]
        CMP      R0,#+0
        BEQ.N    ??FSMC_PCCARDInit_0
        LDR      R0,[R4, #+0]
        CMP      R0,#+2
        BEQ.N    ??FSMC_PCCARDInit_0
        MOVW     R1,#+337
        LDR.W    R0,??DataTable12
        BL       assert_failed
??FSMC_PCCARDInit_0:
        LDR      R0,[R4, #+4]
        CMP      R0,#+255
        BLS.N    ??FSMC_PCCARDInit_1
        MOV      R1,#+338
        LDR.W    R0,??DataTable12
        BL       assert_failed
??FSMC_PCCARDInit_1:
        LDR      R0,[R4, #+8]
        CMP      R0,#+255
        BLS.N    ??FSMC_PCCARDInit_2
        MOVW     R1,#+339
        LDR.W    R0,??DataTable12
        BL       assert_failed
??FSMC_PCCARDInit_2:
        LDR      R0,[R4, #+12]
        LDR      R0,[R0, #+0]
        CMP      R0,#+255
        BLS.N    ??FSMC_PCCARDInit_3
        MOVW     R1,#+341
        LDR.W    R0,??DataTable12
        BL       assert_failed
??FSMC_PCCARDInit_3:
        LDR      R0,[R4, #+12]
        LDR      R0,[R0, #+4]
        CMP      R0,#+255
        BLS.N    ??FSMC_PCCARDInit_4
        MOV      R1,#+342
        LDR.W    R0,??DataTable12
        BL       assert_failed
??FSMC_PCCARDInit_4:
        LDR      R0,[R4, #+12]
        LDR      R0,[R0, #+8]
        CMP      R0,#+255
        BLS.N    ??FSMC_PCCARDInit_5
        MOVW     R1,#+343
        LDR.W    R0,??DataTable12
        BL       assert_failed
??FSMC_PCCARDInit_5:
        LDR      R0,[R4, #+12]
        LDR      R0,[R0, #+12]
        CMP      R0,#+255
        BLS.N    ??FSMC_PCCARDInit_6
        MOV      R1,#+344
        LDR.W    R0,??DataTable12
        BL       assert_failed
??FSMC_PCCARDInit_6:
        LDR      R0,[R4, #+16]
        LDR      R0,[R0, #+0]
        CMP      R0,#+255
        BLS.N    ??FSMC_PCCARDInit_7
        MOV      R1,#+346
        LDR.W    R0,??DataTable12
        BL       assert_failed
??FSMC_PCCARDInit_7:
        LDR      R0,[R4, #+16]
        LDR      R0,[R0, #+4]
        CMP      R0,#+255
        BLS.N    ??FSMC_PCCARDInit_8
        MOVW     R1,#+347
        LDR.W    R0,??DataTable12
        BL       assert_failed
??FSMC_PCCARDInit_8:
        LDR      R0,[R4, #+16]
        LDR      R0,[R0, #+8]
        CMP      R0,#+255
        BLS.N    ??FSMC_PCCARDInit_9
        MOV      R1,#+348
        LDR.W    R0,??DataTable12
        BL       assert_failed
??FSMC_PCCARDInit_9:
        LDR      R0,[R4, #+16]
        LDR      R0,[R0, #+12]
        CMP      R0,#+255
        BLS.N    ??FSMC_PCCARDInit_10
        MOVW     R1,#+349
        LDR.W    R0,??DataTable12
        BL       assert_failed
??FSMC_PCCARDInit_10:
        LDR      R0,[R4, #+20]
        LDR      R0,[R0, #+0]
        CMP      R0,#+255
        BLS.N    ??FSMC_PCCARDInit_11
        MOV      R1,#+350
        LDR.W    R0,??DataTable12
        BL       assert_failed
??FSMC_PCCARDInit_11:
        LDR      R0,[R4, #+20]
        LDR      R0,[R0, #+4]
        CMP      R0,#+255
        BLS.N    ??FSMC_PCCARDInit_12
        MOVW     R1,#+351
        LDR.W    R0,??DataTable12
        BL       assert_failed
??FSMC_PCCARDInit_12:
        LDR      R0,[R4, #+20]
        LDR      R0,[R0, #+8]
        CMP      R0,#+255
        BLS.N    ??FSMC_PCCARDInit_13
        MOV      R1,#+352
        LDR.W    R0,??DataTable12
        BL       assert_failed
??FSMC_PCCARDInit_13:
        LDR      R0,[R4, #+20]
        LDR      R0,[R0, #+12]
        CMP      R0,#+255
        BLS.N    ??FSMC_PCCARDInit_14
        MOVW     R1,#+353
        LDR.W    R0,??DataTable12
        BL       assert_failed
??FSMC_PCCARDInit_14:
        LDR      R0,[R4, #+0]
        LDR      R1,[R4, #+4]
        ORRS     R0,R0,R1, LSL #+9
        LDR      R1,[R4, #+8]
        ORRS     R0,R0,R1, LSL #+13
        ORRS     R0,R0,#0x10
        LDR.W    R1,??DataTable13_7  ;; 0xa00000a0
        STR      R0,[R1, #+0]
        LDR      R0,[R4, #+12]
        LDR      R0,[R0, #+0]
        LDR      R1,[R4, #+12]
        LDR      R1,[R1, #+4]
        ORRS     R0,R0,R1, LSL #+8
        LDR      R1,[R4, #+12]
        LDR      R1,[R1, #+8]
        ORRS     R0,R0,R1, LSL #+16
        LDR      R1,[R4, #+12]
        LDR      R1,[R1, #+12]
        ORRS     R0,R0,R1, LSL #+24
        LDR.W    R1,??DataTable13_9  ;; 0xa00000a8
        STR      R0,[R1, #+0]
        LDR      R0,[R4, #+16]
        LDR      R0,[R0, #+0]
        LDR      R1,[R4, #+16]
        LDR      R1,[R1, #+4]
        ORRS     R0,R0,R1, LSL #+8
        LDR      R1,[R4, #+16]
        LDR      R1,[R1, #+8]
        ORRS     R0,R0,R1, LSL #+16
        LDR      R1,[R4, #+16]
        LDR      R1,[R1, #+12]
        ORRS     R0,R0,R1, LSL #+24
        LDR.W    R1,??DataTable13_10  ;; 0xa00000ac
        STR      R0,[R1, #+0]
        LDR      R0,[R4, #+20]
        LDR      R0,[R0, #+0]
        LDR      R1,[R4, #+20]
        LDR      R1,[R1, #+4]
        ORRS     R0,R0,R1, LSL #+8
        LDR      R1,[R4, #+20]
        LDR      R1,[R1, #+8]
        ORRS     R0,R0,R1, LSL #+16
        LDR      R1,[R4, #+20]
        LDR      R1,[R1, #+12]
        ORRS     R0,R0,R1, LSL #+24
        LDR.W    R1,??DataTable15  ;; 0xa00000b0
        STR      R0,[R1, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FSMC_NORSRAMStructInit:
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        MOVS     R1,#+2
        STR      R1,[R0, #+4]
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
        MOVS     R1,#+0
        STR      R1,[R0, #+20]
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
        MOVS     R1,#+0
        STR      R1,[R0, #+28]
        MOVS     R1,#+0
        STR      R1,[R0, #+32]
        MOV      R1,#+4096
        STR      R1,[R0, #+36]
        MOV      R1,#+8192
        STR      R1,[R0, #+40]
        MOVS     R1,#+0
        STR      R1,[R0, #+44]
        MOVS     R1,#+0
        STR      R1,[R0, #+48]
        LDR      R1,[R0, #+52]
        MOVS     R2,#+15
        STR      R2,[R1, #+0]
        LDR      R1,[R0, #+52]
        MOVS     R2,#+15
        STR      R2,[R1, #+4]
        LDR      R1,[R0, #+52]
        MOVS     R2,#+255
        STR      R2,[R1, #+8]
        LDR      R1,[R0, #+52]
        MOVS     R2,#+15
        STR      R2,[R1, #+12]
        LDR      R1,[R0, #+52]
        MOVS     R2,#+15
        STR      R2,[R1, #+16]
        LDR      R1,[R0, #+52]
        MOVS     R2,#+15
        STR      R2,[R1, #+20]
        LDR      R1,[R0, #+52]
        MOVS     R2,#+0
        STR      R2,[R1, #+24]
        LDR      R1,[R0, #+56]
        MOVS     R2,#+15
        STR      R2,[R1, #+0]
        LDR      R1,[R0, #+56]
        MOVS     R2,#+15
        STR      R2,[R1, #+4]
        LDR      R1,[R0, #+56]
        MOVS     R2,#+255
        STR      R2,[R1, #+8]
        LDR      R1,[R0, #+56]
        MOVS     R2,#+15
        STR      R2,[R1, #+12]
        LDR      R1,[R0, #+56]
        MOVS     R2,#+15
        STR      R2,[R1, #+16]
        LDR      R1,[R0, #+56]
        MOVS     R2,#+15
        STR      R2,[R1, #+20]
        LDR      R1,[R0, #+56]
        MOVS     R2,#+0
        STR      R2,[R1, #+24]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FSMC_NANDStructInit:
        MOVS     R1,#+16
        STR      R1,[R0, #+0]
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
        MOVS     R1,#+0
        STR      R1,[R0, #+20]
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
        LDR      R1,[R0, #+28]
        MOVS     R2,#+252
        STR      R2,[R1, #+0]
        LDR      R1,[R0, #+28]
        MOVS     R2,#+252
        STR      R2,[R1, #+4]
        LDR      R1,[R0, #+28]
        MOVS     R2,#+252
        STR      R2,[R1, #+8]
        LDR      R1,[R0, #+28]
        MOVS     R2,#+252
        STR      R2,[R1, #+12]
        LDR      R1,[R0, #+32]
        MOVS     R2,#+252
        STR      R2,[R1, #+0]
        LDR      R1,[R0, #+32]
        MOVS     R2,#+252
        STR      R2,[R1, #+4]
        LDR      R1,[R0, #+32]
        MOVS     R2,#+252
        STR      R2,[R1, #+8]
        LDR      R1,[R0, #+32]
        MOVS     R2,#+252
        STR      R2,[R1, #+12]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FSMC_PCCARDStructInit:
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
        LDR      R1,[R0, #+12]
        MOVS     R2,#+252
        STR      R2,[R1, #+0]
        LDR      R1,[R0, #+12]
        MOVS     R2,#+252
        STR      R2,[R1, #+4]
        LDR      R1,[R0, #+12]
        MOVS     R2,#+252
        STR      R2,[R1, #+8]
        LDR      R1,[R0, #+12]
        MOVS     R2,#+252
        STR      R2,[R1, #+12]
        LDR      R1,[R0, #+16]
        MOVS     R2,#+252
        STR      R2,[R1, #+0]
        LDR      R1,[R0, #+16]
        MOVS     R2,#+252
        STR      R2,[R1, #+4]
        LDR      R1,[R0, #+16]
        MOVS     R2,#+252
        STR      R2,[R1, #+8]
        LDR      R1,[R0, #+16]
        MOVS     R2,#+252
        STR      R2,[R1, #+12]
        LDR      R1,[R0, #+20]
        MOVS     R2,#+252
        STR      R2,[R1, #+0]
        LDR      R1,[R0, #+20]
        MOVS     R2,#+252
        STR      R2,[R1, #+4]
        LDR      R1,[R0, #+20]
        MOVS     R2,#+252
        STR      R2,[R1, #+8]
        LDR      R1,[R0, #+20]
        MOVS     R2,#+252
        STR      R2,[R1, #+12]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FSMC_NORSRAMCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        CMP      R4,#+0
        BEQ.N    ??FSMC_NORSRAMCmd_0
        CMP      R4,#+2
        BEQ.N    ??FSMC_NORSRAMCmd_0
        CMP      R4,#+4
        BEQ.N    ??FSMC_NORSRAMCmd_0
        CMP      R4,#+6
        BEQ.N    ??FSMC_NORSRAMCmd_0
        MOVW     R1,#+483
        LDR.N    R0,??DataTable12
        BL       assert_failed
??FSMC_NORSRAMCmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??FSMC_NORSRAMCmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??FSMC_NORSRAMCmd_1
        MOV      R1,#+484
        LDR.N    R0,??DataTable12
        BL       assert_failed
??FSMC_NORSRAMCmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??FSMC_NORSRAMCmd_2
        LSLS     R0,R4,#+2
        SUBS     R0,R0,#+1610612736
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LSLS     R1,R4,#+2
        SUBS     R1,R1,#+1610612736
        STR      R0,[R1, #+0]
        B.N      ??FSMC_NORSRAMCmd_3
??FSMC_NORSRAMCmd_2:
        LSLS     R0,R4,#+2
        SUBS     R0,R0,#+1610612736
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable15_1  ;; 0xffffe
        ANDS     R0,R1,R0
        LSLS     R1,R4,#+2
        SUBS     R1,R1,#+1610612736
        STR      R0,[R1, #+0]
??FSMC_NORSRAMCmd_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FSMC_NANDCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        CMP      R4,#+16
        BEQ.N    ??FSMC_NANDCmd_0
        MOV      R0,#+256
        CMP      R4,R0
        BEQ.N    ??FSMC_NANDCmd_0
        MOVW     R1,#+509
        LDR.N    R0,??DataTable12
        BL       assert_failed
??FSMC_NANDCmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??FSMC_NANDCmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??FSMC_NANDCmd_1
        MOV      R1,#+510
        LDR.N    R0,??DataTable12
        BL       assert_failed
??FSMC_NANDCmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??FSMC_NANDCmd_2
        CMP      R4,#+16
        BNE.N    ??FSMC_NANDCmd_3
        LDR.N    R0,??DataTable13  ;; 0xa0000060
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4
        LDR.N    R1,??DataTable13  ;; 0xa0000060
        STR      R0,[R1, #+0]
        B.N      ??FSMC_NANDCmd_4
??FSMC_NANDCmd_3:
        LDR.N    R0,??DataTable13_4  ;; 0xa0000080
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4
        LDR.N    R1,??DataTable13_4  ;; 0xa0000080
        STR      R0,[R1, #+0]
        B.N      ??FSMC_NANDCmd_4
??FSMC_NANDCmd_2:
        CMP      R4,#+16
        BNE.N    ??FSMC_NANDCmd_5
        LDR.N    R0,??DataTable13  ;; 0xa0000060
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable15_2  ;; 0xffffb
        ANDS     R0,R1,R0
        LDR.N    R1,??DataTable13  ;; 0xa0000060
        STR      R0,[R1, #+0]
        B.N      ??FSMC_NANDCmd_4
??FSMC_NANDCmd_5:
        LDR.N    R0,??DataTable13_4  ;; 0xa0000080
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable15_2  ;; 0xffffb
        ANDS     R0,R1,R0
        LDR.N    R1,??DataTable13_4  ;; 0xa0000080
        STR      R0,[R1, #+0]
??FSMC_NANDCmd_4:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FSMC_PCCARDCmd:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??FSMC_PCCARDCmd_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??FSMC_PCCARDCmd_0
        MOVW     R1,#+546
        LDR.N    R0,??DataTable12
        BL       assert_failed
??FSMC_PCCARDCmd_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??FSMC_PCCARDCmd_1
        LDR.N    R0,??DataTable13_7  ;; 0xa00000a0
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4
        LDR.N    R1,??DataTable13_7  ;; 0xa00000a0
        STR      R0,[R1, #+0]
        B.N      ??FSMC_PCCARDCmd_2
??FSMC_PCCARDCmd_1:
        LDR.N    R0,??DataTable13_7  ;; 0xa00000a0
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable15_2  ;; 0xffffb
        ANDS     R0,R1,R0
        LDR.N    R1,??DataTable13_7  ;; 0xa00000a0
        STR      R0,[R1, #+0]
??FSMC_PCCARDCmd_2:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FSMC_NANDECCCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        CMP      R4,#+16
        BEQ.N    ??FSMC_NANDECCCmd_0
        MOV      R0,#+256
        CMP      R4,R0
        BEQ.N    ??FSMC_NANDECCCmd_0
        MOV      R1,#+572
        LDR.N    R0,??DataTable12
        BL       assert_failed
??FSMC_NANDECCCmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??FSMC_NANDECCCmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??FSMC_NANDECCCmd_1
        MOVW     R1,#+573
        LDR.N    R0,??DataTable12
        BL       assert_failed
??FSMC_NANDECCCmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??FSMC_NANDECCCmd_2
        CMP      R4,#+16
        BNE.N    ??FSMC_NANDECCCmd_3
        LDR.N    R0,??DataTable13  ;; 0xa0000060
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x40
        LDR.N    R1,??DataTable13  ;; 0xa0000060
        STR      R0,[R1, #+0]
        B.N      ??FSMC_NANDECCCmd_4
??FSMC_NANDECCCmd_3:
        LDR.N    R0,??DataTable13_4  ;; 0xa0000080
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x40
        LDR.N    R1,??DataTable13_4  ;; 0xa0000080
        STR      R0,[R1, #+0]
        B.N      ??FSMC_NANDECCCmd_4
??FSMC_NANDECCCmd_2:
        CMP      R4,#+16
        BNE.N    ??FSMC_NANDECCCmd_5
        LDR.N    R0,??DataTable13  ;; 0xa0000060
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable15_3  ;; 0xfffbf
        ANDS     R0,R1,R0
        LDR.N    R1,??DataTable13  ;; 0xa0000060
        STR      R0,[R1, #+0]
        B.N      ??FSMC_NANDECCCmd_4
??FSMC_NANDECCCmd_5:
        LDR.N    R0,??DataTable13_4  ;; 0xa0000080
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable15_3  ;; 0xfffbf
        ANDS     R0,R1,R0
        LDR.N    R1,??DataTable13_4  ;; 0xa0000080
        STR      R0,[R1, #+0]
??FSMC_NANDECCCmd_4:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FSMC_GetECC:
        MOVS     R1,R0
        MOVS     R0,#+0
        CMP      R1,#+16
        BNE.N    ??FSMC_GetECC_0
        LDR.N    R2,??DataTable15_4  ;; 0xa0000074
        LDR      R2,[R2, #+0]
        MOVS     R0,R2
        B.N      ??FSMC_GetECC_1
??FSMC_GetECC_0:
        LDR.N    R2,??DataTable15_5  ;; 0xa0000094
        LDR      R2,[R2, #+0]
        MOVS     R0,R2
??FSMC_GetECC_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FSMC_ITConfig:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        CMP      R4,#+16
        BEQ.N    ??FSMC_ITConfig_0
        MOV      R0,#+256
        CMP      R4,R0
        BEQ.N    ??FSMC_ITConfig_0
        CMP      R4,#+4096
        BEQ.N    ??FSMC_ITConfig_0
        MOVW     R1,#+645
        LDR.N    R0,??DataTable12
        BL       assert_failed
??FSMC_ITConfig_0:
        BICS     R0,R5,#0x38
        CMP      R0,#+0
        BNE.N    ??FSMC_ITConfig_1
        CMP      R5,#+0
        BNE.N    ??FSMC_ITConfig_2
??FSMC_ITConfig_1:
        MOVW     R1,#+646
        LDR.N    R0,??DataTable12
        BL       assert_failed
??FSMC_ITConfig_2:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??FSMC_ITConfig_3
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+1
        BEQ.N    ??FSMC_ITConfig_3
        MOVW     R1,#+647
        LDR.N    R0,??DataTable12
        BL       assert_failed
??FSMC_ITConfig_3:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??FSMC_ITConfig_4
        CMP      R4,#+16
        BNE.N    ??FSMC_ITConfig_5
        LDR.N    R0,??DataTable13_1  ;; 0xa0000064
        LDR      R0,[R0, #+0]
        ORRS     R0,R5,R0
        LDR.N    R1,??DataTable13_1  ;; 0xa0000064
        STR      R0,[R1, #+0]
        B.N      ??FSMC_ITConfig_6
??FSMC_ITConfig_5:
        MOV      R0,#+256
        CMP      R4,R0
        BNE.N    ??FSMC_ITConfig_7
        LDR.N    R0,??DataTable13_5  ;; 0xa0000084
        LDR      R0,[R0, #+0]
        ORRS     R0,R5,R0
        LDR.N    R1,??DataTable13_5  ;; 0xa0000084
        STR      R0,[R1, #+0]
        B.N      ??FSMC_ITConfig_6
??FSMC_ITConfig_7:
        LDR.N    R0,??DataTable13_8  ;; 0xa00000a4
        LDR      R0,[R0, #+0]
        ORRS     R0,R5,R0
        LDR.N    R1,??DataTable13_8  ;; 0xa00000a4
        STR      R0,[R1, #+0]
        B.N      ??FSMC_ITConfig_6
??FSMC_ITConfig_4:
        CMP      R4,#+16
        BNE.N    ??FSMC_ITConfig_8
        LDR.N    R0,??DataTable13_1  ;; 0xa0000064
        LDR      R0,[R0, #+0]
        BICS     R0,R0,R5
        LDR.N    R1,??DataTable13_1  ;; 0xa0000064
        STR      R0,[R1, #+0]
        B.N      ??FSMC_ITConfig_6
??FSMC_ITConfig_8:
        MOV      R0,#+256
        CMP      R4,R0
        BNE.N    ??FSMC_ITConfig_9
        LDR.N    R0,??DataTable13_5  ;; 0xa0000084
        LDR      R0,[R0, #+0]
        BICS     R0,R0,R5
        LDR.N    R1,??DataTable13_5  ;; 0xa0000084
        STR      R0,[R1, #+0]
        B.N      ??FSMC_ITConfig_6
??FSMC_ITConfig_9:
        LDR.N    R0,??DataTable13_8  ;; 0xa00000a4
        LDR      R0,[R0, #+0]
        BICS     R0,R0,R5
        LDR.N    R1,??DataTable13_8  ;; 0xa00000a4
        STR      R0,[R1, #+0]
??FSMC_ITConfig_6:
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FSMC_GetFlagStatus:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        MOVS     R7,#+0
        CMP      R4,#+16
        BEQ.N    ??FSMC_GetFlagStatus_0
        MOV      R0,#+256
        CMP      R4,R0
        BEQ.N    ??FSMC_GetFlagStatus_0
        CMP      R4,#+4096
        BEQ.N    ??FSMC_GetFlagStatus_0
        MOVW     R1,#+709
        LDR.N    R0,??DataTable12
        BL       assert_failed
??FSMC_GetFlagStatus_0:
        CMP      R5,#+1
        BEQ.N    ??FSMC_GetFlagStatus_1
        CMP      R5,#+2
        BEQ.N    ??FSMC_GetFlagStatus_1
        CMP      R5,#+4
        BEQ.N    ??FSMC_GetFlagStatus_1
        CMP      R5,#+64
        BEQ.N    ??FSMC_GetFlagStatus_1
        MOVW     R1,#+710
        LDR.N    R0,??DataTable12
        BL       assert_failed
??FSMC_GetFlagStatus_1:
        CMP      R4,#+16
        BNE.N    ??FSMC_GetFlagStatus_2
        LDR.N    R0,??DataTable13_1  ;; 0xa0000064
        LDR      R0,[R0, #+0]
        MOVS     R7,R0
        B.N      ??FSMC_GetFlagStatus_3
??FSMC_GetFlagStatus_2:
        MOV      R0,#+256
        CMP      R4,R0
        BNE.N    ??FSMC_GetFlagStatus_4
        LDR.N    R0,??DataTable13_5  ;; 0xa0000084
        LDR      R0,[R0, #+0]
        MOVS     R7,R0
        B.N      ??FSMC_GetFlagStatus_3
??FSMC_GetFlagStatus_4:
        LDR.N    R0,??DataTable13_8  ;; 0xa00000a4
        LDR      R0,[R0, #+0]
        MOVS     R7,R0
??FSMC_GetFlagStatus_3:
        TST      R7,R5
        BEQ.N    ??FSMC_GetFlagStatus_5
        MOVS     R0,#+1
        MOVS     R6,R0
        B.N      ??FSMC_GetFlagStatus_6
??FSMC_GetFlagStatus_5:
        MOVS     R0,#+0
        MOVS     R6,R0
??FSMC_GetFlagStatus_6:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12:
        DC32     `?<Constant "D:\\\\zWk.Src\\\\Mango-M32-...">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FSMC_ClearFlag:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        CMP      R4,#+16
        BEQ.N    ??FSMC_ClearFlag_0
        MOV      R0,#+256
        CMP      R4,R0
        BEQ.N    ??FSMC_ClearFlag_0
        CMP      R4,#+4096
        BEQ.N    ??FSMC_ClearFlag_0
        MOV      R1,#+756
        LDR.N    R0,??DataTable15_6
        BL       assert_failed
??FSMC_ClearFlag_0:
        LSRS     R0,R5,#+3
        LSLS     R0,R0,#+3
        CMP      R0,#+0
        BNE.N    ??FSMC_ClearFlag_1
        CMP      R5,#+0
        BNE.N    ??FSMC_ClearFlag_2
??FSMC_ClearFlag_1:
        MOVW     R1,#+757
        LDR.N    R0,??DataTable15_6
        BL       assert_failed
??FSMC_ClearFlag_2:
        CMP      R4,#+16
        BNE.N    ??FSMC_ClearFlag_3
        LDR.N    R0,??DataTable13_1  ;; 0xa0000064
        LDR      R0,[R0, #+0]
        BICS     R0,R0,R5
        LDR.N    R1,??DataTable13_1  ;; 0xa0000064
        STR      R0,[R1, #+0]
        B.N      ??FSMC_ClearFlag_4
??FSMC_ClearFlag_3:
        MOV      R0,#+256
        CMP      R4,R0
        BNE.N    ??FSMC_ClearFlag_5
        LDR.N    R0,??DataTable13_5  ;; 0xa0000084
        LDR      R0,[R0, #+0]
        BICS     R0,R0,R5
        LDR.N    R1,??DataTable13_5  ;; 0xa0000084
        STR      R0,[R1, #+0]
        B.N      ??FSMC_ClearFlag_4
??FSMC_ClearFlag_5:
        LDR.N    R0,??DataTable13_8  ;; 0xa00000a4
        LDR      R0,[R0, #+0]
        BICS     R0,R0,R5
        LDR.N    R1,??DataTable13_8  ;; 0xa00000a4
        STR      R0,[R1, #+0]
??FSMC_ClearFlag_4:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13:
        DC32     0xa0000060

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_1:
        DC32     0xa0000064

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_2:
        DC32     0xa0000068

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_3:
        DC32     0xa000006c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_4:
        DC32     0xa0000080

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_5:
        DC32     0xa0000084

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_6:
        DC32     0xa0000088

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_7:
        DC32     0xa00000a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_8:
        DC32     0xa00000a4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_9:
        DC32     0xa00000a8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_10:
        DC32     0xa00000ac

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FSMC_GetITStatus:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        MOVS     R7,#+0
        MOVS     R8,#+0
        MOVS     R9,#+0
        CMP      R4,#+16
        BEQ.N    ??FSMC_GetITStatus_0
        MOV      R0,#+256
        CMP      R4,R0
        BEQ.N    ??FSMC_GetITStatus_0
        CMP      R4,#+4096
        BEQ.N    ??FSMC_GetITStatus_0
        MOVW     R1,#+794
        LDR.N    R0,??DataTable15_6
        BL       assert_failed
??FSMC_GetITStatus_0:
        CMP      R5,#+8
        BEQ.N    ??FSMC_GetITStatus_1
        CMP      R5,#+16
        BEQ.N    ??FSMC_GetITStatus_1
        CMP      R5,#+32
        BEQ.N    ??FSMC_GetITStatus_1
        MOVW     R1,#+795
        LDR.N    R0,??DataTable15_6
        BL       assert_failed
??FSMC_GetITStatus_1:
        CMP      R4,#+16
        BNE.N    ??FSMC_GetITStatus_2
        LDR.N    R0,??DataTable15_7  ;; 0xa0000064
        LDR      R0,[R0, #+0]
        MOVS     R7,R0
        B.N      ??FSMC_GetITStatus_3
??FSMC_GetITStatus_2:
        MOV      R0,#+256
        CMP      R4,R0
        BNE.N    ??FSMC_GetITStatus_4
        LDR.N    R0,??DataTable15_8  ;; 0xa0000084
        LDR      R0,[R0, #+0]
        MOVS     R7,R0
        B.N      ??FSMC_GetITStatus_3
??FSMC_GetITStatus_4:
        LDR.N    R0,??DataTable15_9  ;; 0xa00000a4
        LDR      R0,[R0, #+0]
        MOVS     R7,R0
??FSMC_GetITStatus_3:
        ANDS     R0,R5,R7
        MOV      R8,R0
        ANDS     R0,R7,R5, LSR #+3
        MOV      R9,R0
        CMP      R8,#+0
        BEQ.N    ??FSMC_GetITStatus_5
        CMP      R9,#+0
        BEQ.N    ??FSMC_GetITStatus_5
        MOVS     R0,#+1
        MOVS     R6,R0
        B.N      ??FSMC_GetITStatus_6
??FSMC_GetITStatus_5:
        MOVS     R0,#+0
        MOVS     R6,R0
??FSMC_GetITStatus_6:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4-R9,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14:
        DC32     0xa0000104

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_1:
        DC32     0xa000008c

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FSMC_ClearITPendingBit:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        CMP      R4,#+16
        BEQ.N    ??FSMC_ClearITPendingBit_0
        MOV      R0,#+256
        CMP      R4,R0
        BEQ.N    ??FSMC_ClearITPendingBit_0
        CMP      R4,#+4096
        BEQ.N    ??FSMC_ClearITPendingBit_0
        MOVW     R1,#+842
        LDR.N    R0,??DataTable15_6
        BL       assert_failed
??FSMC_ClearITPendingBit_0:
        BICS     R0,R5,#0x38
        CMP      R0,#+0
        BNE.N    ??FSMC_ClearITPendingBit_1
        CMP      R5,#+0
        BNE.N    ??FSMC_ClearITPendingBit_2
??FSMC_ClearITPendingBit_1:
        MOVW     R1,#+843
        LDR.N    R0,??DataTable15_6
        BL       assert_failed
??FSMC_ClearITPendingBit_2:
        CMP      R4,#+16
        BNE.N    ??FSMC_ClearITPendingBit_3
        LDR.N    R0,??DataTable15_7  ;; 0xa0000064
        LDR      R0,[R0, #+0]
        BICS     R0,R0,R5, LSR #+3
        LDR.N    R1,??DataTable15_7  ;; 0xa0000064
        STR      R0,[R1, #+0]
        B.N      ??FSMC_ClearITPendingBit_4
??FSMC_ClearITPendingBit_3:
        MOV      R0,#+256
        CMP      R4,R0
        BNE.N    ??FSMC_ClearITPendingBit_5
        LDR.N    R0,??DataTable15_8  ;; 0xa0000084
        LDR      R0,[R0, #+0]
        BICS     R0,R0,R5, LSR #+3
        LDR.N    R1,??DataTable15_8  ;; 0xa0000084
        STR      R0,[R1, #+0]
        B.N      ??FSMC_ClearITPendingBit_4
??FSMC_ClearITPendingBit_5:
        LDR.N    R0,??DataTable15_9  ;; 0xa00000a4
        LDR      R0,[R0, #+0]
        BICS     R0,R0,R5, LSR #+3
        LDR.N    R1,??DataTable15_9  ;; 0xa00000a4
        STR      R0,[R1, #+0]
??FSMC_ClearITPendingBit_4:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15:
        DC32     0xa00000b0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_1:
        DC32     0xffffe

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_2:
        DC32     0xffffb

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_3:
        DC32     0xfffbf

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_4:
        DC32     0xa0000074

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_5:
        DC32     0xa0000094

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_6:
        DC32     `?<Constant "D:\\\\zWk.Src\\\\Mango-M32-...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_7:
        DC32     0xa0000064

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_8:
        DC32     0xa0000084

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_9:
        DC32     0xa00000a4

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
        DC8 78H, 5FH, 66H, 73H, 6DH, 63H, 2EH, 63H
        DC8 0
        DC8 0, 0, 0

        END
// 
//   116 bytes in section .rodata
// 3 538 bytes in section .text
// 
// 3 538 bytes of CODE  memory
//   116 bytes of CONST memory
//
//Errors: none
//Warnings: none
