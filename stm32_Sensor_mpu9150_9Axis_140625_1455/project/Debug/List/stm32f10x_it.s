///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.6.53336/W32 for ARM    25/Jun/2014  14:55:10 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    src\stm32f10x_it.c                                      /
//    Command line =  D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    src\stm32f10x_it.c -D USE_STDPERIPH_DRIVER -lcN         /
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
//                    project\Debug\List\stm32f10x_it.s                       /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm32f10x_it

        #define SHT_PROGBITS 0x1

        EXTERN ADC_ConvertedValueX
        EXTERN ADC_ConvertedValueX_1
        EXTERN Address
        EXTERN Buffer_Rx1
        EXTERN Buffer_Tx1
        EXTERN DMA_ClearFlag
        EXTERN EXTI_ClearITPendingBit
        EXTERN EXTI_GetITStatus
        EXTERN I2CDirection
        EXTERN NumbOfBytes1
        EXTERN SetEPTxCount
        EXTERN SetEPTxValid
        EXTERN TimingDelay_Decrement
        EXTERN USART_ClearITPendingBit
        EXTERN USART_GetITStatus
        EXTERN USART_ReceiveData
        EXTERN USB_Istr
        EXTERN UartQueue_Comm_EnQueue
        EXTERN UartQueue_Serial_EnQueue
        EXTERN UserToPMABufferCopy
        EXTERN g_TestProcessState
        EXTERN printf

        PUBLIC ADC1_2_IRQHandler
        PUBLIC BusFault_Handler
        PUBLIC CAN1_RX1_IRQHandler
        PUBLIC CAN1_SCE_IRQHandler
        PUBLIC DMA1_Channel1_IRQHandler
        PUBLIC DMA1_Channel2_IRQHandler
        PUBLIC DMA1_Channel3_IRQHandler
        PUBLIC DMA1_Channel4_IRQHandler
        PUBLIC DMA1_Channel5_IRQHandler
        PUBLIC DMA1_Channel6_IRQHandler
        PUBLIC DMA1_Channel7_IRQHandler
        PUBLIC DebugMon_Handler
        PUBLIC EXTI0_IRQHandler
        PUBLIC EXTI15_10_IRQHandler
        PUBLIC EXTI1_IRQHandler
        PUBLIC EXTI2_IRQHandler
        PUBLIC EXTI3_IRQHandler
        PUBLIC EXTI4_IRQHandler
        PUBLIC EXTI9_5_IRQHandler
        PUBLIC FLASH_IRQHandler
        PUBLIC HardFault_Handler
        PUBLIC I2C1_ER_IRQHandler
        PUBLIC I2C1_EV_IRQHandler
        PUBLIC I2C2_ER_IRQHandler
        PUBLIC I2C2_EV_IRQHandler
        PUBLIC MemManage_Handler
        PUBLIC NMI_Handler
        PUBLIC PVD_IRQHandler
        PUBLIC PendSV_Handler
        PUBLIC RCC_IRQHandler
        PUBLIC RTCAlarm_IRQHandler
        PUBLIC RTC_IRQHandler
        PUBLIC Rx_Idx1
        PUBLIC Rx_Idx2
        PUBLIC SPI1_IRQHandler
        PUBLIC SPI2_IRQHandler
        PUBLIC SVC_Handler
        PUBLIC Send_Buffer
        PUBLIC SysTick_Handler
        PUBLIC TAMPER_IRQHandler
        PUBLIC TIM1_BRK_IRQHandler
        PUBLIC TIM1_CC_IRQHandler
        PUBLIC TIM1_TRG_COM_IRQHandler
        PUBLIC TIM1_UP_IRQHandler
        PUBLIC TIM2_IRQHandler
        PUBLIC TIM3_IRQHandler
        PUBLIC TIM4_IRQHandler
        PUBLIC Tx_Idx1
        PUBLIC Tx_Idx2
        PUBLIC USART1_IRQHandler
        PUBLIC USART2_IRQHandler
        PUBLIC USART3_IRQHandler
        PUBLIC USBWakeUp_IRQHandler
        PUBLIC USB_HP_CAN1_TX_IRQHandler
        PUBLIC USB_LP_CAN1_RX0_IRQHandler
        PUBLIC UsageFault_Handler
        PUBLIC WWDG_IRQHandler


        SECTION `.bss`:DATA:REORDER:NOROOT(0)
Tx_Idx1:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
Rx_Idx1:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
Tx_Idx2:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
Rx_Idx2:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
Send_Buffer:
        DS8 2

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
NMI_Handler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
HardFault_Handler:
??HardFault_Handler_0:
        B.N      ??HardFault_Handler_0

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
MemManage_Handler:
??MemManage_Handler_0:
        B.N      ??MemManage_Handler_0

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
BusFault_Handler:
??BusFault_Handler_0:
        B.N      ??BusFault_Handler_0

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
UsageFault_Handler:
??UsageFault_Handler_0:
        B.N      ??UsageFault_Handler_0

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SVC_Handler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DebugMon_Handler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
PendSV_Handler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SysTick_Handler:
        PUSH     {R7,LR}
        BL       TimingDelay_Decrement
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
WWDG_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
PVD_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TAMPER_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RTC_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FLASH_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_IRQHandler:
        BX       LR               ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
toggle_data_key1:
        DS8 1

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
EXTI0_IRQHandler:
        PUSH     {R7,LR}
        MOVS     R0,#+1
        BL       EXTI_GetITStatus
        CMP      R0,#+0
        BEQ.N    ??EXTI0_IRQHandler_0
        LDR.W    R0,??DataTable6
        BL       printf
        LDR.W    R0,??DataTable6_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??EXTI0_IRQHandler_1
        LDR.W    R0,??DataTable6_2
        MOVS     R1,#+5
        STRB     R1,[R0, #+0]
        LDR.W    R0,??DataTable6_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??EXTI0_IRQHandler_2
        LDR.W    R0,??DataTable6_3
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        LDR.W    R0,??DataTable6_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+1]
        B.N      ??EXTI0_IRQHandler_3
??EXTI0_IRQHandler_2:
        LDR.W    R0,??DataTable6_3
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
        LDR.W    R0,??DataTable6_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+1]
??EXTI0_IRQHandler_3:
        MOVS     R2,#+2
        MOV      R1,#+256
        LDR.W    R0,??DataTable6_2
        BL       UserToPMABufferCopy
        MOVS     R1,#+2
        MOVS     R0,#+1
        BL       SetEPTxCount
        MOVS     R0,#+1
        BL       SetEPTxValid
??EXTI0_IRQHandler_1:
        MOVS     R0,#+1
        BL       EXTI_ClearITPendingBit
??EXTI0_IRQHandler_0:
        POP      {R0,PC}          ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
toggle_data_key2:
        DS8 1

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
EXTI1_IRQHandler:
        PUSH     {R7,LR}
        MOVS     R0,#+2
        BL       EXTI_GetITStatus
        CMP      R0,#+0
        BEQ.N    ??EXTI1_IRQHandler_0
        LDR.W    R0,??DataTable6_4
        BL       printf
        LDR.W    R0,??DataTable6_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??EXTI1_IRQHandler_1
        LDR.W    R0,??DataTable6_2
        MOVS     R1,#+6
        STRB     R1,[R0, #+0]
        LDR.W    R0,??DataTable6_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??EXTI1_IRQHandler_2
        LDR.W    R0,??DataTable6_5
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        LDR.W    R0,??DataTable6_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+1]
        B.N      ??EXTI1_IRQHandler_3
??EXTI1_IRQHandler_2:
        LDR.W    R0,??DataTable6_5
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
        LDR.W    R0,??DataTable6_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+1]
??EXTI1_IRQHandler_3:
        MOVS     R2,#+2
        MOV      R1,#+256
        LDR.W    R0,??DataTable6_2
        BL       UserToPMABufferCopy
        MOVS     R1,#+2
        MOVS     R0,#+1
        BL       SetEPTxCount
        MOVS     R0,#+1
        BL       SetEPTxValid
??EXTI1_IRQHandler_1:
        MOVS     R0,#+2
        BL       EXTI_ClearITPendingBit
??EXTI1_IRQHandler_0:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
EXTI2_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
EXTI3_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
EXTI4_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DMA1_Channel1_IRQHandler:
        PUSH     {R7,LR}
        LDR.W    R0,??DataTable6_2
        MOVS     R1,#+7
        STRB     R1,[R0, #+0]
        LDR.W    R0,??DataTable6_6
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+4
        LDR.W    R1,??DataTable6_7
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1, LSR #+4
        CMP      R0,#+5
        BCC.N    ??DMA1_Channel1_IRQHandler_0
        LDR.W    R0,??DataTable6_6
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+4
        LDR.W    R1,??DataTable6_2
        STRB     R0,[R1, #+1]
        MOVS     R2,#+2
        MOV      R1,#+256
        LDR.W    R0,??DataTable6_2
        BL       UserToPMABufferCopy
        MOVS     R1,#+2
        MOVS     R0,#+1
        BL       SetEPTxCount
        MOVS     R0,#+1
        BL       SetEPTxValid
        LDR.W    R0,??DataTable6_7
        LDR.W    R1,??DataTable6_6
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+0]
??DMA1_Channel1_IRQHandler_0:
        MOVS     R0,#+2
        BL       DMA_ClearFlag
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DMA1_Channel2_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DMA1_Channel3_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DMA1_Channel4_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DMA1_Channel5_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DMA1_Channel6_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DMA1_Channel7_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC1_2_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USB_HP_CAN1_TX_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USB_LP_CAN1_RX0_IRQHandler:
        PUSH     {R7,LR}
        BL       USB_Istr
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CAN1_RX1_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CAN1_SCE_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
EXTI9_5_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM1_BRK_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM1_UP_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM1_TRG_COM_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM1_CC_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM2_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM3_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM4_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C1_EV_IRQHandler:
        SUB      SP,SP,#+8
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
        LDR.N    R0,??DataTable6_8  ;; 0x40005414
        LDRH     R0,[R0, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        STR      R0,[SP, #+0]
        LDR.N    R0,??DataTable6_9  ;; 0x40005418
        LDRH     R0,[R0, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        STR      R0,[SP, #+4]
        LDR      R0,[SP, #+4]
        LSLS     R0,R0,#+31
        BMI.N    ??I2C1_EV_IRQHandler_0
        LDR      R0,[SP, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??I2C1_EV_IRQHandler_1
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
        LDR.N    R0,??DataTable6_10
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        LDR.N    R0,??DataTable6_11
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
??I2C1_EV_IRQHandler_1:
        LDR      R0,[SP, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??I2C1_EV_IRQHandler_2
        LDR.N    R0,??DataTable6_10
        LDRB     R0,[R0, #+0]
        ADDS     R1,R0,#+1
        LDR.N    R2,??DataTable6_10
        STRB     R1,[R2, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable6_12
        LDRB     R0,[R0, R1]
        LDR.N    R1,??DataTable6_13  ;; 0x40005410
        STRH     R0,[R1, #+0]
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
??I2C1_EV_IRQHandler_2:
        LDR      R0,[SP, #+0]
        LSLS     R0,R0,#+25
        BPL.N    ??I2C1_EV_IRQHandler_3
        LDR.N    R0,??DataTable6_11
        LDRB     R0,[R0, #+0]
        ADDS     R1,R0,#+1
        LDR.N    R2,??DataTable6_11
        STRB     R1,[R2, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable6_14
        LDR.N    R2,??DataTable6_13  ;; 0x40005410
        LDRH     R2,[R2, #+0]
        STRB     R2,[R0, R1]
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
??I2C1_EV_IRQHandler_3:
        LDR      R0,[SP, #+0]
        LSLS     R0,R0,#+27
        BPL.N    ??I2C1_EV_IRQHandler_0
        LDR.N    R0,??DataTable6_15  ;; 0x40005400
        LDRH     R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable6_15  ;; 0x40005400
        STRH     R0,[R1, #+0]
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
??I2C1_EV_IRQHandler_0:
        LDR      R0,[SP, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??I2C1_EV_IRQHandler_4
        LDR.N    R0,??DataTable6_13  ;; 0x40005410
        LDR.N    R1,??DataTable6_16
        LDRB     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
??I2C1_EV_IRQHandler_4:
        LDR      R0,[SP, #+4]
        LSLS     R0,R0,#+31
        BPL.W    ??I2C1_EV_IRQHandler_5
        LDR      R0,[SP, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??I2C1_EV_IRQHandler_6
        LDR.N    R0,??DataTable6_17
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??I2C1_EV_IRQHandler_7
        LDR.N    R0,??DataTable6_10
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        LDR.N    R0,??DataTable6_10
        LDRB     R0,[R0, #+0]
        ADDS     R1,R0,#+1
        LDR.N    R2,??DataTable6_10
        STRB     R1,[R2, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable6_12
        LDRB     R0,[R0, R1]
        LDR.N    R1,??DataTable6_13  ;; 0x40005410
        STRH     R0,[R1, #+0]
        LDR.N    R0,??DataTable6_18
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.N    R1,??DataTable6_18
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable6_18
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??I2C1_EV_IRQHandler_8
        LDR.N    R0,??DataTable6_19  ;; 0x40005404
        LDRH     R0,[R0, #+0]
        MOVW     R1,#+64511
        ANDS     R0,R1,R0
        LDR.N    R1,??DataTable6_19  ;; 0x40005404
        STRH     R0,[R1, #+0]
        B.N      ??I2C1_EV_IRQHandler_8
??I2C1_EV_IRQHandler_7:
        LDR.N    R0,??DataTable6_11
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        LDR.N    R0,??DataTable6_18
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??I2C1_EV_IRQHandler_8
        LDR.N    R0,??DataTable6_15  ;; 0x40005400
        LDRH     R0,[R0, #+0]
        MOVW     R1,#+64511
        ANDS     R0,R1,R0
        LDR.N    R1,??DataTable6_15  ;; 0x40005400
        STRH     R0,[R1, #+0]
        LDR.N    R0,??DataTable6_15  ;; 0x40005400
        LDRH     R0,[R0, #+0]
        MOV      R1,#+512
        ORRS     R0,R1,R0
        LDR.N    R1,??DataTable6_15  ;; 0x40005400
        STRH     R0,[R1, #+0]
??I2C1_EV_IRQHandler_8:
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
??I2C1_EV_IRQHandler_6:
        LDR      R0,[SP, #+0]
        ANDS     R0,R0,#0x84
        CMP      R0,#+128
        BNE.N    ??I2C1_EV_IRQHandler_9
        LDR.N    R0,??DataTable6_18
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??I2C1_EV_IRQHandler_10
        LDR.N    R0,??DataTable6_10
        LDRB     R0,[R0, #+0]
        ADDS     R1,R0,#+1
        LDR.N    R2,??DataTable6_10
        STRB     R1,[R2, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable6_12
        LDRB     R0,[R0, R1]
        LDR.N    R1,??DataTable6_13  ;; 0x40005410
        STRH     R0,[R1, #+0]
        LDR.N    R0,??DataTable6_18
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.N    R1,??DataTable6_18
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable6_18
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??I2C1_EV_IRQHandler_10
        LDR.N    R0,??DataTable6_19  ;; 0x40005404
        LDRH     R0,[R0, #+0]
        MOVW     R1,#+64511
        ANDS     R0,R1,R0
        LDR.N    R1,??DataTable6_19  ;; 0x40005404
        STRH     R0,[R1, #+0]
??I2C1_EV_IRQHandler_10:
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
??I2C1_EV_IRQHandler_9:
        LDR      R0,[SP, #+0]
        ANDS     R0,R0,#0x84
        CMP      R0,#+132
        BNE.N    ??I2C1_EV_IRQHandler_11
        LDR.N    R0,??DataTable6_15  ;; 0x40005400
        LDRH     R0,[R0, #+0]
        MOV      R1,#+512
        ORRS     R0,R1,R0
        LDR.N    R1,??DataTable6_15  ;; 0x40005400
        STRH     R0,[R1, #+0]
        LDR.N    R0,??DataTable6_19  ;; 0x40005404
        LDRH     R0,[R0, #+0]
        MOVW     R1,#+65023
        ANDS     R0,R1,R0
        LDR.N    R1,??DataTable6_19  ;; 0x40005404
        STRH     R0,[R1, #+0]
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
??I2C1_EV_IRQHandler_11:
        LDR      R0,[SP, #+0]
        LSLS     R0,R0,#+25
        BPL.N    ??I2C1_EV_IRQHandler_5
        LDR.N    R0,??DataTable6_11
        LDRB     R0,[R0, #+0]
        ADDS     R1,R0,#+1
        LDR.N    R2,??DataTable6_11
        STRB     R1,[R2, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable6_14
        LDR.N    R2,??DataTable6_13  ;; 0x40005410
        LDRH     R2,[R2, #+0]
        STRB     R2,[R0, R1]
        LDR.N    R0,??DataTable6_18
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.N    R1,??DataTable6_18
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable6_18
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??I2C1_EV_IRQHandler_12
        LDR.N    R0,??DataTable6_15  ;; 0x40005400
        LDRH     R0,[R0, #+0]
        MOVW     R1,#+64511
        ANDS     R0,R1,R0
        LDR.N    R1,??DataTable6_15  ;; 0x40005400
        STRH     R0,[R1, #+0]
        LDR.N    R0,??DataTable6_15  ;; 0x40005400
        LDRH     R0,[R0, #+0]
        MOV      R1,#+512
        ORRS     R0,R1,R0
        LDR.N    R1,??DataTable6_15  ;; 0x40005400
        STRH     R0,[R1, #+0]
??I2C1_EV_IRQHandler_12:
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
??I2C1_EV_IRQHandler_5:
        ADD      SP,SP,#+8
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C1_ER_IRQHandler:
        SUB      SP,SP,#+4
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        LDR.N    R0,??DataTable6_8  ;; 0x40005414
        LDRH     R0,[R0, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
        LSLS     R0,R0,#+21
        BPL.N    ??I2C1_ER_IRQHandler_0
        LDR.N    R0,??DataTable6_8  ;; 0x40005414
        LDRH     R0,[R0, #+0]
        MOVW     R1,#+64511
        ANDS     R0,R1,R0
        LDR.N    R1,??DataTable6_8  ;; 0x40005414
        STRH     R0,[R1, #+0]
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
??I2C1_ER_IRQHandler_0:
        LDR      R0,[SP, #+0]
        LSLS     R0,R0,#+22
        BPL.N    ??I2C1_ER_IRQHandler_1
        LDR.N    R0,??DataTable6_8  ;; 0x40005414
        LDRH     R0,[R0, #+0]
        MOVW     R1,#+64511
        ANDS     R0,R1,R0
        LDR.N    R1,??DataTable6_8  ;; 0x40005414
        STRH     R0,[R1, #+0]
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
??I2C1_ER_IRQHandler_1:
        LDR      R0,[SP, #+0]
        LSLS     R0,R0,#+23
        BPL.N    ??I2C1_ER_IRQHandler_2
        LDR.N    R0,??DataTable6_8  ;; 0x40005414
        LDRH     R0,[R0, #+0]
        MOVW     R1,#+65279
        ANDS     R0,R1,R0
        LDR.N    R1,??DataTable6_8  ;; 0x40005414
        STRH     R0,[R1, #+0]
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
??I2C1_ER_IRQHandler_2:
        LDR      R0,[SP, #+0]
        LSLS     R0,R0,#+20
        BPL.N    ??I2C1_ER_IRQHandler_3
        LDR.N    R0,??DataTable6_8  ;; 0x40005414
        LDRH     R0,[R0, #+0]
        MOVW     R1,#+63487
        ANDS     R0,R1,R0
        LDR.N    R1,??DataTable6_8  ;; 0x40005414
        STRH     R0,[R1, #+0]
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
??I2C1_ER_IRQHandler_3:
        ADD      SP,SP,#+4
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C2_EV_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C2_ER_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SPI1_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SPI2_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART1_IRQHandler:
        PUSH     {R7,LR}
        MOVW     R1,#+1317
        LDR.N    R0,??DataTable6_20  ;; 0x40013800
        BL       USART_GetITStatus
        CMP      R0,#+0
        BEQ.N    ??USART1_IRQHandler_0
        MOVW     R1,#+1317
        LDR.N    R0,??DataTable6_20  ;; 0x40013800
        BL       USART_ClearITPendingBit
        LDR.N    R0,??DataTable6_20  ;; 0x40013800
        BL       USART_ReceiveData
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       UartQueue_Serial_EnQueue
??USART1_IRQHandler_0:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART2_IRQHandler:
        PUSH     {R7,LR}
        MOVW     R1,#+1317
        LDR.N    R0,??DataTable6_21  ;; 0x40004400
        BL       USART_GetITStatus
        CMP      R0,#+0
        BEQ.N    ??USART2_IRQHandler_0
        MOVW     R1,#+1317
        LDR.N    R0,??DataTable6_21  ;; 0x40004400
        BL       USART_ClearITPendingBit
        LDR.N    R0,??DataTable6_21  ;; 0x40004400
        BL       USART_ReceiveData
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       UartQueue_Comm_EnQueue
??USART2_IRQHandler_0:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC32     `?<Constant "Left-WKUP Button Press\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_1:
        DC32     g_TestProcessState

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_2:
        DC32     Send_Buffer

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_3:
        DC32     toggle_data_key1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_4:
        DC32     `?<Constant "Right-USER Button Press\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_5:
        DC32     toggle_data_key2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_6:
        DC32     ADC_ConvertedValueX

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_7:
        DC32     ADC_ConvertedValueX_1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_8:
        DC32     0x40005414

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_9:
        DC32     0x40005418

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_10:
        DC32     Tx_Idx1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_11:
        DC32     Rx_Idx1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_12:
        DC32     Buffer_Tx1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_13:
        DC32     0x40005410

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_14:
        DC32     Buffer_Rx1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_15:
        DC32     0x40005400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_16:
        DC32     Address

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_17:
        DC32     I2CDirection

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_18:
        DC32     NumbOfBytes1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_19:
        DC32     0x40005404

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_20:
        DC32     0x40013800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_21:
        DC32     0x40004400

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART3_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
EXTI15_10_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RTCAlarm_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USBWakeUp_IRQHandler:
        PUSH     {R7,LR}
        MOVS     R0,#+262144
        BL       EXTI_ClearITPendingBit
        POP      {R0,PC}          ;; return

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Left-WKUP Button Press\\n">`:
        DATA
        DC8 "Left-WKUP Button Press\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Right-USER Button Press\\n">`:
        DATA
        DC8 "Right-USER Button Press\012"
        DC8 0, 0, 0

        END
// 
//     8 bytes in section .bss
//    52 bytes in section .rodata
// 1 238 bytes in section .text
// 
// 1 238 bytes of CODE  memory
//    52 bytes of CONST memory
//     8 bytes of DATA  memory
//
//Errors: none
//Warnings: none
