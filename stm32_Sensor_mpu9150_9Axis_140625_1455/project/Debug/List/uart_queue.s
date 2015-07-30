///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.6.53336/W32 for ARM    25/Jun/2014  14:55:11 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    src\uart_queue.c                                        /
//    Command line =  D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    src\uart_queue.c -D USE_STDPERIPH_DRIVER -lcN           /
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
//                    project\Debug\List\uart_queue.s                         /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME uart_queue

        #define SHT_PROGBITS 0x1

        PUBLIC UartQueue_Comm_DeQueue
        PUBLIC UartQueue_Comm_EnQueue
        PUBLIC UartQueue_Comm_Initialize
        PUBLIC UartQueue_Comm_Is_Empty
        PUBLIC UartQueue_Serial_DeQueue
        PUBLIC UartQueue_Serial_EnQueue
        PUBLIC UartQueue_Serial_Is_Empty
        PUBLIC uart_queue_comm_buffer
        PUBLIC uart_queue_comm_point_head
        PUBLIC uart_queue_comm_point_tail
        PUBLIC uart_queue_serial_buffer
        PUBLIC uart_queue_serial_point_head
        PUBLIC uart_queue_serial_point_tail


        SECTION `.bss`:DATA:REORDER:NOROOT(2)
uart_queue_comm_buffer:
        DS8 400

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
uart_queue_comm_point_head:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
uart_queue_comm_point_tail:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
uart_queue_serial_buffer:
        DS8 400

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
uart_queue_serial_point_head:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
uart_queue_serial_point_tail:
        DS8 4

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
uart_queue_increase_point_value:
        LDR      R1,[R0, #+0]
        ADDS     R1,R1,#+1
        STR      R1,[R0, #+0]
        LDR      R1,[R0, #+0]
        CMP      R1,#+200
        BNE.N    ??uart_queue_increase_point_value_0
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
??uart_queue_increase_point_value_0:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
UartQueue_Comm_Initialize:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable6
        STR      R0,[R1, #+0]
        LDR.N    R1,??DataTable6_1
        STR      R0,[R1, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
UartQueue_Comm_Is_Empty:
        LDR.N    R0,??DataTable6_1
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable6
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BNE.N    ??UartQueue_Comm_Is_Empty_0
        MOVS     R0,#+1
        B.N      ??UartQueue_Comm_Is_Empty_1
??UartQueue_Comm_Is_Empty_0:
        MOVS     R0,#+0
??UartQueue_Comm_Is_Empty_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
UartQueue_Comm_EnQueue:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.N    R0,??DataTable6_1
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable6_2
        STRH     R4,[R1, R0, LSL #+1]
        LDR.N    R0,??DataTable6_1
        BL       uart_queue_increase_point_value
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
UartQueue_Comm_DeQueue:
        PUSH     {R4,LR}
        LDR.N    R0,??DataTable6
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable6_2
        LDRH     R4,[R1, R0, LSL #+1]
        LDR.N    R0,??DataTable6
        BL       uart_queue_increase_point_value
        MOVS     R0,R4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
UartQueue_Serial_Is_Empty:
        LDR.N    R0,??DataTable6_3
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable6_4
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BNE.N    ??UartQueue_Serial_Is_Empty_0
        MOVS     R0,#+1
        B.N      ??UartQueue_Serial_Is_Empty_1
??UartQueue_Serial_Is_Empty_0:
        MOVS     R0,#+0
??UartQueue_Serial_Is_Empty_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
UartQueue_Serial_EnQueue:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.N    R0,??DataTable6_3
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable6_5
        STRH     R4,[R1, R0, LSL #+1]
        LDR.N    R0,??DataTable6_3
        BL       uart_queue_increase_point_value
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
UartQueue_Serial_DeQueue:
        PUSH     {R4,LR}
        LDR.N    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable6_5
        LDRH     R4,[R1, R0, LSL #+1]
        LDR.N    R0,??DataTable6_4
        BL       uart_queue_increase_point_value
        MOVS     R0,R4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC32     uart_queue_comm_point_tail

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_1:
        DC32     uart_queue_comm_point_head

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_2:
        DC32     uart_queue_comm_buffer

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_3:
        DC32     uart_queue_serial_point_head

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_4:
        DC32     uart_queue_serial_point_tail

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_5:
        DC32     uart_queue_serial_buffer

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
// 816 bytes in section .bss
// 186 bytes in section .text
// 
// 186 bytes of CODE memory
// 816 bytes of DATA memory
//
//Errors: none
//Warnings: none
