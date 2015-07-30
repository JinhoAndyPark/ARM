///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.6.53336/W32 for ARM    25/Jun/2014  14:55:08 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    src\main.c                                              /
//    Command line =  D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    src\main.c -D USE_STDPERIPH_DRIVER -lcN                 /
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
//                    project\Debug\List\main.s                               /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME main

        #define SHT_PROGBITS 0x1

        EXTERN Delay
        EXTERN GPIO_Configuration
        EXTERN I2C_LowLevel_Init
        EXTERN KEY_Initialize
        EXTERN KEY_Test
        EXTERN LED_Initialize
        EXTERN LED_Test
        EXTERN NVIC_Configuration
        EXTERN RCC_Configuration
        EXTERN RCC_GetClocksFreq
        EXTERN Set_USBClock
        EXTERN Seven_Segment_Initilaze
        EXTERN Seven_Segment_Test
        EXTERN Test_Sensor9Axis
        EXTERN USART1_Init_forSerial
        EXTERN USB_Cable_Config
        EXTERN USB_Init
        EXTERN USB_Initialize
        EXTERN USB_Interrupts_Config
        EXTERN UartQueue_Serial_DeQueue
        EXTERN UartQueue_Serial_Is_Empty
        EXTERN board_detect
        EXTERN board_detect_initialzie
        EXTERN printf

        PUBLIC System_Information
        PUBLIC USB_Test_Start
        PUBLIC g_TestProcessState
        PUBLIC main
        PUBLIC rcc_clocks


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void NVIC_SetPriority(IRQn_Type, uint32_t)
NVIC_SetPriority:
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BPL.N    ??NVIC_SetPriority_0
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        ANDS     R2,R0,#0xF
        LDR.N    R3,??DataTable4  ;; 0xe000ed18
        ADDS     R2,R2,R3
        LSLS     R3,R1,#+4
        STRB     R3,[R2, #-4]
        B.N      ??NVIC_SetPriority_1
??NVIC_SetPriority_0:
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable4_1  ;; 0xe000e400
        LSLS     R3,R1,#+4
        STRB     R3,[R0, R2]
??NVIC_SetPriority_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp uint32_t SysTick_Config(uint32_t)
SysTick_Config:
        PUSH     {R4,LR}
        MOVS     R4,R0
        CMP      R4,#+16777216
        BCC.N    ??SysTick_Config_0
        MOVS     R0,#+1
        B.N      ??SysTick_Config_1
??SysTick_Config_0:
        LSLS     R0,R4,#+8        ;; ZeroExtS R0,R4,#+8,#+8
        LSRS     R0,R0,#+8
        SUBS     R0,R0,#+1
        LDR.N    R1,??DataTable4_2  ;; 0xe000e014
        STR      R0,[R1, #+0]
        MOVS     R1,#+15
        MOVS     R0,#-1
        BL       NVIC_SetPriority
        LDR.N    R0,??DataTable4_3  ;; 0xe000e018
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable4_4  ;; 0xe000e010
        MOVS     R1,#+7
        STR      R1,[R0, #+0]
        MOVS     R0,#+0
??SysTick_Config_1:
        POP      {R4,PC}          ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
rcc_clocks:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
g_TestProcessState:
        DS8 1

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
System_Information:
        PUSH     {R7,LR}
        LDR.N    R2,??DataTable4_5
        LDR.N    R1,??DataTable4_6
        LDR.N    R0,??DataTable4_7
        BL       printf
        LDR.N    R0,??DataTable4_8
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable4_9
        BL       printf
        LDR.N    R0,??DataTable4_8
        LDR      R1,[R0, #+4]
        LDR.N    R0,??DataTable4_10
        BL       printf
        LDR.N    R0,??DataTable4_8
        LDR      R1,[R0, #+8]
        LDR.N    R0,??DataTable4_11
        BL       printf
        LDR.N    R0,??DataTable4_8
        LDR      R1,[R0, #+12]
        LDR.N    R0,??DataTable4_12
        BL       printf
        LDR.N    R0,??DataTable4_8
        LDR      R1,[R0, #+16]
        LDR.N    R0,??DataTable4_13
        BL       printf
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USB_Test_Start:
        PUSH     {R7,LR}
        BL       USB_Interrupts_Config
        BL       Set_USBClock
        BL       USB_Init
        POP      {R0,PC}          ;; return

        SECTION `.data`:DATA:REORDER:NOROOT(0)
g_print_menu_control_flag:
        DATA
        DC8 1

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
print_menu_command:
        PUSH     {R7,LR}
        LDR.N    R0,??DataTable4_14
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??print_menu_command_0
        LDR.N    R0,??DataTable4_15
        BL       printf
        LDR.N    R0,??DataTable4_16
        BL       printf
        LDR.N    R0,??DataTable4_17
        BL       printf
        LDR.N    R0,??DataTable4_18
        BL       printf
        LDR.N    R0,??DataTable4_17
        BL       printf
        LDR.N    R0,??DataTable4_19
        BL       printf
        LDR.N    R0,??DataTable4_20
        BL       printf
        LDR.N    R0,??DataTable4_21
        BL       printf
        LDR.N    R0,??DataTable4_22
        BL       printf
        LDR.N    R0,??DataTable4_23
        BL       printf
        LDR.N    R0,??DataTable4_24
        BL       printf
        LDR.N    R0,??DataTable4_17
        BL       printf
        LDR.N    R0,??DataTable4_25
        BL       printf
??print_menu_command_0:
        LDR.N    R0,??DataTable4_14
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
main:
        PUSH     {R4,LR}
        BL       RCC_Configuration
        LDR.N    R0,??DataTable4_8
        BL       RCC_GetClocksFreq
        BL       NVIC_Configuration
        BL       GPIO_Configuration
        BL       USART1_Init_forSerial
        LDR.N    R0,??DataTable4_26
        BL       printf
        BL       USB_Initialize
        LDR.N    R0,??DataTable4_27
        BL       printf
        BL       LED_Initialize
        LDR.N    R0,??DataTable4_28
        BL       printf
        BL       Seven_Segment_Initilaze
        LDR.N    R0,??DataTable4_29
        BL       printf
        BL       KEY_Initialize
        LDR.N    R0,??DataTable4_30
        BL       printf
        BL       board_detect_initialzie
        LDR.N    R0,??DataTable4_31
        BL       printf
        LDR.N    R0,??DataTable4_32  ;; 0x40005400
        BL       I2C_LowLevel_Init
        LDR.N    R0,??DataTable4_33
        BL       printf
        LDR.N    R0,??DataTable4_8
        LDR      R0,[R0, #+0]
        MOV      R1,#+1000
        UDIV     R0,R0,R1
        BL       SysTick_Config
        CMP      R0,#+0
        BEQ.N    ??main_0
??main_1:
        B.N      ??main_1
??main_0:
        LDR.N    R0,??DataTable4_34
        BL       printf
        MOV      R0,#+500
        BL       Delay
        BL       System_Information
??main_2:
        BL       print_menu_command
        BL       UartQueue_Serial_Is_Empty
        CMP      R0,#+0
        BNE.N    ??main_2
        BL       UartQueue_Serial_DeQueue
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R1,R4
        LDR.N    R0,??DataTable4_35
        BL       printf
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+48
        BEQ.N    ??main_3
        BCC.N    ??main_4
        CMP      R4,#+50
        BEQ.N    ??main_5
        BCC.N    ??main_6
        CMP      R4,#+52
        BEQ.N    ??main_7
        BCC.N    ??main_8
        CMP      R4,#+54
        BEQ.N    ??main_9
        BCC.N    ??main_10
        B.N      ??main_4
??main_3:
        BL       System_Information
        B.N      ??main_4
??main_6:
        BL       LED_Test
        B.N      ??main_4
??main_5:
        BL       KEY_Test
        B.N      ??main_4
??main_8:
        BL       Seven_Segment_Test
        B.N      ??main_4
??main_7:
        LDR.N    R0,??DataTable4_36
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
        BL       USB_Test_Start
        MOV      R0,#+500
        BL       Delay
        MOVS     R0,#+1
        BL       USB_Cable_Config
        B.N      ??main_4
??main_10:
        BL       board_detect
        B.N      ??main_4
??main_9:
        BL       Test_Sensor9Axis
??main_4:
        LDR.N    R0,??DataTable4_14
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+120
        BNE.N    ??main_2
        MOVS     R0,#+0
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     0xe000ed18

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     0xe000e400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     0xe000e014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     0xe000e018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DC32     0xe000e010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DC32     `?<Constant "14:55:08">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_6:
        DC32     `?<Constant "Jun 25 2014">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_7:
        DC32     `?<Constant "\\nProgram Build Date: ...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_8:
        DC32     rcc_clocks

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_9:
        DC32     `?<Constant "SYSCLK_Frequency = %d\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_10:
        DC32     `?<Constant "HCLK_Frequency = %d\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_11:
        DC32     `?<Constant "PCLK1_Frequency = %d\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_12:
        DC32     `?<Constant "PCLK2_Frequency = %d\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_13:
        DC32     `?<Constant "ADCCLK_Frequency = %d\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_14:
        DC32     g_print_menu_control_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_15:
        DC32     `?<Constant "\\n---------------------\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_16:
        DC32     `?<Constant "Press menu key\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_17:
        DC32     `?<Constant "---------------------\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_18:
        DC32     `?<Constant "0> System Information\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_19:
        DC32     `?<Constant "1> LED Test\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_20:
        DC32     `?<Constant "2> KEY Test\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_21:
        DC32     `?<Constant "3> 7-Segment Test\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_22:
        DC32     `?<Constant "4> USB HID Test\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_23:
        DC32     `?<Constant "5> Auto Sensor Board ...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_24:
        DC32     `?<Constant "6> MPU 9150 9 Axis Se...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_25:
        DC32     `?<Constant "x> quit\\n\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_26:
        DC32     `?<Constant "\\n\\n[Sensor Test] ...\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_27:
        DC32     `?<Constant "USB_Initialize() done\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_28:
        DC32     `?<Constant "LED_Initialize() done\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_29:
        DC32     `?<Constant "Seven_Segment_Initila...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_30:
        DC32     `?<Constant "KEY_Initialize() done\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_31:
        DC32     `?<Constant "board_detect_initialz...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_32:
        DC32     0x40005400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_33:
        DC32     `?<Constant "I2C_LowLevel_Init() d...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_34:
        DC32     `?<Constant "SysTick_Config() done\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_35:
        DC32     `?<Constant "%c is selected\\n\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_36:
        DC32     g_TestProcessState

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\nProgram Build Date: ...">`:
        DATA
        DC8 "\012Program Build Date: %s, Time: %s\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Jun 25 2014">`:
        DATA
        DC8 "Jun 25 2014"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "14:55:08">`:
        DATA
        DC8 "14:55:08"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "SYSCLK_Frequency = %d\\n">`:
        DATA
        DC8 "SYSCLK_Frequency = %d\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "HCLK_Frequency = %d\\n">`:
        DATA
        DC8 "HCLK_Frequency = %d\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "PCLK1_Frequency = %d\\n">`:
        DATA
        DC8 "PCLK1_Frequency = %d\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "PCLK2_Frequency = %d\\n">`:
        DATA
        DC8 "PCLK2_Frequency = %d\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "ADCCLK_Frequency = %d\\n">`:
        DATA
        DC8 "ADCCLK_Frequency = %d\012"
        DC8 0

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
`?<Constant "0> System Information\\n">`:
        DATA
        DC8 "0> System Information\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "1> LED Test\\n">`:
        DATA
        DC8 "1> LED Test\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "2> KEY Test\\n">`:
        DATA
        DC8 "2> KEY Test\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "3> 7-Segment Test\\n">`:
        DATA
        DC8 "3> 7-Segment Test\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "4> USB HID Test\\n">`:
        DATA
        DC8 "4> USB HID Test\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "5> Auto Sensor Board ...">`:
        DATA
        DC8 "5> Auto Sensor Board Detect\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "6> MPU 9150 9 Axis Se...">`:
        DATA
        DC8 "6> MPU 9150 9 Axis Sensor Test\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "x> quit\\n\\n">`:
        DATA
        DC8 "x> quit\012\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\n\\n[Sensor Test] ...\\n">`:
        DATA
        DC8 "\012\012[Sensor Test] ...\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "USB_Initialize() done\\n">`:
        DATA
        DC8 "USB_Initialize() done\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "LED_Initialize() done\\n">`:
        DATA
        DC8 "LED_Initialize() done\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Seven_Segment_Initila...">`:
        DATA
        DC8 "Seven_Segment_Initilaze() done\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "KEY_Initialize() done\\n">`:
        DATA
        DC8 "KEY_Initialize() done\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "board_detect_initialz...">`:
        DATA
        DC8 "board_detect_initialzie() done\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "I2C_LowLevel_Init() d...">`:
        DATA
        DC8 "I2C_LowLevel_Init() done\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "SysTick_Config() done\\n">`:
        DATA
        DC8 "SysTick_Config() done\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "%c is selected\\n\\n">`:
        DATA
        DC8 "%c is selected\012\012"
        DC8 0, 0, 0

        END
// 
//  21 bytes in section .bss
//   1 byte  in section .data
// 648 bytes in section .rodata
// 672 bytes in section .text
// 
// 672 bytes of CODE  memory
// 648 bytes of CONST memory
//  22 bytes of DATA  memory
//
//Errors: none
//Warnings: none
