/***********************************************
 * NAME    : mydefs.h      	                    *
 * Version : 17.AUG.2003                        *
 ***********************************************/


//************************************************************************
//
//	Type Definitions for Variable Declarations			 
//
//************************************************************************

#ifndef __MYDEF__H__
#define __MYDEF__H__

typedef char                	CHAR;
typedef unsigned char		BYTE;
typedef signed char			SBYTE;
typedef unsigned int		UINT;
typedef unsigned long		ULONG;
typedef unsigned long int	ULINT;
typedef long int		LONG;
//typedef unsigned short UWORD ;
typedef signed short WORD ;
typedef char			S8;
typedef short			S16;
typedef long			S32;
typedef int             	INT;
typedef float			FLOAT;

typedef unsigned char			U8;
typedef unsigned short			U16;
typedef unsigned int			U32;

//************************************************************************
//
//	INT Data Bit Field Define
//
//************************************************************************

typedef union
{
	UINT	value;
	struct
	{
		UINT	b0   : 1;
		UINT	b1   : 1;
		UINT	b2   : 1;
		UINT	b3   : 1;
		UINT	b4   : 1;
		UINT	b5   : 1;
		UINT	b6   : 1;
		UINT	b7   : 1;
		UINT	b8   : 1;
		UINT	b9   : 1;
		UINT	b10  : 1;
		UINT	b11  : 1;
		UINT	b12  : 1;
		UINT	b13  : 1;
		UINT	b14  : 1;
		UINT	b15  : 1;
	} Bit;
} INTField;

//************************************************************************
//
//	INT Data Bit Field Define
//
//************************************************************************

typedef union
{
	UINT	value;
	struct
	{
		UINT	b0   : 1;
		UINT	b1   : 1;
		UINT	b2   : 1;
		UINT	b3   : 1;
		UINT	b4   : 1;
		UINT	b5   : 1;
		UINT	b6   : 1;
		UINT	b7   : 1;
	} Bit;
} BYTEField;


//************************************************************************
//
//	LONG Data Bit Field Define
//
//************************************************************************
typedef	union
{
	ULONG	Value;
	BYTE	Byte[4];
} LONGField;

//***********************************************************************
//
//	Simple utility macros
//
//*************************************************************************
#define min(x1,x2) ((x1<x2)? x1:x2)
#define max(x1,x2) ((x1>x2)? x1:x2)
#define	BitMask(bit)		(1 << (bit))
#define	BitMaskLONG(bit)	(1L << (bit))

#define LoByte(data)	((BYTE)(data))
#define HiByte(data)	((BYTE)((data)>>8))

#define	MakeWord(hi, lo) (U16)(((U16)(LoByte(hi)) << 8) + (lo & 0xff))

/*	Bit macro	*/
#define	BitTest(val, bit)	((val) &= (U16)BitMask(bit))

#define	BitSet(val, bit)	((val) |= (U16)BitMask(bit))

#define	BitClr(val, bit)	((val) &= (U16)(~BitMask(bit)))

#define sINBODY				0x13
#define sBLOODPRESSSURE		0x12
#define sHANSDGRIP		0x11
#define sWEIGHT			0x45
#define sTREADMILL		0x31

#endif /*__MYDEF__H__*/