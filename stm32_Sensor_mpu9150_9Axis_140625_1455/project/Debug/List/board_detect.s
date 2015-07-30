///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.6.53336/W32 for ARM    25/Jun/2014  14:55:04 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    src\board_detect.c                                      /
//    Command line =  D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    src\board_detect.c -D USE_STDPERIPH_DRIVER -lcN         /
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
//                    project\Debug\List\board_detect.s                       /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME board_detect

        #define SHT_PROGBITS 0x1

        EXTERN ADC_Cmd
        EXTERN ADC_DMACmd
        EXTERN ADC_GetCalibrationStatus
        EXTERN ADC_GetResetCalibrationStatus
        EXTERN ADC_Init
        EXTERN ADC_RegularChannelConfig
        EXTERN ADC_ResetCalibration
        EXTERN ADC_SoftwareStartConvCmd
        EXTERN ADC_StartCalibration
        EXTERN DMA_Cmd
        EXTERN DMA_DeInit
        EXTERN DMA_Init
        EXTERN GPIO_Init
        EXTERN RCC_AHBPeriphClockCmd
        EXTERN RCC_APB2PeriphClockCmd
        EXTERN __aeabi_cfcmple
        EXTERN __aeabi_d2f
        EXTERN __aeabi_dadd
        EXTERN __aeabi_dmul
        EXTERN __aeabi_f2d
        EXTERN __aeabi_fdiv
        EXTERN __aeabi_ui2d
        EXTERN printf

        PUBLIC BoardDetectValue
        PUBLIC BoardType
        PUBLIC board_detect
        PUBLIC board_detect_initialzie


        SECTION `.bss`:DATA:REORDER:NOROOT(2)
BoardClass:
        DS8 372

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
BoardDetectValue:
        DS8 2

        SECTION `.data`:DATA:REORDER:NOROOT(2)
BoardType:
        DATA
        DC32 `?<Constant "TEST ">`, `?<Constant "TEST">`, `?<Constant "TEST">`
        DC32 `?<Constant "3-Axis ACC Sensor Boa...">`, `?<Constant "TEST">`
        DC32 `?<Constant "TEST">`, `?<Constant "Pressure Sensor Board...">`
        DC32 `?<Constant "TEST">`, `?<Constant "Light Sensor Board">`
        DC32 `?<Constant "TEST">`, `?<Constant "TEST">`, `?<Constant "TEST">`
        DC32 `?<Constant "Remocon Sensor Board">`, `?<Constant "TEST">`
        DC32 `?<Constant "TEST">`, `?<Constant "TEST">`, `?<Constant "TEST">`
        DC32 `?<Constant "TEST">`, `?<Constant "Gyro Sensor Board">`
        DC32 `?<Constant "TEST">`, `?<Constant "MPU 9150 9 Axis Senso...">`
        DC32 `?<Constant "TEST">`, `?<Constant "TEST">`, `?<Constant "TEST">`
        DC32 `?<Constant "TEST">`, `?<Constant "TEST">`, `?<Constant "TEST">`
        DC32 `?<Constant "Humidity Sensro Board">`, `?<Constant "TEST">`
        DC32 `?<Constant "TEST">`, `?<Constant "TEST">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
board_detect:
        PUSH     {R3-R5,LR}
        MOVS     R5,#+0
        MOVS     R0,#+0
        MOVS     R4,R0
??board_detect_0:
        CMP      R4,#+31
        BCS.N    ??board_detect_1
        MOVS     R0,R4
        BL       __aeabi_ui2d
        LDR.N    R2,??DataTable1  ;; 0xc28f5c29
        LDR.N    R3,??DataTable1_1  ;; 0x3fbc28f5
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        MOVS     R1,#+12
        LDR.N    R2,??DataTable1_2
        MLA      R1,R1,R4,R2
        STR      R0,[R1, #+0]
        MOVS     R0,#+12
        LDR.N    R1,??DataTable1_2
        MLA      R0,R0,R4,R1
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable1_3  ;; 0xeb851eb8
        LDR.N    R3,??DataTable1_4  ;; 0xbf9eb851
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        MOVS     R1,#+12
        LDR.N    R2,??DataTable1_2
        MLA      R1,R1,R4,R2
        STR      R0,[R1, #+4]
        MOVS     R0,#+12
        LDR.N    R1,??DataTable1_2
        MLA      R0,R0,R4,R1
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable1_3  ;; 0xeb851eb8
        LDR.N    R3,??DataTable1_5  ;; 0x3f9eb851
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        MOVS     R1,#+12
        LDR.N    R2,??DataTable1_2
        MLA      R1,R1,R4,R2
        STR      R0,[R1, #+8]
        ADDS     R4,R4,#+1
        B.N      ??board_detect_0
??board_detect_1:
        LDR.N    R0,??DataTable1_2
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        LDR.N    R0,??DataTable1_2
        LDR.N    R1,??DataTable1_6  ;; 0x40533333
        STR      R1,[R0, #+368]
        LDR.N    R0,??DataTable1_7
        LDRH     R0,[R0, #+0]
        BL       __aeabi_ui2d
        MOVS     R2,#+1717986918
        LDR.N    R3,??DataTable1_8  ;; 0x400a6666
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable1_9  ;; 0x457ff000
        BL       __aeabi_fdiv
        MOVS     R5,R0
        MOVS     R0,#+0
        MOVS     R4,R0
??board_detect_2:
        CMP      R4,#+31
        BCS.N    ??board_detect_3
        MOVS     R0,#+12
        LDR.N    R1,??DataTable1_2
        MLA      R0,R0,R4,R1
        LDR      R0,[R0, #+4]
        MOVS     R1,R5
        BL       __aeabi_cfcmple
        BCS.N    ??board_detect_4
        MOVS     R0,R5
        MOVS     R1,#+12
        LDR.N    R2,??DataTable1_2
        MLA      R1,R1,R4,R2
        LDR      R1,[R1, #+8]
        BL       __aeabi_cfcmple
        BCS.N    ??board_detect_4
        LDR.N    R0,??DataTable1_10
        LDR      R1,[R0, R4, LSL #+2]
        LDR.N    R0,??DataTable1_11
        BL       printf
        B.N      ??board_detect_3
??board_detect_4:
        ADDS     R4,R4,#+1
        B.N      ??board_detect_2
??board_detect_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
board_detect_initialzie:
        PUSH     {LR}
        SUB      SP,SP,#+68
        MOVS     R1,#+1
        MOVS     R0,#+8
        BL       RCC_APB2PeriphClockCmd
        MOVS     R1,#+1
        MOVS     R0,#+1
        BL       RCC_APB2PeriphClockCmd
        MOVS     R1,#+1
        MOV      R0,#+512
        BL       RCC_APB2PeriphClockCmd
        MOVS     R1,#+1
        MOVS     R0,#+1
        BL       RCC_AHBPeriphClockCmd
        MOVS     R0,#+64
        STRH     R0,[SP, #+0]
        MOVS     R0,#+3
        STRB     R0,[SP, #+2]
        MOVS     R0,#+0
        STRB     R0,[SP, #+3]
        ADD      R1,SP,#+0
        LDR.N    R0,??DataTable1_12  ;; 0x40010800
        BL       GPIO_Init
        LDR.N    R0,??DataTable1_13  ;; 0x40020008
        BL       DMA_DeInit
        LDR.N    R0,??DataTable1_14  ;; 0x4001244c
        STR      R0,[SP, #+24]
        LDR.N    R0,??DataTable1_7
        STR      R0,[SP, #+28]
        MOVS     R0,#+0
        STR      R0,[SP, #+32]
        MOVS     R0,#+1
        STR      R0,[SP, #+36]
        MOVS     R0,#+0
        STR      R0,[SP, #+40]
        MOVS     R0,#+0
        STR      R0,[SP, #+44]
        MOV      R0,#+256
        STR      R0,[SP, #+48]
        MOV      R0,#+1024
        STR      R0,[SP, #+52]
        MOVS     R0,#+32
        STR      R0,[SP, #+56]
        MOV      R0,#+8192
        STR      R0,[SP, #+60]
        MOVS     R0,#+0
        STR      R0,[SP, #+64]
        ADD      R1,SP,#+24
        LDR.N    R0,??DataTable1_13  ;; 0x40020008
        BL       DMA_Init
        MOVS     R1,#+1
        LDR.N    R0,??DataTable1_13  ;; 0x40020008
        BL       DMA_Cmd
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
        MOVS     R0,#+1
        STRB     R0,[SP, #+8]
        MOVS     R0,#+1
        STRB     R0,[SP, #+9]
        MOVS     R0,#+917504
        STR      R0,[SP, #+12]
        MOVS     R0,#+0
        STR      R0,[SP, #+16]
        MOVS     R0,#+1
        STRB     R0,[SP, #+20]
        ADD      R1,SP,#+4
        LDR.N    R0,??DataTable1_15  ;; 0x40012400
        BL       ADC_Init
        MOVS     R3,#+5
        MOVS     R2,#+1
        MOVS     R1,#+6
        LDR.N    R0,??DataTable1_15  ;; 0x40012400
        BL       ADC_RegularChannelConfig
        MOVS     R1,#+1
        LDR.N    R0,??DataTable1_15  ;; 0x40012400
        BL       ADC_DMACmd
        MOVS     R1,#+1
        LDR.N    R0,??DataTable1_15  ;; 0x40012400
        BL       ADC_Cmd
        LDR.N    R0,??DataTable1_15  ;; 0x40012400
        BL       ADC_ResetCalibration
??board_detect_initialzie_0:
        LDR.N    R0,??DataTable1_15  ;; 0x40012400
        BL       ADC_GetResetCalibrationStatus
        CMP      R0,#+0
        BNE.N    ??board_detect_initialzie_0
        LDR.N    R0,??DataTable1_15  ;; 0x40012400
        BL       ADC_StartCalibration
??board_detect_initialzie_1:
        LDR.N    R0,??DataTable1_15  ;; 0x40012400
        BL       ADC_GetCalibrationStatus
        CMP      R0,#+0
        BNE.N    ??board_detect_initialzie_1
        MOVS     R1,#+1
        LDR.N    R0,??DataTable1_15  ;; 0x40012400
        BL       ADC_SoftwareStartConvCmd
        ADD      SP,SP,#+68
        POP      {PC}             ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     0xc28f5c29

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     0x3fbc28f5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     BoardClass

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     0xeb851eb8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DC32     0xbf9eb851

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_5:
        DC32     0x3f9eb851

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_6:
        DC32     0x40533333

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_7:
        DC32     BoardDetectValue

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_8:
        DC32     0x400a6666

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_9:
        DC32     0x457ff000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_10:
        DC32     BoardType

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_11:
        DC32     `?<Constant "Board Type : %s\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_12:
        DC32     0x40010800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_13:
        DC32     0x40020008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_14:
        DC32     0x4001244c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_15:
        DC32     0x40012400

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "TEST ">`:
        DATA
        DC8 "TEST "
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "TEST">`:
        DATA
        DC8 "TEST"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "3-Axis ACC Sensor Boa...">`:
        DATA
        DC8 "3-Axis ACC Sensor Board with Temp"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Pressure Sensor Board...">`:
        DATA
        DC8 "Pressure Sensor Board with Temp"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Light Sensor Board">`:
        DATA
        DC8 "Light Sensor Board"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Remocon Sensor Board">`:
        DATA
        DC8 "Remocon Sensor Board"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Gyro Sensor Board">`:
        DATA
        DC8 "Gyro Sensor Board"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "MPU 9150 9 Axis Senso...">`:
        DATA
        DC8 "MPU 9150 9 Axis Sensor Board"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Humidity Sensro Board">`:
        DATA
        DC8 "Humidity Sensro Board"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Board Type : %s\\n">`:
        DATA
        DC8 "Board Type : %s\012"
        DC8 0, 0, 0

        END
// 
// 374 bytes in section .bss
// 124 bytes in section .data
// 224 bytes in section .rodata
// 536 bytes in section .text
// 
// 536 bytes of CODE  memory
// 224 bytes of CONST memory
// 498 bytes of DATA  memory
//
//Errors: none
//Warnings: none
