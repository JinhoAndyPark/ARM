///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.6.53336/W32 for ARM    25/Jun/2014  14:55:02 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    Libraries\STM32F10x_StdPeriph_Driver\src\stm32f10x_dma. /
//                    c                                                       /
//    Command line =  D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    Libraries\STM32F10x_StdPeriph_Driver\src\stm32f10x_dma. /
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
//                    project\Debug\List\stm32f10x_dma.s                      /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm32f10x_dma

        #define SHT_PROGBITS 0x1

        EXTERN assert_failed

        PUBLIC DMA_ClearFlag
        PUBLIC DMA_ClearITPendingBit
        PUBLIC DMA_Cmd
        PUBLIC DMA_DeInit
        PUBLIC DMA_GetCurrDataCounter
        PUBLIC DMA_GetFlagStatus
        PUBLIC DMA_GetITStatus
        PUBLIC DMA_ITConfig
        PUBLIC DMA_Init
        PUBLIC DMA_SetCurrDataCounter
        PUBLIC DMA_StructInit


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DMA_DeInit:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.W    R0,??DataTable7  ;; 0x40020008
        CMP      R4,R0
        BEQ.N    ??DMA_DeInit_0
        LDR.W    R0,??DataTable8  ;; 0x4002001c
        CMP      R4,R0
        BEQ.N    ??DMA_DeInit_0
        LDR.W    R0,??DataTable8_1  ;; 0x40020030
        CMP      R4,R0
        BEQ.N    ??DMA_DeInit_0
        LDR.W    R0,??DataTable8_2  ;; 0x40020044
        CMP      R4,R0
        BEQ.N    ??DMA_DeInit_0
        LDR.W    R0,??DataTable8_3  ;; 0x40020058
        CMP      R4,R0
        BEQ.N    ??DMA_DeInit_0
        LDR.W    R0,??DataTable8_4  ;; 0x4002006c
        CMP      R4,R0
        BEQ.N    ??DMA_DeInit_0
        LDR.W    R0,??DataTable8_5  ;; 0x40020080
        CMP      R4,R0
        BEQ.N    ??DMA_DeInit_0
        LDR.W    R0,??DataTable9  ;; 0x40020408
        CMP      R4,R0
        BEQ.N    ??DMA_DeInit_0
        LDR.W    R0,??DataTable9_1  ;; 0x4002041c
        CMP      R4,R0
        BEQ.N    ??DMA_DeInit_0
        LDR.W    R0,??DataTable9_2  ;; 0x40020430
        CMP      R4,R0
        BEQ.N    ??DMA_DeInit_0
        LDR.W    R0,??DataTable9_3  ;; 0x40020444
        CMP      R4,R0
        BEQ.N    ??DMA_DeInit_0
        LDR.W    R0,??DataTable9_4  ;; 0x40020458
        CMP      R4,R0
        BEQ.N    ??DMA_DeInit_0
        MOVS     R1,#+117
        LDR.W    R0,??DataTable9_5
        BL       assert_failed
??DMA_DeInit_0:
        LDR      R0,[R4, #+0]
        MOVW     R1,#+65534
        ANDS     R0,R1,R0
        STR      R0,[R4, #+0]
        MOVS     R0,#+0
        STR      R0,[R4, #+0]
        MOVS     R0,#+0
        STR      R0,[R4, #+4]
        MOVS     R0,#+0
        STR      R0,[R4, #+8]
        MOVS     R0,#+0
        STR      R0,[R4, #+12]
        LDR.W    R0,??DataTable7  ;; 0x40020008
        CMP      R4,R0
        BNE.N    ??DMA_DeInit_1
        LDR.W    R0,??DataTable9_6  ;; 0x40020004
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0xF
        LDR.W    R1,??DataTable9_6  ;; 0x40020004
        STR      R0,[R1, #+0]
        B.N      ??DMA_DeInit_2
??DMA_DeInit_1:
        LDR.W    R0,??DataTable8  ;; 0x4002001c
        CMP      R4,R0
        BNE.N    ??DMA_DeInit_3
        LDR.W    R0,??DataTable9_6  ;; 0x40020004
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0xF0
        LDR.W    R1,??DataTable9_6  ;; 0x40020004
        STR      R0,[R1, #+0]
        B.N      ??DMA_DeInit_2
??DMA_DeInit_3:
        LDR.W    R0,??DataTable8_1  ;; 0x40020030
        CMP      R4,R0
        BNE.N    ??DMA_DeInit_4
        LDR.W    R0,??DataTable9_6  ;; 0x40020004
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0xF00
        LDR.W    R1,??DataTable9_6  ;; 0x40020004
        STR      R0,[R1, #+0]
        B.N      ??DMA_DeInit_2
??DMA_DeInit_4:
        LDR.W    R0,??DataTable8_2  ;; 0x40020044
        CMP      R4,R0
        BNE.N    ??DMA_DeInit_5
        LDR.W    R0,??DataTable9_6  ;; 0x40020004
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0xF000
        LDR.W    R1,??DataTable9_6  ;; 0x40020004
        STR      R0,[R1, #+0]
        B.N      ??DMA_DeInit_2
??DMA_DeInit_5:
        LDR.W    R0,??DataTable8_3  ;; 0x40020058
        CMP      R4,R0
        BNE.N    ??DMA_DeInit_6
        LDR.W    R0,??DataTable9_6  ;; 0x40020004
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0xF0000
        LDR.W    R1,??DataTable9_6  ;; 0x40020004
        STR      R0,[R1, #+0]
        B.N      ??DMA_DeInit_2
??DMA_DeInit_6:
        LDR.W    R0,??DataTable8_4  ;; 0x4002006c
        CMP      R4,R0
        BNE.N    ??DMA_DeInit_7
        LDR.W    R0,??DataTable9_6  ;; 0x40020004
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0xF00000
        LDR.W    R1,??DataTable9_6  ;; 0x40020004
        STR      R0,[R1, #+0]
        B.N      ??DMA_DeInit_2
??DMA_DeInit_7:
        LDR.W    R0,??DataTable8_5  ;; 0x40020080
        CMP      R4,R0
        BNE.N    ??DMA_DeInit_8
        LDR.W    R0,??DataTable9_6  ;; 0x40020004
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0xF000000
        LDR.W    R1,??DataTable9_6  ;; 0x40020004
        STR      R0,[R1, #+0]
        B.N      ??DMA_DeInit_2
??DMA_DeInit_8:
        LDR.W    R0,??DataTable9  ;; 0x40020408
        CMP      R4,R0
        BNE.N    ??DMA_DeInit_9
        LDR.W    R0,??DataTable9_7  ;; 0x40020404
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0xF
        LDR.W    R1,??DataTable9_7  ;; 0x40020404
        STR      R0,[R1, #+0]
        B.N      ??DMA_DeInit_2
??DMA_DeInit_9:
        LDR.W    R0,??DataTable9_1  ;; 0x4002041c
        CMP      R4,R0
        BNE.N    ??DMA_DeInit_10
        LDR.W    R0,??DataTable9_7  ;; 0x40020404
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0xF0
        LDR.W    R1,??DataTable9_7  ;; 0x40020404
        STR      R0,[R1, #+0]
        B.N      ??DMA_DeInit_2
??DMA_DeInit_10:
        LDR.W    R0,??DataTable9_2  ;; 0x40020430
        CMP      R4,R0
        BNE.N    ??DMA_DeInit_11
        LDR.W    R0,??DataTable9_7  ;; 0x40020404
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0xF00
        LDR.W    R1,??DataTable9_7  ;; 0x40020404
        STR      R0,[R1, #+0]
        B.N      ??DMA_DeInit_2
??DMA_DeInit_11:
        LDR.W    R0,??DataTable9_3  ;; 0x40020444
        CMP      R4,R0
        BNE.N    ??DMA_DeInit_12
        LDR.W    R0,??DataTable9_7  ;; 0x40020404
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0xF000
        LDR.W    R1,??DataTable9_7  ;; 0x40020404
        STR      R0,[R1, #+0]
        B.N      ??DMA_DeInit_2
??DMA_DeInit_12:
        LDR.W    R0,??DataTable9_4  ;; 0x40020458
        CMP      R4,R0
        BNE.N    ??DMA_DeInit_2
        LDR.W    R0,??DataTable9_7  ;; 0x40020404
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0xF0000
        LDR.W    R1,??DataTable9_7  ;; 0x40020404
        STR      R0,[R1, #+0]
??DMA_DeInit_2:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DMA_Init:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.W    R0,??DataTable7  ;; 0x40020008
        CMP      R4,R0
        BEQ.N    ??DMA_Init_0
        LDR.W    R0,??DataTable8  ;; 0x4002001c
        CMP      R4,R0
        BEQ.N    ??DMA_Init_0
        LDR.W    R0,??DataTable8_1  ;; 0x40020030
        CMP      R4,R0
        BEQ.N    ??DMA_Init_0
        LDR.W    R0,??DataTable8_2  ;; 0x40020044
        CMP      R4,R0
        BEQ.N    ??DMA_Init_0
        LDR.W    R0,??DataTable8_3  ;; 0x40020058
        CMP      R4,R0
        BEQ.N    ??DMA_Init_0
        LDR.W    R0,??DataTable8_4  ;; 0x4002006c
        CMP      R4,R0
        BEQ.N    ??DMA_Init_0
        LDR.W    R0,??DataTable8_5  ;; 0x40020080
        CMP      R4,R0
        BEQ.N    ??DMA_Init_0
        LDR.W    R0,??DataTable9  ;; 0x40020408
        CMP      R4,R0
        BEQ.N    ??DMA_Init_0
        LDR.W    R0,??DataTable9_1  ;; 0x4002041c
        CMP      R4,R0
        BEQ.N    ??DMA_Init_0
        LDR.W    R0,??DataTable9_2  ;; 0x40020430
        CMP      R4,R0
        BEQ.N    ??DMA_Init_0
        LDR.W    R0,??DataTable9_3  ;; 0x40020444
        CMP      R4,R0
        BEQ.N    ??DMA_Init_0
        LDR.W    R0,??DataTable9_4  ;; 0x40020458
        CMP      R4,R0
        BEQ.N    ??DMA_Init_0
        MOVS     R1,#+213
        LDR.W    R0,??DataTable9_5
        BL       assert_failed
??DMA_Init_0:
        LDR      R0,[R5, #+8]
        CMP      R0,#+16
        BEQ.N    ??DMA_Init_1
        LDR      R0,[R5, #+8]
        CMP      R0,#+0
        BEQ.N    ??DMA_Init_1
        MOVS     R1,#+214
        LDR.W    R0,??DataTable9_5
        BL       assert_failed
??DMA_Init_1:
        LDR      R0,[R5, #+12]
        CMP      R0,#+0
        BEQ.N    ??DMA_Init_2
        LDR      R0,[R5, #+12]
        CMP      R0,#+65536
        BCC.N    ??DMA_Init_3
??DMA_Init_2:
        MOVS     R1,#+215
        LDR.W    R0,??DataTable9_5
        BL       assert_failed
??DMA_Init_3:
        LDR      R0,[R5, #+16]
        CMP      R0,#+64
        BEQ.N    ??DMA_Init_4
        LDR      R0,[R5, #+16]
        CMP      R0,#+0
        BEQ.N    ??DMA_Init_4
        MOVS     R1,#+216
        LDR.W    R0,??DataTable9_5
        BL       assert_failed
??DMA_Init_4:
        LDR      R0,[R5, #+20]
        CMP      R0,#+128
        BEQ.N    ??DMA_Init_5
        LDR      R0,[R5, #+20]
        CMP      R0,#+0
        BEQ.N    ??DMA_Init_5
        MOVS     R1,#+217
        LDR.W    R0,??DataTable9_5
        BL       assert_failed
??DMA_Init_5:
        LDR      R0,[R5, #+24]
        CMP      R0,#+0
        BEQ.N    ??DMA_Init_6
        LDR      R0,[R5, #+24]
        MOV      R1,#+256
        CMP      R0,R1
        BEQ.N    ??DMA_Init_6
        LDR      R0,[R5, #+24]
        MOV      R1,#+512
        CMP      R0,R1
        BEQ.N    ??DMA_Init_6
        MOVS     R1,#+218
        LDR.W    R0,??DataTable9_5
        BL       assert_failed
??DMA_Init_6:
        LDR      R0,[R5, #+28]
        CMP      R0,#+0
        BEQ.N    ??DMA_Init_7
        LDR      R0,[R5, #+28]
        CMP      R0,#+1024
        BEQ.N    ??DMA_Init_7
        LDR      R0,[R5, #+28]
        CMP      R0,#+2048
        BEQ.N    ??DMA_Init_7
        MOVS     R1,#+219
        LDR.W    R0,??DataTable9_5
        BL       assert_failed
??DMA_Init_7:
        LDR      R0,[R5, #+32]
        CMP      R0,#+32
        BEQ.N    ??DMA_Init_8
        LDR      R0,[R5, #+32]
        CMP      R0,#+0
        BEQ.N    ??DMA_Init_8
        MOVS     R1,#+220
        LDR.W    R0,??DataTable9_5
        BL       assert_failed
??DMA_Init_8:
        LDR      R0,[R5, #+36]
        CMP      R0,#+12288
        BEQ.N    ??DMA_Init_9
        LDR      R0,[R5, #+36]
        CMP      R0,#+8192
        BEQ.N    ??DMA_Init_9
        LDR      R0,[R5, #+36]
        CMP      R0,#+4096
        BEQ.N    ??DMA_Init_9
        LDR      R0,[R5, #+36]
        CMP      R0,#+0
        BEQ.N    ??DMA_Init_9
        MOVS     R1,#+221
        LDR.W    R0,??DataTable9_5
        BL       assert_failed
??DMA_Init_9:
        LDR      R0,[R5, #+40]
        CMP      R0,#+16384
        BEQ.N    ??DMA_Init_10
        LDR      R0,[R5, #+40]
        CMP      R0,#+0
        BEQ.N    ??DMA_Init_10
        MOVS     R1,#+222
        LDR.W    R0,??DataTable9_5
        BL       assert_failed
??DMA_Init_10:
        LDR      R0,[R4, #+0]
        MOVS     R6,R0
        LDR.W    R0,??DataTable9_8  ;; 0xffff800f
        ANDS     R6,R0,R6
        LDR      R0,[R5, #+8]
        LDR      R1,[R5, #+32]
        ORRS     R0,R1,R0
        LDR      R1,[R5, #+16]
        ORRS     R0,R1,R0
        LDR      R1,[R5, #+20]
        ORRS     R0,R1,R0
        LDR      R1,[R5, #+24]
        ORRS     R0,R1,R0
        LDR      R1,[R5, #+28]
        ORRS     R0,R1,R0
        LDR      R1,[R5, #+36]
        ORRS     R0,R1,R0
        LDR      R1,[R5, #+40]
        ORRS     R0,R1,R0
        ORRS     R6,R0,R6
        STR      R6,[R4, #+0]
        LDR      R0,[R5, #+12]
        STR      R0,[R4, #+4]
        LDR      R0,[R5, #+0]
        STR      R0,[R4, #+8]
        LDR      R0,[R5, #+4]
        STR      R0,[R4, #+12]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DMA_StructInit:
        MOVS     R1,#+0
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
        MOVS     R1,#+0
        STR      R1,[R0, #+28]
        MOVS     R1,#+0
        STR      R1,[R0, #+32]
        MOVS     R1,#+0
        STR      R1,[R0, #+36]
        MOVS     R1,#+0
        STR      R1,[R0, #+40]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DMA_Cmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable7  ;; 0x40020008
        CMP      R4,R0
        BEQ.N    ??DMA_Cmd_0
        LDR.W    R0,??DataTable8  ;; 0x4002001c
        CMP      R4,R0
        BEQ.N    ??DMA_Cmd_0
        LDR.W    R0,??DataTable8_1  ;; 0x40020030
        CMP      R4,R0
        BEQ.N    ??DMA_Cmd_0
        LDR.W    R0,??DataTable8_2  ;; 0x40020044
        CMP      R4,R0
        BEQ.N    ??DMA_Cmd_0
        LDR.W    R0,??DataTable8_3  ;; 0x40020058
        CMP      R4,R0
        BEQ.N    ??DMA_Cmd_0
        LDR.W    R0,??DataTable8_4  ;; 0x4002006c
        CMP      R4,R0
        BEQ.N    ??DMA_Cmd_0
        LDR.W    R0,??DataTable8_5  ;; 0x40020080
        CMP      R4,R0
        BEQ.N    ??DMA_Cmd_0
        LDR.W    R0,??DataTable9  ;; 0x40020408
        CMP      R4,R0
        BEQ.N    ??DMA_Cmd_0
        LDR.W    R0,??DataTable9_1  ;; 0x4002041c
        CMP      R4,R0
        BEQ.N    ??DMA_Cmd_0
        LDR.W    R0,??DataTable9_2  ;; 0x40020430
        CMP      R4,R0
        BEQ.N    ??DMA_Cmd_0
        LDR.W    R0,??DataTable9_3  ;; 0x40020444
        CMP      R4,R0
        BEQ.N    ??DMA_Cmd_0
        LDR.W    R0,??DataTable9_4  ;; 0x40020458
        CMP      R4,R0
        BEQ.N    ??DMA_Cmd_0
        MOVW     R1,#+303
        LDR.W    R0,??DataTable9_5
        BL       assert_failed
??DMA_Cmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??DMA_Cmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??DMA_Cmd_1
        MOV      R1,#+304
        LDR.W    R0,??DataTable9_5
        BL       assert_failed
??DMA_Cmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??DMA_Cmd_2
        LDR      R0,[R4, #+0]
        ORRS     R0,R0,#0x1
        STR      R0,[R4, #+0]
        B.N      ??DMA_Cmd_3
??DMA_Cmd_2:
        LDR      R0,[R4, #+0]
        MOVW     R1,#+65534
        ANDS     R0,R1,R0
        STR      R0,[R4, #+0]
??DMA_Cmd_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DMA_ITConfig:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        LDR.W    R0,??DataTable7  ;; 0x40020008
        CMP      R4,R0
        BEQ.N    ??DMA_ITConfig_0
        LDR.W    R0,??DataTable8  ;; 0x4002001c
        CMP      R4,R0
        BEQ.N    ??DMA_ITConfig_0
        LDR.W    R0,??DataTable8_1  ;; 0x40020030
        CMP      R4,R0
        BEQ.N    ??DMA_ITConfig_0
        LDR.W    R0,??DataTable8_2  ;; 0x40020044
        CMP      R4,R0
        BEQ.N    ??DMA_ITConfig_0
        LDR.W    R0,??DataTable8_3  ;; 0x40020058
        CMP      R4,R0
        BEQ.N    ??DMA_ITConfig_0
        LDR.W    R0,??DataTable8_4  ;; 0x4002006c
        CMP      R4,R0
        BEQ.N    ??DMA_ITConfig_0
        LDR.W    R0,??DataTable8_5  ;; 0x40020080
        CMP      R4,R0
        BEQ.N    ??DMA_ITConfig_0
        LDR.W    R0,??DataTable9  ;; 0x40020408
        CMP      R4,R0
        BEQ.N    ??DMA_ITConfig_0
        LDR.W    R0,??DataTable9_1  ;; 0x4002041c
        CMP      R4,R0
        BEQ.N    ??DMA_ITConfig_0
        LDR.W    R0,??DataTable9_2  ;; 0x40020430
        CMP      R4,R0
        BEQ.N    ??DMA_ITConfig_0
        LDR.W    R0,??DataTable9_3  ;; 0x40020444
        CMP      R4,R0
        BEQ.N    ??DMA_ITConfig_0
        LDR.W    R0,??DataTable9_4  ;; 0x40020458
        CMP      R4,R0
        BEQ.N    ??DMA_ITConfig_0
        MOVW     R1,#+335
        LDR.W    R0,??DataTable9_5
        BL       assert_failed
??DMA_ITConfig_0:
        BICS     R0,R5,#0xE
        CMP      R0,#+0
        BNE.N    ??DMA_ITConfig_1
        CMP      R5,#+0
        BNE.N    ??DMA_ITConfig_2
??DMA_ITConfig_1:
        MOV      R1,#+336
        LDR.W    R0,??DataTable9_5
        BL       assert_failed
??DMA_ITConfig_2:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??DMA_ITConfig_3
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+1
        BEQ.N    ??DMA_ITConfig_3
        MOVW     R1,#+337
        LDR.W    R0,??DataTable9_5
        BL       assert_failed
??DMA_ITConfig_3:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??DMA_ITConfig_4
        LDR      R0,[R4, #+0]
        ORRS     R0,R5,R0
        STR      R0,[R4, #+0]
        B.N      ??DMA_ITConfig_5
??DMA_ITConfig_4:
        LDR      R0,[R4, #+0]
        BICS     R0,R0,R5
        STR      R0,[R4, #+0]
??DMA_ITConfig_5:
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DMA_SetCurrDataCounter:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable7  ;; 0x40020008
        CMP      R4,R0
        BEQ.N    ??DMA_SetCurrDataCounter_0
        LDR.W    R0,??DataTable8  ;; 0x4002001c
        CMP      R4,R0
        BEQ.N    ??DMA_SetCurrDataCounter_0
        LDR.W    R0,??DataTable8_1  ;; 0x40020030
        CMP      R4,R0
        BEQ.N    ??DMA_SetCurrDataCounter_0
        LDR.W    R0,??DataTable8_2  ;; 0x40020044
        CMP      R4,R0
        BEQ.N    ??DMA_SetCurrDataCounter_0
        LDR.W    R0,??DataTable8_3  ;; 0x40020058
        CMP      R4,R0
        BEQ.N    ??DMA_SetCurrDataCounter_0
        LDR.W    R0,??DataTable8_4  ;; 0x4002006c
        CMP      R4,R0
        BEQ.N    ??DMA_SetCurrDataCounter_0
        LDR.W    R0,??DataTable8_5  ;; 0x40020080
        CMP      R4,R0
        BEQ.N    ??DMA_SetCurrDataCounter_0
        LDR.W    R0,??DataTable9  ;; 0x40020408
        CMP      R4,R0
        BEQ.N    ??DMA_SetCurrDataCounter_0
        LDR.W    R0,??DataTable9_1  ;; 0x4002041c
        CMP      R4,R0
        BEQ.N    ??DMA_SetCurrDataCounter_0
        LDR.W    R0,??DataTable9_2  ;; 0x40020430
        CMP      R4,R0
        BEQ.N    ??DMA_SetCurrDataCounter_0
        LDR.W    R0,??DataTable9_3  ;; 0x40020444
        CMP      R4,R0
        BEQ.N    ??DMA_SetCurrDataCounter_0
        LDR.W    R0,??DataTable9_4  ;; 0x40020458
        CMP      R4,R0
        BEQ.N    ??DMA_SetCurrDataCounter_0
        MOV      R1,#+362
        LDR.W    R0,??DataTable9_5
        BL       assert_failed
??DMA_SetCurrDataCounter_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        STR      R5,[R4, #+4]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DMA_GetCurrDataCounter:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.N    R0,??DataTable7  ;; 0x40020008
        CMP      R4,R0
        BEQ.N    ??DMA_GetCurrDataCounter_0
        LDR.W    R0,??DataTable8  ;; 0x4002001c
        CMP      R4,R0
        BEQ.N    ??DMA_GetCurrDataCounter_0
        LDR.W    R0,??DataTable8_1  ;; 0x40020030
        CMP      R4,R0
        BEQ.N    ??DMA_GetCurrDataCounter_0
        LDR.W    R0,??DataTable8_2  ;; 0x40020044
        CMP      R4,R0
        BEQ.N    ??DMA_GetCurrDataCounter_0
        LDR.W    R0,??DataTable8_3  ;; 0x40020058
        CMP      R4,R0
        BEQ.N    ??DMA_GetCurrDataCounter_0
        LDR.W    R0,??DataTable8_4  ;; 0x4002006c
        CMP      R4,R0
        BEQ.N    ??DMA_GetCurrDataCounter_0
        LDR.W    R0,??DataTable8_5  ;; 0x40020080
        CMP      R4,R0
        BEQ.N    ??DMA_GetCurrDataCounter_0
        LDR.W    R0,??DataTable9  ;; 0x40020408
        CMP      R4,R0
        BEQ.N    ??DMA_GetCurrDataCounter_0
        LDR.W    R0,??DataTable9_1  ;; 0x4002041c
        CMP      R4,R0
        BEQ.N    ??DMA_GetCurrDataCounter_0
        LDR.W    R0,??DataTable9_2  ;; 0x40020430
        CMP      R4,R0
        BEQ.N    ??DMA_GetCurrDataCounter_0
        LDR.W    R0,??DataTable9_3  ;; 0x40020444
        CMP      R4,R0
        BEQ.N    ??DMA_GetCurrDataCounter_0
        LDR.W    R0,??DataTable9_4  ;; 0x40020458
        CMP      R4,R0
        BEQ.N    ??DMA_GetCurrDataCounter_0
        MOV      R1,#+380
        LDR.W    R0,??DataTable9_5
        BL       assert_failed
??DMA_GetCurrDataCounter_0:
        LDR      R0,[R4, #+4]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DMA_GetFlagStatus:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        MOVS     R6,#+0
        CMP      R4,#+1
        BEQ.W    ??DMA_GetFlagStatus_0
        CMP      R4,#+2
        BEQ.W    ??DMA_GetFlagStatus_0
        CMP      R4,#+4
        BEQ.W    ??DMA_GetFlagStatus_0
        CMP      R4,#+8
        BEQ.W    ??DMA_GetFlagStatus_0
        CMP      R4,#+16
        BEQ.W    ??DMA_GetFlagStatus_0
        CMP      R4,#+32
        BEQ.W    ??DMA_GetFlagStatus_0
        CMP      R4,#+64
        BEQ.W    ??DMA_GetFlagStatus_0
        CMP      R4,#+128
        BEQ.W    ??DMA_GetFlagStatus_0
        MOV      R0,#+256
        CMP      R4,R0
        BEQ.N    ??DMA_GetFlagStatus_0
        MOV      R0,#+512
        CMP      R4,R0
        BEQ.N    ??DMA_GetFlagStatus_0
        CMP      R4,#+1024
        BEQ.N    ??DMA_GetFlagStatus_0
        CMP      R4,#+2048
        BEQ.N    ??DMA_GetFlagStatus_0
        CMP      R4,#+4096
        BEQ.N    ??DMA_GetFlagStatus_0
        CMP      R4,#+8192
        BEQ.N    ??DMA_GetFlagStatus_0
        CMP      R4,#+16384
        BEQ.N    ??DMA_GetFlagStatus_0
        CMP      R4,#+32768
        BEQ.N    ??DMA_GetFlagStatus_0
        CMP      R4,#+65536
        BEQ.N    ??DMA_GetFlagStatus_0
        CMP      R4,#+131072
        BEQ.N    ??DMA_GetFlagStatus_0
        CMP      R4,#+262144
        BEQ.N    ??DMA_GetFlagStatus_0
        CMP      R4,#+524288
        BEQ.N    ??DMA_GetFlagStatus_0
        CMP      R4,#+1048576
        BEQ.N    ??DMA_GetFlagStatus_0
        CMP      R4,#+2097152
        BEQ.N    ??DMA_GetFlagStatus_0
        CMP      R4,#+4194304
        BEQ.N    ??DMA_GetFlagStatus_0
        CMP      R4,#+8388608
        BEQ.N    ??DMA_GetFlagStatus_0
        CMP      R4,#+16777216
        BEQ.N    ??DMA_GetFlagStatus_0
        CMP      R4,#+33554432
        BEQ.N    ??DMA_GetFlagStatus_0
        CMP      R4,#+67108864
        BEQ.N    ??DMA_GetFlagStatus_0
        CMP      R4,#+134217728
        BEQ.N    ??DMA_GetFlagStatus_0
        LDR.N    R0,??DataTable9_9  ;; 0x10000001
        CMP      R4,R0
        BEQ.N    ??DMA_GetFlagStatus_0
        LDR.N    R0,??DataTable9_10  ;; 0x10000002
        CMP      R4,R0
        BEQ.N    ??DMA_GetFlagStatus_0
        LDR.N    R0,??DataTable9_11  ;; 0x10000004
        CMP      R4,R0
        BEQ.N    ??DMA_GetFlagStatus_0
        LDR.N    R0,??DataTable9_12  ;; 0x10000008
        CMP      R4,R0
        BEQ.N    ??DMA_GetFlagStatus_0
        LDR.N    R0,??DataTable9_13  ;; 0x10000010
        CMP      R4,R0
        BEQ.N    ??DMA_GetFlagStatus_0
        LDR.N    R0,??DataTable9_14  ;; 0x10000020
        CMP      R4,R0
        BEQ.N    ??DMA_GetFlagStatus_0
        LDR.N    R0,??DataTable9_15  ;; 0x10000040
        CMP      R4,R0
        BEQ.N    ??DMA_GetFlagStatus_0
        LDR.N    R0,??DataTable9_16  ;; 0x10000080
        CMP      R4,R0
        BEQ.N    ??DMA_GetFlagStatus_0
        LDR.N    R0,??DataTable9_17  ;; 0x10000100
        CMP      R4,R0
        BEQ.N    ??DMA_GetFlagStatus_0
        LDR.N    R0,??DataTable9_18  ;; 0x10000200
        CMP      R4,R0
        BEQ.N    ??DMA_GetFlagStatus_0
        LDR.N    R0,??DataTable9_19  ;; 0x10000400
        CMP      R4,R0
        BEQ.N    ??DMA_GetFlagStatus_0
        LDR.N    R0,??DataTable9_20  ;; 0x10000800
        CMP      R4,R0
        BEQ.N    ??DMA_GetFlagStatus_0
        CMP      R4,#+268439552
        BEQ.N    ??DMA_GetFlagStatus_0
        LDR.N    R0,??DataTable9_21  ;; 0x10002000
        CMP      R4,R0
        BEQ.N    ??DMA_GetFlagStatus_0
        LDR.N    R0,??DataTable9_22  ;; 0x10004000
        CMP      R4,R0
        BEQ.N    ??DMA_GetFlagStatus_0
        LDR.N    R0,??DataTable9_23  ;; 0x10008000
        CMP      R4,R0
        BEQ.N    ??DMA_GetFlagStatus_0
        LDR.N    R0,??DataTable9_24  ;; 0x10010000
        CMP      R4,R0
        BEQ.N    ??DMA_GetFlagStatus_0
        LDR.N    R0,??DataTable9_25  ;; 0x10020000
        CMP      R4,R0
        BEQ.N    ??DMA_GetFlagStatus_0
        LDR.N    R0,??DataTable9_26  ;; 0x10040000
        CMP      R4,R0
        BEQ.N    ??DMA_GetFlagStatus_0
        LDR.N    R0,??DataTable9_27  ;; 0x10080000
        CMP      R4,R0
        BEQ.N    ??DMA_GetFlagStatus_0
        MOVW     R1,#+445
        LDR.N    R0,??DataTable9_5
        BL       assert_failed
??DMA_GetFlagStatus_0:
        LSLS     R0,R4,#+3
        BPL.N    ??DMA_GetFlagStatus_1
        LDR.N    R0,??DataTable9_28  ;; 0x40020400
        LDR      R0,[R0, #+0]
        MOVS     R6,R0
        B.N      ??DMA_GetFlagStatus_2
??DMA_GetFlagStatus_1:
        LDR.N    R0,??DataTable9_29  ;; 0x40020000
        LDR      R0,[R0, #+0]
        MOVS     R6,R0
??DMA_GetFlagStatus_2:
        TST      R6,R4
        BEQ.N    ??DMA_GetFlagStatus_3
        MOVS     R0,#+1
        MOVS     R5,R0
        B.N      ??DMA_GetFlagStatus_4
??DMA_GetFlagStatus_3:
        MOVS     R0,#+0
        MOVS     R5,R0
??DMA_GetFlagStatus_4:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DMA_ClearFlag:
        PUSH     {R4,LR}
        MOVS     R4,R0
        TST      R4,#0xF0000000
        BEQ.N    ??DMA_ClearFlag_0
        LDR.N    R0,??DataTable9_30  ;; 0xeff00000
        TST      R4,R0
        BNE.N    ??DMA_ClearFlag_1
??DMA_ClearFlag_0:
        CMP      R4,#+0
        BNE.N    ??DMA_ClearFlag_2
??DMA_ClearFlag_1:
        MOV      R1,#+532
        LDR.N    R0,??DataTable9_5
        BL       assert_failed
??DMA_ClearFlag_2:
        LSLS     R0,R4,#+3
        BPL.N    ??DMA_ClearFlag_3
        LDR.N    R0,??DataTable9_7  ;; 0x40020404
        STR      R4,[R0, #+0]
        B.N      ??DMA_ClearFlag_4
??DMA_ClearFlag_3:
        LDR.N    R0,??DataTable9_6  ;; 0x40020004
        STR      R4,[R0, #+0]
??DMA_ClearFlag_4:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7:
        DC32     0x40020008

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DMA_GetITStatus:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        MOVS     R6,#+0
        CMP      R4,#+1
        BEQ.W    ??DMA_GetITStatus_0
        CMP      R4,#+2
        BEQ.W    ??DMA_GetITStatus_0
        CMP      R4,#+4
        BEQ.W    ??DMA_GetITStatus_0
        CMP      R4,#+8
        BEQ.W    ??DMA_GetITStatus_0
        CMP      R4,#+16
        BEQ.W    ??DMA_GetITStatus_0
        CMP      R4,#+32
        BEQ.W    ??DMA_GetITStatus_0
        CMP      R4,#+64
        BEQ.W    ??DMA_GetITStatus_0
        CMP      R4,#+128
        BEQ.W    ??DMA_GetITStatus_0
        MOV      R0,#+256
        CMP      R4,R0
        BEQ.N    ??DMA_GetITStatus_0
        MOV      R0,#+512
        CMP      R4,R0
        BEQ.N    ??DMA_GetITStatus_0
        CMP      R4,#+1024
        BEQ.N    ??DMA_GetITStatus_0
        CMP      R4,#+2048
        BEQ.N    ??DMA_GetITStatus_0
        CMP      R4,#+4096
        BEQ.N    ??DMA_GetITStatus_0
        CMP      R4,#+8192
        BEQ.N    ??DMA_GetITStatus_0
        CMP      R4,#+16384
        BEQ.N    ??DMA_GetITStatus_0
        CMP      R4,#+32768
        BEQ.N    ??DMA_GetITStatus_0
        CMP      R4,#+65536
        BEQ.N    ??DMA_GetITStatus_0
        CMP      R4,#+131072
        BEQ.N    ??DMA_GetITStatus_0
        CMP      R4,#+262144
        BEQ.N    ??DMA_GetITStatus_0
        CMP      R4,#+524288
        BEQ.N    ??DMA_GetITStatus_0
        CMP      R4,#+1048576
        BEQ.N    ??DMA_GetITStatus_0
        CMP      R4,#+2097152
        BEQ.N    ??DMA_GetITStatus_0
        CMP      R4,#+4194304
        BEQ.N    ??DMA_GetITStatus_0
        CMP      R4,#+8388608
        BEQ.N    ??DMA_GetITStatus_0
        CMP      R4,#+16777216
        BEQ.N    ??DMA_GetITStatus_0
        CMP      R4,#+33554432
        BEQ.N    ??DMA_GetITStatus_0
        CMP      R4,#+67108864
        BEQ.N    ??DMA_GetITStatus_0
        CMP      R4,#+134217728
        BEQ.N    ??DMA_GetITStatus_0
        LDR.N    R0,??DataTable9_9  ;; 0x10000001
        CMP      R4,R0
        BEQ.N    ??DMA_GetITStatus_0
        LDR.N    R0,??DataTable9_10  ;; 0x10000002
        CMP      R4,R0
        BEQ.N    ??DMA_GetITStatus_0
        LDR.N    R0,??DataTable9_11  ;; 0x10000004
        CMP      R4,R0
        BEQ.N    ??DMA_GetITStatus_0
        LDR.N    R0,??DataTable9_12  ;; 0x10000008
        CMP      R4,R0
        BEQ.N    ??DMA_GetITStatus_0
        LDR.N    R0,??DataTable9_13  ;; 0x10000010
        CMP      R4,R0
        BEQ.N    ??DMA_GetITStatus_0
        LDR.N    R0,??DataTable9_14  ;; 0x10000020
        CMP      R4,R0
        BEQ.N    ??DMA_GetITStatus_0
        LDR.N    R0,??DataTable9_15  ;; 0x10000040
        CMP      R4,R0
        BEQ.N    ??DMA_GetITStatus_0
        LDR.N    R0,??DataTable9_16  ;; 0x10000080
        CMP      R4,R0
        BEQ.N    ??DMA_GetITStatus_0
        LDR.N    R0,??DataTable9_17  ;; 0x10000100
        CMP      R4,R0
        BEQ.N    ??DMA_GetITStatus_0
        LDR.N    R0,??DataTable9_18  ;; 0x10000200
        CMP      R4,R0
        BEQ.N    ??DMA_GetITStatus_0
        LDR.N    R0,??DataTable9_19  ;; 0x10000400
        CMP      R4,R0
        BEQ.N    ??DMA_GetITStatus_0
        LDR.N    R0,??DataTable9_20  ;; 0x10000800
        CMP      R4,R0
        BEQ.N    ??DMA_GetITStatus_0
        CMP      R4,#+268439552
        BEQ.N    ??DMA_GetITStatus_0
        LDR.N    R0,??DataTable9_21  ;; 0x10002000
        CMP      R4,R0
        BEQ.N    ??DMA_GetITStatus_0
        LDR.N    R0,??DataTable9_22  ;; 0x10004000
        CMP      R4,R0
        BEQ.N    ??DMA_GetITStatus_0
        LDR.N    R0,??DataTable9_23  ;; 0x10008000
        CMP      R4,R0
        BEQ.N    ??DMA_GetITStatus_0
        LDR.N    R0,??DataTable9_24  ;; 0x10010000
        CMP      R4,R0
        BEQ.N    ??DMA_GetITStatus_0
        LDR.N    R0,??DataTable9_25  ;; 0x10020000
        CMP      R4,R0
        BEQ.N    ??DMA_GetITStatus_0
        LDR.N    R0,??DataTable9_26  ;; 0x10040000
        CMP      R4,R0
        BEQ.N    ??DMA_GetITStatus_0
        LDR.N    R0,??DataTable9_27  ;; 0x10080000
        CMP      R4,R0
        BEQ.N    ??DMA_GetITStatus_0
        MOVW     R1,#+607
        LDR.N    R0,??DataTable9_5
        BL       assert_failed
??DMA_GetITStatus_0:
        LSLS     R0,R4,#+3
        BPL.N    ??DMA_GetITStatus_1
        LDR.N    R0,??DataTable9_28  ;; 0x40020400
        LDR      R0,[R0, #+0]
        MOVS     R6,R0
        B.N      ??DMA_GetITStatus_2
??DMA_GetITStatus_1:
        LDR.N    R0,??DataTable9_29  ;; 0x40020000
        LDR      R0,[R0, #+0]
        MOVS     R6,R0
??DMA_GetITStatus_2:
        TST      R6,R4
        BEQ.N    ??DMA_GetITStatus_3
        MOVS     R0,#+1
        MOVS     R5,R0
        B.N      ??DMA_GetITStatus_4
??DMA_GetITStatus_3:
        MOVS     R0,#+0
        MOVS     R5,R0
??DMA_GetITStatus_4:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8:
        DC32     0x4002001c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_1:
        DC32     0x40020030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_2:
        DC32     0x40020044

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_3:
        DC32     0x40020058

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_4:
        DC32     0x4002006c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_5:
        DC32     0x40020080

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DMA_ClearITPendingBit:
        PUSH     {R4,LR}
        MOVS     R4,R0
        TST      R4,#0xF0000000
        BEQ.N    ??DMA_ClearITPendingBit_0
        LDR.N    R0,??DataTable9_30  ;; 0xeff00000
        TST      R4,R0
        BNE.N    ??DMA_ClearITPendingBit_1
??DMA_ClearITPendingBit_0:
        CMP      R4,#+0
        BNE.N    ??DMA_ClearITPendingBit_2
??DMA_ClearITPendingBit_1:
        MOVW     R1,#+693
        LDR.N    R0,??DataTable9_5
        BL       assert_failed
??DMA_ClearITPendingBit_2:
        LSLS     R0,R4,#+3
        BPL.N    ??DMA_ClearITPendingBit_3
        LDR.N    R0,??DataTable9_7  ;; 0x40020404
        STR      R4,[R0, #+0]
        B.N      ??DMA_ClearITPendingBit_4
??DMA_ClearITPendingBit_3:
        LDR.N    R0,??DataTable9_6  ;; 0x40020004
        STR      R4,[R0, #+0]
??DMA_ClearITPendingBit_4:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9:
        DC32     0x40020408

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_1:
        DC32     0x4002041c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_2:
        DC32     0x40020430

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_3:
        DC32     0x40020444

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_4:
        DC32     0x40020458

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_5:
        DC32     `?<Constant "D:\\\\zWk.Src\\\\Mango-M32-...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_6:
        DC32     0x40020004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_7:
        DC32     0x40020404

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_8:
        DC32     0xffff800f

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_9:
        DC32     0x10000001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_10:
        DC32     0x10000002

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_11:
        DC32     0x10000004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_12:
        DC32     0x10000008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_13:
        DC32     0x10000010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_14:
        DC32     0x10000020

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_15:
        DC32     0x10000040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_16:
        DC32     0x10000080

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_17:
        DC32     0x10000100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_18:
        DC32     0x10000200

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_19:
        DC32     0x10000400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_20:
        DC32     0x10000800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_21:
        DC32     0x10002000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_22:
        DC32     0x10004000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_23:
        DC32     0x10008000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_24:
        DC32     0x10010000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_25:
        DC32     0x10020000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_26:
        DC32     0x10040000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_27:
        DC32     0x10080000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_28:
        DC32     0x40020400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_29:
        DC32     0x40020000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_30:
        DC32     0xeff00000

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
        DC8 78H, 5FH, 64H, 6DH, 61H, 2EH, 63H, 0

        END
// 
//   112 bytes in section .rodata
// 2 436 bytes in section .text
// 
// 2 436 bytes of CODE  memory
//   112 bytes of CONST memory
//
//Errors: none
//Warnings: none
