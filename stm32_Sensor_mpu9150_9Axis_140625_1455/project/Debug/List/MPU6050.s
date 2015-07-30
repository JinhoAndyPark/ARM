///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.6.53336/W32 for ARM    25/Jun/2014  14:55:03 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    Sensor9Axis\MPU6050.cpp                                 /
//    Command line =  D:\zWk.Src\Mango-M32-MPU-9150\m32_Sensor_mpu9150_9Axis\ /
//                    Sensor9Axis\MPU6050.cpp -D USE_STDPERIPH_DRIVER -lcN    /
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
//                    project\Debug\List\MPU6050.s                            /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME MPU6050

        #define SHT_PROGBITS 0x1

        EXTERN Delay
        EXTERN _ZN6I2Cdev10writeBytesEhhhPh
        EXTERN _ZN6I2Cdev7readBitEhhhPht
        EXTERN _ZN6I2Cdev8readBitsEhhhhPht
        EXTERN _ZN6I2Cdev8readByteEhhPht
        EXTERN _ZN6I2Cdev8writeBitEhhhh
        EXTERN _ZN6I2Cdev9readBytesEhhhPht
        EXTERN _ZN6I2Cdev9writeBitsEhhhhh
        EXTERN _ZN6I2Cdev9writeByteEhhh
        EXTERN _ZN6I2Cdev9writeWordEhht
        EXTERN free
        EXTERN malloc
        EXTERN memcmp
        EXTERN realloc

        PUBLIC _ZN7MPU605010getMotion6EPsS0_S0_S0_S0_S0_
        PUBLIC _ZN7MPU605010getMotion9EPsS0_S0_S0_S0_S0_S0_S0_S0_
        PUBLIC _ZN7MPU605010initializeEv
        PUBLIC _ZN7MPU605011getDHPFModeEv
        PUBLIC _ZN7MPU605011getDLPFModeEv
        PUBLIC _ZN7MPU605011getDeviceIDEv
        PUBLIC _ZN7MPU605011getFIFOByteEv
        PUBLIC _ZN7MPU605011getRotationEPsS0_S0_
        PUBLIC _ZN7MPU605011setDHPFModeEh
        PUBLIC _ZN7MPU605011setDLPFModeEh
        PUBLIC _ZN7MPU605011setDeviceIDEh
        PUBLIC _ZN7MPU605011setFIFOByteEh
        PUBLIC _ZN7MPU605012getFIFOBytesEPhh
        PUBLIC _ZN7MPU605012getFIFOCountEv
        PUBLIC _ZN7MPU605012getIntStatusEv
        PUBLIC _ZN7MPU605012getRotationXEv
        PUBLIC _ZN7MPU605012getRotationYEv
        PUBLIC _ZN7MPU605012getRotationZEv
        PUBLIC _ZN7MPU605012getXFineGainEv
        PUBLIC _ZN7MPU605012getYFineGainEv
        PUBLIC _ZN7MPU605012getZFineGainEv
        PUBLIC _ZN7MPU605012resetSensorsEv
        PUBLIC _ZN7MPU605012setXFineGainEa
        PUBLIC _ZN7MPU605012setYFineGainEa
        PUBLIC _ZN7MPU605012setZFineGainEa
        PUBLIC _ZN7MPU605013getDMPConfig1Ev
        PUBLIC _ZN7MPU605013getDMPConfig2Ev
        PUBLIC _ZN7MPU605013getDMPEnabledEv
        PUBLIC _ZN7MPU605013getIntEnabledEv
        PUBLIC _ZN7MPU605013getSlave0NackEv
        PUBLIC _ZN7MPU605013getSlave1NackEv
        PUBLIC _ZN7MPU605013getSlave2NackEv
        PUBLIC _ZN7MPU605013getSlave3NackEv
        PUBLIC _ZN7MPU605013getSlave4NackEv
        PUBLIC _ZN7MPU605013setDMPConfig1Eh
        PUBLIC _ZN7MPU605013setDMPConfig2Eh
        PUBLIC _ZN7MPU605013setDMPEnabledEb
        PUBLIC _ZN7MPU605013setIntEnabledEh
        PUBLIC _ZN7MPU605013setMemoryBankEhbb
        PUBLIC _ZN7MPU605014getClockSourceEv
        PUBLIC _ZN7MPU605014getFIFOEnabledEv
        PUBLIC _ZN7MPU605014getTemperatureEv
        PUBLIC _ZN7MPU605014getXGyroOffsetEv
        PUBLIC _ZN7MPU605014getYGyroOffsetEv
        PUBLIC _ZN7MPU605014getZGyroOffsetEv
        PUBLIC _ZN7MPU605014readMemoryByteEv
        PUBLIC _ZN7MPU605014resetI2CMasterEv
        PUBLIC _ZN7MPU605014setClockSourceEh
        PUBLIC _ZN7MPU605014setFIFOEnabledEb
        PUBLIC _ZN7MPU605014setXGyroOffsetEa
        PUBLIC _ZN7MPU605014setYGyroOffsetEa
        PUBLIC _ZN7MPU605014setZGyroOffsetEa
        PUBLIC _ZN7MPU605014testConnectionEv
        PUBLIC _ZN7MPU605015getAccelerationEPsS0_S0_
        PUBLIC _ZN7MPU605015getIntDMPStatusEv
        PUBLIC _ZN7MPU605015getOTPBankValidEv
        PUBLIC _ZN7MPU605015getSlave4IsDoneEv
        PUBLIC _ZN7MPU605015getSlaveAddressEh
        PUBLIC _ZN7MPU605015getSlaveEnabledEh
        PUBLIC _ZN7MPU605015getSleepEnabledEv
        PUBLIC _ZN7MPU605015getXAccelOffsetEv
        PUBLIC _ZN7MPU605015getYAccelOffsetEv
        PUBLIC _ZN7MPU605015getZAccelOffsetEv
        PUBLIC _ZN7MPU605015readMemoryBlockEPhthh
        PUBLIC _ZN7MPU605015setOTPBankValidEb
        PUBLIC _ZN7MPU605015setSlaveAddressEhh
        PUBLIC _ZN7MPU605015setSlaveEnabledEhb
        PUBLIC _ZN7MPU605015setSleepEnabledEb
        PUBLIC _ZN7MPU605015setXAccelOffsetEs
        PUBLIC _ZN7MPU605015setYAccelOffsetEs
        PUBLIC _ZN7MPU605015setZAccelOffsetEs
        PUBLIC _ZN7MPU605015writeMemoryByteEh
        PUBLIC _ZN7MPU605016getAccelerationXEv
        PUBLIC _ZN7MPU605016getAccelerationYEv
        PUBLIC _ZN7MPU605016getAccelerationZEv
        PUBLIC _ZN7MPU605016getAuxVDDIOLevelEv
        PUBLIC _ZN7MPU605016getDMPInt0StatusEv
        PUBLIC _ZN7MPU605016getDMPInt1StatusEv
        PUBLIC _ZN7MPU605016getDMPInt2StatusEv
        PUBLIC _ZN7MPU605016getDMPInt3StatusEv
        PUBLIC _ZN7MPU605016getDMPInt4StatusEv
        PUBLIC _ZN7MPU605016getDMPInt5StatusEv
        PUBLIC _ZN7MPU605016getIntDMPEnabledEv
        PUBLIC _ZN7MPU605016getInterruptModeEv
        PUBLIC _ZN7MPU605016getSlave4AddressEv
        PUBLIC _ZN7MPU605016getSlave4EnabledEv
        PUBLIC _ZN7MPU605016getSlaveRegisterEh
        PUBLIC _ZN7MPU605016getWakeFrequencyEv
        PUBLIC _ZN7MPU605016setAuxVDDIOLevelEh
        PUBLIC _ZN7MPU605016setIntDMPEnabledEb
        PUBLIC _ZN7MPU605016setInterruptModeEb
        PUBLIC _ZN7MPU605016setSlave4AddressEh
        PUBLIC _ZN7MPU605016setSlave4EnabledEb
        PUBLIC _ZN7MPU605016setSlaveRegisterEhh
        PUBLIC _ZN7MPU605016setWakeFrequencyEh
        PUBLIC _ZN7MPU605016switchSPIEnabledEb
        PUBLIC _ZN7MPU605016writeMemoryBlockEPKhthhbb
        PUBLIC _ZN7MPU605017getAccelXSelfTestEv
        PUBLIC _ZN7MPU605017getAccelYSelfTestEv
        PUBLIC _ZN7MPU605017getAccelZSelfTestEv
        PUBLIC _ZN7MPU605017getInterruptDriveEv
        PUBLIC _ZN7MPU605017getInterruptLatchEv
        PUBLIC _ZN7MPU605017getSlave4RegisterEv
        PUBLIC _ZN7MPU605017getSlaveWriteModeEh
        PUBLIC _ZN7MPU605017setAccelXSelfTestEb
        PUBLIC _ZN7MPU605017setAccelYSelfTestEb
        PUBLIC _ZN7MPU605017setAccelZSelfTestEb
        PUBLIC _ZN7MPU605017setInterruptDriveEb
        PUBLIC _ZN7MPU605017setInterruptLatchEb
        PUBLIC _ZN7MPU605017setSlave4RegisterEh
        PUBLIC _ZN7MPU605017setSlaveWriteModeEhb
        PUBLIC _ZN7MPU605018getIntMotionStatusEv
        PUBLIC _ZN7MPU605018getLostArbitrationEv
        PUBLIC _ZN7MPU605018getSlate4InputByteEv
        PUBLIC _ZN7MPU605018getSlave4WriteModeEv
        PUBLIC _ZN7MPU605018getSlaveDataLengthEh
        PUBLIC _ZN7MPU605018getTempFIFOEnabledEv
        PUBLIC _ZN7MPU605018getXGyroOffsetUserEv
        PUBLIC _ZN7MPU605018getYGyroOffsetUserEv
        PUBLIC _ZN7MPU605018getZGyroOffsetUserEv
        PUBLIC _ZN7MPU605018resetGyroscopePathEv
        PUBLIC _ZN7MPU605018setSlave4WriteModeEb
        PUBLIC _ZN7MPU605018setSlaveDataLengthEhh
        PUBLIC _ZN7MPU605018setSlaveOutputByteEhh
        PUBLIC _ZN7MPU605018setTempFIFOEnabledEb
        PUBLIC _ZN7MPU605018setXGyroOffsetUserEs
        PUBLIC _ZN7MPU605018setYGyroOffsetUserEs
        PUBLIC _ZN7MPU605018setZGyroOffsetUserEs
        PUBLIC _ZN7MPU605019getAccelFIFOEnabledEv
        PUBLIC _ZN7MPU605019getI2CBypassEnabledEv
        PUBLIC _ZN7MPU605019getIntMotionEnabledEv
        PUBLIC _ZN7MPU605019getMasterClockSpeedEv
        PUBLIC _ZN7MPU605019getWakeCycleEnabledEv
        PUBLIC _ZN7MPU605019getXGyroFIFOEnabledEv
        PUBLIC _ZN7MPU605019getYGyroFIFOEnabledEv
        PUBLIC _ZN7MPU605019getZGyroFIFOEnabledEv
        PUBLIC _ZN7MPU605019setAccelFIFOEnabledEb
        PUBLIC _ZN7MPU605019setI2CBypassEnabledEb
        PUBLIC _ZN7MPU605019setIntMotionEnabledEb
        PUBLIC _ZN7MPU605019setMasterClockSpeedEh
        PUBLIC _ZN7MPU605019setSlave4OutputByteEh
        PUBLIC _ZN7MPU605019setWakeCycleEnabledEb
        PUBLIC _ZN7MPU605019setXGyroFIFOEnabledEb
        PUBLIC _ZN7MPU605019setYGyroFIFOEnabledEb
        PUBLIC _ZN7MPU605019setZGyroFIFOEnabledEb
        PUBLIC _ZN7MPU605020getExternalFrameSyncEv
        PUBLIC _ZN7MPU605020getIntFreefallStatusEv
        PUBLIC _ZN7MPU605020getIntPLLReadyStatusEv
        PUBLIC _ZN7MPU605020getPassthroughStatusEv
        PUBLIC _ZN7MPU605020getSlave0FIFOEnabledEv
        PUBLIC _ZN7MPU605020getSlave1FIFOEnabledEv
        PUBLIC _ZN7MPU605020getSlave2FIFOEnabledEv
        PUBLIC _ZN7MPU605020getSlave3FIFOEnabledEv
        PUBLIC _ZN7MPU605020getSlave4MasterDelayEv
        PUBLIC _ZN7MPU605020getSlaveDelayEnabledEh
        PUBLIC _ZN7MPU605020getSlaveWordByteSwapEh
        PUBLIC _ZN7MPU605020getTempSensorEnabledEv
        PUBLIC _ZN7MPU605020resetTemperaturePathEv
        PUBLIC _ZN7MPU605020setExternalFrameSyncEh
        PUBLIC _ZN7MPU605020setSlave0FIFOEnabledEb
        PUBLIC _ZN7MPU605020setSlave1FIFOEnabledEb
        PUBLIC _ZN7MPU605020setSlave2FIFOEnabledEb
        PUBLIC _ZN7MPU605020setSlave3FIFOEnabledEb
        PUBLIC _ZN7MPU605020setSlave4MasterDelayEh
        PUBLIC _ZN7MPU605020setSlaveDelayEnabledEhb
        PUBLIC _ZN7MPU605020setSlaveWordByteSwapEhb
        PUBLIC _ZN7MPU605020setTempSensorEnabledEb
        PUBLIC _ZN7MPU605020writeProgMemoryBlockEPKhthhb
        PUBLIC _ZN7MPU605021getClockOutputEnabledEv
        PUBLIC _ZN7MPU605021getExternalSensorByteEi
        PUBLIC _ZN7MPU605021getExternalSensorWordEi
        PUBLIC _ZN7MPU605021getFullScaleGyroRangeEv
        PUBLIC _ZN7MPU605021getIntDataReadyStatusEv
        PUBLIC _ZN7MPU605021getIntFreefallEnabledEv
        PUBLIC _ZN7MPU605021getIntI2CMasterStatusEv
        PUBLIC _ZN7MPU605021getIntPLLReadyEnabledEv
        PUBLIC _ZN7MPU605021getMultiMasterEnabledEv
        PUBLIC _ZN7MPU605021getXNegMotionDetectedEv
        PUBLIC _ZN7MPU605021getXPosMotionDetectedEv
        PUBLIC _ZN7MPU605021getYNegMotionDetectedEv
        PUBLIC _ZN7MPU605021getYPosMotionDetectedEv
        PUBLIC _ZN7MPU605021getZNegMotionDetectedEv
        PUBLIC _ZN7MPU605021getZPosMotionDetectedEv
        PUBLIC _ZN7MPU605021getZeroMotionDetectedEv
        PUBLIC _ZN7MPU605021setClockOutputEnabledEb
        PUBLIC _ZN7MPU605021setFullScaleGyroRangeEh
        PUBLIC _ZN7MPU605021setIntFreefallEnabledEb
        PUBLIC _ZN7MPU605021setIntPLLReadyEnabledEb
        PUBLIC _ZN7MPU605021setMemoryStartAddressEh
        PUBLIC _ZN7MPU605021setMultiMasterEnabledEb
        PUBLIC _ZN7MPU605022getExternalSensorDWordEi
        PUBLIC _ZN7MPU605022getFSyncInterruptLevelEv
        PUBLIC _ZN7MPU605022getFullScaleAccelRangeEv
        PUBLIC _ZN7MPU605022getIntDataReadyEnabledEv
        PUBLIC _ZN7MPU605022getIntI2CMasterEnabledEv
        PUBLIC _ZN7MPU605022getIntZeroMotionStatusEv
        PUBLIC _ZN7MPU605022getInterruptLatchClearEv
        PUBLIC _ZN7MPU605022getStandbyXGyroEnabledEv
        PUBLIC _ZN7MPU605022getStandbyYGyroEnabledEv
        PUBLIC _ZN7MPU605022getStandbyZGyroEnabledEv
        PUBLIC _ZN7MPU605022resetAccelerometerPathEv
        PUBLIC _ZN7MPU605022setFSyncInterruptLevelEb
        PUBLIC _ZN7MPU605022setFullScaleAccelRangeEh
        PUBLIC _ZN7MPU605022setIntDataReadyEnabledEb
        PUBLIC _ZN7MPU605022setIntI2CMasterEnabledEb
        PUBLIC _ZN7MPU605022setInterruptLatchClearEb
        PUBLIC _ZN7MPU605022setStandbyXGyroEnabledEb
        PUBLIC _ZN7MPU605022setStandbyYGyroEnabledEb
        PUBLIC _ZN7MPU605022setStandbyZGyroEnabledEb
        PUBLIC _ZN7MPU605023getI2CMasterModeEnabledEv
        PUBLIC _ZN7MPU605023getIntZeroMotionEnabledEv
        PUBLIC _ZN7MPU605023getSlaveWordGroupOffsetEh
        PUBLIC _ZN7MPU605023getStandbyXAccelEnabledEv
        PUBLIC _ZN7MPU605023getStandbyYAccelEnabledEv
        PUBLIC _ZN7MPU605023getStandbyZAccelEnabledEv
        PUBLIC _ZN7MPU605023setI2CMasterModeEnabledEb
        PUBLIC _ZN7MPU605023setIntZeroMotionEnabledEb
        PUBLIC _ZN7MPU605023setSlaveWordGroupOffsetEhb
        PUBLIC _ZN7MPU605023setStandbyXAccelEnabledEb
        PUBLIC _ZN7MPU605023setStandbyYAccelEnabledEb
        PUBLIC _ZN7MPU605023setStandbyZAccelEnabledEb
        PUBLIC _ZN7MPU605024getFSyncInterruptEnabledEv
        PUBLIC _ZN7MPU605024setFSyncInterruptEnabledEb
        PUBLIC _ZN7MPU605024writeDMPConfigurationSetEPKhtb
        PUBLIC _ZN7MPU605025getSlave4InterruptEnabledEv
        PUBLIC _ZN7MPU605025setSlave4InterruptEnabledEb
        PUBLIC _ZN7MPU605026getMotionDetectionDurationEv
        PUBLIC _ZN7MPU605026setMotionDetectionDurationEh
        PUBLIC _ZN7MPU605027getMotionDetectionThresholdEv
        PUBLIC _ZN7MPU605027setMotionDetectionThresholdEh
        PUBLIC _ZN7MPU605028getAccelerometerPowerOnDelayEv
        PUBLIC _ZN7MPU605028getFreefallDetectionDurationEv
        PUBLIC _ZN7MPU605028setAccelerometerPowerOnDelayEh
        PUBLIC _ZN7MPU605028setFreefallDetectionDurationEh
        PUBLIC _ZN7MPU605028writeProgDMPConfigurationSetEPKht
        PUBLIC _ZN7MPU605029getExternalShadowDelayEnabledEv
        PUBLIC _ZN7MPU605029getFreefallDetectionThresholdEv
        PUBLIC _ZN7MPU605029setExternalShadowDelayEnabledEb
        PUBLIC _ZN7MPU605029setFreefallDetectionThresholdEh
        PUBLIC _ZN7MPU605030getIntFIFOBufferOverflowStatusEv
        PUBLIC _ZN7MPU605030getZeroMotionDetectionDurationEv
        PUBLIC _ZN7MPU605030setZeroMotionDetectionDurationEh
        PUBLIC _ZN7MPU605031getIntFIFOBufferOverflowEnabledEv
        PUBLIC _ZN7MPU605031getWaitForExternalSensorEnabledEv
        PUBLIC _ZN7MPU605031getZeroMotionDetectionThresholdEv
        PUBLIC _ZN7MPU605031setIntFIFOBufferOverflowEnabledEb
        PUBLIC _ZN7MPU605031setWaitForExternalSensorEnabledEb
        PUBLIC _ZN7MPU605031setZeroMotionDetectionThresholdEh
        PUBLIC _ZN7MPU605034getMotionDetectionCounterDecrementEv
        PUBLIC _ZN7MPU605034getSlaveReadWriteTransitionEnabledEv
        PUBLIC _ZN7MPU605034setMotionDetectionCounterDecrementEh
        PUBLIC _ZN7MPU605034setSlaveReadWriteTransitionEnabledEb
        PUBLIC _ZN7MPU605036getFreefallDetectionCounterDecrementEv
        PUBLIC _ZN7MPU605036setFreefallDetectionCounterDecrementEh
        PUBLIC _ZN7MPU60505resetEv
        PUBLIC _ZN7MPU60507getRateEv
        PUBLIC _ZN7MPU60507setRateEh
        PUBLIC _ZN7MPU60508resetDMPEv
        PUBLIC _ZN7MPU60509resetFIFOEv
        PUBLIC _ZN7MPU6050C1Eh
        PUBLIC _ZN7MPU6050C1Ev
        PUBLIC _ZN7MPU6050C2Eh
        PUBLIC _ZN7MPU6050C2Ev


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// __code __interwork __softfp MPU6050::subobject MPU6050()
_ZN7MPU6050C2Ev:
        PUSH     {R4,LR}
        MOVS     R4,R0
        MOVS     R0,R4
        BL       _ZN7MPU6050C1Ev
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// __code __interwork __softfp MPU6050::subobject MPU6050(uint8_t)
_ZN7MPU6050C2Eh:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        BL       _ZN7MPU6050C1Eh
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU6050C1Ev:
        MOVS     R1,#+104
        STRB     R1,[R0, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU6050C1Eh:
        STRB     R1,[R0, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605010initializeEv:
        PUSH     {R4,LR}
        MOVS     R4,R0
        MOVS     R1,#+1
        MOVS     R0,R4
        BL       _ZN7MPU605014setClockSourceEh
        MOVS     R1,#+0
        MOVS     R0,R4
        BL       _ZN7MPU605021setFullScaleGyroRangeEh
        MOVS     R1,#+0
        MOVS     R0,R4
        BL       _ZN7MPU605022setFullScaleAccelRangeEh
        MOVS     R1,#+0
        MOVS     R0,R4
        BL       _ZN7MPU605015setSleepEnabledEb
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605014testConnectionEv:
        PUSH     {R4,LR}
        MOVS     R4,R0
        MOVS     R0,R4
        BL       _ZN7MPU605011getDeviceIDEv
        CMP      R0,#+52
        BNE.N    ??testConnection_0
        MOVS     R0,#+1
        B.N      ??testConnection_1
??testConnection_0:
        MOVS     R0,#+0
??testConnection_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605016getAuxVDDIOLevelEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+7
        MOVS     R1,#+1
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605016setAuxVDDIOLevelEh:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,#+7
        MOVS     R1,#+1
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8writeBitEhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU60507getRateEv:
        PUSH     {R4,LR}
        MOVS     R4,R0
        MOV      R3,#+1000
        ADDS     R2,R4,#+1
        MOVS     R1,#+25
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8readByteEhhPht
        LDRB     R0,[R4, #+1]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU60507setRateEh:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+25
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9writeByteEhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605020getExternalFrameSyncEv:
        PUSH     {R2-R4,LR}
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+4]
        ADDS     R0,R4,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,#+3
        MOVS     R2,#+5
        MOVS     R1,#+26
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8readBitsEhhhhPht
        LDRB     R0,[R4, #+1]
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605020setExternalFrameSyncEh:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STR      R5,[SP, #+0]
        MOVS     R3,#+3
        MOVS     R2,#+5
        MOVS     R1,#+26
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9writeBitsEhhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605011getDLPFModeEv:
        PUSH     {R2-R4,LR}
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+4]
        ADDS     R0,R4,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,#+3
        MOVS     R2,#+2
        MOVS     R1,#+26
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8readBitsEhhhhPht
        LDRB     R0,[R4, #+1]
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605011setDLPFModeEh:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STR      R5,[SP, #+0]
        MOVS     R3,#+3
        MOVS     R2,#+2
        MOVS     R1,#+26
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9writeBitsEhhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605021getFullScaleGyroRangeEv:
        PUSH     {R2-R4,LR}
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+4]
        ADDS     R0,R4,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,#+2
        MOVS     R2,#+4
        MOVS     R1,#+27
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8readBitsEhhhhPht
        LDRB     R0,[R4, #+1]
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605021setFullScaleGyroRangeEh:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STR      R5,[SP, #+0]
        MOVS     R3,#+2
        MOVS     R2,#+4
        MOVS     R1,#+27
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9writeBitsEhhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605017getAccelXSelfTestEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+7
        MOVS     R1,#+28
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getAccelXSelfTest_0
        MOVS     R0,#+1
        B.N      ??getAccelXSelfTest_1
??getAccelXSelfTest_0:
        MOVS     R0,#+0
??getAccelXSelfTest_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605017setAccelXSelfTestEb:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,#+7
        MOVS     R1,#+28
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8writeBitEhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605017getAccelYSelfTestEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+6
        MOVS     R1,#+28
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getAccelYSelfTest_0
        MOVS     R0,#+1
        B.N      ??getAccelYSelfTest_1
??getAccelYSelfTest_0:
        MOVS     R0,#+0
??getAccelYSelfTest_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605017setAccelYSelfTestEb:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,#+6
        MOVS     R1,#+28
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8writeBitEhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605017getAccelZSelfTestEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+5
        MOVS     R1,#+28
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getAccelZSelfTest_0
        MOVS     R0,#+1
        B.N      ??getAccelZSelfTest_1
??getAccelZSelfTest_0:
        MOVS     R0,#+0
??getAccelZSelfTest_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605017setAccelZSelfTestEb:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,#+5
        MOVS     R1,#+28
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8writeBitEhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605022getFullScaleAccelRangeEv:
        PUSH     {R2-R4,LR}
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+4]
        ADDS     R0,R4,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,#+2
        MOVS     R2,#+4
        MOVS     R1,#+28
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8readBitsEhhhhPht
        LDRB     R0,[R4, #+1]
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605022setFullScaleAccelRangeEh:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STR      R5,[SP, #+0]
        MOVS     R3,#+2
        MOVS     R2,#+4
        MOVS     R1,#+28
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9writeBitsEhhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605011getDHPFModeEv:
        PUSH     {R2-R4,LR}
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+4]
        ADDS     R0,R4,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,#+3
        MOVS     R2,#+2
        MOVS     R1,#+28
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8readBitsEhhhhPht
        LDRB     R0,[R4, #+1]
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605011setDHPFModeEh:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STR      R5,[SP, #+0]
        MOVS     R3,#+3
        MOVS     R2,#+2
        MOVS     R1,#+28
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9writeBitsEhhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605029getFreefallDetectionThresholdEv:
        PUSH     {R4,LR}
        MOVS     R4,R0
        MOV      R3,#+1000
        ADDS     R2,R4,#+1
        MOVS     R1,#+29
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8readByteEhhPht
        LDRB     R0,[R4, #+1]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605029setFreefallDetectionThresholdEh:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+29
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9writeByteEhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605028getFreefallDetectionDurationEv:
        PUSH     {R4,LR}
        MOVS     R4,R0
        MOV      R3,#+1000
        ADDS     R2,R4,#+1
        MOVS     R1,#+30
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8readByteEhhPht
        LDRB     R0,[R4, #+1]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605028setFreefallDetectionDurationEh:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+30
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9writeByteEhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605027getMotionDetectionThresholdEv:
        PUSH     {R4,LR}
        MOVS     R4,R0
        MOV      R3,#+1000
        ADDS     R2,R4,#+1
        MOVS     R1,#+31
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8readByteEhhPht
        LDRB     R0,[R4, #+1]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605027setMotionDetectionThresholdEh:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+31
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9writeByteEhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605026getMotionDetectionDurationEv:
        PUSH     {R4,LR}
        MOVS     R4,R0
        MOV      R3,#+1000
        ADDS     R2,R4,#+1
        MOVS     R1,#+32
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8readByteEhhPht
        LDRB     R0,[R4, #+1]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605026setMotionDetectionDurationEh:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+32
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9writeByteEhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605031getZeroMotionDetectionThresholdEv:
        PUSH     {R4,LR}
        MOVS     R4,R0
        MOV      R3,#+1000
        ADDS     R2,R4,#+1
        MOVS     R1,#+33
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8readByteEhhPht
        LDRB     R0,[R4, #+1]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605031setZeroMotionDetectionThresholdEh:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+33
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9writeByteEhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605030getZeroMotionDetectionDurationEv:
        PUSH     {R4,LR}
        MOVS     R4,R0
        MOV      R3,#+1000
        ADDS     R2,R4,#+1
        MOVS     R1,#+34
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8readByteEhhPht
        LDRB     R0,[R4, #+1]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605030setZeroMotionDetectionDurationEh:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+34
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9writeByteEhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605018getTempFIFOEnabledEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+7
        MOVS     R1,#+35
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getTempFIFOEnabled_0
        MOVS     R0,#+1
        B.N      ??getTempFIFOEnabled_1
??getTempFIFOEnabled_0:
        MOVS     R0,#+0
??getTempFIFOEnabled_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605018setTempFIFOEnabledEb:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,#+7
        MOVS     R1,#+35
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8writeBitEhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605019getXGyroFIFOEnabledEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+6
        MOVS     R1,#+35
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getXGyroFIFOEnabled_0
        MOVS     R0,#+1
        B.N      ??getXGyroFIFOEnabled_1
??getXGyroFIFOEnabled_0:
        MOVS     R0,#+0
??getXGyroFIFOEnabled_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605019setXGyroFIFOEnabledEb:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,#+6
        MOVS     R1,#+35
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8writeBitEhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605019getYGyroFIFOEnabledEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+5
        MOVS     R1,#+35
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getYGyroFIFOEnabled_0
        MOVS     R0,#+1
        B.N      ??getYGyroFIFOEnabled_1
??getYGyroFIFOEnabled_0:
        MOVS     R0,#+0
??getYGyroFIFOEnabled_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605019setYGyroFIFOEnabledEb:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,#+5
        MOVS     R1,#+35
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8writeBitEhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605019getZGyroFIFOEnabledEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+4
        MOVS     R1,#+35
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getZGyroFIFOEnabled_0
        MOVS     R0,#+1
        B.N      ??getZGyroFIFOEnabled_1
??getZGyroFIFOEnabled_0:
        MOVS     R0,#+0
??getZGyroFIFOEnabled_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605019setZGyroFIFOEnabledEb:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,#+4
        MOVS     R1,#+35
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8writeBitEhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605019getAccelFIFOEnabledEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+3
        MOVS     R1,#+35
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getAccelFIFOEnabled_0
        MOVS     R0,#+1
        B.N      ??getAccelFIFOEnabled_1
??getAccelFIFOEnabled_0:
        MOVS     R0,#+0
??getAccelFIFOEnabled_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605019setAccelFIFOEnabledEb:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,#+3
        MOVS     R1,#+35
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8writeBitEhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605020getSlave2FIFOEnabledEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+2
        MOVS     R1,#+35
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getSlave2FIFOEnabled_0
        MOVS     R0,#+1
        B.N      ??getSlave2FIFOEnabled_1
??getSlave2FIFOEnabled_0:
        MOVS     R0,#+0
??getSlave2FIFOEnabled_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605020setSlave2FIFOEnabledEb:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,#+2
        MOVS     R1,#+35
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8writeBitEhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605020getSlave1FIFOEnabledEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+1
        MOVS     R1,#+35
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getSlave1FIFOEnabled_0
        MOVS     R0,#+1
        B.N      ??getSlave1FIFOEnabled_1
??getSlave1FIFOEnabled_0:
        MOVS     R0,#+0
??getSlave1FIFOEnabled_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605020setSlave1FIFOEnabledEb:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,#+1
        MOVS     R1,#+35
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8writeBitEhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605020getSlave0FIFOEnabledEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+0
        MOVS     R1,#+35
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getSlave0FIFOEnabled_0
        MOVS     R0,#+1
        B.N      ??getSlave0FIFOEnabled_1
??getSlave0FIFOEnabled_0:
        MOVS     R0,#+0
??getSlave0FIFOEnabled_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605020setSlave0FIFOEnabledEb:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,#+0
        MOVS     R1,#+35
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8writeBitEhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605021getMultiMasterEnabledEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+7
        MOVS     R1,#+36
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getMultiMasterEnabled_0
        MOVS     R0,#+1
        B.N      ??getMultiMasterEnabled_1
??getMultiMasterEnabled_0:
        MOVS     R0,#+0
??getMultiMasterEnabled_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605021setMultiMasterEnabledEb:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,#+7
        MOVS     R1,#+36
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8writeBitEhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605031getWaitForExternalSensorEnabledEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+6
        MOVS     R1,#+36
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getWaitForExternalSensorEnabled_0
        MOVS     R0,#+1
        B.N      ??getWaitForExternalSensorEnabled_1
??getWaitForExternalSensorEnabled_0:
        MOVS     R0,#+0
??getWaitForExternalSensorEnabled_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605031setWaitForExternalSensorEnabledEb:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,#+6
        MOVS     R1,#+36
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8writeBitEhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605020getSlave3FIFOEnabledEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+5
        MOVS     R1,#+36
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getSlave3FIFOEnabled_0
        MOVS     R0,#+1
        B.N      ??getSlave3FIFOEnabled_1
??getSlave3FIFOEnabled_0:
        MOVS     R0,#+0
??getSlave3FIFOEnabled_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605020setSlave3FIFOEnabledEb:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,#+5
        MOVS     R1,#+36
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8writeBitEhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605034getSlaveReadWriteTransitionEnabledEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+4
        MOVS     R1,#+36
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getSlaveReadWriteTransitionEnabled_0
        MOVS     R0,#+1
        B.N      ??getSlaveReadWriteTransitionEnabled_1
??getSlaveReadWriteTransitionEnabled_0:
        MOVS     R0,#+0
??getSlaveReadWriteTransitionEnabled_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605034setSlaveReadWriteTransitionEnabledEb:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,#+4
        MOVS     R1,#+36
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8writeBitEhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605019getMasterClockSpeedEv:
        PUSH     {R2-R4,LR}
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+4]
        ADDS     R0,R4,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,#+4
        MOVS     R2,#+3
        MOVS     R1,#+36
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8readBitsEhhhhPht
        LDRB     R0,[R4, #+1]
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605019setMasterClockSpeedEh:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STR      R5,[SP, #+0]
        MOVS     R3,#+4
        MOVS     R2,#+3
        MOVS     R1,#+36
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9writeBitsEhhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605015getSlaveAddressEh:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+4
        BCC.N    ??getSlaveAddress_0
        MOVS     R0,#+0
        B.N      ??getSlaveAddress_1
??getSlaveAddress_0:
        MOV      R3,#+1000
        ADDS     R2,R4,#+1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R0,#+3
        MUL      R0,R0,R5
        ADDS     R1,R0,#+37
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8readByteEhhPht
        LDRB     R0,[R4, #+1]
??getSlaveAddress_1:
        POP      {R1,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605015setSlaveAddressEhh:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+4
        BCS.N    ??setSlaveAddress_0
??setSlaveAddress_1:
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R0,#+3
        MUL      R0,R0,R5
        ADDS     R1,R0,#+37
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9writeByteEhhh
??setSlaveAddress_0:
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605016getSlaveRegisterEh:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+4
        BCC.N    ??getSlaveRegister_0
        MOVS     R0,#+0
        B.N      ??getSlaveRegister_1
??getSlaveRegister_0:
        MOV      R3,#+1000
        ADDS     R2,R4,#+1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R0,#+3
        MUL      R0,R0,R5
        ADDS     R1,R0,#+38
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8readByteEhhPht
        LDRB     R0,[R4, #+1]
??getSlaveRegister_1:
        POP      {R1,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605016setSlaveRegisterEhh:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+4
        BCS.N    ??setSlaveRegister_0
??setSlaveRegister_1:
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R0,#+3
        MUL      R0,R0,R5
        ADDS     R1,R0,#+38
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9writeByteEhhh
??setSlaveRegister_0:
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605015getSlaveEnabledEh:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+4
        BCC.N    ??getSlaveEnabled_0
        MOVS     R0,#+0
        B.N      ??getSlaveEnabled_1
??getSlaveEnabled_0:
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+7
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R0,#+3
        MUL      R0,R0,R5
        ADDS     R1,R0,#+39
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getSlaveEnabled_2
        MOVS     R0,#+1
        B.N      ??getSlaveEnabled_3
??getSlaveEnabled_2:
        MOVS     R0,#+0
??getSlaveEnabled_3:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??getSlaveEnabled_1:
        POP      {R1,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605015setSlaveEnabledEhb:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+4
        BCS.N    ??setSlaveEnabled_0
??setSlaveEnabled_1:
        MOVS     R3,R6
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,#+7
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R0,#+3
        MUL      R0,R0,R5
        ADDS     R1,R0,#+39
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8writeBitEhhhh
??setSlaveEnabled_0:
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605020getSlaveWordByteSwapEh:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+4
        BCC.N    ??getSlaveWordByteSwap_0
        MOVS     R0,#+0
        B.N      ??getSlaveWordByteSwap_1
??getSlaveWordByteSwap_0:
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+6
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R0,#+3
        MUL      R0,R0,R5
        ADDS     R1,R0,#+39
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getSlaveWordByteSwap_2
        MOVS     R0,#+1
        B.N      ??getSlaveWordByteSwap_3
??getSlaveWordByteSwap_2:
        MOVS     R0,#+0
??getSlaveWordByteSwap_3:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??getSlaveWordByteSwap_1:
        POP      {R1,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605020setSlaveWordByteSwapEhb:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+4
        BCS.N    ??setSlaveWordByteSwap_0
??setSlaveWordByteSwap_1:
        MOVS     R3,R6
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,#+6
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R0,#+3
        MUL      R0,R0,R5
        ADDS     R1,R0,#+39
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8writeBitEhhhh
??setSlaveWordByteSwap_0:
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605017getSlaveWriteModeEh:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+4
        BCC.N    ??getSlaveWriteMode_0
        MOVS     R0,#+0
        B.N      ??getSlaveWriteMode_1
??getSlaveWriteMode_0:
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+5
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R0,#+3
        MUL      R0,R0,R5
        ADDS     R1,R0,#+39
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getSlaveWriteMode_2
        MOVS     R0,#+1
        B.N      ??getSlaveWriteMode_3
??getSlaveWriteMode_2:
        MOVS     R0,#+0
??getSlaveWriteMode_3:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??getSlaveWriteMode_1:
        POP      {R1,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605017setSlaveWriteModeEhb:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+4
        BCS.N    ??setSlaveWriteMode_0
??setSlaveWriteMode_1:
        MOVS     R3,R6
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,#+5
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R0,#+3
        MUL      R0,R0,R5
        ADDS     R1,R0,#+39
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8writeBitEhhhh
??setSlaveWriteMode_0:
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605023getSlaveWordGroupOffsetEh:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+4
        BCC.N    ??getSlaveWordGroupOffset_0
        MOVS     R0,#+0
        B.N      ??getSlaveWordGroupOffset_1
??getSlaveWordGroupOffset_0:
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+4
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R0,#+3
        MUL      R0,R0,R5
        ADDS     R1,R0,#+39
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getSlaveWordGroupOffset_2
        MOVS     R0,#+1
        B.N      ??getSlaveWordGroupOffset_3
??getSlaveWordGroupOffset_2:
        MOVS     R0,#+0
??getSlaveWordGroupOffset_3:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??getSlaveWordGroupOffset_1:
        POP      {R1,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605023setSlaveWordGroupOffsetEhb:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+4
        BCS.N    ??setSlaveWordGroupOffset_0
??setSlaveWordGroupOffset_1:
        MOVS     R3,R6
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,#+4
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R0,#+3
        MUL      R0,R0,R5
        ADDS     R1,R0,#+39
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8writeBitEhhhh
??setSlaveWordGroupOffset_0:
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605018getSlaveDataLengthEh:
        PUSH     {R4,R5,LR}
        SUB      SP,SP,#+12
        MOVS     R4,R0
        MOVS     R5,R1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+4
        BCC.N    ??getSlaveDataLength_0
        MOVS     R0,#+0
        B.N      ??getSlaveDataLength_1
??getSlaveDataLength_0:
        MOV      R0,#+1000
        STR      R0,[SP, #+4]
        ADDS     R0,R4,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,#+4
        MOVS     R2,#+3
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R0,#+3
        MUL      R0,R0,R5
        ADDS     R1,R0,#+39
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8readBitsEhhhhPht
        LDRB     R0,[R4, #+1]
??getSlaveDataLength_1:
        POP      {R1-R5,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605018setSlaveDataLengthEhh:
        PUSH     {R4-R6,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+4
        BCS.N    ??setSlaveDataLength_0
??setSlaveDataLength_1:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        STR      R6,[SP, #+0]
        MOVS     R3,#+4
        MOVS     R2,#+3
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R0,#+3
        MUL      R0,R0,R5
        ADDS     R1,R0,#+39
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9writeBitsEhhhhh
??setSlaveDataLength_0:
        POP      {R0,R1,R4-R6,PC}  ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605016getSlave4AddressEv:
        PUSH     {R4,LR}
        MOVS     R4,R0
        MOV      R3,#+1000
        ADDS     R2,R4,#+1
        MOVS     R1,#+49
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8readByteEhhPht
        LDRB     R0,[R4, #+1]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605016setSlave4AddressEh:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+49
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9writeByteEhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605017getSlave4RegisterEv:
        PUSH     {R4,LR}
        MOVS     R4,R0
        MOV      R3,#+1000
        ADDS     R2,R4,#+1
        MOVS     R1,#+50
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8readByteEhhPht
        LDRB     R0,[R4, #+1]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605017setSlave4RegisterEh:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+50
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9writeByteEhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605019setSlave4OutputByteEh:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+51
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9writeByteEhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605016getSlave4EnabledEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+7
        MOVS     R1,#+52
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getSlave4Enabled_0
        MOVS     R0,#+1
        B.N      ??getSlave4Enabled_1
??getSlave4Enabled_0:
        MOVS     R0,#+0
??getSlave4Enabled_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605016setSlave4EnabledEb:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,#+7
        MOVS     R1,#+52
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8writeBitEhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605025getSlave4InterruptEnabledEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+6
        MOVS     R1,#+52
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getSlave4InterruptEnabled_0
        MOVS     R0,#+1
        B.N      ??getSlave4InterruptEnabled_1
??getSlave4InterruptEnabled_0:
        MOVS     R0,#+0
??getSlave4InterruptEnabled_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605025setSlave4InterruptEnabledEb:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,#+6
        MOVS     R1,#+52
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8writeBitEhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605018getSlave4WriteModeEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+5
        MOVS     R1,#+52
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getSlave4WriteMode_0
        MOVS     R0,#+1
        B.N      ??getSlave4WriteMode_1
??getSlave4WriteMode_0:
        MOVS     R0,#+0
??getSlave4WriteMode_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605018setSlave4WriteModeEb:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,#+5
        MOVS     R1,#+52
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8writeBitEhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605020getSlave4MasterDelayEv:
        PUSH     {R2-R4,LR}
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+4]
        ADDS     R0,R4,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,#+5
        MOVS     R2,#+4
        MOVS     R1,#+52
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8readBitsEhhhhPht
        LDRB     R0,[R4, #+1]
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605020setSlave4MasterDelayEh:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STR      R5,[SP, #+0]
        MOVS     R3,#+5
        MOVS     R2,#+4
        MOVS     R1,#+52
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9writeBitsEhhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605018getSlate4InputByteEv:
        PUSH     {R4,LR}
        MOVS     R4,R0
        MOV      R3,#+1000
        ADDS     R2,R4,#+1
        MOVS     R1,#+53
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8readByteEhhPht
        LDRB     R0,[R4, #+1]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605020getPassthroughStatusEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+7
        MOVS     R1,#+54
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getPassthroughStatus_0
        MOVS     R0,#+1
        B.N      ??getPassthroughStatus_1
??getPassthroughStatus_0:
        MOVS     R0,#+0
??getPassthroughStatus_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605015getSlave4IsDoneEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+6
        MOVS     R1,#+54
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getSlave4IsDone_0
        MOVS     R0,#+1
        B.N      ??getSlave4IsDone_1
??getSlave4IsDone_0:
        MOVS     R0,#+0
??getSlave4IsDone_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605018getLostArbitrationEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+5
        MOVS     R1,#+54
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getLostArbitration_0
        MOVS     R0,#+1
        B.N      ??getLostArbitration_1
??getLostArbitration_0:
        MOVS     R0,#+0
??getLostArbitration_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605013getSlave4NackEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+4
        MOVS     R1,#+54
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getSlave4Nack_0
        MOVS     R0,#+1
        B.N      ??getSlave4Nack_1
??getSlave4Nack_0:
        MOVS     R0,#+0
??getSlave4Nack_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605013getSlave3NackEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+3
        MOVS     R1,#+54
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getSlave3Nack_0
        MOVS     R0,#+1
        B.N      ??getSlave3Nack_1
??getSlave3Nack_0:
        MOVS     R0,#+0
??getSlave3Nack_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605013getSlave2NackEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+2
        MOVS     R1,#+54
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getSlave2Nack_0
        MOVS     R0,#+1
        B.N      ??getSlave2Nack_1
??getSlave2Nack_0:
        MOVS     R0,#+0
??getSlave2Nack_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605013getSlave1NackEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+1
        MOVS     R1,#+54
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getSlave1Nack_0
        MOVS     R0,#+1
        B.N      ??getSlave1Nack_1
??getSlave1Nack_0:
        MOVS     R0,#+0
??getSlave1Nack_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605013getSlave0NackEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+0
        MOVS     R1,#+54
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getSlave0Nack_0
        MOVS     R0,#+1
        B.N      ??getSlave0Nack_1
??getSlave0Nack_0:
        MOVS     R0,#+0
??getSlave0Nack_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605016getInterruptModeEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+7
        MOVS     R1,#+55
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getInterruptMode_0
        MOVS     R0,#+1
        B.N      ??getInterruptMode_1
??getInterruptMode_0:
        MOVS     R0,#+0
??getInterruptMode_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605016setInterruptModeEb:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,#+7
        MOVS     R1,#+55
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8writeBitEhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605017getInterruptDriveEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+6
        MOVS     R1,#+55
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getInterruptDrive_0
        MOVS     R0,#+1
        B.N      ??getInterruptDrive_1
??getInterruptDrive_0:
        MOVS     R0,#+0
??getInterruptDrive_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605017setInterruptDriveEb:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,#+6
        MOVS     R1,#+55
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8writeBitEhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605017getInterruptLatchEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+5
        MOVS     R1,#+55
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getInterruptLatch_0
        MOVS     R0,#+1
        B.N      ??getInterruptLatch_1
??getInterruptLatch_0:
        MOVS     R0,#+0
??getInterruptLatch_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605017setInterruptLatchEb:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,#+5
        MOVS     R1,#+55
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8writeBitEhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605022getInterruptLatchClearEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+4
        MOVS     R1,#+55
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getInterruptLatchClear_0
        MOVS     R0,#+1
        B.N      ??getInterruptLatchClear_1
??getInterruptLatchClear_0:
        MOVS     R0,#+0
??getInterruptLatchClear_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605022setInterruptLatchClearEb:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,#+4
        MOVS     R1,#+55
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8writeBitEhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605022getFSyncInterruptLevelEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+3
        MOVS     R1,#+55
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getFSyncInterruptLevel_0
        MOVS     R0,#+1
        B.N      ??getFSyncInterruptLevel_1
??getFSyncInterruptLevel_0:
        MOVS     R0,#+0
??getFSyncInterruptLevel_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605022setFSyncInterruptLevelEb:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,#+3
        MOVS     R1,#+55
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8writeBitEhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605024getFSyncInterruptEnabledEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+2
        MOVS     R1,#+55
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getFSyncInterruptEnabled_0
        MOVS     R0,#+1
        B.N      ??getFSyncInterruptEnabled_1
??getFSyncInterruptEnabled_0:
        MOVS     R0,#+0
??getFSyncInterruptEnabled_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605024setFSyncInterruptEnabledEb:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,#+2
        MOVS     R1,#+55
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8writeBitEhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605019getI2CBypassEnabledEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+1
        MOVS     R1,#+55
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getI2CBypassEnabled_0
        MOVS     R0,#+1
        B.N      ??getI2CBypassEnabled_1
??getI2CBypassEnabled_0:
        MOVS     R0,#+0
??getI2CBypassEnabled_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605019setI2CBypassEnabledEb:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,#+1
        MOVS     R1,#+55
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8writeBitEhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605021getClockOutputEnabledEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+0
        MOVS     R1,#+55
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getClockOutputEnabled_0
        MOVS     R0,#+1
        B.N      ??getClockOutputEnabled_1
??getClockOutputEnabled_0:
        MOVS     R0,#+0
??getClockOutputEnabled_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605021setClockOutputEnabledEb:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,#+0
        MOVS     R1,#+55
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8writeBitEhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605013getIntEnabledEv:
        PUSH     {R4,LR}
        MOVS     R4,R0
        MOV      R3,#+1000
        ADDS     R2,R4,#+1
        MOVS     R1,#+56
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8readByteEhhPht
        LDRB     R0,[R4, #+1]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605013setIntEnabledEh:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+56
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9writeByteEhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605021getIntFreefallEnabledEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+7
        MOVS     R1,#+56
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getIntFreefallEnabled_0
        MOVS     R0,#+1
        B.N      ??getIntFreefallEnabled_1
??getIntFreefallEnabled_0:
        MOVS     R0,#+0
??getIntFreefallEnabled_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605021setIntFreefallEnabledEb:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,#+7
        MOVS     R1,#+56
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8writeBitEhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605019getIntMotionEnabledEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+6
        MOVS     R1,#+56
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getIntMotionEnabled_0
        MOVS     R0,#+1
        B.N      ??getIntMotionEnabled_1
??getIntMotionEnabled_0:
        MOVS     R0,#+0
??getIntMotionEnabled_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605019setIntMotionEnabledEb:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,#+6
        MOVS     R1,#+56
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8writeBitEhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605023getIntZeroMotionEnabledEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+5
        MOVS     R1,#+56
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getIntZeroMotionEnabled_0
        MOVS     R0,#+1
        B.N      ??getIntZeroMotionEnabled_1
??getIntZeroMotionEnabled_0:
        MOVS     R0,#+0
??getIntZeroMotionEnabled_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605023setIntZeroMotionEnabledEb:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,#+5
        MOVS     R1,#+56
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8writeBitEhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605031getIntFIFOBufferOverflowEnabledEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+4
        MOVS     R1,#+56
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getIntFIFOBufferOverflowEnabled_0
        MOVS     R0,#+1
        B.N      ??getIntFIFOBufferOverflowEnabled_1
??getIntFIFOBufferOverflowEnabled_0:
        MOVS     R0,#+0
??getIntFIFOBufferOverflowEnabled_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605031setIntFIFOBufferOverflowEnabledEb:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,#+4
        MOVS     R1,#+56
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8writeBitEhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605022getIntI2CMasterEnabledEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+3
        MOVS     R1,#+56
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getIntI2CMasterEnabled_0
        MOVS     R0,#+1
        B.N      ??getIntI2CMasterEnabled_1
??getIntI2CMasterEnabled_0:
        MOVS     R0,#+0
??getIntI2CMasterEnabled_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605022setIntI2CMasterEnabledEb:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,#+3
        MOVS     R1,#+56
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8writeBitEhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605022getIntDataReadyEnabledEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+0
        MOVS     R1,#+56
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getIntDataReadyEnabled_0
        MOVS     R0,#+1
        B.N      ??getIntDataReadyEnabled_1
??getIntDataReadyEnabled_0:
        MOVS     R0,#+0
??getIntDataReadyEnabled_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605022setIntDataReadyEnabledEb:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,#+0
        MOVS     R1,#+56
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8writeBitEhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605012getIntStatusEv:
        PUSH     {R4,LR}
        MOVS     R4,R0
        MOV      R3,#+1000
        ADDS     R2,R4,#+1
        MOVS     R1,#+58
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8readByteEhhPht
        LDRB     R0,[R4, #+1]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605020getIntFreefallStatusEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+7
        MOVS     R1,#+58
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getIntFreefallStatus_0
        MOVS     R0,#+1
        B.N      ??getIntFreefallStatus_1
??getIntFreefallStatus_0:
        MOVS     R0,#+0
??getIntFreefallStatus_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605018getIntMotionStatusEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+6
        MOVS     R1,#+58
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getIntMotionStatus_0
        MOVS     R0,#+1
        B.N      ??getIntMotionStatus_1
??getIntMotionStatus_0:
        MOVS     R0,#+0
??getIntMotionStatus_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605022getIntZeroMotionStatusEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+5
        MOVS     R1,#+58
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getIntZeroMotionStatus_0
        MOVS     R0,#+1
        B.N      ??getIntZeroMotionStatus_1
??getIntZeroMotionStatus_0:
        MOVS     R0,#+0
??getIntZeroMotionStatus_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605030getIntFIFOBufferOverflowStatusEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+4
        MOVS     R1,#+58
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getIntFIFOBufferOverflowStatus_0
        MOVS     R0,#+1
        B.N      ??getIntFIFOBufferOverflowStatus_1
??getIntFIFOBufferOverflowStatus_0:
        MOVS     R0,#+0
??getIntFIFOBufferOverflowStatus_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605021getIntI2CMasterStatusEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+3
        MOVS     R1,#+58
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getIntI2CMasterStatus_0
        MOVS     R0,#+1
        B.N      ??getIntI2CMasterStatus_1
??getIntI2CMasterStatus_0:
        MOVS     R0,#+0
??getIntI2CMasterStatus_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605021getIntDataReadyStatusEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+0
        MOVS     R1,#+58
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getIntDataReadyStatus_0
        MOVS     R0,#+1
        B.N      ??getIntDataReadyStatus_1
??getIntDataReadyStatus_0:
        MOVS     R0,#+0
??getIntDataReadyStatus_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605010getMotion9EPsS0_S0_S0_S0_S0_S0_S0_S0_:
        PUSH     {R1,R2,R4-R11,LR}
        SUB      SP,SP,#+12
        MOVS     R4,R0
        MOVS     R5,R3
        LDR      R6,[SP, #+56]
        LDR      R7,[SP, #+60]
        LDR      R8,[SP, #+64]
        LDR      R9,[SP, #+68]
        LDR      R10,[SP, #+72]
        LDR      R11,[SP, #+76]
        STR      R8,[SP, #+8]
        STR      R7,[SP, #+4]
        STR      R6,[SP, #+0]
        MOVS     R3,R5
        LDR      R2,[SP, #+16]
        LDR      R1,[SP, #+12]
        MOVS     R0,R4
        BL       _ZN7MPU605010getMotion6EPsS0_S0_S0_S0_S0_
        MOVS     R2,#+2
        MOVS     R1,#+55
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9writeByteEhhh
        MOVS     R0,#+10
        BL       Delay
        MOVS     R2,#+1
        MOVS     R1,#+10
        MOVS     R0,#+12
        BL       _ZN6I2Cdev9writeByteEhhh
        MOVS     R0,#+10
        BL       Delay
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+6
        MOVS     R1,#+3
        MOVS     R0,#+12
        BL       _ZN6I2Cdev9readBytesEhhhPht
        LDRB     R0,[R4, #+2]
        LDRB     R1,[R4, #+1]
        ORRS     R0,R1,R0, LSL #+8
        STRH     R0,[R9, #+0]
        LDRB     R0,[R4, #+4]
        LDRB     R1,[R4, #+3]
        ORRS     R0,R1,R0, LSL #+8
        STRH     R0,[R10, #+0]
        LDRB     R0,[R4, #+6]
        LDRB     R1,[R4, #+5]
        ORRS     R0,R1,R0, LSL #+8
        STRH     R0,[R11, #+0]
        ADD      SP,SP,#+20
        POP      {R4-R11,PC}      ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605010getMotion6EPsS0_S0_S0_S0_S0_:
        PUSH     {R4-R10,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        LDR      R8,[SP, #+40]
        LDR      R9,[SP, #+44]
        LDR      R10,[SP, #+48]
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+14
        MOVS     R1,#+59
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9readBytesEhhhPht
        LDRB     R0,[R4, #+1]
        LDRB     R1,[R4, #+2]
        ORRS     R0,R1,R0, LSL #+8
        STRH     R0,[R5, #+0]
        LDRB     R0,[R4, #+3]
        LDRB     R1,[R4, #+4]
        ORRS     R0,R1,R0, LSL #+8
        STRH     R0,[R6, #+0]
        LDRB     R0,[R4, #+5]
        LDRB     R1,[R4, #+6]
        ORRS     R0,R1,R0, LSL #+8
        STRH     R0,[R7, #+0]
        LDRB     R0,[R4, #+9]
        LDRB     R1,[R4, #+10]
        ORRS     R0,R1,R0, LSL #+8
        STRH     R0,[R8, #+0]
        LDRB     R0,[R4, #+11]
        LDRB     R1,[R4, #+12]
        ORRS     R0,R1,R0, LSL #+8
        STRH     R0,[R9, #+0]
        LDRB     R0,[R4, #+13]
        LDRB     R1,[R4, #+14]
        ORRS     R0,R1,R0, LSL #+8
        STRH     R0,[R10, #+0]
        POP      {R0,R1,R4-R10,PC}  ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605015getAccelerationEPsS0_S0_:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+6
        MOVS     R1,#+59
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9readBytesEhhhPht
        LDRB     R0,[R4, #+1]
        LDRB     R1,[R4, #+2]
        ORRS     R0,R1,R0, LSL #+8
        STRH     R0,[R5, #+0]
        LDRB     R0,[R4, #+3]
        LDRB     R1,[R4, #+4]
        ORRS     R0,R1,R0, LSL #+8
        STRH     R0,[R6, #+0]
        LDRB     R0,[R4, #+5]
        LDRB     R1,[R4, #+6]
        ORRS     R0,R1,R0, LSL #+8
        STRH     R0,[R7, #+0]
        POP      {R0,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605016getAccelerationXEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+2
        MOVS     R1,#+59
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9readBytesEhhhPht
        LDRB     R0,[R4, #+1]
        LDRB     R1,[R4, #+2]
        ORRS     R0,R1,R0, LSL #+8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605016getAccelerationYEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+2
        MOVS     R1,#+61
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9readBytesEhhhPht
        LDRB     R0,[R4, #+1]
        LDRB     R1,[R4, #+2]
        ORRS     R0,R1,R0, LSL #+8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605016getAccelerationZEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+2
        MOVS     R1,#+63
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9readBytesEhhhPht
        LDRB     R0,[R4, #+1]
        LDRB     R1,[R4, #+2]
        ORRS     R0,R1,R0, LSL #+8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605014getTemperatureEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+2
        MOVS     R1,#+65
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9readBytesEhhhPht
        LDRB     R0,[R4, #+1]
        LDRB     R1,[R4, #+2]
        ORRS     R0,R1,R0, LSL #+8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605011getRotationEPsS0_S0_:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+6
        MOVS     R1,#+67
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9readBytesEhhhPht
        LDRB     R0,[R4, #+1]
        LDRB     R1,[R4, #+2]
        ORRS     R0,R1,R0, LSL #+8
        STRH     R0,[R5, #+0]
        LDRB     R0,[R4, #+3]
        LDRB     R1,[R4, #+4]
        ORRS     R0,R1,R0, LSL #+8
        STRH     R0,[R6, #+0]
        LDRB     R0,[R4, #+5]
        LDRB     R1,[R4, #+6]
        ORRS     R0,R1,R0, LSL #+8
        STRH     R0,[R7, #+0]
        POP      {R0,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605012getRotationXEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+2
        MOVS     R1,#+67
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9readBytesEhhhPht
        LDRB     R0,[R4, #+1]
        LDRB     R1,[R4, #+2]
        ORRS     R0,R1,R0, LSL #+8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605012getRotationYEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+2
        MOVS     R1,#+69
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9readBytesEhhhPht
        LDRB     R0,[R4, #+1]
        LDRB     R1,[R4, #+2]
        ORRS     R0,R1,R0, LSL #+8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605012getRotationZEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+2
        MOVS     R1,#+71
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9readBytesEhhhPht
        LDRB     R0,[R4, #+1]
        LDRB     R1,[R4, #+2]
        ORRS     R0,R1,R0, LSL #+8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605021getExternalSensorByteEi:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R3,#+1000
        ADDS     R2,R4,#+1
        ADDS     R1,R5,#+73
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8readByteEhhPht
        LDRB     R0,[R4, #+1]
        POP      {R1,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605021getExternalSensorWordEi:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+2
        ADDS     R1,R5,#+73
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9readBytesEhhhPht
        LDRB     R0,[R4, #+1]
        LDRB     R1,[R4, #+2]
        ORRS     R0,R1,R0, LSL #+8
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        POP      {R1,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605022getExternalSensorDWordEi:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+4
        ADDS     R1,R5,#+73
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9readBytesEhhhPht
        LDRB     R0,[R4, #+1]
        LDRB     R1,[R4, #+2]
        LSLS     R1,R1,#+16
        ORRS     R0,R1,R0, LSL #+24
        LDRB     R1,[R4, #+3]
        ORRS     R0,R0,R1, LSL #+8
        LDRB     R1,[R4, #+4]
        ORRS     R0,R1,R0
        POP      {R1,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605021getXNegMotionDetectedEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+7
        MOVS     R1,#+97
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getXNegMotionDetected_0
        MOVS     R0,#+1
        B.N      ??getXNegMotionDetected_1
??getXNegMotionDetected_0:
        MOVS     R0,#+0
??getXNegMotionDetected_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605021getXPosMotionDetectedEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+6
        MOVS     R1,#+97
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getXPosMotionDetected_0
        MOVS     R0,#+1
        B.N      ??getXPosMotionDetected_1
??getXPosMotionDetected_0:
        MOVS     R0,#+0
??getXPosMotionDetected_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605021getYNegMotionDetectedEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+5
        MOVS     R1,#+97
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getYNegMotionDetected_0
        MOVS     R0,#+1
        B.N      ??getYNegMotionDetected_1
??getYNegMotionDetected_0:
        MOVS     R0,#+0
??getYNegMotionDetected_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605021getYPosMotionDetectedEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+4
        MOVS     R1,#+97
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getYPosMotionDetected_0
        MOVS     R0,#+1
        B.N      ??getYPosMotionDetected_1
??getYPosMotionDetected_0:
        MOVS     R0,#+0
??getYPosMotionDetected_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605021getZNegMotionDetectedEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+3
        MOVS     R1,#+97
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getZNegMotionDetected_0
        MOVS     R0,#+1
        B.N      ??getZNegMotionDetected_1
??getZNegMotionDetected_0:
        MOVS     R0,#+0
??getZNegMotionDetected_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605021getZPosMotionDetectedEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+2
        MOVS     R1,#+97
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getZPosMotionDetected_0
        MOVS     R0,#+1
        B.N      ??getZPosMotionDetected_1
??getZPosMotionDetected_0:
        MOVS     R0,#+0
??getZPosMotionDetected_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605021getZeroMotionDetectedEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+0
        MOVS     R1,#+97
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getZeroMotionDetected_0
        MOVS     R0,#+1
        B.N      ??getZeroMotionDetected_1
??getZeroMotionDetected_0:
        MOVS     R0,#+0
??getZeroMotionDetected_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605018setSlaveOutputByteEhh:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+4
        BCS.N    ??setSlaveOutputByte_0
??setSlaveOutputByte_1:
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADDS     R1,R5,#+99
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9writeByteEhhh
??setSlaveOutputByte_0:
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605029getExternalShadowDelayEnabledEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+7
        MOVS     R1,#+103
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getExternalShadowDelayEnabled_0
        MOVS     R0,#+1
        B.N      ??getExternalShadowDelayEnabled_1
??getExternalShadowDelayEnabled_0:
        MOVS     R0,#+0
??getExternalShadowDelayEnabled_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605029setExternalShadowDelayEnabledEb:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,#+7
        MOVS     R1,#+103
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8writeBitEhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605020getSlaveDelayEnabledEh:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+5
        BCC.N    ??getSlaveDelayEnabled_0
        MOVS     R0,#+0
        B.N      ??getSlaveDelayEnabled_1
??getSlaveDelayEnabled_0:
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+103
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getSlaveDelayEnabled_2
        MOVS     R0,#+1
        B.N      ??getSlaveDelayEnabled_3
??getSlaveDelayEnabled_2:
        MOVS     R0,#+0
??getSlaveDelayEnabled_3:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??getSlaveDelayEnabled_1:
        POP      {R1,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605020setSlaveDelayEnabledEhb:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R3,R6
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+103
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8writeBitEhhhh
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605018resetGyroscopePathEv:
        PUSH     {R4,LR}
        MOVS     R4,R0
        MOVS     R3,#+1
        MOVS     R2,#+2
        MOVS     R1,#+104
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8writeBitEhhhh
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605022resetAccelerometerPathEv:
        PUSH     {R4,LR}
        MOVS     R4,R0
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+104
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8writeBitEhhhh
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605020resetTemperaturePathEv:
        PUSH     {R4,LR}
        MOVS     R4,R0
        MOVS     R3,#+1
        MOVS     R2,#+0
        MOVS     R1,#+104
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8writeBitEhhhh
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605028getAccelerometerPowerOnDelayEv:
        PUSH     {R2-R4,LR}
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+4]
        ADDS     R0,R4,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,#+2
        MOVS     R2,#+5
        MOVS     R1,#+105
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8readBitsEhhhhPht
        LDRB     R0,[R4, #+1]
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605028setAccelerometerPowerOnDelayEh:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STR      R5,[SP, #+0]
        MOVS     R3,#+2
        MOVS     R2,#+5
        MOVS     R1,#+105
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9writeBitsEhhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605036getFreefallDetectionCounterDecrementEv:
        PUSH     {R2-R4,LR}
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+4]
        ADDS     R0,R4,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,#+2
        MOVS     R2,#+3
        MOVS     R1,#+105
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8readBitsEhhhhPht
        LDRB     R0,[R4, #+1]
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605036setFreefallDetectionCounterDecrementEh:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STR      R5,[SP, #+0]
        MOVS     R3,#+2
        MOVS     R2,#+3
        MOVS     R1,#+105
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9writeBitsEhhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605034getMotionDetectionCounterDecrementEv:
        PUSH     {R2-R4,LR}
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+4]
        ADDS     R0,R4,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,#+2
        MOVS     R2,#+1
        MOVS     R1,#+105
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8readBitsEhhhhPht
        LDRB     R0,[R4, #+1]
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605034setMotionDetectionCounterDecrementEh:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STR      R5,[SP, #+0]
        MOVS     R3,#+2
        MOVS     R2,#+1
        MOVS     R1,#+105
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9writeBitsEhhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605014getFIFOEnabledEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+6
        MOVS     R1,#+106
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getFIFOEnabled_0
        MOVS     R0,#+1
        B.N      ??getFIFOEnabled_1
??getFIFOEnabled_0:
        MOVS     R0,#+0
??getFIFOEnabled_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605014setFIFOEnabledEb:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,#+6
        MOVS     R1,#+106
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8writeBitEhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605023getI2CMasterModeEnabledEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+5
        MOVS     R1,#+106
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getI2CMasterModeEnabled_0
        MOVS     R0,#+1
        B.N      ??getI2CMasterModeEnabled_1
??getI2CMasterModeEnabled_0:
        MOVS     R0,#+0
??getI2CMasterModeEnabled_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605023setI2CMasterModeEnabledEb:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,#+5
        MOVS     R1,#+106
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8writeBitEhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605016switchSPIEnabledEb:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,#+4
        MOVS     R1,#+106
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8writeBitEhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU60509resetFIFOEv:
        PUSH     {R4,LR}
        MOVS     R4,R0
        MOVS     R3,#+1
        MOVS     R2,#+2
        MOVS     R1,#+106
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8writeBitEhhhh
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605014resetI2CMasterEv:
        PUSH     {R4,LR}
        MOVS     R4,R0
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+106
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8writeBitEhhhh
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605012resetSensorsEv:
        PUSH     {R4,LR}
        MOVS     R4,R0
        MOVS     R3,#+1
        MOVS     R2,#+0
        MOVS     R1,#+106
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8writeBitEhhhh
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU60505resetEv:
        PUSH     {R4,LR}
        MOVS     R4,R0
        MOVS     R3,#+1
        MOVS     R2,#+7
        MOVS     R1,#+107
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8writeBitEhhhh
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605015getSleepEnabledEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+6
        MOVS     R1,#+107
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getSleepEnabled_0
        MOVS     R0,#+1
        B.N      ??getSleepEnabled_1
??getSleepEnabled_0:
        MOVS     R0,#+0
??getSleepEnabled_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605015setSleepEnabledEb:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,#+6
        MOVS     R1,#+107
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8writeBitEhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605019getWakeCycleEnabledEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+5
        MOVS     R1,#+107
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getWakeCycleEnabled_0
        MOVS     R0,#+1
        B.N      ??getWakeCycleEnabled_1
??getWakeCycleEnabled_0:
        MOVS     R0,#+0
??getWakeCycleEnabled_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605019setWakeCycleEnabledEb:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,#+5
        MOVS     R1,#+107
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8writeBitEhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605020getTempSensorEnabledEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+3
        MOVS     R1,#+107
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BNE.N    ??getTempSensorEnabled_0
        MOVS     R0,#+1
        B.N      ??getTempSensorEnabled_1
??getTempSensorEnabled_0:
        MOVS     R0,#+0
??getTempSensorEnabled_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605020setTempSensorEnabledEb:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        EORS     R3,R5,#0x1
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,#+3
        MOVS     R1,#+107
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8writeBitEhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605014getClockSourceEv:
        PUSH     {R2-R4,LR}
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+4]
        ADDS     R0,R4,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,#+3
        MOVS     R2,#+2
        MOVS     R1,#+107
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8readBitsEhhhhPht
        LDRB     R0,[R4, #+1]
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605014setClockSourceEh:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STR      R5,[SP, #+0]
        MOVS     R3,#+3
        MOVS     R2,#+2
        MOVS     R1,#+107
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9writeBitsEhhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605016getWakeFrequencyEv:
        PUSH     {R2-R4,LR}
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+4]
        ADDS     R0,R4,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,#+2
        MOVS     R2,#+7
        MOVS     R1,#+108
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8readBitsEhhhhPht
        LDRB     R0,[R4, #+1]
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605016setWakeFrequencyEh:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STR      R5,[SP, #+0]
        MOVS     R3,#+2
        MOVS     R2,#+7
        MOVS     R1,#+108
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9writeBitsEhhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605023getStandbyXAccelEnabledEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+5
        MOVS     R1,#+108
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getStandbyXAccelEnabled_0
        MOVS     R0,#+1
        B.N      ??getStandbyXAccelEnabled_1
??getStandbyXAccelEnabled_0:
        MOVS     R0,#+0
??getStandbyXAccelEnabled_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605023setStandbyXAccelEnabledEb:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,#+5
        MOVS     R1,#+108
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8writeBitEhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605023getStandbyYAccelEnabledEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+4
        MOVS     R1,#+108
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getStandbyYAccelEnabled_0
        MOVS     R0,#+1
        B.N      ??getStandbyYAccelEnabled_1
??getStandbyYAccelEnabled_0:
        MOVS     R0,#+0
??getStandbyYAccelEnabled_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605023setStandbyYAccelEnabledEb:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,#+4
        MOVS     R1,#+108
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8writeBitEhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605023getStandbyZAccelEnabledEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+3
        MOVS     R1,#+108
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getStandbyZAccelEnabled_0
        MOVS     R0,#+1
        B.N      ??getStandbyZAccelEnabled_1
??getStandbyZAccelEnabled_0:
        MOVS     R0,#+0
??getStandbyZAccelEnabled_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605023setStandbyZAccelEnabledEb:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,#+3
        MOVS     R1,#+108
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8writeBitEhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605022getStandbyXGyroEnabledEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+2
        MOVS     R1,#+108
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getStandbyXGyroEnabled_0
        MOVS     R0,#+1
        B.N      ??getStandbyXGyroEnabled_1
??getStandbyXGyroEnabled_0:
        MOVS     R0,#+0
??getStandbyXGyroEnabled_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605022setStandbyXGyroEnabledEb:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,#+2
        MOVS     R1,#+108
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8writeBitEhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605022getStandbyYGyroEnabledEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+1
        MOVS     R1,#+108
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getStandbyYGyroEnabled_0
        MOVS     R0,#+1
        B.N      ??getStandbyYGyroEnabled_1
??getStandbyYGyroEnabled_0:
        MOVS     R0,#+0
??getStandbyYGyroEnabled_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605022setStandbyYGyroEnabledEb:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,#+1
        MOVS     R1,#+108
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8writeBitEhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605022getStandbyZGyroEnabledEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+0
        MOVS     R1,#+108
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getStandbyZGyroEnabled_0
        MOVS     R0,#+1
        B.N      ??getStandbyZGyroEnabled_1
??getStandbyZGyroEnabled_0:
        MOVS     R0,#+0
??getStandbyZGyroEnabled_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605022setStandbyZGyroEnabledEb:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,#+0
        MOVS     R1,#+108
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8writeBitEhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605012getFIFOCountEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+2
        MOVS     R1,#+114
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9readBytesEhhhPht
        LDRB     R0,[R4, #+1]
        LDRB     R1,[R4, #+2]
        ORRS     R0,R1,R0, LSL #+8
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605011getFIFOByteEv:
        PUSH     {R4,LR}
        MOVS     R4,R0
        MOV      R3,#+1000
        ADDS     R2,R4,#+1
        MOVS     R1,#+116
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8readByteEhhPht
        LDRB     R0,[R4, #+1]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605012getFIFOBytesEPhh:
        PUSH     {R4-R6,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        MOVS     R3,R5
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+116
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9readBytesEhhhPht
        POP      {R0,R1,R4-R6,PC}  ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605011setFIFOByteEh:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+116
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9writeByteEhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605011getDeviceIDEv:
        PUSH     {R2-R4,LR}
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+4]
        ADDS     R0,R4,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        MOVS     R2,#+6
        MOVS     R1,#+117
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8readBitsEhhhhPht
        LDRB     R0,[R4, #+1]
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605011setDeviceIDEh:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STR      R5,[SP, #+0]
        MOVS     R3,#+6
        MOVS     R2,#+6
        MOVS     R1,#+117
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9writeBitsEhhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605015getOTPBankValidEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+0
        MOVS     R1,#+0
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605015setOTPBankValidEb:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,#+0
        MOVS     R1,#+0
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8writeBitEhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605014getXGyroOffsetEv:
        PUSH     {R2-R4,LR}
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+4]
        ADDS     R0,R4,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        MOVS     R2,#+6
        MOVS     R1,#+0
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8readBitsEhhhhPht
        LDRSB    R0,[R4, #+1]
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605014setXGyroOffsetEa:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STR      R5,[SP, #+0]
        MOVS     R3,#+6
        MOVS     R2,#+6
        MOVS     R1,#+0
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9writeBitsEhhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605014getYGyroOffsetEv:
        PUSH     {R2-R4,LR}
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+4]
        ADDS     R0,R4,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        MOVS     R2,#+6
        MOVS     R1,#+1
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8readBitsEhhhhPht
        LDRSB    R0,[R4, #+1]
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605014setYGyroOffsetEa:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STR      R5,[SP, #+0]
        MOVS     R3,#+6
        MOVS     R2,#+6
        MOVS     R1,#+1
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9writeBitsEhhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605014getZGyroOffsetEv:
        PUSH     {R2-R4,LR}
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+4]
        ADDS     R0,R4,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        MOVS     R2,#+6
        MOVS     R1,#+2
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8readBitsEhhhhPht
        LDRSB    R0,[R4, #+1]
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605014setZGyroOffsetEa:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STR      R5,[SP, #+0]
        MOVS     R3,#+6
        MOVS     R2,#+6
        MOVS     R1,#+2
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9writeBitsEhhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605012getXFineGainEv:
        PUSH     {R4,LR}
        MOVS     R4,R0
        MOV      R3,#+1000
        ADDS     R2,R4,#+1
        MOVS     R1,#+3
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8readByteEhhPht
        LDRSB    R0,[R4, #+1]
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605012setXFineGainEa:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+3
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9writeByteEhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605012getYFineGainEv:
        PUSH     {R4,LR}
        MOVS     R4,R0
        MOV      R3,#+1000
        ADDS     R2,R4,#+1
        MOVS     R1,#+4
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8readByteEhhPht
        LDRSB    R0,[R4, #+1]
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605012setYFineGainEa:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+4
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9writeByteEhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605012getZFineGainEv:
        PUSH     {R4,LR}
        MOVS     R4,R0
        MOV      R3,#+1000
        ADDS     R2,R4,#+1
        MOVS     R1,#+5
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8readByteEhhPht
        LDRSB    R0,[R4, #+1]
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605012setZFineGainEa:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+5
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9writeByteEhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605015getXAccelOffsetEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+2
        MOVS     R1,#+6
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9readBytesEhhhPht
        LDRB     R0,[R4, #+1]
        LDRB     R1,[R4, #+2]
        ORRS     R0,R1,R0, LSL #+8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605015setXAccelOffsetEs:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R2,R5
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R1,#+6
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9writeWordEhht
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605015getYAccelOffsetEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+2
        MOVS     R1,#+8
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9readBytesEhhhPht
        LDRB     R0,[R4, #+1]
        LDRB     R1,[R4, #+2]
        ORRS     R0,R1,R0, LSL #+8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605015setYAccelOffsetEs:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R2,R5
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R1,#+8
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9writeWordEhht
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605015getZAccelOffsetEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+2
        MOVS     R1,#+10
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9readBytesEhhhPht
        LDRB     R0,[R4, #+1]
        LDRB     R1,[R4, #+2]
        ORRS     R0,R1,R0, LSL #+8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605015setZAccelOffsetEs:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R2,R5
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R1,#+10
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9writeWordEhht
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605018getXGyroOffsetUserEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+2
        MOVS     R1,#+19
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9readBytesEhhhPht
        LDRB     R0,[R4, #+1]
        LDRB     R1,[R4, #+2]
        ORRS     R0,R1,R0, LSL #+8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605018setXGyroOffsetUserEs:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R2,R5
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R1,#+19
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9writeWordEhht
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605018getYGyroOffsetUserEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+2
        MOVS     R1,#+21
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9readBytesEhhhPht
        LDRB     R0,[R4, #+1]
        LDRB     R1,[R4, #+2]
        ORRS     R0,R1,R0, LSL #+8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605018setYGyroOffsetUserEs:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R2,R5
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R1,#+21
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9writeWordEhht
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605018getZGyroOffsetUserEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+2
        MOVS     R1,#+23
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9readBytesEhhhPht
        LDRB     R0,[R4, #+1]
        LDRB     R1,[R4, #+2]
        ORRS     R0,R1,R0, LSL #+8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605018setZGyroOffsetUserEs:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R2,R5
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R1,#+23
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9writeWordEhht
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605021getIntPLLReadyEnabledEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+2
        MOVS     R1,#+56
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getIntPLLReadyEnabled_0
        MOVS     R0,#+1
        B.N      ??getIntPLLReadyEnabled_1
??getIntPLLReadyEnabled_0:
        MOVS     R0,#+0
??getIntPLLReadyEnabled_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605021setIntPLLReadyEnabledEb:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,#+2
        MOVS     R1,#+56
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8writeBitEhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605016getIntDMPEnabledEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+1
        MOVS     R1,#+56
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getIntDMPEnabled_0
        MOVS     R0,#+1
        B.N      ??getIntDMPEnabled_1
??getIntDMPEnabled_0:
        MOVS     R0,#+0
??getIntDMPEnabled_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605016setIntDMPEnabledEb:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,#+1
        MOVS     R1,#+56
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8writeBitEhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605016getDMPInt5StatusEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+5
        MOVS     R1,#+57
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getDMPInt5Status_0
        MOVS     R0,#+1
        B.N      ??getDMPInt5Status_1
??getDMPInt5Status_0:
        MOVS     R0,#+0
??getDMPInt5Status_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605016getDMPInt4StatusEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+4
        MOVS     R1,#+57
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getDMPInt4Status_0
        MOVS     R0,#+1
        B.N      ??getDMPInt4Status_1
??getDMPInt4Status_0:
        MOVS     R0,#+0
??getDMPInt4Status_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605016getDMPInt3StatusEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+3
        MOVS     R1,#+57
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getDMPInt3Status_0
        MOVS     R0,#+1
        B.N      ??getDMPInt3Status_1
??getDMPInt3Status_0:
        MOVS     R0,#+0
??getDMPInt3Status_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605016getDMPInt2StatusEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+2
        MOVS     R1,#+57
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getDMPInt2Status_0
        MOVS     R0,#+1
        B.N      ??getDMPInt2Status_1
??getDMPInt2Status_0:
        MOVS     R0,#+0
??getDMPInt2Status_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605016getDMPInt1StatusEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+1
        MOVS     R1,#+57
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getDMPInt1Status_0
        MOVS     R0,#+1
        B.N      ??getDMPInt1Status_1
??getDMPInt1Status_0:
        MOVS     R0,#+0
??getDMPInt1Status_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605016getDMPInt0StatusEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+0
        MOVS     R1,#+57
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getDMPInt0Status_0
        MOVS     R0,#+1
        B.N      ??getDMPInt0Status_1
??getDMPInt0Status_0:
        MOVS     R0,#+0
??getDMPInt0Status_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605020getIntPLLReadyStatusEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+2
        MOVS     R1,#+58
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getIntPLLReadyStatus_0
        MOVS     R0,#+1
        B.N      ??getIntPLLReadyStatus_1
??getIntPLLReadyStatus_0:
        MOVS     R0,#+0
??getIntPLLReadyStatus_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605015getIntDMPStatusEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+1
        MOVS     R1,#+58
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getIntDMPStatus_0
        MOVS     R0,#+1
        B.N      ??getIntDMPStatus_1
??getIntDMPStatus_0:
        MOVS     R0,#+0
??getIntDMPStatus_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605013getDMPEnabledEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADDS     R3,R4,#+1
        MOVS     R2,#+7
        MOVS     R1,#+106
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev7readBitEhhhPht
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BEQ.N    ??getDMPEnabled_0
        MOVS     R0,#+1
        B.N      ??getDMPEnabled_1
??getDMPEnabled_0:
        MOVS     R0,#+0
??getDMPEnabled_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605013setDMPEnabledEb:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,#+7
        MOVS     R1,#+106
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8writeBitEhhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU60508resetDMPEv:
        PUSH     {R4,LR}
        MOVS     R4,R0
        MOVS     R3,#+1
        MOVS     R2,#+3
        MOVS     R1,#+106
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8writeBitEhhhh
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605013setMemoryBankEhbb:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        ANDS     R5,R5,#0x1F
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+0
        BEQ.N    ??setMemoryBank_0
        ORRS     R5,R5,#0x20
??setMemoryBank_0:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??setMemoryBank_1
        ORRS     R5,R5,#0x40
??setMemoryBank_1:
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+109
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9writeByteEhhh
        POP      {R0,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605021setMemoryStartAddressEh:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+110
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9writeByteEhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605014readMemoryByteEv:
        PUSH     {R4,LR}
        MOVS     R4,R0
        MOV      R3,#+1000
        ADDS     R2,R4,#+1
        MOVS     R1,#+111
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8readByteEhhPht
        LDRB     R0,[R4, #+1]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605015writeMemoryByteEh:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+111
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9writeByteEhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605015readMemoryBlockEPhthh:
        PUSH     {R4-R10,LR}
        SUB      SP,SP,#+8
        MOVS     R5,R0
        MOVS     R6,R1
        MOVS     R7,R2
        MOV      R8,R3
        LDR      R4,[SP, #+40]
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOV      R1,R8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        BL       _ZN7MPU605013setMemoryBankEhbb
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        BL       _ZN7MPU605021setMemoryStartAddressEh
        MOVS     R9,#+0
??readMemoryBlock_0:
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        CMP      R9,R7
        BCS.N    ??readMemoryBlock_1
        MOVS     R10,#+16
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        ADDS     R0,R10,R9
        CMP      R7,R0
        BGE.N    ??readMemoryBlock_2
        SUBS     R10,R7,R9
??readMemoryBlock_2:
        MOV      R0,#+256
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        SUBS     R0,R0,R4
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        CMP      R0,R10
        BGE.N    ??readMemoryBlock_3
        RSBS     R10,R4,#+0
??readMemoryBlock_3:
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        ADDS     R3,R9,R6
        MOV      R2,R10
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+111
        LDRB     R0,[R5, #+0]
        BL       _ZN6I2Cdev9readBytesEhhhPht
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        ADDS     R9,R10,R9
        ADDS     R4,R10,R4
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        CMP      R9,R7
        BCS.N    ??readMemoryBlock_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??readMemoryBlock_4
        ADDS     R8,R8,#+1
??readMemoryBlock_4:
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOV      R1,R8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        BL       _ZN7MPU605013setMemoryBankEhbb
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        BL       _ZN7MPU605021setMemoryStartAddressEh
        B.N      ??readMemoryBlock_0
??readMemoryBlock_1:
        POP      {R0,R1,R4-R10,PC}  ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605016writeMemoryBlockEPKhthhbb:
        PUSH     {R1,R4-R11,LR}
        SUB      SP,SP,#+8
        MOVS     R5,R0
        MOVS     R6,R2
        MOVS     R7,R3
        LDR      R4,[SP, #+48]
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOVS     R1,R7
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        BL       _ZN7MPU605013setMemoryBankEhbb
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        BL       _ZN7MPU605021setMemoryStartAddressEh
        LDRB     R0,[SP, #+52]
        CMP      R0,#+0
        BEQ.N    ??writeMemoryBlock_0
        MOVS     R0,#+16
        BL       malloc
        STR      R0,[SP, #+4]
??writeMemoryBlock_0:
        LDRB     R0,[SP, #+56]
        CMP      R0,#+0
        BEQ.N    ??writeMemoryBlock_1
        MOVS     R0,#+16
        BL       malloc
        MOV      R9,R0
??writeMemoryBlock_1:
        MOVS     R0,#+0
        MOV      R10,R0
??writeMemoryBlock_2:
        UXTH     R10,R10          ;; ZeroExt  R10,R10,#+16,#+16
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R10,R6
        BCS.W    ??writeMemoryBlock_3
        MOVS     R0,#+16
        MOV      R8,R0
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        UXTH     R10,R10          ;; ZeroExt  R10,R10,#+16,#+16
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        ADDS     R0,R8,R10
        CMP      R6,R0
        BGE.N    ??writeMemoryBlock_4
        SUBS     R0,R6,R10
        MOV      R8,R0
??writeMemoryBlock_4:
        MOV      R0,#+256
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        SUBS     R0,R0,R4
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R0,R8
        BGE.N    ??writeMemoryBlock_5
        RSBS     R0,R4,#+0
        MOV      R8,R0
??writeMemoryBlock_5:
        LDRB     R0,[SP, #+56]
        CMP      R0,#+0
        BEQ.N    ??writeMemoryBlock_6
        MOVS     R0,#+0
        MOV      R11,R0
??writeMemoryBlock_7:
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R11,R8
        BCS.N    ??writeMemoryBlock_8
        UXTH     R10,R10          ;; ZeroExt  R10,R10,#+16,#+16
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        ADDS     R0,R11,R10
        LDR      R1,[SP, #+8]
        LDRB     R0,[R0, R1]
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        STRB     R0,[R11, R9]
        ADDS     R11,R11,#+1
        B.N      ??writeMemoryBlock_7
??writeMemoryBlock_6:
        UXTH     R10,R10          ;; ZeroExt  R10,R10,#+16,#+16
        LDR      R0,[SP, #+8]
        ADDS     R0,R10,R0
        MOV      R9,R0
??writeMemoryBlock_8:
        MOV      R3,R9
        MOV      R2,R8
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+111
        LDRB     R0,[R5, #+0]
        BL       _ZN6I2Cdev10writeBytesEhhhPh
        LDRB     R0,[SP, #+52]
        CMP      R0,#+0
        BEQ.N    ??writeMemoryBlock_9
        LDR      R0,[SP, #+4]
        CMP      R0,#+0
        BEQ.N    ??writeMemoryBlock_9
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOVS     R1,R7
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        BL       _ZN7MPU605013setMemoryBankEhbb
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        BL       _ZN7MPU605021setMemoryStartAddressEh
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        LDR      R3,[SP, #+4]
        MOV      R2,R8
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+111
        LDRB     R0,[R5, #+0]
        BL       _ZN6I2Cdev9readBytesEhhhPht
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        MOV      R2,R8
        LDR      R1,[SP, #+4]
        MOV      R0,R9
        BL       memcmp
        CMP      R0,#+0
        BEQ.N    ??writeMemoryBlock_9
        LDR      R0,[SP, #+4]
        BL       free
        LDRB     R0,[SP, #+56]
        CMP      R0,#+0
        BEQ.N    ??writeMemoryBlock_10
        MOV      R0,R9
        BL       free
??writeMemoryBlock_10:
        MOVS     R0,#+0
        B.N      ??writeMemoryBlock_11
??writeMemoryBlock_9:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        ADDS     R10,R8,R10
        ADDS     R4,R8,R4
        UXTH     R10,R10          ;; ZeroExt  R10,R10,#+16,#+16
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R10,R6
        BCS.W    ??writeMemoryBlock_2
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??writeMemoryBlock_12
        ADDS     R7,R7,#+1
??writeMemoryBlock_12:
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOVS     R1,R7
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        BL       _ZN7MPU605013setMemoryBankEhbb
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        BL       _ZN7MPU605021setMemoryStartAddressEh
        B.N      ??writeMemoryBlock_2
??writeMemoryBlock_3:
        LDRB     R0,[SP, #+52]
        CMP      R0,#+0
        BEQ.N    ??writeMemoryBlock_13
        LDR      R0,[SP, #+4]
        BL       free
??writeMemoryBlock_13:
        LDRB     R0,[SP, #+56]
        CMP      R0,#+0
        BEQ.N    ??writeMemoryBlock_14
        MOV      R0,R9
        BL       free
??writeMemoryBlock_14:
        MOVS     R0,#+1
??writeMemoryBlock_11:
        POP      {R1-R11,PC}      ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605020writeProgMemoryBlockEPKhthhb:
        PUSH     {R1-R9,LR}
        MOVS     R6,R0
        MOVS     R7,R1
        MOV      R8,R2
        MOV      R9,R3
        LDR      R5,[SP, #+40]
        LDR      R4,[SP, #+44]
        MOVS     R0,#+1
        STR      R0,[SP, #+8]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R4,[SP, #+4]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STR      R5,[SP, #+0]
        MOV      R3,R9
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOV      R2,R8
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R1,R7
        MOVS     R0,R6
        BL       _ZN7MPU605016writeMemoryBlockEPKhthhbb
        POP      {R1-R9,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605024writeDMPConfigurationSetEPKhtb:
        PUSH     {R0,R2,R4-R11,LR}
        SUB      SP,SP,#+20
        MOVS     R4,R1
        MOVS     R5,R3
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??writeDMPConfigurationSet_0
        MOVS     R0,#+8
        BL       malloc
        MOVS     R6,R0
??writeDMPConfigurationSet_0:
        MOVS     R0,#+0
        MOV      R11,R0
??writeDMPConfigurationSet_1:
        LDRH     R0,[SP, #+24]
        UXTH     R11,R11          ;; ZeroExt  R11,R11,#+16,#+16
        CMP      R11,R0
        BCS.W    ??writeDMPConfigurationSet_2
        UXTH     R11,R11          ;; ZeroExt  R11,R11,#+16,#+16
        LDRB     R0,[R11, R4]
        STRB     R0,[SP, #+12]
        ADDS     R11,R11,#+1
        UXTH     R11,R11          ;; ZeroExt  R11,R11,#+16,#+16
        LDRB     R0,[R11, R4]
        MOV      R8,R0
        ADDS     R11,R11,#+1
        UXTH     R11,R11          ;; ZeroExt  R11,R11,#+16,#+16
        LDRB     R0,[R11, R4]
        MOV      R9,R0
        ADDS     R11,R11,#+1
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+1
        BCC.N    ??writeDMPConfigurationSet_3
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??writeDMPConfigurationSet_4
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+5
        BCC.N    ??writeDMPConfigurationSet_5
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        MOV      R1,R9
        MOVS     R0,R6
        BL       realloc
        MOVS     R6,R0
??writeDMPConfigurationSet_5:
        MOVS     R0,#+0
        MOV      R10,R0
??writeDMPConfigurationSet_6:
        MOV      R0,R9
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTH     R10,R10          ;; ZeroExt  R10,R10,#+16,#+16
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R10,R0
        BCS.N    ??writeDMPConfigurationSet_7
        UXTH     R11,R11          ;; ZeroExt  R11,R11,#+16,#+16
        UXTH     R10,R10          ;; ZeroExt  R10,R10,#+16,#+16
        ADDS     R0,R10,R11
        LDRB     R0,[R0, R4]
        UXTH     R10,R10          ;; ZeroExt  R10,R10,#+16,#+16
        STRB     R0,[R10, R6]
        ADDS     R10,R10,#+1
        B.N      ??writeDMPConfigurationSet_6
??writeDMPConfigurationSet_4:
        UXTH     R11,R11          ;; ZeroExt  R11,R11,#+16,#+16
        ADDS     R0,R11,R4
        MOVS     R6,R0
??writeDMPConfigurationSet_7:
        MOVS     R0,#+0
        STR      R0,[SP, #+8]
        MOVS     R0,#+1
        STR      R0,[SP, #+4]
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        STR      R8,[SP, #+0]
        LDRB     R3,[SP, #+12]
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        MOV      R2,R9
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R1,R6
        LDR      R0,[SP, #+20]
        BL       _ZN7MPU605016writeMemoryBlockEPKhthhbb
        MOVS     R7,R0
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        ADDS     R11,R9,R11
        B.N      ??writeDMPConfigurationSet_8
??writeDMPConfigurationSet_3:
        UXTH     R11,R11          ;; ZeroExt  R11,R11,#+16,#+16
        LDRB     R0,[R11, R4]
        STRB     R0,[SP, #+13]
        ADDS     R11,R11,#+1
        LDRB     R0,[SP, #+13]
        CMP      R0,#+1
        BNE.N    ??writeDMPConfigurationSet_9
        MOVS     R2,#+50
        MOVS     R1,#+56
        LDR      R0,[SP, #+20]
        LDRB     R0,[R0, #+0]
        BL       _ZN6I2Cdev9writeByteEhhh
        MOVS     R0,#+1
        MOVS     R7,R0
        B.N      ??writeDMPConfigurationSet_8
??writeDMPConfigurationSet_9:
        MOVS     R0,#+0
        MOVS     R7,R0
??writeDMPConfigurationSet_8:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+0
        BNE.W    ??writeDMPConfigurationSet_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??writeDMPConfigurationSet_10
        MOVS     R0,R6
        BL       free
??writeDMPConfigurationSet_10:
        MOVS     R0,#+0
        B.N      ??writeDMPConfigurationSet_11
??writeDMPConfigurationSet_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??writeDMPConfigurationSet_12
        MOVS     R0,R6
        BL       free
??writeDMPConfigurationSet_12:
        MOVS     R0,#+1
??writeDMPConfigurationSet_11:
        ADD      SP,SP,#+28
        POP      {R4-R11,PC}      ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605028writeProgDMPConfigurationSetEPKht:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R3,#+1
        MOVS     R2,R6
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R1,R5
        MOVS     R0,R4
        BL       _ZN7MPU605024writeDMPConfigurationSetEPKhtb
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605013getDMPConfig1Ev:
        PUSH     {R4,LR}
        MOVS     R4,R0
        MOV      R3,#+1000
        ADDS     R2,R4,#+1
        MOVS     R1,#+112
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8readByteEhhPht
        LDRB     R0,[R4, #+1]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605013setDMPConfig1Eh:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+112
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9writeByteEhhh
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605013getDMPConfig2Ev:
        PUSH     {R4,LR}
        MOVS     R4,R0
        MOV      R3,#+1000
        ADDS     R2,R4,#+1
        MOVS     R1,#+113
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev8readByteEhhPht
        LDRB     R0,[R4, #+1]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
_ZN7MPU605013setDMPConfig2Eh:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+113
        LDRB     R0,[R4, #+0]
        BL       _ZN6I2Cdev9writeByteEhhh
        POP      {R0,R4,R5,PC}    ;; return

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
// 9 110 bytes in section .text
// 
// 9 110 bytes of CODE memory
//
//Errors: none
//Warnings: none
