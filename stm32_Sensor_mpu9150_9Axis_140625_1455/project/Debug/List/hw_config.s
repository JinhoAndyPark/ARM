///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.6.53336/W32 for ARM    25/Jun/2014  14:55:08 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    src\hw_config.c                                         /
//    Command line =  D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    src\hw_config.c -D USE_STDPERIPH_DRIVER -lcN            /
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
//                    project\Debug\List\hw_config.s                          /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME hw_config

        #define SHT_PROGBITS 0x1

        EXTERN CustomHID_StringSerial
        EXTERN Device_Info
        EXTERN EXTI_ClearITPendingBit
        EXTERN EXTI_Init
        EXTERN GPIO_Init
        EXTERN GPIO_ResetBits
        EXTERN GPIO_SetBits
        EXTERN NVIC_Init
        EXTERN NVIC_PriorityGroupConfig
        EXTERN NVIC_SetVectorTable
        EXTERN PWR_EnterSTOPMode
        EXTERN RCC_APB1PeriphClockCmd
        EXTERN RCC_APB2PeriphClockCmd
        EXTERN RCC_GetFlagStatus
        EXTERN RCC_GetSYSCLKSource
        EXTERN RCC_HSEConfig
        EXTERN RCC_PLLCmd
        EXTERN RCC_SYSCLKConfig
        EXTERN RCC_USBCLKConfig
        EXTERN RCC_WaitForHSEStartUp
        EXTERN SystemInit
        EXTERN USART_Cmd
        EXTERN USART_GetFlagStatus
        EXTERN USART_ITConfig
        EXTERN USART_Init
        EXTERN USART_SendData
        EXTERN UartQueue_Serial_DeQueue
        EXTERN UartQueue_Serial_Is_Empty
        EXTERN bDeviceState

        PUBLIC ADC_ConvertedValueX
        PUBLIC ADC_ConvertedValueX_1
        PUBLIC Delay
        PUBLIC Enter_LowPowerMode
        PUBLIC GPIO_Configuration
        PUBLIC Get_SerialNum
        PUBLIC Leave_LowPowerMode
        PUBLIC NVIC_Configuration
        PUBLIC RCC_Configuration
        PUBLIC Set_USBClock
        PUBLIC TimingDelay_Decrement
        PUBLIC USART1_Init_forSerial
        PUBLIC USART2_Init_forComm
        PUBLIC USB_Cable_Config
        PUBLIC USB_Initialize
        PUBLIC USB_Interrupts_Config
        PUBLIC UartSerialGetChar_Wait
        PUBLIC delay_100_milli_second
        PUBLIC delay_1_second
        PUBLIC fputc


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void NVIC_EnableIRQ(IRQn_Type)
NVIC_EnableIRQ:
        PUSH     {R4}
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSRS     R1,R0,#+5
        LDR.W    R2,??DataTable12  ;; 0xe000e100
        MOVS     R3,#+1
        ANDS     R4,R0,#0x1F
        LSLS     R3,R3,R4
        STR      R3,[R2, R1, LSL #+2]
        POP      {R4}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void NVIC_SetPriority(IRQn_Type, uint32_t)
NVIC_SetPriority:
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BPL.N    ??NVIC_SetPriority_0
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        ANDS     R2,R0,#0xF
        LDR.W    R3,??DataTable12_1  ;; 0xe000ed18
        ADDS     R2,R2,R3
        LSLS     R3,R1,#+4
        STRB     R3,[R2, #-4]
        B.N      ??NVIC_SetPriority_1
??NVIC_SetPriority_0:
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable12_2  ;; 0xe000e400
        LSLS     R3,R1,#+4
        STRB     R3,[R0, R2]
??NVIC_SetPriority_1:
        BX       LR               ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
ADC_ConvertedValueX:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
ADC_ConvertedValueX_1:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
TimingDelay:
        DS8 4

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
delay_1_second:
        PUSH     {R7,LR}
        MOV      R0,#+1000
        BL       Delay
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
delay_100_milli_second:
        PUSH     {R7,LR}
        MOVS     R0,#+100
        BL       Delay
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART1_Init_forSerial:
        PUSH     {LR}
        SUB      SP,SP,#+20
        MOVS     R0,#+115200
        STR      R0,[SP, #+0]
        MOVS     R0,#+0
        STRH     R0,[SP, #+4]
        MOVS     R0,#+0
        STRH     R0,[SP, #+6]
        MOVS     R0,#+0
        STRH     R0,[SP, #+8]
        MOVS     R0,#+0
        STRH     R0,[SP, #+12]
        MOVS     R0,#+12
        STRH     R0,[SP, #+10]
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable12_3  ;; 0x40013800
        BL       USART_Init
        MOVS     R2,#+1
        MOVW     R1,#+1317
        LDR.W    R0,??DataTable12_3  ;; 0x40013800
        BL       USART_ITConfig
        MOVS     R1,#+1
        LDR.W    R0,??DataTable12_3  ;; 0x40013800
        BL       USART_Cmd
        ADD      SP,SP,#+20
        POP      {PC}             ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART2_Init_forComm:
        PUSH     {LR}
        SUB      SP,SP,#+20
        LDR.W    R0,??DataTable12_4  ;; 0x7a120
        STR      R0,[SP, #+0]
        MOVS     R0,#+0
        STRH     R0,[SP, #+4]
        MOVS     R0,#+0
        STRH     R0,[SP, #+6]
        MOVS     R0,#+0
        STRH     R0,[SP, #+8]
        MOVS     R0,#+0
        STRH     R0,[SP, #+12]
        MOVS     R0,#+12
        STRH     R0,[SP, #+10]
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable12_5  ;; 0x40004400
        BL       USART_Init
        MOVS     R2,#+1
        MOVW     R1,#+1317
        LDR.W    R0,??DataTable12_5  ;; 0x40004400
        BL       USART_ITConfig
        MOVS     R1,#+1
        LDR.W    R0,??DataTable12_5  ;; 0x40004400
        BL       USART_Cmd
        ADD      SP,SP,#+20
        POP      {PC}             ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_Configuration:
        PUSH     {R7,LR}
        BL       SystemInit
        MOVS     R1,#+1
        MOVS     R0,#+4
        BL       RCC_APB2PeriphClockCmd
        MOVS     R1,#+1
        MOVS     R0,#+8
        BL       RCC_APB2PeriphClockCmd
        MOVS     R1,#+1
        MOVS     R0,#+16
        BL       RCC_APB2PeriphClockCmd
        MOVS     R1,#+1
        MOVS     R0,#+32
        BL       RCC_APB2PeriphClockCmd
        MOVS     R1,#+1
        MOVS     R0,#+64
        BL       RCC_APB2PeriphClockCmd
        MOVS     R1,#+1
        MOV      R0,#+16384
        BL       RCC_APB2PeriphClockCmd
        MOVS     R1,#+1
        MOVS     R0,#+1
        BL       RCC_APB2PeriphClockCmd
        MOVS     R1,#+1
        MOVS     R0,#+2097152
        BL       RCC_APB1PeriphClockCmd
        MOVS     R1,#+1
        MOV      R0,#+512
        BL       RCC_APB2PeriphClockCmd
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
NVIC_Configuration:
        PUSH     {R7,LR}
        MOVS     R1,#+0
        MOVS     R0,#+134217728
        BL       NVIC_SetVectorTable
        MOV      R0,#+1536
        BL       NVIC_PriorityGroupConfig
        MOVS     R0,#+6
        STRB     R0,[SP, #+0]
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
        MOVS     R0,#+0
        STRB     R0,[SP, #+2]
        MOVS     R0,#+1
        STRB     R0,[SP, #+3]
        ADD      R0,SP,#+0
        BL       NVIC_Init
        MOVS     R0,#+7
        STRB     R0,[SP, #+0]
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
        MOVS     R0,#+1
        STRB     R0,[SP, #+2]
        MOVS     R0,#+1
        STRB     R0,[SP, #+3]
        ADD      R0,SP,#+0
        BL       NVIC_Init
        MOVS     R0,#+8
        STRB     R0,[SP, #+0]
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
        MOVS     R0,#+1
        STRB     R0,[SP, #+2]
        MOVS     R0,#+1
        STRB     R0,[SP, #+3]
        ADD      R0,SP,#+0
        BL       NVIC_Init
        MOVS     R0,#+9
        STRB     R0,[SP, #+0]
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
        MOVS     R0,#+1
        STRB     R0,[SP, #+2]
        MOVS     R0,#+1
        STRB     R0,[SP, #+3]
        ADD      R0,SP,#+0
        BL       NVIC_Init
        MOVS     R0,#+23
        STRB     R0,[SP, #+0]
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
        MOVS     R0,#+1
        STRB     R0,[SP, #+2]
        MOVS     R0,#+1
        STRB     R0,[SP, #+3]
        ADD      R0,SP,#+0
        BL       NVIC_Init
        MOVS     R0,#+40
        STRB     R0,[SP, #+0]
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
        MOVS     R0,#+1
        STRB     R0,[SP, #+2]
        MOVS     R0,#+1
        STRB     R0,[SP, #+3]
        ADD      R0,SP,#+0
        BL       NVIC_Init
        MOVS     R0,#+37
        STRB     R0,[SP, #+0]
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
        MOVS     R0,#+1
        STRB     R0,[SP, #+2]
        MOVS     R0,#+1
        STRB     R0,[SP, #+3]
        ADD      R0,SP,#+0
        BL       NVIC_Init
        MOVS     R0,#+38
        STRB     R0,[SP, #+0]
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
        MOVS     R0,#+0
        STRB     R0,[SP, #+2]
        MOVS     R0,#+1
        STRB     R0,[SP, #+3]
        ADD      R0,SP,#+0
        BL       NVIC_Init
        MOVS     R0,#+28
        STRB     R0,[SP, #+0]
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
        MOVS     R0,#+0
        STRB     R0,[SP, #+2]
        MOVS     R0,#+1
        STRB     R0,[SP, #+3]
        ADD      R0,SP,#+0
        BL       NVIC_Init
        MOVS     R1,#+0
        MOVS     R0,#+31
        BL       NVIC_SetPriority
        MOVS     R0,#+31
        BL       NVIC_EnableIRQ
        MOVS     R1,#+1
        MOVS     R0,#+32
        BL       NVIC_SetPriority
        MOVS     R0,#+32
        BL       NVIC_EnableIRQ
        MOVS     R1,#+0
        MOVS     R0,#+33
        BL       NVIC_SetPriority
        MOVS     R0,#+33
        BL       NVIC_EnableIRQ
        MOVS     R1,#+1
        MOVS     R0,#+34
        BL       NVIC_SetPriority
        MOVS     R0,#+34
        BL       NVIC_EnableIRQ
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Set_USBClock:
        PUSH     {R7,LR}
        MOVS     R0,#+0
        BL       RCC_USBCLKConfig
        MOVS     R1,#+1
        MOVS     R0,#+8388608
        BL       RCC_APB1PeriphClockCmd
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Enter_LowPowerMode:
        PUSH     {R7,LR}
        LDR.N    R0,??DataTable12_6
        MOVS     R1,#+3
        STR      R1,[R0, #+0]
        MOVS     R1,#+1
        MOVS     R0,#+1
        BL       PWR_EnterSTOPMode
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Leave_LowPowerMode:
        PUSH     {R4,LR}
        LDR.N    R4,??DataTable12_7
        MOVS     R0,#+65536
        BL       RCC_HSEConfig
        BL       RCC_WaitForHSEStartUp
        MOVS     R0,#+1
        BL       RCC_PLLCmd
??Leave_LowPowerMode_0:
        MOVS     R0,#+57
        BL       RCC_GetFlagStatus
        CMP      R0,#+0
        BEQ.N    ??Leave_LowPowerMode_0
        MOVS     R0,#+2
        BL       RCC_SYSCLKConfig
??Leave_LowPowerMode_1:
        BL       RCC_GetSYSCLKSource
        CMP      R0,#+8
        BNE.N    ??Leave_LowPowerMode_1
        LDRB     R0,[R4, #+10]
        CMP      R0,#+0
        BEQ.N    ??Leave_LowPowerMode_2
        LDR.N    R0,??DataTable12_6
        MOVS     R1,#+5
        STR      R1,[R0, #+0]
        B.N      ??Leave_LowPowerMode_3
??Leave_LowPowerMode_2:
        LDR.N    R0,??DataTable12_6
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
??Leave_LowPowerMode_3:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USB_Interrupts_Config:
        PUSH     {R7,LR}
        MOV      R0,#+1280
        BL       NVIC_PriorityGroupConfig
        MOVS     R0,#+20
        STRB     R0,[SP, #+0]
        MOVS     R0,#+1
        STRB     R0,[SP, #+1]
        MOVS     R0,#+0
        STRB     R0,[SP, #+2]
        MOVS     R0,#+1
        STRB     R0,[SP, #+3]
        ADD      R0,SP,#+0
        BL       NVIC_Init
        MOVS     R0,#+42
        STRB     R0,[SP, #+0]
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
        MOVS     R0,#+0
        STRB     R0,[SP, #+2]
        MOVS     R0,#+1
        STRB     R0,[SP, #+3]
        ADD      R0,SP,#+0
        BL       NVIC_Init
        MOVS     R0,#+11
        STRB     R0,[SP, #+0]
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
        MOVS     R0,#+0
        STRB     R0,[SP, #+2]
        MOVS     R0,#+1
        STRB     R0,[SP, #+3]
        ADD      R0,SP,#+0
        BL       NVIC_Init
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USB_Cable_Config:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??USB_Cable_Config_0
        MOV      R1,#+256
        LDR.N    R0,??DataTable12_8  ;; 0x40010800
        BL       GPIO_ResetBits
        B.N      ??USB_Cable_Config_1
??USB_Cable_Config_0:
        MOV      R1,#+256
        LDR.N    R0,??DataTable12_8  ;; 0x40010800
        BL       GPIO_SetBits
??USB_Cable_Config_1:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USB_Initialize:
        PUSH     {R5-R7,LR}
        MOVS     R1,#+1
        MOVS     R0,#+4
        BL       RCC_APB2PeriphClockCmd
        MOVS     R1,#+1
        MOVS     R0,#+1
        BL       RCC_APB2PeriphClockCmd
        MOV      R0,#+256
        STRH     R0,[SP, #+0]
        MOVS     R0,#+3
        STRB     R0,[SP, #+2]
        MOVS     R0,#+20
        STRB     R0,[SP, #+3]
        ADD      R1,SP,#+0
        LDR.N    R0,??DataTable12_8  ;; 0x40010800
        BL       GPIO_Init
        MOV      R1,#+256
        LDR.N    R0,??DataTable12_8  ;; 0x40010800
        BL       GPIO_SetBits
        MOVS     R0,#+262144
        BL       EXTI_ClearITPendingBit
        MOVS     R0,#+262144
        STR      R0,[SP, #+4]
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
        MOVS     R0,#+8
        STRB     R0,[SP, #+9]
        MOVS     R0,#+1
        STRB     R0,[SP, #+10]
        ADD      R0,SP,#+4
        BL       EXTI_Init
        POP      {R0-R2,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
GPIO_Configuration:
        PUSH     {R7,LR}
        MOV      R0,#+512
        STRH     R0,[SP, #+0]
        MOVS     R0,#+3
        STRB     R0,[SP, #+2]
        MOVS     R0,#+24
        STRB     R0,[SP, #+3]
        ADD      R1,SP,#+0
        LDR.N    R0,??DataTable12_8  ;; 0x40010800
        BL       GPIO_Init
        MOV      R0,#+1024
        STRH     R0,[SP, #+0]
        MOVS     R0,#+3
        STRB     R0,[SP, #+2]
        MOVS     R0,#+72
        STRB     R0,[SP, #+3]
        ADD      R1,SP,#+0
        LDR.N    R0,??DataTable12_8  ;; 0x40010800
        BL       GPIO_Init
        MOVS     R0,#+1
        STRH     R0,[SP, #+0]
        MOVS     R0,#+0
        STRB     R0,[SP, #+3]
        ADD      R1,SP,#+0
        LDR.N    R0,??DataTable12_9  ;; 0x40010c00
        BL       GPIO_Init
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Get_SerialNum:
        PUSH     {R4}
        LDR.N    R3,??DataTable12_10  ;; 0x1ffff7e8
        LDR      R3,[R3, #+0]
        MOVS     R0,R3
        LDR.N    R3,??DataTable12_11  ;; 0x1ffff7ec
        LDR      R3,[R3, #+0]
        MOVS     R1,R3
        LDR.N    R3,??DataTable12_12  ;; 0x1ffff7f0
        LDR      R3,[R3, #+0]
        MOVS     R2,R3
        CMP      R0,#+0
        BEQ.N    ??Get_SerialNum_0
        LDR.N    R3,??DataTable12_13
        STRB     R0,[R3, #+2]
        LSRS     R3,R0,#+8
        LDR.N    R4,??DataTable12_13
        STRB     R3,[R4, #+4]
        LSRS     R3,R0,#+16
        LDR.N    R4,??DataTable12_13
        STRB     R3,[R4, #+6]
        LSRS     R3,R0,#+24
        LDR.N    R4,??DataTable12_13
        STRB     R3,[R4, #+8]
        LDR.N    R3,??DataTable12_13
        STRB     R1,[R3, #+10]
        LSRS     R3,R1,#+8
        LDR.N    R4,??DataTable12_13
        STRB     R3,[R4, #+12]
        LSRS     R3,R1,#+16
        LDR.N    R4,??DataTable12_13
        STRB     R3,[R4, #+14]
        LSRS     R3,R1,#+24
        LDR.N    R4,??DataTable12_13
        STRB     R3,[R4, #+16]
        LDR.N    R3,??DataTable12_13
        STRB     R2,[R3, #+18]
        LSRS     R3,R2,#+8
        LDR.N    R4,??DataTable12_13
        STRB     R3,[R4, #+20]
        LSRS     R3,R2,#+16
        LDR.N    R4,??DataTable12_13
        STRB     R3,[R4, #+22]
        LSRS     R3,R2,#+24
        LDR.N    R4,??DataTable12_13
        STRB     R3,[R4, #+24]
??Get_SerialNum_0:
        POP      {R4}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Delay:
        PUSH     {R0}
        LDR.N    R0,??DataTable12_14
        LDR      R1,[SP, #+0]
        STR      R1,[R0, #+0]
??Delay_0:
        LDR.N    R0,??DataTable12_14
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Delay_0
        ADD      SP,SP,#+4
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TimingDelay_Decrement:
        LDR.N    R0,??DataTable12_14
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??TimingDelay_Decrement_0
        LDR.N    R0,??DataTable12_14
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.N    R1,??DataTable12_14
        STR      R0,[R1, #+0]
??TimingDelay_Decrement_0:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
fputc:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        CMP      R4,#+10
        BNE.N    ??fputc_0
        MOVS     R1,#+13
        LDR.N    R0,??DataTable12_3  ;; 0x40013800
        BL       USART_SendData
??fputc_1:
        MOVS     R1,#+128
        LDR.N    R0,??DataTable12_3  ;; 0x40013800
        BL       USART_GetFlagStatus
        CMP      R0,#+0
        BEQ.N    ??fputc_1
        MOVS     R1,#+10
        LDR.N    R0,??DataTable12_3  ;; 0x40013800
        BL       USART_SendData
        B.N      ??fputc_2
??fputc_0:
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.N    R0,??DataTable12_3  ;; 0x40013800
        BL       USART_SendData
??fputc_2:
        MOVS     R1,#+128
        LDR.N    R0,??DataTable12_3  ;; 0x40013800
        BL       USART_GetFlagStatus
        CMP      R0,#+0
        BEQ.N    ??fputc_2
        MOVS     R0,R4
        POP      {R1,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12:
        DC32     0xe000e100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_1:
        DC32     0xe000ed18

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_2:
        DC32     0xe000e400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_3:
        DC32     0x40013800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_4:
        DC32     0x7a120

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_5:
        DC32     0x40004400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_6:
        DC32     bDeviceState

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_7:
        DC32     Device_Info

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_8:
        DC32     0x40010800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_9:
        DC32     0x40010c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_10:
        DC32     0x1ffff7e8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_11:
        DC32     0x1ffff7ec

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_12:
        DC32     0x1ffff7f0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_13:
        DC32     CustomHID_StringSerial

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_14:
        DC32     TimingDelay

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
UartSerialGetChar_Wait:
        PUSH     {R7,LR}
??UartSerialGetChar_Wait_0:
        BL       UartQueue_Serial_Is_Empty
        CMP      R0,#+1
        BEQ.N    ??UartSerialGetChar_Wait_0
        BL       UartQueue_Serial_DeQueue
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,PC}          ;; return

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
//    12 bytes in section .bss
// 1 374 bytes in section .text
// 
// 1 374 bytes of CODE memory
//    12 bytes of DATA memory
//
//Errors: none
//Warnings: none
