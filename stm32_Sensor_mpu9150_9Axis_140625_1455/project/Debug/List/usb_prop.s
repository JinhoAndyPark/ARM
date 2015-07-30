///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.6.53336/W32 for ARM    25/Jun/2014  14:55:04 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    src\usb_prop.c                                          /
//    Command line =  D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    src\usb_prop.c -D USE_STDPERIPH_DRIVER -lcN             /
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
//                    project\Debug\List\usb_prop.s                           /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME usb_prop

        #define SHT_PROGBITS 0x1

        EXTERN ADC_SoftwareStartConvCmd
        EXTERN Clear_Status_Out
        EXTERN CustomHID_ConfigDescriptor
        EXTERN CustomHID_DeviceDescriptor
        EXTERN CustomHID_ReportDescriptor
        EXTERN CustomHID_StringLangID
        EXTERN CustomHID_StringProduct
        EXTERN CustomHID_StringSerial
        EXTERN CustomHID_StringVendor
        EXTERN Get_SerialNum
        EXTERN NOP_Process
        EXTERN PowerOn
        EXTERN SetBTABLE
        EXTERN SetDeviceAddress
        EXTERN SetEPRxAddr
        EXTERN SetEPRxCount
        EXTERN SetEPRxStatus
        EXTERN SetEPRxValid
        EXTERN SetEPTxAddr
        EXTERN SetEPTxCount
        EXTERN SetEPTxStatus
        EXTERN SetEPType
        EXTERN Standard_GetDescriptorData
        EXTERN USB_SIL_Init
        EXTERN bDeviceState
        EXTERN pInformation

        PUBLIC Config_Descriptor
        PUBLIC CustomHID_Data_Setup
        PUBLIC CustomHID_GetConfigDescriptor
        PUBLIC CustomHID_GetDeviceDescriptor
        PUBLIC CustomHID_GetHIDDescriptor
        PUBLIC CustomHID_GetProtocolValue
        PUBLIC CustomHID_GetReportDescriptor
        PUBLIC CustomHID_GetStringDescriptor
        PUBLIC CustomHID_Get_Interface_Setting
        PUBLIC CustomHID_Hid_Descriptor
        PUBLIC CustomHID_NoData_Setup
        PUBLIC CustomHID_Report_Descriptor
        PUBLIC CustomHID_Reset
        PUBLIC CustomHID_SetConfiguration
        PUBLIC CustomHID_SetDeviceAddress
        PUBLIC CustomHID_SetProtocol
        PUBLIC CustomHID_Status_In
        PUBLIC CustomHID_Status_Out
        PUBLIC CustomHID_init
        PUBLIC Device_Descriptor
        PUBLIC Device_Property
        PUBLIC Device_Table
        PUBLIC EXTI_Enable
        PUBLIC ProtocolValue
        PUBLIC String_Descriptor
        PUBLIC User_Standard_Requests


        SECTION `.bss`:DATA:REORDER:NOROOT(2)
ProtocolValue:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
EXTI_Enable:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(2)
Device_Table:
        DATA
        DC8 2, 1, 0, 0

        SECTION `.data`:DATA:REORDER:NOROOT(2)
Device_Property:
        DATA
        DC32 CustomHID_init, CustomHID_Reset, CustomHID_Status_In
        DC32 CustomHID_Status_Out, CustomHID_Data_Setup, CustomHID_NoData_Setup
        DC32 CustomHID_Get_Interface_Setting, CustomHID_GetDeviceDescriptor
        DC32 CustomHID_GetConfigDescriptor, CustomHID_GetStringDescriptor, 0H
        DC8 64, 0, 0, 0

        SECTION `.data`:DATA:REORDER:NOROOT(2)
User_Standard_Requests:
        DATA
        DC32 NOP_Process, CustomHID_SetConfiguration, NOP_Process, NOP_Process
        DC32 NOP_Process, NOP_Process, NOP_Process, NOP_Process
        DC32 CustomHID_SetDeviceAddress

        SECTION `.data`:DATA:REORDER:NOROOT(2)
Device_Descriptor:
        DATA
        DC32 CustomHID_DeviceDescriptor
        DC16 18
        DC8 0, 0

        SECTION `.data`:DATA:REORDER:NOROOT(2)
Config_Descriptor:
        DATA
        DC32 CustomHID_ConfigDescriptor
        DC16 41
        DC8 0, 0

        SECTION `.data`:DATA:REORDER:NOROOT(2)
CustomHID_Report_Descriptor:
        DATA
        DC32 CustomHID_ReportDescriptor
        DC16 163
        DC8 0, 0

        SECTION `.data`:DATA:REORDER:NOROOT(2)
CustomHID_Hid_Descriptor:
        DATA
        DC32 CustomHID_ConfigDescriptor + 12H
        DC16 9
        DC8 0, 0

        SECTION `.data`:DATA:REORDER:NOROOT(2)
String_Descriptor:
        DATA
        DC32 CustomHID_StringLangID
        DC16 4
        DC8 0, 0
        DC32 CustomHID_StringVendor
        DC16 38
        DC8 0, 0
        DC32 CustomHID_StringProduct
        DC16 32
        DC8 0, 0
        DC32 CustomHID_StringSerial
        DC16 26
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CustomHID_init:
        PUSH     {R7,LR}
        BL       Get_SerialNum
        LDR.N    R0,??DataTable12
        LDR      R0,[R0, #+0]
        MOVS     R1,#+0
        STRB     R1,[R0, #+10]
        BL       PowerOn
        BL       USB_SIL_Init
        LDR.N    R0,??DataTable12_1
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CustomHID_Reset:
        PUSH     {R7,LR}
        LDR.N    R0,??DataTable12
        LDR      R0,[R0, #+0]
        MOVS     R1,#+0
        STRB     R1,[R0, #+10]
        LDR.N    R0,??DataTable12
        LDR      R0,[R0, #+0]
        MOVS     R1,#+0
        STRB     R1,[R0, #+11]
        LDR.N    R0,??DataTable12
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable12_2
        LDRB     R1,[R1, #+7]
        STRB     R1,[R0, #+9]
        MOVS     R0,#+0
        BL       SetBTABLE
        MOV      R1,#+512
        MOVS     R0,#+0
        BL       SetEPType
        MOVS     R1,#+16
        MOVS     R0,#+0
        BL       SetEPTxStatus
        MOVS     R1,#+24
        MOVS     R0,#+0
        BL       SetEPRxAddr
        MOVS     R1,#+88
        MOVS     R0,#+0
        BL       SetEPTxAddr
        MOVS     R0,#+0
        BL       Clear_Status_Out
        LDR.N    R0,??DataTable12_3
        LDRB     R1,[R0, #+44]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+0
        BL       SetEPRxCount
        MOVS     R0,#+0
        BL       SetEPRxValid
        MOV      R1,#+1536
        MOVS     R0,#+1
        BL       SetEPType
        MOV      R1,#+256
        MOVS     R0,#+1
        BL       SetEPTxAddr
        MOV      R1,#+260
        MOVS     R0,#+1
        BL       SetEPRxAddr
        MOVS     R1,#+2
        MOVS     R0,#+1
        BL       SetEPTxCount
        MOVS     R1,#+2
        MOVS     R0,#+1
        BL       SetEPRxCount
        MOV      R1,#+12288
        MOVS     R0,#+1
        BL       SetEPRxStatus
        MOVS     R1,#+32
        MOVS     R0,#+1
        BL       SetEPTxStatus
        MOVS     R0,#+0
        BL       SetDeviceAddress
        LDR.N    R0,??DataTable12_1
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CustomHID_SetConfiguration:
        PUSH     {R7,LR}
        LDR.N    R0,??DataTable12
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+10]
        CMP      R0,#+0
        BEQ.N    ??CustomHID_SetConfiguration_0
        LDR.N    R0,??DataTable12_1
        MOVS     R1,#+5
        STR      R1,[R0, #+0]
        MOVS     R1,#+1
        LDR.N    R0,??DataTable12_4  ;; 0x40012400
        BL       ADC_SoftwareStartConvCmd
??CustomHID_SetConfiguration_0:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CustomHID_SetDeviceAddress:
        LDR.N    R0,??DataTable12_1
        MOVS     R1,#+4
        STR      R1,[R0, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CustomHID_Status_In:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CustomHID_Status_Out:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CustomHID_Data_Setup:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R0,#+0
        MOVS     R5,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+6
        BNE.N    ??CustomHID_Data_Setup_0
        LDR.N    R0,??DataTable12
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0x7F
        CMP      R0,#+1
        BNE.N    ??CustomHID_Data_Setup_0
        LDR.N    R0,??DataTable12
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+5]
        CMP      R0,#+0
        BNE.N    ??CustomHID_Data_Setup_0
        LDR.N    R0,??DataTable12
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+2]
        CMP      R0,#+34
        BNE.N    ??CustomHID_Data_Setup_1
        ADR.W    R0,CustomHID_GetReportDescriptor
        MOVS     R5,R0
        B.N      ??CustomHID_Data_Setup_2
??CustomHID_Data_Setup_1:
        LDR.N    R0,??DataTable12
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+2]
        CMP      R0,#+33
        BNE.N    ??CustomHID_Data_Setup_2
        ADR.W    R0,CustomHID_GetHIDDescriptor
        MOVS     R5,R0
        B.N      ??CustomHID_Data_Setup_2
??CustomHID_Data_Setup_0:
        LDR.N    R0,??DataTable12
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0x7F
        CMP      R0,#+33
        BNE.N    ??CustomHID_Data_Setup_2
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+3
        BNE.N    ??CustomHID_Data_Setup_2
        ADR.W    R0,CustomHID_GetProtocolValue
        MOVS     R5,R0
??CustomHID_Data_Setup_2:
        MOVS     R0,R5
        CMP      R0,#+0
        BNE.N    ??CustomHID_Data_Setup_3
        MOVS     R0,#+2
        B.N      ??CustomHID_Data_Setup_4
??CustomHID_Data_Setup_3:
        LDR.N    R0,??DataTable12
        LDR      R0,[R0, #+0]
        STR      R5,[R0, #+24]
        LDR.N    R0,??DataTable12
        LDR      R0,[R0, #+0]
        MOVS     R1,#+0
        STRH     R1,[R0, #+18]
        MOVS     R0,#+0
        BLX      R5
        MOVS     R0,#+0
??CustomHID_Data_Setup_4:
        POP      {R1,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CustomHID_NoData_Setup:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.N    R0,??DataTable12
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0x7F
        CMP      R0,#+33
        BNE.N    ??CustomHID_NoData_Setup_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+11
        BNE.N    ??CustomHID_NoData_Setup_0
        BL       CustomHID_SetProtocol
        B.N      ??CustomHID_NoData_Setup_1
??CustomHID_NoData_Setup_0:
        MOVS     R0,#+2
??CustomHID_NoData_Setup_1:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CustomHID_GetDeviceDescriptor:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.N    R1,??DataTable12_5
        MOVS     R0,R4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       Standard_GetDescriptorData
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CustomHID_GetConfigDescriptor:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.N    R1,??DataTable12_6
        MOVS     R0,R4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       Standard_GetDescriptorData
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CustomHID_GetStringDescriptor:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        LDR.N    R0,??DataTable12
        LDR      R0,[R0, #+0]
        LDRB     R5,[R0, #+3]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+5
        BCC.N    ??CustomHID_GetStringDescriptor_0
        MOVS     R0,#+0
        B.N      ??CustomHID_GetStringDescriptor_1
??CustomHID_GetStringDescriptor_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR.N    R0,??DataTable12_7
        ADDS     R1,R0,R5, LSL #+3
        MOVS     R0,R4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       Standard_GetDescriptorData
??CustomHID_GetStringDescriptor_1:
        POP      {R1,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
CustomHID_GetReportDescriptor:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.N    R1,??DataTable12_8
        MOVS     R0,R4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       Standard_GetDescriptorData
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
CustomHID_GetHIDDescriptor:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.N    R1,??DataTable12_9
        MOVS     R0,R4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       Standard_GetDescriptorData
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CustomHID_Get_Interface_Setting:
        MOVS     R2,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+1
        BCC.N    ??CustomHID_Get_Interface_Setting_0
        MOVS     R0,#+2
        B.N      ??CustomHID_Get_Interface_Setting_1
??CustomHID_Get_Interface_Setting_0:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+1
        BCC.N    ??CustomHID_Get_Interface_Setting_2
        MOVS     R0,#+2
        B.N      ??CustomHID_Get_Interface_Setting_1
??CustomHID_Get_Interface_Setting_2:
        MOVS     R0,#+0
??CustomHID_Get_Interface_Setting_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CustomHID_SetProtocol:
        LDR.N    R0,??DataTable12
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+3]
        LDR.N    R0,??DataTable12_10
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        STR      R1,[R0, #+0]
        MOVS     R0,#+0
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
CustomHID_GetProtocolValue:
        MOVS     R1,R0
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+0
        BNE.N    ??CustomHID_GetProtocolValue_0
        LDR.N    R0,??DataTable12
        LDR      R0,[R0, #+0]
        MOVS     R2,#+1
        STRH     R2,[R0, #+16]
        MOVS     R0,#+0
        B.N      ??CustomHID_GetProtocolValue_1
??CustomHID_GetProtocolValue_0:
        LDR.N    R0,??DataTable12_10
??CustomHID_GetProtocolValue_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12:
        DC32     pInformation

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_1:
        DC32     bDeviceState

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_2:
        DC32     CustomHID_ConfigDescriptor

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_3:
        DC32     Device_Property

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_4:
        DC32     0x40012400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_5:
        DC32     Device_Descriptor

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_6:
        DC32     Config_Descriptor

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_7:
        DC32     String_Descriptor

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_8:
        DC32     CustomHID_Report_Descriptor

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_9:
        DC32     CustomHID_Hid_Descriptor

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_10:
        DC32     ProtocolValue

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
//   5 bytes in section .bss
// 152 bytes in section .data
// 620 bytes in section .text
// 
// 620 bytes of CODE memory
// 157 bytes of DATA memory
//
//Errors: none
//Warnings: none
