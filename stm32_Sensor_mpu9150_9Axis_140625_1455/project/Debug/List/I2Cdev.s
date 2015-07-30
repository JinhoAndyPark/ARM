///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.6.53336/W32 for ARM    25/Jun/2014  14:55:03 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    Sensor9Axis\I2Cdev.cpp                                  /
//    Command line =  D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    Sensor9Axis\I2Cdev.cpp -D USE_STDPERIPH_DRIVER -lcN     /
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
//                    ude\ -On --eec++ -I "C:\Program Files (x86)\IAR         /
//                    Systems\Embedded Workbench 6.0_0\arm\CMSIS\Include\"    /
//    List file    =  D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    project\Debug\List\I2Cdev.s                             /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME I2Cdev

        #define SHT_PROGBITS 0x1

        EXTERN SENSOR9AXIS_Read_Bytes
        EXTERN SENSOR9AXIS_Write_Bytes

        PUBLIC _ZN6I2Cdev10writeBytesEhhhPh
        PUBLIC _ZN6I2Cdev7readBitEhhhPht
        PUBLIC _ZN6I2Cdev8readBitsEhhhhPht
        PUBLIC _ZN6I2Cdev8readByteEhhPht
        PUBLIC _ZN6I2Cdev8writeBitEhhhh
        PUBLIC _ZN6I2Cdev9readBytesEhhhPht
        PUBLIC _ZN6I2Cdev9writeBitsEhhhhh
        PUBLIC _ZN6I2Cdev9writeByteEhhh
        PUBLIC _ZN6I2Cdev9writeWordEhht
        PUBLIC _ZN6I2CdevC1Ev
        PUBLIC _ZN6I2CdevC2Ev


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// __code __interwork __softfp I2Cdev::subobject I2Cdev()
_ZN6I2CdevC2Ev:
        PUSH     {R4,LR}
        MOVS     R4,R0
        MOVS     R0,R4
        BL       _ZN6I2CdevC1Ev
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN6I2CdevC1Ev:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN6I2Cdev7readBitEhhhPht:
        PUSH     {R4-R8,LR}
        SUB      SP,SP,#+8
        MOVS     R5,R0
        MOVS     R6,R1
        MOVS     R7,R2
        MOV      R8,R3
        LDR      R4,[SP, #+32]
        MOVS     R3,R4
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        ADD      R2,SP,#+0
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       _ZN6I2Cdev8readByteEhhPht
        LDRB     R1,[SP, #+0]
        MOVS     R2,#+1
        LSLS     R2,R2,R7
        ANDS     R1,R2,R1
        STRB     R1,[R8, #+0]
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4-R8,PC}  ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN6I2Cdev8readBitsEhhhhPht:
        PUSH     {R4-R10,LR}
        SUB      SP,SP,#+8
        MOVS     R5,R0
        MOVS     R6,R1
        MOVS     R7,R2
        MOV      R8,R3
        LDR      R9,[SP, #+40]
        LDR      R4,[SP, #+44]
        MOVS     R3,R4
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        ADD      R2,SP,#+0
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       _ZN6I2Cdev8readByteEhhPht
        MOV      R10,R0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??readBits_0
        MOVS     R0,#+1
        LSLS     R0,R0,R8
        SUBS     R0,R0,#+1
        SUBS     R1,R7,R8
        ADDS     R1,R1,#+1
        LSLS     R0,R0,R1
        LDRB     R1,[SP, #+0]
        ANDS     R1,R0,R1
        STRB     R1,[SP, #+0]
        LDRB     R1,[SP, #+0]
        SUBS     R2,R7,R8
        ADDS     R2,R2,#+1
        LSRS     R1,R1,R2
        STRB     R1,[SP, #+0]
        LDRB     R1,[SP, #+0]
        STRB     R1,[R9, #+0]
??readBits_0:
        MOV      R0,R10
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4-R10,PC}  ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN6I2Cdev8readByteEhhPht:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        STR      R7,[SP, #+0]
        MOVS     R3,R6
        MOVS     R2,#+1
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       _ZN6I2Cdev9readBytesEhhhPht
        POP      {R1,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN6I2Cdev9readBytesEhhhPht:
        PUSH     {R4-R8,LR}
        MOVS     R5,R0
        MOVS     R6,R1
        MOVS     R7,R2
        MOV      R8,R3
        LDR      R4,[SP, #+24]
        MOV      R3,R8
        MOVS     R2,R7
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       SENSOR9AXIS_Read_Bytes
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        POP      {R4-R8,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN6I2Cdev8writeBitEhhhh:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        MOV      R3,#+1000
        ADD      R2,SP,#+0
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       _ZN6I2Cdev8readByteEhhPht
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+0
        BEQ.N    ??writeBit_0
        LDRB     R0,[SP, #+0]
        MOVS     R1,#+1
        LSLS     R1,R1,R6
        ORRS     R0,R1,R0
        B.N      ??writeBit_1
??writeBit_0:
        LDRB     R0,[SP, #+0]
        MOVS     R1,#+1
        LSLS     R1,R1,R6
        BICS     R0,R0,R1
??writeBit_1:
        STRB     R0,[SP, #+0]
        LDRB     R2,[SP, #+0]
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       _ZN6I2Cdev9writeByteEhhh
        POP      {R1,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN6I2Cdev9writeBitsEhhhhh:
        PUSH     {R3-R9,LR}
        MOVS     R5,R0
        MOVS     R6,R1
        MOVS     R7,R2
        MOV      R8,R3
        LDR      R4,[SP, #+32]
        MOV      R3,#+1000
        ADD      R2,SP,#+0
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       _ZN6I2Cdev8readByteEhhPht
        CMP      R0,#+0
        BEQ.N    ??writeBits_0
        MOVS     R0,#+1
        LSLS     R0,R0,R8
        SUBS     R0,R0,#+1
        SUBS     R1,R7,R8
        ADDS     R1,R1,#+1
        LSLS     R9,R0,R1
        SUBS     R0,R7,R8
        ADDS     R0,R0,#+1
        LSLS     R4,R4,R0
        ANDS     R4,R9,R4
        LDRB     R0,[SP, #+0]
        BICS     R0,R0,R9
        STRB     R0,[SP, #+0]
        LDRB     R0,[SP, #+0]
        ORRS     R0,R4,R0
        STRB     R0,[SP, #+0]
        LDRB     R2,[SP, #+0]
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       _ZN6I2Cdev9writeByteEhhh
        B.N      ??writeBits_1
??writeBits_0:
        MOVS     R0,#+0
??writeBits_1:
        POP      {R1,R4-R9,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN6I2Cdev9writeByteEhhh:
        PUSH     {R2,R4,R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        ADD      R3,SP,#+0
        MOVS     R2,#+1
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       _ZN6I2Cdev10writeBytesEhhhPh
        POP      {R1,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN6I2Cdev9writeWordEhht:
        PUSH     {R4-R6,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        LSRS     R0,R6,#+8
        STRB     R0,[SP, #+0]
        MOVS     R0,R6
        STRB     R0,[SP, #+1]
        ADD      R3,SP,#+0
        MOVS     R2,#+2
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       _ZN6I2Cdev10writeBytesEhhhPh
        POP      {R1,R2,R4-R6,PC}  ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN6I2Cdev10writeBytesEhhhPh:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        MOVS     R3,R7
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       SENSOR9AXIS_Write_Bytes
        MOV      R8,R0
        SXTB     R8,R8            ;; SignExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BPL.N    ??writeBytes_0
        MOVS     R0,#+0
        B.N      ??writeBytes_1
??writeBytes_0:
        MOVS     R0,#+1
??writeBytes_1:
        POP      {R4-R8,PC}       ;; return

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
// 550 bytes in section .text
// 
// 550 bytes of CODE memory
//
//Errors: none
//Warnings: none
