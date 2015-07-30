/*==============================================================================
 *
 *   Main Function
 *
 *    	File Name   	: PWM_Interface.h
 *    	Version        	: 1.0
 *    	Date           	: 2014.02.16
 *		Modified       	: 2014.02.16 By Kim, Hyun-Jun
 *		Author         	: Kim, Hyun-Jun  (23rd)
 *		MPU_Type       	: STM32F103RB(8MHz)
 *		Compiler		: IAR Embedded Workbench For ARM
 *		Copyright(c) ROLAB, Kwangwoon University.
 *    	All Rights Reserved.
 *
==============================================================================*/

#ifndef __PWM_INTERFACE_H
#define __PWM_INTERFACE_H

#include "hw_config.h"
#include "Mydefs.h"

void SetPwmPeriod(U16 us);
void SetPwmDuty(U8 ch, U16 percent);


#endif
