///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.6.53336/W32 for ARM    25/Jun/2014  14:55:03 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    Sensor9Axis\test_sensor9axis.cpp                        /
//    Command line =  D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    Sensor9Axis\test_sensor9axis.cpp -D                     /
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
//                    ude\ -On --eec++ -I "C:\Program Files (x86)\IAR         /
//                    Systems\Embedded Workbench 6.0_0\arm\CMSIS\Include\"    /
//    List file    =  D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    project\Debug\List\test_sensor9axis.s                   /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME test_sensor9axis

        #define SHT_PROGBITS 0x1
        #define SHT_INIT_ARRAY 0xe

        EXTERN Buffer_Tx1
        EXTERN DebugMsg_FunctionError
        EXTERN DebugMsg_FunctionStart
        EXTERN Delay
        EXTERN I2C_Master_BufferRead
        EXTERN I2C_Master_BufferWrite
        EXTERN RCC_AHBPeriphClockCmd
        EXTERN UartQueue_Serial_DeQueue
        EXTERN UartQueue_Serial_Is_Empty
        EXTERN _ZN6I2Cdev8readByteEhhPht
        EXTERN _ZN6I2Cdev9writeByteEhhh
        EXTERN _ZN7MPU605010getMotion9EPsS0_S0_S0_S0_S0_S0_S0_S0_
        EXTERN _ZN7MPU605010initializeEv
        EXTERN _ZN7MPU605011getDeviceIDEv
        EXTERN _ZN7MPU6050C1Ev
        EXTERN __aeabi_memcpy
        EXTERN printf

        PUBLIC SENSOR9AXIS_Read_Bytes
        PUBLIC SENSOR9AXIS_Write_Bytes
        PUBLIC Test_Sensor9Axis
        PUBLIC g_MPU_9150
        PUBLIC memcpy


        SECTION `.data`:DATA:REORDER:NOROOT(0)
g_print_menu_control_flag:
        DATA
        DC8 1

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __intrinsic __interwork __softfp void __sti__routine()
__sti__routine:
        PUSH     {R7,LR}
        LDR.N    R0,??DataTable4
        BL       _ZN7MPU6050C1Ev
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SENSOR9AXIS_Read_Bytes:
        PUSH     {R4-R8,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        MOVS     R1,#+0
        MOV      R0,#+256
        BL       RCC_AHBPeriphClockCmd
        LDR.N    R0,??DataTable4_1
        STRB     R5,[R0, #+0]
        LSLS     R0,R4,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R0,[SP, #+0]
        MOVS     R3,#+1
        MOVS     R2,#+1
        LDR.N    R1,??DataTable4_1
        LDR.N    R0,??DataTable4_2  ;; 0x40005400
        BL       I2C_Master_BufferWrite
        MOV      R8,R0
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BNE.N    ??SENSOR9AXIS_Read_Bytes_0
        MOVS     R1,#+53
        LDR.N    R0,??DataTable4_3
        BL       DebugMsg_FunctionError
        MOVS     R0,#+0
        B.N      ??SENSOR9AXIS_Read_Bytes_1
??SENSOR9AXIS_Read_Bytes_0:
        LSLS     R0,R4,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R0,[SP, #+0]
        MOVS     R3,#+0
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     R2,R6
        MOVS     R1,R7
        LDR.N    R0,??DataTable4_2  ;; 0x40005400
        BL       I2C_Master_BufferRead
        MOV      R8,R0
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BNE.N    ??SENSOR9AXIS_Read_Bytes_2
        MOVS     R1,#+60
        LDR.N    R0,??DataTable4_3
        BL       DebugMsg_FunctionError
        MOVS     R0,#+0
        B.N      ??SENSOR9AXIS_Read_Bytes_1
??SENSOR9AXIS_Read_Bytes_2:
        MOVS     R1,#+1
        MOV      R0,#+256
        BL       RCC_AHBPeriphClockCmd
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??SENSOR9AXIS_Read_Bytes_1:
        POP      {R1,R2,R4-R8,PC}  ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SENSOR9AXIS_Write_Bytes:
        PUSH     {R4-R8,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        MOVS     R1,#+0
        MOV      R0,#+256
        BL       RCC_AHBPeriphClockCmd
        LDR.N    R0,??DataTable4_1
        STRB     R5,[R0, #+0]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     R2,R6
        MOVS     R1,R7
        LDR.N    R0,??DataTable4_4
        BL       memcpy
        LSLS     R0,R4,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R0,[SP, #+0]
        MOVS     R3,#+1
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADDS     R2,R6,#+1
        LDR.N    R1,??DataTable4_1
        LDR.N    R0,??DataTable4_2  ;; 0x40005400
        BL       I2C_Master_BufferWrite
        MOV      R8,R0
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BNE.N    ??SENSOR9AXIS_Write_Bytes_0
        MOVS     R1,#+83
        LDR.N    R0,??DataTable4_5
        BL       DebugMsg_FunctionError
        MOVS     R0,#-1
        B.N      ??SENSOR9AXIS_Write_Bytes_1
??SENSOR9AXIS_Write_Bytes_0:
        MOVS     R1,#+1
        MOV      R0,#+256
        BL       RCC_AHBPeriphClockCmd
        MOVS     R0,#+0
??SENSOR9AXIS_Write_Bytes_1:
        POP      {R1,R2,R4-R8,PC}  ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_Z18print_menu_commandv:
        PUSH     {R7,LR}
        LDR.N    R0,??DataTable4_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??print_menu_command_0
        LDR.N    R0,??DataTable4_7
        BL       printf
        LDR.N    R0,??DataTable4_8
        BL       printf
        LDR.N    R0,??DataTable4_9
        BL       printf
        LDR.N    R0,??DataTable4_10
        BL       printf
        LDR.N    R0,??DataTable4_11
        BL       printf
        LDR.N    R0,??DataTable4_12
        BL       printf
        LDR.N    R0,??DataTable4_9
        BL       printf
        LDR.N    R0,??DataTable4_13
        BL       printf
??print_menu_command_0:
        LDR.N    R0,??DataTable4_6
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        POP      {R0,PC}          ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
g_MPU_9150:
        DS8 16

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Test_Sensor9Axis:
        PUSH     {R4,LR}
        SUB      SP,SP,#+48
        LDR.N    R0,??DataTable4_14
        BL       DebugMsg_FunctionStart
??Test_Sensor9Axis_0:
        BL       _Z18print_menu_commandv
        BL       UartQueue_Serial_Is_Empty
        CMP      R0,#+0
        BNE.N    ??Test_Sensor9Axis_0
        BL       UartQueue_Serial_DeQueue
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R1,R4
        LDR.N    R0,??DataTable4_15
        BL       printf
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+48
        BEQ.N    ??Test_Sensor9Axis_1
        BCC.N    ??Test_Sensor9Axis_2
        CMP      R4,#+50
        BEQ.N    ??Test_Sensor9Axis_3
        BCC.N    ??Test_Sensor9Axis_4
        CMP      R4,#+51
        BEQ.N    ??Test_Sensor9Axis_5
        B.N      ??Test_Sensor9Axis_2
??Test_Sensor9Axis_1:
        B.N      ??Test_Sensor9Axis_2
??Test_Sensor9Axis_4:
        LDR.N    R0,??DataTable4
        BL       _ZN7MPU605011getDeviceIDEv
        STRB     R0,[SP, #+24]
        LDRB     R1,[SP, #+24]
        LDR.N    R0,??DataTable4_16
        BL       printf
        B.N      ??Test_Sensor9Axis_2
??Test_Sensor9Axis_3:
        MOVS     R2,#+2
        MOVS     R1,#+55
        MOVS     R0,#+104
        BL       _ZN6I2Cdev9writeByteEhhh
        MOVS     R0,#+50
        BL       Delay
        MOVS     R2,#+1
        MOVS     R1,#+10
        MOVS     R0,#+12
        BL       _ZN6I2Cdev9writeByteEhhh
        MOVS     R0,#+50
        BL       Delay
        MOV      R3,#+1000
        ADD      R2,SP,#+24
        MOVS     R1,#+0
        MOVS     R0,#+12
        BL       _ZN6I2Cdev8readByteEhhPht
        LDRB     R1,[SP, #+24]
        LDR.N    R0,??DataTable4_16
        BL       printf
        B.N      ??Test_Sensor9Axis_2
??Test_Sensor9Axis_5:
        LDR.N    R0,??DataTable4
        BL       _ZN7MPU605010initializeEv
        LDR.N    R0,??DataTable4_17
        BL       printf
??Test_Sensor9Axis_6:
        ADD      R0,SP,#+26
        STR      R0,[SP, #+20]
        ADD      R0,SP,#+28
        STR      R0,[SP, #+16]
        ADD      R0,SP,#+30
        STR      R0,[SP, #+12]
        ADD      R0,SP,#+32
        STR      R0,[SP, #+8]
        ADD      R0,SP,#+34
        STR      R0,[SP, #+4]
        ADD      R0,SP,#+36
        STR      R0,[SP, #+0]
        ADD      R3,SP,#+38
        ADD      R2,SP,#+40
        ADD      R1,SP,#+42
        LDR.N    R0,??DataTable4
        BL       _ZN7MPU605010getMotion9EPsS0_S0_S0_S0_S0_S0_S0_S0_
        LDRSH    R0,[SP, #+26]
        STR      R0,[SP, #+20]
        LDRSH    R0,[SP, #+28]
        STR      R0,[SP, #+16]
        LDRSH    R0,[SP, #+30]
        STR      R0,[SP, #+12]
        LDRSH    R0,[SP, #+32]
        STR      R0,[SP, #+8]
        LDRSH    R0,[SP, #+34]
        STR      R0,[SP, #+4]
        LDRSH    R0,[SP, #+36]
        STR      R0,[SP, #+0]
        LDRSH    R3,[SP, #+38]
        LDRSH    R2,[SP, #+40]
        LDRSH    R1,[SP, #+42]
        LDR.N    R0,??DataTable4_18
        BL       printf
        MOV      R0,#+300
        BL       Delay
        B.N      ??Test_Sensor9Axis_6
??Test_Sensor9Axis_2:
        LDR.N    R0,??DataTable4_6
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+120
        BNE.W    ??Test_Sensor9Axis_0
        ADD      SP,SP,#+48
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     g_MPU_9150

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     Buffer_Tx1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     0x40005400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     ??__FUNCTION__

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DC32     Buffer_Tx1+0x1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DC32     ??__FUNCTION___1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_6:
        DC32     g_print_menu_control_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_7:
        DC32     `?<Constant "\\n---------------------\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_8:
        DC32     `?<Constant "Press menu key\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_9:
        DC32     `?<Constant "---------------------\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_10:
        DC32     `?<Constant "1> Get Device ID\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_11:
        DC32     `?<Constant "2> Get Device ID (MPU...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_12:
        DC32     `?<Constant "3> Init & Read 9 axis...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_13:
        DC32     `?<Constant "x> quit\\n\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_14:
        DC32     ??__FUNCTION___2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_15:
        DC32     `?<Constant "%c is selected\\n\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_16:
        DC32     `?<Constant "Device ID: 0x%02X\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_17:
        DC32     `?<Constant "MPU9150 initialize do...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_18:
        DC32     `?<Constant "ax: %d, ay: %d, az: %...">`

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP memcpy
        THUMB
// __intrinsic __nounwind __interwork __softfp void *memcpy(void *, void const *, size_t)
memcpy:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R2,R6
        MOVS     R1,R5
        MOVS     R0,R4
        BL       __aeabi_memcpy
        MOVS     R0,R4
        POP      {R4-R6,PC}       ;; return

        SECTION `.init_array`:CODE:ROOT(2)
        SECTION_TYPE SHT_INIT_ARRAY, 0
        DATA
        DC32    RELOC_ARM_TARGET1 __sti__routine

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute char const SENSOR9AXIS_Read_Bytes::__FUNCTION__[23]
??__FUNCTION__:
        DATA
        DC8 "SENSOR9AXIS_Read_Bytes"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute char const SENSOR9AXIS_Write_Bytes::__FUNCTION__[24]
??__FUNCTION___1:
        DATA
        DC8 "SENSOR9AXIS_Write_Bytes"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\n---------------------\\n">`:
        DATA
        DC8 "\012---------------------\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Press menu key\\n">`:
        DATA
        DC8 "Press menu key\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "---------------------\\n">`:
        DATA
        DC8 "---------------------\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "1> Get Device ID\\n">`:
        DATA
        DC8 "1> Get Device ID\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "2> Get Device ID (MPU...">`:
        DATA
        DC8 "2> Get Device ID (MPU-9150 Magnetometer)\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "3> Init & Read 9 axis...">`:
        DATA
        DC8 "3> Init & Read 9 axis data\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "x> quit\\n\\n">`:
        DATA
        DC8 "x> quit\012\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute char const Test_Sensor9Axis::__FUNCTION__[17]
??__FUNCTION___2:
        DATA
        DC8 "Test_Sensor9Axis"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "%c is selected\\n\\n">`:
        DATA
        DC8 "%c is selected\012\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Device ID: 0x%02X\\n">`:
        DATA
        DC8 "Device ID: 0x%02X\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "MPU9150 initialize do...">`:
        DATA
        DC8 "MPU9150 initialize done.\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "ax: %d, ay: %d, az: %...">`:
        DATA
        DC8 61H, 78H, 3AH, 20H, 25H, 64H, 2CH, 20H
        DC8 61H, 79H, 3AH, 20H, 25H, 64H, 2CH, 20H
        DC8 61H, 7AH, 3AH, 20H, 25H, 64H, 2CH, 20H
        DC8 67H, 78H, 3AH, 20H, 25H, 64H, 2CH, 20H
        DC8 67H, 79H, 3AH, 20H, 25H, 64H, 2CH, 20H
        DC8 67H, 7AH, 3AH, 20H, 25H, 64H, 2CH, 20H
        DC8 6DH, 78H, 3AH, 20H, 25H, 64H, 2CH, 20H
        DC8 6DH, 79H, 3AH, 20H, 25H, 64H, 2CH, 20H
        DC8 6DH, 7AH, 3AH, 20H, 25H, 64H, 0AH, 0

        END
// 
//  16 bytes in section .bss
//   1 byte  in section .data
//   4 bytes in section .init_array
// 376 bytes in section .rodata
// 688 bytes in section .text
// 
// 670 bytes of CODE  memory (+ 22 bytes shared)
// 376 bytes of CONST memory
//  17 bytes of DATA  memory
//
//Errors: none
//Warnings: none
