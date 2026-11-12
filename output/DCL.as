opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	79FT738
opt include "C:\Users\qxl\Desktop\组会信息\高师兄给的资料\CMS_IDE_V2.03.28\CMS_IDE_V2.03.28\data\include\79ft738.cgen.inc"
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
	FNCALL	_main,_Delay_nms
	FNCALL	_main,_Init_ram
	FNCALL	_main,_Knob_Scan
	FNCALL	_main,_Kscan
	FNCALL	_main,_RecvDataAnalysis
	FNCALL	_main,_Sys_set
	FNCALL	_main,_UpdateTftDisplay
	FNCALL	_main,___CMS_CheckTouchKey
	FNCALL	_main,_vInitDecoding
	FNCALL	_main,_vInitIc
	FNCALL	_main,_vIntimeCopyData
	FNCALL	_main,_vLedBreath
	FNCALL	_main,_vOkKeyProc
	FNCALL	_main,_vReadSysCfg
	FNCALL	_main,_vSettingKeyProc
	FNCALL	_main,_vStartKeyProc
	FNCALL	_main,_vSystemStatus
	FNCALL	_main,_vTimeLoop
	FNCALL	_main,_vTxDataReady
	FNCALL	_main,_vUart1Send
	FNCALL	_vUart1Send,_Delay
	FNCALL	_vTimeLoop,_bQueueEn
	FNCALL	_vTimeLoop,_vBtConnectProc
	FNCALL	_vSystemStatus,_bQueueDe
	FNCALL	_vSystemStatus,_vHeatingStatus
	FNCALL	_vSystemStatus,_vPowerOffStatus
	FNCALL	_vSystemStatus,_vSetting1Status
	FNCALL	_vSystemStatus,_vSetting2Status
	FNCALL	_vSystemStatus,_vSleepStatus
	FNCALL	_vSystemStatus,_vWaittingStatus
	FNCALL	_vWaittingStatus,_bQueueEn
	FNCALL	_vWaittingStatus,_vCurTemprUpdate
	FNCALL	_vWaittingStatus,_vSetBuzzer
	FNCALL	_vWaittingStatus,_vSetPWM2
	FNCALL	_vWaittingStatus,_vTemprDecrease
	FNCALL	_vWaittingStatus,_vTemprIncrease
	FNCALL	_vSetting2Status,_Memory_Write
	FNCALL	_vSetting2Status,_vSyncTemprDisplay
	FNCALL	_vSyncTemprDisplay,_CConvert2F
	FNCALL	_vSetting1Status,_vSysParam2Tft
	FNCALL	_vPowerOffStatus,_vSetPWM2
	FNCALL	_vHeatingStatus,_vCurTemprUpdate
	FNCALL	_vHeatingStatus,_vHeatingProc
	FNCALL	_vHeatingStatus,_vSetIHPower
	FNCALL	_vHeatingStatus,_vSetPWM1
	FNCALL	_vHeatingStatus,_vSetPWM2
	FNCALL	_vHeatingStatus,_vTemprDecrease
	FNCALL	_vHeatingStatus,_vTemprIncrease
	FNCALL	_vHeatingStatus,_vUpdateTargetTempr
	FNCALL	_vTemprIncrease,_FConvert2C
	FNCALL	_vTemprIncrease,_vUpdateTargetTempr
	FNCALL	_vTemprDecrease,_FConvert2C
	FNCALL	_vTemprDecrease,_vUpdateTargetTempr
	FNCALL	_FConvert2C,___lwdiv
	FNCALL	_FConvert2C,___lwmod
	FNCALL	_FConvert2C,___wmul
	FNCALL	_vHeatingProc,_bQueueEn
	FNCALL	_vHeatingProc,_vGaoyuanBoilingProc
	FNCALL	_vHeatingProc,_vSetBuzzer
	FNCALL	_vHeatingProc,_vSetIHPower
	FNCALL	_vGaoyuanBoilingProc,_Memory_Write
	FNCALL	_vGaoyuanBoilingProc,_vSetIHPower
	FNCALL	_vCurTemprUpdate,_CConvert2F
	FNCALL	_vCurTemprUpdate,___lwdiv
	FNCALL	_bQueueDe,___awmod
	FNCALL	_vStartKeyProc,_bQueueEn
	FNCALL	_vStartKeyProc,_vSetBuzzer
	FNCALL	_vSettingKeyProc,_bQueueEn
	FNCALL	_vSettingKeyProc,_vSetBuzzer
	FNCALL	_vReadSysCfg,_CConvert2F
	FNCALL	_vReadSysCfg,_Memory_Read
	FNCALL	_vReadSysCfg,_vSysParam2Tft
	FNCALL	_CConvert2F,___lwdiv
	FNCALL	_CConvert2F,___lwmod
	FNCALL	_CConvert2F,___wmul
	FNCALL	_vOkKeyProc,_bQueueEn
	FNCALL	_vIntimeCopyData,_vClearBuzzerFlag
	FNCALL	_vInitDecoding,_vClearDecodingParam
	FNCALL	_vClearDecodingParam,_memset
	FNCALL	___CMS_CheckTouchKey,___CMS_CheckKeyOldValue
	FNCALL	___CMS_CheckTouchKey,___CMS_CheckOnceResult
	FNCALL	___CMS_CheckTouchKey,___CMS_CheckValidTime
	FNCALL	___CMS_CheckTouchKey,___CMS_CurAdjust
	FNCALL	___CMS_CheckTouchKey,___CMS_DAT_SEND
	FNCALL	___CMS_CheckTouchKey,___CMS_KeyDatIIR
	FNCALL	___CMS_CheckTouchKey,___CMS_KeyModeSet
	FNCALL	___CMS_CheckTouchKey,___CMS_KeyStopClear
	FNCALL	___CMS_CheckTouchKey,___CMS_Key_UNNOL_Check
	FNCALL	___CMS_CheckTouchKey,___CMS_NewRAMClr
	FNCALL	___CMS_CheckTouchKey,___GET_32M_FREDAT
	FNCALL	___CMS_Key_UNNOL_Check,___CMS_KeyModeSet
	FNCALL	___CMS_KeyStopClear,___CMS_KeyClearOne
	FNCALL	___CMS_DAT_SEND,___CMS_GetProPorTion
	FNCALL	___CMS_DAT_SEND,_abs
	FNCALL	___CMS_CurAdjust,___CurOnceOK
	FNCALL	___CMS_CurAdjust,___awdiv
	FNCALL	___CMS_CheckOnceResult,___CMS_KeyClearOne
	FNCALL	___CMS_CheckOnceResult,___CMS_KeyHaveDown
	FNCALL	___CMS_CheckOnceResult,___CMS_KeyIsIn
	FNCALL	___CMS_CheckOnceResult,___CMS_KeyOpen
	FNCALL	___CMS_CheckKeyOldValue,___CMS_KeyIsIn
	FNCALL	_UpdateTftDisplay,___bmul
	FNCALL	_UpdateTftDisplay,___lbdiv
	FNCALL	_UpdateTftDisplay,___lbmod
	FNCALL	_UpdateTftDisplay,_vHideDisplayID
	FNCALL	_UpdateTftDisplay,_vSwitchImageIcon
	FNCALL	_UpdateTftDisplay,_vSwitchTftPage
	FNCALL	_vSwitchTftPage,_memcpy
	FNCALL	_vSwitchTftPage,_memset
	FNCALL	_vSwitchTftPage,_vUart0Send
	FNCALL	_vSwitchImageIcon,_memcpy
	FNCALL	_vSwitchImageIcon,_memset
	FNCALL	_vSwitchImageIcon,_vUart0Send
	FNCALL	_vHideDisplayID,_memcpy
	FNCALL	_vHideDisplayID,_memset
	FNCALL	_vHideDisplayID,_vUart0Send
	FNCALL	_vUart0Send,_Delay
	FNCALL	_RecvDataAnalysis,_GetDecodeCode
	FNCALL	_RecvDataAnalysis,_bQueueEn
	FNCALL	_RecvDataAnalysis,_vErrorProc
	FNCALL	_RecvDataAnalysis,_vTemprProc
	FNCALL	_vTemprProc,_vSetIHPower
	FNCALL	_vErrorProc,_vSetIHPower
	FNCALL	_GetDecodeCode,_memset
	FNCALL	_Knob_Scan,_bQueueEn
	FNCALL	_bQueueEn,___awmod
	FNCALL	_Init_ram,_Set_Usart_Async
	FNCALL	_Init_ram,_vEnablePWM
	FNCALL	_Delay_nms,_Delay
	FNROOT	_main
	FNCALL	_time0,___CMS_GetTouchKeyValue
	FNCALL	_time0,_vDecodeInTimer
	FNCALL	_time0,_vIntSendData
	FNCALL	_time0,_vUart1Recv
	FNCALL	_vUart1Recv,_strstr
	FNCALL	_vUart1Recv,i1_memset
	FNCALL	_strstr,_strchr
	FNCALL	_strstr,_strlen
	FNCALL	_strstr,_strncmp
	FNCALL	_vDecodeInTimer,i1_memset
	FNCALL	_vDecodeInTimer,i1_vClearDecodingParam
	FNCALL	i1_vClearDecodingParam,i1_memset
	FNCALL	intlevel1,_time0
	global	intlevel1
	FNROOT	intlevel1
	global	_g_xSysSetting
	global	_g_cWhiteLEDLight
	global	_g_cRedLEDLight
	global	_g_xTftContent
	global	_c_pConectSuccess
	global	_g_cLedAllOnCount
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.h"
	line	36

;initializer for _g_xSysSetting
	retlw	0C8h
	retlw	0B8h
	retlw	low(0)
	retlw	low(0)
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\UIProc.h"
	line	173

;initializer for _g_cWhiteLEDLight
	retlw	032h
	line	172

;initializer for _g_cRedLEDLight
	retlw	0CDh
	line	41

;initializer for _g_xTftContent
	retlw	03Ch
	retlw	low(0)
	retlw	low(0)
	retlw	0BCh
	retlw	032h
psect	idataBANK1,class=CODE,space=0,delta=2,noexec
global __pidataBANK1
__pidataBANK1:
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
	line	479

;initializer for _c_pConectSuccess
	retlw	low((((STR_1)-__stringbase)|8000h))
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\StateMachine.h"
	line	18

;initializer for _g_cLedAllOnCount
	retlw	096h
	global	___CMS_Table_KeyFalg
psect	strings,class=STRING,delta=2,noexec
global __pstrings
__pstrings:
stringtab:
	global    __stringtab
__stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
	global __stringbase
__stringbase:
	retlw	0
psect	strings
	global    __end_of__stringtab
__end_of__stringtab:
	file	"E:\WORK\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79FT73xx\C语言\标准\CMS_CheckTouch_79FT73xx_Make\CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c"
	line	219
___CMS_Table_KeyFalg:
	retlw	01h
	retlw	02h
	retlw	04h
	retlw	08h
	retlw	010h
	retlw	020h
	retlw	040h
	retlw	080h
	global __end_of___CMS_Table_KeyFalg
__end_of___CMS_Table_KeyFalg:
	global	___CMS_CurStep_Table
psect	strings
	file	"E:\WORK\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79FT73xx\C语言\标准\CMS_CheckTouch_79FT73xx_Make\CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c"
	line	220
___CMS_CurStep_Table:
	retlw	low(0)
	retlw	08h
	retlw	04h
	retlw	0Ch
	retlw	06h
	retlw	0Eh
	global __end_of___CMS_CurStep_Table
__end_of___CMS_CurStep_Table:
	global	__CMS_Table_KeyDown
psect	strings
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\Touch_Kscan_Library.h"
	line	37
__CMS_Table_KeyDown:
	retlw	0C8h
	retlw	0

	retlw	0C8h
	retlw	0

	global __end_of__CMS_Table_KeyDown
__end_of__CMS_Table_KeyDown:
	global	__CMS_Table_KeyChannel
psect	strings
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\Touch_Kscan_Library.h"
	line	29
__CMS_Table_KeyChannel:
	retlw	03h
	retlw	04h
	global __end_of__CMS_Table_KeyChannel
__end_of__CMS_Table_KeyChannel:
	global	_C_cHideDisplayID
psect	strings
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\UIProc.h"
	line	98
_C_cHideDisplayID:
	retlw	0EEh
	retlw	081h
	retlw	0Ah
	retlw	low(0)
	retlw	03h
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	01h
	retlw	0FFh
	retlw	0FCh
	retlw	0FFh
	retlw	0FFh
	global __end_of_C_cHideDisplayID
__end_of_C_cHideDisplayID:
	global	_C_cSwitchImageIcon
psect	strings
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\UIProc.h"
	line	94
_C_cSwitchImageIcon:
	retlw	0EEh
	retlw	081h
	retlw	09h
	retlw	low(0)
	retlw	01h
	retlw	low(0)
	retlw	03Dh
	retlw	0FFh
	retlw	0FCh
	retlw	0FFh
	retlw	0FFh
	global __end_of_C_cSwitchImageIcon
__end_of_C_cSwitchImageIcon:
	global	_C_cSwitchTftPage
psect	strings
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\UIProc.h"
	line	82
_C_cSwitchTftPage:
	retlw	0EEh
	retlw	05h
	retlw	low(0)
	retlw	03h
	retlw	low(0)
	retlw	low(0)
	retlw	0FFh
	retlw	0FCh
	retlw	0FFh
	retlw	0FFh
	global __end_of_C_cSwitchTftPage
__end_of_C_cSwitchTftPage:
psect	strings
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\Touch_Kscan_Library.h"
	line	105
__CMS_KeyLDOSel:
	retlw	04h
	global __end_of__CMS_KeyLDOSel
__end_of__CMS_KeyLDOSel:
psect	strings
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\Touch_Kscan_Library.h"
	line	104
__CMS_LMDValue:
	retlw	01h
	global __end_of__CMS_LMDValue
__end_of__CMS_LMDValue:
psect	strings
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\Touch_Kscan_Library.h"
	line	98
__CMS_CmBase:
	retlw	0Dh
	global __end_of__CMS_CmBase
__end_of__CMS_CmBase:
psect	strings
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\Touch_Kscan_Library.h"
	line	96
__CMS_VolValue:
	retlw	046h
	global __end_of__CMS_VolValue
__end_of__CMS_VolValue:
psect	strings
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\Touch_Kscan_Library.h"
	line	94
__CMS_KeyShakeC:
	retlw	03h
	global __end_of__CMS_KeyShakeC
__end_of__CMS_KeyShakeC:
psect	strings
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\Touch_Kscan_Library.h"
	line	93
__CMS_KeyTNumber:
	retlw	02h
	global __end_of__CMS_KeyTNumber
__end_of__CMS_KeyTNumber:
	global	___CMS_Table_KeyFalg
	global	___CMS_CurStep_Table
	global	__CMS_Table_KeyDown
	global	__CMS_Table_KeyChannel
	global	_C_cHideDisplayID
	global	_C_cSwitchImageIcon
	global	_C_cSwitchTftPage
	global	_g_bIsAllowedGetData
	global	_g_bIsAllowedCopyData
	global	_g_bDecodeSuccess
	global	_g_bDecodBody
	global	_g_bBitVal1Decoding
	global	_g_bBitVal0Decoding
	global	_g_bCurrPinValue
	global	_g_xIhProcParam
	global	_SendFifo
	global	_g_xLoopTime
	global	__CMS_KeyFlag
	global	__CMS_KeyAdrCnt
	global	__CMS_32M_CT
	global	__CMS_BANKRAM
	global	Knob_Scan@now_state
	global	vIntSendData@s_cSendCmdTimCount
	global	_s_cUart1RecvPos
	global	_g_cOkKeyCounter
	global	_g_cDisableKeyTime
	global	_g_cErrStatus
	global	_g_eSysStatus
	global	_AD_TmprIgbt
	global	_AD_TmprPan
	global	_Flag1_Error
	global	_Status1_Work
	global	_PowerWork
	global	_Work_Flag1
	global	_g_cSendCommNo
	global	_g_cDecodedPosition
	global	_g_cDecodePinHcnt
	global	_g_xSysAction
	global	___CMS_CheckTouchKey@_CMS_SDfst
	global	___CMS_Key_UNNOL_Check@_CMS_UnNolOver
	global	___CMS_CheckOnceResult@_CMS_KeyDownF
	global	__CMS_b_kerr
	global	__CMS_CurAdjSDfst
	global	__CMS_CurCheckOver
	global	__CMS_b_onceerr
	global	__CMS_b_over2
	global	__CMS_b_over1
	global	__CMS_b_over0
	global	_PinLow2High
	global	_PinHigh2Low
	global	Memory_Write@B_GIE_On
	global	_s_bRecvAtCmdStart
	global	_s_bRecvBleCmdStart
	global	_g_bOkKeyLPressed
	global	_g_bOkKeyPressed
	global	_g_bSetKeyPressed
	global	_g_bStartKeyPressed
	global	_g_bKeyShortPressed
	global	_g_bBtConectSuccessFlg
	global	_g_bUart1SendFlag
	global	_g_bDarkLight
	global	_g_bWhiteLedBreath
	global	_g_bRedLedBreath
	global	_KnobB
	global	_KnobA
	global	_g_bKeepWarmFlag
	global	_g_bKettleLift
	global	_B_PPG_WTDOG_OVER
	global	_B_CONDUCTION_STEP_H
	global	_B_L2_OVER_VOL
	global	_B_CUR_SURGE
	global	_B_VOL_SURGE
	global	_B_L1_OVER_VOL
	global	_g_bSendCmdBody
	global	_g_bSendCmdHead
	global	_g_bPrevPinValue
	global	_g_lSendData
	global	_g_cReceiveData
	global	__CMS_FactorRawDat
	global	__CMS_DispKeyDown
	global	___CMS_CheckValidTime@_CMS_validtime
	global	___CMS_GetTouchKeyValue@_CMS_TimeLimit
	global	__CMS_CurOKFlag
	global	Kscan@KeyOldFlag
	global	___CMS_Key_UNNOL_Check@_CMS_UnNolTime
	global	___CMS_Key_UNNOL_Check@_CMS_UnNolSec
	global	___CMS_GetTouchKeyValue@_CMS_CurStepTemp
	global	___CMS_GetTouchKeyValue@_CMS_RAMCTRBack
	global	__CMS_CurOKFlagH
	global	__CMS_KeyCounter
	global	__CMS_32M_Dat
	global	vErrorProc@s_cPanErrCount
	global	vErrorProc@s_cIgbtErrCount
	global	vTemprProc@s_cOverTempr2Count
	global	vTemprProc@s_cOverTempr1Count
	global	vGaoyuanBoilingProc@s_cMaxTempr
	global	vGaoyuanBoilingProc@s_cDetectCount
	global	Knob_Scan@knob_stable_count
	global	Knob_Scan@knob_last_state
	global	Knob_Scan@update_state
	global	vIntSendData@s_cSendCmdBitCount
	global	Memory_Write@i
	global	_g_cT4msCounter
	global	_g_cLongPressCounter
	global	_g_cBtConectSuccessTime
	global	_g_xTftAction
	global	_g_cGapTempr
	global	_g_cSt2NoOprTimer
	global	_g_cSt1NoOprTimer
	global	_g_cKeepWarmTime
	global	_g_cLiftKettleTime
	global	_g_cSwch2SleepTime
	global	_Status_PPGStop
	global	_Flag2_Error
	global	_Status2_Work
	global	_Num_LxLowOff
	global	_Num_LxLowOn
	global	_Work_Flag2
	global	_g_cDecodePinLcnt
	global	_g_cTftCommand
	global	_g_cDecodeData
	global	_g_xActQueue
	global	__CMS_NoiseDat
	global	_g_cUart1RecvBuff
	global	_SPBRG0
_SPBRG0	set	31
	global	_CCP2CON
_CCP2CON	set	29
	global	_CCPR2L
_CCPR2L	set	27
	global	_CCP1CON
_CCP1CON	set	23
	global	_CCPR1L
_CCPR1L	set	21
	global	_T2CON
_T2CON	set	18
	global	_PIR2
_PIR2	set	13
	global	_PIR1
_PIR1	set	12
	global	_INTCON
_INTCON	set	11
	global	_PORTD
_PORTD	set	8
	global	_PORTC
_PORTC	set	7
	global	_PORTB
_PORTB	set	6
	global	_PORTA
_PORTA	set	5
	global	_SCKP0
_SCKP0	set	243
	global	_SYNC0
_SYNC0	set	244
	global	_TXEN0
_TXEN0	set	245
	global	_TX9EN0
_TX9EN0	set	246
	global	_CREN0
_CREN0	set	196
	global	_RX9EN0
_RX9EN0	set	198
	global	_SPEN0
_SPEN0	set	199
	global	_RC1IF
_RC1IF	set	105
	global	_TMR2IF
_TMR2IF	set	97
	global	_GIE
_GIE	set	95
	global	_RC3
_RC3	set	59
	global	_RC4
_RC4	set	60
	global	_RC5
_RC5	set	61
	global	_RA0
_RA0	set	40
	global	_RA1
_RA1	set	41
	global	_PWM2CYC
_PWM2CYC	set	155
	global	_PWM1CYC
_PWM1CYC	set	154
	global	_PWMCON
_PWMCON	set	153
	global	_SPBRG1
_SPBRG1	set	152
	global	_IOCB
_IOCB	set	150
	global	_WPUB
_WPUB	set	149
	global	_PR2
_PR2	set	146
	global	_WDTCON
_WDTCON	set	144
	global	_OSCCON
_OSCCON	set	143
	global	_WPUD
_WPUD	set	142
	global	_PIE2
_PIE2	set	141
	global	_PIE1
_PIE1	set	140
	global	_TRISD
_TRISD	set	136
	global	_TRISC
_TRISC	set	135
	global	_TRISB
_TRISB	set	134
	global	_TRISA
_TRISA	set	133
	global	_OPTION_REG
_OPTION_REG	set	129
	global	_RC1IE
_RC1IE	set	1129
	global	_TX1IE
_TX1IE	set	1130
	global	_TX0IE
_TX0IE	set	1124
	global	_RC0IE
_RC0IE	set	1125
	global	_RCREG1
_RCREG1	set	286
	global	_TXREG1
_TXREG1	set	285
	global	_EECON2
_EECON2	set	284
	global	_EECON1
_EECON1	set	283
	global	_EEADR
_EEADR	set	269
	global	_EEDAT
_EEDAT	set	268
	global	_WPUC
_WPUC	set	264
	global	_WPUA
_WPUA	set	263
	global	_TRMT1
_TRMT1	set	2297
	global	_SCKP1
_SCKP1	set	2299
	global	_SYNC1
_SYNC1	set	2300
	global	_TXEN1
_TXEN1	set	2301
	global	_TX9EN1
_TX9EN1	set	2302
	global	_RD
_RD	set	2264
	global	_WR
_WR	set	2265
	global	_WREN
_WREN	set	2266
	global	_WRERR
_WRERR	set	2267
	global	_EEPGD
_EEPGD	set	2271
	global	_OERR1
_OERR1	set	2089
	global	_CREN1
_CREN1	set	2092
	global	_RX9EN1
_RX9EN1	set	2094
	global	_SPEN1
_SPEN1	set	2095
	global	___CMSNewRAM__
___CMSNewRAM__	set	416
	global	__CMS_KeySum
__CMS_KeySum	set	416
	global	__CMS_KeyReference
__CMS_KeyReference	set	456
	global	__CMS_KeyOldValue
__CMS_KeyOldValue	set	416
	global	__CMS_KeySum1
__CMS_KeySum1	set	456
	global	__CMS_KeySum0
__CMS_KeySum0	set	416
	global	__CMS_KeyNosieC
__CMS_KeyNosieC	set	416
	global	__CMS_CurStep
__CMS_CurStep	set	476
	global	__CMS_ITRIMRamMin
__CMS_ITRIMRamMin	set	456
	global	__CMS_ITRIMRamMax
__CMS_ITRIMRamMax	set	436
	global	__CMS_KeyBaseCnt
__CMS_KeyBaseCnt	set	456
	global	__CMS_KeyUpShake
__CMS_KeyUpShake	set	436
	global	__CMS_ITRIM_Ram
__CMS_ITRIM_Ram	set	416
	global	__CMS_KeyHave
__CMS_KeyHave	set	456
	global	___CMS_RAMCTR
___CMS_RAMCTR	set	415
	global	___CMS_KDMAXH
___CMS_KDMAXH	set	412
	global	___CMS_KDMAXL
___CMS_KDMAXL	set	411
	global	___CMS_KDARGH
___CMS_KDARGH	set	414
	global	___CMS_KDARGL
___CMS_KDARGL	set	413
	global	___CMS_KDMINH
___CMS_KDMINH	set	410
	global	___CMS_KDMINL
___CMS_KDMINL	set	409
	global	___CMS_KEYCON8
___CMS_KEYCON8	set	408
	global	___CMS_KEYCON7
___CMS_KEYCON7	set	407
	global	___CMS_KEYCON6
___CMS_KEYCON6	set	406
	global	___CMS_KEYCON5
___CMS_KEYCON5	set	405
	global	___CMS_KEYCON4
___CMS_KEYCON4	set	404
	global	___CMS_KEYCON3
___CMS_KEYCON3	set	403
	global	___CMS_KEYCON2
___CMS_KEYCON2	set	402
	global	___CMS_KEYCON1
___CMS_KEYCON1	set	401
	global	___CMS_KEYCON0
___CMS_KEYCON0	set	400
	
STR_1:	
	retlw	67	;'C'
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	78	;'N'
	retlw	69	;'E'
	retlw	67	;'C'
	retlw	84	;'T'
	retlw	45	;'-'
	retlw	83	;'S'
	retlw	45	;'-'
	retlw	0
psect	strings
; #config settings
	file	"DCL.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bitbssCOMMON,class=COMMON,bit,space=1,noexec
global __pbitbssCOMMON
__pbitbssCOMMON:
_g_bIsAllowedGetData:
       ds      1

_g_bIsAllowedCopyData:
       ds      1

_g_bDecodeSuccess:
       ds      1

_g_bDecodBody:
       ds      1

_g_bBitVal1Decoding:
       ds      1

_g_bBitVal0Decoding:
       ds      1

_g_bCurrPinValue:
       ds      1

psect	bitbssBANK0,class=BANK0,bit,space=1,noexec
global __pbitbssBANK0
__pbitbssBANK0:
___CMS_CheckTouchKey@_CMS_SDfst:
       ds      1

___CMS_Key_UNNOL_Check@_CMS_UnNolOver:
       ds      1

___CMS_CheckOnceResult@_CMS_KeyDownF:
       ds      1

__CMS_b_kerr:
       ds      1

__CMS_CurAdjSDfst:
       ds      1

__CMS_CurCheckOver:
       ds      1

__CMS_b_onceerr:
       ds      1

__CMS_b_over2:
       ds      1

__CMS_b_over1:
       ds      1

__CMS_b_over0:
       ds      1

_PinLow2High:
       ds      1

_PinHigh2Low:
       ds      1

Memory_Write@B_GIE_On:
       ds      1

_s_bRecvAtCmdStart:
       ds      1

_s_bRecvBleCmdStart:
       ds      1

_g_bOkKeyLPressed:
       ds      1

_g_bOkKeyPressed:
       ds      1

_g_bSetKeyPressed:
       ds      1

_g_bStartKeyPressed:
       ds      1

_g_bKeyShortPressed:
       ds      1

_g_bBtConectSuccessFlg:
       ds      1

_g_bUart1SendFlag:
       ds      1

_g_bDarkLight:
       ds      1

_g_bWhiteLedBreath:
       ds      1

_g_bRedLedBreath:
       ds      1

_KnobB:
       ds      1

_KnobA:
       ds      1

_g_bKeepWarmFlag:
       ds      1

_g_bKettleLift:
       ds      1

_B_PPG_WTDOG_OVER:
       ds      1

_B_CONDUCTION_STEP_H:
       ds      1

_B_L2_OVER_VOL:
       ds      1

_B_CUR_SURGE:
       ds      1

_B_VOL_SURGE:
       ds      1

_B_L1_OVER_VOL:
       ds      1

_g_bSendCmdBody:
       ds      1

_g_bSendCmdHead:
       ds      1

_g_bPrevPinValue:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_g_xIhProcParam:
       ds      4

_SendFifo:
       ds      4

_g_xLoopTime:
       ds      3

__CMS_KeyFlag:
       ds      3

__CMS_KeyAdrCnt:
       ds      1

__CMS_32M_CT:
       ds      1

__CMS_BANKRAM:
       ds      1

Knob_Scan@now_state:
       ds      1

vIntSendData@s_cSendCmdTimCount:
       ds      1

_s_cUart1RecvPos:
       ds      1

_g_cOkKeyCounter:
       ds      1

_g_cDisableKeyTime:
       ds      1

_g_cErrStatus:
       ds      1

_g_eSysStatus:
       ds      1

_AD_TmprIgbt:
       ds      1

_AD_TmprPan:
       ds      1

_Flag1_Error:
       ds      1

_Status1_Work:
       ds      1

_PowerWork:
       ds      1

_Work_Flag1:
       ds      1

_g_cSendCommNo:
       ds      1

_g_cDecodedPosition:
       ds      1

_g_cDecodePinHcnt:
       ds      1

_g_xSysAction:
       ds      1

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.h"
	line	36
_g_xSysSetting:
       ds      4

psect	dataBANK0
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\UIProc.h"
	line	173
_g_cWhiteLEDLight:
       ds      1

psect	dataBANK0
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\UIProc.h"
	line	172
_g_cRedLEDLight:
       ds      1

psect	dataBANK0
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\UIProc.h"
	line	41
_g_xTftContent:
       ds      5

psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
_g_lSendData:
       ds      4

_g_cReceiveData:
       ds      4

__CMS_FactorRawDat:
       ds      4

__CMS_DispKeyDown:
       ds      4

___CMS_CheckValidTime@_CMS_validtime:
       ds      2

___CMS_GetTouchKeyValue@_CMS_TimeLimit:
       ds      2

__CMS_CurOKFlag:
       ds      2

Kscan@KeyOldFlag:
       ds      2

___CMS_Key_UNNOL_Check@_CMS_UnNolTime:
       ds      1

___CMS_Key_UNNOL_Check@_CMS_UnNolSec:
       ds      1

___CMS_GetTouchKeyValue@_CMS_CurStepTemp:
       ds      1

___CMS_GetTouchKeyValue@_CMS_RAMCTRBack:
       ds      1

__CMS_CurOKFlagH:
       ds      1

__CMS_KeyCounter:
       ds      1

__CMS_32M_Dat:
       ds      1

vErrorProc@s_cPanErrCount:
       ds      1

vErrorProc@s_cIgbtErrCount:
       ds      1

vTemprProc@s_cOverTempr2Count:
       ds      1

vTemprProc@s_cOverTempr1Count:
       ds      1

vGaoyuanBoilingProc@s_cMaxTempr:
       ds      1

vGaoyuanBoilingProc@s_cDetectCount:
       ds      1

Knob_Scan@knob_stable_count:
       ds      1

Knob_Scan@knob_last_state:
       ds      1

Knob_Scan@update_state:
       ds      1

vIntSendData@s_cSendCmdBitCount:
       ds      1

Memory_Write@i:
       ds      1

_g_cT4msCounter:
       ds      1

_g_cLongPressCounter:
       ds      1

_g_cBtConectSuccessTime:
       ds      1

_g_xTftAction:
       ds      1

_g_cGapTempr:
       ds      1

_g_cSt2NoOprTimer:
       ds      1

_g_cSt1NoOprTimer:
       ds      1

_g_cKeepWarmTime:
       ds      1

_g_cLiftKettleTime:
       ds      1

_g_cSwch2SleepTime:
       ds      1

_Status_PPGStop:
       ds      1

_Flag2_Error:
       ds      1

_Status2_Work:
       ds      1

_Num_LxLowOff:
       ds      1

_Num_LxLowOn:
       ds      1

_Work_Flag2:
       ds      1

_g_cDecodePinLcnt:
       ds      1

_g_cTftCommand:
       ds      14

_g_cDecodeData:
       ds      4

psect	dataBANK1,class=BANK1,space=1,noexec
global __pdataBANK1
__pdataBANK1:
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
	line	479
_c_pConectSuccess:
       ds      1

psect	dataBANK1
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\StateMachine.h"
	line	18
_g_cLedAllOnCount:
       ds      1

psect	bssBANK2,class=BANK2,space=1,noexec
global __pbssBANK2
__pbssBANK2:
_g_xActQueue:
       ds      14

__CMS_NoiseDat:
       ds      4

_g_cUart1RecvBuff:
       ds      16

	file	"DCL.as"
	line	#
; Initialize objects allocated to BANK1
	global __pidataBANK1
psect cinit,class=CODE,delta=2,merge=1
	bsf	status, 5	;RP0=1, select bank1
	fcall	__pidataBANK1+0		;fetch initializer
	movwf	__pdataBANK1+0&07fh		
	fcall	__pidataBANK1+1		;fetch initializer
	movwf	__pdataBANK1+1&07fh		
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 5	;RP0=0, select bank0
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
	fcall	__pidataBANK0+1		;fetch initializer
	movwf	__pdataBANK0+1&07fh		
	fcall	__pidataBANK0+2		;fetch initializer
	movwf	__pdataBANK0+2&07fh		
	fcall	__pidataBANK0+3		;fetch initializer
	movwf	__pdataBANK0+3&07fh		
	fcall	__pidataBANK0+4		;fetch initializer
	movwf	__pdataBANK0+4&07fh		
	fcall	__pidataBANK0+5		;fetch initializer
	movwf	__pdataBANK0+5&07fh		
	fcall	__pidataBANK0+6		;fetch initializer
	movwf	__pdataBANK0+6&07fh		
	fcall	__pidataBANK0+7		;fetch initializer
	movwf	__pdataBANK0+7&07fh		
	fcall	__pidataBANK0+8		;fetch initializer
	movwf	__pdataBANK0+8&07fh		
	fcall	__pidataBANK0+9		;fetch initializer
	movwf	__pdataBANK0+9&07fh		
	fcall	__pidataBANK0+10		;fetch initializer
	movwf	__pdataBANK0+10&07fh		
	line	#
psect clrtext,class=CODE,delta=2
global clear_ram0
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram0:
	clrwdt			;clear the watchdog before getting into this loop
clrloop0:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop0		;do the next byte

; Clear objects allocated to BANK2
psect cinit,class=CODE,delta=2,merge=1
	bsf	status, 7	;select IRP bank2
	movlw	low(__pbssBANK2)
	movwf	fsr
	movlw	low((__pbssBANK2)+022h)
	fcall	clear_ram0
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+04Dh)
	fcall	clear_ram0
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+022h)
	fcall	clear_ram0
; Clear objects allocated to BITBANK0
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbitbssBANK0/8)+0)&07Fh
	clrf	((__pbitbssBANK0/8)+1)&07Fh
	clrf	((__pbitbssBANK0/8)+2)&07Fh
	clrf	((__pbitbssBANK0/8)+3)&07Fh
	clrf	((__pbitbssBANK0/8)+4)&07Fh
; Clear objects allocated to BITCOMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbitbssCOMMON/8)+0)&07Fh
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK2,class=BANK2,space=1,noexec
global __pcstackBANK2
__pcstackBANK2:
??_vReadSysCfg:	; 1 bytes @ 0x0
??_vCurTemprUpdate:	; 1 bytes @ 0x0
??_vSetting2Status:	; 1 bytes @ 0x0
	global	___CMS_CheckOnceResult@_CMS_KHaveC
___CMS_CheckOnceResult@_CMS_KHaveC:	; 1 bytes @ 0x0
	global	___CMS_KeyDatIIR@_CMS_TKDatTemp
___CMS_KeyDatIIR@_CMS_TKDatTemp:	; 2 bytes @ 0x0
	ds	1
	global	___CMS_CheckOnceResult@_CMS_KHaveTemp
___CMS_CheckOnceResult@_CMS_KHaveTemp:	; 1 bytes @ 0x1
	global	___CMS_CurAdjust@_CMS_TKDatTemp
___CMS_CurAdjust@_CMS_TKDatTemp:	; 2 bytes @ 0x1
	ds	1
	global	vReadSysCfg@temp2
vReadSysCfg@temp2:	; 1 bytes @ 0x2
	global	___CMS_CheckOnceResult@_CMS_KeyDown
___CMS_CheckOnceResult@_CMS_KeyDown:	; 2 bytes @ 0x2
	global	___CMS_KeyDatIIR@_CMS_TKOldTemp
___CMS_KeyDatIIR@_CMS_TKOldTemp:	; 2 bytes @ 0x2
	ds	1
	global	vReadSysCfg@temp1
vReadSysCfg@temp1:	; 1 bytes @ 0x3
	global	___CMS_CurAdjust@_CMS_CurFlagtemp
___CMS_CurAdjust@_CMS_CurFlagtemp:	; 2 bytes @ 0x3
	ds	1
	global	___CMS_KeyDatIIR@_CMS_cnt
___CMS_KeyDatIIR@_CMS_cnt:	; 1 bytes @ 0x4
	global	vCurTemprUpdate@tempr
vCurTemprUpdate@tempr:	; 2 bytes @ 0x4
	global	___CMS_CheckOnceResult@_CMS_KeyValue
___CMS_CheckOnceResult@_CMS_KeyValue:	; 2 bytes @ 0x4
	ds	1
	global	___CMS_CurAdjust@_CMS_KeySumTemp
___CMS_CurAdjust@_CMS_KeySumTemp:	; 2 bytes @ 0x5
	ds	1
	global	___CMS_CheckOnceResult@_CMS_KeyBase
___CMS_CheckOnceResult@_CMS_KeyBase:	; 2 bytes @ 0x6
	ds	1
	global	___CMS_CurAdjust@_CMS_CurFlagtempH
___CMS_CurAdjust@_CMS_CurFlagtempH:	; 1 bytes @ 0x7
	ds	1
	global	___CMS_CheckOnceResult@_CMS_templ
___CMS_CheckOnceResult@_CMS_templ:	; 1 bytes @ 0x8
	global	___CMS_CurAdjust@_CMS_cnt
___CMS_CurAdjust@_CMS_cnt:	; 1 bytes @ 0x8
	ds	1
	global	___CMS_CheckOnceResult@_CMS_flag
___CMS_CheckOnceResult@_CMS_flag:	; 1 bytes @ 0x9
	ds	1
	global	___CMS_CheckOnceResult@_CMS_cnt
___CMS_CheckOnceResult@_CMS_cnt:	; 1 bytes @ 0xA
	ds	1
??_main:	; 1 bytes @ 0xB
	ds	1
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
	global	vSetting2Status@temp
vSetting2Status@temp:	; 1 bytes @ 0x0
	ds	1
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_bQueueEn:	; 1 bit 
?_bQueueDe:	; 1 bit 
?_GetDecodeCode:	; 1 bit 
?_vEnablePWM:	; 1 bytes @ 0x0
?_vSetBuzzer:	; 1 bytes @ 0x0
?_vBtConnectProc:	; 1 bytes @ 0x0
?___CMS_GetTouchKeyValue:	; 1 bytes @ 0x0
??___CMS_GetTouchKeyValue:	; 1 bytes @ 0x0
?_vIntSendData:	; 1 bytes @ 0x0
??_vIntSendData:	; 1 bytes @ 0x0
?_vDecodeInTimer:	; 1 bytes @ 0x0
?_vInitDecoding:	; 1 bytes @ 0x0
?_vReadSysCfg:	; 1 bytes @ 0x0
?_vIntimeCopyData:	; 1 bytes @ 0x0
?_RecvDataAnalysis:	; 1 bytes @ 0x0
?___CMS_CheckTouchKey:	; 1 bytes @ 0x0
?_Knob_Scan:	; 1 bytes @ 0x0
?_vSystemStatus:	; 1 bytes @ 0x0
?_vTxDataReady:	; 1 bytes @ 0x0
?_vLedBreath:	; 1 bytes @ 0x0
?_UpdateTftDisplay:	; 1 bytes @ 0x0
?_vSysParam2Tft:	; 1 bytes @ 0x0
?_CConvert2F:	; 1 bytes @ 0x0
?_vSetPWM2:	; 1 bytes @ 0x0
?_FConvert2C:	; 1 bytes @ 0x0
?_vUpdateTargetTempr:	; 1 bytes @ 0x0
?_vSetIHPower:	; 1 bytes @ 0x0
?_vSetPWM1:	; 1 bytes @ 0x0
?_vHeatingProc:	; 1 bytes @ 0x0
?_strchr:	; 1 bytes @ 0x0
?_vInitIc:	; 1 bytes @ 0x0
?_Set_Usart_Async:	; 1 bytes @ 0x0
?_Init_ram:	; 1 bytes @ 0x0
?_Sys_set:	; 1 bytes @ 0x0
?_Kscan:	; 1 bytes @ 0x0
?_vStartKeyProc:	; 1 bytes @ 0x0
?_vSettingKeyProc:	; 1 bytes @ 0x0
?_vOkKeyProc:	; 1 bytes @ 0x0
?_vTimeLoop:	; 1 bytes @ 0x0
?_vUart0Send:	; 1 bytes @ 0x0
?_vUart1Send:	; 1 bytes @ 0x0
?_vUart1Recv:	; 1 bytes @ 0x0
?_time0:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_Memory_Read:	; 1 bytes @ 0x0
?_vClearBuzzerFlag:	; 1 bytes @ 0x0
?_vClearDecodingParam:	; 1 bytes @ 0x0
?_vPowerOffStatus:	; 1 bytes @ 0x0
?_vSleepStatus:	; 1 bytes @ 0x0
?_vSyncTemprDisplay:	; 1 bytes @ 0x0
?_vTemprIncrease:	; 1 bytes @ 0x0
?_vTemprDecrease:	; 1 bytes @ 0x0
?_vCurTemprUpdate:	; 1 bytes @ 0x0
?_vWaittingStatus:	; 1 bytes @ 0x0
?_vHeatingStatus:	; 1 bytes @ 0x0
?_vSetting1Status:	; 1 bytes @ 0x0
?_vSetting2Status:	; 1 bytes @ 0x0
?_vSwitchTftPage:	; 1 bytes @ 0x0
?_vGaoyuanBoilingProc:	; 1 bytes @ 0x0
?_vTemprProc:	; 1 bytes @ 0x0
?_vErrorProc:	; 1 bytes @ 0x0
?___CMS_KeyIsIn:	; 1 bytes @ 0x0
?___CMS_KeyClearOne:	; 1 bytes @ 0x0
?___CMS_KeyStopClear:	; 1 bytes @ 0x0
?___CMS_KeyModeSet:	; 1 bytes @ 0x0
?___CMS_CheckOnceResult:	; 1 bytes @ 0x0
?___CMS_CheckKeyOldValue:	; 1 bytes @ 0x0
?___CMS_CheckValidTime:	; 1 bytes @ 0x0
?___CurOnceOK:	; 1 bytes @ 0x0
?___CMS_CurAdjust:	; 1 bytes @ 0x0
?___CMS_Key_UNNOL_Check:	; 1 bytes @ 0x0
?___CMS_KeyDatIIR:	; 1 bytes @ 0x0
?___CMS_NewRAMClr:	; 1 bytes @ 0x0
?___GET_32M_FREDAT:	; 1 bytes @ 0x0
?___CMS_GetProPorTion:	; 1 bytes @ 0x0
?___CMS_DAT_SEND:	; 1 bytes @ 0x0
?i1_vClearDecodingParam:	; 1 bytes @ 0x0
?i1_memset:	; 1 bytes @ 0x0
	global	?_strlen
?_strlen:	; 2 bytes @ 0x0
	global	strchr@chr
strchr@chr:	; 2 bytes @ 0x0
	global	i1memset@p1
i1memset@p1:	; 2 bytes @ 0x0
	ds	2
??_strchr:	; 1 bytes @ 0x2
	global	strchr@ptr
strchr@ptr:	; 1 bytes @ 0x2
	global	i1memset@c
i1memset@c:	; 2 bytes @ 0x2
	ds	1
??_strlen:	; 1 bytes @ 0x3
	global	strlen@s
strlen@s:	; 1 bytes @ 0x3
	ds	1
	global	strlen@cp
strlen@cp:	; 1 bytes @ 0x4
	global	i1memset@n
i1memset@n:	; 2 bytes @ 0x4
	ds	1
	global	?_strncmp
?_strncmp:	; 2 bytes @ 0x5
	global	strncmp@s2
strncmp@s2:	; 1 bytes @ 0x5
	ds	1
??i1_memset:	; 1 bytes @ 0x6
	global	strncmp@len
strncmp@len:	; 2 bytes @ 0x6
	global	i1memset@p
i1memset@p:	; 2 bytes @ 0x6
	ds	2
??_vDecodeInTimer:	; 1 bytes @ 0x8
??_strncmp:	; 1 bytes @ 0x8
??i1_vClearDecodingParam:	; 1 bytes @ 0x8
	ds	2
	global	strncmp@s1
strncmp@s1:	; 1 bytes @ 0xA
	ds	1
?_strstr:	; 1 bytes @ 0xB
	global	strstr@s2
strstr@s2:	; 1 bytes @ 0xB
	ds	1
??_strstr:	; 1 bytes @ 0xC
	global	strstr@s1
strstr@s1:	; 1 bytes @ 0xC
	ds	1
??_vUart1Recv:	; 1 bytes @ 0xD
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	vUart1Recv@p
vUart1Recv@p:	; 1 bytes @ 0x0
	ds	1
	global	vUart1Recv@sum
vUart1Recv@sum:	; 1 bytes @ 0x1
	ds	1
	global	vUart1Recv@temp
vUart1Recv@temp:	; 1 bytes @ 0x2
	ds	1
??_time0:	; 1 bytes @ 0x3
	ds	4
?_Memory_Write:	; 1 bit 
??_vEnablePWM:	; 1 bytes @ 0x7
??_vSetBuzzer:	; 1 bytes @ 0x7
??_vBtConnectProc:	; 1 bytes @ 0x7
??_vIntimeCopyData:	; 1 bytes @ 0x7
??_vTxDataReady:	; 1 bytes @ 0x7
??_vLedBreath:	; 1 bytes @ 0x7
??_vSysParam2Tft:	; 1 bytes @ 0x7
??_vSetPWM2:	; 1 bytes @ 0x7
??_vUpdateTargetTempr:	; 1 bytes @ 0x7
??_vSetIHPower:	; 1 bytes @ 0x7
??_vSetPWM1:	; 1 bytes @ 0x7
?_memcpy:	; 1 bytes @ 0x7
?_Delay:	; 1 bytes @ 0x7
??_vInitIc:	; 1 bytes @ 0x7
??_Set_Usart_Async:	; 1 bytes @ 0x7
??_Init_ram:	; 1 bytes @ 0x7
??_Sys_set:	; 1 bytes @ 0x7
??_Kscan:	; 1 bytes @ 0x7
??_Memory_Read:	; 1 bytes @ 0x7
??_vClearBuzzerFlag:	; 1 bytes @ 0x7
??_vSleepStatus:	; 1 bytes @ 0x7
??___CMS_KeyIsIn:	; 1 bytes @ 0x7
?___CMS_KeyOpen:	; 1 bytes @ 0x7
?___CMS_KeyHaveDown:	; 1 bytes @ 0x7
??___CMS_KeyClearOne:	; 1 bytes @ 0x7
??___CMS_KeyModeSet:	; 1 bytes @ 0x7
??___CMS_CheckValidTime:	; 1 bytes @ 0x7
??___CurOnceOK:	; 1 bytes @ 0x7
??___CMS_KeyDatIIR:	; 1 bytes @ 0x7
??___CMS_NewRAMClr:	; 1 bytes @ 0x7
??___GET_32M_FREDAT:	; 1 bytes @ 0x7
??___CMS_GetProPorTion:	; 1 bytes @ 0x7
?___bmul:	; 1 bytes @ 0x7
?___lbmod:	; 1 bytes @ 0x7
?_memset:	; 2 bytes @ 0x7
	global	?_abs
?_abs:	; 2 bytes @ 0x7
	global	?___wmul
?___wmul:	; 2 bytes @ 0x7
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x7
	global	?___awmod
?___awmod:	; 2 bytes @ 0x7
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x7
	global	Memory_Write@Value
Memory_Write@Value:	; 1 bytes @ 0x7
	global	Memory_Read@Addr
Memory_Read@Addr:	; 1 bytes @ 0x7
	global	vSetPWM1@pVal
vSetPWM1@pVal:	; 1 bytes @ 0x7
	global	vSetPWM2@pVal
vSetPWM2@pVal:	; 1 bytes @ 0x7
	global	vSetBuzzer@bShortLong
vSetBuzzer@bShortLong:	; 1 bytes @ 0x7
	global	vSetIHPower@pow
vSetIHPower@pow:	; 1 bytes @ 0x7
	global	___CMS_KeyIsIn@_CMS_i
___CMS_KeyIsIn@_CMS_i:	; 1 bytes @ 0x7
	global	___CMS_KeyOpen@_CMS_flag
___CMS_KeyOpen@_CMS_flag:	; 1 bytes @ 0x7
	global	___CMS_KeyHaveDown@_CMS_flag
___CMS_KeyHaveDown@_CMS_flag:	; 1 bytes @ 0x7
	global	___CMS_KeyModeSet@_CMS_DLTempl
___CMS_KeyModeSet@_CMS_DLTempl:	; 1 bytes @ 0x7
	global	___CMS_NewRAMClr@_CMS_i
___CMS_NewRAMClr@_CMS_i:	; 1 bytes @ 0x7
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x7
	global	___lbmod@divisor
___lbmod@divisor:	; 1 bytes @ 0x7
	global	memcpy@s1
memcpy@s1:	; 1 bytes @ 0x7
	global	Delay@dtemp
Delay@dtemp:	; 2 bytes @ 0x7
	global	Kscan@KeyOnOutput
Kscan@KeyOnOutput:	; 2 bytes @ 0x7
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x7
	global	abs@a
abs@a:	; 2 bytes @ 0x7
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x7
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x7
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x7
	global	memset@p1
memset@p1:	; 2 bytes @ 0x7
	ds	1
??_Memory_Write:	; 1 bytes @ 0x8
??_vPowerOffStatus:	; 1 bytes @ 0x8
??_vTemprProc:	; 1 bytes @ 0x8
??_vErrorProc:	; 1 bytes @ 0x8
??___CMS_KeyOpen:	; 1 bytes @ 0x8
??___CMS_KeyHaveDown:	; 1 bytes @ 0x8
??___CMS_Key_UNNOL_Check:	; 1 bytes @ 0x8
??___bmul:	; 1 bytes @ 0x8
??___lbmod:	; 1 bytes @ 0x8
	global	Memory_Write@Addr
Memory_Write@Addr:	; 1 bytes @ 0x8
	global	___CMS_KeyIsIn@_CMS_cnt
___CMS_KeyIsIn@_CMS_cnt:	; 1 bytes @ 0x8
	global	___CMS_KeyOpen@_CMS_cnt
___CMS_KeyOpen@_CMS_cnt:	; 1 bytes @ 0x8
	global	___CMS_KeyHaveDown@_CMS_cnt
___CMS_KeyHaveDown@_CMS_cnt:	; 1 bytes @ 0x8
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x8
	global	memcpy@n
memcpy@n:	; 2 bytes @ 0x8
	ds	1
??_abs:	; 1 bytes @ 0x9
??_Delay:	; 1 bytes @ 0x9
?_Delay_nms:	; 1 bytes @ 0x9
??_vUart0Send:	; 1 bytes @ 0x9
??_vUart1Send:	; 1 bytes @ 0x9
??_vGaoyuanBoilingProc:	; 1 bytes @ 0x9
??___CMS_CheckKeyOldValue:	; 1 bytes @ 0x9
	global	vUart0Send@len
vUart0Send@len:	; 1 bytes @ 0x9
	global	vUart1Send@overT
vUart1Send@overT:	; 1 bytes @ 0x9
	global	vSysParam2Tft@item
vSysParam2Tft@item:	; 1 bytes @ 0x9
	global	vGaoyuanBoilingProc@check
vGaoyuanBoilingProc@check:	; 1 bytes @ 0x9
	global	___CMS_KeyClearOne@_CMS_cnt
___CMS_KeyClearOne@_CMS_cnt:	; 1 bytes @ 0x9
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x9
	global	___lbmod@dividend
___lbmod@dividend:	; 1 bytes @ 0x9
	global	Delay_nms@inittempl
Delay_nms@inittempl:	; 2 bytes @ 0x9
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x9
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x9
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x9
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x9
	global	memset@c
memset@c:	; 2 bytes @ 0x9
	ds	1
??_memcpy:	; 1 bytes @ 0xA
??_vSetting1Status:	; 1 bytes @ 0xA
??___CMS_KeyStopClear:	; 1 bytes @ 0xA
??___CMS_CheckOnceResult:	; 1 bytes @ 0xA
	global	vUart1Send@pos
vUart1Send@pos:	; 1 bytes @ 0xA
	global	___CMS_KeyStopClear@_CMS_i
___CMS_KeyStopClear@_CMS_i:	; 1 bytes @ 0xA
	global	___CurOnceOK@_CMS_cnt
___CurOnceOK@_CMS_cnt:	; 1 bytes @ 0xA
	global	___CMS_Key_UNNOL_Check@_CMS_UnNolFlag
___CMS_Key_UNNOL_Check@_CMS_UnNolFlag:	; 1 bytes @ 0xA
	global	___lbmod@counter
___lbmod@counter:	; 1 bytes @ 0xA
	global	vUart0Send@overT
vUart0Send@overT:	; 2 bytes @ 0xA
	ds	1
??_Delay_nms:	; 1 bytes @ 0xB
??___wmul:	; 1 bytes @ 0xB
??___awdiv:	; 1 bytes @ 0xB
??___awmod:	; 1 bytes @ 0xB
??___lwmod:	; 1 bytes @ 0xB
	global	___CMS_Key_UNNOL_Check@_CMS_cnt
___CMS_Key_UNNOL_Check@_CMS_cnt:	; 1 bytes @ 0xB
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0xB
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0xB
	global	___lbmod@rem
___lbmod@rem:	; 1 bytes @ 0xB
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0xB
	global	memcpy@d
memcpy@d:	; 1 bytes @ 0xB
	global	Delay_nms@i
Delay_nms@i:	; 2 bytes @ 0xB
	global	___CMS_CheckKeyOldValue@_CMS_KeyBaseLV
___CMS_CheckKeyOldValue@_CMS_KeyBaseLV:	; 2 bytes @ 0xB
	global	___CMS_GetProPorTion@_CMS_temp
___CMS_GetProPorTion@_CMS_temp:	; 2 bytes @ 0xB
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0xB
	global	memset@n
memset@n:	; 2 bytes @ 0xB
	ds	1
?___lbdiv:	; 1 bytes @ 0xC
	global	vUart0Send@pos
vUart0Send@pos:	; 1 bytes @ 0xC
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0xC
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0xC
	global	___lbdiv@divisor
___lbdiv@divisor:	; 1 bytes @ 0xC
	global	memcpy@s
memcpy@s:	; 1 bytes @ 0xC
	ds	1
??_bQueueEn:	; 1 bytes @ 0xD
??_memset:	; 1 bytes @ 0xD
??_bQueueDe:	; 1 bytes @ 0xD
??___lbdiv:	; 1 bytes @ 0xD
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0xD
	global	Delay_nms@gtemp
Delay_nms@gtemp:	; 1 bytes @ 0xD
	global	bQueueEn@val
bQueueEn@val:	; 1 bytes @ 0xD
	global	___CMS_CheckKeyOldValue@_CMS_VolValueOne
___CMS_CheckKeyOldValue@_CMS_VolValueOne:	; 1 bytes @ 0xD
	global	___CMS_GetProPorTion@_CMS_cnt
___CMS_GetProPorTion@_CMS_cnt:	; 1 bytes @ 0xD
	global	___lbdiv@dividend
___lbdiv@dividend:	; 1 bytes @ 0xD
	global	memcpy@d1
memcpy@d1:	; 1 bytes @ 0xD
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0xD
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0xD
	global	memset@p
memset@p:	; 2 bytes @ 0xD
	ds	1
??_Knob_Scan:	; 1 bytes @ 0xE
??_vHeatingProc:	; 1 bytes @ 0xE
??_vStartKeyProc:	; 1 bytes @ 0xE
??_vSettingKeyProc:	; 1 bytes @ 0xE
??_vOkKeyProc:	; 1 bytes @ 0xE
??_vTimeLoop:	; 1 bytes @ 0xE
??___CMS_DAT_SEND:	; 1 bytes @ 0xE
	global	bQueueDe@pVal
bQueueDe@pVal:	; 1 bytes @ 0xE
	global	vHeatingProc@TemprGap
vHeatingProc@TemprGap:	; 1 bytes @ 0xE
	global	___lbdiv@counter
___lbdiv@counter:	; 1 bytes @ 0xE
	global	___CMS_CheckKeyOldValue@_CMS_KeyOneTemp
___CMS_CheckKeyOldValue@_CMS_KeyOneTemp:	; 2 bytes @ 0xE
	ds	1
??_vInitDecoding:	; 1 bytes @ 0xF
??_RecvDataAnalysis:	; 1 bytes @ 0xF
??_GetDecodeCode:	; 1 bytes @ 0xF
??_vClearDecodingParam:	; 1 bytes @ 0xF
??_vSwitchTftPage:	; 1 bytes @ 0xF
?_vSwitchImageIcon:	; 1 bytes @ 0xF
?_vHideDisplayID:	; 1 bytes @ 0xF
??___CMS_CurAdjust:	; 1 bytes @ 0xF
	global	vSwitchTftPage@pageNum
vSwitchTftPage@pageNum:	; 1 bytes @ 0xF
	global	vSwitchImageIcon@icon
vSwitchImageIcon@icon:	; 1 bytes @ 0xF
	global	vHideDisplayID@hd
vHideDisplayID@hd:	; 1 bytes @ 0xF
	global	RecvDataAnalysis@sum
RecvDataAnalysis@sum:	; 1 bytes @ 0xF
	global	___lbdiv@quotient
___lbdiv@quotient:	; 1 bytes @ 0xF
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0xF
	ds	1
??_vSwitchImageIcon:	; 1 bytes @ 0x10
??_vHideDisplayID:	; 1 bytes @ 0x10
	global	vSwitchImageIcon@id
vSwitchImageIcon@id:	; 1 bytes @ 0x10
	global	vHideDisplayID@id
vHideDisplayID@id:	; 1 bytes @ 0x10
	global	RecvDataAnalysis@i
RecvDataAnalysis@i:	; 2 bytes @ 0x10
	global	___CMS_CheckKeyOldValue@_CMS_KeyBase
___CMS_CheckKeyOldValue@_CMS_KeyBase:	; 2 bytes @ 0x10
	ds	1
??_UpdateTftDisplay:	; 1 bytes @ 0x11
??___lwdiv:	; 1 bytes @ 0x11
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x11
	ds	1
	global	UpdateTftDisplay@tempr
UpdateTftDisplay@tempr:	; 1 bytes @ 0x12
	global	___CMS_DAT_SEND@_CMS_cnt
___CMS_DAT_SEND@_CMS_cnt:	; 1 bytes @ 0x12
	global	___CMS_CheckKeyOldValue@_CMS_KeyTemp
___CMS_CheckKeyOldValue@_CMS_KeyTemp:	; 2 bytes @ 0x12
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x12
	ds	2
??_CConvert2F:	; 1 bytes @ 0x14
??_FConvert2C:	; 1 bytes @ 0x14
	global	CConvert2F@tempC
CConvert2F@tempC:	; 1 bytes @ 0x14
	global	FConvert2C@tempF
FConvert2C@tempF:	; 1 bytes @ 0x14
	global	___CMS_CheckKeyOldValue@_CMS_KeyOldTemp
___CMS_CheckKeyOldValue@_CMS_KeyOldTemp:	; 2 bytes @ 0x14
	ds	1
	global	CConvert2F@retF
CConvert2F@retF:	; 2 bytes @ 0x15
	global	FConvert2C@retC
FConvert2C@retC:	; 2 bytes @ 0x15
	ds	1
	global	___CMS_CheckKeyOldValue@_CMS_cnt
___CMS_CheckKeyOldValue@_CMS_cnt:	; 1 bytes @ 0x16
	ds	1
??___CMS_CheckTouchKey:	; 1 bytes @ 0x17
??_vSystemStatus:	; 1 bytes @ 0x17
??_vSyncTemprDisplay:	; 1 bytes @ 0x17
??_vTemprIncrease:	; 1 bytes @ 0x17
??_vTemprDecrease:	; 1 bytes @ 0x17
??_vWaittingStatus:	; 1 bytes @ 0x17
??_vHeatingStatus:	; 1 bytes @ 0x17
;!
;!Data Sizes:
;!    Strings     11
;!    Constant    60
;!    Data        13
;!    BSS         145
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     13      14
;!    BANK0            80     23      73
;!    BANK1            80      1      80
;!    BANK2            80     12      46

;!
;!Pointer List with Targets:
;!
;!    strncmp@s2	PTR const unsigned char  size(1) Largest target is 11
;!		 -> STR_1(CODE[11]), 
;!
;!    strncmp@s1	PTR const unsigned char  size(1) Largest target is 16
;!		 -> NULL(NULL[0]), g_cUart1RecvBuff(BANK2[16]), 
;!
;!    strlen@s	PTR const unsigned char  size(1) Largest target is 11
;!		 -> STR_1(CODE[11]), 
;!
;!    strlen@cp	PTR const unsigned char  size(1) Largest target is 11
;!		 -> STR_1(CODE[11]), 
;!
;!    strchr@ptr	PTR const unsigned char  size(1) Largest target is 16
;!		 -> NULL(NULL[0]), g_cUart1RecvBuff(BANK2[16]), 
;!
;!    sp__strchr	PTR unsigned char  size(1) Largest target is 16
;!		 -> NULL(NULL[0]), g_cUart1RecvBuff(BANK2[16]), 
;!
;!    strstr@s2	PTR const unsigned char  size(1) Largest target is 11
;!		 -> STR_1(CODE[11]), 
;!
;!    strstr@s1	PTR const unsigned char  size(1) Largest target is 16
;!		 -> NULL(NULL[0]), g_cUart1RecvBuff(BANK2[16]), 
;!
;!    memset@p1	PTR void  size(2) Largest target is 16
;!		 -> g_cDecodeData(BANK1[4]), g_cUart1RecvBuff(BANK2[16]), g_cTftCommand(BANK1[14]), 
;!
;!    memset@p	PTR unsigned char  size(2) Largest target is 16
;!		 -> g_cDecodeData(BANK1[4]), g_cUart1RecvBuff(BANK2[16]), g_cTftCommand(BANK1[14]), 
;!
;!    memcpy@d1	PTR void  size(1) Largest target is 14
;!		 -> g_cTftCommand(BANK1[14]), 
;!
;!    memcpy@d	PTR unsigned char  size(1) Largest target is 14
;!		 -> g_cTftCommand(BANK1[14]), 
;!
;!    memcpy@s1	PTR const void  size(1) Largest target is 13
;!		 -> C_cHideDisplayID(CODE[13]), C_cSwitchImageIcon(CODE[11]), C_cSwitchTftPage(CODE[10]), 
;!
;!    memcpy@s	PTR const unsigned char  size(1) Largest target is 13
;!		 -> C_cHideDisplayID(CODE[13]), C_cSwitchImageIcon(CODE[11]), C_cSwitchTftPage(CODE[10]), 
;!
;!    sp__memcpy	PTR void  size(1) Largest target is 14
;!		 -> g_cTftCommand(BANK1[14]), 
;!
;!    bQueueDe@pVal	PTR enum E972 size(1) Largest target is 1
;!		 -> g_xSysAction(BANK0[1]), 
;!
;!    sp__memset	PTR void  size(2) Largest target is 16
;!		 -> g_cDecodeData(BANK1[4]), g_cUart1RecvBuff(BANK2[16]), g_cTftCommand(BANK1[14]), 
;!
;!    sp__strstr	PTR unsigned char  size(1) Largest target is 16
;!		 -> NULL(NULL[0]), g_cUart1RecvBuff(BANK2[16]), 
;!
;!    vUart1Recv@p	PTR unsigned char  size(1) Largest target is 11
;!		 -> STR_1(CODE[11]), 
;!
;!    c_pConectSuccess	PTR const unsigned char  size(1) Largest target is 11
;!		 -> STR_1(CODE[11]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _time0 in COMMON
;!
;!    _vUart1Recv->_strstr
;!    _strstr->_strncmp
;!    _strncmp->_strlen
;!    _vDecodeInTimer->i1_memset
;!    i1_vClearDecodingParam->i1_memset
;!
;!Critical Paths under _main in BANK0
;!
;!    _vUart1Send->_Delay
;!    _vTimeLoop->_bQueueEn
;!    _vSyncTemprDisplay->_CConvert2F
;!    _vSetting1Status->_vSysParam2Tft
;!    _vPowerOffStatus->_vSetPWM2
;!    _vTemprIncrease->_FConvert2C
;!    _vTemprDecrease->_FConvert2C
;!    _FConvert2C->___lwdiv
;!    _vHeatingProc->_bQueueEn
;!    _vGaoyuanBoilingProc->_Memory_Write
;!    _vCurTemprUpdate->_CConvert2F
;!    _bQueueDe->___awmod
;!    _vStartKeyProc->_bQueueEn
;!    _vSettingKeyProc->_bQueueEn
;!    _vReadSysCfg->_CConvert2F
;!    _CConvert2F->___lwdiv
;!    ___lwdiv->___wmul
;!    _vOkKeyProc->_bQueueEn
;!    _vClearDecodingParam->_memset
;!    ___CMS_CheckTouchKey->___CMS_CheckKeyOldValue
;!    ___CMS_Key_UNNOL_Check->___CMS_KeyModeSet
;!    ___CMS_KeyStopClear->___CMS_KeyClearOne
;!    ___CMS_DAT_SEND->___CMS_GetProPorTion
;!    ___CMS_CurAdjust->___awdiv
;!    ___CMS_CheckOnceResult->___CMS_KeyClearOne
;!    ___CMS_CheckKeyOldValue->___CMS_KeyIsIn
;!    _UpdateTftDisplay->_vHideDisplayID
;!    _UpdateTftDisplay->_vSwitchImageIcon
;!    _vSwitchTftPage->_memset
;!    _vSwitchImageIcon->_memset
;!    _vHideDisplayID->_memset
;!    _vUart0Send->_Delay
;!    ___lbdiv->___lbmod
;!    _vTemprProc->_vSetIHPower
;!    _vErrorProc->_vSetIHPower
;!    _GetDecodeCode->_memset
;!    _Knob_Scan->_bQueueEn
;!    _bQueueEn->___awmod
;!    _Delay_nms->_Delay
;!
;!Critical Paths under _time0 in BANK0
;!
;!    _time0->_vUart1Recv
;!
;!Critical Paths under _main in BANK1
;!
;!    _vSystemStatus->_vSetting2Status
;!
;!Critical Paths under _time0 in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    _vWaittingStatus->_vCurTemprUpdate
;!    _vHeatingStatus->_vCurTemprUpdate
;!    ___CMS_CheckTouchKey->___CMS_CheckOnceResult
;!
;!Critical Paths under _time0 in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 1     1      0   53664
;!                                             11 BANK2      1     1      0
;!                          _Delay_nms
;!                           _Init_ram
;!                          _Knob_Scan
;!                              _Kscan
;!                   _RecvDataAnalysis
;!                            _Sys_set
;!                   _UpdateTftDisplay
;!                ___CMS_CheckTouchKey
;!                      _vInitDecoding
;!                            _vInitIc
;!                    _vIntimeCopyData
;!                         _vLedBreath
;!                         _vOkKeyProc
;!                        _vReadSysCfg
;!                    _vSettingKeyProc
;!                      _vStartKeyProc
;!                      _vSystemStatus
;!                          _vTimeLoop
;!                       _vTxDataReady
;!                         _vUart1Send
;! ---------------------------------------------------------------------------------
;! (1) _vUart1Send                                           2     2      0     335
;!                                              9 BANK0      2     2      0
;!                              _Delay
;! ---------------------------------------------------------------------------------
;! (1) _vTxDataReady                                         1     1      0       0
;!                                              7 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _vTimeLoop                                            1     1      0     702
;!                                             14 BANK0      1     1      0
;!                           _bQueueEn
;!                     _vBtConnectProc
;! ---------------------------------------------------------------------------------
;! (2) _vBtConnectProc                                       0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _vSystemStatus                                        0     0      0   21668
;!                           _bQueueDe
;!                     _vHeatingStatus
;!                    _vPowerOffStatus
;!                    _vSetting1Status
;!                    _vSetting2Status
;!                       _vSleepStatus
;!                    _vWaittingStatus
;! ---------------------------------------------------------------------------------
;! (2) _vWaittingStatus                                      0     0      0    8580
;!                           _bQueueEn
;!                    _vCurTemprUpdate
;!                         _vSetBuzzer
;!                           _vSetPWM2
;!                     _vTemprDecrease
;!                     _vTemprIncrease
;! ---------------------------------------------------------------------------------
;! (2) _vSleepStatus                                         1     1      0       0
;!                                              7 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _vSetting2Status                                      3     3      0    2831
;!                                              0 BANK1      1     1      0
;!                                              0 BANK2      2     2      0
;!                       _Memory_Write
;!                  _vSyncTemprDisplay
;! ---------------------------------------------------------------------------------
;! (3) _vSyncTemprDisplay                                    0     0      0    2237
;!                         _CConvert2F
;! ---------------------------------------------------------------------------------
;! (2) _vSetting1Status                                      1     1      0     124
;!                                             10 BANK0      1     1      0
;!                      _vSysParam2Tft
;! ---------------------------------------------------------------------------------
;! (2) _vPowerOffStatus                                      0     0      0      22
;!                           _vSetPWM2
;! ---------------------------------------------------------------------------------
;! (2) _vHeatingStatus                                       0     0      0    9382
;!                    _vCurTemprUpdate
;!                       _vHeatingProc
;!                        _vSetIHPower
;!                           _vSetPWM1
;!                           _vSetPWM2
;!                     _vTemprDecrease
;!                     _vTemprIncrease
;!                 _vUpdateTargetTempr
;! ---------------------------------------------------------------------------------
;! (3) _vTemprIncrease                                       0     0      0    2268
;!                         _FConvert2C
;!                 _vUpdateTargetTempr
;! ---------------------------------------------------------------------------------
;! (3) _vTemprDecrease                                       0     0      0    2268
;!                         _FConvert2C
;!                 _vUpdateTargetTempr
;! ---------------------------------------------------------------------------------
;! (4) _vUpdateTargetTempr                                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! (4) _FConvert2C                                           3     3      0    2268
;!                                             20 BANK0      3     3      0
;!                            ___lwdiv
;!                            ___lwmod
;!                             ___wmul
;! ---------------------------------------------------------------------------------
;! (3) _vSetPWM2                                             1     1      0      22
;!                                              7 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (3) _vSetPWM1                                             1     1      0      22
;!                                              7 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (3) _vHeatingProc                                         1     1      0    1438
;!                                             14 BANK0      1     1      0
;!                           _bQueueEn
;!                _vGaoyuanBoilingProc
;!                         _vSetBuzzer
;!                        _vSetIHPower
;! ---------------------------------------------------------------------------------
;! (4) _vGaoyuanBoilingProc                                  1     1      0     552
;!                                              9 BANK0      1     1      0
;!                       _Memory_Write
;!                        _vSetIHPower
;! ---------------------------------------------------------------------------------
;! (3) _Memory_Write                                         2     1      1     452
;!                                              7 BANK0      2     1      1
;! ---------------------------------------------------------------------------------
;! (3) _vCurTemprUpdate                                      6     6      0    3298
;!                                              0 BANK2      6     6      0
;!                         _CConvert2F
;!                            ___lwdiv
;! ---------------------------------------------------------------------------------
;! (2) _bQueueDe                                             2     2      0     729
;!                                             13 BANK0      2     2      0
;!                            ___awmod
;! ---------------------------------------------------------------------------------
;! (1) _vStartKeyProc                                        0     0      0     724
;!                           _bQueueEn
;!                         _vSetBuzzer
;! ---------------------------------------------------------------------------------
;! (1) _vSettingKeyProc                                      0     0      0     724
;!                           _bQueueEn
;!                         _vSetBuzzer
;! ---------------------------------------------------------------------------------
;! (3) _vSetBuzzer                                           1     1      0      22
;!                                              7 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _vReadSysCfg                                          4     4      0    3389
;!                                              0 BANK2      4     4      0
;!                         _CConvert2F
;!                        _Memory_Read
;!                      _vSysParam2Tft
;! ---------------------------------------------------------------------------------
;! (3) _vSysParam2Tft                                        3     3      0     124
;!                                              7 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! (2) _Memory_Read                                          1     1      0      31
;!                                              7 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (4) _CConvert2F                                           3     3      0    2237
;!                                             20 BANK0      3     3      0
;!                            ___lwdiv
;!                            ___lwmod
;!                             ___wmul
;! ---------------------------------------------------------------------------------
;! (5) ___wmul                                               6     2      4     557
;!                                              7 BANK0      6     2      4
;! ---------------------------------------------------------------------------------
;! (5) ___lwmod                                              5     1      4     492
;!                                              7 BANK0      5     1      4
;! ---------------------------------------------------------------------------------
;! (5) ___lwdiv                                              7     3      4    1021
;!                                             13 BANK0      7     3      4
;!                             ___wmul (ARG)
;! ---------------------------------------------------------------------------------
;! (1) _vOkKeyProc                                           0     0      0     702
;!                           _bQueueEn
;! ---------------------------------------------------------------------------------
;! (1) _vLedBreath                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _vIntimeCopyData                                      4     4      0       0
;!                                              7 BANK0      4     4      0
;!                   _vClearBuzzerFlag
;! ---------------------------------------------------------------------------------
;! (2) _vClearBuzzerFlag                                     0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _vInitIc                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _vInitDecoding                                        0     0      0    1391
;!                _vClearDecodingParam
;! ---------------------------------------------------------------------------------
;! (2) _vClearDecodingParam                                  0     0      0    1391
;!                             _memset
;! ---------------------------------------------------------------------------------
;! (1) ___CMS_CheckTouchKey                                  0     0      0    7139
;!             ___CMS_CheckKeyOldValue
;!              ___CMS_CheckOnceResult
;!               ___CMS_CheckValidTime
;!                    ___CMS_CurAdjust
;!                     ___CMS_DAT_SEND
;!                    ___CMS_KeyDatIIR
;!                   ___CMS_KeyModeSet
;!                 ___CMS_KeyStopClear
;!              ___CMS_Key_UNNOL_Check
;!                    ___CMS_NewRAMClr
;!                   ___GET_32M_FREDAT
;! ---------------------------------------------------------------------------------
;! (2) ___GET_32M_FREDAT                                     0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) ___CMS_NewRAMClr                                      1     1      0     156
;!                                              7 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (2) ___CMS_Key_UNNOL_Check                                4     4      0     204
;!                                              8 BANK0      4     4      0
;!                   ___CMS_KeyModeSet
;! ---------------------------------------------------------------------------------
;! (3) ___CMS_KeyModeSet                                     1     1      0      23
;!                                              7 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (2) ___CMS_KeyStopClear                                   1     1      0     254
;!                                             10 BANK0      1     1      0
;!                  ___CMS_KeyClearOne
;! ---------------------------------------------------------------------------------
;! (2) ___CMS_KeyDatIIR                                     19    19      0     319
;!                                              7 BANK0     14    14      0
;!                                              0 BANK2      5     5      0
;! ---------------------------------------------------------------------------------
;! (2) ___CMS_DAT_SEND                                       5     5      0     630
;!                                             14 BANK0      5     5      0
;!                ___CMS_GetProPorTion
;!                                _abs
;! ---------------------------------------------------------------------------------
;! (3) _abs                                                  4     2      2     119
;!                                              7 BANK0      4     2      2
;! ---------------------------------------------------------------------------------
;! (3) ___CMS_GetProPorTion                                  7     7      0     267
;!                                              7 BANK0      7     7      0
;! ---------------------------------------------------------------------------------
;! (2) ___CMS_CurAdjust                                     13    13      0    2544
;!                                             15 BANK0      4     4      0
;!                                              0 BANK2      9     9      0
;!                        ___CurOnceOK
;!                            ___awdiv
;! ---------------------------------------------------------------------------------
;! (3) ___awdiv                                              8     4      4     705
;!                                              7 BANK0      8     4      4
;! ---------------------------------------------------------------------------------
;! (3) ___CurOnceOK                                          4     4      0      93
;!                                              7 BANK0      4     4      0
;! ---------------------------------------------------------------------------------
;! (2) ___CMS_CheckValidTime                                 0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) ___CMS_CheckOnceResult                               17    17      0    2118
;!                                             10 BANK0      6     6      0
;!                                              0 BANK2     11    11      0
;!                  ___CMS_KeyClearOne
;!                  ___CMS_KeyHaveDown
;!                      ___CMS_KeyIsIn
;!                      ___CMS_KeyOpen
;! ---------------------------------------------------------------------------------
;! (3) ___CMS_KeyOpen                                        2     1      1     288
;!                                              7 BANK0      2     1      1
;! ---------------------------------------------------------------------------------
;! (3) ___CMS_KeyHaveDown                                    2     1      1     285
;!                                              7 BANK0      2     1      1
;! ---------------------------------------------------------------------------------
;! (3) ___CMS_KeyClearOne                                    3     3      0     155
;!                                              7 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! (2) ___CMS_CheckKeyOldValue                              14    14      0     891
;!                                              9 BANK0     14    14      0
;!                      ___CMS_KeyIsIn
;! ---------------------------------------------------------------------------------
;! (3) ___CMS_KeyIsIn                                        2     2      0     136
;!                                              7 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _UpdateTftDisplay                                     2     2      0   13327
;!                                             17 BANK0      2     2      0
;!                             ___bmul
;!                            ___lbdiv
;!                            ___lbmod
;!                     _vHideDisplayID
;!                   _vSwitchImageIcon
;!                     _vSwitchTftPage
;! ---------------------------------------------------------------------------------
;! (2) _vSwitchTftPage                                       1     1      0    2320
;!                                             15 BANK0      1     1      0
;!                             _memcpy
;!                             _memset
;!                         _vUart0Send
;! ---------------------------------------------------------------------------------
;! (2) _vSwitchImageIcon                                     2     1      1    4886
;!                                             15 BANK0      2     1      1
;!                             _memcpy
;!                             _memset
;!                         _vUart0Send
;! ---------------------------------------------------------------------------------
;! (2) _vHideDisplayID                                       2     1      1    3196
;!                                             15 BANK0      2     1      1
;!                             _memcpy
;!                             _memset
;!                         _vUart0Send
;! ---------------------------------------------------------------------------------
;! (3) _vUart0Send                                           4     4      0     379
;!                                              9 BANK0      4     4      0
;!                              _Delay
;! ---------------------------------------------------------------------------------
;! (3) _memcpy                                               7     4      3     519
;!                                              7 BANK0      7     4      3
;! ---------------------------------------------------------------------------------
;! (2) ___lbmod                                              5     4      1    1007
;!                                              7 BANK0      5     4      1
;! ---------------------------------------------------------------------------------
;! (2) ___lbdiv                                              4     3      1     798
;!                                             12 BANK0      4     3      1
;!                            ___lbmod (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___bmul                                               3     2      1     304
;!                                              7 BANK0      3     2      1
;! ---------------------------------------------------------------------------------
;! (1) _Sys_set                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _RecvDataAnalysis                                     3     3      0    2361
;!                                             15 BANK0      3     3      0
;!                      _GetDecodeCode
;!                           _bQueueEn
;!                         _vErrorProc
;!                         _vTemprProc
;! ---------------------------------------------------------------------------------
;! (2) _vTemprProc                                           0     0      0      66
;!                        _vSetIHPower
;! ---------------------------------------------------------------------------------
;! (2) _vErrorProc                                           0     0      0      66
;!                        _vSetIHPower
;! ---------------------------------------------------------------------------------
;! (3) _vSetIHPower                                          1     1      0      66
;!                                              7 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _GetDecodeCode                                        0     0      0    1391
;!                             _memset
;! ---------------------------------------------------------------------------------
;! (3) _memset                                               8     2      6    1391
;!                                              7 BANK0      8     2      6
;! ---------------------------------------------------------------------------------
;! (1) _Kscan                                                2     2      0      90
;!                                              7 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _Knob_Scan                                            0     0      0     702
;!                           _bQueueEn
;! ---------------------------------------------------------------------------------
;! (2) _bQueueEn                                             1     1      0     702
;!                                             13 BANK0      1     1      0
;!                            ___awmod
;! ---------------------------------------------------------------------------------
;! (3) ___awmod                                              6     2      4     680
;!                                              7 BANK0      6     2      4
;! ---------------------------------------------------------------------------------
;! (1) _Init_ram                                             0     0      0       0
;!                    _Set_Usart_Async
;!                         _vEnablePWM
;! ---------------------------------------------------------------------------------
;! (2) _vEnablePWM                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _Set_Usart_Async                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Delay_nms                                            5     3      2     410
;!                                              9 BANK0      5     3      2
;!                              _Delay
;! ---------------------------------------------------------------------------------
;! (2) _Delay                                                2     0      2     287
;!                                              7 BANK0      2     0      2
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 5
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (6) _time0                                                4     4      0    2337
;!                                              3 BANK0      4     4      0
;!             ___CMS_GetTouchKeyValue
;!                     _vDecodeInTimer
;!                       _vIntSendData
;!                         _vUart1Recv
;! ---------------------------------------------------------------------------------
;! (7) _vUart1Recv                                           3     3      0    1471
;!                                              0 BANK0      3     3      0
;!                             _strstr
;!                           i1_memset
;! ---------------------------------------------------------------------------------
;! (8) _strstr                                               2     1      1     809
;!                                             11 COMMON     2     1      1
;!                             _strchr
;!                             _strlen
;!                            _strncmp
;! ---------------------------------------------------------------------------------
;! (10) _strncmp                                             6     3      3     267
;!                                              5 COMMON     6     3      3
;!                             _strlen (ARG)
;! ---------------------------------------------------------------------------------
;! (10) _strlen                                              5     2      3     117
;!                                              0 COMMON     5     2      3
;! ---------------------------------------------------------------------------------
;! (9) _strchr                                               3     1      2     168
;!                                              0 COMMON     3     1      2
;! ---------------------------------------------------------------------------------
;! (7) _vIntSendData                                         0     0      0       0
;! ---------------------------------------------------------------------------------
;! (7) _vDecodeInTimer                                       1     1      0     866
;!                                              8 COMMON     1     1      0
;!                           i1_memset
;!              i1_vClearDecodingParam
;! ---------------------------------------------------------------------------------
;! (8) i1_vClearDecodingParam                                0     0      0     433
;!                           i1_memset
;! ---------------------------------------------------------------------------------
;! (8) i1_memset                                             8     2      6     433
;!                                              0 COMMON     8     2      6
;! ---------------------------------------------------------------------------------
;! (8) ___CMS_GetTouchKeyValue                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 10
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _Delay_nms
;!     _Delay
;!   _Init_ram
;!     _Set_Usart_Async
;!     _vEnablePWM
;!   _Knob_Scan
;!     _bQueueEn
;!       ___awmod
;!   _Kscan
;!   _RecvDataAnalysis
;!     _GetDecodeCode
;!       _memset
;!     _bQueueEn
;!       ___awmod
;!     _vErrorProc
;!       _vSetIHPower
;!     _vTemprProc
;!       _vSetIHPower
;!   _Sys_set
;!   _UpdateTftDisplay
;!     ___bmul
;!     ___lbdiv
;!       ___lbmod (ARG)
;!     ___lbmod
;!     _vHideDisplayID
;!       _memcpy
;!       _memset
;!       _vUart0Send
;!         _Delay
;!     _vSwitchImageIcon
;!       _memcpy
;!       _memset
;!       _vUart0Send
;!         _Delay
;!     _vSwitchTftPage
;!       _memcpy
;!       _memset
;!       _vUart0Send
;!         _Delay
;!   ___CMS_CheckTouchKey
;!     ___CMS_CheckKeyOldValue
;!       ___CMS_KeyIsIn
;!     ___CMS_CheckOnceResult
;!       ___CMS_KeyClearOne
;!       ___CMS_KeyHaveDown
;!       ___CMS_KeyIsIn
;!       ___CMS_KeyOpen
;!     ___CMS_CheckValidTime
;!     ___CMS_CurAdjust
;!       ___CurOnceOK
;!       ___awdiv
;!     ___CMS_DAT_SEND
;!       ___CMS_GetProPorTion
;!       _abs
;!     ___CMS_KeyDatIIR
;!     ___CMS_KeyModeSet
;!     ___CMS_KeyStopClear
;!       ___CMS_KeyClearOne
;!     ___CMS_Key_UNNOL_Check
;!       ___CMS_KeyModeSet
;!     ___CMS_NewRAMClr
;!     ___GET_32M_FREDAT
;!   _vInitDecoding
;!     _vClearDecodingParam
;!       _memset
;!   _vInitIc
;!   _vIntimeCopyData
;!     _vClearBuzzerFlag
;!   _vLedBreath
;!   _vOkKeyProc
;!     _bQueueEn
;!       ___awmod
;!   _vReadSysCfg
;!     _CConvert2F
;!       ___lwdiv
;!         ___wmul (ARG)
;!       ___lwmod
;!       ___wmul
;!     _Memory_Read
;!     _vSysParam2Tft
;!   _vSettingKeyProc
;!     _bQueueEn
;!       ___awmod
;!     _vSetBuzzer
;!   _vStartKeyProc
;!     _bQueueEn
;!       ___awmod
;!     _vSetBuzzer
;!   _vSystemStatus
;!     _bQueueDe
;!       ___awmod
;!     _vHeatingStatus
;!       _vCurTemprUpdate
;!         _CConvert2F
;!           ___lwdiv
;!             ___wmul (ARG)
;!           ___lwmod
;!           ___wmul
;!         ___lwdiv
;!           ___wmul (ARG)
;!       _vHeatingProc
;!         _bQueueEn
;!           ___awmod
;!         _vGaoyuanBoilingProc
;!           _Memory_Write
;!           _vSetIHPower
;!         _vSetBuzzer
;!         _vSetIHPower
;!       _vSetIHPower
;!       _vSetPWM1
;!       _vSetPWM2
;!       _vTemprDecrease
;!         _FConvert2C
;!           ___lwdiv
;!             ___wmul (ARG)
;!           ___lwmod
;!           ___wmul
;!         _vUpdateTargetTempr
;!       _vTemprIncrease
;!         _FConvert2C
;!           ___lwdiv
;!             ___wmul (ARG)
;!           ___lwmod
;!           ___wmul
;!         _vUpdateTargetTempr
;!       _vUpdateTargetTempr
;!     _vPowerOffStatus
;!       _vSetPWM2
;!     _vSetting1Status
;!       _vSysParam2Tft
;!     _vSetting2Status
;!       _Memory_Write
;!       _vSyncTemprDisplay
;!         _CConvert2F
;!           ___lwdiv
;!             ___wmul (ARG)
;!           ___lwmod
;!           ___wmul
;!     _vSleepStatus
;!     _vWaittingStatus
;!       _bQueueEn
;!         ___awmod
;!       _vCurTemprUpdate
;!         _CConvert2F
;!           ___lwdiv
;!             ___wmul (ARG)
;!           ___lwmod
;!           ___wmul
;!         ___lwdiv
;!           ___wmul (ARG)
;!       _vSetBuzzer
;!       _vSetPWM2
;!       _vTemprDecrease
;!         _FConvert2C
;!           ___lwdiv
;!             ___wmul (ARG)
;!           ___lwmod
;!           ___wmul
;!         _vUpdateTargetTempr
;!       _vTemprIncrease
;!         _FConvert2C
;!           ___lwdiv
;!             ___wmul (ARG)
;!           ___lwmod
;!           ___wmul
;!         _vUpdateTargetTempr
;!   _vTimeLoop
;!     _bQueueEn
;!       ___awmod
;!     _vBtConnectProc
;!   _vTxDataReady
;!   _vUart1Send
;!     _Delay
;!
;! _time0 (ROOT)
;!   ___CMS_GetTouchKeyValue
;!   _vDecodeInTimer
;!     i1_memset
;!     i1_vClearDecodingParam
;!       i1_memset
;!   _vIntSendData
;!   _vUart1Recv
;!     _strstr
;!       _strchr
;!       _strlen
;!       _strncmp
;!         _strlen (ARG)
;!     i1_memset
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!BANK2               50      C      2E       7       57.5%
;!BITBANK2            50      0       0      10        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               50      1      50       6      100.0%
;!BITBANK1            50      0       0       5        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50     17      49       4       91.3%
;!BITBANK0            50      0       5       3        6.3%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      D       E       1      100.0%
;!BITCOMMON            E      0       1       0        7.1%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      D5       9        0.0%
;!ABS                  0      0      D5       8        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 587 in file "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 200/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       1
;;      Totals:         0       0       0       1
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:   10
;; This function calls:
;;		_Delay_nms
;;		_Init_ram
;;		_Knob_Scan
;;		_Kscan
;;		_RecvDataAnalysis
;;		_Sys_set
;;		_UpdateTftDisplay
;;		___CMS_CheckTouchKey
;;		_vInitDecoding
;;		_vInitIc
;;		_vIntimeCopyData
;;		_vLedBreath
;;		_vOkKeyProc
;;		_vReadSysCfg
;;		_vSettingKeyProc
;;		_vStartKeyProc
;;		_vSystemStatus
;;		_vTimeLoop
;;		_vTxDataReady
;;		_vUart1Send
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
	line	587
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
	line	587
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	589
	
l17593:	
;main.c: 589: vInitIc();
	fcall	_vInitIc
	line	590
;main.c: 590: Delay_nms(200);
	movlw	0C8h
	bcf	status, 5	;RP0=0, select bank0
	movwf	(Delay_nms@inittempl)
	clrf	(Delay_nms@inittempl+1)
	fcall	_Delay_nms
	line	591
;main.c: 591: Init_ram();
	fcall	_Init_ram
	line	594
	
l17595:	
;main.c: 594: vInitDecoding();
	fcall	_vInitDecoding
	line	596
	
l17597:	
;main.c: 596: vReadSysCfg();
	fcall	_vReadSysCfg
	line	600
	
l17599:	
;main.c: 599: {
;main.c: 600: OSCCON = 0x71;
	movlw	low(071h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(143)^080h	;volatile
	line	601
	
l17601:	
;main.c: 601: vIntimeCopyData();
	fcall	_vIntimeCopyData
	line	602
	
l17603:	
;main.c: 602: RecvDataAnalysis();
	fcall	_RecvDataAnalysis
	line	603
# 603 "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
clrwdt ;# 
psect	maintext
	line	605
	
l17605:	
;main.c: 605: vUart1Send();
	fcall	_vUart1Send
	line	606
# 606 "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
clrwdt ;# 
psect	maintext
	line	613
;main.c: 613: if (32 <= g_cT4msCounter)
	movlw	low(020h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(_g_cT4msCounter)^080h,w	;volatile
	skipc
	goto	u11511
	goto	u11510
u11511:
	goto	l17619
u11510:
	line	615
	
l17607:	
;main.c: 614: {
;main.c: 615: g_cT4msCounter = 0;
	clrf	(_g_cT4msCounter)^080h	;volatile
	line	616
	
l17609:	
;main.c: 616: g_xLoopTime.t20ms++;
	bcf	status, 5	;RP0=0, select bank0
	movf	(_g_xLoopTime),w	;volatile
	andlw	(1<<4)-1
	bsf	status, 6	;RP1=1, select bank2
	movwf	((??_main+0)^0100h+0)
	incf	(??_main+0)^0100h+0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_g_xLoopTime),w	;volatile
	bsf	status, 6	;RP1=1, select bank2
	xorwf	((??_main+0)^0100h+0),w
	andlw	not ((1<<4)-1)
	xorwf	((??_main+0)^0100h+0),w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_g_xLoopTime)	;volatile
	line	619
	
l17611:	
;main.c: 619: Sys_set();
	fcall	_Sys_set
	line	621
	
l17613:	
;main.c: 621: __CMS_CheckTouchKey();
	fcall	___CMS_CheckTouchKey
	line	623
	
l17615:	
;main.c: 623: Kscan();
	fcall	_Kscan
	line	625
	
l17617:	
;main.c: 625: Knob_Scan();
	fcall	_Knob_Scan
	line	628
	
l17619:	
;main.c: 626: }
;main.c: 628: if (5 <= g_xLoopTime.t20ms)
	bcf	status, 5	;RP0=0, select bank0
	movf	(_g_xLoopTime),w	;volatile
	andlw	(1<<4)-1
	bsf	status, 6	;RP1=1, select bank2
	movwf	(??_main+0)^0100h+0
	movlw	05h
	subwf	(??_main+0)^0100h+0,w
	skipc
	goto	u11521
	goto	u11520
u11521:
	goto	l17637
u11520:
	line	630
	
l17621:	
;main.c: 629: {
;main.c: 630: g_xLoopTime.t20ms = 0;
	movlw	((0 & ((1<<4)-1))<<0)|not (((1<<4)-1)<<0)
	bcf	status, 6	;RP1=0, select bank0
	andwf	(_g_xLoopTime),f	;volatile
	line	633
	
l17623:	
;main.c: 633: vStartKeyProc();
	fcall	_vStartKeyProc
	line	634
	
l17625:	
;main.c: 634: vSettingKeyProc();
	fcall	_vSettingKeyProc
	line	637
	
l17627:	
;main.c: 637: vOkKeyProc();
	fcall	_vOkKeyProc
	line	639
# 639 "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
clrwdt ;# 
psect	maintext
	line	641
	
l17629:	
;main.c: 641: vTimeLoop();
	fcall	_vTimeLoop
	line	643
# 643 "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
clrwdt ;# 
psect	maintext
	line	645
	
l17631:	
;main.c: 645: vSystemStatus();
	fcall	_vSystemStatus
	line	646
	
l17633:	
;main.c: 646: vTxDataReady();
	fcall	_vTxDataReady
	line	648
	
l17635:	
;main.c: 648: vLedBreath();
	fcall	_vLedBreath
	line	652
	
l17637:	
;main.c: 649: }
;main.c: 652: UpdateTftDisplay();
	fcall	_UpdateTftDisplay
	goto	l17599
	global	start
	ljmp	start
	opt stack 0
	line	654
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_vUart1Send

;; *************** function _vUart1Send *****************
;; Defined at:
;;		line 449 in file "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  pos             1   10[BANK0 ] unsigned char 
;;  overT           1    9[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/100
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       2       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_Delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	449
global __ptext1
__ptext1:	;psect for function _vUart1Send
psect	text1
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
	line	449
	global	__size_of_vUart1Send
	__size_of_vUart1Send	equ	__end_of_vUart1Send-_vUart1Send
	
_vUart1Send:	
;incstack = 0
	opt	stack 1
; Regs used in _vUart1Send: [wreg+status,2+status,0+pclath+cstack]
	line	451
	
l14857:	
;main.c: 451: if(!g_bUart1SendFlag) return;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(_g_bUart1SendFlag/8),(_g_bUart1SendFlag)&7	;volatile
	goto	u7191
	goto	u7190
u7191:
	goto	l2071
u7190:
	goto	l2072
	
l2071:	
	line	452
;main.c: 452: g_bUart1SendFlag = 0;
	bcf	(_g_bUart1SendFlag/8),(_g_bUart1SendFlag)&7	;volatile
	line	454
	
l14861:	
;main.c: 454: unsigned char overT = 0;
	clrf	(vUart1Send@overT)
	line	455
;main.c: 455: unsigned char pos = 0;
	clrf	(vUart1Send@pos)
	line	459
	
l14863:	
;main.c: 458: {
;main.c: 459: Delay(50);
	movlw	032h
	movwf	(Delay@dtemp)
	clrf	(Delay@dtemp+1)
	fcall	_Delay
	line	461
	
l14865:	
;main.c: 461: pos++;
	incf	(vUart1Send@pos),f
	line	468
# 468 "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
clrwdt ;# 
psect	text1
	line	469
	
l14867:	
;main.c: 469: Delay(50);
	movlw	032h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Delay@dtemp)
	clrf	(Delay@dtemp+1)
	fcall	_Delay
	line	470
# 470 "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
clrwdt ;# 
psect	text1
	line	472
	
l14869:	
;main.c: 472: overT++;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(vUart1Send@overT),f
	line	474
	
l14871:	
;main.c: 474: if ((50 < overT) || (pos >= 4))
	movlw	low(033h)
	subwf	(vUart1Send@overT),w
	skipnc
	goto	u7201
	goto	u7200
u7201:
	goto	l2072
u7200:
	
l14873:	
	movlw	low(04h)
	subwf	(vUart1Send@pos),w
	skipc
	goto	u7211
	goto	u7210
u7211:
	goto	l14863
u7210:
	line	477
	
l2072:	
	return
	opt stack 0
GLOBAL	__end_of_vUart1Send
	__end_of_vUart1Send:
	signat	_vUart1Send,89
	global	_vTxDataReady

;; *************** function _vTxDataReady *****************
;; Defined at:
;;		line 7 in file "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\CommSend.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\CommSend.c"
	line	7
global __ptext2
__ptext2:	;psect for function _vTxDataReady
psect	text2
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\CommSend.c"
	line	7
	global	__size_of_vTxDataReady
	__size_of_vTxDataReady	equ	__end_of_vTxDataReady-_vTxDataReady
	
_vTxDataReady:	
;incstack = 0
	opt	stack 2
; Regs used in _vTxDataReady: [wreg-fsr0h+status,2+status,0]
	line	9
	
l15483:	
;CommSend.c: 9: switch (g_cSendCommNo)
	goto	l15515
	line	16
	
l15485:	
;CommSend.c: 12: {
;CommSend.c: 16: SendFifo[3] = 0xB0;
	movlw	low(0B0h)
	movwf	0+(_SendFifo)+03h	;volatile
	line	17
;CommSend.c: 17: SendFifo[2] = Work_Flag1.all;
	movf	(_Work_Flag1),w	;volatile
	movwf	0+(_SendFifo)+02h	;volatile
	line	18
;CommSend.c: 18: SendFifo[1] = Work_Flag2.all;
	bsf	status, 5	;RP0=1, select bank1
	movf	(_Work_Flag2)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(_SendFifo)+01h	;volatile
	line	19
	
l15487:	
;CommSend.c: 19: SendFifo[0] = SendFifo[1] + SendFifo[2] + SendFifo[3];
	movf	0+(_SendFifo)+02h,w	;volatile
	addwf	0+(_SendFifo)+01h,w	;volatile
	movwf	(??_vTxDataReady+0)+0
	movf	0+(_SendFifo)+03h,w	;volatile
	addwf	0+(??_vTxDataReady+0)+0,w
	movwf	(_SendFifo)	;volatile
	line	20
	
l15489:	
;CommSend.c: 20: SendFifo[0] = ~SendFifo[0];
	comf	(_SendFifo),f	;volatile
	line	22
;CommSend.c: 21: }
;CommSend.c: 22: break;
	goto	l3239
	line	25
	
l15491:	
;CommSend.c: 24: {
;CommSend.c: 25: SendFifo[3] = 0xB1;
	movlw	low(0B1h)
	movwf	0+(_SendFifo)+03h	;volatile
	line	26
;CommSend.c: 26: if(POW_400W < PowerWork || PowerWork == 0)
	movlw	low(051h)
	subwf	(_PowerWork),w	;volatile
	skipnc
	goto	u8431
	goto	u8430
u8431:
	goto	l15495
u8430:
	
l15493:	
	movf	((_PowerWork)),w	;volatile
	btfss	status,2
	goto	u8441
	goto	u8440
u8441:
	goto	l15497
u8440:
	line	28
	
l15495:	
;CommSend.c: 27: {
;CommSend.c: 28: SendFifo[2] = PowerWork;
	movf	(_PowerWork),w	;volatile
	movwf	0+(_SendFifo)+02h	;volatile
	line	29
;CommSend.c: 29: }
	goto	l15499
	line	32
	
l15497:	
;CommSend.c: 30: else
;CommSend.c: 31: {
;CommSend.c: 32: SendFifo[2] = POW_400W;
	movlw	low(050h)
	movwf	0+(_SendFifo)+02h	;volatile
	line	35
	
l15499:	
;CommSend.c: 33: }
;CommSend.c: 35: SendFifo[1] = 0;
	clrf	0+(_SendFifo)+01h	;volatile
	line	36
	
l15501:	
;CommSend.c: 36: SendFifo[0] = SendFifo[1] + SendFifo[2] + SendFifo[3];
	movf	0+(_SendFifo)+02h,w	;volatile
	addwf	0+(_SendFifo)+01h,w	;volatile
	movwf	(??_vTxDataReady+0)+0
	movf	0+(_SendFifo)+03h,w	;volatile
	addwf	0+(??_vTxDataReady+0)+0,w
	movwf	(_SendFifo)	;volatile
	line	37
	
l15503:	
;CommSend.c: 37: SendFifo[0] = ~SendFifo[0];
	comf	(_SendFifo),f	;volatile
	line	39
;CommSend.c: 38: }
;CommSend.c: 39: break;
	goto	l3239
	line	42
	
l15505:	
;CommSend.c: 41: {
;CommSend.c: 42: SendFifo[3] = 0xB2;
	movlw	low(0B2h)
	movwf	0+(_SendFifo)+03h	;volatile
	line	65
;CommSend.c: 64: {
;CommSend.c: 65: SendFifo[2] = 16;
	movlw	low(010h)
	movwf	0+(_SendFifo)+02h	;volatile
	line	66
	
l15507:	
;CommSend.c: 66: SendFifo[1] = 0;
	clrf	0+(_SendFifo)+01h	;volatile
	line	68
	
l15509:	
;CommSend.c: 67: }
;CommSend.c: 68: SendFifo[0] = SendFifo[1] + SendFifo[2] + SendFifo[3];
	movf	0+(_SendFifo)+02h,w	;volatile
	addwf	0+(_SendFifo)+01h,w	;volatile
	movwf	(??_vTxDataReady+0)+0
	movf	0+(_SendFifo)+03h,w	;volatile
	addwf	0+(??_vTxDataReady+0)+0,w
	movwf	(_SendFifo)	;volatile
	line	69
	
l15511:	
;CommSend.c: 69: SendFifo[0] = ~SendFifo[0];
	comf	(_SendFifo),f	;volatile
	line	71
;CommSend.c: 70: }
;CommSend.c: 71: break;
	goto	l3239
	line	9
	
l15515:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_g_cSendCommNo),w	;volatile
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 0 to 2
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; direct_byte           17     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l15485
	xorlw	1^0	; case 1
	skipnz
	goto	l15491
	xorlw	2^1	; case 2
	skipnz
	goto	l15505
	goto	l3239
	opt asmopt_pop

	line	82
	
l3239:	
	return
	opt stack 0
GLOBAL	__end_of_vTxDataReady
	__end_of_vTxDataReady:
	signat	_vTxDataReady,89
	global	_vTimeLoop

;; *************** function _vTimeLoop *****************
;; Defined at:
;;		line 303 in file "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_bQueueEn
;;		_vBtConnectProc
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
	line	303
global __ptext3
__ptext3:	;psect for function _vTimeLoop
psect	text3
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
	line	303
	global	__size_of_vTimeLoop
	__size_of_vTimeLoop	equ	__end_of_vTimeLoop-_vTimeLoop
	
_vTimeLoop:	
;incstack = 0
	opt	stack 0
; Regs used in _vTimeLoop: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	305
	
l14777:	
;main.c: 305: g_xLoopTime.t100ms++;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	swapf	(_g_xLoopTime),w	;volatile
	andlw	(1<<4)-1
	movwf	((??_vTimeLoop+0)+0)
	incf	(??_vTimeLoop+0)+0
	swapf	((??_vTimeLoop+0)+0),f
	movf	(_g_xLoopTime),w	;volatile
	xorwf	((??_vTimeLoop+0)+0),w
	andlw	not (((1<<4)-1)<<4)
	xorwf	((??_vTimeLoop+0)+0),w
	movwf	(_g_xLoopTime)	;volatile
	line	306
;main.c: 306: if (g_xLoopTime.t100ms < 5) return;
	swapf	(_g_xLoopTime),w	;volatile
	andlw	(1<<4)-1
	movwf	(??_vTimeLoop+0)+0
	movlw	05h
	subwf	(??_vTimeLoop+0)+0,w
	skipnc
	goto	u7021
	goto	u7020
u7021:
	goto	l14781
u7020:
	goto	l2039
	
l14779:	
	goto	l2039
	line	307
	
l14781:	
;main.c: 307: g_xLoopTime.t100ms = 0;
	movlw	((0 & ((1<<4)-1))<<4)|not (((1<<4)-1)<<4)
	andwf	(_g_xLoopTime),f	;volatile
	line	312
;main.c: 312: g_xLoopTime.t500ms++;
	movf	0+(_g_xLoopTime)+01h,w	;volatile
	andlw	(1<<4)-1
	movwf	((??_vTimeLoop+0)+0)
	incf	(??_vTimeLoop+0)+0
	movf	0+(_g_xLoopTime)+01h,w	;volatile
	xorwf	((??_vTimeLoop+0)+0),w
	andlw	not ((1<<4)-1)
	xorwf	((??_vTimeLoop+0)+0),w
	movwf	0+(_g_xLoopTime)+01h	;volatile
	line	313
;main.c: 313: if (5 <= g_xLoopTime.t500ms)
	movf	0+(_g_xLoopTime)+01h,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_vTimeLoop+0)+0
	movlw	05h
	subwf	(??_vTimeLoop+0)+0,w
	skipc
	goto	u7031
	goto	u7030
u7031:
	goto	l14797
u7030:
	line	315
	
l14783:	
;main.c: 314: {
;main.c: 315: g_xLoopTime.t500ms = 0;
	movlw	((0 & ((1<<4)-1))<<0)|not (((1<<4)-1)<<0)
	andwf	0+(_g_xLoopTime)+01h,f	;volatile
	line	318
	
l14785:	
;main.c: 318: bQueueEn(Tim05STrig);
	movlw	low(07h)
	fcall	_bQueueEn
	line	321
	
l14787:	
;main.c: 321: if(g_eSysStatus == SETTING2)
		movlw	5
	bcf	status, 6	;RP1=0, select bank0
	xorwf	((_g_eSysStatus)),w	;volatile
	btfss	status,2
	goto	u7041
	goto	u7040
u7041:
	goto	l14797
u7040:
	line	323
	
l14789:	
;main.c: 322: {
;main.c: 323: g_cSt2NoOprTimer++;
	bsf	status, 5	;RP0=1, select bank1
	incf	(_g_cSt2NoOprTimer)^080h,f	;volatile
	line	324
	
l14791:	
;main.c: 324: if(10 <= g_cSt2NoOprTimer)
	movlw	low(0Ah)
	subwf	(_g_cSt2NoOprTimer)^080h,w	;volatile
	skipc
	goto	u7051
	goto	u7050
u7051:
	goto	l14797
u7050:
	line	326
	
l14793:	
;main.c: 325: {
;main.c: 326: g_cSt2NoOprTimer = 0;
	clrf	(_g_cSt2NoOprTimer)^080h	;volatile
	line	327
	
l14795:	
;main.c: 327: bQueueEn(Tim5SNoOpr);
	movlw	low(011h)
	fcall	_bQueueEn
	line	332
	
l14797:	
;main.c: 328: }
;main.c: 329: }
;main.c: 330: }
;main.c: 332: g_xLoopTime.t1S++;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	swapf	0+(_g_xLoopTime)+01h,w	;volatile
	andlw	(1<<4)-1
	movwf	((??_vTimeLoop+0)+0)
	incf	(??_vTimeLoop+0)+0
	swapf	((??_vTimeLoop+0)+0),f
	movf	0+(_g_xLoopTime)+01h,w	;volatile
	xorwf	((??_vTimeLoop+0)+0),w
	andlw	not (((1<<4)-1)<<4)
	xorwf	((??_vTimeLoop+0)+0),w
	movwf	0+(_g_xLoopTime)+01h	;volatile
	line	333
	
l14799:	
;main.c: 333: if (10 <= g_xLoopTime.t1S)
	swapf	0+(_g_xLoopTime)+01h,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_vTimeLoop+0)+0
	movlw	0Ah
	subwf	(??_vTimeLoop+0)+0,w
	skipc
	goto	u7061
	goto	u7060
u7061:
	goto	l2039
u7060:
	line	335
	
l14801:	
;main.c: 334: {
;main.c: 335: g_xLoopTime.t1S = 0;
	movlw	((0 & ((1<<4)-1))<<4)|not (((1<<4)-1)<<4)
	andwf	0+(_g_xLoopTime)+01h,f	;volatile
	line	338
	
l14803:	
;main.c: 338: vBtConnectProc();
	fcall	_vBtConnectProc
	line	340
	
l14805:	
;main.c: 340: g_xLoopTime.t5S++;
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(_g_xLoopTime)+02h,w	;volatile
	andlw	(1<<4)-1
	movwf	((??_vTimeLoop+0)+0)
	incf	(??_vTimeLoop+0)+0
	movf	0+(_g_xLoopTime)+02h,w	;volatile
	xorwf	((??_vTimeLoop+0)+0),w
	andlw	not ((1<<4)-1)
	xorwf	((??_vTimeLoop+0)+0),w
	movwf	0+(_g_xLoopTime)+02h	;volatile
	line	341
	
l14807:	
;main.c: 341: if (5 <= g_xLoopTime.t5S)
	movf	0+(_g_xLoopTime)+02h,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_vTimeLoop+0)+0
	movlw	05h
	subwf	(??_vTimeLoop+0)+0,w
	skipc
	goto	u7071
	goto	u7070
u7071:
	goto	l2039
u7070:
	line	343
	
l14809:	
;main.c: 342: {
;main.c: 343: g_xLoopTime.t5S = 0;
	movlw	((0 & ((1<<4)-1))<<0)|not (((1<<4)-1)<<0)
	andwf	0+(_g_xLoopTime)+02h,f	;volatile
	line	346
;main.c: 346: if(g_eSysStatus == WAITING)
		movlw	2
	xorwf	((_g_eSysStatus)),w	;volatile
	btfss	status,2
	goto	u7081
	goto	u7080
u7081:
	goto	l14819
u7080:
	line	348
	
l14811:	
;main.c: 347: {
;main.c: 348: g_cSwch2SleepTime++;
	bsf	status, 5	;RP0=1, select bank1
	incf	(_g_cSwch2SleepTime)^080h,f	;volatile
	line	349
	
l14813:	
;main.c: 349: if(36 <= g_cSwch2SleepTime)
	movlw	low(024h)
	subwf	(_g_cSwch2SleepTime)^080h,w	;volatile
	skipc
	goto	u7091
	goto	u7090
u7091:
	goto	l14843
u7090:
	line	351
	
l14815:	
;main.c: 350: {
;main.c: 351: g_cSwch2SleepTime = 0;
	clrf	(_g_cSwch2SleepTime)^080h	;volatile
	line	352
	
l14817:	
;main.c: 352: bQueueEn(Tim3MinNoOpr);
	movlw	low(09h)
	fcall	_bQueueEn
	goto	l14843
	line	355
	
l14819:	
;main.c: 355: else if(g_eSysStatus == HEATING)
		movlw	3
	xorwf	((_g_eSysStatus)),w	;volatile
	btfss	status,2
	goto	u7101
	goto	u7100
u7101:
	goto	l14833
u7100:
	line	358
	
l14821:	
;main.c: 356: {
;main.c: 358: if(g_bKettleLift)
	btfss	(_g_bKettleLift/8),(_g_bKettleLift)&7	;volatile
	goto	u7111
	goto	u7110
u7111:
	goto	l14831
u7110:
	line	360
	
l14823:	
;main.c: 359: {
;main.c: 360: g_cLiftKettleTime++;
	bsf	status, 5	;RP0=1, select bank1
	incf	(_g_cLiftKettleTime)^080h,f	;volatile
	line	361
	
l14825:	
;main.c: 361: if(60 <= g_cLiftKettleTime)
	movlw	low(03Ch)
	subwf	(_g_cLiftKettleTime)^080h,w	;volatile
	skipc
	goto	u7121
	goto	u7120
u7121:
	goto	l14843
u7120:
	line	363
	
l14827:	
;main.c: 362: {
;main.c: 363: g_cLiftKettleTime = 0;
	clrf	(_g_cLiftKettleTime)^080h	;volatile
	line	365
	
l14829:	
;main.c: 365: bQueueEn(StartKey);
	movlw	low(01h)
	fcall	_bQueueEn
	goto	l14843
	line	369
	
l14831:	
;main.c: 368: else
;main.c: 369: g_cLiftKettleTime = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(_g_cLiftKettleTime)^080h	;volatile
	goto	l14843
	line	371
	
l14833:	
;main.c: 371: else if(g_eSysStatus == SETTING1)
		movlw	4
	xorwf	((_g_eSysStatus)),w	;volatile
	btfss	status,2
	goto	u7131
	goto	u7130
u7131:
	goto	l14843
u7130:
	line	373
	
l14835:	
;main.c: 372: {
;main.c: 373: g_cSt1NoOprTimer++;
	bsf	status, 5	;RP0=1, select bank1
	incf	(_g_cSt1NoOprTimer)^080h,f	;volatile
	line	374
	
l14837:	
;main.c: 374: if(12 <= g_cSt1NoOprTimer)
	movlw	low(0Ch)
	subwf	(_g_cSt1NoOprTimer)^080h,w	;volatile
	skipc
	goto	u7141
	goto	u7140
u7141:
	goto	l14843
u7140:
	line	376
	
l14839:	
;main.c: 375: {
;main.c: 376: g_cSt1NoOprTimer = 0;
	clrf	(_g_cSt1NoOprTimer)^080h	;volatile
	line	377
	
l14841:	
;main.c: 377: bQueueEn(Tim1MNoOpr);
	movlw	low(012h)
	fcall	_bQueueEn
	line	381
	
l14843:	
;main.c: 378: }
;main.c: 379: }
;main.c: 381: g_xLoopTime.t1Min++;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	swapf	0+(_g_xLoopTime)+02h,w	;volatile
	andlw	(1<<4)-1
	movwf	((??_vTimeLoop+0)+0)
	incf	(??_vTimeLoop+0)+0
	swapf	((??_vTimeLoop+0)+0),f
	movf	0+(_g_xLoopTime)+02h,w	;volatile
	xorwf	((??_vTimeLoop+0)+0),w
	andlw	not (((1<<4)-1)<<4)
	xorwf	((??_vTimeLoop+0)+0),w
	movwf	0+(_g_xLoopTime)+02h	;volatile
	line	382
	
l14845:	
;main.c: 382: if (12 <= g_xLoopTime.t1Min)
	swapf	0+(_g_xLoopTime)+02h,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_vTimeLoop+0)+0
	movlw	0Ch
	subwf	(??_vTimeLoop+0)+0,w
	skipc
	goto	u7151
	goto	u7150
u7151:
	goto	l2039
u7150:
	line	384
	
l14847:	
;main.c: 383: {
;main.c: 384: g_xLoopTime.t1Min = 0;
	movlw	((0 & ((1<<4)-1))<<4)|not (((1<<4)-1)<<4)
	andwf	0+(_g_xLoopTime)+02h,f	;volatile
	line	387
;main.c: 387: if(g_eSysStatus== HEATING)
		movlw	3
	xorwf	((_g_eSysStatus)),w	;volatile
	btfss	status,2
	goto	u7161
	goto	u7160
u7161:
	goto	l2039
u7160:
	line	389
	
l14849:	
;main.c: 388: {
;main.c: 389: if(g_bKeepWarmFlag)
	btfss	(_g_bKeepWarmFlag/8),(_g_bKeepWarmFlag)&7	;volatile
	goto	u7171
	goto	u7170
u7171:
	goto	l2039
u7170:
	line	391
	
l14851:	
;main.c: 390: {
;main.c: 391: g_cKeepWarmTime++;
	bsf	status, 5	;RP0=1, select bank1
	incf	(_g_cKeepWarmTime)^080h,f	;volatile
	line	392
	
l14853:	
;main.c: 392: if(g_xSysSetting.KWTime < g_cKeepWarmTime)
	movf	(_g_cKeepWarmTime)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	subwf	0+(_g_xSysSetting)+02h,w	;volatile
	skipnc
	goto	u7181
	goto	u7180
u7181:
	goto	l14779
u7180:
	line	394
	
l14855:	
;main.c: 393: {
;main.c: 394: bQueueEn(StartKey);
	movlw	low(01h)
	fcall	_bQueueEn
	line	401
	
l2039:	
	return
	opt stack 0
GLOBAL	__end_of_vTimeLoop
	__end_of_vTimeLoop:
	signat	_vTimeLoop,89
	global	_vBtConnectProc

;; *************** function _vBtConnectProc *****************
;; Defined at:
;;		line 32 in file "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\PotProc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 200/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_vTimeLoop
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\PotProc.c"
	line	32
global __ptext4
__ptext4:	;psect for function _vBtConnectProc
psect	text4
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\PotProc.c"
	line	32
	global	__size_of_vBtConnectProc
	__size_of_vBtConnectProc	equ	__end_of_vBtConnectProc-_vBtConnectProc
	
_vBtConnectProc:	
;incstack = 0
	opt	stack 1
; Regs used in _vBtConnectProc: [wreg+status,2+status,0]
	line	34
	
l13595:	
;PotProc.c: 34: if(g_bBtConectSuccessFlg)
	btfss	(_g_bBtConectSuccessFlg/8),(_g_bBtConectSuccessFlg)&7	;volatile
	goto	u5511
	goto	u5510
u5511:
	goto	l13613
u5510:
	line	36
	
l13597:	
;PotProc.c: 35: {
;PotProc.c: 36: if(g_eSysStatus == WAITING || g_eSysStatus== HEATING)
		movlw	2
	xorwf	((_g_eSysStatus)),w	;volatile
	btfsc	status,2
	goto	u5521
	goto	u5520
u5521:
	goto	l7951
u5520:
	
l13599:	
		movlw	3
	xorwf	((_g_eSysStatus)),w	;volatile
	btfss	status,2
	goto	u5531
	goto	u5530
u5531:
	goto	l13605
u5530:
	
l7951:	
	line	38
;PotProc.c: 37: {
;PotProc.c: 38: if(g_xTftContent.BtOnOff == 1)
	btfss	(_g_xTftContent),3	;volatile
	goto	u5541
	goto	u5540
u5541:
	goto	l13605
u5540:
	line	40
	
l13601:	
;PotProc.c: 39: {
;PotProc.c: 40: g_xTftContent.BtOnOff = 0;
	bcf	(_g_xTftContent),3	;volatile
	line	41
	
l13603:	
;PotProc.c: 41: g_xTftAction = UpdBtIcon;
	movlw	low(04h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_g_xTftAction)^080h	;volatile
	line	47
	
l13605:	
;PotProc.c: 43: }
;PotProc.c: 44: }
;PotProc.c: 47: g_bUart1SendFlag=1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(_g_bUart1SendFlag/8),(_g_bUart1SendFlag)&7	;volatile
	line	49
	
l13607:	
;PotProc.c: 49: g_cBtConectSuccessTime++;
	bsf	status, 5	;RP0=1, select bank1
	incf	(_g_cBtConectSuccessTime)^080h,f	;volatile
	line	50
	
l13609:	
;PotProc.c: 50: if(3 < g_cBtConectSuccessTime)
	movlw	low(04h)
	subwf	(_g_cBtConectSuccessTime)^080h,w	;volatile
	skipc
	goto	u5551
	goto	u5550
u5551:
	goto	l7959
u5550:
	line	58
	
l13611:	
;PotProc.c: 51: {
;PotProc.c: 57: {
;PotProc.c: 58: g_bBtConectSuccessFlg = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(_g_bBtConectSuccessFlg/8),(_g_bBtConectSuccessFlg)&7	;volatile
	goto	l7959
	line	65
	
l13613:	
;PotProc.c: 63: else
;PotProc.c: 64: {
;PotProc.c: 65: if(g_eSysStatus == WAITING || g_eSysStatus== HEATING)
		movlw	2
	xorwf	((_g_eSysStatus)),w	;volatile
	btfsc	status,2
	goto	u5561
	goto	u5560
u5561:
	goto	l7957
u5560:
	
l13615:	
		movlw	3
	xorwf	((_g_eSysStatus)),w	;volatile
	btfss	status,2
	goto	u5571
	goto	u5570
u5571:
	goto	l7959
u5570:
	
l7957:	
	line	67
;PotProc.c: 66: {
;PotProc.c: 67: if(0==g_xTftContent.BtOnOff)
	btfsc	(_g_xTftContent),3	;volatile
	goto	u5581
	goto	u5580
u5581:
	goto	l7959
u5580:
	line	69
	
l13617:	
;PotProc.c: 68: {
;PotProc.c: 69: g_xTftContent.BtOnOff = 1;
	bsf	(_g_xTftContent),3	;volatile
	line	70
	
l13619:	
;PotProc.c: 70: g_xTftAction = UpdBtIcon;
	movlw	low(04h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_g_xTftAction)^080h	;volatile
	line	74
	
l7959:	
	return
	opt stack 0
GLOBAL	__end_of_vBtConnectProc
	__end_of_vBtConnectProc:
	signat	_vBtConnectProc,89
	global	_vSystemStatus

;; *************** function _vSystemStatus *****************
;; Defined at:
;;		line 475 in file "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\StateMachine.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    9
;; This function calls:
;;		_bQueueDe
;;		_vHeatingStatus
;;		_vPowerOffStatus
;;		_vSetting1Status
;;		_vSetting2Status
;;		_vSleepStatus
;;		_vWaittingStatus
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\StateMachine.c"
	line	475
global __ptext5
__ptext5:	;psect for function _vSystemStatus
psect	text5
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\StateMachine.c"
	line	475
	global	__size_of_vSystemStatus
	__size_of_vSystemStatus	equ	__end_of_vSystemStatus-_vSystemStatus
	
_vSystemStatus:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _vSystemStatus: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	477
	
l17321:	
;StateMachine.c: 477: g_xSysAction = ActIdle;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_g_xSysAction)	;volatile
	line	478
	
l17323:	
;StateMachine.c: 478: bQueueDe(&g_xSysAction);
	movlw	(low(_g_xSysAction|((0x0)<<8)))&0ffh
	fcall	_bQueueDe
	line	480
;StateMachine.c: 480: switch(g_eSysStatus)
	goto	l17339
	line	483
	
l17325:	
;StateMachine.c: 483: vPowerOffStatus();
	fcall	_vPowerOffStatus
	line	484
;StateMachine.c: 484: break;
	goto	l5652
	line	486
	
l17327:	
;StateMachine.c: 486: vSleepStatus();
	fcall	_vSleepStatus
	line	487
;StateMachine.c: 487: break;
	goto	l5652
	line	489
	
l17329:	
;StateMachine.c: 489: vWaittingStatus();
	fcall	_vWaittingStatus
	line	490
;StateMachine.c: 490: break;
	goto	l5652
	line	492
	
l17331:	
;StateMachine.c: 492: vHeatingStatus();
	fcall	_vHeatingStatus
	line	493
;StateMachine.c: 493: break;
	goto	l5652
	line	495
	
l17333:	
;StateMachine.c: 495: vSetting1Status();
	fcall	_vSetting1Status
	line	496
;StateMachine.c: 496: break;
	goto	l5652
	line	498
	
l17335:	
;StateMachine.c: 498: vSetting2Status();
	fcall	_vSetting2Status
	line	499
;StateMachine.c: 499: break;
	goto	l5652
	line	480
	
l17339:	
	bcf	status, 6	;RP1=0, select bank0
	movf	(_g_eSysStatus),w	;volatile
	; Switch size 1, requested type "space"
; Number of cases is 6, Range of values is 0 to 5
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           19    10 (average)
; direct_byte           26     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l17325
	xorlw	1^0	; case 1
	skipnz
	goto	l17327
	xorlw	2^1	; case 2
	skipnz
	goto	l17329
	xorlw	3^2	; case 3
	skipnz
	goto	l17331
	xorlw	4^3	; case 4
	skipnz
	goto	l17333
	xorlw	5^4	; case 5
	skipnz
	goto	l17335
	goto	l5652
	opt asmopt_pop

	line	503
	
l5652:	
	return
	opt stack 0
GLOBAL	__end_of_vSystemStatus
	__end_of_vSystemStatus:
	signat	_vSystemStatus,89
	global	_vWaittingStatus

;; *************** function _vWaittingStatus *****************
;; Defined at:
;;		line 180 in file "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\StateMachine.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_bQueueEn
;;		_vCurTemprUpdate
;;		_vSetBuzzer
;;		_vSetPWM2
;;		_vTemprDecrease
;;		_vTemprIncrease
;; This function is called by:
;;		_vSystemStatus
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	line	180
global __ptext6
__ptext6:	;psect for function _vWaittingStatus
psect	text6
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\StateMachine.c"
	line	180
	global	__size_of_vWaittingStatus
	__size_of_vWaittingStatus	equ	__end_of_vWaittingStatus-_vWaittingStatus
	
_vWaittingStatus:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _vWaittingStatus: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	182
	
l16357:	
;StateMachine.c: 182: switch(g_xSysAction)
	goto	l16399
	line	185
	
l16359:	
;StateMachine.c: 185: g_xTftAction = SwchPage;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_g_xTftAction)^080h	;volatile
	line	186
	
l16361:	
;StateMachine.c: 186: g_cSwch2SleepTime = 0;
	clrf	(_g_cSwch2SleepTime)^080h	;volatile
	line	187
	
l16363:	
;StateMachine.c: 187: g_eSysStatus = SLEEPING;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_g_eSysStatus)	;volatile
	line	188
;StateMachine.c: 188: break;
	goto	l5545
	line	190
	
l16365:	
;StateMachine.c: 190: g_cSwch2SleepTime=0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(_g_cSwch2SleepTime)^080h	;volatile
	line	191
	
l16367:	
;StateMachine.c: 191: if(g_bBtConectSuccessFlg)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(_g_bBtConectSuccessFlg/8),(_g_bBtConectSuccessFlg)&7	;volatile
	goto	u9651
	goto	u9650
u9651:
	goto	l16377
u9650:
	line	194
	
l16369:	
;StateMachine.c: 192: {
;StateMachine.c: 194: g_eSysStatus = HEATING;
	movlw	low(03h)
	movwf	(_g_eSysStatus)	;volatile
	line	195
;StateMachine.c: 195: g_xTftAction = UpdDogIcon;
	movlw	low(07h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_g_xTftAction)^080h	;volatile
	line	196
	
l16371:	
;StateMachine.c: 196: vSetPWM2(205);
	movlw	low(0CDh)
	fcall	_vSetPWM2
	line	197
	
l16373:	
;StateMachine.c: 197: g_bRedLedBreath = 1;
	bsf	(_g_bRedLedBreath/8),(_g_bRedLedBreath)&7	;volatile
	line	200
	
l16375:	
;StateMachine.c: 200: bQueueEn(StartHeat);
	movlw	low(0Dh)
	fcall	_bQueueEn
	line	201
;StateMachine.c: 201: }
	goto	l5545
	line	204
	
l16377:	
;StateMachine.c: 202: else
;StateMachine.c: 203: {
;StateMachine.c: 204: vSetBuzzer(1);
	movlw	low(01h)
	fcall	_vSetBuzzer
	goto	l5545
	line	208
	
l16379:	
;StateMachine.c: 208: g_eSysStatus = SETTING1;
	movlw	low(04h)
	movwf	(_g_eSysStatus)	;volatile
	line	209
;StateMachine.c: 209: g_xTftAction = SwchPage;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_g_xTftAction)^080h	;volatile
	line	210
	
l16381:	
;StateMachine.c: 210: g_cSwch2SleepTime=0;
	clrf	(_g_cSwch2SleepTime)^080h	;volatile
	line	211
;StateMachine.c: 211: break;
	goto	l5545
	line	213
	
l16383:	
;StateMachine.c: 213: vTemprIncrease();
	fcall	_vTemprIncrease
	goto	l16381
	line	217
	
l16387:	
;StateMachine.c: 217: vTemprDecrease();
	fcall	_vTemprDecrease
	goto	l16381
	line	221
	
l16391:	
;StateMachine.c: 221: if(g_xIhProcParam.PrevTempr != g_xIhProcParam.CurTempr)
	movf	0+(_g_xIhProcParam)+03h,w	;volatile
	xorwf	(_g_xIhProcParam),w	;volatile
	skipnz
	goto	u9661
	goto	u9660
u9661:
	goto	l5545
u9660:
	line	223
	
l16393:	
;StateMachine.c: 222: {
;StateMachine.c: 223: g_xIhProcParam.PrevTempr = g_xIhProcParam.CurTempr;
	movf	(_g_xIhProcParam),w	;volatile
	movwf	0+(_g_xIhProcParam)+03h	;volatile
	line	224
	
l16395:	
;StateMachine.c: 224: vCurTemprUpdate();
	fcall	_vCurTemprUpdate
	goto	l5545
	line	182
	
l16399:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_g_xSysAction),w	;volatile
	; Switch size 1, requested type "space"
; Number of cases is 6, Range of values is 1 to 9
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           19    10 (average)
; direct_byte           38    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l16365
	xorlw	2^1	; case 2
	skipnz
	goto	l16379
	xorlw	3^2	; case 3
	skipnz
	goto	l16383
	xorlw	4^3	; case 4
	skipnz
	goto	l16387
	xorlw	7^4	; case 7
	skipnz
	goto	l16391
	xorlw	9^7	; case 9
	skipnz
	goto	l16359
	goto	l5545
	opt asmopt_pop

	line	230
	
l5545:	
	return
	opt stack 0
GLOBAL	__end_of_vWaittingStatus
	__end_of_vWaittingStatus:
	signat	_vWaittingStatus,89
	global	_vSleepStatus

;; *************** function _vSleepStatus *****************
;; Defined at:
;;		line 25 in file "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\StateMachine.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 200/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_vSystemStatus
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	line	25
global __ptext7
__ptext7:	;psect for function _vSleepStatus
psect	text7
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\StateMachine.c"
	line	25
	global	__size_of_vSleepStatus
	__size_of_vSleepStatus	equ	__end_of_vSleepStatus-_vSleepStatus
	
_vSleepStatus:	
;incstack = 0
	opt	stack 1
; Regs used in _vSleepStatus: [wreg-fsr0h+status,2+status,0]
	line	27
	
l13705:	
;StateMachine.c: 27: switch (g_xSysAction)
	goto	l13721
	line	30
	
l13707:	
;StateMachine.c: 30: if(g_xTftContent.Sleep < 3)
	movf	(_g_xTftContent),w	;volatile
	andlw	(1<<2)-1
	xorlw	03h
	skipnz
	goto	u5681
	goto	u5680
u5681:
	goto	l13711
u5680:
	line	31
	
l13709:	
;StateMachine.c: 31: g_xTftContent.Sleep++;
	movf	(_g_xTftContent),w	;volatile
	andlw	(1<<2)-1
	movwf	((??_vSleepStatus+0)+0)
	incf	(??_vSleepStatus+0)+0
	movf	(_g_xTftContent),w	;volatile
	xorwf	((??_vSleepStatus+0)+0),w
	andlw	not ((1<<2)-1)
	xorwf	((??_vSleepStatus+0)+0),w
	movwf	(_g_xTftContent)	;volatile
	goto	l13713
	line	33
	
l13711:	
;StateMachine.c: 32: else
;StateMachine.c: 33: g_xTftContent.Sleep=0;
	movlw	((0 & ((1<<2)-1))<<0)|not (((1<<2)-1)<<0)
	andwf	(_g_xTftContent),f	;volatile
	line	35
	
l13713:	
;StateMachine.c: 35: g_xTftAction = UpdSleepIcon;
	movlw	low(08h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_g_xTftAction)^080h	;volatile
	line	36
;StateMachine.c: 36: break;
	goto	l5484
	line	40
	
l5481:	
	line	42
	
l13715:	
;StateMachine.c: 38: case SetKey:
;StateMachine.c: 39: case OkKey:
;StateMachine.c: 40: case IncSKey:
;StateMachine.c: 41: case DecSKey:
;StateMachine.c: 42: g_xTftAction = SwchPage;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_g_xTftAction)^080h	;volatile
	line	43
;StateMachine.c: 43: g_eSysStatus = WAITING;
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_g_eSysStatus)	;volatile
	line	44
	
l13717:	
;StateMachine.c: 44: g_cSwch2SleepTime = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(_g_cSwch2SleepTime)^080h	;volatile
	line	46
;StateMachine.c: 46: break;
	goto	l5484
	line	27
	
l13721:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_g_xSysAction),w	;volatile
	; Switch size 1, requested type "space"
; Number of cases is 6, Range of values is 1 to 7
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           19    10 (average)
; direct_byte           32    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l5481
	xorlw	2^1	; case 2
	skipnz
	goto	l13715
	xorlw	3^2	; case 3
	skipnz
	goto	l13715
	xorlw	4^3	; case 4
	skipnz
	goto	l13715
	xorlw	5^4	; case 5
	skipnz
	goto	l13715
	xorlw	7^5	; case 7
	skipnz
	goto	l13707
	goto	l5484
	opt asmopt_pop

	line	50
	
l5484:	
	return
	opt stack 0
GLOBAL	__end_of_vSleepStatus
	__end_of_vSleepStatus:
	signat	_vSleepStatus,89
	global	_vSetting2Status

;; *************** function _vSetting2Status *****************
;; Defined at:
;;		line 352 in file "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\StateMachine.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  temp            1    0[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 200/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       1       0
;;      Temps:          0       0       0       2
;;      Totals:         0       0       1       2
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_Memory_Write
;;		_vSyncTemprDisplay
;; This function is called by:
;;		_vSystemStatus
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	line	352
global __ptext8
__ptext8:	;psect for function _vSetting2Status
psect	text8
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\StateMachine.c"
	line	352
	global	__size_of_vSetting2Status
	__size_of_vSetting2Status	equ	__end_of_vSetting2Status-_vSetting2Status
	
_vSetting2Status:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _vSetting2Status: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	354
	
l16481:	
;StateMachine.c: 354: switch (g_xSysAction)
	goto	l16593
	line	357
	
l16483:	
;StateMachine.c: 357: g_eSysStatus = WAITING;
	movlw	low(02h)
	movwf	(_g_eSysStatus)	;volatile
	line	358
;StateMachine.c: 358: g_xTftAction = SwchPage;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_g_xTftAction)^080h	;volatile
	line	360
	
l16485:	
;StateMachine.c: 360: if(0<g_xSysSetting.KWTime)
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(_g_xSysSetting)+02h),w	;volatile
	btfsc	status,2
	goto	u9721
	goto	u9720
u9721:
	goto	l5597
u9720:
	line	361
	
l16487:	
;StateMachine.c: 361: g_xTftContent.KWOnOff=0;
	bcf	(_g_xTftContent),4	;volatile
	goto	l5620
	line	362
	
l5597:	
	line	363
;StateMachine.c: 362: else
;StateMachine.c: 363: g_xTftContent.KWOnOff=1;
	bsf	(_g_xTftContent),4	;volatile
	goto	l5620
	line	367
	
l16489:	
;StateMachine.c: 366: case OkKey:
;StateMachine.c: 367: g_eSysStatus = SETTING1;
	movlw	low(04h)
	movwf	(_g_eSysStatus)	;volatile
	line	368
;StateMachine.c: 368: g_xTftAction = SwchPage;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_g_xTftAction)^080h	;volatile
	line	369
	
l16491:	
;StateMachine.c: 369: g_cSt1NoOprTimer = 0;
	clrf	(_g_cSt1NoOprTimer)^080h	;volatile
	line	370
;StateMachine.c: 370: break;
	goto	l5620
	line	372
	
l16493:	
;StateMachine.c: 372: if(g_xTftContent.sVal < 3)
	rrf	0+(_g_xTftContent)+01h,w	;volatile
	bsf	status, 6	;RP1=1, select bank2
	movwf	(??_vSetting2Status+0)^0100h+0
	rrf	(??_vSetting2Status+0)^0100h+0,f
	rrf	(??_vSetting2Status+0)^0100h+0,w
	andlw	(1<<2)-1
	xorlw	03h
	skipnz
	goto	u9731
	goto	u9730
u9731:
	goto	l5603
u9730:
	line	373
	
l16495:	
;StateMachine.c: 373: g_xTftContent.sVal += 1;
	bcf	status, 6	;RP1=0, select bank0
	rrf	0+(_g_xTftContent)+01h,w	;volatile
	bsf	status, 6	;RP1=1, select bank2
	movwf	((??_vSetting2Status+0)^0100h+0)
	rrf	((??_vSetting2Status+0)^0100h+0),f
	rrf	((??_vSetting2Status+0)^0100h+0),w
	andlw	(1<<2)-1
	movwf	((??_vSetting2Status+0)^0100h+0)
	incf	(??_vSetting2Status+0)^0100h+0
	rlf	((??_vSetting2Status+0)^0100h+0),f
	rlf	((??_vSetting2Status+0)^0100h+0),f
	rlf	((??_vSetting2Status+0)^0100h+0),f
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_g_xTftContent)+01h,w	;volatile
	bsf	status, 6	;RP1=1, select bank2
	xorwf	((??_vSetting2Status+0)^0100h+0),w
	andlw	not (((1<<2)-1)<<3)
	xorwf	((??_vSetting2Status+0)^0100h+0),w
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(_g_xTftContent)+01h	;volatile
	
l5603:	
	line	376
;StateMachine.c: 375: unsigned char temp;
;StateMachine.c: 376: if(g_xTftContent.sItem==0)
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_g_xTftContent)+01h,w	;volatile
	andlw	(1<<3)-1
	xorlw	0
	skipz
	goto	u9741
	goto	u9740
u9741:
	goto	l16511
u9740:
	line	378
	
l16497:	
;StateMachine.c: 377: {
;StateMachine.c: 378: if(2<g_xTftContent.sVal)
	rrf	0+(_g_xTftContent)+01h,w	;volatile
	bsf	status, 6	;RP1=1, select bank2
	movwf	(??_vSetting2Status+0)^0100h+0
	rrf	(??_vSetting2Status+0)^0100h+0,f
	rrf	(??_vSetting2Status+0)^0100h+0,w
	andlw	(1<<2)-1
	xorlw	03h
	skipz
	goto	u9751
	goto	u9750
u9751:
	goto	l5605
u9750:
	line	379
	
l16499:	
;StateMachine.c: 379: g_xTftContent.sVal = 0;
	movlw	((0 & ((1<<2)-1))<<3)|not (((1<<2)-1)<<3)
	bcf	status, 6	;RP1=0, select bank0
	andwf	0+(_g_xTftContent)+01h,f	;volatile
	
l5605:	
	line	382
;StateMachine.c: 382: if(g_xTftContent.sVal==1)
	bcf	status, 6	;RP1=0, select bank0
	rrf	0+(_g_xTftContent)+01h,w	;volatile
	bsf	status, 6	;RP1=1, select bank2
	movwf	(??_vSetting2Status+0)^0100h+0
	rrf	(??_vSetting2Status+0)^0100h+0,f
	rrf	(??_vSetting2Status+0)^0100h+0,w
	andlw	(1<<2)-1
	xorlw	01h
	skipz
	goto	u9761
	goto	u9760
u9761:
	goto	l16503
u9760:
	line	383
	
l16501:	
;StateMachine.c: 383: g_xSysSetting.KWTime = 30;
	movlw	low(01Eh)
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(_g_xSysSetting)+02h	;volatile
	goto	l16509
	line	384
	
l16503:	
;StateMachine.c: 384: else if(g_xTftContent.sVal==2)
	bcf	status, 6	;RP1=0, select bank0
	rrf	0+(_g_xTftContent)+01h,w	;volatile
	bsf	status, 6	;RP1=1, select bank2
	movwf	(??_vSetting2Status+0)^0100h+0
	rrf	(??_vSetting2Status+0)^0100h+0,f
	rrf	(??_vSetting2Status+0)^0100h+0,w
	andlw	(1<<2)-1
	xorlw	02h
	skipz
	goto	u9771
	goto	u9770
u9771:
	goto	l16507
u9770:
	line	385
	
l16505:	
;StateMachine.c: 385: g_xSysSetting.KWTime = 60;
	movlw	low(03Ch)
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(_g_xSysSetting)+02h	;volatile
	goto	l16509
	line	387
	
l16507:	
;StateMachine.c: 386: else
;StateMachine.c: 387: g_xSysSetting.KWTime = 0;
	bcf	status, 6	;RP1=0, select bank0
	clrf	0+(_g_xSysSetting)+02h	;volatile
	line	390
	
l16509:	
;StateMachine.c: 390: temp = g_xSysSetting.KWTime + 1;
	movf	0+(_g_xSysSetting)+02h,w	;volatile
	addlw	01h
	bsf	status, 5	;RP0=1, select bank1
	movwf	(vSetting2Status@temp)^080h
	line	391
;StateMachine.c: 391: }
	goto	l16533
	line	394
	
l16511:	
;StateMachine.c: 392: else
;StateMachine.c: 393: {
;StateMachine.c: 394: if(1<g_xTftContent.sVal)
	rrf	0+(_g_xTftContent)+01h,w	;volatile
	bsf	status, 6	;RP1=1, select bank2
	movwf	(??_vSetting2Status+0)^0100h+0
	rrf	(??_vSetting2Status+0)^0100h+0,f
	rrf	(??_vSetting2Status+0)^0100h+0,w
	andlw	(1<<2)-1
	movwf	(??_vSetting2Status+1)^0100h+0
	movlw	02h
	subwf	(??_vSetting2Status+1)^0100h+0,w
	skipc
	goto	u9781
	goto	u9780
u9781:
	goto	l5611
u9780:
	line	395
	
l16513:	
;StateMachine.c: 395: g_xTftContent.sVal = 0;
	movlw	((0 & ((1<<2)-1))<<3)|not (((1<<2)-1)<<3)
	bcf	status, 6	;RP1=0, select bank0
	andwf	0+(_g_xTftContent)+01h,f	;volatile
	
l5611:	
	line	398
;StateMachine.c: 398: if(g_xTftContent.sItem==1)
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_g_xTftContent)+01h,w	;volatile
	andlw	(1<<3)-1
	xorlw	01h
	skipz
	goto	u9791
	goto	u9790
u9791:
	goto	l16517
u9790:
	line	399
	
l16515:	
;StateMachine.c: 399: g_xSysSetting.PreBoiling = g_xTftContent.sVal;
	rrf	0+(_g_xTftContent)+01h,w	;volatile
	bsf	status, 6	;RP1=1, select bank2
	movwf	(??_vSetting2Status+0)^0100h+0
	rrf	(??_vSetting2Status+0)^0100h+0,f
	rrf	(??_vSetting2Status+0)^0100h+0,w
	andlw	(1<<2)-1
	movwf	(??_vSetting2Status+1)^0100h+0
	rlf	(??_vSetting2Status+1)^0100h+0,f
	rlf	(??_vSetting2Status+1)^0100h+0,f
	rlf	(??_vSetting2Status+1)^0100h+0,f
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_g_xSysSetting)+03h,w	;volatile
	bsf	status, 6	;RP1=1, select bank2
	xorwf	(??_vSetting2Status+1)^0100h+0,w
	andlw	not (((1<<1)-1)<<3)
	xorwf	(??_vSetting2Status+1)^0100h+0,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(_g_xSysSetting)+03h	;volatile
	goto	l16531
	line	400
	
l16517:	
;StateMachine.c: 400: else if(g_xTftContent.sItem==2)
	movf	0+(_g_xTftContent)+01h,w	;volatile
	andlw	(1<<3)-1
	xorlw	02h
	skipz
	goto	u9801
	goto	u9800
u9801:
	goto	l16523
u9800:
	line	402
	
l16519:	
;StateMachine.c: 401: {
;StateMachine.c: 402: g_xSysSetting.TemprUnit = g_xTftContent.sVal;
	rrf	0+(_g_xTftContent)+01h,w	;volatile
	bsf	status, 6	;RP1=1, select bank2
	movwf	(??_vSetting2Status+0)^0100h+0
	rrf	(??_vSetting2Status+0)^0100h+0,f
	rrf	(??_vSetting2Status+0)^0100h+0,w
	andlw	(1<<2)-1
	movwf	(??_vSetting2Status+1)^0100h+0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_g_xSysSetting)+03h,w	;volatile
	bsf	status, 6	;RP1=1, select bank2
	xorwf	(??_vSetting2Status+1)^0100h+0,w
	andlw	not ((1<<1)-1)
	xorwf	(??_vSetting2Status+1)^0100h+0,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(_g_xSysSetting)+03h	;volatile
	line	403
	
l16521:	
;StateMachine.c: 403: vSyncTemprDisplay();
	fcall	_vSyncTemprDisplay
	line	404
;StateMachine.c: 404: }
	goto	l16531
	line	405
	
l16523:	
;StateMachine.c: 405: else if(g_xTftContent.sItem==3)
	movf	0+(_g_xTftContent)+01h,w	;volatile
	andlw	(1<<3)-1
	xorlw	03h
	skipz
	goto	u9811
	goto	u9810
u9811:
	goto	l16527
u9810:
	line	406
	
l16525:	
;StateMachine.c: 406: g_xSysSetting.EnBeep = g_xTftContent.sVal;
	rrf	0+(_g_xTftContent)+01h,w	;volatile
	bsf	status, 6	;RP1=1, select bank2
	movwf	(??_vSetting2Status+0)^0100h+0
	rrf	(??_vSetting2Status+0)^0100h+0,f
	rrf	(??_vSetting2Status+0)^0100h+0,w
	andlw	(1<<2)-1
	movwf	(??_vSetting2Status+1)^0100h+0
	rlf	(??_vSetting2Status+1)^0100h+0,f
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_g_xSysSetting)+03h,w	;volatile
	bsf	status, 6	;RP1=1, select bank2
	xorwf	(??_vSetting2Status+1)^0100h+0,w
	andlw	not (((1<<1)-1)<<1)
	xorwf	(??_vSetting2Status+1)^0100h+0,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(_g_xSysSetting)+03h	;volatile
	goto	l16531
	line	407
	
l16527:	
;StateMachine.c: 407: else if(g_xTftContent.sItem==4)
	movf	0+(_g_xTftContent)+01h,w	;volatile
	andlw	(1<<3)-1
	xorlw	04h
	skipz
	goto	u9821
	goto	u9820
u9821:
	goto	l5620
u9820:
	line	408
	
l16529:	
;StateMachine.c: 408: g_xSysSetting.EnGaoyuan = g_xTftContent.sVal;
	rrf	0+(_g_xTftContent)+01h,w	;volatile
	bsf	status, 6	;RP1=1, select bank2
	movwf	(??_vSetting2Status+0)^0100h+0
	rrf	(??_vSetting2Status+0)^0100h+0,f
	rrf	(??_vSetting2Status+0)^0100h+0,w
	andlw	(1<<2)-1
	movwf	(??_vSetting2Status+1)^0100h+0
	rlf	(??_vSetting2Status+1)^0100h+0,f
	rlf	(??_vSetting2Status+1)^0100h+0,f
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_g_xSysSetting)+03h,w	;volatile
	bsf	status, 6	;RP1=1, select bank2
	xorwf	(??_vSetting2Status+1)^0100h+0,w
	andlw	not (((1<<1)-1)<<2)
	xorwf	(??_vSetting2Status+1)^0100h+0,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(_g_xSysSetting)+03h	;volatile
	line	412
	
l16531:	
;StateMachine.c: 412: temp = (unsigned char)g_xTftContent.sVal + 1;
	rrf	0+(_g_xTftContent)+01h,w	;volatile
	bsf	status, 6	;RP1=1, select bank2
	movwf	(??_vSetting2Status+0)^0100h+0
	rrf	(??_vSetting2Status+0)^0100h+0,f
	rrf	(??_vSetting2Status+0)^0100h+0,w
	andlw	(1<<2)-1
	addlw	01h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(vSetting2Status@temp)^080h
	line	414
	
l16533:	
;StateMachine.c: 413: }
;StateMachine.c: 414: Memory_Write((unsigned char)g_xTftContent.sItem*2+ADDR_KEEP_WARM_TIME, temp);
	movf	(vSetting2Status@temp)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(Memory_Write@Value)
	movf	0+(_g_xTftContent)+01h,w	;volatile
	andlw	(1<<3)-1
	bsf	status, 6	;RP1=1, select bank2
	movwf	(??_vSetting2Status+0)^0100h+0
	addwf	(??_vSetting2Status+0)^0100h+0,w
	addlw	0Bh
	fcall	_Memory_Write
	line	415
	
l16535:	
;StateMachine.c: 415: temp = ~temp;
	movlw	low(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	xorwf	(vSetting2Status@temp)^080h,f
	line	416
;StateMachine.c: 416: Memory_Write((unsigned char)g_xTftContent.sItem*2+ADDR_KEEP_WARM_TIME1, temp);
	movf	(vSetting2Status@temp)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(Memory_Write@Value)
	movf	0+(_g_xTftContent)+01h,w	;volatile
	andlw	(1<<3)-1
	bsf	status, 6	;RP1=1, select bank2
	movwf	(??_vSetting2Status+0)^0100h+0
	addwf	(??_vSetting2Status+0)^0100h+0,w
	addlw	0Ch
	fcall	_Memory_Write
	line	417
	
l16537:	
;StateMachine.c: 417: g_xTftAction = UpdSetVal;
	movlw	low(0Ah)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_g_xTftAction)^080h	;volatile
	line	418
	
l16539:	
;StateMachine.c: 418: g_cSt2NoOprTimer = 0;
	clrf	(_g_cSt2NoOprTimer)^080h	;volatile
	line	419
;StateMachine.c: 419: break;
	goto	l5620
	line	421
	
l16541:	
;StateMachine.c: 421: if(0<g_xTftContent.sVal)
	rrf	0+(_g_xTftContent)+01h,w	;volatile
	bsf	status, 6	;RP1=1, select bank2
	movwf	(??_vSetting2Status+0)^0100h+0
	rrf	(??_vSetting2Status+0)^0100h+0,f
	rrf	(??_vSetting2Status+0)^0100h+0,w
	andlw	(1<<2)-1
	xorlw	0
	skipnz
	goto	u9831
	goto	u9830
u9831:
	goto	l16545
u9830:
	line	422
	
l16543:	
;StateMachine.c: 422: g_xTftContent.sVal -= 1;
	bcf	status, 6	;RP1=0, select bank0
	rrf	0+(_g_xTftContent)+01h,w	;volatile
	bsf	status, 6	;RP1=1, select bank2
	movwf	((??_vSetting2Status+0)^0100h+0)
	rrf	((??_vSetting2Status+0)^0100h+0),f
	rrf	((??_vSetting2Status+0)^0100h+0),w
	andlw	(1<<2)-1
	movwf	((??_vSetting2Status+0)^0100h+0)
	decf	(??_vSetting2Status+0)^0100h+0
	rlf	((??_vSetting2Status+0)^0100h+0),f
	rlf	((??_vSetting2Status+0)^0100h+0),f
	rlf	((??_vSetting2Status+0)^0100h+0),f
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_g_xTftContent)+01h,w	;volatile
	bsf	status, 6	;RP1=1, select bank2
	xorwf	((??_vSetting2Status+0)^0100h+0),w
	andlw	not (((1<<2)-1)<<3)
	xorwf	((??_vSetting2Status+0)^0100h+0),w
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(_g_xTftContent)+01h	;volatile
	goto	l5623
	line	424
	
l16545:	
;StateMachine.c: 423: else
;StateMachine.c: 424: g_xTftContent.sVal = 2;
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_g_xTftContent)+01h,w	;volatile
	andlw	not (((1<<2)-1)<<3)
	iorlw	(02h & ((1<<2)-1))<<3
	movwf	0+(_g_xTftContent)+01h	;volatile
	
l5623:	
	line	427
;StateMachine.c: 426: unsigned char temp;
;StateMachine.c: 427: if(g_xTftContent.sItem==0)
	movf	0+(_g_xTftContent)+01h,w	;volatile
	andlw	(1<<3)-1
	xorlw	0
	skipz
	goto	u9841
	goto	u9840
u9841:
	goto	l16561
u9840:
	line	429
	
l16547:	
;StateMachine.c: 428: {
;StateMachine.c: 429: if(2 <= g_xTftContent.sVal)
	rrf	0+(_g_xTftContent)+01h,w	;volatile
	bsf	status, 6	;RP1=1, select bank2
	movwf	(??_vSetting2Status+0)^0100h+0
	rrf	(??_vSetting2Status+0)^0100h+0,f
	rrf	(??_vSetting2Status+0)^0100h+0,w
	andlw	(1<<2)-1
	movwf	(??_vSetting2Status+1)^0100h+0
	movlw	02h
	subwf	(??_vSetting2Status+1)^0100h+0,w
	skipc
	goto	u9851
	goto	u9850
u9851:
	goto	l5625
u9850:
	line	430
	
l16549:	
;StateMachine.c: 430: g_xTftContent.sVal = 2;
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_g_xTftContent)+01h,w	;volatile
	andlw	not (((1<<2)-1)<<3)
	iorlw	(02h & ((1<<2)-1))<<3
	movwf	0+(_g_xTftContent)+01h	;volatile
	
l5625:	
	line	433
;StateMachine.c: 433: if(g_xTftContent.sVal==1)
	bcf	status, 6	;RP1=0, select bank0
	rrf	0+(_g_xTftContent)+01h,w	;volatile
	bsf	status, 6	;RP1=1, select bank2
	movwf	(??_vSetting2Status+0)^0100h+0
	rrf	(??_vSetting2Status+0)^0100h+0,f
	rrf	(??_vSetting2Status+0)^0100h+0,w
	andlw	(1<<2)-1
	xorlw	01h
	skipz
	goto	u9861
	goto	u9860
u9861:
	goto	l16553
u9860:
	line	434
	
l16551:	
;StateMachine.c: 434: g_xSysSetting.KWTime = 30;
	movlw	low(01Eh)
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(_g_xSysSetting)+02h	;volatile
	goto	l16559
	line	435
	
l16553:	
;StateMachine.c: 435: else if(g_xTftContent.sVal==2)
	bcf	status, 6	;RP1=0, select bank0
	rrf	0+(_g_xTftContent)+01h,w	;volatile
	bsf	status, 6	;RP1=1, select bank2
	movwf	(??_vSetting2Status+0)^0100h+0
	rrf	(??_vSetting2Status+0)^0100h+0,f
	rrf	(??_vSetting2Status+0)^0100h+0,w
	andlw	(1<<2)-1
	xorlw	02h
	skipz
	goto	u9871
	goto	u9870
u9871:
	goto	l16557
u9870:
	line	436
	
l16555:	
;StateMachine.c: 436: g_xSysSetting.KWTime = 60;
	movlw	low(03Ch)
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(_g_xSysSetting)+02h	;volatile
	goto	l16559
	line	438
	
l16557:	
;StateMachine.c: 437: else
;StateMachine.c: 438: g_xSysSetting.KWTime = 0;
	bcf	status, 6	;RP1=0, select bank0
	clrf	0+(_g_xSysSetting)+02h	;volatile
	line	440
	
l16559:	
;StateMachine.c: 440: temp= g_xSysSetting.KWTime+1;
	movf	0+(_g_xSysSetting)+02h,w	;volatile
	addlw	01h
	bsf	status, 5	;RP0=1, select bank1
	movwf	(vSetting2Status@temp)^080h
	line	441
;StateMachine.c: 441: }
	goto	l16583
	line	444
	
l16561:	
;StateMachine.c: 442: else
;StateMachine.c: 443: {
;StateMachine.c: 444: if(1<=g_xTftContent.sVal)
	rrf	0+(_g_xTftContent)+01h,w	;volatile
	bsf	status, 6	;RP1=1, select bank2
	movwf	(??_vSetting2Status+0)^0100h+0
	rrf	(??_vSetting2Status+0)^0100h+0,f
	rrf	(??_vSetting2Status+0)^0100h+0,w
	andlw	(1<<2)-1
	xorlw	0
	skipnz
	goto	u9881
	goto	u9880
u9881:
	goto	l5631
u9880:
	line	445
	
l16563:	
;StateMachine.c: 445: g_xTftContent.sVal = 1;
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_g_xTftContent)+01h,w	;volatile
	andlw	not (((1<<2)-1)<<3)
	iorlw	(01h & ((1<<2)-1))<<3
	movwf	0+(_g_xTftContent)+01h	;volatile
	
l5631:	
	line	448
;StateMachine.c: 448: if(g_xTftContent.sItem==1)
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_g_xTftContent)+01h,w	;volatile
	andlw	(1<<3)-1
	xorlw	01h
	skipz
	goto	u9891
	goto	u9890
u9891:
	goto	l16567
u9890:
	line	449
	
l16565:	
;StateMachine.c: 449: g_xSysSetting.PreBoiling = g_xTftContent.sVal;
	rrf	0+(_g_xTftContent)+01h,w	;volatile
	bsf	status, 6	;RP1=1, select bank2
	movwf	(??_vSetting2Status+0)^0100h+0
	rrf	(??_vSetting2Status+0)^0100h+0,f
	rrf	(??_vSetting2Status+0)^0100h+0,w
	andlw	(1<<2)-1
	movwf	(??_vSetting2Status+1)^0100h+0
	rlf	(??_vSetting2Status+1)^0100h+0,f
	rlf	(??_vSetting2Status+1)^0100h+0,f
	rlf	(??_vSetting2Status+1)^0100h+0,f
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_g_xSysSetting)+03h,w	;volatile
	bsf	status, 6	;RP1=1, select bank2
	xorwf	(??_vSetting2Status+1)^0100h+0,w
	andlw	not (((1<<1)-1)<<3)
	xorwf	(??_vSetting2Status+1)^0100h+0,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(_g_xSysSetting)+03h	;volatile
	goto	l16581
	line	450
	
l16567:	
;StateMachine.c: 450: else if(g_xTftContent.sItem==2)
	movf	0+(_g_xTftContent)+01h,w	;volatile
	andlw	(1<<3)-1
	xorlw	02h
	skipz
	goto	u9901
	goto	u9900
u9901:
	goto	l16573
u9900:
	line	452
	
l16569:	
;StateMachine.c: 451: {
;StateMachine.c: 452: g_xSysSetting.TemprUnit = g_xTftContent.sVal;
	rrf	0+(_g_xTftContent)+01h,w	;volatile
	bsf	status, 6	;RP1=1, select bank2
	movwf	(??_vSetting2Status+0)^0100h+0
	rrf	(??_vSetting2Status+0)^0100h+0,f
	rrf	(??_vSetting2Status+0)^0100h+0,w
	andlw	(1<<2)-1
	movwf	(??_vSetting2Status+1)^0100h+0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_g_xSysSetting)+03h,w	;volatile
	bsf	status, 6	;RP1=1, select bank2
	xorwf	(??_vSetting2Status+1)^0100h+0,w
	andlw	not ((1<<1)-1)
	xorwf	(??_vSetting2Status+1)^0100h+0,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(_g_xSysSetting)+03h	;volatile
	line	453
	
l16571:	
;StateMachine.c: 453: vSyncTemprDisplay();
	fcall	_vSyncTemprDisplay
	line	454
;StateMachine.c: 454: }
	goto	l16581
	line	455
	
l16573:	
;StateMachine.c: 455: else if(g_xTftContent.sItem==3)
	movf	0+(_g_xTftContent)+01h,w	;volatile
	andlw	(1<<3)-1
	xorlw	03h
	skipz
	goto	u9911
	goto	u9910
u9911:
	goto	l16577
u9910:
	line	456
	
l16575:	
;StateMachine.c: 456: g_xSysSetting.EnBeep = g_xTftContent.sVal;
	rrf	0+(_g_xTftContent)+01h,w	;volatile
	bsf	status, 6	;RP1=1, select bank2
	movwf	(??_vSetting2Status+0)^0100h+0
	rrf	(??_vSetting2Status+0)^0100h+0,f
	rrf	(??_vSetting2Status+0)^0100h+0,w
	andlw	(1<<2)-1
	movwf	(??_vSetting2Status+1)^0100h+0
	rlf	(??_vSetting2Status+1)^0100h+0,f
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_g_xSysSetting)+03h,w	;volatile
	bsf	status, 6	;RP1=1, select bank2
	xorwf	(??_vSetting2Status+1)^0100h+0,w
	andlw	not (((1<<1)-1)<<1)
	xorwf	(??_vSetting2Status+1)^0100h+0,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(_g_xSysSetting)+03h	;volatile
	goto	l16581
	line	457
	
l16577:	
;StateMachine.c: 457: else if(g_xTftContent.sItem==4)
	movf	0+(_g_xTftContent)+01h,w	;volatile
	andlw	(1<<3)-1
	xorlw	04h
	skipz
	goto	u9921
	goto	u9920
u9921:
	goto	l5620
u9920:
	line	458
	
l16579:	
;StateMachine.c: 458: g_xSysSetting.EnGaoyuan = g_xTftContent.sVal;
	rrf	0+(_g_xTftContent)+01h,w	;volatile
	bsf	status, 6	;RP1=1, select bank2
	movwf	(??_vSetting2Status+0)^0100h+0
	rrf	(??_vSetting2Status+0)^0100h+0,f
	rrf	(??_vSetting2Status+0)^0100h+0,w
	andlw	(1<<2)-1
	movwf	(??_vSetting2Status+1)^0100h+0
	rlf	(??_vSetting2Status+1)^0100h+0,f
	rlf	(??_vSetting2Status+1)^0100h+0,f
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_g_xSysSetting)+03h,w	;volatile
	bsf	status, 6	;RP1=1, select bank2
	xorwf	(??_vSetting2Status+1)^0100h+0,w
	andlw	not (((1<<1)-1)<<2)
	xorwf	(??_vSetting2Status+1)^0100h+0,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(_g_xSysSetting)+03h	;volatile
	line	461
	
l16581:	
;StateMachine.c: 461: temp= (unsigned char)g_xTftContent.sVal + 1;
	rrf	0+(_g_xTftContent)+01h,w	;volatile
	bsf	status, 6	;RP1=1, select bank2
	movwf	(??_vSetting2Status+0)^0100h+0
	rrf	(??_vSetting2Status+0)^0100h+0,f
	rrf	(??_vSetting2Status+0)^0100h+0,w
	andlw	(1<<2)-1
	addlw	01h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(vSetting2Status@temp)^080h
	line	464
	
l16583:	
;StateMachine.c: 462: }
;StateMachine.c: 464: Memory_Write((unsigned char)g_xTftContent.sItem*2+ADDR_KEEP_WARM_TIME, temp);
	movf	(vSetting2Status@temp)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(Memory_Write@Value)
	movf	0+(_g_xTftContent)+01h,w	;volatile
	andlw	(1<<3)-1
	bsf	status, 6	;RP1=1, select bank2
	movwf	(??_vSetting2Status+0)^0100h+0
	addwf	(??_vSetting2Status+0)^0100h+0,w
	addlw	0Bh
	fcall	_Memory_Write
	line	465
	
l16585:	
;StateMachine.c: 465: temp = ~temp;
	movlw	low(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	xorwf	(vSetting2Status@temp)^080h,f
	line	466
;StateMachine.c: 466: Memory_Write((unsigned char)g_xTftContent.sItem*2+ADDR_KEEP_WARM_TIME1, temp);
	movf	(vSetting2Status@temp)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(Memory_Write@Value)
	movf	0+(_g_xTftContent)+01h,w	;volatile
	andlw	(1<<3)-1
	bsf	status, 6	;RP1=1, select bank2
	movwf	(??_vSetting2Status+0)^0100h+0
	addwf	(??_vSetting2Status+0)^0100h+0,w
	addlw	0Ch
	fcall	_Memory_Write
	goto	l16537
	line	354
	
l16593:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_g_xSysAction),w	;volatile
	; Switch size 1, requested type "space"
; Number of cases is 5, Range of values is 2 to 17
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           16     9 (average)
; direct_byte           59    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	2^0	; case 2
	skipnz
	goto	l16483
	xorlw	3^2	; case 3
	skipnz
	goto	l16493
	xorlw	4^3	; case 4
	skipnz
	goto	l16541
	xorlw	5^4	; case 5
	skipnz
	goto	l16489
	xorlw	17^5	; case 17
	skipnz
	goto	l16489
	goto	l5620
	opt asmopt_pop

	line	473
	
l5620:	
	return
	opt stack 0
GLOBAL	__end_of_vSetting2Status
	__end_of_vSetting2Status:
	signat	_vSetting2Status,89
	global	_vSyncTemprDisplay

;; *************** function _vSyncTemprDisplay *****************
;; Defined at:
;;		line 52 in file "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\StateMachine.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_CConvert2F
;; This function is called by:
;;		_vSetting2Status
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	line	52
global __ptext9
__ptext9:	;psect for function _vSyncTemprDisplay
psect	text9
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\StateMachine.c"
	line	52
	global	__size_of_vSyncTemprDisplay
	__size_of_vSyncTemprDisplay	equ	__end_of_vSyncTemprDisplay-_vSyncTemprDisplay
	
_vSyncTemprDisplay:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _vSyncTemprDisplay: [wreg+status,2+status,0+pclath+cstack]
	line	54
	
l16073:	
;StateMachine.c: 54: if(g_xSysSetting.TemprUnit)
	btfss	0+(_g_xSysSetting)+03h,0	;volatile
	goto	u9251
	goto	u9250
u9251:
	goto	l16077
u9250:
	line	56
	
l16075:	
;StateMachine.c: 55: {
;StateMachine.c: 56: g_xTftContent.setT = CConvert2F(g_xSysSetting.SetTempr);
	movf	0+(_g_xSysSetting)+01h,w	;volatile
	fcall	_CConvert2F
	movwf	0+(_g_xTftContent)+03h	;volatile
	line	57
;StateMachine.c: 57: g_xTftContent.curT = CConvert2F(g_xIhProcParam.CurTempr);
	movf	(_g_xIhProcParam),w	;volatile
	fcall	_CConvert2F
	movwf	0+(_g_xTftContent)+04h	;volatile
	line	58
;StateMachine.c: 58: }
	goto	l5489
	line	61
	
l16077:	
;StateMachine.c: 59: else
;StateMachine.c: 60: {
;StateMachine.c: 61: g_xTftContent.setT = g_xSysSetting.SetTempr;
	movf	0+(_g_xSysSetting)+01h,w	;volatile
	movwf	0+(_g_xTftContent)+03h	;volatile
	line	62
;StateMachine.c: 62: g_xTftContent.curT = g_xIhProcParam.CurTempr;
	movf	(_g_xIhProcParam),w	;volatile
	movwf	0+(_g_xTftContent)+04h	;volatile
	line	64
	
l5489:	
	return
	opt stack 0
GLOBAL	__end_of_vSyncTemprDisplay
	__end_of_vSyncTemprDisplay:
	signat	_vSyncTemprDisplay,89
	global	_vSetting1Status

;; *************** function _vSetting1Status *****************
;; Defined at:
;;		line 309 in file "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\StateMachine.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 200/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_vSysParam2Tft
;; This function is called by:
;;		_vSystemStatus
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=0
	line	309
global __ptext10
__ptext10:	;psect for function _vSetting1Status
psect	text10
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\StateMachine.c"
	line	309
	global	__size_of_vSetting1Status
	__size_of_vSetting1Status	equ	__end_of_vSetting1Status-_vSetting1Status
	
_vSetting1Status:	
;incstack = 0
	opt	stack 0
; Regs used in _vSetting1Status: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	311
	
l16439:	
;StateMachine.c: 311: switch (g_xSysAction)
	goto	l16479
	line	315
	
l16441:	
;StateMachine.c: 314: case SetKey:
;StateMachine.c: 315: g_eSysStatus = WAITING;
	movlw	low(02h)
	movwf	(_g_eSysStatus)	;volatile
	line	316
;StateMachine.c: 316: g_xTftAction = SwchPage;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_g_xTftAction)^080h	;volatile
	line	317
	
l16443:	
;StateMachine.c: 317: if(0<g_xSysSetting.KWTime)
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(_g_xSysSetting)+02h),w	;volatile
	btfsc	status,2
	goto	u9681
	goto	u9680
u9681:
	goto	l5581
u9680:
	line	318
	
l16445:	
;StateMachine.c: 318: g_xTftContent.KWOnOff=0;
	bcf	(_g_xTftContent),4	;volatile
	goto	l5592
	line	319
	
l5581:	
	line	320
;StateMachine.c: 319: else
;StateMachine.c: 320: g_xTftContent.KWOnOff=1;
	bsf	(_g_xTftContent),4	;volatile
	goto	l5592
	line	323
	
l16447:	
;StateMachine.c: 323: g_eSysStatus = SETTING2;
	movlw	low(05h)
	movwf	(_g_eSysStatus)	;volatile
	line	325
	
l16449:	
;StateMachine.c: 325: vSysParam2Tft(g_xTftContent.sItem);
	movf	0+(_g_xTftContent)+01h,w	;volatile
	andlw	(1<<3)-1
	fcall	_vSysParam2Tft
	line	326
	
l16451:	
;StateMachine.c: 326: g_xTftAction = SwchPage;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_g_xTftAction)^080h	;volatile
	line	327
	
l16453:	
;StateMachine.c: 327: g_cSt2NoOprTimer = 0;
	clrf	(_g_cSt2NoOprTimer)^080h	;volatile
	line	328
;StateMachine.c: 328: break;
	goto	l5592
	line	330
	
l16455:	
;StateMachine.c: 330: if(g_xTftContent.sItem < 4)
	movf	0+(_g_xTftContent)+01h,w	;volatile
	andlw	(1<<3)-1
	movwf	(??_vSetting1Status+0)+0
	movlw	04h
	subwf	(??_vSetting1Status+0)+0,w
	skipnc
	goto	u9691
	goto	u9690
u9691:
	goto	l16459
u9690:
	line	331
	
l16457:	
;StateMachine.c: 331: g_xTftContent.sItem += 1;
	movf	0+(_g_xTftContent)+01h,w	;volatile
	andlw	(1<<3)-1
	movwf	((??_vSetting1Status+0)+0)
	incf	(??_vSetting1Status+0)+0
	movf	0+(_g_xTftContent)+01h,w	;volatile
	xorwf	((??_vSetting1Status+0)+0),w
	andlw	not ((1<<3)-1)
	xorwf	((??_vSetting1Status+0)+0),w
	movwf	0+(_g_xTftContent)+01h	;volatile
	goto	l16461
	line	333
	
l16459:	
;StateMachine.c: 332: else
;StateMachine.c: 333: g_xTftContent.sItem = 0;
	movlw	((0 & ((1<<3)-1))<<0)|not (((1<<3)-1)<<0)
	andwf	0+(_g_xTftContent)+01h,f	;volatile
	line	335
	
l16461:	
;StateMachine.c: 335: g_xTftAction = SelSetItem;
	movlw	low(09h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_g_xTftAction)^080h	;volatile
	line	336
	
l16463:	
;StateMachine.c: 336: g_cSt1NoOprTimer = 0;
	clrf	(_g_cSt1NoOprTimer)^080h	;volatile
	line	337
;StateMachine.c: 337: break;
	goto	l5592
	line	339
	
l16465:	
;StateMachine.c: 339: if(0<g_xTftContent.sItem && g_xTftContent.sItem<5)
	movf	0+(_g_xTftContent)+01h,w	;volatile
	andlw	(1<<3)-1
	xorlw	0
	skipnz
	goto	u9701
	goto	u9700
u9701:
	goto	l16471
u9700:
	
l16467:	
	movf	0+(_g_xTftContent)+01h,w	;volatile
	andlw	(1<<3)-1
	movwf	(??_vSetting1Status+0)+0
	movlw	05h
	subwf	(??_vSetting1Status+0)+0,w
	skipnc
	goto	u9711
	goto	u9710
u9711:
	goto	l16471
u9710:
	line	340
	
l16469:	
;StateMachine.c: 340: g_xTftContent.sItem-= 1;
	movf	0+(_g_xTftContent)+01h,w	;volatile
	andlw	(1<<3)-1
	movwf	((??_vSetting1Status+0)+0)
	decf	(??_vSetting1Status+0)+0
	movf	0+(_g_xTftContent)+01h,w	;volatile
	xorwf	((??_vSetting1Status+0)+0),w
	andlw	not ((1<<3)-1)
	xorwf	((??_vSetting1Status+0)+0),w
	movwf	0+(_g_xTftContent)+01h	;volatile
	goto	l16461
	line	342
	
l16471:	
;StateMachine.c: 341: else
;StateMachine.c: 342: g_xTftContent.sItem = 4;
	movf	0+(_g_xTftContent)+01h,w	;volatile
	andlw	not (((1<<3)-1)<<0)
	iorlw	(04h & ((1<<3)-1))<<0
	movwf	0+(_g_xTftContent)+01h	;volatile
	goto	l16461
	line	311
	
l16479:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_g_xSysAction),w	;volatile
	; Switch size 1, requested type "space"
; Number of cases is 5, Range of values is 2 to 18
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           16     9 (average)
; direct_byte           62    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	2^0	; case 2
	skipnz
	goto	l16441
	xorlw	3^2	; case 3
	skipnz
	goto	l16455
	xorlw	4^3	; case 4
	skipnz
	goto	l16465
	xorlw	5^4	; case 5
	skipnz
	goto	l16447
	xorlw	18^5	; case 18
	skipnz
	goto	l16441
	goto	l5592
	opt asmopt_pop

	line	350
	
l5592:	
	return
	opt stack 0
GLOBAL	__end_of_vSetting1Status
	__end_of_vSetting1Status:
	signat	_vSetting1Status,89
	global	_vPowerOffStatus

;; *************** function _vPowerOffStatus *****************
;; Defined at:
;;		line 4 in file "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\StateMachine.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_vSetPWM2
;; This function is called by:
;;		_vSystemStatus
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=0
	line	4
global __ptext11
__ptext11:	;psect for function _vPowerOffStatus
psect	text11
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\StateMachine.c"
	line	4
	global	__size_of_vPowerOffStatus
	__size_of_vPowerOffStatus	equ	__end_of_vPowerOffStatus-_vPowerOffStatus
	
_vPowerOffStatus:	
;incstack = 0
	opt	stack 0
; Regs used in _vPowerOffStatus: [wreg+status,2+status,0+pclath+cstack]
	line	8
	
l13689:	
;StateMachine.c: 8: g_cLedAllOnCount--;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	decf	(_g_cLedAllOnCount)^080h,f	;volatile
	line	9
	
l13691:	
;StateMachine.c: 9: if (0 == g_cLedAllOnCount)
	movf	((_g_cLedAllOnCount)^080h),w	;volatile
	btfss	status,2
	goto	u5661
	goto	u5660
u5661:
	goto	l5470
u5660:
	line	11
	
l13693:	
;StateMachine.c: 10: {
;StateMachine.c: 11: g_cLedAllOnCount = 0;
	clrf	(_g_cLedAllOnCount)^080h	;volatile
	line	12
	
l13695:	
;StateMachine.c: 12: g_eSysStatus = WAITING;
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_g_eSysStatus)	;volatile
	line	13
	
l13697:	
;StateMachine.c: 13: vSetPWM2(50);
	movlw	low(032h)
	fcall	_vSetPWM2
	line	15
	
l13699:	
;StateMachine.c: 15: if(0<g_xSysSetting.KWTime)
	movf	(0+(_g_xSysSetting)+02h),w	;volatile
	btfsc	status,2
	goto	u5671
	goto	u5670
u5671:
	goto	l5468
u5670:
	line	16
	
l13701:	
;StateMachine.c: 16: g_xTftContent.KWOnOff=0;
	bcf	(_g_xTftContent),4	;volatile
	goto	l13703
	line	17
	
l5468:	
	line	18
;StateMachine.c: 17: else
;StateMachine.c: 18: g_xTftContent.KWOnOff=1;
	bsf	(_g_xTftContent),4	;volatile
	line	21
	
l13703:	
;StateMachine.c: 21: g_xTftAction = SwchPage;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_g_xTftAction)^080h	;volatile
	line	23
	
l5470:	
	return
	opt stack 0
GLOBAL	__end_of_vPowerOffStatus
	__end_of_vPowerOffStatus:
	signat	_vPowerOffStatus,89
	global	_vHeatingStatus

;; *************** function _vHeatingStatus *****************
;; Defined at:
;;		line 232 in file "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\StateMachine.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_vCurTemprUpdate
;;		_vHeatingProc
;;		_vSetIHPower
;;		_vSetPWM1
;;		_vSetPWM2
;;		_vTemprDecrease
;;		_vTemprIncrease
;;		_vUpdateTargetTempr
;; This function is called by:
;;		_vSystemStatus
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=0
	line	232
global __ptext12
__ptext12:	;psect for function _vHeatingStatus
psect	text12
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\StateMachine.c"
	line	232
	global	__size_of_vHeatingStatus
	__size_of_vHeatingStatus	equ	__end_of_vHeatingStatus-_vHeatingStatus
	
_vHeatingStatus:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _vHeatingStatus: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	234
	
l16401:	
;StateMachine.c: 234: switch (g_xSysAction)
	goto	l16437
	line	241
	
l16403:	
;StateMachine.c: 239: case HeatDone:
;StateMachine.c: 240: case StartKey:
;StateMachine.c: 241: g_eSysStatus = WAITING;
	movlw	low(02h)
	movwf	(_g_eSysStatus)	;volatile
	line	242
;StateMachine.c: 242: g_xTftAction = UpdDogIcon;
	movlw	low(07h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_g_xTftAction)^080h	;volatile
	line	243
	
l16405:	
;StateMachine.c: 243: vSetIHPower(POW_0W);
	movlw	low(0)
	fcall	_vSetIHPower
	line	244
	
l16407:	
;StateMachine.c: 244: vSetPWM2(50);
	movlw	low(032h)
	fcall	_vSetPWM2
	line	245
	
l16409:	
;StateMachine.c: 245: vSetPWM1(205);
	movlw	low(0CDh)
	fcall	_vSetPWM1
	line	246
	
l16411:	
;StateMachine.c: 246: g_bRedLedBreath = 0;
	bcf	(_g_bRedLedBreath/8),(_g_bRedLedBreath)&7	;volatile
	line	247
	
l16413:	
;StateMachine.c: 247: g_cSwch2SleepTime=0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(_g_cSwch2SleepTime)^080h	;volatile
	line	248
	
l16415:	
;StateMachine.c: 248: g_bKeepWarmFlag = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(_g_bKeepWarmFlag/8),(_g_bKeepWarmFlag)&7	;volatile
	line	249
	
l16417:	
;StateMachine.c: 249: g_cKeepWarmTime = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(_g_cKeepWarmTime)^080h	;volatile
	line	250
;StateMachine.c: 250: break;
	goto	l5560
	line	253
	
l16419:	
;StateMachine.c: 253: vTemprIncrease();
	fcall	_vTemprIncrease
	line	254
;StateMachine.c: 254: break;
	goto	l5560
	line	256
	
l16421:	
;StateMachine.c: 256: vTemprDecrease();
	fcall	_vTemprDecrease
	line	257
;StateMachine.c: 257: break;
	goto	l5560
	line	263
	
l5556:	
	line	264
;StateMachine.c: 263: case StartHeat:
;StateMachine.c: 264: g_bKeepWarmFlag = 0;
	bcf	(_g_bKeepWarmFlag/8),(_g_bKeepWarmFlag)&7	;volatile
	line	265
	
l16423:	
;StateMachine.c: 265: g_cKeepWarmTime = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(_g_cKeepWarmTime)^080h	;volatile
	line	267
	
l16425:	
;StateMachine.c: 267: vUpdateTargetTempr();
	fcall	_vUpdateTargetTempr
	line	269
;StateMachine.c: 269: break;
	goto	l5560
	line	274
	
l16427:	
;StateMachine.c: 274: if(g_xIhProcParam.PrevTempr != g_xIhProcParam.CurTempr)
	movf	0+(_g_xIhProcParam)+03h,w	;volatile
	xorwf	(_g_xIhProcParam),w	;volatile
	skipnz
	goto	u9671
	goto	u9670
u9671:
	goto	l16433
u9670:
	line	276
	
l16429:	
;StateMachine.c: 275: {
;StateMachine.c: 276: g_xIhProcParam.PrevTempr = g_xIhProcParam.CurTempr;
	movf	(_g_xIhProcParam),w	;volatile
	movwf	0+(_g_xIhProcParam)+03h	;volatile
	line	277
	
l16431:	
;StateMachine.c: 277: vCurTemprUpdate();
	fcall	_vCurTemprUpdate
	line	279
	
l16433:	
;StateMachine.c: 278: }
;StateMachine.c: 279: vHeatingProc();
	fcall	_vHeatingProc
	line	281
;StateMachine.c: 281: break;
	goto	l5560
	line	234
	
l16437:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_g_xSysAction),w	;volatile
	; Switch size 1, requested type "space"
; Number of cases is 8, Range of values is 1 to 16
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           25    13 (average)
; direct_byte           59    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l16403
	xorlw	3^1	; case 3
	skipnz
	goto	l16419
	xorlw	4^3	; case 4
	skipnz
	goto	l16421
	xorlw	7^4	; case 7
	skipnz
	goto	l16427
	xorlw	12^7	; case 12
	skipnz
	goto	l5556
	xorlw	13^12	; case 13
	skipnz
	goto	l5556
	xorlw	15^13	; case 15
	skipnz
	goto	l16403
	xorlw	16^15	; case 16
	skipnz
	goto	l16403
	goto	l5560
	opt asmopt_pop

	line	286
	
l5560:	
	return
	opt stack 0
GLOBAL	__end_of_vHeatingStatus
	__end_of_vHeatingStatus:
	signat	_vHeatingStatus,89
	global	_vTemprIncrease

;; *************** function _vTemprIncrease *****************
;; Defined at:
;;		line 66 in file "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\StateMachine.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_FConvert2C
;;		_vUpdateTargetTempr
;; This function is called by:
;;		_vWaittingStatus
;;		_vHeatingStatus
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1,group=0
	line	66
global __ptext13
__ptext13:	;psect for function _vTemprIncrease
psect	text13
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\StateMachine.c"
	line	66
	global	__size_of_vTemprIncrease
	__size_of_vTemprIncrease	equ	__end_of_vTemprIncrease-_vTemprIncrease
	
_vTemprIncrease:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _vTemprIncrease: [wreg+status,2+status,0+pclath+cstack]
	line	69
	
l16079:	
;StateMachine.c: 69: g_xTftContent.setT++;
	incf	0+(_g_xTftContent)+03h,f	;volatile
	line	70
	
l16081:	
;StateMachine.c: 70: if(g_xSysSetting.TemprUnit)
	btfss	0+(_g_xSysSetting)+03h,0	;volatile
	goto	u9261
	goto	u9260
u9261:
	goto	l16089
u9260:
	line	72
	
l16083:	
;StateMachine.c: 71: {
;StateMachine.c: 72: if(201 < g_xTftContent.setT)
	movlw	low(0CAh)
	subwf	0+(_g_xTftContent)+03h,w	;volatile
	skipc
	goto	u9271
	goto	u9270
u9271:
	goto	l16087
u9270:
	line	73
	
l16085:	
;StateMachine.c: 73: g_xTftContent.setT = 201;
	movlw	low(0C9h)
	movwf	0+(_g_xTftContent)+03h	;volatile
	line	75
	
l16087:	
;StateMachine.c: 75: g_xSysSetting.SetTempr = FConvert2C(g_xTftContent.setT);
	movf	0+(_g_xTftContent)+03h,w	;volatile
	fcall	_FConvert2C
	movwf	0+(_g_xSysSetting)+01h	;volatile
	line	76
;StateMachine.c: 76: }
	goto	l16093
	line	79
	
l16089:	
;StateMachine.c: 77: else
;StateMachine.c: 78: {
;StateMachine.c: 79: if(188 < g_xTftContent.setT)
	movlw	low(0BDh)
	subwf	0+(_g_xTftContent)+03h,w	;volatile
	skipc
	goto	u9281
	goto	u9280
u9281:
	goto	l5495
u9280:
	line	80
	
l16091:	
;StateMachine.c: 80: g_xTftContent.setT = 188;
	movlw	low(0BCh)
	movwf	0+(_g_xTftContent)+03h	;volatile
	
l5495:	
	line	82
;StateMachine.c: 82: g_xSysSetting.SetTempr = g_xTftContent.setT;
	movf	0+(_g_xTftContent)+03h,w	;volatile
	movwf	0+(_g_xSysSetting)+01h	;volatile
	line	86
	
l16093:	
;StateMachine.c: 83: }
;StateMachine.c: 86: if(g_eSysStatus == HEATING)
		movlw	3
	xorwf	((_g_eSysStatus)),w	;volatile
	btfss	status,2
	goto	u9291
	goto	u9290
u9291:
	goto	l16097
u9290:
	line	88
	
l16095:	
;StateMachine.c: 87: {
;StateMachine.c: 88: vUpdateTargetTempr();
	fcall	_vUpdateTargetTempr
	line	91
	
l16097:	
;StateMachine.c: 89: }
;StateMachine.c: 91: g_xTftAction = UpdSetTempr;
	movlw	low(02h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_g_xTftAction)^080h	;volatile
	line	92
	
l5497:	
	return
	opt stack 0
GLOBAL	__end_of_vTemprIncrease
	__end_of_vTemprIncrease:
	signat	_vTemprIncrease,89
	global	_vTemprDecrease

;; *************** function _vTemprDecrease *****************
;; Defined at:
;;		line 94 in file "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\StateMachine.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_FConvert2C
;;		_vUpdateTargetTempr
;; This function is called by:
;;		_vWaittingStatus
;;		_vHeatingStatus
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1,group=0
	line	94
global __ptext14
__ptext14:	;psect for function _vTemprDecrease
psect	text14
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\StateMachine.c"
	line	94
	global	__size_of_vTemprDecrease
	__size_of_vTemprDecrease	equ	__end_of_vTemprDecrease-_vTemprDecrease
	
_vTemprDecrease:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _vTemprDecrease: [wreg+status,2+status,0+pclath+cstack]
	line	96
	
l16099:	
;StateMachine.c: 96: if(g_xSysSetting.TemprUnit)
	btfss	0+(_g_xSysSetting)+03h,0	;volatile
	goto	u9301
	goto	u9300
u9301:
	goto	l16109
u9300:
	line	98
	
l16101:	
;StateMachine.c: 97: {
;StateMachine.c: 98: if(104 < g_xTftContent.setT)
	movlw	low(069h)
	subwf	0+(_g_xTftContent)+03h,w	;volatile
	skipc
	goto	u9311
	goto	u9310
u9311:
	goto	l16105
u9310:
	line	99
	
l16103:	
;StateMachine.c: 99: g_xTftContent.setT--;
	decf	0+(_g_xTftContent)+03h,f	;volatile
	goto	l16107
	line	101
	
l16105:	
;StateMachine.c: 100: else
;StateMachine.c: 101: g_xTftContent.setT = 104;
	movlw	low(068h)
	movwf	0+(_g_xTftContent)+03h	;volatile
	line	103
	
l16107:	
;StateMachine.c: 103: g_xSysSetting.SetTempr = FConvert2C(g_xTftContent.setT);
	movf	0+(_g_xTftContent)+03h,w	;volatile
	fcall	_FConvert2C
	movwf	0+(_g_xSysSetting)+01h	;volatile
	line	104
;StateMachine.c: 104: }
	goto	l16115
	line	107
	
l16109:	
;StateMachine.c: 105: else
;StateMachine.c: 106: {
;StateMachine.c: 107: if(80 < g_xTftContent.setT)
	movlw	low(051h)
	subwf	0+(_g_xTftContent)+03h,w	;volatile
	skipc
	goto	u9321
	goto	u9320
u9321:
	goto	l16113
u9320:
	line	108
	
l16111:	
;StateMachine.c: 108: g_xTftContent.setT--;
	decf	0+(_g_xTftContent)+03h,f	;volatile
	goto	l5505
	line	110
	
l16113:	
;StateMachine.c: 109: else
;StateMachine.c: 110: g_xTftContent.setT = 80;
	movlw	low(050h)
	movwf	0+(_g_xTftContent)+03h	;volatile
	
l5505:	
	line	112
;StateMachine.c: 112: g_xSysSetting.SetTempr = g_xTftContent.setT;
	movf	0+(_g_xTftContent)+03h,w	;volatile
	movwf	0+(_g_xSysSetting)+01h	;volatile
	line	116
	
l16115:	
;StateMachine.c: 113: }
;StateMachine.c: 116: if(g_eSysStatus == HEATING)
		movlw	3
	xorwf	((_g_eSysStatus)),w	;volatile
	btfss	status,2
	goto	u9331
	goto	u9330
u9331:
	goto	l16119
u9330:
	line	118
	
l16117:	
;StateMachine.c: 117: {
;StateMachine.c: 118: vUpdateTargetTempr();
	fcall	_vUpdateTargetTempr
	line	121
	
l16119:	
;StateMachine.c: 119: }
;StateMachine.c: 121: g_xTftAction = UpdSetTempr;
	movlw	low(02h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_g_xTftAction)^080h	;volatile
	line	122
	
l5507:	
	return
	opt stack 0
GLOBAL	__end_of_vTemprDecrease
	__end_of_vTemprDecrease:
	signat	_vTemprDecrease,89
	global	_vUpdateTargetTempr

;; *************** function _vUpdateTargetTempr *****************
;; Defined at:
;;		line 155 in file "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\StateMachine.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 200/100
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_vTemprIncrease
;;		_vTemprDecrease
;;		_vHeatingStatus
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1,group=0
	line	155
global __ptext15
__ptext15:	;psect for function _vUpdateTargetTempr
psect	text15
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\StateMachine.c"
	line	155
	global	__size_of_vUpdateTargetTempr
	__size_of_vUpdateTargetTempr	equ	__end_of_vUpdateTargetTempr-_vUpdateTargetTempr
	
_vUpdateTargetTempr:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _vUpdateTargetTempr: [wreg+status,2+status,0]
	line	158
	
l13075:	
;StateMachine.c: 158: if(!g_xSysSetting.EnGaoyuan)
	bcf	status, 5	;RP0=0, select bank0
	btfsc	0+(_g_xSysSetting)+03h,2	;volatile
	goto	u4731
	goto	u4730
u4731:
	goto	l13079
u4730:
	line	159
	
l13077:	
;StateMachine.c: 159: g_xSysSetting.BoilingPoint = 200;
	movlw	low(0C8h)
	movwf	(_g_xSysSetting)	;volatile
	line	161
	
l13079:	
;StateMachine.c: 161: if(g_xSysSetting.PreBoiling)
	btfss	0+(_g_xSysSetting)+03h,3	;volatile
	goto	u4741
	goto	u4740
u4741:
	goto	l13083
u4740:
	line	162
	
l13081:	
;StateMachine.c: 162: g_xIhProcParam.TargTempr = g_xSysSetting.BoilingPoint;
	movf	(_g_xSysSetting),w	;volatile
	movwf	0+(_g_xIhProcParam)+01h	;volatile
	goto	l13089
	line	165
	
l13083:	
;StateMachine.c: 163: else
;StateMachine.c: 164: {
;StateMachine.c: 165: if(g_xSysSetting.SetTempr < g_xSysSetting.BoilingPoint)
	movf	(_g_xSysSetting),w	;volatile
	subwf	0+(_g_xSysSetting)+01h,w	;volatile
	skipnc
	goto	u4751
	goto	u4750
u4751:
	goto	l13087
u4750:
	line	167
	
l13085:	
;StateMachine.c: 166: {
;StateMachine.c: 167: g_xIhProcParam.TargTempr = g_xSysSetting.SetTempr;
	movf	0+(_g_xSysSetting)+01h,w	;volatile
	movwf	0+(_g_xIhProcParam)+01h	;volatile
	line	168
;StateMachine.c: 168: }
	goto	l13089
	line	171
	
l13087:	
;StateMachine.c: 169: else
;StateMachine.c: 170: {
;StateMachine.c: 171: g_xIhProcParam.TargTempr = g_xSysSetting.BoilingPoint;
	movf	(_g_xSysSetting),w	;volatile
	movwf	0+(_g_xIhProcParam)+01h	;volatile
	line	175
	
l13089:	
;StateMachine.c: 172: }
;StateMachine.c: 173: }
;StateMachine.c: 175: g_xIhProcParam.GapTempr = 0;
	clrf	0+(_g_xIhProcParam)+02h	;volatile
	line	176
	
l13091:	
;StateMachine.c: 176: if(g_xIhProcParam.TargTempr > g_xIhProcParam.CurTempr)
	movf	0+(_g_xIhProcParam)+01h,w	;volatile
	subwf	(_g_xIhProcParam),w	;volatile
	skipnc
	goto	u4761
	goto	u4760
u4761:
	goto	l5530
u4760:
	line	177
	
l13093:	
;StateMachine.c: 177: g_xIhProcParam.GapTempr = g_xIhProcParam.TargTempr - g_xIhProcParam.CurTempr;
	movf	(_g_xIhProcParam),w	;volatile
	subwf	0+(_g_xIhProcParam)+01h,w	;volatile
	movwf	0+(_g_xIhProcParam)+02h	;volatile
	line	178
	
l5530:	
	return
	opt stack 0
GLOBAL	__end_of_vUpdateTargetTempr
	__end_of_vUpdateTargetTempr:
	signat	_vUpdateTargetTempr,89
	global	_FConvert2C

;; *************** function _FConvert2C *****************
;; Defined at:
;;		line 19 in file "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\PotProc.c"
;; Parameters:    Size  Location     Type
;;  tempF           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  tempF           1   20[BANK0 ] unsigned char 
;;  retC            2   21[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       3       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		___lwdiv
;;		___lwmod
;;		___wmul
;; This function is called by:
;;		_vTemprIncrease
;;		_vTemprDecrease
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\PotProc.c"
	line	19
global __ptext16
__ptext16:	;psect for function _FConvert2C
psect	text16
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\PotProc.c"
	line	19
	global	__size_of_FConvert2C
	__size_of_FConvert2C	equ	__end_of_FConvert2C-_FConvert2C
	
_FConvert2C:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _FConvert2C: [wreg+status,2+status,0+pclath+cstack]
;FConvert2C@tempF stored from wreg
	movwf	(FConvert2C@tempF)
	line	21
	
l15971:	
;PotProc.c: 21: unsigned int retC = (tempF - 32) * 10;
	movf	(FConvert2C@tempF),w
	movwf	(___wmul@multiplier)
	clrf	(___wmul@multiplier+1)
	movlw	-32
	addwf	(___wmul@multiplier),f
	skipc
	decf	(___wmul@multiplier+1),f
	movlw	0Ah
	movwf	(___wmul@multiplicand)
	clrf	(___wmul@multiplicand+1)
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	(FConvert2C@retC+1)
	movf	(0+(?___wmul)),w
	movwf	(FConvert2C@retC)
	line	22
;PotProc.c: 22: retC = (retC * 10) / 9;
	movlw	09h
	movwf	(___lwdiv@divisor)
	clrf	(___lwdiv@divisor+1)
	movf	(FConvert2C@retC+1),w
	movwf	(___wmul@multiplier+1)
	movf	(FConvert2C@retC),w
	movwf	(___wmul@multiplier)
	movlw	0Ah
	movwf	(___wmul@multiplicand)
	clrf	(___wmul@multiplicand+1)
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	(___lwdiv@dividend+1)
	movf	(0+(?___wmul)),w
	movwf	(___lwdiv@dividend)
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	(FConvert2C@retC+1)
	movf	(0+(?___lwdiv)),w
	movwf	(FConvert2C@retC)
	line	23
;PotProc.c: 23: if (5 <= (retC % 10))
	movlw	0Ah
	movwf	(___lwmod@divisor)
	clrf	(___lwmod@divisor+1)
	movf	(FConvert2C@retC+1),w
	movwf	(___lwmod@dividend+1)
	movf	(FConvert2C@retC),w
	movwf	(___lwmod@dividend)
	fcall	___lwmod
	movlw	0
	subwf	(1+(?___lwmod)),w
	movlw	05h
	skipnz
	subwf	(0+(?___lwmod)),w
	skipc
	goto	u9051
	goto	u9050
u9051:
	goto	l15975
u9050:
	line	24
	
l15973:	
;PotProc.c: 24: retC = (retC + 5) / 10;
	movlw	0Ah
	movwf	(___lwdiv@divisor)
	clrf	(___lwdiv@divisor+1)
	movf	(FConvert2C@retC),w
	addlw	low(05h)
	movwf	(___lwdiv@dividend)
	movf	(FConvert2C@retC+1),w
	skipnc
	addlw	1
	addlw	high(05h)
	movwf	1+(___lwdiv@dividend)
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	(FConvert2C@retC+1)
	movf	(0+(?___lwdiv)),w
	movwf	(FConvert2C@retC)
	goto	l15977
	line	26
	
l15975:	
;PotProc.c: 25: else
;PotProc.c: 26: retC = retC / 10;
	movlw	0Ah
	movwf	(___lwdiv@divisor)
	clrf	(___lwdiv@divisor+1)
	movf	(FConvert2C@retC+1),w
	movwf	(___lwdiv@dividend+1)
	movf	(FConvert2C@retC),w
	movwf	(___lwdiv@dividend)
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	(FConvert2C@retC+1)
	movf	(0+(?___lwdiv)),w
	movwf	(FConvert2C@retC)
	line	28
	
l15977:	
;PotProc.c: 28: return (unsigned char)retC;
	movf	(FConvert2C@retC),w
	line	29
	
l7945:	
	return
	opt stack 0
GLOBAL	__end_of_FConvert2C
	__end_of_FConvert2C:
	signat	_FConvert2C,4217
	global	_vSetPWM2

;; *************** function _vSetPWM2 *****************
;; Defined at:
;;		line 210 in file "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\UIProc.c"
;; Parameters:    Size  Location     Type
;;  pVal            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  pVal            1    7[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 200/100
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_vPowerOffStatus
;;		_vWaittingStatus
;;		_vHeatingStatus
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\UIProc.c"
	line	210
global __ptext17
__ptext17:	;psect for function _vSetPWM2
psect	text17
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\UIProc.c"
	line	210
	global	__size_of_vSetPWM2
	__size_of_vSetPWM2	equ	__end_of_vSetPWM2-_vSetPWM2
	
_vSetPWM2:	
;incstack = 0
	opt	stack 0
; Regs used in _vSetPWM2: [wreg]
;vSetPWM2@pVal stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	movwf	(vSetPWM2@pVal)
	line	212
	
l13205:	
;UIProc.c: 212: CCPR2L = pVal;
	movf	(vSetPWM2@pVal),w
	movwf	(27)	;volatile
	line	213
	
l6782:	
	return
	opt stack 0
GLOBAL	__end_of_vSetPWM2
	__end_of_vSetPWM2:
	signat	_vSetPWM2,4217
	global	_vSetPWM1

;; *************** function _vSetPWM1 *****************
;; Defined at:
;;		line 205 in file "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\UIProc.c"
;; Parameters:    Size  Location     Type
;;  pVal            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  pVal            1    7[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_vHeatingStatus
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1,group=0
	line	205
global __ptext18
__ptext18:	;psect for function _vSetPWM1
psect	text18
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\UIProc.c"
	line	205
	global	__size_of_vSetPWM1
	__size_of_vSetPWM1	equ	__end_of_vSetPWM1-_vSetPWM1
	
_vSetPWM1:	
;incstack = 0
	opt	stack 0
; Regs used in _vSetPWM1: [wreg]
;vSetPWM1@pVal stored from wreg
	movwf	(vSetPWM1@pVal)
	line	207
	
l13283:	
;UIProc.c: 207: CCPR1L = pVal;
	movf	(vSetPWM1@pVal),w
	movwf	(21)	;volatile
	line	208
	
l6779:	
	return
	opt stack 0
GLOBAL	__end_of_vSetPWM1
	__end_of_vSetPWM1:
	signat	_vSetPWM1,4217
	global	_vHeatingProc

;; *************** function _vHeatingProc *****************
;; Defined at:
;;		line 134 in file "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\PotProc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  TemprGap        1   14[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 200/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_bQueueEn
;;		_vGaoyuanBoilingProc
;;		_vSetBuzzer
;;		_vSetIHPower
;; This function is called by:
;;		_vHeatingStatus
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\PotProc.c"
	line	134
global __ptext19
__ptext19:	;psect for function _vHeatingProc
psect	text19
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\PotProc.c"
	line	134
	global	__size_of_vHeatingProc
	__size_of_vHeatingProc	equ	__end_of_vHeatingProc-_vHeatingProc
	
_vHeatingProc:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _vHeatingProc: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	137
	
l16149:	
;PotProc.c: 136: unsigned char TemprGap;
;PotProc.c: 137: vGaoyuanBoilingProc();
	fcall	_vGaoyuanBoilingProc
	line	139
	
l16151:	
;PotProc.c: 139: if(!g_bBtConectSuccessFlg)
	bcf	status, 5	;RP0=0, select bank0
	btfsc	(_g_bBtConectSuccessFlg/8),(_g_bBtConectSuccessFlg)&7	;volatile
	goto	u9391
	goto	u9390
u9391:
	goto	l16159
u9390:
	line	141
	
l16153:	
;PotProc.c: 140: {
;PotProc.c: 141: vSetIHPower(POW_0W);
	movlw	low(0)
	fcall	_vSetIHPower
	line	142
	
l16155:	
;PotProc.c: 142: bQueueEn(ErrHappen);
	movlw	low(010h)
	fcall	_bQueueEn
	goto	l7976
	line	147
	
l16159:	
;PotProc.c: 144: }
;PotProc.c: 147: if(g_cErrStatus != E_NONE)
	movf	((_g_cErrStatus)),w	;volatile
	btfsc	status,2
	goto	u9401
	goto	u9400
u9401:
	goto	l16167
u9400:
	line	149
	
l16161:	
;PotProc.c: 148: {
;PotProc.c: 149: vSetIHPower(POW_0W);
	movlw	low(0)
	fcall	_vSetIHPower
	line	150
	
l16163:	
;PotProc.c: 150: bQueueEn(ErrHappen);
	movlw	low(010h)
	fcall	_bQueueEn
	goto	l7976
	line	161
	
l16167:	
;PotProc.c: 152: }
;PotProc.c: 161: if(g_xIhProcParam.CurTempr < g_xIhProcParam.TargTempr)
	movf	0+(_g_xIhProcParam)+01h,w	;volatile
	subwf	(_g_xIhProcParam),w	;volatile
	skipnc
	goto	u9411
	goto	u9410
u9411:
	goto	l16183
u9410:
	line	163
	
l16169:	
;PotProc.c: 162: {
;PotProc.c: 163: TemprGap = g_xIhProcParam.TargTempr - g_xIhProcParam.CurTempr;
	movf	(_g_xIhProcParam),w	;volatile
	subwf	0+(_g_xIhProcParam)+01h,w	;volatile
	movwf	(vHeatingProc@TemprGap)
	line	164
	
l16171:	
;PotProc.c: 164: if(12 <= TemprGap)
	movlw	low(0Ch)
	subwf	(vHeatingProc@TemprGap),w
	skipc
	goto	u9421
	goto	u9420
u9421:
	goto	l16175
u9420:
	line	165
	
l16173:	
;PotProc.c: 165: { vSetIHPower(POW_800W);}
	movlw	low(0A0h)
	fcall	_vSetIHPower
	goto	l7976
	line	166
	
l16175:	
;PotProc.c: 166: else if(7 <= TemprGap && TemprGap< 12)
	movlw	low(07h)
	subwf	(vHeatingProc@TemprGap),w
	skipc
	goto	u9431
	goto	u9430
u9431:
	goto	l16181
u9430:
	
l16177:	
	movlw	low(0Ch)
	subwf	(vHeatingProc@TemprGap),w
	skipnc
	goto	u9441
	goto	u9440
u9441:
	goto	l16181
u9440:
	line	167
	
l16179:	
;PotProc.c: 167: { vSetIHPower(POW_600W);}
	movlw	low(078h)
	fcall	_vSetIHPower
	goto	l7976
	line	169
	
l16181:	
;PotProc.c: 168: else
;PotProc.c: 169: { vSetIHPower(POW_400W);}
	movlw	low(050h)
	fcall	_vSetIHPower
	goto	l7976
	line	173
	
l16183:	
;PotProc.c: 171: else
;PotProc.c: 172: {
;PotProc.c: 173: if(g_xSysSetting.KWTime == 0)
	movf	(0+(_g_xSysSetting)+02h),w	;volatile
	btfss	status,2
	goto	u9451
	goto	u9450
u9451:
	goto	l7984
u9450:
	line	175
	
l16185:	
;PotProc.c: 174: {
;PotProc.c: 175: vSetBuzzer(0);
	movlw	low(0)
	fcall	_vSetBuzzer
	line	176
	
l16187:	
;PotProc.c: 176: g_bKeepWarmFlag = 0;
	bcf	(_g_bKeepWarmFlag/8),(_g_bKeepWarmFlag)&7	;volatile
	line	177
	
l16189:	
;PotProc.c: 177: g_cKeepWarmTime = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(_g_cKeepWarmTime)^080h	;volatile
	line	179
	
l16191:	
;PotProc.c: 179: bQueueEn(HeatDone);
	movlw	low(0Fh)
	fcall	_bQueueEn
	line	180
;PotProc.c: 180: }
	goto	l7976
	line	181
	
l7984:	
	line	183
;PotProc.c: 181: else
;PotProc.c: 182: {
;PotProc.c: 183: if(!g_bKeepWarmFlag)
	btfsc	(_g_bKeepWarmFlag/8),(_g_bKeepWarmFlag)&7	;volatile
	goto	u9461
	goto	u9460
u9461:
	goto	l16201
u9460:
	line	185
	
l16193:	
;PotProc.c: 184: {
;PotProc.c: 185: vSetBuzzer(0);
	movlw	low(0)
	fcall	_vSetBuzzer
	line	186
	
l16195:	
;PotProc.c: 186: g_bKeepWarmFlag = 1;
	bsf	(_g_bKeepWarmFlag/8),(_g_bKeepWarmFlag)&7	;volatile
	line	187
	
l16197:	
;PotProc.c: 187: g_xIhProcParam.TargTempr = g_xSysSetting.SetTempr;
	movf	0+(_g_xSysSetting)+01h,w	;volatile
	movwf	0+(_g_xIhProcParam)+01h	;volatile
	line	188
	
l16199:	
;PotProc.c: 188: g_cKeepWarmTime=0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(_g_cKeepWarmTime)^080h	;volatile
	line	190
	
l16201:	
;PotProc.c: 189: }
;PotProc.c: 190: vSetIHPower(POW_0W);
	movlw	low(0)
	fcall	_vSetIHPower
	line	193
	
l7976:	
	return
	opt stack 0
GLOBAL	__end_of_vHeatingProc
	__end_of_vHeatingProc:
	signat	_vHeatingProc,89
	global	_vGaoyuanBoilingProc

;; *************** function _vGaoyuanBoilingProc *****************
;; Defined at:
;;		line 78 in file "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\PotProc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  check           1    9[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 200/0
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_Memory_Write
;;		_vSetIHPower
;; This function is called by:
;;		_vHeatingProc
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1,group=0
	line	78
global __ptext20
__ptext20:	;psect for function _vGaoyuanBoilingProc
psect	text20
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\PotProc.c"
	line	78
	global	__size_of_vGaoyuanBoilingProc
	__size_of_vGaoyuanBoilingProc	equ	__end_of_vGaoyuanBoilingProc-_vGaoyuanBoilingProc
	
_vGaoyuanBoilingProc:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _vGaoyuanBoilingProc: [wreg+status,2+status,0+pclath+cstack]
	line	87
	
l15981:	
;PotProc.c: 80: static unsigned char s_cDetectCount = 0;
;PotProc.c: 81: static unsigned char s_cMaxTempr = 0;
;PotProc.c: 82: unsigned char check;
;PotProc.c: 87: if(!g_xSysSetting.EnGaoyuan || !g_bBtConectSuccessFlg || (g_cErrStatus != E_NONE) || g_bKettleLift || g_bKeepWarmFlag ||!Work_Flag1.one.b0 ||(PowerWork == POW_0W) || (g_xIhProcParam.CurTempr <= 160) ||(200 < g_xIhProcParam.CurTempr))
	bcf	status, 5	;RP0=0, select bank0
	btfss	0+(_g_xSysSetting)+03h,2	;volatile
	goto	u9061
	goto	u9060
u9061:
	goto	l15999
u9060:
	
l15983:	
	btfss	(_g_bBtConectSuccessFlg/8),(_g_bBtConectSuccessFlg)&7	;volatile
	goto	u9071
	goto	u9070
u9071:
	goto	l15999
u9070:
	
l15985:	
	movf	((_g_cErrStatus)),w	;volatile
	btfss	status,2
	goto	u9081
	goto	u9080
u9081:
	goto	l15999
u9080:
	
l15987:	
	btfsc	(_g_bKettleLift/8),(_g_bKettleLift)&7	;volatile
	goto	u9091
	goto	u9090
u9091:
	goto	l15999
u9090:
	
l15989:	
	btfsc	(_g_bKeepWarmFlag/8),(_g_bKeepWarmFlag)&7	;volatile
	goto	u9101
	goto	u9100
u9101:
	goto	l15999
u9100:
	
l15991:	
	btfss	(_Work_Flag1),0	;volatile
	goto	u9111
	goto	u9110
u9111:
	goto	l15999
u9110:
	
l15993:	
	movf	((_PowerWork)),w	;volatile
	btfsc	status,2
	goto	u9121
	goto	u9120
u9121:
	goto	l15999
u9120:
	
l15995:	
	movlw	low(0A1h)
	subwf	(_g_xIhProcParam),w	;volatile
	skipc
	goto	u9131
	goto	u9130
u9131:
	goto	l15999
u9130:
	
l15997:	
	movlw	low(0C9h)
	subwf	(_g_xIhProcParam),w	;volatile
	skipc
	goto	u9141
	goto	u9140
u9141:
	goto	l16003
u9140:
	line	89
	
l15999:	
;PotProc.c: 88: {
;PotProc.c: 89: s_cDetectCount = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(vGaoyuanBoilingProc@s_cDetectCount)^080h
	line	90
;PotProc.c: 90: s_cMaxTempr = 0;
	clrf	(vGaoyuanBoilingProc@s_cMaxTempr)^080h
	goto	l7969
	line	95
	
l16003:	
;PotProc.c: 92: }
;PotProc.c: 95: if(s_cMaxTempr == 0)
	bsf	status, 5	;RP0=1, select bank1
	movf	((vGaoyuanBoilingProc@s_cMaxTempr)^080h),w
	btfss	status,2
	goto	u9151
	goto	u9150
u9151:
	goto	l16011
u9150:
	line	97
	
l16005:	
;PotProc.c: 96: {
;PotProc.c: 97: s_cMaxTempr = g_xIhProcParam.CurTempr;
	bcf	status, 5	;RP0=0, select bank0
	movf	(_g_xIhProcParam),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	movwf	(vGaoyuanBoilingProc@s_cMaxTempr)^080h
	line	98
	
l16007:	
;PotProc.c: 98: s_cDetectCount = 0;
	clrf	(vGaoyuanBoilingProc@s_cDetectCount)^080h
	goto	l7969
	line	103
	
l16011:	
;PotProc.c: 100: }
;PotProc.c: 103: if(s_cMaxTempr < g_xIhProcParam.CurTempr)
	bcf	status, 5	;RP0=0, select bank0
	movf	(_g_xIhProcParam),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	subwf	(vGaoyuanBoilingProc@s_cMaxTempr)^080h,w
	skipnc
	goto	u9161
	goto	u9160
u9161:
	goto	l16019
u9160:
	line	105
	
l16013:	
;PotProc.c: 104: {
;PotProc.c: 105: s_cMaxTempr = g_xIhProcParam.CurTempr;
	bcf	status, 5	;RP0=0, select bank0
	movf	(_g_xIhProcParam),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	movwf	(vGaoyuanBoilingProc@s_cMaxTempr)^080h
	goto	l16007
	line	110
	
l16019:	
;PotProc.c: 108: }
;PotProc.c: 110: s_cDetectCount++;
	incf	(vGaoyuanBoilingProc@s_cDetectCount)^080h,f
	line	111
	
l16021:	
;PotProc.c: 111: if(s_cDetectCount < 120)
	movlw	low(078h)
	subwf	(vGaoyuanBoilingProc@s_cDetectCount)^080h,w
	skipnc
	goto	u9171
	goto	u9170
u9171:
	goto	l16025
u9170:
	goto	l7969
	line	115
	
l16025:	
;PotProc.c: 115: g_xSysSetting.BoilingPoint = s_cMaxTempr;
	movf	(vGaoyuanBoilingProc@s_cMaxTempr)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_g_xSysSetting)	;volatile
	line	116
;PotProc.c: 116: g_xIhProcParam.TargTempr = g_xIhProcParam.CurTempr;
	movf	(_g_xIhProcParam),w	;volatile
	movwf	0+(_g_xIhProcParam)+01h	;volatile
	line	119
	
l16027:	
;PotProc.c: 119: vSetIHPower(POW_0W);
	movlw	low(0)
	fcall	_vSetIHPower
	line	121
	
l16029:	
;PotProc.c: 121: Memory_Write(ADDR_TEMPR_BOILING, g_xSysSetting.BoilingPoint);
	movf	(_g_xSysSetting),w	;volatile
	movwf	(Memory_Write@Value)
	movlw	low(015h)
	fcall	_Memory_Write
	line	122
	
l16031:	
;PotProc.c: 122: check = (unsigned char)~g_xSysSetting.BoilingPoint;
	bcf	status, 5	;RP0=0, select bank0
	comf	(_g_xSysSetting),w	;volatile
	movwf	(vGaoyuanBoilingProc@check)
	line	123
	
l16033:	
;PotProc.c: 123: Memory_Write(ADDR_TEMPR_BOILING1, check);
	movf	(vGaoyuanBoilingProc@check),w
	movwf	(Memory_Write@Value)
	movlw	low(016h)
	fcall	_Memory_Write
	line	126
	
l16035:	
;PotProc.c: 126: s_cDetectCount = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(vGaoyuanBoilingProc@s_cDetectCount)^080h
	line	127
	
l16037:	
;PotProc.c: 127: s_cMaxTempr = 0;
	clrf	(vGaoyuanBoilingProc@s_cMaxTempr)^080h
	line	128
	
l7969:	
	return
	opt stack 0
GLOBAL	__end_of_vGaoyuanBoilingProc
	__end_of_vGaoyuanBoilingProc:
	signat	_vGaoyuanBoilingProc,89
	global	_Memory_Write

;; *************** function _Memory_Write *****************
;; Defined at:
;;		line 666 in file "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
;; Parameters:    Size  Location     Type
;;  Addr            1    wreg     unsigned char 
;;  Value           1    7[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  Addr            1    8[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 100/200
;;		On exit  : 200/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       1       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_vSetting2Status
;;		_vGaoyuanBoilingProc
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
	line	666
global __ptext21
__ptext21:	;psect for function _Memory_Write
psect	text21
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
	line	666
	global	__size_of_Memory_Write
	__size_of_Memory_Write	equ	__end_of_Memory_Write-_Memory_Write
	
_Memory_Write:	
;incstack = 0
	opt	stack 0
; Regs used in _Memory_Write: [wreg+status,2+status,0]
;Memory_Write@Addr stored from wreg
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Memory_Write@Addr)
	line	671
	
l15865:	
;main.c: 668: static volatile bit B_GIE_On;
;main.c: 669: static volatile unsigned char i = 0;
;main.c: 671: B_GIE_On = 0;
	bcf	(Memory_Write@B_GIE_On/8),(Memory_Write@B_GIE_On)&7	;volatile
	line	672
;main.c: 672: if (GIE)
	btfss	(95/8),(95)&7	;volatile
	goto	u8901
	goto	u8900
u8901:
	goto	l15869
u8900:
	line	673
	
l15867:	
;main.c: 673: B_GIE_On = 1;
	bsf	(Memory_Write@B_GIE_On/8),(Memory_Write@B_GIE_On)&7	;volatile
	line	676
	
l15869:	
;main.c: 676: EEADR = Addr;
	movf	(Memory_Write@Addr),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(269)^0100h	;volatile
	line	677
;main.c: 677: EEDAT = Value;
	bcf	status, 6	;RP1=0, select bank0
	movf	(Memory_Write@Value),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(268)^0100h	;volatile
	line	678
	
l15871:	
;main.c: 678: EECON1 = 0;
	clrf	(283)^0100h	;volatile
	line	679
	
l15873:	
;main.c: 679: EEPGD = 0;
	bcf	(2271/8)^0100h,(2271)&7	;volatile
	line	680
	
l15875:	
;main.c: 680: EECON1 | = 0x30;
	movlw	low(030h)
	iorwf	(283)^0100h,f	;volatile
	line	681
# 681 "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
clrwdt ;# 
psect	text21
	line	684
	
l15877:	
;main.c: 684: WREN = 1;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	bsf	(2266/8)^0100h,(2266)&7	;volatile
	line	685
	
l15879:	
;main.c: 685: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	687
;main.c: 687: while (GIE)
	goto	l2129
	
l2130:	
	line	689
;main.c: 688: {
;main.c: 689: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	690
;main.c: 690: if (0 == --i)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	decfsz	(Memory_Write@i)^080h,f	;volatile
	goto	u8911
	goto	u8910
u8911:
	goto	l2129
u8910:
	goto	l2132
	line	692
	
l2129:	
	line	687
	btfsc	(95/8),(95)&7	;volatile
	goto	u8921
	goto	u8920
u8921:
	goto	l2130
u8920:
	
l2133:	
	line	693
# 693 "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
clrwdt ;# 
psect	text21
	line	695
	
l15883:	
;main.c: 695: EECON2 = 0x55;
	movlw	low(055h)
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(284)^0100h	;volatile
	line	696
;main.c: 696: EECON2 = 0xaa;
	movlw	low(0AAh)
	movwf	(284)^0100h	;volatile
	line	697
	
l15885:	
;main.c: 697: WR = 1;
	bsf	(2265/8)^0100h,(2265)&7	;volatile
	line	698
# 698 "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
nop ;# 
	line	699
# 699 "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
nop ;# 
	line	700
# 700 "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
clrwdt ;# 
psect	text21
	line	701
	
l15887:	
;main.c: 701: WREN = 0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2266/8)^0100h,(2266)&7	;volatile
	line	702
	
l15889:	
;main.c: 702: if (B_GIE_On)
	bcf	status, 6	;RP1=0, select bank0
	btfss	(Memory_Write@B_GIE_On/8),(Memory_Write@B_GIE_On)&7	;volatile
	goto	u8931
	goto	u8930
u8931:
	goto	l2134
u8930:
	line	703
	
l15891:	
;main.c: 703: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	
l2134:	
	line	705
;main.c: 705: if (WRERR) return 0;
	line	707
	
l2132:	
	return
	opt stack 0
GLOBAL	__end_of_Memory_Write
	__end_of_Memory_Write:
	signat	_Memory_Write,8312
	global	_vCurTemprUpdate

;; *************** function _vCurTemprUpdate *****************
;; Defined at:
;;		line 124 in file "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\StateMachine.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  tempr           2    4[BANK2 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       2
;;      Temps:          0       0       0       4
;;      Totals:         0       0       0       6
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_CConvert2F
;;		___lwdiv
;; This function is called by:
;;		_vWaittingStatus
;;		_vHeatingStatus
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\StateMachine.c"
	line	124
global __ptext22
__ptext22:	;psect for function _vCurTemprUpdate
psect	text22
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\StateMachine.c"
	line	124
	global	__size_of_vCurTemprUpdate
	__size_of_vCurTemprUpdate	equ	__end_of_vCurTemprUpdate-_vCurTemprUpdate
	
_vCurTemprUpdate:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _vCurTemprUpdate: [wreg+status,2+status,0+pclath+cstack]
	line	127
	
l16121:	
;StateMachine.c: 127: if(g_xSysSetting.TemprUnit)
	btfss	0+(_g_xSysSetting)+03h,0	;volatile
	goto	u9341
	goto	u9340
u9341:
	goto	l16125
u9340:
	line	129
	
l16123:	
;StateMachine.c: 128: {
;StateMachine.c: 129: g_xTftContent.curT = CConvert2F(g_xIhProcParam.CurTempr);
	movf	(_g_xIhProcParam),w	;volatile
	fcall	_CConvert2F
	movwf	0+(_g_xTftContent)+04h	;volatile
	line	130
;StateMachine.c: 130: }
	goto	l16127
	line	133
	
l16125:	
;StateMachine.c: 131: else
;StateMachine.c: 132: {
;StateMachine.c: 133: g_xTftContent.curT = g_xIhProcParam.CurTempr;
	movf	(_g_xIhProcParam),w	;volatile
	movwf	0+(_g_xTftContent)+04h	;volatile
	line	136
	
l16127:	
;StateMachine.c: 134: }
;StateMachine.c: 136: if(g_eSysStatus == WAITING)
		movlw	2
	xorwf	((_g_eSysStatus)),w	;volatile
	btfss	status,2
	goto	u9351
	goto	u9350
u9351:
	goto	l16131
u9350:
	line	138
	
l16129:	
;StateMachine.c: 137: {
;StateMachine.c: 138: g_xTftContent.Ball=8;
	movf	0+(_g_xTftContent)+02h,w	;volatile
	andlw	not (((1<<4)-1)<<4)
	iorlw	(08h & ((1<<4)-1))<<4
	movwf	0+(_g_xTftContent)+02h	;volatile
	line	139
;StateMachine.c: 139: }
	goto	l16147
	line	140
	
l16131:	
;StateMachine.c: 140: else if(g_eSysStatus == HEATING)
		movlw	3
	xorwf	((_g_eSysStatus)),w	;volatile
	btfss	status,2
	goto	u9361
	goto	u9360
u9361:
	goto	l16147
u9360:
	line	143
	
l16133:	
;StateMachine.c: 141: {
;StateMachine.c: 143: unsigned int tempr = (g_xIhProcParam.TargTempr > g_xIhProcParam.CurTempr)?(g_xIhProcParam.TargTempr - g_xIhProcParam.CurTempr) :0;
	movf	0+(_g_xIhProcParam)+01h,w	;volatile
	subwf	(_g_xIhProcParam),w	;volatile
	skipc
	goto	u9371
	goto	u9370
u9371:
	goto	l16137
u9370:
	
l16135:	
	bsf	status, 6	;RP1=1, select bank2
	clrf	(vCurTemprUpdate@tempr)^0100h
	clrf	(vCurTemprUpdate@tempr+1)^0100h
	goto	l16139
	
l16137:	
	movf	0+(_g_xIhProcParam)+01h,w	;volatile
	bsf	status, 6	;RP1=1, select bank2
	movwf	(??_vCurTemprUpdate+0)^0100h+0
	clrf	(??_vCurTemprUpdate+0)^0100h+0+1
	movf	1+(??_vCurTemprUpdate+0)^0100h+0,w
	movwf	(??_vCurTemprUpdate+2)^0100h+0+1
	bcf	status, 6	;RP1=0, select bank0
	movf	(_g_xIhProcParam),w	;volatile
	bsf	status, 6	;RP1=1, select bank2
	subwf	0+(??_vCurTemprUpdate+0)^0100h+0,w
	movwf	(??_vCurTemprUpdate+2)^0100h+0
	skipc
	decf	(??_vCurTemprUpdate+2)^0100h+0+1,f
	movf	0+(??_vCurTemprUpdate+2)^0100h+0,w
	movwf	(vCurTemprUpdate@tempr)^0100h
	movf	1+(??_vCurTemprUpdate+2)^0100h+0,w
	movwf	(vCurTemprUpdate@tempr+1)^0100h
	line	146
	
l16139:	
;StateMachine.c: 146: tempr = tempr<<3;
	clrc
	rlf	(vCurTemprUpdate@tempr)^0100h,f
	rlf	(vCurTemprUpdate@tempr+1)^0100h,f
	clrc
	rlf	(vCurTemprUpdate@tempr)^0100h,f
	rlf	(vCurTemprUpdate@tempr+1)^0100h,f
	clrc
	rlf	(vCurTemprUpdate@tempr)^0100h,f
	rlf	(vCurTemprUpdate@tempr+1)^0100h,f
	line	147
	
l16141:	
;StateMachine.c: 147: if(g_xIhProcParam.GapTempr)
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(_g_xIhProcParam)+02h),w	;volatile
	btfsc	status,2
	goto	u9381
	goto	u9380
u9381:
	goto	l16145
u9380:
	line	148
	
l16143:	
;StateMachine.c: 148: g_xTftContent.Ball = tempr/g_xIhProcParam.GapTempr;
	movf	0+(_g_xIhProcParam)+02h,w	;volatile
	movwf	(___lwdiv@divisor)
	clrf	(___lwdiv@divisor+1)
	bsf	status, 6	;RP1=1, select bank2
	movf	(vCurTemprUpdate@tempr+1)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___lwdiv@dividend+1)
	bsf	status, 6	;RP1=1, select bank2
	movf	(vCurTemprUpdate@tempr)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___lwdiv@dividend)
	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(??_vCurTemprUpdate+0)^0100h+0
	swapf	(??_vCurTemprUpdate+0)^0100h+0,f
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_g_xTftContent)+02h,w	;volatile
	bsf	status, 6	;RP1=1, select bank2
	xorwf	(??_vCurTemprUpdate+0)^0100h+0,w
	andlw	not (((1<<4)-1)<<4)
	xorwf	(??_vCurTemprUpdate+0)^0100h+0,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(_g_xTftContent)+02h	;volatile
	goto	l16147
	line	150
	
l16145:	
;StateMachine.c: 149: else
;StateMachine.c: 150: g_xTftContent.Ball = 0;
	movlw	((0 & ((1<<4)-1))<<4)|not (((1<<4)-1)<<4)
	andwf	0+(_g_xTftContent)+02h,f	;volatile
	line	152
	
l16147:	
;StateMachine.c: 151: }
;StateMachine.c: 152: g_xTftAction = UpdCurTempr;
	movlw	low(03h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_g_xTftAction)^080h	;volatile
	line	153
	
l5521:	
	return
	opt stack 0
GLOBAL	__end_of_vCurTemprUpdate
	__end_of_vCurTemprUpdate:
	signat	_vCurTemprUpdate,89
	global	_bQueueDe

;; *************** function _bQueueDe *****************
;; Defined at:
;;		line 518 in file "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\StateMachine.c"
;; Parameters:    Size  Location     Type
;;  pVal            1    wreg     PTR enum E972
;;		 -> g_xSysAction(1), 
;; Auto vars:     Size  Location     Type
;;  pVal            1   14[BANK0 ] PTR enum E972
;;		 -> g_xSysAction(1), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/200
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		___awmod
;; This function is called by:
;;		_vSystemStatus
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1,group=0
	line	518
global __ptext23
__ptext23:	;psect for function _bQueueDe
psect	text23
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\StateMachine.c"
	line	518
	global	__size_of_bQueueDe
	__size_of_bQueueDe	equ	__end_of_bQueueDe-_bQueueDe
	
_bQueueDe:	
;incstack = 0
	opt	stack 0
; Regs used in _bQueueDe: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;bQueueDe@pVal stored from wreg
	movwf	(bQueueDe@pVal)
	line	520
	
l13961:	
;StateMachine.c: 520: if(g_xActQueue.front == g_xActQueue.rear)
	bsf	status, 6	;RP1=1, select bank2
	movf	0+(_g_xActQueue)^0100h+0Ch,w	;volatile
	xorwf	0+(_g_xActQueue)^0100h+0Dh,w	;volatile
	skipz
	goto	u5971
	goto	u5970
u5971:
	goto	l13965
u5970:
	goto	l5660
	line	524
	
l13965:	
;StateMachine.c: 523: }
;StateMachine.c: 524: *pVal = g_xActQueue.buf[g_xActQueue.front];
	movf	0+(_g_xActQueue)^0100h+0Ch,w	;volatile
	addlw	low(_g_xActQueue|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_bQueueDe+0)+0
	movf	(bQueueDe@pVal),w
	movwf	fsr0
	movf	(??_bQueueDe+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	525
	
l13967:	
;StateMachine.c: 525: g_xActQueue.front = (g_xActQueue.front + 1) % 12;
	bsf	status, 6	;RP1=1, select bank2
	movf	0+(_g_xActQueue)^0100h+0Ch,w	;volatile
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awmod@dividend)
	clrf	(___awmod@dividend+1)
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	movlw	0Ch
	movwf	(___awmod@divisor)
	clrf	(___awmod@divisor+1)
	fcall	___awmod
	movf	(0+(?___awmod)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	0+(_g_xActQueue)^0100h+0Ch	;volatile
	line	527
	
l5660:	
	return
	opt stack 0
GLOBAL	__end_of_bQueueDe
	__end_of_bQueueDe:
	signat	_bQueueDe,4216
	global	_vStartKeyProc

;; *************** function _vStartKeyProc *****************
;; Defined at:
;;		line 166 in file "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_bQueueEn
;;		_vSetBuzzer
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
	line	166
global __ptext24
__ptext24:	;psect for function _vStartKeyProc
psect	text24
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
	line	166
	global	__size_of_vStartKeyProc
	__size_of_vStartKeyProc	equ	__end_of_vStartKeyProc-_vStartKeyProc
	
_vStartKeyProc:	
;incstack = 0
	opt	stack 0
; Regs used in _vStartKeyProc: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	168
	
l14733:	
;main.c: 168: if(g_bStartKeyPressed)
	btfss	(_g_bStartKeyPressed/8),(_g_bStartKeyPressed)&7	;volatile
	goto	u6941
	goto	u6940
u6941:
	goto	l2020
u6940:
	line	170
	
l14735:	
;main.c: 169: {
;main.c: 170: g_bStartKeyPressed = 0;
	bcf	(_g_bStartKeyPressed/8),(_g_bStartKeyPressed)&7	;volatile
	line	171
	
l14737:	
;main.c: 171: vSetBuzzer(0);
	movlw	low(0)
	fcall	_vSetBuzzer
	line	172
	
l14739:	
;main.c: 172: bQueueEn(StartKey);
	movlw	low(01h)
	fcall	_bQueueEn
	line	174
	
l2020:	
	return
	opt stack 0
GLOBAL	__end_of_vStartKeyProc
	__end_of_vStartKeyProc:
	signat	_vStartKeyProc,89
	global	_vSettingKeyProc

;; *************** function _vSettingKeyProc *****************
;; Defined at:
;;		line 176 in file "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_bQueueEn
;;		_vSetBuzzer
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1,group=0
	line	176
global __ptext25
__ptext25:	;psect for function _vSettingKeyProc
psect	text25
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
	line	176
	global	__size_of_vSettingKeyProc
	__size_of_vSettingKeyProc	equ	__end_of_vSettingKeyProc-_vSettingKeyProc
	
_vSettingKeyProc:	
;incstack = 0
	opt	stack 0
; Regs used in _vSettingKeyProc: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	178
	
l14741:	
;main.c: 178: if(g_bSetKeyPressed)
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_g_bSetKeyPressed/8),(_g_bSetKeyPressed)&7	;volatile
	goto	u6951
	goto	u6950
u6951:
	goto	l2024
u6950:
	line	180
	
l14743:	
;main.c: 179: {
;main.c: 180: g_bSetKeyPressed = 0;
	bcf	(_g_bSetKeyPressed/8),(_g_bSetKeyPressed)&7	;volatile
	line	181
	
l14745:	
;main.c: 181: vSetBuzzer(0);
	movlw	low(0)
	fcall	_vSetBuzzer
	line	182
	
l14747:	
;main.c: 182: bQueueEn(SetKey);
	movlw	low(02h)
	fcall	_bQueueEn
	line	184
	
l2024:	
	return
	opt stack 0
GLOBAL	__end_of_vSettingKeyProc
	__end_of_vSettingKeyProc:
	signat	_vSettingKeyProc,89
	global	_vSetBuzzer

;; *************** function _vSetBuzzer *****************
;; Defined at:
;;		line 3 in file "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\IHProc.c"
;; Parameters:    Size  Location     Type
;;  bShortLong      1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  bShortLong      1    7[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_vStartKeyProc
;;		_vSettingKeyProc
;;		_vWaittingStatus
;;		_vHeatingProc
;; This function uses a non-reentrant model
;;
psect	text26,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\IHProc.c"
	line	3
global __ptext26
__ptext26:	;psect for function _vSetBuzzer
psect	text26
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\IHProc.c"
	line	3
	global	__size_of_vSetBuzzer
	__size_of_vSetBuzzer	equ	__end_of_vSetBuzzer-_vSetBuzzer
	
_vSetBuzzer:	
;incstack = 0
	opt	stack 0
; Regs used in _vSetBuzzer: [wreg+status,2+status,0]
;vSetBuzzer@bShortLong stored from wreg
	movwf	(vSetBuzzer@bShortLong)
	line	5
	
l13033:	
;IHProc.c: 5: if(!g_xSysSetting.EnBeep) return;
	btfsc	0+(_g_xSysSetting)+03h,1	;volatile
	goto	u4681
	goto	u4680
u4681:
	goto	l13037
u4680:
	goto	l9054
	line	7
	
l13037:	
;IHProc.c: 7: g_cSendCommNo = 0;
	clrf	(_g_cSendCommNo)	;volatile
	line	8
	
l13039:	
;IHProc.c: 8: if(bShortLong)
	movf	((vSetBuzzer@bShortLong)),w
	btfsc	status,2
	goto	u4691
	goto	u4690
u4691:
	goto	l9055
u4690:
	line	10
	
l13041:	
;IHProc.c: 9: {
;IHProc.c: 10: Work_Flag1.one.b4 = 1;
	bsf	(_Work_Flag1),4	;volatile
	line	11
;IHProc.c: 11: }
	goto	l9054
	line	12
	
l9055:	
	line	14
;IHProc.c: 12: else
;IHProc.c: 13: {
;IHProc.c: 14: Work_Flag1.one.b3 = 1;
	bsf	(_Work_Flag1),3	;volatile
	line	16
	
l9054:	
	return
	opt stack 0
GLOBAL	__end_of_vSetBuzzer
	__end_of_vSetBuzzer:
	signat	_vSetBuzzer,4217
	global	_vReadSysCfg

;; *************** function _vReadSysCfg *****************
;; Defined at:
;;		line 730 in file "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  temp1           1    3[BANK2 ] unsigned char 
;;  temp2           1    2[BANK2 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/200
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       2
;;      Temps:          0       0       0       2
;;      Totals:         0       0       0       4
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_CConvert2F
;;		_Memory_Read
;;		_vSysParam2Tft
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text27,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
	line	730
global __ptext27
__ptext27:	;psect for function _vReadSysCfg
psect	text27
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
	line	730
	global	__size_of_vReadSysCfg
	__size_of_vReadSysCfg	equ	__end_of_vReadSysCfg-_vReadSysCfg
	
_vReadSysCfg:	
;incstack = 0
	opt	stack 0
; Regs used in _vReadSysCfg: [wreg+status,2+status,0+pclath+cstack]
	line	741
	
l17137:	
;main.c: 732: unsigned char temp1, temp2;
;main.c: 741: temp1 = Memory_Read(ADDR_KEEP_WARM_TIME);
	movlw	low(0Bh)
	fcall	_Memory_Read
	movwf	(vReadSysCfg@temp1)^0100h
	line	742
;main.c: 742: temp2 = Memory_Read(ADDR_KEEP_WARM_TIME1);
	movlw	low(0Ch)
	fcall	_Memory_Read
	movwf	(vReadSysCfg@temp2)^0100h
	line	743
	
l17139:	
;main.c: 743: if((temp1+temp2)==0xFF && ((temp1==1)||(temp1==31)||(temp1==61)))
	movf	(vReadSysCfg@temp1)^0100h,w
	addwf	(vReadSysCfg@temp2)^0100h,w
	movwf	(??_vReadSysCfg+0)^0100h+0
	clrf	(??_vReadSysCfg+0)^0100h+0+1
	rlf	1+(??_vReadSysCfg+0)^0100h+0,f
	
		incf	((??_vReadSysCfg+0)^0100h+0),w
iorwf	((??_vReadSysCfg+0)^0100h+1),w
	btfss	status,2
	goto	u10791
	goto	u10790
u10791:
	goto	l17149
u10790:
	
l17141:	
		decf	((vReadSysCfg@temp1)^0100h),w
	btfsc	status,2
	goto	u10801
	goto	u10800
u10801:
	goto	l17147
u10800:
	
l17143:	
		movlw	31
	xorwf	((vReadSysCfg@temp1)^0100h),w
	btfsc	status,2
	goto	u10811
	goto	u10810
u10811:
	goto	l17147
u10810:
	
l17145:	
		movlw	61
	xorwf	((vReadSysCfg@temp1)^0100h),w
	btfss	status,2
	goto	u10821
	goto	u10820
u10821:
	goto	l17149
u10820:
	line	745
	
l17147:	
;main.c: 744: {
;main.c: 745: g_xSysSetting.KWTime = temp1-1;
	movf	(vReadSysCfg@temp1)^0100h,w
	addlw	0FFh
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(_g_xSysSetting)+02h	;volatile
	line	746
;main.c: 746: }
	goto	l17151
	line	748
	
l17149:	
;main.c: 747: else
;main.c: 748: g_xSysSetting.KWTime = 0;
	bcf	status, 6	;RP1=0, select bank0
	clrf	0+(_g_xSysSetting)+02h	;volatile
	line	751
	
l17151:	
;main.c: 751: g_xTftContent.sItem = 0;
	movlw	((0 & ((1<<3)-1))<<0)|not (((1<<3)-1)<<0)
	andwf	0+(_g_xTftContent)+01h,f	;volatile
	line	752
	
l17153:	
;main.c: 752: vSysParam2Tft(g_xTftContent.sItem);
	movf	0+(_g_xTftContent)+01h,w	;volatile
	andlw	(1<<3)-1
	fcall	_vSysParam2Tft
	line	755
	
l17155:	
;main.c: 755: temp1 = Memory_Read(ADDR_PRE_BOILING);
	movlw	low(0Dh)
	fcall	_Memory_Read
	movwf	(vReadSysCfg@temp1)^0100h
	line	756
	
l17157:	
;main.c: 756: temp2 = Memory_Read(ADDR_PRE_BOILING1);
	movlw	low(0Eh)
	fcall	_Memory_Read
	movwf	(vReadSysCfg@temp2)^0100h
	line	757
	
l17159:	
;main.c: 757: if((temp1+temp2)==0xFF && ((temp1==1)||(temp1==2)))
	movf	(vReadSysCfg@temp1)^0100h,w
	addwf	(vReadSysCfg@temp2)^0100h,w
	movwf	(??_vReadSysCfg+0)^0100h+0
	clrf	(??_vReadSysCfg+0)^0100h+0+1
	rlf	1+(??_vReadSysCfg+0)^0100h+0,f
	
		incf	((??_vReadSysCfg+0)^0100h+0),w
iorwf	((??_vReadSysCfg+0)^0100h+1),w
	btfss	status,2
	goto	u10831
	goto	u10830
u10831:
	goto	l2146
u10830:
	
l17161:	
		decf	((vReadSysCfg@temp1)^0100h),w
	btfsc	status,2
	goto	u10841
	goto	u10840
u10841:
	goto	l17165
u10840:
	
l17163:	
		movlw	2
	xorwf	((vReadSysCfg@temp1)^0100h),w
	btfss	status,2
	goto	u10851
	goto	u10850
u10851:
	goto	l2146
u10850:
	line	759
	
l17165:	
;main.c: 758: {
;main.c: 759: g_xSysSetting.PreBoiling = temp1-1;
	movf	(vReadSysCfg@temp1)^0100h,w
	addlw	0FFh
	movwf	(??_vReadSysCfg+0)^0100h+0
	rlf	(??_vReadSysCfg+0)^0100h+0,f
	rlf	(??_vReadSysCfg+0)^0100h+0,f
	rlf	(??_vReadSysCfg+0)^0100h+0,f
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_g_xSysSetting)+03h,w	;volatile
	bsf	status, 6	;RP1=1, select bank2
	xorwf	(??_vReadSysCfg+0)^0100h+0,w
	andlw	not (((1<<1)-1)<<3)
	xorwf	(??_vReadSysCfg+0)^0100h+0,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(_g_xSysSetting)+03h	;volatile
	line	760
;main.c: 760: }
	goto	l17167
	line	761
	
l2146:	
	line	762
;main.c: 761: else
;main.c: 762: g_xSysSetting.PreBoiling = 0;
	bcf	status, 6	;RP1=0, select bank0
	bcf	0+(_g_xSysSetting)+03h,3	;volatile
	line	765
	
l17167:	
;main.c: 765: temp1 = Memory_Read(ADDR_TEMPR_UNIT);
	movlw	low(0Fh)
	fcall	_Memory_Read
	movwf	(vReadSysCfg@temp1)^0100h
	line	766
;main.c: 766: temp2 = Memory_Read(ADDR_TEMPR_UNIT1);
	movlw	low(010h)
	fcall	_Memory_Read
	movwf	(vReadSysCfg@temp2)^0100h
	line	767
	
l17169:	
;main.c: 767: if(((temp1+temp2)==0xFF) && ((temp1==1)||(temp1==2)))
	movf	(vReadSysCfg@temp1)^0100h,w
	addwf	(vReadSysCfg@temp2)^0100h,w
	movwf	(??_vReadSysCfg+0)^0100h+0
	clrf	(??_vReadSysCfg+0)^0100h+0+1
	rlf	1+(??_vReadSysCfg+0)^0100h+0,f
	
		incf	((??_vReadSysCfg+0)^0100h+0),w
iorwf	((??_vReadSysCfg+0)^0100h+1),w
	btfss	status,2
	goto	u10861
	goto	u10860
u10861:
	goto	l2150
u10860:
	
l17171:	
		decf	((vReadSysCfg@temp1)^0100h),w
	btfsc	status,2
	goto	u10871
	goto	u10870
u10871:
	goto	l17175
u10870:
	
l17173:	
		movlw	2
	xorwf	((vReadSysCfg@temp1)^0100h),w
	btfss	status,2
	goto	u10881
	goto	u10880
u10881:
	goto	l2150
u10880:
	line	769
	
l17175:	
;main.c: 768: {
;main.c: 769: g_xSysSetting.TemprUnit = temp1-1;
	movlw	low(0FFh)
	addwf	(vReadSysCfg@temp1)^0100h,w
	movwf	(??_vReadSysCfg+0)^0100h+0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_g_xSysSetting)+03h,w	;volatile
	bsf	status, 6	;RP1=1, select bank2
	xorwf	0+(??_vReadSysCfg+0)^0100h+0,w
	andlw	not ((1<<1)-1)
	xorwf	0+(??_vReadSysCfg+0)^0100h+0,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(_g_xSysSetting)+03h	;volatile
	line	770
;main.c: 770: }
	goto	l2153
	line	771
	
l2150:	
	line	773
;main.c: 771: else
;main.c: 772: {
;main.c: 773: g_xSysSetting.TemprUnit = 0;
	bcf	status, 6	;RP1=0, select bank0
	bcf	0+(_g_xSysSetting)+03h,0	;volatile
	line	774
	
l2153:	
	line	776
;main.c: 774: }
;main.c: 776: if(g_xSysSetting.TemprUnit)
	btfss	0+(_g_xSysSetting)+03h,0	;volatile
	goto	u10891
	goto	u10890
u10891:
	goto	l17179
u10890:
	line	777
	
l17177:	
;main.c: 777: g_xTftContent.setT = CConvert2F(g_xSysSetting.SetTempr);
	movf	0+(_g_xSysSetting)+01h,w	;volatile
	fcall	_CConvert2F
	movwf	0+(_g_xTftContent)+03h	;volatile
	goto	l17181
	line	779
	
l17179:	
;main.c: 778: else
;main.c: 779: g_xTftContent.setT = g_xSysSetting.SetTempr;
	movf	0+(_g_xSysSetting)+01h,w	;volatile
	movwf	0+(_g_xTftContent)+03h	;volatile
	line	782
	
l17181:	
;main.c: 782: temp1 = Memory_Read(ADDR_SOUND_ONOFF);
	movlw	low(011h)
	fcall	_Memory_Read
	movwf	(vReadSysCfg@temp1)^0100h
	line	783
	
l17183:	
;main.c: 783: temp2 = Memory_Read(ADDR_SOUND_ONOFF1);
	movlw	low(012h)
	fcall	_Memory_Read
	movwf	(vReadSysCfg@temp2)^0100h
	line	784
	
l17185:	
;main.c: 784: if(((temp1+temp2)==0xFF) && ((temp1==1)||(temp1==2)))
	movf	(vReadSysCfg@temp1)^0100h,w
	addwf	(vReadSysCfg@temp2)^0100h,w
	movwf	(??_vReadSysCfg+0)^0100h+0
	clrf	(??_vReadSysCfg+0)^0100h+0+1
	rlf	1+(??_vReadSysCfg+0)^0100h+0,f
	
		incf	((??_vReadSysCfg+0)^0100h+0),w
iorwf	((??_vReadSysCfg+0)^0100h+1),w
	btfss	status,2
	goto	u10901
	goto	u10900
u10901:
	goto	l2156
u10900:
	
l17187:	
		decf	((vReadSysCfg@temp1)^0100h),w
	btfsc	status,2
	goto	u10911
	goto	u10910
u10911:
	goto	l17191
u10910:
	
l17189:	
		movlw	2
	xorwf	((vReadSysCfg@temp1)^0100h),w
	btfss	status,2
	goto	u10921
	goto	u10920
u10921:
	goto	l2156
u10920:
	line	786
	
l17191:	
;main.c: 785: {
;main.c: 786: g_xSysSetting.EnBeep = temp1-1;
	movf	(vReadSysCfg@temp1)^0100h,w
	addlw	0FFh
	movwf	(??_vReadSysCfg+0)^0100h+0
	rlf	(??_vReadSysCfg+0)^0100h+0,f
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_g_xSysSetting)+03h,w	;volatile
	bsf	status, 6	;RP1=1, select bank2
	xorwf	(??_vReadSysCfg+0)^0100h+0,w
	andlw	not (((1<<1)-1)<<1)
	xorwf	(??_vReadSysCfg+0)^0100h+0,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(_g_xSysSetting)+03h	;volatile
	line	787
;main.c: 787: }
	goto	l17193
	line	788
	
l2156:	
	line	789
;main.c: 788: else
;main.c: 789: g_xSysSetting.EnBeep = 0;
	bcf	status, 6	;RP1=0, select bank0
	bcf	0+(_g_xSysSetting)+03h,1	;volatile
	line	792
	
l17193:	
;main.c: 792: temp1 = Memory_Read(ADDR_GAOYUAN_ONOFF);
	movlw	low(013h)
	fcall	_Memory_Read
	movwf	(vReadSysCfg@temp1)^0100h
	line	793
;main.c: 793: temp2 = Memory_Read(ADDR_GAOYUAN_ONOFF1);
	movlw	low(014h)
	fcall	_Memory_Read
	movwf	(vReadSysCfg@temp2)^0100h
	line	794
	
l17195:	
;main.c: 794: g_xSysSetting.BoilingPoint = 200;
	movlw	low(0C8h)
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_g_xSysSetting)	;volatile
	line	795
	
l17197:	
;main.c: 795: if(((temp1+temp2)==0xFF) && ((temp1==1)||(temp1==2)))
	bsf	status, 6	;RP1=1, select bank2
	movf	(vReadSysCfg@temp1)^0100h,w
	addwf	(vReadSysCfg@temp2)^0100h,w
	movwf	(??_vReadSysCfg+0)^0100h+0
	clrf	(??_vReadSysCfg+0)^0100h+0+1
	rlf	1+(??_vReadSysCfg+0)^0100h+0,f
	
		incf	((??_vReadSysCfg+0)^0100h+0),w
iorwf	((??_vReadSysCfg+0)^0100h+1),w
	btfss	status,2
	goto	u10931
	goto	u10930
u10931:
	goto	l2160
u10930:
	
l17199:	
		decf	((vReadSysCfg@temp1)^0100h),w
	btfsc	status,2
	goto	u10941
	goto	u10940
u10941:
	goto	l17203
u10940:
	
l17201:	
		movlw	2
	xorwf	((vReadSysCfg@temp1)^0100h),w
	btfss	status,2
	goto	u10951
	goto	u10950
u10951:
	goto	l2160
u10950:
	line	797
	
l17203:	
;main.c: 796: {
;main.c: 797: g_xSysSetting.EnGaoyuan = temp1-1;
	movf	(vReadSysCfg@temp1)^0100h,w
	addlw	0FFh
	movwf	(??_vReadSysCfg+0)^0100h+0
	rlf	(??_vReadSysCfg+0)^0100h+0,f
	rlf	(??_vReadSysCfg+0)^0100h+0,f
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_g_xSysSetting)+03h,w	;volatile
	bsf	status, 6	;RP1=1, select bank2
	xorwf	(??_vReadSysCfg+0)^0100h+0,w
	andlw	not (((1<<1)-1)<<2)
	xorwf	(??_vReadSysCfg+0)^0100h+0,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(_g_xSysSetting)+03h	;volatile
	line	798
	
l17205:	
;main.c: 798: if(g_xSysSetting.EnGaoyuan)
	btfss	0+(_g_xSysSetting)+03h,2	;volatile
	goto	u10961
	goto	u10960
u10961:
	goto	l2166
u10960:
	line	805
	
l17207:	
;main.c: 799: {
;main.c: 805: temp1 = Memory_Read(ADDR_TEMPR_BOILING);
	movlw	low(015h)
	fcall	_Memory_Read
	movwf	(vReadSysCfg@temp1)^0100h
	line	806
;main.c: 806: temp2 = Memory_Read(ADDR_TEMPR_BOILING1);
	movlw	low(016h)
	fcall	_Memory_Read
	movwf	(vReadSysCfg@temp2)^0100h
	line	808
	
l17209:	
;main.c: 808: if(((temp1+temp2)==0xFF) && ((160<temp1)&&(temp1<=200)))
	movf	(vReadSysCfg@temp1)^0100h,w
	addwf	(vReadSysCfg@temp2)^0100h,w
	movwf	(??_vReadSysCfg+0)^0100h+0
	clrf	(??_vReadSysCfg+0)^0100h+0+1
	rlf	1+(??_vReadSysCfg+0)^0100h+0,f
	
		incf	((??_vReadSysCfg+0)^0100h+0),w
iorwf	((??_vReadSysCfg+0)^0100h+1),w
	btfss	status,2
	goto	u10971
	goto	u10970
u10971:
	goto	l2166
u10970:
	
l17211:	
	movlw	low(0A1h)
	subwf	(vReadSysCfg@temp1)^0100h,w
	skipc
	goto	u10981
	goto	u10980
u10981:
	goto	l2166
u10980:
	
l17213:	
	movlw	low(0C9h)
	subwf	(vReadSysCfg@temp1)^0100h,w
	skipnc
	goto	u10991
	goto	u10990
u10991:
	goto	l2166
u10990:
	line	809
	
l17215:	
;main.c: 809: g_xSysSetting.BoilingPoint = temp1;
	movf	(vReadSysCfg@temp1)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_g_xSysSetting)	;volatile
	goto	l2166
	line	812
	
l2160:	
	line	813
;main.c: 812: else
;main.c: 813: g_xSysSetting.EnGaoyuan = 0;
	bcf	status, 6	;RP1=0, select bank0
	bcf	0+(_g_xSysSetting)+03h,2	;volatile
	line	814
	
l2166:	
	return
	opt stack 0
GLOBAL	__end_of_vReadSysCfg
	__end_of_vReadSysCfg:
	signat	_vReadSysCfg,89
	global	_vSysParam2Tft

;; *************** function _vSysParam2Tft *****************
;; Defined at:
;;		line 288 in file "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\StateMachine.c"
;; Parameters:    Size  Location     Type
;;  item            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  item            1    9[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       2       0       0
;;      Totals:         0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_vReadSysCfg
;;		_vSetting1Status
;; This function uses a non-reentrant model
;;
psect	text28,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\StateMachine.c"
	line	288
global __ptext28
__ptext28:	;psect for function _vSysParam2Tft
psect	text28
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\StateMachine.c"
	line	288
	global	__size_of_vSysParam2Tft
	__size_of_vSysParam2Tft	equ	__end_of_vSysParam2Tft-_vSysParam2Tft
	
_vSysParam2Tft:	
;incstack = 0
	opt	stack 0
; Regs used in _vSysParam2Tft: [wreg+status,2+status,0]
;vSysParam2Tft@item stored from wreg
	movwf	(vSysParam2Tft@item)
	line	290
	
l16047:	
;StateMachine.c: 290: if(item==1)
		decf	((vSysParam2Tft@item)),w
	btfss	status,2
	goto	u9191
	goto	u9190
u9191:
	goto	l16051
u9190:
	line	291
	
l16049:	
;StateMachine.c: 291: g_xTftContent.sVal = g_xSysSetting.PreBoiling;
	rrf	0+(_g_xSysSetting)+03h,w	;volatile
	movwf	(??_vSysParam2Tft+0)+0
	rrf	(??_vSysParam2Tft+0)+0,f
	rrf	(??_vSysParam2Tft+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_vSysParam2Tft+1)+0
	rlf	(??_vSysParam2Tft+1)+0,f
	rlf	(??_vSysParam2Tft+1)+0,f
	rlf	(??_vSysParam2Tft+1)+0,f
	movf	0+(_g_xTftContent)+01h,w	;volatile
	xorwf	(??_vSysParam2Tft+1)+0,w
	andlw	not (((1<<2)-1)<<3)
	xorwf	(??_vSysParam2Tft+1)+0,w
	movwf	0+(_g_xTftContent)+01h	;volatile
	goto	l5575
	line	292
	
l16051:	
;StateMachine.c: 292: else if(item==2)
		movlw	2
	xorwf	((vSysParam2Tft@item)),w
	btfss	status,2
	goto	u9201
	goto	u9200
u9201:
	goto	l16055
u9200:
	line	293
	
l16053:	
;StateMachine.c: 293: g_xTftContent.sVal = g_xSysSetting.TemprUnit;
	movf	0+(_g_xSysSetting)+03h,w	;volatile
	andlw	(1<<1)-1
	movwf	(??_vSysParam2Tft+0)+0
	rlf	(??_vSysParam2Tft+0)+0,f
	rlf	(??_vSysParam2Tft+0)+0,f
	rlf	(??_vSysParam2Tft+0)+0,f
	movf	0+(_g_xTftContent)+01h,w	;volatile
	xorwf	(??_vSysParam2Tft+0)+0,w
	andlw	not (((1<<2)-1)<<3)
	xorwf	(??_vSysParam2Tft+0)+0,w
	movwf	0+(_g_xTftContent)+01h	;volatile
	goto	l5575
	line	294
	
l16055:	
;StateMachine.c: 294: else if(item==3)
		movlw	3
	xorwf	((vSysParam2Tft@item)),w
	btfss	status,2
	goto	u9211
	goto	u9210
u9211:
	goto	l16059
u9210:
	line	295
	
l16057:	
;StateMachine.c: 295: g_xTftContent.sVal = g_xSysSetting.EnBeep;
	rrf	0+(_g_xSysSetting)+03h,w	;volatile
	andlw	(1<<1)-1
	movwf	(??_vSysParam2Tft+0)+0
	rlf	(??_vSysParam2Tft+0)+0,f
	rlf	(??_vSysParam2Tft+0)+0,f
	rlf	(??_vSysParam2Tft+0)+0,f
	movf	0+(_g_xTftContent)+01h,w	;volatile
	xorwf	(??_vSysParam2Tft+0)+0,w
	andlw	not (((1<<2)-1)<<3)
	xorwf	(??_vSysParam2Tft+0)+0,w
	movwf	0+(_g_xTftContent)+01h	;volatile
	goto	l5575
	line	296
	
l16059:	
;StateMachine.c: 296: else if(item==4)
		movlw	4
	xorwf	((vSysParam2Tft@item)),w
	btfss	status,2
	goto	u9221
	goto	u9220
u9221:
	goto	l16063
u9220:
	line	297
	
l16061:	
;StateMachine.c: 297: g_xTftContent.sVal = g_xSysSetting.EnGaoyuan;
	rrf	0+(_g_xSysSetting)+03h,w	;volatile
	movwf	(??_vSysParam2Tft+0)+0
	rrf	(??_vSysParam2Tft+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_vSysParam2Tft+1)+0
	rlf	(??_vSysParam2Tft+1)+0,f
	rlf	(??_vSysParam2Tft+1)+0,f
	rlf	(??_vSysParam2Tft+1)+0,f
	movf	0+(_g_xTftContent)+01h,w	;volatile
	xorwf	(??_vSysParam2Tft+1)+0,w
	andlw	not (((1<<2)-1)<<3)
	xorwf	(??_vSysParam2Tft+1)+0,w
	movwf	0+(_g_xTftContent)+01h	;volatile
	goto	l5575
	line	300
	
l16063:	
;StateMachine.c: 298: else
;StateMachine.c: 299: {
;StateMachine.c: 300: if(g_xSysSetting.KWTime==30)
		movlw	30
	xorwf	(0+(_g_xSysSetting)+02h),w	;volatile
	btfss	status,2
	goto	u9231
	goto	u9230
u9231:
	goto	l16067
u9230:
	line	301
	
l16065:	
;StateMachine.c: 301: g_xTftContent.sVal=1;
	movf	0+(_g_xTftContent)+01h,w	;volatile
	andlw	not (((1<<2)-1)<<3)
	iorlw	(01h & ((1<<2)-1))<<3
	movwf	0+(_g_xTftContent)+01h	;volatile
	goto	l5575
	line	302
	
l16067:	
;StateMachine.c: 302: else if(g_xSysSetting.KWTime==60)
		movlw	60
	xorwf	(0+(_g_xSysSetting)+02h),w	;volatile
	btfss	status,2
	goto	u9241
	goto	u9240
u9241:
	goto	l16071
u9240:
	line	303
	
l16069:	
;StateMachine.c: 303: g_xTftContent.sVal=2;
	movf	0+(_g_xTftContent)+01h,w	;volatile
	andlw	not (((1<<2)-1)<<3)
	iorlw	(02h & ((1<<2)-1))<<3
	movwf	0+(_g_xTftContent)+01h	;volatile
	goto	l5575
	line	305
	
l16071:	
;StateMachine.c: 304: else
;StateMachine.c: 305: g_xTftContent.sVal=0;
	movlw	((0 & ((1<<2)-1))<<3)|not (((1<<2)-1)<<3)
	andwf	0+(_g_xTftContent)+01h,f	;volatile
	line	307
	
l5575:	
	return
	opt stack 0
GLOBAL	__end_of_vSysParam2Tft
	__end_of_vSysParam2Tft:
	signat	_vSysParam2Tft,4217
	global	_Memory_Read

;; *************** function _Memory_Read *****************
;; Defined at:
;;		line 717 in file "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
;; Parameters:    Size  Location     Type
;;  Addr            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Addr            1    7[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 100/200
;;		On exit  : 300/200
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_vReadSysCfg
;; This function uses a non-reentrant model
;;
psect	text29,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
	line	717
global __ptext29
__ptext29:	;psect for function _Memory_Read
psect	text29
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
	line	717
	global	__size_of_Memory_Read
	__size_of_Memory_Read	equ	__end_of_Memory_Read-_Memory_Read
	
_Memory_Read:	
;incstack = 0
	opt	stack 1
; Regs used in _Memory_Read: [wreg]
;Memory_Read@Addr stored from wreg
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Memory_Read@Addr)
	line	719
	
l16315:	
;main.c: 719: EEADR = Addr;
	movf	(Memory_Read@Addr),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(269)^0100h	;volatile
	line	720
	
l16317:	
;main.c: 720: EEPGD = 0;
	bcf	(2271/8)^0100h,(2271)&7	;volatile
	line	721
	
l16319:	
;main.c: 721: RD = 1;
	bsf	(2264/8)^0100h,(2264)&7	;volatile
	line	722
# 722 "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
nop ;# 
	line	723
# 723 "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
nop ;# 
psect	text29
	line	725
;main.c: 725: return EEDAT;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	(268)^0100h,w	;volatile
	line	726
	
l2139:	
	return
	opt stack 0
GLOBAL	__end_of_Memory_Read
	__end_of_Memory_Read:
	signat	_Memory_Read,4217
	global	_CConvert2F

;; *************** function _CConvert2F *****************
;; Defined at:
;;		line 5 in file "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\PotProc.c"
;; Parameters:    Size  Location     Type
;;  tempC           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  tempC           1   20[BANK0 ] unsigned char 
;;  retF            2   21[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       3       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		___lwdiv
;;		___lwmod
;;		___wmul
;; This function is called by:
;;		_vReadSysCfg
;;		_vSyncTemprDisplay
;;		_vCurTemprUpdate
;; This function uses a non-reentrant model
;;
psect	text30,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\PotProc.c"
	line	5
global __ptext30
__ptext30:	;psect for function _CConvert2F
psect	text30
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\PotProc.c"
	line	5
	global	__size_of_CConvert2F
	__size_of_CConvert2F	equ	__end_of_CConvert2F-_CConvert2F
	
_CConvert2F:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _CConvert2F: [wreg+status,2+status,0+pclath+cstack]
;CConvert2F@tempC stored from wreg
	movwf	(CConvert2F@tempC)
	line	7
	
l15959:	
;PotProc.c: 7: unsigned int retF = 9 * tempC;
	movf	(CConvert2F@tempC),w
	movwf	(___wmul@multiplier)
	clrf	(___wmul@multiplier+1)
	movlw	09h
	movwf	(___wmul@multiplicand)
	clrf	(___wmul@multiplicand+1)
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	(CConvert2F@retF+1)
	movf	(0+(?___wmul)),w
	movwf	(CConvert2F@retF)
	line	9
;PotProc.c: 9: if (5 <= (retF % 10))
	movlw	0Ah
	movwf	(___lwmod@divisor)
	clrf	(___lwmod@divisor+1)
	movf	(CConvert2F@retF+1),w
	movwf	(___lwmod@dividend+1)
	movf	(CConvert2F@retF),w
	movwf	(___lwmod@dividend)
	fcall	___lwmod
	movlw	0
	subwf	(1+(?___lwmod)),w
	movlw	05h
	skipnz
	subwf	(0+(?___lwmod)),w
	skipc
	goto	u9041
	goto	u9040
u9041:
	goto	l15963
u9040:
	line	10
	
l15961:	
;PotProc.c: 10: retF = (retF + 5) / 10;
	movlw	0Ah
	movwf	(___lwdiv@divisor)
	clrf	(___lwdiv@divisor+1)
	movf	(CConvert2F@retF),w
	addlw	low(05h)
	movwf	(___lwdiv@dividend)
	movf	(CConvert2F@retF+1),w
	skipnc
	addlw	1
	addlw	high(05h)
	movwf	1+(___lwdiv@dividend)
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	(CConvert2F@retF+1)
	movf	(0+(?___lwdiv)),w
	movwf	(CConvert2F@retF)
	goto	l15965
	line	12
	
l15963:	
;PotProc.c: 11: else
;PotProc.c: 12: retF = retF / 10;
	movlw	0Ah
	movwf	(___lwdiv@divisor)
	clrf	(___lwdiv@divisor+1)
	movf	(CConvert2F@retF+1),w
	movwf	(___lwdiv@dividend+1)
	movf	(CConvert2F@retF),w
	movwf	(___lwdiv@dividend)
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	(CConvert2F@retF+1)
	movf	(0+(?___lwdiv)),w
	movwf	(CConvert2F@retF)
	line	14
	
l15965:	
;PotProc.c: 14: retF = retF + 32;
	movlw	020h
	addwf	(CConvert2F@retF),f
	skipnc
	incf	(CConvert2F@retF+1),f
	line	15
	
l15967:	
;PotProc.c: 15: return (unsigned char)retF;
	movf	(CConvert2F@retF),w
	line	16
	
l7940:	
	return
	opt stack 0
GLOBAL	__end_of_CConvert2F
	__end_of_CConvert2F:
	signat	_CConvert2F,4217
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 15 in file "C:\Users\qxl\Desktop\组会信息\高师兄给的资料\CMS_IDE_V2.03.28\CMS_IDE_V2.03.28\data\sources\common\Umul16.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    7[BANK0 ] unsigned int 
;;  multiplicand    2    9[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2   11[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    7[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       4       0       0
;;      Locals:         0       2       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       6       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_CConvert2F
;;		_FConvert2C
;; This function uses a non-reentrant model
;;
psect	text31,local,class=CODE,delta=2,merge=1,group=3
	file	"C:\Users\qxl\Desktop\组会信息\高师兄给的资料\CMS_IDE_V2.03.28\CMS_IDE_V2.03.28\data\sources\common\Umul16.c"
	line	15
global __ptext31
__ptext31:	;psect for function ___wmul
psect	text31
	file	"C:\Users\qxl\Desktop\组会信息\高师兄给的资料\CMS_IDE_V2.03.28\CMS_IDE_V2.03.28\data\sources\common\Umul16.c"
	line	15
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	43
	
l15897:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	45
	
l15899:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u8941
	goto	u8940
u8941:
	goto	l15903
u8940:
	line	46
	
l15901:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	line	47
	
l15903:	
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	line	48
	
l15905:	
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	line	49
	
l15907:	
	movf	((___wmul@multiplier)),w
iorwf	((___wmul@multiplier+1)),w
	btfss	status,2
	goto	u8951
	goto	u8950
u8951:
	goto	l15899
u8950:
	line	52
	
l15909:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	53
	
l9481:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 6 in file "C:\Users\qxl\Desktop\组会信息\高师兄给的资料\CMS_IDE_V2.03.28\CMS_IDE_V2.03.28\data\sources\common\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    7[BANK0 ] unsigned int 
;;  dividend        2    9[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1   11[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    7[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       4       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       5       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_CConvert2F
;;		_FConvert2C
;; This function uses a non-reentrant model
;;
psect	text32,local,class=CODE,delta=2,merge=1,group=3
	file	"C:\Users\qxl\Desktop\组会信息\高师兄给的资料\CMS_IDE_V2.03.28\CMS_IDE_V2.03.28\data\sources\common\lwmod.c"
	line	6
global __ptext32
__ptext32:	;psect for function ___lwmod
psect	text32
	file	"C:\Users\qxl\Desktop\组会信息\高师兄给的资料\CMS_IDE_V2.03.28\CMS_IDE_V2.03.28\data\sources\common\lwmod.c"
	line	6
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	13
	
l15939:	
	movf	((___lwmod@divisor)),w
iorwf	((___lwmod@divisor+1)),w
	btfsc	status,2
	goto	u9001
	goto	u9000
u9001:
	goto	l15955
u9000:
	line	14
	
l15941:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	15
	goto	l15945
	line	16
	
l15943:	
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	line	17
	incf	(___lwmod@counter),f
	line	15
	
l15945:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u9011
	goto	u9010
u9011:
	goto	l15943
u9010:
	line	20
	
l15947:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u9025
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u9025:
	skipc
	goto	u9021
	goto	u9020
u9021:
	goto	l15951
u9020:
	line	21
	
l15949:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	22
	
l15951:	
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	line	23
	
l15953:	
	decfsz	(___lwmod@counter),f
	goto	u9031
	goto	u9030
u9031:
	goto	l15947
u9030:
	line	25
	
l15955:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	26
	
l9832:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 6 in file "C:\Users\qxl\Desktop\组会信息\高师兄给的资料\CMS_IDE_V2.03.28\CMS_IDE_V2.03.28\data\sources\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2   13[BANK0 ] unsigned int 
;;  dividend        2   15[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   18[BANK0 ] unsigned int 
;;  counter         1   17[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   13[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       4       0       0
;;      Locals:         0       3       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       7       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_vCurTemprUpdate
;;		_CConvert2F
;;		_FConvert2C
;; This function uses a non-reentrant model
;;
psect	text33,local,class=CODE,delta=2,merge=1,group=3
	file	"C:\Users\qxl\Desktop\组会信息\高师兄给的资料\CMS_IDE_V2.03.28\CMS_IDE_V2.03.28\data\sources\common\lwdiv.c"
	line	6
global __ptext33
__ptext33:	;psect for function ___lwdiv
psect	text33
	file	"C:\Users\qxl\Desktop\组会信息\高师兄给的资料\CMS_IDE_V2.03.28\CMS_IDE_V2.03.28\data\sources\common\lwdiv.c"
	line	6
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	14
	
l15913:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
l15915:	
	movf	((___lwdiv@divisor)),w
iorwf	((___lwdiv@divisor+1)),w
	btfsc	status,2
	goto	u8961
	goto	u8960
u8961:
	goto	l15935
u8960:
	line	16
	
l15917:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	l15921
	line	18
	
l15919:	
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	line	19
	incf	(___lwdiv@counter),f
	line	17
	
l15921:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u8971
	goto	u8970
u8971:
	goto	l15919
u8970:
	line	22
	
l15923:	
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	line	23
	
l15925:	
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u8985
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u8985:
	skipc
	goto	u8981
	goto	u8980
u8981:
	goto	l15931
u8980:
	line	24
	
l15927:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	25
	
l15929:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	27
	
l15931:	
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	line	28
	
l15933:	
	decfsz	(___lwdiv@counter),f
	goto	u8991
	goto	u8990
u8991:
	goto	l15923
u8990:
	line	30
	
l15935:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	31
	
l9822:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_vOkKeyProc

;; *************** function _vOkKeyProc *****************
;; Defined at:
;;		line 186 in file "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_bQueueEn
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text34,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
	line	186
global __ptext34
__ptext34:	;psect for function _vOkKeyProc
psect	text34
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
	line	186
	global	__size_of_vOkKeyProc
	__size_of_vOkKeyProc	equ	__end_of_vOkKeyProc-_vOkKeyProc
	
_vOkKeyProc:	
;incstack = 0
	opt	stack 0
; Regs used in _vOkKeyProc: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	209
	
l14749:	
;main.c: 209: if(RC5)
	bcf	status, 6	;RP1=0, select bank0
	btfss	(61/8),(61)&7	;volatile
	goto	u6961
	goto	u6960
u6961:
	goto	l14759
u6960:
	line	211
	
l14751:	
;main.c: 210: {
;main.c: 211: if(RC5)
	btfss	(61/8),(61)&7	;volatile
	goto	u6971
	goto	u6970
u6971:
	goto	l2035
u6970:
	line	213
	
l14753:	
;main.c: 212: {
;main.c: 213: g_cOkKeyCounter = 0;
	clrf	(_g_cOkKeyCounter)	;volatile
	line	214
	
l14755:	
;main.c: 214: g_bOkKeyPressed = 0;
	bcf	(_g_bOkKeyPressed/8),(_g_bOkKeyPressed)&7	;volatile
	line	215
	
l14757:	
;main.c: 215: g_bOkKeyLPressed = 0;
	bcf	(_g_bOkKeyLPressed/8),(_g_bOkKeyLPressed)&7	;volatile
	goto	l2035
	line	220
	
l14759:	
;main.c: 218: else
;main.c: 219: {
;main.c: 220: g_cOkKeyCounter++;
	incf	(_g_cOkKeyCounter),f	;volatile
	line	221
	
l14761:	
;main.c: 221: if(50 <= g_cOkKeyCounter)
	movlw	low(032h)
	subwf	(_g_cOkKeyCounter),w	;volatile
	skipc
	goto	u6981
	goto	u6980
u6981:
	goto	l14769
u6980:
	line	223
	
l14763:	
;main.c: 222: {
;main.c: 223: if(!g_bOkKeyLPressed)
	btfsc	(_g_bOkKeyLPressed/8),(_g_bOkKeyLPressed)&7	;volatile
	goto	u6991
	goto	u6990
u6991:
	goto	l2035
u6990:
	line	225
	
l14765:	
;main.c: 224: {
;main.c: 225: g_bOkKeyLPressed = 1;
	bsf	(_g_bOkKeyLPressed/8),(_g_bOkKeyLPressed)&7	;volatile
	line	227
	
l14767:	
;main.c: 227: bQueueEn(OkLKey);
	movlw	low(06h)
	fcall	_bQueueEn
	goto	l2035
	line	230
	
l14769:	
;main.c: 230: else if(3 <= g_cOkKeyCounter)
	movlw	low(03h)
	subwf	(_g_cOkKeyCounter),w	;volatile
	skipc
	goto	u7001
	goto	u7000
u7001:
	goto	l2035
u7000:
	line	232
	
l14771:	
;main.c: 231: {
;main.c: 232: if(!g_bOkKeyPressed)
	btfsc	(_g_bOkKeyPressed/8),(_g_bOkKeyPressed)&7	;volatile
	goto	u7011
	goto	u7010
u7011:
	goto	l2035
u7010:
	line	234
	
l14773:	
;main.c: 233: {
;main.c: 234: g_bOkKeyPressed = 1;
	bsf	(_g_bOkKeyPressed/8),(_g_bOkKeyPressed)&7	;volatile
	line	235
	
l14775:	
;main.c: 235: bQueueEn(OkKey);
	movlw	low(05h)
	fcall	_bQueueEn
	line	239
	
l2035:	
	return
	opt stack 0
GLOBAL	__end_of_vOkKeyProc
	__end_of_vOkKeyProc:
	signat	_vOkKeyProc,89
	global	_vLedBreath

;; *************** function _vLedBreath *****************
;; Defined at:
;;		line 165 in file "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\UIProc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text35,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\UIProc.c"
	line	165
global __ptext35
__ptext35:	;psect for function _vLedBreath
psect	text35
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\UIProc.c"
	line	165
	global	__size_of_vLedBreath
	__size_of_vLedBreath	equ	__end_of_vLedBreath-_vLedBreath
	
_vLedBreath:	
;incstack = 0
	opt	stack 2
; Regs used in _vLedBreath: [wreg+status,2+status,0]
	line	167
	
l15517:	
;UIProc.c: 167: if(g_bRedLedBreath)
	btfss	(_g_bRedLedBreath/8),(_g_bRedLedBreath)&7	;volatile
	goto	u8451
	goto	u8450
u8451:
	goto	l6761
u8450:
	line	169
	
l15519:	
;UIProc.c: 168: {
;UIProc.c: 169: if(g_bDarkLight)
	btfss	(_g_bDarkLight/8),(_g_bDarkLight)&7	;volatile
	goto	u8461
	goto	u8460
u8461:
	goto	l15527
u8460:
	line	171
	
l15521:	
;UIProc.c: 170: {
;UIProc.c: 171: if(50 < g_cRedLEDLight)
	movlw	low(033h)
	subwf	(_g_cRedLEDLight),w	;volatile
	skipc
	goto	u8471
	goto	u8470
u8471:
	goto	l15525
u8470:
	line	172
	
l15523:	
;UIProc.c: 172: g_cRedLEDLight--;
	decf	(_g_cRedLEDLight),f	;volatile
	goto	l6765
	line	174
	
l15525:	
;UIProc.c: 173: else
;UIProc.c: 174: g_bDarkLight = ~g_bDarkLight;
	movlw	1<<((_g_bDarkLight)&7)
	xorwf	((_g_bDarkLight)/8),f
	goto	l6765
	line	178
	
l15527:	
;UIProc.c: 176: else
;UIProc.c: 177: {
;UIProc.c: 178: if(g_cRedLEDLight < 205)
	movlw	low(0CDh)
	subwf	(_g_cRedLEDLight),w	;volatile
	skipnc
	goto	u8481
	goto	u8480
u8481:
	goto	l15525
u8480:
	line	179
	
l15529:	
;UIProc.c: 179: g_cRedLEDLight++;
	incf	(_g_cRedLEDLight),f	;volatile
	line	182
	
l6765:	
	line	183
;UIProc.c: 182: }
;UIProc.c: 183: CCPR1L = g_cRedLEDLight;
	movf	(_g_cRedLEDLight),w	;volatile
	movwf	(21)	;volatile
	line	184
;UIProc.c: 184: }
	goto	l6776
	line	185
	
l6761:	
;UIProc.c: 185: else if(g_bWhiteLedBreath)
	btfss	(_g_bWhiteLedBreath/8),(_g_bWhiteLedBreath)&7	;volatile
	goto	u8491
	goto	u8490
u8491:
	goto	l6776
u8490:
	line	187
	
l15533:	
;UIProc.c: 186: {
;UIProc.c: 187: if(g_bDarkLight)
	btfss	(_g_bDarkLight/8),(_g_bDarkLight)&7	;volatile
	goto	u8501
	goto	u8500
u8501:
	goto	l15541
u8500:
	line	189
	
l15535:	
;UIProc.c: 188: {
;UIProc.c: 189: if(50 < g_cWhiteLEDLight)
	movlw	low(033h)
	subwf	(_g_cWhiteLEDLight),w	;volatile
	skipc
	goto	u8511
	goto	u8510
u8511:
	goto	l15539
u8510:
	line	190
	
l15537:	
;UIProc.c: 190: g_cWhiteLEDLight--;
	decf	(_g_cWhiteLEDLight),f	;volatile
	goto	l6773
	line	192
	
l15539:	
;UIProc.c: 191: else
;UIProc.c: 192: g_bDarkLight = ~g_bDarkLight;
	movlw	1<<((_g_bDarkLight)&7)
	xorwf	((_g_bDarkLight)/8),f
	goto	l6773
	line	196
	
l15541:	
;UIProc.c: 194: else
;UIProc.c: 195: {
;UIProc.c: 196: if(g_cWhiteLEDLight < 205)
	movlw	low(0CDh)
	subwf	(_g_cWhiteLEDLight),w	;volatile
	skipnc
	goto	u8521
	goto	u8520
u8521:
	goto	l15539
u8520:
	line	197
	
l15543:	
;UIProc.c: 197: g_cWhiteLEDLight++;
	incf	(_g_cWhiteLEDLight),f	;volatile
	line	200
	
l6773:	
	line	201
;UIProc.c: 200: }
;UIProc.c: 201: CCPR2L = g_cWhiteLEDLight;
	movf	(_g_cWhiteLEDLight),w	;volatile
	movwf	(27)	;volatile
	line	203
	
l6776:	
	return
	opt stack 0
GLOBAL	__end_of_vLedBreath
	__end_of_vLedBreath:
	signat	_vLedBreath,89
	global	_vIntimeCopyData

;; *************** function _vIntimeCopyData *****************
;; Defined at:
;;		line 94 in file "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\CommSend.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 200/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       4       0       0
;;      Totals:         0       4       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_vClearBuzzerFlag
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text36,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\CommSend.c"
	line	94
global __ptext36
__ptext36:	;psect for function _vIntimeCopyData
psect	text36
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\CommSend.c"
	line	94
	global	__size_of_vIntimeCopyData
	__size_of_vIntimeCopyData	equ	__end_of_vIntimeCopyData-_vIntimeCopyData
	
_vIntimeCopyData:	
;incstack = 0
	opt	stack 1
; Regs used in _vIntimeCopyData: [wreg+status,2+status,0+pclath+cstack]
	line	96
	
l15307:	
;CommSend.c: 96: if (g_bIsAllowedCopyData)
	btfss	(_g_bIsAllowedCopyData/8),(_g_bIsAllowedCopyData)&7	;volatile
	goto	u8091
	goto	u8090
u8091:
	goto	l3250
u8090:
	line	98
	
l15309:	
;CommSend.c: 97: {
;CommSend.c: 98: g_bIsAllowedGetData = 0;
	bcf	(_g_bIsAllowedGetData/8),(_g_bIsAllowedGetData)&7	;volatile
	line	99
;CommSend.c: 99: g_bSendCmdHead = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(_g_bSendCmdHead/8),(_g_bSendCmdHead)&7	;volatile
	line	100
;CommSend.c: 100: g_bSendCmdBody = 0;
	bcf	(_g_bSendCmdBody/8),(_g_bSendCmdBody)&7	;volatile
	line	102
	
l15311:	
;CommSend.c: 102: g_lSendData = ((unsigned long)SendFifo[3]) << 24;
	movf	0+(_SendFifo)+03h,w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	clrf	(_g_lSendData)^080h	;volatile
	clrf	(_g_lSendData+1)^080h	;volatile
	clrf	(_g_lSendData+2)^080h	;volatile
	movwf	(_g_lSendData+3)^080h	;volatile
	line	103
;CommSend.c: 103: g_lSendData += ((unsigned long)SendFifo[2]) << 16;
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(_SendFifo)+02h,w	;volatile
	movwf	(??_vIntimeCopyData+0)+0
	clrf	(??_vIntimeCopyData+0)+0+1
	clrf	(??_vIntimeCopyData+0)+0+2
	clrf	(??_vIntimeCopyData+0)+0+3
	movf	(??_vIntimeCopyData+0)+1,w
	movwf	(??_vIntimeCopyData+0)+3
	movf	(??_vIntimeCopyData+0)+0,w
	movwf	(??_vIntimeCopyData+0)+2
	clrf	(??_vIntimeCopyData+0)+1
	clrf	(??_vIntimeCopyData+0)+0
	movf	0+(??_vIntimeCopyData+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	addwf	(_g_lSendData)^080h,f	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??_vIntimeCopyData+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u8101
	bsf	status, 5	;RP0=1, select bank1
	addwf	(_g_lSendData+1)^080h,f	;volatile
u8101:
	bcf	status, 5	;RP0=0, select bank0
	movf	2+(??_vIntimeCopyData+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u8102
	bsf	status, 5	;RP0=1, select bank1
	addwf	(_g_lSendData+2)^080h,f	;volatile
u8102:
	bcf	status, 5	;RP0=0, select bank0
	movf	3+(??_vIntimeCopyData+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u8103
	bsf	status, 5	;RP0=1, select bank1
	addwf	(_g_lSendData+3)^080h,f	;volatile
u8103:
	bcf	status, 5	;RP0=0, select bank0
	bsf	status, 5	;RP0=1, select bank1

	line	104
;CommSend.c: 104: g_lSendData += ((unsigned long)SendFifo[1]) << 8;
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(_SendFifo)+01h,w	;volatile
	movwf	(??_vIntimeCopyData+0)+0
	clrf	(??_vIntimeCopyData+0)+0+1
	clrf	(??_vIntimeCopyData+0)+0+2
	clrf	(??_vIntimeCopyData+0)+0+3
	movf	(??_vIntimeCopyData+0)+2,w
	movwf	(??_vIntimeCopyData+0)+3
	movf	(??_vIntimeCopyData+0)+1,w
	movwf	(??_vIntimeCopyData+0)+2
	movf	(??_vIntimeCopyData+0)+0,w
	movwf	(??_vIntimeCopyData+0)+1
	clrf	(??_vIntimeCopyData+0)+0
	movf	0+(??_vIntimeCopyData+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	addwf	(_g_lSendData)^080h,f	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??_vIntimeCopyData+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u8111
	bsf	status, 5	;RP0=1, select bank1
	addwf	(_g_lSendData+1)^080h,f	;volatile
u8111:
	bcf	status, 5	;RP0=0, select bank0
	movf	2+(??_vIntimeCopyData+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u8112
	bsf	status, 5	;RP0=1, select bank1
	addwf	(_g_lSendData+2)^080h,f	;volatile
u8112:
	bcf	status, 5	;RP0=0, select bank0
	movf	3+(??_vIntimeCopyData+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u8113
	bsf	status, 5	;RP0=1, select bank1
	addwf	(_g_lSendData+3)^080h,f	;volatile
u8113:
	bcf	status, 5	;RP0=0, select bank0
	bsf	status, 5	;RP0=1, select bank1

	line	105
;CommSend.c: 105: g_lSendData += ((unsigned long)SendFifo[0]);
	bcf	status, 5	;RP0=0, select bank0
	movf	(_SendFifo),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	addwf	(_g_lSendData)^080h,f	;volatile
	movlw	1
	skipnc
	addwf	(_g_lSendData+1)^080h,f	;volatile
	skipnc
	addwf	(_g_lSendData+2)^080h,f	;volatile
	skipnc
	addwf	(_g_lSendData+3)^080h,f	;volatile
	line	107
	
l15313:	
;CommSend.c: 107: g_bIsAllowedCopyData = 0;
	bcf	(_g_bIsAllowedCopyData/8),(_g_bIsAllowedCopyData)&7	;volatile
	line	108
	
l15315:	
;CommSend.c: 108: g_bIsAllowedGetData = 1;
	bsf	(_g_bIsAllowedGetData/8),(_g_bIsAllowedGetData)&7	;volatile
	line	120
	
l15317:	
;CommSend.c: 120: vClearBuzzerFlag();
	fcall	_vClearBuzzerFlag
	line	122
	
l15319:	
;CommSend.c: 122: g_cSendCommNo++;
	incf	(_g_cSendCommNo),f	;volatile
	line	123
	
l15321:	
;CommSend.c: 123: if (g_cSendCommNo >= 3)
	movlw	low(03h)
	subwf	(_g_cSendCommNo),w	;volatile
	skipc
	goto	u8121
	goto	u8120
u8121:
	goto	l3250
u8120:
	line	125
	
l15323:	
;CommSend.c: 124: {
;CommSend.c: 125: g_cSendCommNo = 0;
	clrf	(_g_cSendCommNo)	;volatile
	line	128
	
l3250:	
	return
	opt stack 0
GLOBAL	__end_of_vIntimeCopyData
	__end_of_vIntimeCopyData:
	signat	_vIntimeCopyData,89
	global	_vClearBuzzerFlag

;; *************** function _vClearBuzzerFlag *****************
;; Defined at:
;;		line 84 in file "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\CommSend.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_vIntimeCopyData
;; This function uses a non-reentrant model
;;
psect	text37,local,class=CODE,delta=2,merge=1,group=0
	line	84
global __ptext37
__ptext37:	;psect for function _vClearBuzzerFlag
psect	text37
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\CommSend.c"
	line	84
	global	__size_of_vClearBuzzerFlag
	__size_of_vClearBuzzerFlag	equ	__end_of_vClearBuzzerFlag-_vClearBuzzerFlag
	
_vClearBuzzerFlag:	
;incstack = 0
	opt	stack 1
; Regs used in _vClearBuzzerFlag: [wreg+status,2+status,0]
	line	86
	
l13647:	
;CommSend.c: 86: if(g_cSendCommNo == 0)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_g_cSendCommNo)),w	;volatile
	btfss	status,2
	goto	u5621
	goto	u5620
u5621:
	goto	l3245
u5620:
	line	88
	
l13649:	
;CommSend.c: 87: {
;CommSend.c: 88: if(Work_Flag1.one.b3)Work_Flag1.one.b3 = 0;
	btfss	(_Work_Flag1),3	;volatile
	goto	u5631
	goto	u5630
u5631:
	goto	l3243
u5630:
	
l13651:	
	bcf	(_Work_Flag1),3	;volatile
	
l3243:	
	line	89
;CommSend.c: 89: if(Work_Flag1.one.b4)Work_Flag1.one.b4 = 0;
	btfss	(_Work_Flag1),4	;volatile
	goto	u5641
	goto	u5640
u5641:
	goto	l3245
u5640:
	
l13653:	
	bcf	(_Work_Flag1),4	;volatile
	line	91
	
l3245:	
	return
	opt stack 0
GLOBAL	__end_of_vClearBuzzerFlag
	__end_of_vClearBuzzerFlag:
	signat	_vClearBuzzerFlag,89
	global	_vInitIc

;; *************** function _vInitIc *****************
;; Defined at:
;;		line 4 in file "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text38,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
	line	4
global __ptext38
__ptext38:	;psect for function _vInitIc
psect	text38
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
	line	4
	global	__size_of_vInitIc
	__size_of_vInitIc	equ	__end_of_vInitIc-_vInitIc
	
_vInitIc:	
;incstack = 0
	opt	stack 2
; Regs used in _vInitIc: [wreg+status,2]
	line	6
	
l14637:	
# 6 "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
clrwdt ;# 
psect	text38
	line	7
	
l14639:	
;main.c: 7: PORTA = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	8
;main.c: 8: PORTB = 0;
	clrf	(6)	;volatile
	line	9
;main.c: 9: PORTC = 0;
	clrf	(7)	;volatile
	line	10
;main.c: 10: PORTD = 0;
	clrf	(8)	;volatile
	line	11
;main.c: 11: INTCON = 0x00;
	clrf	(11)	;volatile
	line	12
# 12 "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
clrwdt ;# 
psect	text38
	line	13
;main.c: 13: OPTION_REG = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(129)^080h	;volatile
	line	16
;main.c: 16: PIR1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(12)	;volatile
	line	17
;main.c: 17: PIR2 = 0;
	clrf	(13)	;volatile
	line	19
	
l14641:	
;main.c: 19: WDTCON = 0x01;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(144)^080h	;volatile
	line	21
	
l14643:	
;main.c: 21: TRISA = 0B00000001;
	movlw	low(01h)
	movwf	(133)^080h	;volatile
	line	22
;main.c: 22: TRISB = 0B00000000;
	clrf	(134)^080h	;volatile
	line	23
	
l14645:	
;main.c: 23: TRISC = 0B00111000;
	movlw	low(038h)
	movwf	(135)^080h	;volatile
	line	24
	
l14647:	
;main.c: 24: TRISD = 0B00000000;
	clrf	(136)^080h	;volatile
	line	25
;main.c: 25: OSCCON = 0x71;
	movlw	low(071h)
	movwf	(143)^080h	;volatile
	line	27
	
l14649:	
;main.c: 27: PIE1 = 0;
	clrf	(140)^080h	;volatile
	line	28
	
l14651:	
;main.c: 28: PIE2 = 0;
	clrf	(141)^080h	;volatile
	line	29
	
l14653:	
;main.c: 29: IOCB = 0;
	clrf	(150)^080h	;volatile
	line	30
	
l14655:	
;main.c: 30: WPUA = 0B00000001;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(263)^0100h	;volatile
	line	31
;main.c: 31: WPUB = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(149)^080h	;volatile
	line	32
	
l14657:	
;main.c: 32: WPUC = 0B00111000;
	movlw	low(038h)
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(264)^0100h	;volatile
	line	33
	
l14659:	
;main.c: 33: WPUD = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(142)^080h	;volatile
	line	34
	
l1991:	
	return
	opt stack 0
GLOBAL	__end_of_vInitIc
	__end_of_vInitIc:
	signat	_vInitIc,89
	global	_vInitDecoding

;; *************** function _vInitDecoding *****************
;; Defined at:
;;		line 41 in file "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\CommRecv.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/200
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_vClearDecodingParam
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text39,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\CommRecv.c"
	line	41
global __ptext39
__ptext39:	;psect for function _vInitDecoding
psect	text39
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\CommRecv.c"
	line	41
	global	__size_of_vInitDecoding
	__size_of_vInitDecoding	equ	__end_of_vInitDecoding-_vInitDecoding
	
_vInitDecoding:	
;incstack = 0
	opt	stack 0
; Regs used in _vInitDecoding: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	44
	
l17127:	
;CommRecv.c: 44: vClearDecodingParam();
	fcall	_vClearDecodingParam
	line	46
	
l17129:	
;CommRecv.c: 46: g_bIsAllowedCopyData=1;
	bsf	(_g_bIsAllowedCopyData/8),(_g_bIsAllowedCopyData)&7	;volatile
	line	47
	
l17131:	
;CommRecv.c: 47: g_bIsAllowedGetData=0;
	bcf	(_g_bIsAllowedGetData/8),(_g_bIsAllowedGetData)&7	;volatile
	line	59
	
l17133:	
;CommRecv.c: 59: TRISA |= 0x01;;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(133)^080h+(0/8),(0)&7	;volatile
	line	60
	
l17135:	
;CommRecv.c: 60: WPUA |= 0x01;;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	bsf	(263)^0100h+(0/8),(0)&7	;volatile
	line	61
	
l4347:	
	return
	opt stack 0
GLOBAL	__end_of_vInitDecoding
	__end_of_vInitDecoding:
	signat	_vInitDecoding,89
	global	_vClearDecodingParam

;; *************** function _vClearDecodingParam *****************
;; Defined at:
;;		line 25 in file "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\CommRecv.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_memset
;; This function is called by:
;;		_vInitDecoding
;; This function uses a non-reentrant model
;;
psect	text40,local,class=CODE,delta=2,merge=1,group=0
	line	25
global __ptext40
__ptext40:	;psect for function _vClearDecodingParam
psect	text40
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\CommRecv.c"
	line	25
	global	__size_of_vClearDecodingParam
	__size_of_vClearDecodingParam	equ	__end_of_vClearDecodingParam-_vClearDecodingParam
	
_vClearDecodingParam:	
;incstack = 0
	opt	stack 0
; Regs used in _vClearDecodingParam: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	27
	
l16341:	
;CommRecv.c: 27: g_cDecodePinHcnt = 0;
	clrf	(_g_cDecodePinHcnt)	;volatile
	line	28
;CommRecv.c: 28: g_cDecodePinLcnt = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(_g_cDecodePinLcnt)^080h	;volatile
	line	29
	
l16343:	
;CommRecv.c: 29: g_bPrevPinValue = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(_g_bPrevPinValue/8),(_g_bPrevPinValue)&7	;volatile
	line	30
	
l16345:	
;CommRecv.c: 30: g_bCurrPinValue = 0;
	bcf	(_g_bCurrPinValue/8),(_g_bCurrPinValue)&7	;volatile
	line	31
	
l16347:	
;CommRecv.c: 31: g_bBitVal0Decoding = 0;
	bcf	(_g_bBitVal0Decoding/8),(_g_bBitVal0Decoding)&7	;volatile
	line	32
	
l16349:	
;CommRecv.c: 32: g_bBitVal1Decoding = 0;
	bcf	(_g_bBitVal1Decoding/8),(_g_bBitVal1Decoding)&7	;volatile
	line	34
	
l16351:	
;CommRecv.c: 34: g_bDecodBody = 0;
	bcf	(_g_bDecodBody/8),(_g_bDecodBody)&7	;volatile
	line	35
;CommRecv.c: 35: g_cDecodedPosition = 0;
	clrf	(_g_cDecodedPosition)	;volatile
	line	36
	
l16353:	
;CommRecv.c: 36: g_bDecodeSuccess = 0;
	bcf	(_g_bDecodeSuccess/8),(_g_bDecodeSuccess)&7	;volatile
	line	38
	
l16355:	
;CommRecv.c: 38: memset(g_cDecodeData, 0, 4);
	movlw	(low(_g_cDecodeData|((0x0)<<8))&0ffh)
	movwf	(memset@p1)
	movlw	(0x0)
	movwf	(memset@p1+1)
	clrf	(memset@c)
	clrf	(memset@c+1)
	movlw	04h
	movwf	(memset@n)
	clrf	(memset@n+1)
	fcall	_memset
	line	39
	
l4344:	
	return
	opt stack 0
GLOBAL	__end_of_vClearDecodingParam
	__end_of_vClearDecodingParam:
	signat	_vClearDecodingParam,89
	global	___CMS_CheckTouchKey

;; *************** function ___CMS_CheckTouchKey *****************
;; Defined at:
;;		line 1042 in file "E:\WORK\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79FT73xx\C语言\标准\CMS_CheckTouch_79FT73xx_Make\CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/200
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		___CMS_CheckKeyOldValue
;;		___CMS_CheckOnceResult
;;		___CMS_CheckValidTime
;;		___CMS_CurAdjust
;;		___CMS_DAT_SEND
;;		___CMS_KeyDatIIR
;;		___CMS_KeyModeSet
;;		___CMS_KeyStopClear
;;		___CMS_Key_UNNOL_Check
;;		___CMS_NewRAMClr
;;		___GET_32M_FREDAT
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text41,local,class=CODE,delta=2,merge=1,group=1
	file	"E:\WORK\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79FT73xx\C语言\标准\CMS_CheckTouch_79FT73xx_Make\CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c"
	line	1042
global __ptext41
__ptext41:	;psect for function ___CMS_CheckTouchKey
psect	text41
	file	"E:\WORK\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79FT73xx\C语言\标准\CMS_CheckTouch_79FT73xx_Make\CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c"
	line	1042
	global	__size_of___CMS_CheckTouchKey
	__size_of___CMS_CheckTouchKey	equ	__end_of___CMS_CheckTouchKey-___CMS_CheckTouchKey
	
___CMS_CheckTouchKey:	
;incstack = 0
	opt	stack 0
; Regs used in ___CMS_CheckTouchKey: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	1046
	
l17269:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 1044: static bit _CMS_SDfst = 0;
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 1046: if(_CMS_SDfst)
	bcf	status, 6	;RP1=0, select bank0
	btfss	(___CMS_CheckTouchKey@_CMS_SDfst/8),(___CMS_CheckTouchKey@_CMS_SDfst)&7
	goto	u11091
	goto	u11090
u11091:
	goto	l9463
u11090:
	line	1048
	
l17271:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 1047: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 1048: if(!_CMS_b_over1)
	btfsc	(__CMS_b_over1/8),(__CMS_b_over1)&7	;volatile
	goto	u11101
	goto	u11100
u11101:
	goto	l17319
u11100:
	line	1050
	
l17273:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 1049: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 1050: if(!_CMS_b_onceerr)
	btfsc	(__CMS_b_onceerr/8),(__CMS_b_onceerr)&7	;volatile
	goto	u11111
	goto	u11110
u11111:
	goto	l9465
u11110:
	line	1052
	
l17275:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 1051: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 1052: if(_CMS_CurCheckOver)
	btfss	(__CMS_CurCheckOver/8),(__CMS_CurCheckOver)&7	;volatile
	goto	u11121
	goto	u11120
u11121:
	goto	l17301
u11120:
	line	1054
	
l17277:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 1053: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 1054: if(!_CMS_b_over2)
	btfsc	(__CMS_b_over2/8),(__CMS_b_over2)&7	;volatile
	goto	u11131
	goto	u11130
u11131:
	goto	l17283
u11130:
	line	1056
	
l17279:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 1055: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 1056: _CMS_b_over2 = 1;
	bsf	(__CMS_b_over2/8),(__CMS_b_over2)&7	;volatile
	line	1057
	
l17281:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 1057: __CMS_KeyDatIIR();
	fcall	___CMS_KeyDatIIR
	line	1059
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 1059: __CMS_DAT_SEND();
	fcall	___CMS_DAT_SEND
	line	1061
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 1061: __CMS_CheckKeyOldValue();
	fcall	___CMS_CheckKeyOldValue
	line	1062
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 1062: __CMS_Key_UNNOL_Check();
	fcall	___CMS_Key_UNNOL_Check
	line	1063
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 1063: }
	goto	l17319
	line	1066
	
l17283:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 1064: else
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 1065: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 1066: __CMS_CheckOnceResult();
	fcall	___CMS_CheckOnceResult
	line	1067
	
l17285:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 1067: if(_CMS_b_kerr || _CMS_KeyCounter > _CMS_KeyValidC)
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(__CMS_b_kerr/8),(__CMS_b_kerr)&7	;volatile
	goto	u11141
	goto	u11140
u11141:
	goto	l17289
u11140:
	
l17287:	
	movlw	low(02h)
	bsf	status, 5	;RP0=1, select bank1
	subwf	(__CMS_KeyCounter)^080h,w	;volatile
	skipc
	goto	u11151
	goto	u11150
u11151:
	goto	l17293
u11150:
	line	1069
	
l17289:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 1068: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 1069: __CMS_KeyStopClear();
	fcall	___CMS_KeyStopClear
	line	1070
	
l17291:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 1070: _CMS_b_kerr = 0;
	bcf	(__CMS_b_kerr/8),(__CMS_b_kerr)&7	;volatile
	line	1072
	
l17293:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 1071: }
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 1072: _CMS_KeyCounter = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(__CMS_KeyCounter)^080h	;volatile
	line	1074
	
l17295:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 1074: _CMS_b_over2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(__CMS_b_over2/8),(__CMS_b_over2)&7	;volatile
	line	1075
	
l17297:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 1075: __CMS_KeyModeSet();
	fcall	___CMS_KeyModeSet
	line	1076
	
l17299:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 1076: _CMS_b_over1 = 1;
	bsf	(__CMS_b_over1/8),(__CMS_b_over1)&7	;volatile
	goto	l17319
	line	1081
	
l17301:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 1079: else
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 1080: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 1081: __CMS_CurAdjust();
	fcall	___CMS_CurAdjust
	goto	l17297
	line	1086
	
l9465:	
	line	1088
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 1086: else
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 1087: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 1088: _CMS_b_onceerr = 0;
	bcf	(__CMS_b_onceerr/8),(__CMS_b_onceerr)&7	;volatile
	line	1089
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 1089: _CMS_b_over2 = 0;
	bcf	(__CMS_b_over2/8),(__CMS_b_over2)&7	;volatile
	goto	l17297
	line	1095
	
l9463:	
	line	1097
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 1095: else
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 1096: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 1097: _CMS_SDfst = 1;
	bsf	(___CMS_CheckTouchKey@_CMS_SDfst/8),(___CMS_CheckTouchKey@_CMS_SDfst)&7
	line	1098
	
l17311:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 1098: __CMS_NewRAMClr();
	fcall	___CMS_NewRAMClr
	line	1099
	
l17313:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 1099: __GET_32M_FREDAT();
	fcall	___GET_32M_FREDAT
	goto	l17297
	line	1103
	
l17319:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 1102: }
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 1103: __CMS_CheckValidTime();
	fcall	___CMS_CheckValidTime
	line	1104
	
l9475:	
	return
	opt stack 0
GLOBAL	__end_of___CMS_CheckTouchKey
	__end_of___CMS_CheckTouchKey:
	signat	___CMS_CheckTouchKey,89
	global	___GET_32M_FREDAT

;; *************** function ___GET_32M_FREDAT *****************
;; Defined at:
;;		line 959 in file "E:\WORK\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79FT73xx\C语言\标准\CMS_CheckTouch_79FT73xx_Make\CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : B00/800
;;		On exit  : B00/800
;;		Unchanged: 800/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___CMS_CheckTouchKey
;; This function uses a non-reentrant model
;;
psect	text42,local,class=CODE,delta=2,merge=1,group=1
	line	959
global __ptext42
__ptext42:	;psect for function ___GET_32M_FREDAT
psect	text42
	file	"E:\WORK\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79FT73xx\C语言\标准\CMS_CheckTouch_79FT73xx_Make\CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c"
	line	959
	global	__size_of___GET_32M_FREDAT
	__size_of___GET_32M_FREDAT	equ	__end_of___GET_32M_FREDAT-___GET_32M_FREDAT
	
___GET_32M_FREDAT:	
;incstack = 0
	opt	stack 1
; Regs used in ___GET_32M_FREDAT: [wreg+status,2+status,0]
	line	961
	
l14499:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 961: __CMS_KEYCON4 |= 0x01;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bsf	(404)^0180h+(0/8),(0)&7	;volatile
	line	962
	
l14501:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 962: _CMS_32M_Dat = __CMS_KEYCON2 & 0xf8;
	movf	(402)^0180h,w	;volatile
	bcf	status, 6	;RP1=0, select bank1
	movwf	(__CMS_32M_Dat)^080h	;volatile
	
l14503:	
	movlw	low(0F8h)
	andwf	(__CMS_32M_Dat)^080h,f	;volatile
	line	963
	
l14505:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 963: _CMS_32M_CT = __CMS_KEYCON4 & 0x70;
	bsf	status, 6	;RP1=1, select bank3
	movf	(404)^0180h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(__CMS_32M_CT)	;volatile
	movlw	low(070h)
	andwf	(__CMS_32M_CT),f	;volatile
	line	964
	
l14507:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 964: if(_CMS_32M_CT > 0B01100000)
	movlw	low(061h)
	subwf	(__CMS_32M_CT),w	;volatile
	skipc
	goto	u6711
	goto	u6710
u6711:
	goto	l14511
u6710:
	line	966
	
l14509:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 965: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 966: _CMS_32M_CT = 0B01100000;
	movlw	low(060h)
	movwf	(__CMS_32M_CT)	;volatile
	line	967
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 967: }
	goto	l9441
	line	968
	
l14511:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 968: else if(_CMS_32M_CT < 0B00010000)
	movlw	low(010h)
	subwf	(__CMS_32M_CT),w	;volatile
	skipnc
	goto	u6721
	goto	u6720
u6721:
	goto	l9441
u6720:
	line	970
	
l14513:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 969: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 970: _CMS_32M_CT = 0B00010000;
	movlw	low(010h)
	movwf	(__CMS_32M_CT)	;volatile
	line	972
	
l9441:	
	return
	opt stack 0
GLOBAL	__end_of___GET_32M_FREDAT
	__end_of___GET_32M_FREDAT:
	signat	___GET_32M_FREDAT,89
	global	___CMS_NewRAMClr

;; *************** function ___CMS_NewRAMClr *****************
;; Defined at:
;;		line 938 in file "E:\WORK\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79FT73xx\C语言\标准\CMS_CheckTouch_79FT73xx_Make\CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  _CMS_i          1    7[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : B00/800
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___CMS_CheckTouchKey
;; This function uses a non-reentrant model
;;
psect	text43,local,class=CODE,delta=2,merge=1,group=1
	line	938
global __ptext43
__ptext43:	;psect for function ___CMS_NewRAMClr
psect	text43
	file	"E:\WORK\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79FT73xx\C语言\标准\CMS_CheckTouch_79FT73xx_Make\CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c"
	line	938
	global	__size_of___CMS_NewRAMClr
	__size_of___CMS_NewRAMClr	equ	__end_of___CMS_NewRAMClr-___CMS_NewRAMClr
	
___CMS_NewRAMClr:	
;incstack = 0
	opt	stack 1
; Regs used in ___CMS_NewRAMClr: [wreg-fsr0h+status,2+status,0]
	line	942
	
l14469:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 940: unsigned char _CMS_i;
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 942: for(_CMS_i = 0; _CMS_i < 80; _CMS_i++)
	clrf	(___CMS_NewRAMClr@_CMS_i)
	line	944
	
l14475:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 943: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 944: _CMS_BANKRAM = 0x01,__CMS_RAMCTR = _CMS_BANKRAM;;
	movlw	low(01h)
	movwf	(__CMS_BANKRAM)	;volatile
	movf	(__CMS_BANKRAM),w	;volatile
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	945
	
l14477:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 945: __CMSNewRAM__[_CMS_i] = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___CMS_NewRAMClr@_CMS_i),w
	addlw	low(416|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	clrf	indf
	line	946
	
l14479:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 946: _CMS_BANKRAM = 0x02,__CMS_RAMCTR = _CMS_BANKRAM;;
	movlw	low(02h)
	movwf	(__CMS_BANKRAM)	;volatile
	
l14481:	
	movf	(__CMS_BANKRAM),w	;volatile
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	947
	
l14483:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 947: __CMSNewRAM__[_CMS_i] = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___CMS_NewRAMClr@_CMS_i),w
	addlw	low(416|((0x1)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	line	948
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 948: _CMS_BANKRAM = 0x04,__CMS_RAMCTR = _CMS_BANKRAM;;
	movlw	low(04h)
	movwf	(__CMS_BANKRAM)	;volatile
	movf	(__CMS_BANKRAM),w	;volatile
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	949
	
l14485:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 949: __CMSNewRAM__[_CMS_i] = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___CMS_NewRAMClr@_CMS_i),w
	addlw	low(416|((0x1)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	line	950
	
l14487:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 950: _CMS_BANKRAM = 0x08,__CMS_RAMCTR = _CMS_BANKRAM;;
	movlw	low(08h)
	movwf	(__CMS_BANKRAM)	;volatile
	
l14489:	
	movf	(__CMS_BANKRAM),w	;volatile
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	951
	
l14491:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 951: __CMSNewRAM__[_CMS_i] = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___CMS_NewRAMClr@_CMS_i),w
	addlw	low(416|((0x1)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	line	952
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 952: _CMS_BANKRAM = 0x10,__CMS_RAMCTR = _CMS_BANKRAM;;
	movlw	low(010h)
	movwf	(__CMS_BANKRAM)	;volatile
	movf	(__CMS_BANKRAM),w	;volatile
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	953
	
l14493:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 953: __CMSNewRAM__[_CMS_i] = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___CMS_NewRAMClr@_CMS_i),w
	addlw	low(416|((0x1)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	line	942
	
l14495:	
	incf	(___CMS_NewRAMClr@_CMS_i),f
	
l14497:	
	movlw	low(050h)
	subwf	(___CMS_NewRAMClr@_CMS_i),w
	skipc
	goto	u6701
	goto	u6700
u6701:
	goto	l14475
u6700:
	line	955
	
l9435:	
	return
	opt stack 0
GLOBAL	__end_of___CMS_NewRAMClr
	__end_of___CMS_NewRAMClr:
	signat	___CMS_NewRAMClr,89
	global	___CMS_Key_UNNOL_Check

;; *************** function ___CMS_Key_UNNOL_Check *****************
;; Defined at:
;;		line 855 in file "E:\WORK\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79FT73xx\C语言\标准\CMS_CheckTouch_79FT73xx_Make\CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  _CMS_cnt        1   11[BANK0 ] unsigned char 
;;  _CMS_UnNolFl    1   10[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/800
;;		On exit  : 200/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       2       0       0
;;      Temps:          0       2       0       0
;;      Totals:         0       4       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		___CMS_KeyModeSet
;; This function is called by:
;;		___CMS_CheckTouchKey
;; This function uses a non-reentrant model
;;
psect	text44,local,class=CODE,delta=2,merge=1,group=1
	line	855
global __ptext44
__ptext44:	;psect for function ___CMS_Key_UNNOL_Check
psect	text44
	file	"E:\WORK\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79FT73xx\C语言\标准\CMS_CheckTouch_79FT73xx_Make\CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c"
	line	855
	global	__size_of___CMS_Key_UNNOL_Check
	__size_of___CMS_Key_UNNOL_Check	equ	__end_of___CMS_Key_UNNOL_Check-___CMS_Key_UNNOL_Check
	
___CMS_Key_UNNOL_Check:	
;incstack = 0
	opt	stack 0
; Regs used in ___CMS_Key_UNNOL_Check: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	858
	
l14387:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 857: static unsigned char _CMS_UnNolSec = 0;
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 858: unsigned char _CMS_UnNolFlag = 0;
	clrf	(___CMS_Key_UNNOL_Check@_CMS_UnNolFlag)
	line	859
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 859: unsigned char _CMS_cnt = 0;
	clrf	(___CMS_Key_UNNOL_Check@_CMS_cnt)
	line	866
	
l14389:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 866: _CMS_BANKRAM = 0x02,__CMS_RAMCTR = _CMS_BANKRAM;;
	movlw	low(02h)
	movwf	(__CMS_BANKRAM)	;volatile
	
l14391:	
	movf	(__CMS_BANKRAM),w	;volatile
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	867
	
l14393:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 867: if((_CMS_KeyReference[_CMS_cnt] > 2048+512+256) || (_CMS_KeyReference[_CMS_cnt] < 2048-512-256))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrc
	rlf	(___CMS_Key_UNNOL_Check@_CMS_cnt),w
	addlw	low(456|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??___CMS_Key_UNNOL_Check+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??___CMS_Key_UNNOL_Check+0)+0+1
	movlw	0Bh
	subwf	1+(??___CMS_Key_UNNOL_Check+0)+0,w
	movlw	01h
	skipnz
	subwf	0+(??___CMS_Key_UNNOL_Check+0)+0,w
	skipnc
	goto	u6591
	goto	u6590
u6591:
	goto	l14397
u6590:
	
l14395:	
	clrc
	rlf	(___CMS_Key_UNNOL_Check@_CMS_cnt),w
	addlw	low(456|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??___CMS_Key_UNNOL_Check+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??___CMS_Key_UNNOL_Check+0)+0+1
	movlw	05h
	subwf	1+(??___CMS_Key_UNNOL_Check+0)+0,w
	movlw	0
	skipnz
	subwf	0+(??___CMS_Key_UNNOL_Check+0)+0,w
	skipnc
	goto	u6601
	goto	u6600
u6601:
	goto	l14401
u6600:
	line	869
	
l14397:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 868: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 869: _CMS_UnNolSec++;
	bsf	status, 5	;RP0=1, select bank1
	incf	(___CMS_Key_UNNOL_Check@_CMS_UnNolSec)^080h,f
	line	870
	
l14399:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 870: _CMS_UnNolFlag = 1;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(___CMS_Key_UNNOL_Check@_CMS_UnNolFlag)
	incf	(___CMS_Key_UNNOL_Check@_CMS_UnNolFlag),f
	line	872
	
l14401:	
	movlw	low(02h)
	incf	(___CMS_Key_UNNOL_Check@_CMS_cnt),f
	subwf	((___CMS_Key_UNNOL_Check@_CMS_cnt)),w
	skipc
	goto	u6611
	goto	u6610
u6611:
	goto	l14389
u6610:
	line	873
	
l14403:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 873: if(0 == _CMS_UnNolFlag)
	movf	((___CMS_Key_UNNOL_Check@_CMS_UnNolFlag)),w
	btfss	status,2
	goto	u6621
	goto	u6620
u6621:
	goto	l14407
u6620:
	line	875
	
l14405:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 874: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 875: _CMS_UnNolSec = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(___CMS_Key_UNNOL_Check@_CMS_UnNolSec)^080h
	line	876
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 876: }
	goto	l9424
	line	877
	
l14407:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 877: else if(_CMS_UnNolSec >= 100)
	movlw	low(064h)
	bsf	status, 5	;RP0=1, select bank1
	subwf	(___CMS_Key_UNNOL_Check@_CMS_UnNolSec)^080h,w
	skipc
	goto	u6631
	goto	u6630
u6631:
	goto	l9424
u6630:
	line	879
	
l14409:	
	movlw	low(065h)
	incf	(___CMS_Key_UNNOL_Check@_CMS_UnNolTime)^080h,f
	subwf	((___CMS_Key_UNNOL_Check@_CMS_UnNolTime)^080h),w
	skipc
	goto	u6641
	goto	u6640
u6641:
	goto	l14415
u6640:
	line	881
	
l14411:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 880: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 881: _CMS_UnNolTime = 0;
	clrf	(___CMS_Key_UNNOL_Check@_CMS_UnNolTime)^080h
	line	882
	
l14413:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 882: _CMS_UnNolOver = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(___CMS_Key_UNNOL_Check@_CMS_UnNolOver/8),(___CMS_Key_UNNOL_Check@_CMS_UnNolOver)&7
	line	884
	
l14415:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 883: }
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 884: if(!_CMS_UnNolOver)
	bcf	status, 5	;RP0=0, select bank0
	btfsc	(___CMS_Key_UNNOL_Check@_CMS_UnNolOver/8),(___CMS_Key_UNNOL_Check@_CMS_UnNolOver)&7
	goto	u6651
	goto	u6650
u6651:
	goto	l9418
u6650:
	line	886
	
l14417:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 885: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 886: _CMS_UnNolSec = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(___CMS_Key_UNNOL_Check@_CMS_UnNolSec)^080h
	line	887
	
l14419:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 887: _CMS_CurCheckOver = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(__CMS_CurCheckOver/8),(__CMS_CurCheckOver)&7	;volatile
	line	888
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 888: _CMS_CurOKFlag = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(__CMS_CurOKFlag)^080h	;volatile
	clrf	(__CMS_CurOKFlag+1)^080h	;volatile
	line	889
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 889: _CMS_CurOKFlagH = 0;
	clrf	(__CMS_CurOKFlagH)^080h	;volatile
	line	890
	
l14421:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 890: _CMS_CurAdjSDfst = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(__CMS_CurAdjSDfst/8),(__CMS_CurAdjSDfst)&7	;volatile
	line	891
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 891: for(_CMS_cnt = 0; _CMS_cnt < _CMS_KeyTNumber; _CMS_cnt++)
	clrf	(___CMS_Key_UNNOL_Check@_CMS_cnt)
	line	893
	
l14427:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 892: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 893: _CMS_BANKRAM = 0x02,__CMS_RAMCTR = _CMS_BANKRAM;;
	movlw	low(02h)
	movwf	(__CMS_BANKRAM)	;volatile
	movf	(__CMS_BANKRAM),w	;volatile
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	894
	
l14429:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 894: _CMS_KeyReference[_CMS_cnt] = 2048+512+256;
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___CMS_Key_UNNOL_Check+0)+0
	movlw	0Bh
	movwf	(??___CMS_Key_UNNOL_Check+0)+0+1
	clrc
	rlf	(___CMS_Key_UNNOL_Check@_CMS_cnt),w
	addlw	low(456|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	(??___CMS_Key_UNNOL_Check+0)+0,w
	movwf	indf
	incf	fsr0,f
	movf	(??___CMS_Key_UNNOL_Check+0)+1,w
	movwf	indf
	line	895
	
l14431:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 895: _CMS_BANKRAM = 0x08,__CMS_RAMCTR = _CMS_BANKRAM;;
	movlw	low(08h)
	movwf	(__CMS_BANKRAM)	;volatile
	
l14433:	
	movf	(__CMS_BANKRAM),w	;volatile
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	896
	
l14435:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 896: _CMS_CurStep[_CMS_cnt] = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___CMS_Key_UNNOL_Check@_CMS_cnt),w
	addlw	low(476|((0x1)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	line	891
	
l14437:	
	incf	(___CMS_Key_UNNOL_Check@_CMS_cnt),f
	
l14439:	
	movlw	low(02h)
	subwf	(___CMS_Key_UNNOL_Check@_CMS_cnt),w
	skipc
	goto	u6661
	goto	u6660
u6661:
	goto	l14427
u6660:
	
l9423:	
	line	898
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 897: }
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 898: _CMS_b_over2 = 0;
	bcf	(__CMS_b_over2/8),(__CMS_b_over2)&7	;volatile
	line	899
	
l14441:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 899: __CMS_KeyModeSet();
	fcall	___CMS_KeyModeSet
	line	900
	
l14443:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 900: _CMS_b_over1 = 1;
	bsf	(__CMS_b_over1/8),(__CMS_b_over1)&7	;volatile
	goto	l9424
	line	903
	
l9418:	
	line	904
	
l9424:	
	return
	opt stack 0
GLOBAL	__end_of___CMS_Key_UNNOL_Check
	__end_of___CMS_Key_UNNOL_Check:
	signat	___CMS_Key_UNNOL_Check,89
	global	___CMS_KeyModeSet

;; *************** function ___CMS_KeyModeSet *****************
;; Defined at:
;;		line 357 in file "E:\WORK\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79FT73xx\C语言\标准\CMS_CheckTouch_79FT73xx_Make\CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  _CMS_DLTempl    1    7[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___CMS_Key_UNNOL_Check
;;		___CMS_CheckTouchKey
;; This function uses a non-reentrant model
;;
psect	text45,local,class=CODE,delta=2,merge=1,group=1
	line	357
global __ptext45
__ptext45:	;psect for function ___CMS_KeyModeSet
psect	text45
	file	"E:\WORK\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79FT73xx\C语言\标准\CMS_CheckTouch_79FT73xx_Make\CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c"
	line	357
	global	__size_of___CMS_KeyModeSet
	__size_of___CMS_KeyModeSet	equ	__end_of___CMS_KeyModeSet-___CMS_KeyModeSet
	
___CMS_KeyModeSet:	
;incstack = 0
	opt	stack 0
; Regs used in ___CMS_KeyModeSet: [wreg+status,2+status,0]
	line	361
	
l13403:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 359: unsigned char _CMS_DLTempl;
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 361: __CMS_KEYCON0 = (0 << 6) | (0 << 3);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(400)^0180h	;volatile
	line	363
	
l13405:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 363: __CMS_KEYCON2 |= 1;
	bsf	(402)^0180h+(0/8),(0)&7	;volatile
	line	364
	
l13407:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 364: __CMS_KEYCON2 &= 0B00000001;
	movlw	low(01h)
	andwf	(402)^0180h,f	;volatile
	line	365
	
l13409:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 365: __CMS_KEYCON2 |= (1 << 1);
	bsf	(402)^0180h+(1/8),(1)&7	;volatile
	line	367
	
l13411:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 367: __CMS_KEYCON3 = (1 << 7) | (3 << 5);
	movlw	low(0E0h)
	movwf	(403)^0180h	;volatile
	line	369
	
l13413:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 368: __CMS_KEYCON4 = (0 << 7) | (3 << 2) | 1
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 369: + _CMS_32M_CT;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__CMS_32M_CT),w	;volatile
	addlw	01h
	iorlw	0Ch
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(404)^0180h	;volatile
	line	371
	
l13415:	
	movlw	low(040h)
	movwf	(405)^0180h	;volatile
	line	372
	
l13417:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 372: __CMS_KEYCON8 = (2 << 6) | 1 | 0x18;
	movlw	low(099h)
	movwf	(408)^0180h	;volatile
	line	373
	
l13419:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 373: __CMS_KEYCON1 = 0x10;
	movlw	low(010h)
	movwf	(401)^0180h	;volatile
	line	374
	
l13421:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 374: __CMS_KEYCON2 += _CMS_32M_Dat;
	bcf	status, 6	;RP1=0, select bank1
	movf	(__CMS_32M_Dat)^080h,w	;volatile
	bsf	status, 6	;RP1=1, select bank3
	addwf	(402)^0180h,f	;volatile
	line	375
	
l13423:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 375: __CMS_KEYCON3 += 2;
	incf	(403)^0180h,f
	incf	(403)^0180h,f	;volatile
	line	379
	
l13425:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 379: _CMS_DLTempl = 20;
	movlw	low(014h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___CMS_KeyModeSet@_CMS_DLTempl)
	line	380
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 380: while(_CMS_DLTempl--);
	
l13427:	
	decf	(___CMS_KeyModeSet@_CMS_DLTempl),f
		incf	(((___CMS_KeyModeSet@_CMS_DLTempl))),w
	btfss	status,2
	goto	u5281
	goto	u5280
u5281:
	goto	l13427
u5280:
	line	381
	
l9284:	
	return
	opt stack 0
GLOBAL	__end_of___CMS_KeyModeSet
	__end_of___CMS_KeyModeSet:
	signat	___CMS_KeyModeSet,89
	global	___CMS_KeyStopClear

;; *************** function ___CMS_KeyStopClear *****************
;; Defined at:
;;		line 338 in file "E:\WORK\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79FT73xx\C语言\标准\CMS_CheckTouch_79FT73xx_Make\CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  _CMS_i          1   10[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 200/0
;;		On exit  : B00/800
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		___CMS_KeyClearOne
;; This function is called by:
;;		___CMS_CheckTouchKey
;; This function uses a non-reentrant model
;;
psect	text46,local,class=CODE,delta=2,merge=1,group=1
	line	338
global __ptext46
__ptext46:	;psect for function ___CMS_KeyStopClear
psect	text46
	file	"E:\WORK\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79FT73xx\C语言\标准\CMS_CheckTouch_79FT73xx_Make\CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c"
	line	338
	global	__size_of___CMS_KeyStopClear
	__size_of___CMS_KeyStopClear	equ	__end_of___CMS_KeyStopClear-___CMS_KeyStopClear
	
___CMS_KeyStopClear:	
;incstack = 0
	opt	stack 0
; Regs used in ___CMS_KeyStopClear: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	341
	
l16615:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 340: unsigned char _CMS_i;
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 341: _CMS_KeyFlag[0] = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(__CMS_KeyFlag)	;volatile
	line	342
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 342: _CMS_KeyFlag[1] = 0;
	clrf	0+(__CMS_KeyFlag)+01h	;volatile
	line	343
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 343: _CMS_KeyFlag[2] = 0;
	clrf	0+(__CMS_KeyFlag)+02h	;volatile
	line	344
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 344: for(_CMS_i = 0; _CMS_i < _CMS_KeyTNumber; _CMS_i++)
	clrf	(___CMS_KeyStopClear@_CMS_i)
	line	346
	
l16621:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 345: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 346: __CMS_KeyClearOne(_CMS_i);
	movf	(___CMS_KeyStopClear@_CMS_i),w
	fcall	___CMS_KeyClearOne
	line	344
	
l16623:	
	incf	(___CMS_KeyStopClear@_CMS_i),f
	
l16625:	
	movlw	low(02h)
	subwf	(___CMS_KeyStopClear@_CMS_i),w
	skipc
	goto	u9931
	goto	u9930
u9931:
	goto	l16621
u9930:
	line	348
	
l9278:	
	return
	opt stack 0
GLOBAL	__end_of___CMS_KeyStopClear
	__end_of___CMS_KeyStopClear:
	signat	___CMS_KeyStopClear,89
	global	___CMS_KeyDatIIR

;; *************** function ___CMS_KeyDatIIR *****************
;; Defined at:
;;		line 913 in file "E:\WORK\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79FT73xx\C语言\标准\CMS_CheckTouch_79FT73xx_Make\CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  _CMS_TKOldTe    2    2[BANK2 ] unsigned int 
;;  _CMS_TKDatTe    2    0[BANK2 ] unsigned int 
;;  _CMS_cnt        1    4[BANK2 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : B00/A00
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       5
;;      Temps:          0      14       0       0
;;      Totals:         0      14       0       5
;;Total ram usage:       19 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___CMS_CheckTouchKey
;; This function uses a non-reentrant model
;;
psect	text47,local,class=CODE,delta=2,merge=1,group=1
	line	913
global __ptext47
__ptext47:	;psect for function ___CMS_KeyDatIIR
psect	text47
	file	"E:\WORK\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79FT73xx\C语言\标准\CMS_CheckTouch_79FT73xx_Make\CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c"
	line	913
	global	__size_of___CMS_KeyDatIIR
	__size_of___CMS_KeyDatIIR	equ	__end_of___CMS_KeyDatIIR-___CMS_KeyDatIIR
	
___CMS_KeyDatIIR:	
;incstack = 0
	opt	stack 1
; Regs used in ___CMS_KeyDatIIR: [wreg-fsr0h+status,2+status,0]
	line	915
	
l16911:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 915: unsigned char _CMS_cnt = 0;
	bsf	status, 6	;RP1=1, select bank2
	clrf	(___CMS_KeyDatIIR@_CMS_cnt)^0100h
	line	919
	
l16913:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 919: _CMS_BANKRAM = 0x02,__CMS_RAMCTR = _CMS_BANKRAM;;
	movlw	low(02h)
	bcf	status, 6	;RP1=0, select bank0
	movwf	(__CMS_BANKRAM)	;volatile
	
l16915:	
	movf	(__CMS_BANKRAM),w	;volatile
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	920
	
l16917:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 920: _CMS_TKOldTemp = _CMS_KeyOldValue[_CMS_cnt];
	bcf	status, 5	;RP0=0, select bank2
	clrc
	rlf	(___CMS_KeyDatIIR@_CMS_cnt)^0100h,w
	addlw	low(416|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	movwf	(___CMS_KeyDatIIR@_CMS_TKOldTemp)^0100h
	incf	fsr0,f
	movf	indf,w
	movwf	(___CMS_KeyDatIIR@_CMS_TKOldTemp+1)^0100h
	line	921
	
l16919:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 921: _CMS_BANKRAM = 0x04,__CMS_RAMCTR = _CMS_BANKRAM;;
	movlw	low(04h)
	bcf	status, 6	;RP1=0, select bank0
	movwf	(__CMS_BANKRAM)	;volatile
	
l16921:	
	movf	(__CMS_BANKRAM),w	;volatile
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	922
	
l16923:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 922: _CMS_TKDatTemp = _CMS_KeySum[_CMS_cnt];
	bcf	status, 5	;RP0=0, select bank2
	clrc
	rlf	(___CMS_KeyDatIIR@_CMS_cnt)^0100h,w
	addlw	low(416|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(___CMS_KeyDatIIR@_CMS_TKDatTemp)^0100h
	incf	fsr0,f
	movf	indf,w
	movwf	(___CMS_KeyDatIIR@_CMS_TKDatTemp+1)^0100h
	line	923
	
l16925:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 923: if((0 != _CMS_TKDatTemp) && (0 != _CMS_TKOldTemp))
	movf	((___CMS_KeyDatIIR@_CMS_TKDatTemp)^0100h),w
iorwf	((___CMS_KeyDatIIR@_CMS_TKDatTemp+1)^0100h),w
	btfsc	status,2
	goto	u10331
	goto	u10330
u10331:
	goto	l16933
u10330:
	
l16927:	
	movf	((___CMS_KeyDatIIR@_CMS_TKOldTemp)^0100h),w
iorwf	((___CMS_KeyDatIIR@_CMS_TKOldTemp+1)^0100h),w
	btfsc	status,2
	goto	u10341
	goto	u10340
u10341:
	goto	l16933
u10340:
	line	925
	
l16929:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 924: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 925: _CMS_BANKRAM = 0x04,__CMS_RAMCTR = _CMS_BANKRAM;;
	movlw	low(04h)
	bcf	status, 6	;RP1=0, select bank0
	movwf	(__CMS_BANKRAM)	;volatile
	movf	(__CMS_BANKRAM),w	;volatile
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	926
	
l16931:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 926: _CMS_KeySum[_CMS_cnt] = _CMS_TKDatTemp/4 + _CMS_TKDatTemp/8 + _CMS_TKOldTemp/2 + _CMS_TKOldTemp/8;
	bcf	status, 5	;RP0=0, select bank2
	movf	(___CMS_KeyDatIIR@_CMS_TKOldTemp+1)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___CMS_KeyDatIIR+0)+0+1
	bsf	status, 6	;RP1=1, select bank2
	movf	(___CMS_KeyDatIIR@_CMS_TKOldTemp)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___CMS_KeyDatIIR+0)+0
	clrc
	rrf	(??___CMS_KeyDatIIR+0)+1,f
	rrf	(??___CMS_KeyDatIIR+0)+0,f
	clrc
	rrf	(??___CMS_KeyDatIIR+0)+1,f
	rrf	(??___CMS_KeyDatIIR+0)+0,f
	clrc
	rrf	(??___CMS_KeyDatIIR+0)+1,f
	rrf	(??___CMS_KeyDatIIR+0)+0,f
	bsf	status, 6	;RP1=1, select bank2
	movf	(___CMS_KeyDatIIR@_CMS_TKOldTemp+1)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___CMS_KeyDatIIR+2)+0+1
	bsf	status, 6	;RP1=1, select bank2
	movf	(___CMS_KeyDatIIR@_CMS_TKOldTemp)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___CMS_KeyDatIIR+2)+0
	clrc
	rrf	(??___CMS_KeyDatIIR+2)+1,f
	rrf	(??___CMS_KeyDatIIR+2)+0,f
	bsf	status, 6	;RP1=1, select bank2
	movf	(___CMS_KeyDatIIR@_CMS_TKDatTemp+1)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___CMS_KeyDatIIR+4)+0+1
	bsf	status, 6	;RP1=1, select bank2
	movf	(___CMS_KeyDatIIR@_CMS_TKDatTemp)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___CMS_KeyDatIIR+4)+0
	clrc
	rrf	(??___CMS_KeyDatIIR+4)+1,f
	rrf	(??___CMS_KeyDatIIR+4)+0,f
	clrc
	rrf	(??___CMS_KeyDatIIR+4)+1,f
	rrf	(??___CMS_KeyDatIIR+4)+0,f
	clrc
	rrf	(??___CMS_KeyDatIIR+4)+1,f
	rrf	(??___CMS_KeyDatIIR+4)+0,f
	bsf	status, 6	;RP1=1, select bank2
	movf	(___CMS_KeyDatIIR@_CMS_TKDatTemp+1)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___CMS_KeyDatIIR+6)+0+1
	bsf	status, 6	;RP1=1, select bank2
	movf	(___CMS_KeyDatIIR@_CMS_TKDatTemp)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___CMS_KeyDatIIR+6)+0
	clrc
	rrf	(??___CMS_KeyDatIIR+6)+1,f
	rrf	(??___CMS_KeyDatIIR+6)+0,f
	clrc
	rrf	(??___CMS_KeyDatIIR+6)+1,f
	rrf	(??___CMS_KeyDatIIR+6)+0,f
	movf	0+(??___CMS_KeyDatIIR+4)+0,w
	addwf	0+(??___CMS_KeyDatIIR+6)+0,w
	movwf	(??___CMS_KeyDatIIR+8)+0
	movf	1+(??___CMS_KeyDatIIR+4)+0,w
	skipnc
	incf	1+(??___CMS_KeyDatIIR+4)+0,w
	addwf	1+(??___CMS_KeyDatIIR+6)+0,w
	movwf	1+(??___CMS_KeyDatIIR+8)+0
	movf	0+(??___CMS_KeyDatIIR+2)+0,w
	addwf	0+(??___CMS_KeyDatIIR+8)+0,w
	movwf	(??___CMS_KeyDatIIR+10)+0
	movf	1+(??___CMS_KeyDatIIR+2)+0,w
	skipnc
	incf	1+(??___CMS_KeyDatIIR+2)+0,w
	addwf	1+(??___CMS_KeyDatIIR+8)+0,w
	movwf	1+(??___CMS_KeyDatIIR+10)+0
	movf	0+(??___CMS_KeyDatIIR+0)+0,w
	addwf	0+(??___CMS_KeyDatIIR+10)+0,w
	movwf	(??___CMS_KeyDatIIR+12)+0
	movf	1+(??___CMS_KeyDatIIR+0)+0,w
	skipnc
	incf	1+(??___CMS_KeyDatIIR+0)+0,w
	addwf	1+(??___CMS_KeyDatIIR+10)+0,w
	movwf	1+(??___CMS_KeyDatIIR+12)+0
	bsf	status, 6	;RP1=1, select bank2
	clrc
	rlf	(___CMS_KeyDatIIR@_CMS_cnt)^0100h,w
	addlw	low(416|((0x1)<<8))&0ffh
	movwf	fsr0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??___CMS_KeyDatIIR+12)+0,w
	movwf	indf
	incf	fsr0,f
	movf	(??___CMS_KeyDatIIR+12)+1,w
	movwf	indf
	line	928
	
l16933:	
	movlw	low(02h)
	bsf	status, 6	;RP1=1, select bank2
	incf	(___CMS_KeyDatIIR@_CMS_cnt)^0100h,f
	subwf	((___CMS_KeyDatIIR@_CMS_cnt)^0100h),w
	skipc
	goto	u10351
	goto	u10350
u10351:
	goto	l16913
u10350:
	line	929
	
l9430:	
	return
	opt stack 0
GLOBAL	__end_of___CMS_KeyDatIIR
	__end_of___CMS_KeyDatIIR:
	signat	___CMS_KeyDatIIR,89
	global	___CMS_DAT_SEND

;; *************** function ___CMS_DAT_SEND *****************
;; Defined at:
;;		line 1009 in file "E:\WORK\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79FT73xx\C语言\标准\CMS_CheckTouch_79FT73xx_Make\CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  _CMS_cnt        1   18[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/A00
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       4       0       0
;;      Totals:         0       5       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		___CMS_GetProPorTion
;;		_abs
;; This function is called by:
;;		___CMS_CheckTouchKey
;; This function uses a non-reentrant model
;;
psect	text48,local,class=CODE,delta=2,merge=1,group=1
	line	1009
global __ptext48
__ptext48:	;psect for function ___CMS_DAT_SEND
psect	text48
	file	"E:\WORK\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79FT73xx\C语言\标准\CMS_CheckTouch_79FT73xx_Make\CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c"
	line	1009
	global	__size_of___CMS_DAT_SEND
	__size_of___CMS_DAT_SEND	equ	__end_of___CMS_DAT_SEND-___CMS_DAT_SEND
	
___CMS_DAT_SEND:	
;incstack = 0
	opt	stack 0
; Regs used in ___CMS_DAT_SEND: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	1011
	
l14515:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 1011: unsigned char _CMS_cnt = 0;
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___CMS_DAT_SEND@_CMS_cnt)
	line	1013
	
l14517:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 1013: __CMS_GetProPorTion();
	fcall	___CMS_GetProPorTion
	line	1015
	
l14519:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 1015: _CMS_BANKRAM = 0x04,__CMS_RAMCTR = _CMS_BANKRAM;;
	movlw	low(04h)
	movwf	(__CMS_BANKRAM)	;volatile
	
l14521:	
	movf	(__CMS_BANKRAM),w	;volatile
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	1016
	
l14523:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 1016: _CMS_FactorRawDat[_CMS_cnt] = _CMS_KeySum[_CMS_cnt];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrc
	rlf	(___CMS_DAT_SEND@_CMS_cnt),w
	addlw	low(416|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	movwf	(??___CMS_DAT_SEND+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??___CMS_DAT_SEND+0)+0+1
	clrc
	rlf	(___CMS_DAT_SEND@_CMS_cnt),w
	addlw	low(__CMS_FactorRawDat|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	(??___CMS_DAT_SEND+0)+0,w
	bcf	status, 7	;select IRP bank1
	movwf	indf
	incf	fsr0,f
	movf	(??___CMS_DAT_SEND+0)+1,w
	movwf	indf
	line	1017
	
l14525:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 1017: _CMS_BANKRAM = 0x02,__CMS_RAMCTR = _CMS_BANKRAM;;
	movlw	low(02h)
	movwf	(__CMS_BANKRAM)	;volatile
	
l14527:	
	movf	(__CMS_BANKRAM),w	;volatile
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	1018
	
l14529:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 1018: _CMS_NoiseDat[_CMS_cnt] = abs((unsigned int)(_CMS_FactorRawDat[_CMS_cnt] - _CMS_KeyOldValue[_CMS_cnt]));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrc
	rlf	(___CMS_DAT_SEND@_CMS_cnt),w
	addlw	low(416|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	movwf	(??___CMS_DAT_SEND+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??___CMS_DAT_SEND+0)+0+1
	clrc
	rlf	(___CMS_DAT_SEND@_CMS_cnt),w
	addlw	low(__CMS_FactorRawDat|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	movwf	(??___CMS_DAT_SEND+2)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??___CMS_DAT_SEND+2)+0+1
	movf	0+(??___CMS_DAT_SEND+0)+0,w
	subwf	0+(??___CMS_DAT_SEND+2)+0,w
	movwf	(abs@a)
	movf	1+(??___CMS_DAT_SEND+0)+0,w
	skipc
	incf	1+(??___CMS_DAT_SEND+0)+0,w
	subwf	1+(??___CMS_DAT_SEND+2)+0,w
	movwf	1+(abs@a)
	fcall	_abs
	clrc
	rlf	(___CMS_DAT_SEND@_CMS_cnt),w
	addlw	low(__CMS_NoiseDat|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	(0+(?_abs)),w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	incf	fsr0,f
	movf	(1+(?_abs)),w
	movwf	indf
	line	1019
	
l14531:	
	movlw	low(02h)
	incf	(___CMS_DAT_SEND@_CMS_cnt),f
	subwf	((___CMS_DAT_SEND@_CMS_cnt)),w
	skipc
	goto	u6731
	goto	u6730
u6731:
	goto	l14519
u6730:
	line	1021
	
l14533:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 1021: _CMS_cnt = 0;
	clrf	(___CMS_DAT_SEND@_CMS_cnt)
	line	1023
	
l14535:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 1023: _CMS_BANKRAM = 0x08,__CMS_RAMCTR = _CMS_BANKRAM;;
	movlw	low(08h)
	movwf	(__CMS_BANKRAM)	;volatile
	
l14537:	
	movf	(__CMS_BANKRAM),w	;volatile
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	1024
	
l14539:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 1024: if(0 == (_CMS_CurStep[_CMS_cnt] & 0x0f))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___CMS_DAT_SEND@_CMS_cnt),w
	addlw	low(476|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	andlw	0Fh
	btfss	status,2
	goto	u6741
	goto	u6740
u6741:
	goto	l14545
u6740:
	line	1026
	
l14541:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 1025: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 1026: if(_CMS_ITRIM_Ram[_CMS_cnt] < (32 + 32/2))
	movf	(___CMS_DAT_SEND@_CMS_cnt),w
	addlw	low(416|((0x1)<<8))&0ffh
	movwf	fsr0
	movlw	low(030h)
	subwf	indf,w
	skipnc
	goto	u6751
	goto	u6750
u6751:
	goto	l14545
u6750:
	line	1028
	
l14543:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 1027: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 1028: _CMS_FactorRawDat[_CMS_cnt] = 0;
	clrc
	rlf	(___CMS_DAT_SEND@_CMS_cnt),w
	addlw	low(__CMS_FactorRawDat|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	incf	fsr0,f
	clrf	indf
	line	1029
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 1029: _CMS_DispKeyDown[_CMS_cnt] = 0;
	clrc
	rlf	(___CMS_DAT_SEND@_CMS_cnt),w
	addlw	low(__CMS_DispKeyDown|((0x0)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	incf	fsr0,f
	clrf	indf
	line	1032
	
l14545:	
	movlw	low(02h)
	incf	(___CMS_DAT_SEND@_CMS_cnt),f
	subwf	((___CMS_DAT_SEND@_CMS_cnt)),w
	skipc
	goto	u6761
	goto	u6760
u6761:
	goto	l14535
u6760:
	line	1033
	
l9458:	
	return
	opt stack 0
GLOBAL	__end_of___CMS_DAT_SEND
	__end_of___CMS_DAT_SEND:
	signat	___CMS_DAT_SEND,89
	global	_abs

;; *************** function _abs *****************
;; Defined at:
;;		line 4 in file "C:\Users\qxl\Desktop\组会信息\高师兄给的资料\CMS_IDE_V2.03.28\CMS_IDE_V2.03.28\data\sources\common\abs.c"
;; Parameters:    Size  Location     Type
;;  a               2    7[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2    7[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : B00/0
;;		Unchanged: 800/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       2       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       2       0       0
;;      Totals:         0       4       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___CMS_DAT_SEND
;; This function uses a non-reentrant model
;;
psect	text49,local,class=CODE,delta=2,merge=1,group=3
	file	"C:\Users\qxl\Desktop\组会信息\高师兄给的资料\CMS_IDE_V2.03.28\CMS_IDE_V2.03.28\data\sources\common\abs.c"
	line	4
global __ptext49
__ptext49:	;psect for function _abs
psect	text49
	file	"C:\Users\qxl\Desktop\组会信息\高师兄给的资料\CMS_IDE_V2.03.28\CMS_IDE_V2.03.28\data\sources\common\abs.c"
	line	4
	global	__size_of_abs
	__size_of_abs	equ	__end_of_abs-_abs
	
_abs:	
;incstack = 0
	opt	stack 0
; Regs used in _abs: [wreg+status,2+status,0]
	line	6
	
l13457:	
	btfss	(abs@a+1),7
	goto	u5361
	goto	u5360
u5361:
	goto	l9528
u5360:
	line	7
	
l13459:	
	comf	(abs@a),w
	movwf	(??_abs+0)+0
	comf	(abs@a+1),w
	movwf	((??_abs+0)+0+1)
	incf	(??_abs+0)+0,f
	skipnz
	incf	((??_abs+0)+0+1),f
	movf	0+(??_abs+0)+0,w
	movwf	(?_abs)
	movf	1+(??_abs+0)+0,w
	movwf	(?_abs+1)
	goto	l9529
	
l9528:	
	line	8
	line	9
	
l9529:	
	return
	opt stack 0
GLOBAL	__end_of_abs
	__end_of_abs:
	signat	_abs,4218
	global	___CMS_GetProPorTion

;; *************** function ___CMS_GetProPorTion *****************
;; Defined at:
;;		line 981 in file "E:\WORK\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79FT73xx\C语言\标准\CMS_CheckTouch_79FT73xx_Make\CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  _CMS_temp       2   11[BANK0 ] unsigned int 
;;  _CMS_cnt        1   13[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : B00/800
;;		On exit  : B00/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       3       0       0
;;      Temps:          0       4       0       0
;;      Totals:         0       7       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___CMS_DAT_SEND
;; This function uses a non-reentrant model
;;
psect	text50,local,class=CODE,delta=2,merge=1,group=1
	file	"E:\WORK\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79FT73xx\C语言\标准\CMS_CheckTouch_79FT73xx_Make\CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c"
	line	981
global __ptext50
__ptext50:	;psect for function ___CMS_GetProPorTion
psect	text50
	file	"E:\WORK\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79FT73xx\C语言\标准\CMS_CheckTouch_79FT73xx_Make\CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c"
	line	981
	global	__size_of___CMS_GetProPorTion
	__size_of___CMS_GetProPorTion	equ	__end_of___CMS_GetProPorTion-___CMS_GetProPorTion
	
___CMS_GetProPorTion:	
;incstack = 0
	opt	stack 0
; Regs used in ___CMS_GetProPorTion: [wreg-fsr0h+status,2+status,0]
	line	983
	
l13435:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 983: unsigned char _CMS_cnt = 0;
	clrf	(___CMS_GetProPorTion@_CMS_cnt)
	line	987
	
l13437:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 987: _CMS_BANKRAM = 0x04,__CMS_RAMCTR = _CMS_BANKRAM;;
	movlw	low(04h)
	movwf	(__CMS_BANKRAM)	;volatile
	
l13439:	
	movf	(__CMS_BANKRAM),w	;volatile
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	988
	
l13441:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 988: _CMS_temp = _CMS_KeySum[_CMS_cnt];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrc
	rlf	(___CMS_GetProPorTion@_CMS_cnt),w
	addlw	low(416|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	movwf	(___CMS_GetProPorTion@_CMS_temp)
	incf	fsr0,f
	movf	indf,w
	movwf	(___CMS_GetProPorTion@_CMS_temp+1)
	line	989
	
l13443:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 989: _CMS_BANKRAM = 0x02,__CMS_RAMCTR = _CMS_BANKRAM;;
	movlw	low(02h)
	movwf	(__CMS_BANKRAM)	;volatile
	
l13445:	
	movf	(__CMS_BANKRAM),w	;volatile
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	990
	
l13447:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 990: if(_CMS_temp > _CMS_KeyReference[_CMS_cnt])
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrc
	rlf	(___CMS_GetProPorTion@_CMS_cnt),w
	addlw	low(456|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??___CMS_GetProPorTion+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??___CMS_GetProPorTion+0)+0+1
	movf	(___CMS_GetProPorTion@_CMS_temp+1),w
	subwf	1+(??___CMS_GetProPorTion+0)+0,w
	skipz
	goto	u5325
	movf	(___CMS_GetProPorTion@_CMS_temp),w
	subwf	0+(??___CMS_GetProPorTion+0)+0,w
u5325:
	skipnc
	goto	u5321
	goto	u5320
u5321:
	goto	l13453
u5320:
	line	992
	
l13449:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 991: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 992: _CMS_DispKeyDown[_CMS_cnt] = (_CMS_temp - _CMS_KeyReference[_CMS_cnt])/2;
	clrc
	rlf	(___CMS_GetProPorTion@_CMS_cnt),w
	addlw	low(456|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??___CMS_GetProPorTion+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??___CMS_GetProPorTion+0)+0+1
	movf	0+(??___CMS_GetProPorTion+0)+0,w
	subwf	(___CMS_GetProPorTion@_CMS_temp),w
	movwf	(??___CMS_GetProPorTion+2)+0
	movf	1+(??___CMS_GetProPorTion+0)+0,w
	skipc
	incf	1+(??___CMS_GetProPorTion+0)+0,w
	subwf	(___CMS_GetProPorTion@_CMS_temp+1),w
	movwf	1+(??___CMS_GetProPorTion+2)+0
	clrc
	rrf	(??___CMS_GetProPorTion+2)+1,f
	rrf	(??___CMS_GetProPorTion+2)+0,f
	clrc
	rlf	(___CMS_GetProPorTion@_CMS_cnt),w
	addlw	low(__CMS_DispKeyDown|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	(??___CMS_GetProPorTion+2)+0,w
	bcf	status, 7	;select IRP bank1
	movwf	indf
	incf	fsr0,f
	movf	(??___CMS_GetProPorTion+2)+1,w
	movwf	indf
	line	993
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 993: _CMS_DispKeyDown[_CMS_cnt] -= _CMS_DispKeyDown[_CMS_cnt]/16;
	clrc
	rlf	(___CMS_GetProPorTion@_CMS_cnt),w
	addlw	low(__CMS_DispKeyDown|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??___CMS_GetProPorTion+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??___CMS_GetProPorTion+0)+0+1
	movlw	04h
u5335:
	clrc
	rrf	(??___CMS_GetProPorTion+0)+1,f
	rrf	(??___CMS_GetProPorTion+0)+0,f
	addlw	-1
	skipz
	goto	u5335
	clrc
	rlf	(___CMS_GetProPorTion@_CMS_cnt),w
	addlw	low(__CMS_DispKeyDown|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	0+(??___CMS_GetProPorTion+0)+0,w
	subwf	indf,f
	incfsz	fsr0,f
	movf	1+(??___CMS_GetProPorTion+0)+0,w
	skipc
	decf	indf,f
	subwf	indf,f
	decf	fsr0,f
	line	994
	clrc
	rlf	(___CMS_GetProPorTion@_CMS_cnt),w
	addlw	low(__CMS_DispKeyDown|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??___CMS_GetProPorTion+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??___CMS_GetProPorTion+0)+0+1
	movlw	0
	subwf	1+(??___CMS_GetProPorTion+0)+0,w
	movlw	024h
	skipnz
	subwf	0+(??___CMS_GetProPorTion+0)+0,w
	skipc
	goto	u5341
	goto	u5340
u5341:
	goto	l13455
u5340:
	line	996
	
l13451:	
	clrc
	rlf	(___CMS_GetProPorTion@_CMS_cnt),w
	addlw	low(__CMS_DispKeyDown|((0x0)<<8))&0ffh
	movwf	fsr0
	movlw	low(023h)
	subwf	indf,f
	incfsz	fsr0,f
	movlw	high(023h)
	skipc
	decf	indf,f
	subwf	indf,f
	decf	fsr0,f
	goto	l13455
	line	1001
	
l13453:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 999: else
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 1000: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 1001: _CMS_DispKeyDown[_CMS_cnt] = 0;
	clrc
	rlf	(___CMS_GetProPorTion@_CMS_cnt),w
	addlw	low(__CMS_DispKeyDown|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	incf	fsr0,f
	clrf	indf
	line	1003
	
l13455:	
	movlw	low(02h)
	incf	(___CMS_GetProPorTion@_CMS_cnt),f
	subwf	((___CMS_GetProPorTion@_CMS_cnt)),w
	skipc
	goto	u5351
	goto	u5350
u5351:
	goto	l13437
u5350:
	line	1004
	
l9449:	
	return
	opt stack 0
GLOBAL	__end_of___CMS_GetProPorTion
	__end_of___CMS_GetProPorTion:
	signat	___CMS_GetProPorTion,89
	global	___CMS_CurAdjust

;; *************** function ___CMS_CurAdjust *****************
;; Defined at:
;;		line 688 in file "E:\WORK\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79FT73xx\C语言\标准\CMS_CheckTouch_79FT73xx_Make\CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  _CMS_KeySumT    2    5[BANK2 ] unsigned int 
;;  _CMS_CurFlag    2    3[BANK2 ] unsigned int 
;;  _CMS_TKDatTe    2    1[BANK2 ] unsigned int 
;;  _CMS_cnt        1    8[BANK2 ] unsigned char 
;;  _CMS_CurFlag    1    7[BANK2 ] unsigned char 
;;  _CMS_templ      1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       9
;;      Temps:          0       4       0       0
;;      Totals:         0       4       0       9
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		___CurOnceOK
;;		___awdiv
;; This function is called by:
;;		___CMS_CheckTouchKey
;; This function uses a non-reentrant model
;;
psect	text51,local,class=CODE,delta=2,merge=1,group=1
	line	688
global __ptext51
__ptext51:	;psect for function ___CMS_CurAdjust
psect	text51
	file	"E:\WORK\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79FT73xx\C语言\标准\CMS_CheckTouch_79FT73xx_Make\CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c"
	line	688
	global	__size_of___CMS_CurAdjust
	__size_of___CMS_CurAdjust	equ	__end_of___CMS_CurAdjust-___CMS_CurAdjust
	
___CMS_CurAdjust:	
;incstack = 0
	opt	stack 0
; Regs used in ___CMS_CurAdjust: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	690
	
l16779:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 690: unsigned char _CMS_cnt = 0;
	bsf	status, 6	;RP1=1, select bank2
	clrf	(___CMS_CurAdjust@_CMS_cnt)^0100h
	line	697
	
l16781:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 695: unsigned char _CMS_templ;
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 697: if(_CMS_CurAdjSDfst)
	bcf	status, 6	;RP1=0, select bank0
	btfss	(__CMS_CurAdjSDfst/8),(__CMS_CurAdjSDfst)&7	;volatile
	goto	u10131
	goto	u10130
u10131:
	goto	l9361
u10130:
	line	705
	
l16787:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 704: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 705: _CMS_TKDatTemp = 96;
	movlw	060h
	bsf	status, 6	;RP1=1, select bank2
	movwf	(___CMS_CurAdjust@_CMS_TKDatTemp)^0100h
	clrf	(___CMS_CurAdjust@_CMS_TKDatTemp+1)^0100h
	line	711
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 710: }
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 711: do{
	
l9366:	
	line	712
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 712: _CMS_BANKRAM = 0x04,__CMS_RAMCTR = _CMS_BANKRAM;;
	movlw	low(04h)
	bcf	status, 6	;RP1=0, select bank0
	movwf	(__CMS_BANKRAM)	;volatile
	movf	(__CMS_BANKRAM),w	;volatile
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	713
	
l16791:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 713: _CMS_KeySumTemp = _CMS_KeySum[_CMS_cnt];
	bcf	status, 5	;RP0=0, select bank2
	clrc
	rlf	(___CMS_CurAdjust@_CMS_cnt)^0100h,w
	addlw	low(416|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	movwf	(___CMS_CurAdjust@_CMS_KeySumTemp)^0100h
	incf	fsr0,f
	movf	indf,w
	movwf	(___CMS_CurAdjust@_CMS_KeySumTemp+1)^0100h
	line	714
	
l16793:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 714: _CMS_BANKRAM = 0x08,__CMS_RAMCTR = _CMS_BANKRAM;;
	movlw	low(08h)
	bcf	status, 6	;RP1=0, select bank0
	movwf	(__CMS_BANKRAM)	;volatile
	
l16795:	
	movf	(__CMS_BANKRAM),w	;volatile
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	715
	
l16797:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 715: if(_CMS_cnt&0x10)
	bcf	status, 5	;RP0=0, select bank2
	btfss	(___CMS_CurAdjust@_CMS_cnt)^0100h,(4)&7
	goto	u10141
	goto	u10140
u10141:
	goto	l16809
u10140:
	line	717
	
l16799:	
	line	718
	
l16801:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 718: _CMS_CurFlagtempH = (1 << (unsigned char)(_CMS_cnt - 16));
	movlw	low(01h)
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___CMS_CurAdjust+0)+0
	bsf	status, 6	;RP1=1, select bank2
	movf	(___CMS_CurAdjust@_CMS_cnt)^0100h,w
	addlw	0F0h
	addlw	1
	bcf	status, 6	;RP1=0, select bank0
	goto	u10154
u10155:
	clrc
	rlf	(??___CMS_CurAdjust+0)+0,f
u10154:
	addlw	-1
	skipz
	goto	u10155
	movf	0+(??___CMS_CurAdjust+0)+0,w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(___CMS_CurAdjust@_CMS_CurFlagtempH)^0100h
	line	719
	
l16803:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 719: if(0 == (_CMS_CurOKFlagH & _CMS_CurFlagtempH))
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__CMS_CurOKFlagH)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	andwf	(___CMS_CurAdjust@_CMS_CurFlagtempH)^0100h,w
	btfss	status,2
	goto	u10161
	goto	u10160
u10161:
	goto	l16807
u10160:
	line	721
	
l16805:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 720: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 721: _CMS_CurFlagtempH = 1;
	bsf	status, 6	;RP1=1, select bank2
	clrf	(___CMS_CurAdjust@_CMS_CurFlagtempH)^0100h
	incf	(___CMS_CurAdjust@_CMS_CurFlagtempH)^0100h,f
	line	722
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 722: }
	goto	l16815
	line	725
	
l16807:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 723: else
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 724: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 725: _CMS_CurFlagtempH = 0;
	bsf	status, 6	;RP1=1, select bank2
	clrf	(___CMS_CurAdjust@_CMS_CurFlagtempH)^0100h
	goto	l16815
	line	730
	
l16809:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 728: else
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 729: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 730: _CMS_CurFlagtemp = (unsigned int)(1 << _CMS_cnt);
	incf	(___CMS_CurAdjust@_CMS_cnt)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___CMS_CurAdjust+0)+0
	movlw	01h
	movwf	(??___CMS_CurAdjust+1)+0
	movlw	0
	movwf	(??___CMS_CurAdjust+1)+0+1
	goto	u10174
u10175:
	clrc
	rlf	(??___CMS_CurAdjust+1)+0,f
	rlf	(??___CMS_CurAdjust+1)+1,f
u10174:
	decfsz	(??___CMS_CurAdjust+0)+0,f
	goto	u10175
	
	movf	0+(??___CMS_CurAdjust+1)+0,w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(___CMS_CurAdjust@_CMS_CurFlagtemp)^0100h
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(??___CMS_CurAdjust+1)+0,w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(___CMS_CurAdjust@_CMS_CurFlagtemp+1)^0100h
	line	731
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 731: if(0 == (_CMS_CurOKFlag & _CMS_CurFlagtemp))
	movf	(___CMS_CurAdjust@_CMS_CurFlagtemp)^0100h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(__CMS_CurOKFlag)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??___CMS_CurAdjust+0)+0
	bsf	status, 6	;RP1=1, select bank2
	movf	(___CMS_CurAdjust@_CMS_CurFlagtemp+1)^0100h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(__CMS_CurOKFlag+1)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(??___CMS_CurAdjust+0)+0
	movf	((??___CMS_CurAdjust+0)+0),w
iorwf	((??___CMS_CurAdjust+0)+1),w
	btfss	status,2
	goto	u10181
	goto	u10180
u10181:
	goto	l16807
u10180:
	goto	l16805
	line	740
	
l16815:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 738: }
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 739: }
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 740: if(_CMS_CurFlagtempH)
	movf	((___CMS_CurAdjust@_CMS_CurFlagtempH)^0100h),w
	btfsc	status,2
	goto	u10191
	goto	u10190
u10191:
	goto	l16853
u10190:
	line	742
	
l16817:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 741: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 742: if(_CMS_KeySumTemp > 2048)
	movlw	08h
	subwf	(___CMS_CurAdjust@_CMS_KeySumTemp+1)^0100h,w
	movlw	01h
	skipnz
	subwf	(___CMS_CurAdjust@_CMS_KeySumTemp)^0100h,w
	skipc
	goto	u10201
	goto	u10200
u10201:
	goto	l16835
u10200:
	line	744
	
l16819:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 743: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 744: if((unsigned int)(_CMS_KeySumTemp - 2048) <= (unsigned int)_CMS_TKDatTemp)
	movf	(___CMS_CurAdjust@_CMS_KeySumTemp)^0100h,w
	addlw	low(0F800h)
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___CMS_CurAdjust+0)+0
	bsf	status, 6	;RP1=1, select bank2
	movf	(___CMS_CurAdjust@_CMS_KeySumTemp+1)^0100h,w
	skipnc
	addlw	1
	addlw	high(0F800h)
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(??___CMS_CurAdjust+0)+0
	movf	1+(??___CMS_CurAdjust+0)+0,w
	bsf	status, 6	;RP1=1, select bank2
	subwf	(___CMS_CurAdjust@_CMS_TKDatTemp+1)^0100h,w
	skipz
	goto	u10215
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(??___CMS_CurAdjust+0)+0,w
	bsf	status, 6	;RP1=1, select bank2
	subwf	(___CMS_CurAdjust@_CMS_TKDatTemp)^0100h,w
u10215:
	skipc
	goto	u10211
	goto	u10210
u10211:
	goto	l16823
u10210:
	line	746
	
l16821:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 745: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 746: __CurOnceOK(_CMS_cnt);
	movf	(___CMS_CurAdjust@_CMS_cnt)^0100h,w
	fcall	___CurOnceOK
	line	748
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 748: }
	goto	l16849
	line	749
	
l16823:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 749: else if(_CMS_ITRIMRamMax[_CMS_cnt] > _CMS_ITRIM_Ram[_CMS_cnt])
	movf	(___CMS_CurAdjust@_CMS_cnt)^0100h,w
	addlw	low(436|((0x1)<<8))&0ffh
	movwf	fsr
	movf	indf,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___CMS_CurAdjust+0)+0
	bsf	status, 6	;RP1=1, select bank2
	movf	(___CMS_CurAdjust@_CMS_cnt)^0100h,w
	addlw	low(416|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___CMS_CurAdjust+1)+0
	movf	(??___CMS_CurAdjust+0)+0,w
	subwf	(??___CMS_CurAdjust+1)+0,w
	skipnc
	goto	u10221
	goto	u10220
u10221:
	goto	l16829
u10220:
	line	751
	
l16825:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 750: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 751: _CMS_ITRIMRamMin[_CMS_cnt] = _CMS_ITRIM_Ram[_CMS_cnt];
	bsf	status, 6	;RP1=1, select bank2
	movf	(___CMS_CurAdjust@_CMS_cnt)^0100h,w
	addlw	low(416|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___CMS_CurAdjust+0)+0
	bsf	status, 6	;RP1=1, select bank2
	movf	(___CMS_CurAdjust@_CMS_cnt)^0100h,w
	addlw	low(456|((0x1)<<8))&0ffh
	movwf	fsr0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??___CMS_CurAdjust+0)+0,w
	movwf	indf
	line	752
	
l16827:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 752: _CMS_ITRIM_Ram[_CMS_cnt] += (_CMS_ITRIMRamMax[_CMS_cnt] - _CMS_ITRIM_Ram[_CMS_cnt])/2;
	movlw	02h
	movwf	(___awdiv@divisor)
	clrf	(___awdiv@divisor+1)
	bsf	status, 6	;RP1=1, select bank2
	movf	(___CMS_CurAdjust@_CMS_cnt)^0100h,w
	addlw	low(416|((0x1)<<8))&0ffh
	movwf	fsr
	movf	indf,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___CMS_CurAdjust+0)+0
	bsf	status, 6	;RP1=1, select bank2
	movf	(___CMS_CurAdjust@_CMS_cnt)^0100h,w
	addlw	low(436|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___CMS_CurAdjust+1)+0
	movf	(??___CMS_CurAdjust+0)+0,w
	subwf	(??___CMS_CurAdjust+1)+0,w
	movwf	(___awdiv@dividend)
	clrf	(___awdiv@dividend)+1
	skipc
	decf	1+(___awdiv@dividend),f
	
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	movwf	(??___CMS_CurAdjust+2)+0
	bsf	status, 6	;RP1=1, select bank2
	movf	(___CMS_CurAdjust@_CMS_cnt)^0100h,w
	addlw	low(416|((0x1)<<8))&0ffh
	movwf	fsr0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??___CMS_CurAdjust+2)+0,w
	addwf	indf,f
	line	753
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 753: }
	goto	l16849
	line	756
	
l16829:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 754: else
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 755: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 756: if(((++ _CMS_CurStep[_CMS_cnt]) & 0x0f) > 5)
	bsf	status, 6	;RP1=1, select bank2
	movf	(___CMS_CurAdjust@_CMS_cnt)^0100h,w
	addlw	low(476|((0x1)<<8))&0ffh
	movwf	fsr0
	incf	indf,f
	movlw	low(0Fh)
	andwf	(indf),w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___CMS_CurAdjust+0)+0
	movlw	low(06h)
	subwf	0+(??___CMS_CurAdjust+0)+0,w
	skipc
	goto	u10231
	goto	u10230
u10231:
	goto	l9376
u10230:
	line	758
	
l16831:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 757: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 758: _CMS_CurStep[_CMS_cnt] = 5;
	bsf	status, 6	;RP1=1, select bank2
	movf	(___CMS_CurAdjust@_CMS_cnt)^0100h,w
	addlw	low(476|((0x1)<<8))&0ffh
	movwf	fsr0
	movlw	low(05h)
	movwf	indf
	line	759
	
l16833:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 759: __CurOnceOK(_CMS_cnt);
	movf	(___CMS_CurAdjust@_CMS_cnt)^0100h,w
	fcall	___CurOnceOK
	goto	l16849
	line	762
	
l9376:	
	line	763
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 761: }
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 762: }
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 763: }
	goto	l16849
	line	764
	
l16835:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 764: else if(_CMS_KeySumTemp < 2048)
	movlw	08h
	subwf	(___CMS_CurAdjust@_CMS_KeySumTemp+1)^0100h,w
	movlw	0
	skipnz
	subwf	(___CMS_CurAdjust@_CMS_KeySumTemp)^0100h,w
	skipnc
	goto	u10241
	goto	u10240
u10241:
	goto	l16847
u10240:
	line	766
	
l16837:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 765: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 766: if((unsigned int)(2048 - _CMS_KeySumTemp) <= (unsigned int)_CMS_TKDatTemp)
	movlw	0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___CMS_CurAdjust+0)+0
	movlw	08h
	movwf	(??___CMS_CurAdjust+0)+0+1
	bsf	status, 6	;RP1=1, select bank2
	movf	(___CMS_CurAdjust@_CMS_KeySumTemp)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	subwf	0+(??___CMS_CurAdjust+0)+0,w
	movwf	(??___CMS_CurAdjust+2)+0
	bsf	status, 6	;RP1=1, select bank2
	movf	(___CMS_CurAdjust@_CMS_KeySumTemp+1)^0100h,w
	skipc
	incf	(___CMS_CurAdjust@_CMS_KeySumTemp+1)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	subwf	1+(??___CMS_CurAdjust+0)+0,w
	movwf	1+(??___CMS_CurAdjust+2)+0
	movf	1+(??___CMS_CurAdjust+2)+0,w
	bsf	status, 6	;RP1=1, select bank2
	subwf	(___CMS_CurAdjust@_CMS_TKDatTemp+1)^0100h,w
	skipz
	goto	u10255
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(??___CMS_CurAdjust+2)+0,w
	bsf	status, 6	;RP1=1, select bank2
	subwf	(___CMS_CurAdjust@_CMS_TKDatTemp)^0100h,w
u10255:
	skipc
	goto	u10251
	goto	u10250
u10251:
	goto	l16841
u10250:
	line	768
	
l16839:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 767: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 768: __CurOnceOK(_CMS_cnt);
	movf	(___CMS_CurAdjust@_CMS_cnt)^0100h,w
	fcall	___CurOnceOK
	line	770
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 770: }
	goto	l16849
	line	771
	
l16841:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 771: else if(_CMS_ITRIM_Ram[_CMS_cnt] > _CMS_ITRIMRamMin[_CMS_cnt])
	movf	(___CMS_CurAdjust@_CMS_cnt)^0100h,w
	addlw	low(416|((0x1)<<8))&0ffh
	movwf	fsr
	movf	indf,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___CMS_CurAdjust+0)+0
	bsf	status, 6	;RP1=1, select bank2
	movf	(___CMS_CurAdjust@_CMS_cnt)^0100h,w
	addlw	low(456|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___CMS_CurAdjust+1)+0
	movf	(??___CMS_CurAdjust+0)+0,w
	subwf	(??___CMS_CurAdjust+1)+0,w
	skipnc
	goto	u10261
	goto	u10260
u10261:
	goto	l16849
u10260:
	line	773
	
l16843:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 772: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 773: _CMS_ITRIMRamMax[_CMS_cnt] = _CMS_ITRIM_Ram[_CMS_cnt];
	bsf	status, 6	;RP1=1, select bank2
	movf	(___CMS_CurAdjust@_CMS_cnt)^0100h,w
	addlw	low(416|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___CMS_CurAdjust+0)+0
	bsf	status, 6	;RP1=1, select bank2
	movf	(___CMS_CurAdjust@_CMS_cnt)^0100h,w
	addlw	low(436|((0x1)<<8))&0ffh
	movwf	fsr0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??___CMS_CurAdjust+0)+0,w
	movwf	indf
	line	774
	
l16845:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 774: _CMS_ITRIM_Ram[_CMS_cnt] -= (_CMS_ITRIM_Ram[_CMS_cnt] - _CMS_ITRIMRamMin[_CMS_cnt])/2;
	movlw	02h
	movwf	(___awdiv@divisor)
	clrf	(___awdiv@divisor+1)
	bsf	status, 6	;RP1=1, select bank2
	movf	(___CMS_CurAdjust@_CMS_cnt)^0100h,w
	addlw	low(456|((0x1)<<8))&0ffh
	movwf	fsr
	movf	indf,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___CMS_CurAdjust+0)+0
	bsf	status, 6	;RP1=1, select bank2
	movf	(___CMS_CurAdjust@_CMS_cnt)^0100h,w
	addlw	low(416|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___CMS_CurAdjust+1)+0
	movf	(??___CMS_CurAdjust+0)+0,w
	subwf	(??___CMS_CurAdjust+1)+0,w
	movwf	(___awdiv@dividend)
	clrf	(___awdiv@dividend)+1
	skipc
	decf	1+(___awdiv@dividend),f
	
	fcall	___awdiv
	bsf	status, 6	;RP1=1, select bank2
	movf	(___CMS_CurAdjust@_CMS_cnt)^0100h,w
	addlw	low(416|((0x1)<<8))&0ffh
	movwf	fsr0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	subwf	indf,f
	goto	l16849
	line	779
	
l16847:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 777: else
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 778: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 779: __CurOnceOK(_CMS_cnt);
	movf	(___CMS_CurAdjust@_CMS_cnt)^0100h,w
	fcall	___CurOnceOK
	line	782
	
l16849:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 781: }
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 782: if(_CMS_ITRIMRamMax[_CMS_cnt] <= (unsigned int)(_CMS_ITRIMRamMin[_CMS_cnt] + 1))
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	(___CMS_CurAdjust@_CMS_cnt)^0100h,w
	addlw	low(436|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___CMS_CurAdjust+0)+0
	clrf	(??___CMS_CurAdjust+0)+0+1
	bsf	status, 6	;RP1=1, select bank2
	movf	(___CMS_CurAdjust@_CMS_cnt)^0100h,w
	addlw	low(456|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	addlw	low(01h)
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___CMS_CurAdjust+2)+0
	movlw	high(01h)
	skipnc
	movlw	(high(01h)+1)&0ffh
	movwf	((??___CMS_CurAdjust+2)+0)+1
	movf	1+(??___CMS_CurAdjust+0)+0,w
	subwf	1+(??___CMS_CurAdjust+2)+0,w
	skipz
	goto	u10275
	movf	0+(??___CMS_CurAdjust+0)+0,w
	subwf	0+(??___CMS_CurAdjust+2)+0,w
u10275:
	skipc
	goto	u10271
	goto	u10270
u10271:
	goto	l16853
u10270:
	line	784
	
l16851:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 783: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 784: __CurOnceOK(_CMS_cnt);
	bsf	status, 6	;RP1=1, select bank2
	movf	(___CMS_CurAdjust@_CMS_cnt)^0100h,w
	fcall	___CurOnceOK
	line	788
	
l16853:	
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	incf	(___CMS_CurAdjust@_CMS_cnt)^0100h,f
	subwf	((___CMS_CurAdjust@_CMS_cnt)^0100h),w
	skipc
	goto	u10281
	goto	u10280
u10281:
	goto	l9366
u10280:
	goto	l16863
	line	800
	
l16861:	
	line	801
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 801: }
	goto	l16867
	line	804
	
l16863:	
	goto	l16861
	line	807
	
l16867:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 806: }
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 807: if((_CMS_CurFlagtemp == _CMS_CurOKFlag) && (_CMS_CurFlagtempH == _CMS_CurOKFlagH))
		movlw	3
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	xorwf	((__CMS_CurOKFlag)^080h),w	;volatile
iorwf	((__CMS_CurOKFlag+1)^080h),w	;volatile
	btfss	status,2
	goto	u10291
	goto	u10290
u10291:
	goto	l9402
u10290:
	
l16869:	
	movf	((__CMS_CurOKFlagH)^080h),w	;volatile
	btfss	status,2
	goto	u10301
	goto	u10300
u10301:
	goto	l9402
u10300:
	line	809
	
l16871:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 808: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 809: _CMS_CurCheckOver = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(__CMS_CurCheckOver/8),(__CMS_CurCheckOver)&7	;volatile
	line	810
	
l16873:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 810: for(_CMS_cnt = 0; _CMS_cnt < _CMS_KeyTNumber; _CMS_cnt++)
	bsf	status, 6	;RP1=1, select bank2
	clrf	(___CMS_CurAdjust@_CMS_cnt)^0100h
	
l16875:	
	movlw	low(02h)
	subwf	(___CMS_CurAdjust@_CMS_cnt)^0100h,w
	skipc
	goto	u10311
	goto	u10310
u10311:
	goto	l16879
u10310:
	goto	l16891
	line	812
	
l16879:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 811: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 812: _CMS_BANKRAM = 0x08,__CMS_RAMCTR = _CMS_BANKRAM;;
	movlw	low(08h)
	bcf	status, 6	;RP1=0, select bank0
	movwf	(__CMS_BANKRAM)	;volatile
	movf	(__CMS_BANKRAM),w	;volatile
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	813
	
l16881:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 813: _CMS_ITRIMRamMax[_CMS_cnt] = 0;
	bcf	status, 5	;RP0=0, select bank2
	movf	(___CMS_CurAdjust@_CMS_cnt)^0100h,w
	addlw	low(436|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	clrf	indf
	line	814
	
l16883:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 814: _CMS_ITRIMRamMin[_CMS_cnt] = 0;
	movf	(___CMS_CurAdjust@_CMS_cnt)^0100h,w
	addlw	low(456|((0x1)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	line	815
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 815: _CMS_BANKRAM = 0x02,__CMS_RAMCTR = _CMS_BANKRAM;;
	movlw	low(02h)
	bcf	status, 6	;RP1=0, select bank0
	movwf	(__CMS_BANKRAM)	;volatile
	movf	(__CMS_BANKRAM),w	;volatile
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	816
	
l16885:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 816: _CMS_KeyReference[_CMS_cnt] = 2048+512+256;
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___CMS_CurAdjust+0)+0
	movlw	0Bh
	movwf	(??___CMS_CurAdjust+0)+0+1
	bsf	status, 6	;RP1=1, select bank2
	clrc
	rlf	(___CMS_CurAdjust@_CMS_cnt)^0100h,w
	addlw	low(456|((0x1)<<8))&0ffh
	movwf	fsr0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??___CMS_CurAdjust+0)+0,w
	movwf	indf
	incf	fsr0,f
	movf	(??___CMS_CurAdjust+0)+1,w
	movwf	indf
	line	810
	
l16887:	
	bsf	status, 6	;RP1=1, select bank2
	incf	(___CMS_CurAdjust@_CMS_cnt)^0100h,f
	goto	l16875
	line	818
	
l16891:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 817: }
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 818: _CMS_CurOKFlag = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(__CMS_CurOKFlag)^080h	;volatile
	clrf	(__CMS_CurOKFlag+1)^080h	;volatile
	line	819
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 819: _CMS_CurOKFlagH = 0;
	clrf	(__CMS_CurOKFlagH)^080h	;volatile
	goto	l9402
	line	822
	
l9361:	
	line	824
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 822: else
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 823: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 824: _CMS_CurAdjSDfst = 1;
	bsf	(__CMS_CurAdjSDfst/8),(__CMS_CurAdjSDfst)&7	;volatile
	line	825
	
l16893:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 825: for(_CMS_cnt = 0; _CMS_cnt < _CMS_KeyTNumber; _CMS_cnt++)
	bsf	status, 6	;RP1=1, select bank2
	clrf	(___CMS_CurAdjust@_CMS_cnt)^0100h
	
l16895:	
	movlw	low(02h)
	subwf	(___CMS_CurAdjust@_CMS_cnt)^0100h,w
	skipc
	goto	u10321
	goto	u10320
u10321:
	goto	l16899
u10320:
	goto	l9402
	line	827
	
l16899:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 826: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 827: _CMS_BANKRAM = 0x08,__CMS_RAMCTR = _CMS_BANKRAM;;
	movlw	low(08h)
	bcf	status, 6	;RP1=0, select bank0
	movwf	(__CMS_BANKRAM)	;volatile
	movf	(__CMS_BANKRAM),w	;volatile
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	835
	
l16903:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 834: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 835: _CMS_ITRIM_Ram[_CMS_cnt] = 254;
	bcf	status, 5	;RP0=0, select bank2
	movf	(___CMS_CurAdjust@_CMS_cnt)^0100h,w
	addlw	low(416|((0x1)<<8))&0ffh
	movwf	fsr0
	movlw	low(0FEh)
	bsf	status, 7	;select IRP bank3
	movwf	indf
	line	836
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 836: _CMS_ITRIMRamMax[_CMS_cnt] = 254;
	movf	(___CMS_CurAdjust@_CMS_cnt)^0100h,w
	addlw	low(436|((0x1)<<8))&0ffh
	movwf	fsr0
	movlw	low(0FEh)
	movwf	indf
	line	842
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 837: }
	
l9399:	
	line	843
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 842: }
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 843: _CMS_ITRIMRamMin[_CMS_cnt] = 32;
	movf	(___CMS_CurAdjust@_CMS_cnt)^0100h,w
	addlw	low(456|((0x1)<<8))&0ffh
	movwf	fsr0
	movlw	low(020h)
	movwf	indf
	line	825
	
l16907:	
	incf	(___CMS_CurAdjust@_CMS_cnt)^0100h,f
	goto	l16895
	line	846
	
l9402:	
	return
	opt stack 0
GLOBAL	__end_of___CMS_CurAdjust
	__end_of___CMS_CurAdjust:
	signat	___CMS_CurAdjust,89
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 6 in file "C:\Users\qxl\Desktop\组会信息\高师兄给的资料\CMS_IDE_V2.03.28\CMS_IDE_V2.03.28\data\sources\common\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    7[BANK0 ] int 
;;  dividend        2    9[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   13[BANK0 ] int 
;;  sign            1   12[BANK0 ] unsigned char 
;;  counter         1   11[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    7[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : B00/800
;;		On exit  : B00/800
;;		Unchanged: 800/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       4       0       0
;;      Locals:         0       4       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       8       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___CMS_CurAdjust
;; This function uses a non-reentrant model
;;
psect	text52,local,class=CODE,delta=2,merge=1,group=3
	file	"C:\Users\qxl\Desktop\组会信息\高师兄给的资料\CMS_IDE_V2.03.28\CMS_IDE_V2.03.28\data\sources\common\awdiv.c"
	line	6
global __ptext52
__ptext52:	;psect for function ___awdiv
psect	text52
	file	"C:\Users\qxl\Desktop\组会信息\高师兄给的资料\CMS_IDE_V2.03.28\CMS_IDE_V2.03.28\data\sources\common\awdiv.c"
	line	6
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
;incstack = 0
	opt	stack 0
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	14
	
l16263:	
	clrf	(___awdiv@sign)
	line	15
	
l16265:	
	btfss	(___awdiv@divisor+1),7
	goto	u9561
	goto	u9560
u9561:
	goto	l16271
u9560:
	line	16
	
l16267:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	17
	
l16269:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	line	19
	
l16271:	
	btfss	(___awdiv@dividend+1),7
	goto	u9571
	goto	u9570
u9571:
	goto	l16277
u9570:
	line	20
	
l16273:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	21
	
l16275:	
	movlw	low(01h)
	xorwf	(___awdiv@sign),f
	line	23
	
l16277:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	24
	
l16279:	
	movf	((___awdiv@divisor)),w
iorwf	((___awdiv@divisor+1)),w
	btfsc	status,2
	goto	u9581
	goto	u9580
u9581:
	goto	l16299
u9580:
	line	25
	
l16281:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	26
	goto	l16285
	line	27
	
l16283:	
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	line	28
	incf	(___awdiv@counter),f
	line	26
	
l16285:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u9591
	goto	u9590
u9591:
	goto	l16283
u9590:
	line	31
	
l16287:	
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	line	32
	
l16289:	
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u9605
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u9605:
	skipc
	goto	u9601
	goto	u9600
u9601:
	goto	l16295
u9600:
	line	33
	
l16291:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	34
	
l16293:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	36
	
l16295:	
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	line	37
	
l16297:	
	decfsz	(___awdiv@counter),f
	goto	u9611
	goto	u9610
u9611:
	goto	l16287
u9610:
	line	39
	
l16299:	
	movf	((___awdiv@sign)),w
	btfsc	status,2
	goto	u9621
	goto	u9620
u9621:
	goto	l16303
u9620:
	line	40
	
l16301:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	line	41
	
l16303:	
	movf	(___awdiv@quotient+1),w
	movwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	movwf	(?___awdiv)
	line	42
	
l9615:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	___CurOnceOK

;; *************** function ___CurOnceOK *****************
;; Defined at:
;;		line 670 in file "E:\WORK\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79FT73xx\C语言\标准\CMS_CheckTouch_79FT73xx_Make\CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c"
;; Parameters:    Size  Location     Type
;;  _CMS_cnt        1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  _CMS_cnt        1   10[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/A00
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       3       0       0
;;      Totals:         0       4       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___CMS_CurAdjust
;; This function uses a non-reentrant model
;;
psect	text53,local,class=CODE,delta=2,merge=1,group=1
	file	"E:\WORK\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79FT73xx\C语言\标准\CMS_CheckTouch_79FT73xx_Make\CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c"
	line	670
global __ptext53
__ptext53:	;psect for function ___CurOnceOK
psect	text53
	file	"E:\WORK\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79FT73xx\C语言\标准\CMS_CheckTouch_79FT73xx_Make\CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c"
	line	670
	global	__size_of___CurOnceOK
	__size_of___CurOnceOK	equ	__end_of___CurOnceOK-___CurOnceOK
	
___CurOnceOK:	
;incstack = 0
	opt	stack 0
; Regs used in ___CurOnceOK: [wreg+status,2+status,0]
;___CurOnceOK@_CMS_cnt stored from wreg
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___CurOnceOK@_CMS_cnt)
	line	672
	
l16257:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 672: if(_CMS_cnt&0x10)
	btfss	(___CurOnceOK@_CMS_cnt),(4)&7
	goto	u9531
	goto	u9530
u9531:
	goto	l16261
u9530:
	line	674
	
l16259:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 673: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 674: _CMS_CurOKFlagH |= (1 << (unsigned char)(_CMS_cnt -16));
	movlw	low(01h)
	movwf	(??___CurOnceOK+0)+0
	movf	(___CurOnceOK@_CMS_cnt),w
	addlw	0F0h
	addlw	1
	goto	u9544
u9545:
	clrc
	rlf	(??___CurOnceOK+0)+0,f
u9544:
	addlw	-1
	skipz
	goto	u9545
	movf	0+(??___CurOnceOK+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(__CMS_CurOKFlagH)^080h,f	;volatile
	line	675
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 675: }
	goto	l9358
	line	678
	
l16261:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 676: else
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 677: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 678: _CMS_CurOKFlag |= (unsigned int)(1 << _CMS_cnt);
	incf	(___CurOnceOK@_CMS_cnt),w
	movwf	(??___CurOnceOK+0)+0
	movlw	01h
	movwf	(??___CurOnceOK+1)+0
	movlw	0
	movwf	(??___CurOnceOK+1)+0+1
	goto	u9554
u9555:
	clrc
	rlf	(??___CurOnceOK+1)+0,f
	rlf	(??___CurOnceOK+1)+1,f
u9554:
	decfsz	(??___CurOnceOK+0)+0,f
	goto	u9555
	
	movf	0+(??___CurOnceOK+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(__CMS_CurOKFlag)^080h,f	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??___CurOnceOK+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(__CMS_CurOKFlag+1)^080h,f	;volatile
	line	680
	
l9358:	
	return
	opt stack 0
GLOBAL	__end_of___CurOnceOK
	__end_of___CurOnceOK:
	signat	___CurOnceOK,4217
	global	___CMS_CheckValidTime

;; *************** function ___CMS_CheckValidTime *****************
;; Defined at:
;;		line 642 in file "E:\WORK\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79FT73xx\C语言\标准\CMS_CheckTouch_79FT73xx_Make\CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 200/0
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___CMS_CheckTouchKey
;; This function uses a non-reentrant model
;;
psect	text54,local,class=CODE,delta=2,merge=1,group=1
	line	642
global __ptext54
__ptext54:	;psect for function ___CMS_CheckValidTime
psect	text54
	file	"E:\WORK\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79FT73xx\C语言\标准\CMS_CheckTouch_79FT73xx_Make\CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c"
	line	642
	global	__size_of___CMS_CheckValidTime
	__size_of___CMS_CheckValidTime	equ	__end_of___CMS_CheckValidTime-___CMS_CheckValidTime
	
___CMS_CheckValidTime:	
;incstack = 0
	opt	stack 1
; Regs used in ___CMS_CheckValidTime: [wreg+status,2+status,0]
	line	648
	
l14245:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 647: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 648: if(_CMS_KeyFlag[0] | _CMS_KeyFlag[1] | _CMS_KeyFlag[2])
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(__CMS_KeyFlag)+01h,w	;volatile
	iorwf	0+(__CMS_KeyFlag)+02h,w	;volatile
	iorwf	(__CMS_KeyFlag),w	;volatile
	btfsc	status,2
	goto	u6371
	goto	u6370
u6371:
	goto	l14251
u6370:
	line	650
	
l14247:	
	bsf	status, 5	;RP0=1, select bank1
	incf	(___CMS_CheckValidTime@_CMS_validtime)^080h,f
	skipnz
	incf	(___CMS_CheckValidTime@_CMS_validtime+1)^080h,f
	movlw	013h
	subwf	((___CMS_CheckValidTime@_CMS_validtime+1)^080h),w
	movlw	088h
	skipnz
	subwf	((___CMS_CheckValidTime@_CMS_validtime)^080h),w
	skipc
	goto	u6381
	goto	u6380
u6381:
	goto	l9353
u6380:
	line	652
	
l14249:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 651: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 652: _CMS_b_kerr = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(__CMS_b_kerr/8),(__CMS_b_kerr)&7	;volatile
	line	653
	
l14251:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 653: _CMS_validtime = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(___CMS_CheckValidTime@_CMS_validtime)^080h
	clrf	(___CMS_CheckValidTime@_CMS_validtime+1)^080h
	line	661
	
l9353:	
	return
	opt stack 0
GLOBAL	__end_of___CMS_CheckValidTime
	__end_of___CMS_CheckValidTime:
	signat	___CMS_CheckValidTime,89
	global	___CMS_CheckOnceResult

;; *************** function ___CMS_CheckOnceResult *****************
;; Defined at:
;;		line 480 in file "E:\WORK\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79FT73xx\C语言\标准\CMS_CheckTouch_79FT73xx_Make\CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  _CMS_KeyBase    2    6[BANK2 ] unsigned int 
;;  _CMS_KeyValu    2    4[BANK2 ] unsigned int 
;;  _CMS_KeyDown    2    2[BANK2 ] unsigned int 
;;  _CMS_cnt        1   10[BANK2 ] unsigned char 
;;  _CMS_flag       1    9[BANK2 ] unsigned char 
;;  _CMS_templ      1    8[BANK2 ] unsigned char 
;;  _CMS_KHaveTe    1    1[BANK2 ] unsigned char 
;;  _CMS_KHaveC     1    0[BANK2 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/200
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0      11
;;      Temps:          0       6       0       0
;;      Totals:         0       6       0      11
;;Total ram usage:       17 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		___CMS_KeyClearOne
;;		___CMS_KeyHaveDown
;;		___CMS_KeyIsIn
;;		___CMS_KeyOpen
;; This function is called by:
;;		___CMS_CheckTouchKey
;; This function uses a non-reentrant model
;;
psect	text55,local,class=CODE,delta=2,merge=1,group=1
	line	480
global __ptext55
__ptext55:	;psect for function ___CMS_CheckOnceResult
psect	text55
	file	"E:\WORK\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79FT73xx\C语言\标准\CMS_CheckTouch_79FT73xx_Make\CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c"
	line	480
	global	__size_of___CMS_CheckOnceResult
	__size_of___CMS_CheckOnceResult	equ	__end_of___CMS_CheckOnceResult-___CMS_CheckOnceResult
	
___CMS_CheckOnceResult:	
;incstack = 0
;; using string table level
	opt	stack 1
; Regs used in ___CMS_CheckOnceResult: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	482
	
l16627:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 482: unsigned char _CMS_cnt = 0,_CMS_templ;
	bsf	status, 6	;RP1=1, select bank2
	clrf	(___CMS_CheckOnceResult@_CMS_cnt)^0100h
	line	493
	
l16629:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 492: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 493: _CMS_BANKRAM = 0x02,__CMS_RAMCTR = _CMS_BANKRAM;;
	movlw	low(02h)
	bcf	status, 6	;RP1=0, select bank0
	movwf	(__CMS_BANKRAM)	;volatile
	
l16631:	
	movf	(__CMS_BANKRAM),w	;volatile
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	494
	
l16633:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 494: _CMS_KeyBase = _CMS_KeyReference[_CMS_cnt];
	bcf	status, 5	;RP0=0, select bank2
	clrc
	rlf	(___CMS_CheckOnceResult@_CMS_cnt)^0100h,w
	addlw	low(456|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	movwf	(___CMS_CheckOnceResult@_CMS_KeyBase)^0100h
	incf	fsr0,f
	movf	indf,w
	movwf	(___CMS_CheckOnceResult@_CMS_KeyBase+1)^0100h
	line	495
	
l16635:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 495: _CMS_KeyDown = _CMS_Table_KeyDown[_CMS_cnt];
	clrc
	rlf	(___CMS_CheckOnceResult@_CMS_cnt)^0100h,w
	addlw	low((((__CMS_Table_KeyDown)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(___CMS_CheckOnceResult@_CMS_KeyDown)^0100h
	fcall	stringdir
	movwf	(___CMS_CheckOnceResult@_CMS_KeyDown+1)^0100h
	line	496
	
l16637:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 496: _CMS_flag = (unsigned char)(__CMS_Table_KeyFalg[(unsigned char)(_CMS_cnt&0x7)]);
	movf	(___CMS_CheckOnceResult@_CMS_cnt)^0100h,w
	andlw	07h
	addlw	low((((___CMS_Table_KeyFalg)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(___CMS_CheckOnceResult@_CMS_flag)^0100h
	line	497
	
l16639:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 497: _CMS_BANKRAM = 0x01,__CMS_RAMCTR = _CMS_BANKRAM;;
	movlw	low(01h)
	bcf	status, 6	;RP1=0, select bank0
	movwf	(__CMS_BANKRAM)	;volatile
	
l16641:	
	movf	(__CMS_BANKRAM),w	;volatile
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	498
	
l16643:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 498: _CMS_KeyValue = (unsigned char)((_CMS_KeySum1[_CMS_cnt] - _CMS_KeySum0[_CMS_cnt])/4);
	bcf	status, 5	;RP0=0, select bank2
	clrc
	rlf	(___CMS_CheckOnceResult@_CMS_cnt)^0100h,w
	addlw	low(416|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___CMS_CheckOnceResult+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??___CMS_CheckOnceResult+0)+0+1
	bsf	status, 6	;RP1=1, select bank2
	clrc
	rlf	(___CMS_CheckOnceResult@_CMS_cnt)^0100h,w
	addlw	low(456|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___CMS_CheckOnceResult+2)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??___CMS_CheckOnceResult+2)+0+1
	movf	0+(??___CMS_CheckOnceResult+0)+0,w
	subwf	0+(??___CMS_CheckOnceResult+2)+0,w
	movwf	(??___CMS_CheckOnceResult+4)+0
	movf	1+(??___CMS_CheckOnceResult+0)+0,w
	skipc
	incf	1+(??___CMS_CheckOnceResult+0)+0,w
	subwf	1+(??___CMS_CheckOnceResult+2)+0,w
	movwf	1+(??___CMS_CheckOnceResult+4)+0
	clrc
	rrf	(??___CMS_CheckOnceResult+4)+1,f
	rrf	(??___CMS_CheckOnceResult+4)+0,f
	clrc
	rrf	(??___CMS_CheckOnceResult+4)+1,f
	rrf	(??___CMS_CheckOnceResult+4)+0,f
	movf	0+(??___CMS_CheckOnceResult+4)+0,w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(___CMS_CheckOnceResult@_CMS_KeyValue)^0100h
	clrf	(___CMS_CheckOnceResult@_CMS_KeyValue+1)^0100h
	line	499
	
l16645:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 499: if(_CMS_KeyValue < _CMS_KeyDown)
	movf	(___CMS_CheckOnceResult@_CMS_KeyDown+1)^0100h,w
	subwf	(___CMS_CheckOnceResult@_CMS_KeyValue+1)^0100h,w
	skipz
	goto	u9945
	movf	(___CMS_CheckOnceResult@_CMS_KeyDown)^0100h,w
	subwf	(___CMS_CheckOnceResult@_CMS_KeyValue)^0100h,w
u9945:
	skipnc
	goto	u9941
	goto	u9940
u9941:
	goto	l16717
u9940:
	line	501
	
l16647:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 500: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 501: _CMS_BANKRAM = 0x10,__CMS_RAMCTR = _CMS_BANKRAM;;
	movlw	low(010h)
	bcf	status, 6	;RP1=0, select bank0
	movwf	(__CMS_BANKRAM)	;volatile
	movf	(__CMS_BANKRAM),w	;volatile
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	502
	
l16649:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 502: _CMS_KeyNosieC[_CMS_cnt] = 0;
	bcf	status, 5	;RP0=0, select bank2
	movf	(___CMS_CheckOnceResult@_CMS_cnt)^0100h,w
	addlw	low(416|((0x1)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	line	503
	
l16651:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 503: _CMS_BANKRAM = 0x01,__CMS_RAMCTR = _CMS_BANKRAM;;
	movlw	low(01h)
	bcf	status, 6	;RP1=0, select bank0
	movwf	(__CMS_BANKRAM)	;volatile
	
l16653:	
	movf	(__CMS_BANKRAM),w	;volatile
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	504
	
l16655:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 504: if((0 != _CMS_KeyBase) && (_CMS_KeyBase < 2048+512+256))
	bcf	status, 5	;RP0=0, select bank2
	movf	((___CMS_CheckOnceResult@_CMS_KeyBase)^0100h),w
iorwf	((___CMS_CheckOnceResult@_CMS_KeyBase+1)^0100h),w
	btfsc	status,2
	goto	u9951
	goto	u9950
u9951:
	goto	l9326
u9950:
	
l16657:	
	movlw	0Bh
	subwf	(___CMS_CheckOnceResult@_CMS_KeyBase+1)^0100h,w
	movlw	0
	skipnz
	subwf	(___CMS_CheckOnceResult@_CMS_KeyBase)^0100h,w
	skipnc
	goto	u9961
	goto	u9960
u9961:
	goto	l9326
u9960:
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\Touch_Kscan_Library.h"
	line	96
	
l16659:	
	movf	(___CMS_CheckOnceResult@_CMS_KeyBase)^0100h,w
	addlw	low(023h)
	movwf	(___CMS_CheckOnceResult@_CMS_KeyValue)^0100h
	movf	(___CMS_CheckOnceResult@_CMS_KeyBase+1)^0100h,w
	skipnc
	addlw	1
	addlw	high(023h)
	movwf	1+(___CMS_CheckOnceResult@_CMS_KeyValue)^0100h
	file	"E:\WORK\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79FT73xx\C语言\标准\CMS_CheckTouch_79FT73xx_Make\CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c"
	line	506
	
l16661:	
	movf	(___CMS_CheckOnceResult@_CMS_KeyDown)^0100h,w
	addwf	(___CMS_CheckOnceResult@_CMS_KeyValue)^0100h,f
	skipnc
	incf	(___CMS_CheckOnceResult@_CMS_KeyValue+1)^0100h,f
	movf	(___CMS_CheckOnceResult@_CMS_KeyDown+1)^0100h,w
	addwf	(___CMS_CheckOnceResult@_CMS_KeyValue+1)^0100h,f
	line	507
	
l16663:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 507: _CMS_KeyDownF = 0;
	bcf	status, 6	;RP1=0, select bank0
	bcf	(___CMS_CheckOnceResult@_CMS_KeyDownF/8),(___CMS_CheckOnceResult@_CMS_KeyDownF)&7
	line	508
	
l16665:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 508: if(__CMS_KeyIsIn(_CMS_cnt))
	bsf	status, 6	;RP1=1, select bank2
	movf	(___CMS_CheckOnceResult@_CMS_cnt)^0100h,w
	fcall	___CMS_KeyIsIn
	xorlw	0
	skipnz
	goto	u9971
	goto	u9970
u9971:
	goto	l9316
u9970:
	line	510
	
l16667:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 509: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 510: _CMS_KeyDownF = 1;
	bsf	(___CMS_CheckOnceResult@_CMS_KeyDownF/8),(___CMS_CheckOnceResult@_CMS_KeyDownF)&7
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\Touch_Kscan_Library.h"
	line	97
	
l16669:	
	movlw	0F1h
	bsf	status, 6	;RP1=1, select bank2
	addwf	(___CMS_CheckOnceResult@_CMS_KeyValue)^0100h,f
	skipnc
	incf	(___CMS_CheckOnceResult@_CMS_KeyValue+1)^0100h,f
	movlw	0FFh
	addwf	(___CMS_CheckOnceResult@_CMS_KeyValue+1)^0100h,f
	file	"E:\WORK\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79FT73xx\C语言\标准\CMS_CheckTouch_79FT73xx_Make\CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c"
	line	512
	
l9316:	
	line	514
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 514: _CMS_BANKRAM = 0x04,__CMS_RAMCTR = _CMS_BANKRAM;;
	movlw	low(04h)
	bcf	status, 6	;RP1=0, select bank0
	movwf	(__CMS_BANKRAM)	;volatile
	movf	(__CMS_BANKRAM),w	;volatile
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	515
	
l16671:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 515: _CMS_KeyHave[_CMS_cnt] <<= 1;
	bcf	status, 5	;RP0=0, select bank2
	movf	(___CMS_CheckOnceResult@_CMS_cnt)^0100h,w
	addlw	low(456|((0x1)<<8))&0ffh
	movwf	fsr0
	clrc
	rlf	indf,f
	line	516
	
l16673:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 516: _CMS_KeyHave[_CMS_cnt] &= _CMS_templ;
	movf	(___CMS_CheckOnceResult@_CMS_cnt)^0100h,w
	addlw	low(456|((0x1)<<8))&0ffh
	movwf	fsr0
	movlw	low(07h)
	andwf	indf,f
	line	517
	
l16675:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 517: if(_CMS_KeyValue <= _CMS_KeySum[_CMS_cnt])
	clrc
	rlf	(___CMS_CheckOnceResult@_CMS_cnt)^0100h,w
	addlw	low(416|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___CMS_CheckOnceResult+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??___CMS_CheckOnceResult+0)+0+1
	bsf	status, 6	;RP1=1, select bank2
	movf	(___CMS_CheckOnceResult@_CMS_KeyValue+1)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	subwf	1+(??___CMS_CheckOnceResult+0)+0,w
	skipz
	goto	u9985
	bsf	status, 6	;RP1=1, select bank2
	movf	(___CMS_CheckOnceResult@_CMS_KeyValue)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	subwf	0+(??___CMS_CheckOnceResult+0)+0,w
u9985:
	skipc
	goto	u9981
	goto	u9980
u9981:
	goto	l16679
u9980:
	line	519
	
l16677:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 518: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 519: _CMS_KeyHave[_CMS_cnt] |= 0x01;
	bsf	status, 6	;RP1=1, select bank2
	movf	(___CMS_CheckOnceResult@_CMS_cnt)^0100h,w
	addlw	low(456|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	indf+(0/8),(0)&7
	line	521
	
l16679:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 520: }
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 521: _CMS_KHaveC = 0;
	bsf	status, 6	;RP1=1, select bank2
	clrf	(___CMS_CheckOnceResult@_CMS_KHaveC)^0100h
	line	522
	
l16681:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 522: _CMS_BANKRAM = 0x04,__CMS_RAMCTR = _CMS_BANKRAM;;
	movlw	low(04h)
	bcf	status, 6	;RP1=0, select bank0
	movwf	(__CMS_BANKRAM)	;volatile
	
l16683:	
	movf	(__CMS_BANKRAM),w	;volatile
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	523
	
l16685:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 523: _CMS_KHaveTemp = _CMS_KeyHave[_CMS_cnt];
	bcf	status, 5	;RP0=0, select bank2
	movf	(___CMS_CheckOnceResult@_CMS_cnt)^0100h,w
	addlw	low(456|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(___CMS_CheckOnceResult@_CMS_KHaveTemp)^0100h
	line	524
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 524: for(_CMS_templ = 0; _CMS_templ < _CMS_KeyShakeC; _CMS_templ++)
	clrf	(___CMS_CheckOnceResult@_CMS_templ)^0100h
	line	525
	
l9318:	
	line	526
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 525: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 526: if(_CMS_KHaveTemp & 0x01)
	btfss	(___CMS_CheckOnceResult@_CMS_KHaveTemp)^0100h,(0)&7
	goto	u9991
	goto	u9990
u9991:
	goto	l16693
u9990:
	line	528
	
l16691:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 527: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 528: _CMS_KHaveC++;
	incf	(___CMS_CheckOnceResult@_CMS_KHaveC)^0100h,f
	line	530
	
l16693:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 529: }
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 530: _CMS_KHaveTemp >>= 1;
	clrc
	rrf	(___CMS_CheckOnceResult@_CMS_KHaveTemp)^0100h,f
	line	524
	incf	(___CMS_CheckOnceResult@_CMS_templ)^0100h,f
	
l16695:	
	movlw	low(03h)
	subwf	(___CMS_CheckOnceResult@_CMS_templ)^0100h,w
	skipc
	goto	u10001
	goto	u10000
u10001:
	goto	l9318
u10000:
	line	532
	
l16697:	
	movlw	low(03h)
	subwf	(___CMS_CheckOnceResult@_CMS_KHaveC)^0100h,w
	skipc
	goto	u10011
	goto	u10010
u10011:
	goto	l9321
u10010:
	line	534
	
l16699:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 533: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 534: __CMS_KeyHaveDown(_CMS_cnt,_CMS_flag);
	movf	(___CMS_CheckOnceResult@_CMS_flag)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___CMS_KeyHaveDown@_CMS_flag)
	bsf	status, 6	;RP1=1, select bank2
	movf	(___CMS_CheckOnceResult@_CMS_cnt)^0100h,w
	fcall	___CMS_KeyHaveDown
	line	535
	
l16701:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 535: _CMS_BANKRAM = 0x08,__CMS_RAMCTR = _CMS_BANKRAM;;
	movlw	low(08h)
	movwf	(__CMS_BANKRAM)	;volatile
	
l16703:	
	movf	(__CMS_BANKRAM),w	;volatile
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	536
	
l16705:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 536: _CMS_KeyUpShake[_CMS_cnt] = 0;
	bcf	status, 5	;RP0=0, select bank2
	movf	(___CMS_CheckOnceResult@_CMS_cnt)^0100h,w
	addlw	low(436|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	clrf	indf
	line	537
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 537: }
	goto	l9326
	line	538
	
l9321:	
	line	540
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 538: else
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 539: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 540: if(_CMS_KeyDownF)
	bcf	status, 6	;RP1=0, select bank0
	btfss	(___CMS_CheckOnceResult@_CMS_KeyDownF/8),(___CMS_CheckOnceResult@_CMS_KeyDownF)&7
	goto	u10021
	goto	u10020
u10021:
	goto	l9326
u10020:
	line	542
	
l16707:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 541: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 542: _CMS_BANKRAM = 0x08,__CMS_RAMCTR = _CMS_BANKRAM;;
	movlw	low(08h)
	movwf	(__CMS_BANKRAM)	;volatile
	movf	(__CMS_BANKRAM),w	;volatile
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	543
	
l16709:	
	bcf	status, 5	;RP0=0, select bank2
	movf	(___CMS_CheckOnceResult@_CMS_cnt)^0100h,w
	addlw	low(436|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	incf	indf,f
	movlw	low(03h)
	subwf	(indf),w
	skipc
	goto	u10031
	goto	u10030
u10031:
	goto	l16715
u10030:
	line	545
	
l16711:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 544: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 545: _CMS_KeyUpShake[_CMS_cnt] = 0;
	movf	(___CMS_CheckOnceResult@_CMS_cnt)^0100h,w
	addlw	low(436|((0x1)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	line	546
	
l16713:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 546: __CMS_KeyOpen(_CMS_cnt,_CMS_flag);
	movf	(___CMS_CheckOnceResult@_CMS_flag)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___CMS_KeyOpen@_CMS_flag)
	bsf	status, 6	;RP1=1, select bank2
	movf	(___CMS_CheckOnceResult@_CMS_cnt)^0100h,w
	fcall	___CMS_KeyOpen
	line	547
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 547: }
	goto	l9326
	line	550
	
l16715:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 548: else
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 549: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 550: __CMS_KeyHaveDown(_CMS_cnt,_CMS_flag);
	movf	(___CMS_CheckOnceResult@_CMS_flag)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___CMS_KeyHaveDown@_CMS_flag)
	bsf	status, 6	;RP1=1, select bank2
	movf	(___CMS_CheckOnceResult@_CMS_cnt)^0100h,w
	fcall	___CMS_KeyHaveDown
	goto	l9326
	line	558
	
l16717:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 556: else
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 557: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 558: _CMS_BANKRAM = 0x10,__CMS_RAMCTR = _CMS_BANKRAM;;
	movlw	low(010h)
	bcf	status, 6	;RP1=0, select bank0
	movwf	(__CMS_BANKRAM)	;volatile
	movf	(__CMS_BANKRAM),w	;volatile
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	559
	
l16719:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 559: if(++_CMS_KeyNosieC[_CMS_cnt] >= 20)
	bcf	status, 5	;RP0=0, select bank2
	movf	(___CMS_CheckOnceResult@_CMS_cnt)^0100h,w
	addlw	low(416|((0x1)<<8))&0ffh
	movwf	fsr0
	incf	indf,f
	movlw	low(014h)
	subwf	(indf),w
	skipc
	goto	u10041
	goto	u10040
u10041:
	goto	l9326
u10040:
	line	561
	
l16721:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 560: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 561: _CMS_KeyNosieC[_CMS_cnt] = 0;
	movf	(___CMS_CheckOnceResult@_CMS_cnt)^0100h,w
	addlw	low(416|((0x1)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	line	562
	
l16723:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 562: __CMS_KeyClearOne(_CMS_cnt);
	movf	(___CMS_CheckOnceResult@_CMS_cnt)^0100h,w
	fcall	___CMS_KeyClearOne
	line	563
	
l16725:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 563: __CMS_KeyOpen(_CMS_cnt,_CMS_flag);
	bsf	status, 6	;RP1=1, select bank2
	movf	(___CMS_CheckOnceResult@_CMS_flag)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___CMS_KeyOpen@_CMS_flag)
	bsf	status, 6	;RP1=1, select bank2
	movf	(___CMS_CheckOnceResult@_CMS_cnt)^0100h,w
	fcall	___CMS_KeyOpen
	line	565
	
l9326:	
	line	566
	movlw	low(02h)
	bsf	status, 6	;RP1=1, select bank2
	incf	(___CMS_CheckOnceResult@_CMS_cnt)^0100h,f
	subwf	((___CMS_CheckOnceResult@_CMS_cnt)^0100h),w
	skipc
	goto	u10051
	goto	u10050
u10051:
	goto	l16629
u10050:
	line	567
	
l9329:	
	return
	opt stack 0
GLOBAL	__end_of___CMS_CheckOnceResult
	__end_of___CMS_CheckOnceResult:
	signat	___CMS_CheckOnceResult,89
	global	___CMS_KeyOpen

;; *************** function ___CMS_KeyOpen *****************
;; Defined at:
;;		line 272 in file "E:\WORK\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79FT73xx\C语言\标准\CMS_CheckTouch_79FT73xx_Make\CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c"
;; Parameters:    Size  Location     Type
;;  _CMS_cnt        1    wreg     unsigned char 
;;  _CMS_flag       1    7[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  _CMS_cnt        1    8[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : B00/A00
;;		On exit  : B00/800
;;		Unchanged: 800/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       1       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___CMS_CheckOnceResult
;; This function uses a non-reentrant model
;;
psect	text56,local,class=CODE,delta=2,merge=1,group=1
	line	272
global __ptext56
__ptext56:	;psect for function ___CMS_KeyOpen
psect	text56
	file	"E:\WORK\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79FT73xx\C语言\标准\CMS_CheckTouch_79FT73xx_Make\CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c"
	line	272
	global	__size_of___CMS_KeyOpen
	__size_of___CMS_KeyOpen	equ	__end_of___CMS_KeyOpen-___CMS_KeyOpen
	
___CMS_KeyOpen:	
;incstack = 0
	opt	stack 0
; Regs used in ___CMS_KeyOpen: [wreg+status,2+status,0]
;___CMS_KeyOpen@_CMS_cnt stored from wreg
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___CMS_KeyOpen@_CMS_cnt)
	line	274
	
l16217:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 274: _CMS_flag = (unsigned char)(_CMS_flag^0xff);
	movlw	low(0FFh)
	xorwf	(___CMS_KeyOpen@_CMS_flag),f
	line	275
	
l16219:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 275: if(_CMS_cnt&0x10)
	btfss	(___CMS_KeyOpen@_CMS_cnt),(4)&7
	goto	u9491
	goto	u9490
u9491:
	goto	l9259
u9490:
	line	277
	
l16221:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 276: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 277: _CMS_KeyFlag[2] &= _CMS_flag;
	movf	(___CMS_KeyOpen@_CMS_flag),w
	andwf	0+(__CMS_KeyFlag)+02h,f	;volatile
	line	278
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 278: }
	goto	l9263
	line	279
	
l9259:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 279: else if(_CMS_cnt&0x08)
	btfss	(___CMS_KeyOpen@_CMS_cnt),(3)&7
	goto	u9501
	goto	u9500
u9501:
	goto	l16225
u9500:
	line	281
	
l16223:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 280: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 281: _CMS_KeyFlag[1] &= _CMS_flag;
	movf	(___CMS_KeyOpen@_CMS_flag),w
	andwf	0+(__CMS_KeyFlag)+01h,f	;volatile
	line	282
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 282: }
	goto	l9263
	line	285
	
l16225:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 283: else
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 284: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 285: _CMS_KeyFlag[0] &= _CMS_flag;
	movf	(___CMS_KeyOpen@_CMS_flag),w
	andwf	(__CMS_KeyFlag),f	;volatile
	line	287
	
l9263:	
	return
	opt stack 0
GLOBAL	__end_of___CMS_KeyOpen
	__end_of___CMS_KeyOpen:
	signat	___CMS_KeyOpen,8313
	global	___CMS_KeyHaveDown

;; *************** function ___CMS_KeyHaveDown *****************
;; Defined at:
;;		line 296 in file "E:\WORK\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79FT73xx\C语言\标准\CMS_CheckTouch_79FT73xx_Make\CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c"
;; Parameters:    Size  Location     Type
;;  _CMS_cnt        1    wreg     unsigned char 
;;  _CMS_flag       1    7[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  _CMS_cnt        1    8[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/A00
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       1       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___CMS_CheckOnceResult
;; This function uses a non-reentrant model
;;
psect	text57,local,class=CODE,delta=2,merge=1,group=1
	line	296
global __ptext57
__ptext57:	;psect for function ___CMS_KeyHaveDown
psect	text57
	file	"E:\WORK\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79FT73xx\C语言\标准\CMS_CheckTouch_79FT73xx_Make\CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c"
	line	296
	global	__size_of___CMS_KeyHaveDown
	__size_of___CMS_KeyHaveDown	equ	__end_of___CMS_KeyHaveDown-___CMS_KeyHaveDown
	
___CMS_KeyHaveDown:	
;incstack = 0
	opt	stack 0
; Regs used in ___CMS_KeyHaveDown: [wreg+status,2+status,0]
;___CMS_KeyHaveDown@_CMS_cnt stored from wreg
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___CMS_KeyHaveDown@_CMS_cnt)
	line	298
	
l16227:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 298: _CMS_KeyCounter++;
	bsf	status, 5	;RP0=1, select bank1
	incf	(__CMS_KeyCounter)^080h,f	;volatile
	line	299
	
l16229:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 299: if(_CMS_cnt&0x10)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(___CMS_KeyHaveDown@_CMS_cnt),(4)&7
	goto	u9511
	goto	u9510
u9511:
	goto	l9266
u9510:
	line	301
	
l16231:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 300: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 301: _CMS_KeyFlag[2] |= _CMS_flag;
	movf	(___CMS_KeyHaveDown@_CMS_flag),w
	iorwf	0+(__CMS_KeyFlag)+02h,f	;volatile
	line	302
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 302: }
	goto	l9270
	line	303
	
l9266:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 303: else if(_CMS_cnt&0x08)
	btfss	(___CMS_KeyHaveDown@_CMS_cnt),(3)&7
	goto	u9521
	goto	u9520
u9521:
	goto	l16235
u9520:
	line	305
	
l16233:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 304: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 305: _CMS_KeyFlag[1] |= _CMS_flag;
	movf	(___CMS_KeyHaveDown@_CMS_flag),w
	iorwf	0+(__CMS_KeyFlag)+01h,f	;volatile
	line	306
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 306: }
	goto	l9270
	line	309
	
l16235:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 307: else
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 308: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 309: _CMS_KeyFlag[0] |= _CMS_flag;
	movf	(___CMS_KeyHaveDown@_CMS_flag),w
	iorwf	(__CMS_KeyFlag),f	;volatile
	line	311
	
l9270:	
	return
	opt stack 0
GLOBAL	__end_of___CMS_KeyHaveDown
	__end_of___CMS_KeyHaveDown:
	signat	___CMS_KeyHaveDown,8313
	global	___CMS_KeyClearOne

;; *************** function ___CMS_KeyClearOne *****************
;; Defined at:
;;		line 319 in file "E:\WORK\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79FT73xx\C语言\标准\CMS_CheckTouch_79FT73xx_Make\CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c"
;; Parameters:    Size  Location     Type
;;  _CMS_cnt        1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  _CMS_cnt        1    9[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : B00/800
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       2       0       0
;;      Totals:         0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___CMS_KeyStopClear
;;		___CMS_CheckOnceResult
;; This function uses a non-reentrant model
;;
psect	text58,local,class=CODE,delta=2,merge=1,group=1
	line	319
global __ptext58
__ptext58:	;psect for function ___CMS_KeyClearOne
psect	text58
	file	"E:\WORK\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79FT73xx\C语言\标准\CMS_CheckTouch_79FT73xx_Make\CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c"
	line	319
	global	__size_of___CMS_KeyClearOne
	__size_of___CMS_KeyClearOne	equ	__end_of___CMS_KeyClearOne-___CMS_KeyClearOne
	
___CMS_KeyClearOne:	
;incstack = 0
	opt	stack 0
; Regs used in ___CMS_KeyClearOne: [wreg-fsr0h+status,2+status,0]
;___CMS_KeyClearOne@_CMS_cnt stored from wreg
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___CMS_KeyClearOne@_CMS_cnt)
	line	321
	
l16237:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 321: _CMS_BANKRAM = 0x04,__CMS_RAMCTR = _CMS_BANKRAM;;
	movlw	low(04h)
	movwf	(__CMS_BANKRAM)	;volatile
	movf	(__CMS_BANKRAM),w	;volatile
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	322
	
l16239:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 322: _CMS_KeyHave[_CMS_cnt] = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___CMS_KeyClearOne@_CMS_cnt),w
	addlw	low(456|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	clrf	indf
	line	323
	
l16241:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 323: _CMS_BANKRAM = 0x08,__CMS_RAMCTR = _CMS_BANKRAM;;
	movlw	low(08h)
	movwf	(__CMS_BANKRAM)	;volatile
	
l16243:	
	movf	(__CMS_BANKRAM),w	;volatile
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	324
	
l16245:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 324: _CMS_KeyUpShake[_CMS_cnt] = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___CMS_KeyClearOne@_CMS_cnt),w
	addlw	low(436|((0x1)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	line	325
	
l16247:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 325: _CMS_KeyBaseCnt[_CMS_cnt] = 0;
	movf	(___CMS_KeyClearOne@_CMS_cnt),w
	addlw	low(456|((0x1)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	line	326
	
l16249:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 326: _CMS_BANKRAM = 0x02,__CMS_RAMCTR = _CMS_BANKRAM;;
	movlw	low(02h)
	movwf	(__CMS_BANKRAM)	;volatile
	
l16251:	
	movf	(__CMS_BANKRAM),w	;volatile
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	327
	
l16253:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 327: _CMS_KeyOldValue[_CMS_cnt] = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrc
	rlf	(___CMS_KeyClearOne@_CMS_cnt),w
	addlw	low(416|((0x1)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	incf	fsr0,f
	clrf	indf
	line	328
	
l16255:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 328: _CMS_KeyReference[_CMS_cnt] = 2048+512+256;
	movlw	0
	movwf	(??___CMS_KeyClearOne+0)+0
	movlw	0Bh
	movwf	(??___CMS_KeyClearOne+0)+0+1
	clrc
	rlf	(___CMS_KeyClearOne@_CMS_cnt),w
	addlw	low(456|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	(??___CMS_KeyClearOne+0)+0,w
	movwf	indf
	incf	fsr0,f
	movf	(??___CMS_KeyClearOne+0)+1,w
	movwf	indf
	line	329
	
l9273:	
	return
	opt stack 0
GLOBAL	__end_of___CMS_KeyClearOne
	__end_of___CMS_KeyClearOne:
	signat	___CMS_KeyClearOne,4217
	global	___CMS_CheckKeyOldValue

;; *************** function ___CMS_CheckKeyOldValue *****************
;; Defined at:
;;		line 576 in file "E:\WORK\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79FT73xx\C语言\标准\CMS_CheckTouch_79FT73xx_Make\CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  _CMS_KeyOldT    2   20[BANK0 ] unsigned int 
;;  _CMS_KeyTemp    2   18[BANK0 ] unsigned int 
;;  _CMS_KeyBase    2   16[BANK0 ] unsigned int 
;;  _CMS_KeyOneT    2   14[BANK0 ] unsigned int 
;;  _CMS_KeyBase    2   11[BANK0 ] unsigned int 
;;  _CMS_cnt        1   22[BANK0 ] unsigned char 
;;  _CMS_VolValu    1   13[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/800
;;		On exit  : B00/800
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0      12       0       0
;;      Temps:          0       2       0       0
;;      Totals:         0      14       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		___CMS_KeyIsIn
;; This function is called by:
;;		___CMS_CheckTouchKey
;; This function uses a non-reentrant model
;;
psect	text59,local,class=CODE,delta=2,merge=1,group=1
	line	576
global __ptext59
__ptext59:	;psect for function ___CMS_CheckKeyOldValue
psect	text59
	file	"E:\WORK\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79FT73xx\C语言\标准\CMS_CheckTouch_79FT73xx_Make\CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c"
	line	576
	global	__size_of___CMS_CheckKeyOldValue
	__size_of___CMS_CheckKeyOldValue	equ	__end_of___CMS_CheckKeyOldValue-___CMS_CheckKeyOldValue
	
___CMS_CheckKeyOldValue:	
;incstack = 0
	opt	stack 0
; Regs used in ___CMS_CheckKeyOldValue: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	578
	
l16727:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 578: unsigned char _CMS_cnt = 0;
	clrf	(___CMS_CheckKeyOldValue@_CMS_cnt)
	line	585
	
l16729:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 584: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 585: _CMS_BANKRAM = 0x04,__CMS_RAMCTR = _CMS_BANKRAM;;
	movlw	low(04h)
	movwf	(__CMS_BANKRAM)	;volatile
	
l16731:	
	movf	(__CMS_BANKRAM),w	;volatile
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	586
	
l16733:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 586: _CMS_KeyTemp = _CMS_KeySum[_CMS_cnt];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrc
	rlf	(___CMS_CheckKeyOldValue@_CMS_cnt),w
	addlw	low(416|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	movwf	(___CMS_CheckKeyOldValue@_CMS_KeyTemp)
	incf	fsr0,f
	movf	indf,w
	movwf	(___CMS_CheckKeyOldValue@_CMS_KeyTemp+1)
	line	587
	
l16735:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 587: _CMS_BANKRAM = 0x02,__CMS_RAMCTR = _CMS_BANKRAM;;
	movlw	low(02h)
	movwf	(__CMS_BANKRAM)	;volatile
	
l16737:	
	movf	(__CMS_BANKRAM),w	;volatile
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	588
	
l16739:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 588: _CMS_KeyOldTemp = _CMS_KeyOldValue[_CMS_cnt];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrc
	rlf	(___CMS_CheckKeyOldValue@_CMS_cnt),w
	addlw	low(416|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(___CMS_CheckKeyOldValue@_CMS_KeyOldTemp)
	incf	fsr0,f
	movf	indf,w
	movwf	(___CMS_CheckKeyOldValue@_CMS_KeyOldTemp+1)
	line	589
	
l16741:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 589: _CMS_KeyBase = _CMS_KeyReference[_CMS_cnt];
	clrc
	rlf	(___CMS_CheckKeyOldValue@_CMS_cnt),w
	addlw	low(456|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(___CMS_CheckKeyOldValue@_CMS_KeyBase)
	incf	fsr0,f
	movf	indf,w
	movwf	(___CMS_CheckKeyOldValue@_CMS_KeyBase+1)
	line	590
	
l16743:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 590: if(_CMS_KeyOldTemp >= _CMS_KeyTemp)
	movf	(___CMS_CheckKeyOldValue@_CMS_KeyTemp+1),w
	subwf	(___CMS_CheckKeyOldValue@_CMS_KeyOldTemp+1),w
	skipz
	goto	u10065
	movf	(___CMS_CheckKeyOldValue@_CMS_KeyTemp),w
	subwf	(___CMS_CheckKeyOldValue@_CMS_KeyOldTemp),w
u10065:
	skipc
	goto	u10061
	goto	u10060
u10061:
	goto	l16747
u10060:
	line	592
	
l16745:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 591: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 592: _CMS_KeyOneTemp = _CMS_KeyOldTemp - _CMS_KeyTemp;
	movf	(___CMS_CheckKeyOldValue@_CMS_KeyOldTemp+1),w
	movwf	(___CMS_CheckKeyOldValue@_CMS_KeyOneTemp+1)
	movf	(___CMS_CheckKeyOldValue@_CMS_KeyOldTemp),w
	movwf	(___CMS_CheckKeyOldValue@_CMS_KeyOneTemp)
	movf	(___CMS_CheckKeyOldValue@_CMS_KeyTemp),w
	subwf	(___CMS_CheckKeyOldValue@_CMS_KeyOneTemp),f
	movf	(___CMS_CheckKeyOldValue@_CMS_KeyTemp+1),w
	skipc
	decf	(___CMS_CheckKeyOldValue@_CMS_KeyOneTemp+1),f
	subwf	(___CMS_CheckKeyOldValue@_CMS_KeyOneTemp+1),f
	line	593
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 593: }
	goto	l9334
	line	596
	
l16747:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 594: else
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 595: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 596: _CMS_KeyOneTemp = _CMS_KeyTemp - _CMS_KeyOldTemp;
	movf	(___CMS_CheckKeyOldValue@_CMS_KeyTemp+1),w
	movwf	(___CMS_CheckKeyOldValue@_CMS_KeyOneTemp+1)
	movf	(___CMS_CheckKeyOldValue@_CMS_KeyTemp),w
	movwf	(___CMS_CheckKeyOldValue@_CMS_KeyOneTemp)
	movf	(___CMS_CheckKeyOldValue@_CMS_KeyOldTemp),w
	subwf	(___CMS_CheckKeyOldValue@_CMS_KeyOneTemp),f
	movf	(___CMS_CheckKeyOldValue@_CMS_KeyOldTemp+1),w
	skipc
	decf	(___CMS_CheckKeyOldValue@_CMS_KeyOneTemp+1),f
	subwf	(___CMS_CheckKeyOldValue@_CMS_KeyOneTemp+1),f
	line	597
	
l9334:	
	line	598
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 597: }
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 598: if(_CMS_KeyBase >= 2048+512+256)
	movlw	0Bh
	subwf	(___CMS_CheckKeyOldValue@_CMS_KeyBase+1),w
	movlw	0
	skipnz
	subwf	(___CMS_CheckKeyOldValue@_CMS_KeyBase),w
	skipc
	goto	u10071
	goto	u10070
u10071:
	goto	l16751
u10070:
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\Touch_Kscan_Library.h"
	line	96
	
l16749:	
	movlw	low(069h)
	movwf	(___CMS_CheckKeyOldValue@_CMS_VolValueOne)
	file	"E:\WORK\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79FT73xx\C语言\标准\CMS_CheckTouch_79FT73xx_Make\CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c"
	line	601
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 601: _CMS_KeyBaseLV = 6;
	movlw	06h
	movwf	(___CMS_CheckKeyOldValue@_CMS_KeyBaseLV)
	clrf	(___CMS_CheckKeyOldValue@_CMS_KeyBaseLV+1)
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\Touch_Kscan_Library.h"
	line	602
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 602: }
	goto	l9336
	file	"E:\WORK\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79FT73xx\C语言\标准\CMS_CheckTouch_79FT73xx_Make\CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c"
	line	603
	
l16751:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 603: else if(0 == _CMS_KeyBase)
	movf	((___CMS_CheckKeyOldValue@_CMS_KeyBase)),w
iorwf	((___CMS_CheckKeyOldValue@_CMS_KeyBase+1)),w
	btfss	status,2
	goto	u10081
	goto	u10080
u10081:
	goto	l16755
u10080:
	goto	l16749
	line	610
	
l16755:	
	movlw	low(023h)
	movwf	(___CMS_CheckKeyOldValue@_CMS_VolValueOne)
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\Touch_Kscan_Library.h"
	line	98
	movlw	0Dh
	movwf	(___CMS_CheckKeyOldValue@_CMS_KeyBaseLV)
	clrf	(___CMS_CheckKeyOldValue@_CMS_KeyBaseLV+1)
	file	"E:\WORK\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79FT73xx\C语言\标准\CMS_CheckTouch_79FT73xx_Make\CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c"
	line	612
	
l9336:	
	line	614
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 612: }
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 614: _CMS_BANKRAM = 0x02,__CMS_RAMCTR = _CMS_BANKRAM;;
	movlw	low(02h)
	movwf	(__CMS_BANKRAM)	;volatile
	movf	(__CMS_BANKRAM),w	;volatile
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	615
	
l16757:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 615: _CMS_KeyOldValue[_CMS_cnt] = _CMS_KeyTemp;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrc
	rlf	(___CMS_CheckKeyOldValue@_CMS_cnt),w
	addlw	low(416|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	(___CMS_CheckKeyOldValue@_CMS_KeyTemp),w
	movwf	indf
	incf	fsr0,f
	movf	(___CMS_CheckKeyOldValue@_CMS_KeyTemp+1),w
	movwf	indf
	line	616
	
l16759:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 616: if(!__CMS_KeyIsIn(_CMS_cnt))
	movf	(___CMS_CheckKeyOldValue@_CMS_cnt),w
	fcall	___CMS_KeyIsIn
	xorlw	0
	skipz
	goto	u10091
	goto	u10090
u10091:
	goto	l16773
u10090:
	line	618
	
l16761:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 617: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 618: if(_CMS_KeyOneTemp <= _CMS_VolValueOne)
	movf	(___CMS_CheckKeyOldValue@_CMS_VolValueOne),w
	movwf	(??___CMS_CheckKeyOldValue+0)+0
	clrf	(??___CMS_CheckKeyOldValue+0)+0+1
	movf	(___CMS_CheckKeyOldValue@_CMS_KeyOneTemp+1),w
	subwf	1+(??___CMS_CheckKeyOldValue+0)+0,w
	skipz
	goto	u10105
	movf	(___CMS_CheckKeyOldValue@_CMS_KeyOneTemp),w
	subwf	0+(??___CMS_CheckKeyOldValue+0)+0,w
u10105:
	skipc
	goto	u10101
	goto	u10100
u10101:
	goto	l16773
u10100:
	line	620
	
l16763:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 619: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 620: _CMS_BANKRAM = 0x08,__CMS_RAMCTR = _CMS_BANKRAM;;
	movlw	low(08h)
	movwf	(__CMS_BANKRAM)	;volatile
	movf	(__CMS_BANKRAM),w	;volatile
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	621
	
l16765:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 621: if(++_CMS_KeyBaseCnt[_CMS_cnt] >= _CMS_KeyBaseLV)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___CMS_CheckKeyOldValue@_CMS_cnt),w
	addlw	low(456|((0x1)<<8))&0ffh
	movwf	fsr0
	incf	indf,f
	movf	(indf),w
	movwf	(??___CMS_CheckKeyOldValue+0)+0
	clrf	(??___CMS_CheckKeyOldValue+0)+0+1
	movf	(___CMS_CheckKeyOldValue@_CMS_KeyBaseLV+1),w
	subwf	1+(??___CMS_CheckKeyOldValue+0)+0,w
	skipz
	goto	u10115
	movf	(___CMS_CheckKeyOldValue@_CMS_KeyBaseLV),w
	subwf	0+(??___CMS_CheckKeyOldValue+0)+0,w
u10115:
	skipc
	goto	u10111
	goto	u10110
u10111:
	goto	l16777
u10110:
	line	623
	
l16767:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 622: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 623: _CMS_KeyBaseCnt[_CMS_cnt] = 0;
	movf	(___CMS_CheckKeyOldValue@_CMS_cnt),w
	addlw	low(456|((0x1)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	line	624
	
l16769:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 624: _CMS_BANKRAM = 0x02,__CMS_RAMCTR = _CMS_BANKRAM;;
	movlw	low(02h)
	movwf	(__CMS_BANKRAM)	;volatile
	
l16771:	
	movf	(__CMS_BANKRAM),w	;volatile
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	625
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 625: _CMS_KeyReference[_CMS_cnt] = _CMS_KeyOldTemp;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrc
	rlf	(___CMS_CheckKeyOldValue@_CMS_cnt),w
	addlw	low(456|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	(___CMS_CheckKeyOldValue@_CMS_KeyOldTemp),w
	movwf	indf
	incf	fsr0,f
	movf	(___CMS_CheckKeyOldValue@_CMS_KeyOldTemp+1),w
	movwf	indf
	goto	l16777
	line	630
	
l16773:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 628: }
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 629: }
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 630: _CMS_BANKRAM = 0x08,__CMS_RAMCTR = _CMS_BANKRAM;;
	movlw	low(08h)
	movwf	(__CMS_BANKRAM)	;volatile
	movf	(__CMS_BANKRAM),w	;volatile
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	631
	
l16775:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 631: _CMS_KeyBaseCnt[_CMS_cnt] = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___CMS_CheckKeyOldValue@_CMS_cnt),w
	addlw	low(456|((0x1)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	line	632
	
l16777:	
	movlw	low(02h)
	incf	(___CMS_CheckKeyOldValue@_CMS_cnt),f
	subwf	((___CMS_CheckKeyOldValue@_CMS_cnt)),w
	skipc
	goto	u10121
	goto	u10120
u10121:
	goto	l16729
u10120:
	line	633
	
l9344:	
	return
	opt stack 0
GLOBAL	__end_of___CMS_CheckKeyOldValue
	__end_of___CMS_CheckKeyOldValue:
	signat	___CMS_CheckKeyOldValue,89
	global	___CMS_KeyIsIn

;; *************** function ___CMS_KeyIsIn *****************
;; Defined at:
;;		line 246 in file "E:\WORK\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79FT73xx\C语言\标准\CMS_CheckTouch_79FT73xx_Make\CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c"
;; Parameters:    Size  Location     Type
;;  _CMS_cnt        1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  _CMS_cnt        1    8[BANK0 ] unsigned char 
;;  _CMS_i          1    7[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath
;; Tracked objects:
;;		On entry : 900/A00
;;		On exit  : B00/800
;;		Unchanged: 800/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       2       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___CMS_CheckOnceResult
;;		___CMS_CheckKeyOldValue
;; This function uses a non-reentrant model
;;
psect	text60,local,class=CODE,delta=2,merge=1,group=1
	line	246
global __ptext60
__ptext60:	;psect for function ___CMS_KeyIsIn
psect	text60
	file	"E:\WORK\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79FT73xx\C语言\标准\CMS_CheckTouch_79FT73xx_Make\CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c"
	line	246
	global	__size_of___CMS_KeyIsIn
	__size_of___CMS_KeyIsIn	equ	__end_of___CMS_KeyIsIn-___CMS_KeyIsIn
	
___CMS_KeyIsIn:	
;incstack = 0
;; using string table level
	opt	stack 1
; Regs used in ___CMS_KeyIsIn: [wreg-fsr0h+status,2+status,0+pclath]
;___CMS_KeyIsIn@_CMS_cnt stored from wreg
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___CMS_KeyIsIn@_CMS_cnt)
	line	248
	
l16203:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 248: unsigned char _CMS_i = (unsigned char)(__CMS_Table_KeyFalg[(unsigned char)(_CMS_cnt&0x7)]);
	movf	(___CMS_KeyIsIn@_CMS_cnt),w
	andlw	07h
	addlw	low((((___CMS_Table_KeyFalg)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(___CMS_KeyIsIn@_CMS_i)
	line	250
	
l16205:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 250: if(_CMS_cnt&0x10)
	btfss	(___CMS_KeyIsIn@_CMS_cnt),(4)&7
	goto	u9471
	goto	u9470
u9471:
	goto	l9252
u9470:
	line	252
	
l16207:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 251: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 252: _CMS_i &= _CMS_KeyFlag[2];
	movf	0+(__CMS_KeyFlag)+02h,w	;volatile
	andwf	(___CMS_KeyIsIn@_CMS_i),f
	line	253
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 253: }
	goto	l16213
	line	254
	
l9252:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 254: else if(_CMS_cnt&0x8)
	btfss	(___CMS_KeyIsIn@_CMS_cnt),(3)&7
	goto	u9481
	goto	u9480
u9481:
	goto	l16211
u9480:
	line	256
	
l16209:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 255: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 256: _CMS_i &= _CMS_KeyFlag[1];
	movf	0+(__CMS_KeyFlag)+01h,w	;volatile
	andwf	(___CMS_KeyIsIn@_CMS_i),f
	line	257
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 257: }
	goto	l16213
	line	260
	
l16211:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 258: else
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 259: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 260: _CMS_i &= _CMS_KeyFlag[0];
	movf	(__CMS_KeyFlag),w	;volatile
	andwf	(___CMS_KeyIsIn@_CMS_i),f
	line	262
	
l16213:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 261: }
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 262: return _CMS_i;
	movf	(___CMS_KeyIsIn@_CMS_i),w
	line	263
	
l9256:	
	return
	opt stack 0
GLOBAL	__end_of___CMS_KeyIsIn
	__end_of___CMS_KeyIsIn:
	signat	___CMS_KeyIsIn,4217
	global	_UpdateTftDisplay

;; *************** function _UpdateTftDisplay *****************
;; Defined at:
;;		line 264 in file "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\UIProc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  tempr           1   18[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/200
;;		On exit  : 200/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		___bmul
;;		___lbdiv
;;		___lbmod
;;		_vHideDisplayID
;;		_vSwitchImageIcon
;;		_vSwitchTftPage
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text61,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\UIProc.c"
	line	264
global __ptext61
__ptext61:	;psect for function _UpdateTftDisplay
psect	text61
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\UIProc.c"
	line	264
	global	__size_of_UpdateTftDisplay
	__size_of_UpdateTftDisplay	equ	__end_of_UpdateTftDisplay-_UpdateTftDisplay
	
_UpdateTftDisplay:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _UpdateTftDisplay: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	267
	
l17341:	
;UIProc.c: 266: unsigned char tempr;
;UIProc.c: 267: switch (g_xTftAction)
	goto	l17577
	line	274
	
l17343:	
;UIProc.c: 274: vSwitchTftPage(4);
	movlw	low(04h)
	fcall	_vSwitchTftPage
	line	275
	
l17345:	
;UIProc.c: 275: g_xTftAction = UPDIdle;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(_g_xTftAction)^080h	;volatile
	line	276
;UIProc.c: 276: break;
	goto	l6836
	line	278
	
l17347:	
;UIProc.c: 278: vSwitchTftPage(1);
	movlw	low(01h)
	fcall	_vSwitchTftPage
	line	279
	
l17349:	
;UIProc.c: 279: g_xTftAction = SelSetItem;
	movlw	low(09h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_g_xTftAction)^080h	;volatile
	line	280
;UIProc.c: 280: break;
	goto	l6836
	line	282
	
l17351:	
;UIProc.c: 282: vSwitchTftPage(2);
	movlw	low(02h)
	fcall	_vSwitchTftPage
	line	283
	
l17353:	
;UIProc.c: 283: g_xTftAction = UpdSetVal;
	movlw	low(0Ah)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_g_xTftAction)^080h	;volatile
	line	284
;UIProc.c: 284: break;
	goto	l6836
	line	287
	
l17355:	
;UIProc.c: 287: vSwitchTftPage(3);
	movlw	low(03h)
	fcall	_vSwitchTftPage
	line	288
	
l17357:	
;UIProc.c: 288: g_xTftAction = UpdUnitIcon;
	movlw	low(06h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_g_xTftAction)^080h	;volatile
	line	289
;UIProc.c: 289: break;
	goto	l6836
	line	271
	
l17361:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(_g_eSysStatus),w	;volatile
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 1 to 5
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           26    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l17343
	xorlw	3^1	; case 3
	skipnz
	goto	l17355
	xorlw	4^3	; case 4
	skipnz
	goto	l17347
	xorlw	5^4	; case 5
	skipnz
	goto	l17351
	goto	l17355
	opt asmopt_pop

	line	295
	
l17363:	
;UIProc.c: 294: {
;UIProc.c: 295: g_xTftAction = UPDIdle;
	clrf	(_g_xTftAction)^080h	;volatile
	line	296
	
l17365:	
;UIProc.c: 296: if((g_eSysStatus == HEATING)||(g_eSysStatus == WAITING))
		movlw	3
	bcf	status, 5	;RP0=0, select bank0
	xorwf	((_g_eSysStatus)),w	;volatile
	btfsc	status,2
	goto	u11161
	goto	u11160
u11161:
	goto	l6807
u11160:
	
l17367:	
		movlw	2
	xorwf	((_g_eSysStatus)),w	;volatile
	btfss	status,2
	goto	u11171
	goto	u11170
u11171:
	goto	l6836
u11170:
	
l6807:	
	line	298
;UIProc.c: 297: {
;UIProc.c: 298: if(g_xSysSetting.TemprUnit)
	btfss	0+(_g_xSysSetting)+03h,0	;volatile
	goto	u11181
	goto	u11180
u11181:
	goto	l17379
u11180:
	line	301
	
l17369:	
;UIProc.c: 299: {
;UIProc.c: 301: tempr = g_xTftContent.setT/100;
	movlw	low(064h)
	movwf	(___lbdiv@divisor)
	movf	0+(_g_xTftContent)+03h,w	;volatile
	fcall	___lbdiv
	movwf	(UpdateTftDisplay@tempr)
	line	302
	
l17371:	
;UIProc.c: 302: vSwitchImageIcon(1, 22+tempr);
	movf	(UpdateTftDisplay@tempr),w
	addlw	016h
	movwf	(vSwitchImageIcon@icon)
	movlw	low(01h)
	fcall	_vSwitchImageIcon
	line	304
	
l17373:	
;UIProc.c: 304: tempr = (g_xTftContent.setT%100)/10;
	movlw	low(0Ah)
	movwf	(___lbdiv@divisor)
	movlw	low(064h)
	movwf	(___lbmod@divisor)
	movf	0+(_g_xTftContent)+03h,w	;volatile
	fcall	___lbmod
	fcall	___lbdiv
	movwf	(UpdateTftDisplay@tempr)
	line	305
;UIProc.c: 305: vSwitchImageIcon(2, 22+tempr);
	movf	(UpdateTftDisplay@tempr),w
	addlw	016h
	movwf	(vSwitchImageIcon@icon)
	movlw	low(02h)
	fcall	_vSwitchImageIcon
	line	307
	
l17375:	
;UIProc.c: 307: tempr = g_xTftContent.setT%10;
	movlw	low(0Ah)
	movwf	(___lbmod@divisor)
	movf	0+(_g_xTftContent)+03h,w	;volatile
	fcall	___lbmod
	movwf	(UpdateTftDisplay@tempr)
	line	308
	
l17377:	
;UIProc.c: 308: vSwitchImageIcon(3, 22+tempr);
	movf	(UpdateTftDisplay@tempr),w
	addlw	016h
	movwf	(vSwitchImageIcon@icon)
	movlw	low(03h)
	fcall	_vSwitchImageIcon
	line	309
;UIProc.c: 309: }
	goto	l6836
	line	313
	
l17379:	
;UIProc.c: 310: else
;UIProc.c: 311: {
;UIProc.c: 313: tempr = 5*(g_xTftContent.setT%2);
	movlw	low(05h)
	movwf	(___bmul@multiplicand)
	movf	0+(_g_xTftContent)+03h,w	;volatile
	andlw	01h
	fcall	___bmul
	movwf	(UpdateTftDisplay@tempr)
	line	314
	
l17381:	
;UIProc.c: 314: vSwitchImageIcon(3, 32+tempr);
	movf	(UpdateTftDisplay@tempr),w
	addlw	020h
	movwf	(vSwitchImageIcon@icon)
	movlw	low(03h)
	fcall	_vSwitchImageIcon
	line	316
	
l17383:	
;UIProc.c: 316: tempr = (g_xTftContent.setT/2)%10;
	movlw	low(0Ah)
	movwf	(___lbmod@divisor)
	clrc
	rrf	0+(_g_xTftContent)+03h,w	;volatile
	fcall	___lbmod
	movwf	(UpdateTftDisplay@tempr)
	line	317
;UIProc.c: 317: vSwitchImageIcon(2, 22+tempr);
	movf	(UpdateTftDisplay@tempr),w
	addlw	016h
	movwf	(vSwitchImageIcon@icon)
	movlw	low(02h)
	fcall	_vSwitchImageIcon
	line	319
	
l17385:	
;UIProc.c: 319: tempr = (g_xTftContent.setT%200)/20;
	movlw	low(014h)
	movwf	(___lbdiv@divisor)
	movlw	low(0C8h)
	movwf	(___lbmod@divisor)
	movf	0+(_g_xTftContent)+03h,w	;volatile
	fcall	___lbmod
	fcall	___lbdiv
	movwf	(UpdateTftDisplay@tempr)
	line	320
	
l17387:	
;UIProc.c: 320: vSwitchImageIcon(1, 22+tempr);
	movf	(UpdateTftDisplay@tempr),w
	addlw	016h
	movwf	(vSwitchImageIcon@icon)
	movlw	low(01h)
	fcall	_vSwitchImageIcon
	goto	l6836
	line	327
	
l17389:	
;UIProc.c: 326: {
;UIProc.c: 327: g_xTftAction = UPDIdle;
	clrf	(_g_xTftAction)^080h	;volatile
	line	328
	
l17391:	
;UIProc.c: 328: if((g_eSysStatus == HEATING)||(g_eSysStatus == WAITING))
		movlw	3
	bcf	status, 5	;RP0=0, select bank0
	xorwf	((_g_eSysStatus)),w	;volatile
	btfsc	status,2
	goto	u11191
	goto	u11190
u11191:
	goto	l6813
u11190:
	
l17393:	
		movlw	2
	xorwf	((_g_eSysStatus)),w	;volatile
	btfss	status,2
	goto	u11201
	goto	u11200
u11201:
	goto	l6836
u11200:
	
l6813:	
	line	330
;UIProc.c: 329: {
;UIProc.c: 330: if(g_xSysSetting.TemprUnit)
	btfss	0+(_g_xSysSetting)+03h,0	;volatile
	goto	u11211
	goto	u11210
u11211:
	goto	l17405
u11210:
	line	333
	
l17395:	
;UIProc.c: 331: {
;UIProc.c: 333: tempr = g_xTftContent.curT/100;
	movlw	low(064h)
	movwf	(___lbdiv@divisor)
	movf	0+(_g_xTftContent)+04h,w	;volatile
	fcall	___lbdiv
	movwf	(UpdateTftDisplay@tempr)
	line	334
	
l17397:	
;UIProc.c: 334: vSwitchImageIcon(4, 42+tempr);
	movf	(UpdateTftDisplay@tempr),w
	addlw	02Ah
	movwf	(vSwitchImageIcon@icon)
	movlw	low(04h)
	fcall	_vSwitchImageIcon
	line	336
	
l17399:	
;UIProc.c: 336: tempr = (g_xTftContent.curT%100)/10;
	movlw	low(0Ah)
	movwf	(___lbdiv@divisor)
	movlw	low(064h)
	movwf	(___lbmod@divisor)
	movf	0+(_g_xTftContent)+04h,w	;volatile
	fcall	___lbmod
	fcall	___lbdiv
	movwf	(UpdateTftDisplay@tempr)
	line	337
;UIProc.c: 337: vSwitchImageIcon(5, 42+tempr);
	movf	(UpdateTftDisplay@tempr),w
	addlw	02Ah
	movwf	(vSwitchImageIcon@icon)
	movlw	low(05h)
	fcall	_vSwitchImageIcon
	line	339
	
l17401:	
;UIProc.c: 339: tempr = g_xTftContent.curT%10;
	movlw	low(0Ah)
	movwf	(___lbmod@divisor)
	movf	0+(_g_xTftContent)+04h,w	;volatile
	fcall	___lbmod
	movwf	(UpdateTftDisplay@tempr)
	line	340
	
l17403:	
;UIProc.c: 340: vSwitchImageIcon(6, 42+tempr);
	movf	(UpdateTftDisplay@tempr),w
	addlw	02Ah
	movwf	(vSwitchImageIcon@icon)
	movlw	low(06h)
	fcall	_vSwitchImageIcon
	line	341
;UIProc.c: 341: }
	goto	l17415
	line	345
	
l17405:	
;UIProc.c: 342: else
;UIProc.c: 343: {
;UIProc.c: 345: tempr = 5*(g_xTftContent.curT%2);
	movlw	low(05h)
	movwf	(___bmul@multiplicand)
	movf	0+(_g_xTftContent)+04h,w	;volatile
	andlw	01h
	fcall	___bmul
	movwf	(UpdateTftDisplay@tempr)
	line	346
	
l17407:	
;UIProc.c: 346: vSwitchImageIcon(6, 52+tempr);
	movf	(UpdateTftDisplay@tempr),w
	addlw	034h
	movwf	(vSwitchImageIcon@icon)
	movlw	low(06h)
	fcall	_vSwitchImageIcon
	line	348
	
l17409:	
;UIProc.c: 348: tempr = (g_xTftContent.curT/2)%10;
	movlw	low(0Ah)
	movwf	(___lbmod@divisor)
	clrc
	rrf	0+(_g_xTftContent)+04h,w	;volatile
	fcall	___lbmod
	movwf	(UpdateTftDisplay@tempr)
	line	349
;UIProc.c: 349: vSwitchImageIcon(5, 42+tempr);
	movf	(UpdateTftDisplay@tempr),w
	addlw	02Ah
	movwf	(vSwitchImageIcon@icon)
	movlw	low(05h)
	fcall	_vSwitchImageIcon
	line	351
	
l17411:	
;UIProc.c: 351: tempr = (g_xTftContent.curT%200)/20;
	movlw	low(014h)
	movwf	(___lbdiv@divisor)
	movlw	low(0C8h)
	movwf	(___lbmod@divisor)
	movf	0+(_g_xTftContent)+04h,w	;volatile
	fcall	___lbmod
	fcall	___lbdiv
	movwf	(UpdateTftDisplay@tempr)
	line	352
	
l17413:	
;UIProc.c: 352: vSwitchImageIcon(4, 42+tempr);
	movf	(UpdateTftDisplay@tempr),w
	addlw	02Ah
	movwf	(vSwitchImageIcon@icon)
	movlw	low(04h)
	fcall	_vSwitchImageIcon
	line	356
	
l17415:	
;UIProc.c: 353: }
;UIProc.c: 356: if(8<g_xTftContent.Ball)
	swapf	0+(_g_xTftContent)+02h,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_UpdateTftDisplay+0)+0
	movlw	09h
	subwf	(??_UpdateTftDisplay+0)+0,w
	skipc
	goto	u11221
	goto	u11220
u11221:
	goto	l6816
u11220:
	line	357
	
l17417:	
;UIProc.c: 357: g_xTftContent.Ball = 8;
	movf	0+(_g_xTftContent)+02h,w	;volatile
	andlw	not (((1<<4)-1)<<4)
	iorlw	(08h & ((1<<4)-1))<<4
	movwf	0+(_g_xTftContent)+02h	;volatile
	
l6816:	
	line	359
;UIProc.c: 359: if(g_eSysStatus == HEATING)
		movlw	3
	xorwf	((_g_eSysStatus)),w	;volatile
	btfss	status,2
	goto	u11231
	goto	u11230
u11231:
	goto	l17429
u11230:
	line	361
	
l17419:	
;UIProc.c: 360: {
;UIProc.c: 361: if(g_xTftContent.Ball != g_xTftContent.OldBall)
	movf	0+(_g_xTftContent)+02h,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_UpdateTftDisplay+0)+0
	swapf	0+(_g_xTftContent)+02h,w	;volatile
	andlw	(1<<4)-1
	xorwf	(??_UpdateTftDisplay+0)+0,w
	skipnz
	goto	u11241
	goto	u11240
u11241:
	goto	l17429
u11240:
	line	363
	
l17421:	
;UIProc.c: 362: {
;UIProc.c: 363: if(g_xTftContent.Ball==0)
	swapf	0+(_g_xTftContent)+02h,w	;volatile
	andlw	(1<<4)-1
	xorlw	0
	skipz
	goto	u11251
	goto	u11250
u11251:
	goto	l17425
u11250:
	line	365
	
l17423:	
;UIProc.c: 364: {
;UIProc.c: 365: vHideDisplayID(15,1);
	clrf	(vHideDisplayID@hd)
	incf	(vHideDisplayID@hd),f
	movlw	low(0Fh)
	fcall	_vHideDisplayID
	line	366
;UIProc.c: 366: }
	goto	l17427
	line	369
	
l17425:	
;UIProc.c: 367: else
;UIProc.c: 368: {
;UIProc.c: 369: vHideDisplayID(15,0);
	clrf	(vHideDisplayID@hd)
	movlw	low(0Fh)
	fcall	_vHideDisplayID
	line	370
;UIProc.c: 370: vSwitchImageIcon(15, 70-g_xTftContent.Ball);
	swapf	0+(_g_xTftContent)+02h,w	;volatile
	andlw	(1<<4)-1
	sublw	046h
	movwf	(vSwitchImageIcon@icon)
	movlw	low(0Fh)
	fcall	_vSwitchImageIcon
	line	372
	
l17427:	
;UIProc.c: 371: }
;UIProc.c: 372: g_xTftContent.OldBall = g_xTftContent.Ball;
	swapf	0+(_g_xTftContent)+02h,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_UpdateTftDisplay+0)+0
	movf	0+(_g_xTftContent)+02h,w	;volatile
	xorwf	(??_UpdateTftDisplay+0)+0,w
	andlw	not ((1<<4)-1)
	xorwf	(??_UpdateTftDisplay+0)+0,w
	movwf	0+(_g_xTftContent)+02h	;volatile
	line	376
	
l17429:	
;UIProc.c: 373: }
;UIProc.c: 374: }
;UIProc.c: 376: if(g_xTftContent.BtOnOff != g_xTftContent.OldBtOnOff)
	btfsc	(_g_xTftContent),2	;volatile
	goto	u11261
	goto	u11260
u11261:
	movlw	1
	goto	u11262
u11260:
	movlw	0
u11262:
	movwf	(??_UpdateTftDisplay+0)+0
	btfsc	(_g_xTftContent),3	;volatile
	goto	u11271
	goto	u11270
u11271:
	movlw	1
	goto	u11272
u11270:
	movlw	0
u11272:
	xorwf	(??_UpdateTftDisplay+0)+0,w
	skipnz
	goto	u11281
	goto	u11280
u11281:
	goto	l6836
u11280:
	line	378
	
l17431:	
;UIProc.c: 377: {
;UIProc.c: 378: vHideDisplayID(13, g_xTftContent.BtOnOff);
	movlw	0
	btfsc	(_g_xTftContent),3	;volatile
	movlw	1
	movwf	(vHideDisplayID@hd)
	movlw	low(0Dh)
	fcall	_vHideDisplayID
	line	379
	
l17433:	
;UIProc.c: 379: g_xTftContent.OldBtOnOff = g_xTftContent.BtOnOff;
	btfsc	(_g_xTftContent),3	;volatile
	goto	u11291
	goto	u11290
	
u11291:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(_g_xTftContent),2	;volatile
	goto	u11304
u11290:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(_g_xTftContent),2	;volatile
u11304:
	goto	l6836
	line	386
	
l17435:	
;UIProc.c: 385: {
;UIProc.c: 386: g_xTftAction = UPDIdle;
	clrf	(_g_xTftAction)^080h	;volatile
	line	387
	
l17437:	
;UIProc.c: 387: if((g_eSysStatus == HEATING)||(g_eSysStatus == WAITING))
		movlw	3
	bcf	status, 5	;RP0=0, select bank0
	xorwf	((_g_eSysStatus)),w	;volatile
	btfsc	status,2
	goto	u11311
	goto	u11310
u11311:
	goto	l17441
u11310:
	
l17439:	
		movlw	2
	xorwf	((_g_eSysStatus)),w	;volatile
	btfss	status,2
	goto	u11321
	goto	u11320
u11321:
	goto	l6836
u11320:
	line	389
	
l17441:	
;UIProc.c: 388: {
;UIProc.c: 389: vHideDisplayID(13, g_xTftContent.BtOnOff);
	movlw	0
	btfsc	(_g_xTftContent),3	;volatile
	movlw	1
	movwf	(vHideDisplayID@hd)
	movlw	low(0Dh)
	fcall	_vHideDisplayID
	goto	l6836
	line	395
	
l17443:	
;UIProc.c: 394: {
;UIProc.c: 395: g_xTftAction = UPDIdle;
	clrf	(_g_xTftAction)^080h	;volatile
	line	396
	
l17445:	
;UIProc.c: 396: if((g_eSysStatus == HEATING)||(g_eSysStatus == WAITING))
		movlw	3
	bcf	status, 5	;RP0=0, select bank0
	xorwf	((_g_eSysStatus)),w	;volatile
	btfsc	status,2
	goto	u11331
	goto	u11330
u11331:
	goto	l17449
u11330:
	
l17447:	
		movlw	2
	xorwf	((_g_eSysStatus)),w	;volatile
	btfss	status,2
	goto	u11341
	goto	u11340
u11341:
	goto	l6836
u11340:
	line	398
	
l17449:	
;UIProc.c: 397: {
;UIProc.c: 398: vHideDisplayID(11, g_xTftContent.KWOnOff);
	movlw	0
	btfsc	(_g_xTftContent),4	;volatile
	movlw	1
	movwf	(vHideDisplayID@hd)
	movlw	low(0Bh)
	fcall	_vHideDisplayID
	goto	l6836
	line	404
	
l17451:	
;UIProc.c: 403: {
;UIProc.c: 404: g_xTftAction = UPDIdle;
	clrf	(_g_xTftAction)^080h	;volatile
	line	405
	
l17453:	
;UIProc.c: 405: if(g_eSysStatus == WAITING)
		movlw	2
	bcf	status, 5	;RP0=0, select bank0
	xorwf	((_g_eSysStatus)),w	;volatile
	btfss	status,2
	goto	u11351
	goto	u11350
u11351:
	goto	l17457
u11350:
	line	407
	
l17455:	
;UIProc.c: 406: {
;UIProc.c: 407: vHideDisplayID(9, 1);
	clrf	(vHideDisplayID@hd)
	incf	(vHideDisplayID@hd),f
	movlw	low(09h)
	fcall	_vHideDisplayID
	line	408
;UIProc.c: 408: vHideDisplayID(15, 0);
	clrf	(vHideDisplayID@hd)
	movlw	low(0Fh)
	fcall	_vHideDisplayID
	line	409
;UIProc.c: 409: vSwitchImageIcon(15, 70-8);
	movlw	low(03Eh)
	movwf	(vSwitchImageIcon@icon)
	movlw	low(0Fh)
	fcall	_vSwitchImageIcon
	line	410
;UIProc.c: 410: }
	goto	l6836
	line	411
	
l17457:	
;UIProc.c: 411: else if(g_eSysStatus == HEATING)
		movlw	3
	xorwf	((_g_eSysStatus)),w	;volatile
	btfss	status,2
	goto	u11361
	goto	u11360
u11361:
	goto	l6836
u11360:
	line	413
	
l17459:	
;UIProc.c: 412: {
;UIProc.c: 413: vHideDisplayID(9, 0);
	clrf	(vHideDisplayID@hd)
	movlw	low(09h)
	fcall	_vHideDisplayID
	goto	l6836
	line	419
	
l17461:	
;UIProc.c: 418: {
;UIProc.c: 419: g_xTftAction = UPDIdle;
	clrf	(_g_xTftAction)^080h	;volatile
	line	420
	
l17463:	
;UIProc.c: 420: if(g_eSysStatus != SETTING1)
		movlw	4
	bcf	status, 5	;RP0=0, select bank0
	xorwf	((_g_eSysStatus)),w	;volatile
	btfsc	status,2
	goto	u11371
	goto	u11370
u11371:
	goto	l17467
u11370:
	goto	l6836
	line	423
	
l17467:	
;UIProc.c: 423: vSwitchImageIcon(1, 6+g_xTftContent.sItem );
	movf	0+(_g_xTftContent)+01h,w	;volatile
	andlw	(1<<3)-1
	addlw	06h
	movwf	(vSwitchImageIcon@icon)
	movlw	low(01h)
	fcall	_vSwitchImageIcon
	line	424
;UIProc.c: 424: break;
	goto	l6836
	line	428
	
l17469:	
;UIProc.c: 427: {
;UIProc.c: 428: g_xTftAction = UPDIdle;
	clrf	(_g_xTftAction)^080h	;volatile
	line	429
	
l17471:	
;UIProc.c: 429: if(g_eSysStatus != SETTING2)
		movlw	5
	bcf	status, 5	;RP0=0, select bank0
	xorwf	((_g_eSysStatus)),w	;volatile
	btfsc	status,2
	goto	u11381
	goto	u11380
u11381:
	goto	l17475
u11380:
	goto	l6836
	line	433
	
l17475:	
;UIProc.c: 433: vSwitchImageIcon(1, 6+g_xTftContent.sItem );
	movf	0+(_g_xTftContent)+01h,w	;volatile
	andlw	(1<<3)-1
	addlw	06h
	movwf	(vSwitchImageIcon@icon)
	movlw	low(01h)
	fcall	_vSwitchImageIcon
	line	435
;UIProc.c: 435: switch(g_xTftContent.sItem)
	goto	l17501
	line	440
	
l17477:	
;UIProc.c: 438: case 3:
;UIProc.c: 439: case 4:
;UIProc.c: 440: if(g_xTftContent.sVal==1)
	rrf	0+(_g_xTftContent)+01h,w	;volatile
	movwf	(??_UpdateTftDisplay+0)+0
	rrf	(??_UpdateTftDisplay+0)+0,f
	rrf	(??_UpdateTftDisplay+0)+0,w
	andlw	(1<<2)-1
	xorlw	01h
	skipz
	goto	u11391
	goto	u11390
u11391:
	goto	l17481
u11390:
	line	441
	
l17479:	
;UIProc.c: 441: vSwitchImageIcon(2,14);
	movlw	low(0Eh)
	movwf	(vSwitchImageIcon@icon)
	movlw	low(02h)
	fcall	_vSwitchImageIcon
	goto	l6836
	line	443
	
l17481:	
;UIProc.c: 442: else
;UIProc.c: 443: vSwitchImageIcon(2,11);
	movlw	low(0Bh)
	movwf	(vSwitchImageIcon@icon)
	movlw	low(02h)
	fcall	_vSwitchImageIcon
	goto	l6836
	line	446
	
l17483:	
;UIProc.c: 446: if(g_xTftContent.sVal==1)
	rrf	0+(_g_xTftContent)+01h,w	;volatile
	movwf	(??_UpdateTftDisplay+0)+0
	rrf	(??_UpdateTftDisplay+0)+0,f
	rrf	(??_UpdateTftDisplay+0)+0,w
	andlw	(1<<2)-1
	xorlw	01h
	skipz
	goto	u11401
	goto	u11400
u11401:
	goto	l17487
u11400:
	line	447
	
l17485:	
;UIProc.c: 447: vSwitchImageIcon(2,16);
	movlw	low(010h)
	movwf	(vSwitchImageIcon@icon)
	movlw	low(02h)
	fcall	_vSwitchImageIcon
	goto	l6836
	line	449
	
l17487:	
;UIProc.c: 448: else
;UIProc.c: 449: vSwitchImageIcon(2,15);
	movlw	low(0Fh)
	movwf	(vSwitchImageIcon@icon)
	movlw	low(02h)
	fcall	_vSwitchImageIcon
	goto	l6836
	line	452
	
l17489:	
;UIProc.c: 452: if(g_xTftContent.sVal==1)
	rrf	0+(_g_xTftContent)+01h,w	;volatile
	movwf	(??_UpdateTftDisplay+0)+0
	rrf	(??_UpdateTftDisplay+0)+0,f
	rrf	(??_UpdateTftDisplay+0)+0,w
	andlw	(1<<2)-1
	xorlw	01h
	skipz
	goto	u11411
	goto	u11410
u11411:
	goto	l17493
u11410:
	line	453
	
l17491:	
;UIProc.c: 453: vSwitchImageIcon(2,12);
	movlw	low(0Ch)
	movwf	(vSwitchImageIcon@icon)
	movlw	low(02h)
	fcall	_vSwitchImageIcon
	goto	l6836
	line	454
	
l17493:	
;UIProc.c: 454: else if(g_xTftContent.sVal==2)
	rrf	0+(_g_xTftContent)+01h,w	;volatile
	movwf	(??_UpdateTftDisplay+0)+0
	rrf	(??_UpdateTftDisplay+0)+0,f
	rrf	(??_UpdateTftDisplay+0)+0,w
	andlw	(1<<2)-1
	xorlw	02h
	skipz
	goto	u11421
	goto	u11420
u11421:
	goto	l17497
u11420:
	line	455
	
l17495:	
;UIProc.c: 455: vSwitchImageIcon(2,13);
	movlw	low(0Dh)
	movwf	(vSwitchImageIcon@icon)
	movlw	low(02h)
	fcall	_vSwitchImageIcon
	goto	l6836
	line	457
	
l17497:	
;UIProc.c: 456: else
;UIProc.c: 457: vSwitchImageIcon(2,11);
	movlw	low(0Bh)
	movwf	(vSwitchImageIcon@icon)
	movlw	low(02h)
	fcall	_vSwitchImageIcon
	goto	l6836
	line	435
	
l17501:	
	movf	0+(_g_xTftContent)+01h,w	;volatile
	andlw	(1<<3)-1
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 1 to 4
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           23    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l17477
	xorlw	2^1	; case 2
	skipnz
	goto	l17483
	xorlw	3^2	; case 3
	skipnz
	goto	l17477
	xorlw	4^3	; case 4
	skipnz
	goto	l17477
	goto	l17489
	opt asmopt_pop

	line	464
	
l17503:	
;UIProc.c: 463: {
;UIProc.c: 464: g_xTftAction = UPDIdle;
	clrf	(_g_xTftAction)^080h	;volatile
	line	465
	
l17505:	
;UIProc.c: 465: if(g_eSysStatus != SLEEPING)
	bcf	status, 5	;RP0=0, select bank0
		decf	((_g_eSysStatus)),w	;volatile
	btfsc	status,2
	goto	u11431
	goto	u11430
u11431:
	goto	l17509
u11430:
	goto	l6836
	line	467
	
l17509:	
;UIProc.c: 467: if(3<g_xTftContent.Sleep)
	movf	(_g_xTftContent),w	;volatile
	andlw	(1<<2)-1
	movwf	(??_UpdateTftDisplay+0)+0
	movlw	04h
	subwf	(??_UpdateTftDisplay+0)+0,w
	skipc
	goto	u11441
	goto	u11440
u11441:
	goto	l17513
u11440:
	line	468
	
l17511:	
;UIProc.c: 468: g_xTftContent.Sleep=0;
	movlw	((0 & ((1<<2)-1))<<0)|not (((1<<2)-1)<<0)
	andwf	(_g_xTftContent),f	;volatile
	line	469
	
l17513:	
;UIProc.c: 469: vSwitchImageIcon(1, 2+g_xTftContent.Sleep);
	movf	(_g_xTftContent),w	;volatile
	andlw	(1<<2)-1
	addlw	02h
	movwf	(vSwitchImageIcon@icon)
	movlw	low(01h)
	fcall	_vSwitchImageIcon
	line	470
;UIProc.c: 470: break;
	goto	l6836
	line	474
	
l17515:	
;UIProc.c: 473: {
;UIProc.c: 474: g_xTftAction = UPDIdle;
	clrf	(_g_xTftAction)^080h	;volatile
	line	477
	
l17517:	
;UIProc.c: 477: if(g_xSysSetting.TemprUnit)
	bcf	status, 5	;RP0=0, select bank0
	btfss	0+(_g_xSysSetting)+03h,0	;volatile
	goto	u11451
	goto	u11450
u11451:
	goto	l17521
u11450:
	line	478
	
l17519:	
;UIProc.c: 478: vSwitchImageIcon(12,74);
	movlw	low(04Ah)
	movwf	(vSwitchImageIcon@icon)
	movlw	low(0Ch)
	fcall	_vSwitchImageIcon
	goto	l6859
	line	480
	
l17521:	
;UIProc.c: 479: else
;UIProc.c: 480: vSwitchImageIcon(12,73);
	movlw	low(049h)
	movwf	(vSwitchImageIcon@icon)
	movlw	low(0Ch)
	fcall	_vSwitchImageIcon
	
l6859:	
	line	483
;UIProc.c: 483: vHideDisplayID(13, g_xTftContent.BtOnOff);
	movlw	0
	btfsc	(_g_xTftContent),3	;volatile
	movlw	1
	movwf	(vHideDisplayID@hd)
	movlw	low(0Dh)
	fcall	_vHideDisplayID
	line	484
;UIProc.c: 484: vHideDisplayID(11, g_xTftContent.KWOnOff);
	movlw	0
	btfsc	(_g_xTftContent),4	;volatile
	movlw	1
	movwf	(vHideDisplayID@hd)
	movlw	low(0Bh)
	fcall	_vHideDisplayID
	line	488
;UIProc.c: 488: vHideDisplayID(15,0);
	clrf	(vHideDisplayID@hd)
	movlw	low(0Fh)
	fcall	_vHideDisplayID
	line	489
;UIProc.c: 489: vSwitchImageIcon(15, 70-8);
	movlw	low(03Eh)
	movwf	(vSwitchImageIcon@icon)
	movlw	low(0Fh)
	fcall	_vSwitchImageIcon
	line	492
	
l17523:	
;UIProc.c: 492: if(g_eSysStatus == HEATING)
		movlw	3
	xorwf	((_g_eSysStatus)),w	;volatile
	btfss	status,2
	goto	u11461
	goto	u11460
u11461:
	goto	l17527
u11460:
	line	493
	
l17525:	
;UIProc.c: 493: vHideDisplayID(9, 0);
	clrf	(vHideDisplayID@hd)
	movlw	low(09h)
	fcall	_vHideDisplayID
	goto	l17531
	line	494
	
l17527:	
;UIProc.c: 494: else if(g_eSysStatus == WAITING)
		movlw	2
	xorwf	((_g_eSysStatus)),w	;volatile
	btfss	status,2
	goto	u11471
	goto	u11470
u11471:
	goto	l17531
u11470:
	line	495
	
l17529:	
;UIProc.c: 495: vHideDisplayID(9, 1);
	clrf	(vHideDisplayID@hd)
	incf	(vHideDisplayID@hd),f
	movlw	low(09h)
	fcall	_vHideDisplayID
	line	498
	
l17531:	
;UIProc.c: 498: if(g_xSysSetting.TemprUnit)
	btfss	0+(_g_xSysSetting)+03h,0	;volatile
	goto	u11481
	goto	u11480
u11481:
	goto	l17543
u11480:
	line	501
	
l17533:	
;UIProc.c: 499: {
;UIProc.c: 501: tempr = g_xTftContent.setT/100;
	movlw	low(064h)
	movwf	(___lbdiv@divisor)
	movf	0+(_g_xTftContent)+03h,w	;volatile
	fcall	___lbdiv
	movwf	(UpdateTftDisplay@tempr)
	line	502
	
l17535:	
;UIProc.c: 502: vSwitchImageIcon(1, 22+tempr);
	movf	(UpdateTftDisplay@tempr),w
	addlw	016h
	movwf	(vSwitchImageIcon@icon)
	movlw	low(01h)
	fcall	_vSwitchImageIcon
	line	504
	
l17537:	
;UIProc.c: 504: tempr = (g_xTftContent.setT%100)/10;
	movlw	low(0Ah)
	movwf	(___lbdiv@divisor)
	movlw	low(064h)
	movwf	(___lbmod@divisor)
	movf	0+(_g_xTftContent)+03h,w	;volatile
	fcall	___lbmod
	fcall	___lbdiv
	movwf	(UpdateTftDisplay@tempr)
	line	505
;UIProc.c: 505: vSwitchImageIcon(2, 22+tempr);
	movf	(UpdateTftDisplay@tempr),w
	addlw	016h
	movwf	(vSwitchImageIcon@icon)
	movlw	low(02h)
	fcall	_vSwitchImageIcon
	line	507
	
l17539:	
;UIProc.c: 507: tempr = g_xTftContent.setT%10;
	movlw	low(0Ah)
	movwf	(___lbmod@divisor)
	movf	0+(_g_xTftContent)+03h,w	;volatile
	fcall	___lbmod
	movwf	(UpdateTftDisplay@tempr)
	line	508
	
l17541:	
;UIProc.c: 508: vSwitchImageIcon(3, 22+tempr);
	movf	(UpdateTftDisplay@tempr),w
	addlw	016h
	movwf	(vSwitchImageIcon@icon)
	movlw	low(03h)
	fcall	_vSwitchImageIcon
	line	509
;UIProc.c: 509: }
	goto	l17553
	line	513
	
l17543:	
;UIProc.c: 510: else
;UIProc.c: 511: {
;UIProc.c: 513: tempr = 5*(g_xTftContent.setT%2);
	movlw	low(05h)
	movwf	(___bmul@multiplicand)
	movf	0+(_g_xTftContent)+03h,w	;volatile
	andlw	01h
	fcall	___bmul
	movwf	(UpdateTftDisplay@tempr)
	line	514
	
l17545:	
;UIProc.c: 514: vSwitchImageIcon(3, 32+tempr);
	movf	(UpdateTftDisplay@tempr),w
	addlw	020h
	movwf	(vSwitchImageIcon@icon)
	movlw	low(03h)
	fcall	_vSwitchImageIcon
	line	516
	
l17547:	
;UIProc.c: 516: tempr = (g_xTftContent.setT/2)%10;
	movlw	low(0Ah)
	movwf	(___lbmod@divisor)
	clrc
	rrf	0+(_g_xTftContent)+03h,w	;volatile
	fcall	___lbmod
	movwf	(UpdateTftDisplay@tempr)
	line	517
;UIProc.c: 517: vSwitchImageIcon(2, 22+tempr);
	movf	(UpdateTftDisplay@tempr),w
	addlw	016h
	movwf	(vSwitchImageIcon@icon)
	movlw	low(02h)
	fcall	_vSwitchImageIcon
	line	519
	
l17549:	
;UIProc.c: 519: tempr = (g_xTftContent.setT%200)/20;
	movlw	low(014h)
	movwf	(___lbdiv@divisor)
	movlw	low(0C8h)
	movwf	(___lbmod@divisor)
	movf	0+(_g_xTftContent)+03h,w	;volatile
	fcall	___lbmod
	fcall	___lbdiv
	movwf	(UpdateTftDisplay@tempr)
	line	520
	
l17551:	
;UIProc.c: 520: vSwitchImageIcon(1, 22+tempr);
	movf	(UpdateTftDisplay@tempr),w
	addlw	016h
	movwf	(vSwitchImageIcon@icon)
	movlw	low(01h)
	fcall	_vSwitchImageIcon
	line	524
	
l17553:	
;UIProc.c: 521: }
;UIProc.c: 524: if(g_xSysSetting.TemprUnit)
	btfss	0+(_g_xSysSetting)+03h,0	;volatile
	goto	u11491
	goto	u11490
u11491:
	goto	l17565
u11490:
	line	527
	
l17555:	
;UIProc.c: 525: {
;UIProc.c: 527: tempr = g_xTftContent.curT/100;
	movlw	low(064h)
	movwf	(___lbdiv@divisor)
	movf	0+(_g_xTftContent)+04h,w	;volatile
	fcall	___lbdiv
	movwf	(UpdateTftDisplay@tempr)
	line	528
	
l17557:	
;UIProc.c: 528: vSwitchImageIcon(4, 42+tempr);
	movf	(UpdateTftDisplay@tempr),w
	addlw	02Ah
	movwf	(vSwitchImageIcon@icon)
	movlw	low(04h)
	fcall	_vSwitchImageIcon
	line	530
	
l17559:	
;UIProc.c: 530: tempr = (g_xTftContent.curT%100)/10;
	movlw	low(0Ah)
	movwf	(___lbdiv@divisor)
	movlw	low(064h)
	movwf	(___lbmod@divisor)
	movf	0+(_g_xTftContent)+04h,w	;volatile
	fcall	___lbmod
	fcall	___lbdiv
	movwf	(UpdateTftDisplay@tempr)
	line	531
;UIProc.c: 531: vSwitchImageIcon(5, 42+tempr);
	movf	(UpdateTftDisplay@tempr),w
	addlw	02Ah
	movwf	(vSwitchImageIcon@icon)
	movlw	low(05h)
	fcall	_vSwitchImageIcon
	line	533
	
l17561:	
;UIProc.c: 533: tempr = g_xTftContent.curT%10;
	movlw	low(0Ah)
	movwf	(___lbmod@divisor)
	movf	0+(_g_xTftContent)+04h,w	;volatile
	fcall	___lbmod
	movwf	(UpdateTftDisplay@tempr)
	line	534
	
l17563:	
;UIProc.c: 534: vSwitchImageIcon(6, 42+tempr);
	movf	(UpdateTftDisplay@tempr),w
	addlw	02Ah
	movwf	(vSwitchImageIcon@icon)
	movlw	low(06h)
	fcall	_vSwitchImageIcon
	line	535
;UIProc.c: 535: }
	goto	l6836
	line	539
	
l17565:	
;UIProc.c: 536: else
;UIProc.c: 537: {
;UIProc.c: 539: tempr = 5*(g_xTftContent.curT%2);
	movlw	low(05h)
	movwf	(___bmul@multiplicand)
	movf	0+(_g_xTftContent)+04h,w	;volatile
	andlw	01h
	fcall	___bmul
	movwf	(UpdateTftDisplay@tempr)
	line	540
	
l17567:	
;UIProc.c: 540: vSwitchImageIcon(6, 52+tempr);
	movf	(UpdateTftDisplay@tempr),w
	addlw	034h
	movwf	(vSwitchImageIcon@icon)
	movlw	low(06h)
	fcall	_vSwitchImageIcon
	line	542
	
l17569:	
;UIProc.c: 542: tempr = (g_xTftContent.curT/2)%10;
	movlw	low(0Ah)
	movwf	(___lbmod@divisor)
	clrc
	rrf	0+(_g_xTftContent)+04h,w	;volatile
	fcall	___lbmod
	movwf	(UpdateTftDisplay@tempr)
	line	543
;UIProc.c: 543: vSwitchImageIcon(5, 42+tempr);
	movf	(UpdateTftDisplay@tempr),w
	addlw	02Ah
	movwf	(vSwitchImageIcon@icon)
	movlw	low(05h)
	fcall	_vSwitchImageIcon
	line	545
	
l17571:	
;UIProc.c: 545: tempr = (g_xTftContent.curT%200)/20;
	movlw	low(014h)
	movwf	(___lbdiv@divisor)
	movlw	low(0C8h)
	movwf	(___lbmod@divisor)
	movf	0+(_g_xTftContent)+04h,w	;volatile
	fcall	___lbmod
	fcall	___lbdiv
	movwf	(UpdateTftDisplay@tempr)
	line	546
	
l17573:	
;UIProc.c: 546: vSwitchImageIcon(4, 42+tempr);
	movf	(UpdateTftDisplay@tempr),w
	addlw	02Ah
	movwf	(vSwitchImageIcon@icon)
	movlw	low(04h)
	fcall	_vSwitchImageIcon
	goto	l6836
	line	267
	
l17577:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_g_xTftAction)^080h,w	;volatile
	; Switch size 1, requested type "space"
; Number of cases is 10, Range of values is 1 to 10
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           31    16 (average)
; direct_byte           41    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l17361
	xorlw	2^1	; case 2
	skipnz
	goto	l17363
	xorlw	3^2	; case 3
	skipnz
	goto	l17389
	xorlw	4^3	; case 4
	skipnz
	goto	l17435
	xorlw	5^4	; case 5
	skipnz
	goto	l17443
	xorlw	6^5	; case 6
	skipnz
	goto	l17515
	xorlw	7^6	; case 7
	skipnz
	goto	l17451
	xorlw	8^7	; case 8
	skipnz
	goto	l17503
	xorlw	9^8	; case 9
	skipnz
	goto	l17461
	xorlw	10^9	; case 10
	skipnz
	goto	l17469
	goto	l6836
	opt asmopt_pop

	line	553
	
l6836:	
	return
	opt stack 0
GLOBAL	__end_of_UpdateTftDisplay
	__end_of_UpdateTftDisplay:
	signat	_UpdateTftDisplay,89
	global	_vSwitchTftPage

;; *************** function _vSwitchTftPage *****************
;; Defined at:
;;		line 226 in file "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\UIProc.c"
;; Parameters:    Size  Location     Type
;;  pageNum         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  pageNum         1   15[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_memcpy
;;		_memset
;;		_vUart0Send
;; This function is called by:
;;		_UpdateTftDisplay
;; This function uses a non-reentrant model
;;
psect	text62,local,class=CODE,delta=2,merge=1,group=0
	line	226
global __ptext62
__ptext62:	;psect for function _vSwitchTftPage
psect	text62
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\UIProc.c"
	line	226
	global	__size_of_vSwitchTftPage
	__size_of_vSwitchTftPage	equ	__end_of_vSwitchTftPage-_vSwitchTftPage
	
_vSwitchTftPage:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _vSwitchTftPage: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;vSwitchTftPage@pageNum stored from wreg
	bcf	status, 6	;RP1=0, select bank0
	movwf	(vSwitchTftPage@pageNum)
	line	228
	
l16595:	
;UIProc.c: 228: memset(g_cTftCommand, 0, sizeof(g_cTftCommand));
	movlw	(low(_g_cTftCommand|((0x0)<<8))&0ffh)
	movwf	(memset@p1)
	movlw	(0x0)
	movwf	(memset@p1+1)
	clrf	(memset@c)
	clrf	(memset@c+1)
	movlw	0Eh
	movwf	(memset@n)
	clrf	(memset@n+1)
	fcall	_memset
	line	229
;UIProc.c: 229: memcpy(g_cTftCommand, C_cSwitchTftPage, sizeof(C_cSwitchTftPage));
	movlw	(low((((_C_cSwitchTftPage)-__stringbase)|8000h)))&0ffh
	movwf	(memcpy@s1)
	movlw	0Ah
	movwf	(memcpy@n)
	clrf	(memcpy@n+1)
	movlw	(low(_g_cTftCommand|((0x0)<<8)))&0ffh
	fcall	_memcpy
	line	230
	
l16597:	
;UIProc.c: 230: g_cTftCommand[3] = pageNum;
	movf	(vSwitchTftPage@pageNum),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	0+(_g_cTftCommand)^080h+03h	;volatile
	line	233
	
l16599:	
;UIProc.c: 233: vUart0Send(sizeof(C_cSwitchTftPage));
	movlw	low(0Ah)
	fcall	_vUart0Send
	line	234
	
l16601:	
;UIProc.c: 234: memset(g_cTftCommand, 0, sizeof(g_cTftCommand));
	movlw	(low(_g_cTftCommand|((0x0)<<8))&0ffh)
	movwf	(memset@p1)
	movlw	(0x0)
	movwf	(memset@p1+1)
	clrf	(memset@c)
	clrf	(memset@c+1)
	movlw	0Eh
	movwf	(memset@n)
	clrf	(memset@n+1)
	fcall	_memset
	line	235
	
l6785:	
	return
	opt stack 0
GLOBAL	__end_of_vSwitchTftPage
	__end_of_vSwitchTftPage:
	signat	_vSwitchTftPage,4217
	global	_vSwitchImageIcon

;; *************** function _vSwitchImageIcon *****************
;; Defined at:
;;		line 238 in file "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\UIProc.c"
;; Parameters:    Size  Location     Type
;;  id              1    wreg     unsigned char 
;;  icon            1   15[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  id              1   16[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       1       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_memcpy
;;		_memset
;;		_vUart0Send
;; This function is called by:
;;		_UpdateTftDisplay
;; This function uses a non-reentrant model
;;
psect	text63,local,class=CODE,delta=2,merge=1,group=0
	line	238
global __ptext63
__ptext63:	;psect for function _vSwitchImageIcon
psect	text63
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\UIProc.c"
	line	238
	global	__size_of_vSwitchImageIcon
	__size_of_vSwitchImageIcon	equ	__end_of_vSwitchImageIcon-_vSwitchImageIcon
	
_vSwitchImageIcon:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _vSwitchImageIcon: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;vSwitchImageIcon@id stored from wreg
	movwf	(vSwitchImageIcon@id)
	line	240
	
l16603:	
;UIProc.c: 240: memset(g_cTftCommand, 0, sizeof(g_cTftCommand));
	movlw	(low(_g_cTftCommand|((0x0)<<8))&0ffh)
	movwf	(memset@p1)
	movlw	(0x0)
	movwf	(memset@p1+1)
	clrf	(memset@c)
	clrf	(memset@c+1)
	movlw	0Eh
	movwf	(memset@n)
	clrf	(memset@n+1)
	fcall	_memset
	line	241
;UIProc.c: 241: memcpy(g_cTftCommand, C_cSwitchImageIcon, sizeof(C_cSwitchImageIcon));
	movlw	(low((((_C_cSwitchImageIcon)-__stringbase)|8000h)))&0ffh
	movwf	(memcpy@s1)
	movlw	0Bh
	movwf	(memcpy@n)
	clrf	(memcpy@n+1)
	movlw	(low(_g_cTftCommand|((0x0)<<8)))&0ffh
	fcall	_memcpy
	line	242
	
l16605:	
;UIProc.c: 242: g_cTftCommand[4] = id;
	movf	(vSwitchImageIcon@id),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	0+(_g_cTftCommand)^080h+04h	;volatile
	line	243
	
l16607:	
;UIProc.c: 243: g_cTftCommand[6] = icon;
	bcf	status, 5	;RP0=0, select bank0
	movf	(vSwitchImageIcon@icon),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	0+(_g_cTftCommand)^080h+06h	;volatile
	line	247
;UIProc.c: 247: vUart0Send(sizeof(C_cSwitchImageIcon));
	movlw	low(0Bh)
	fcall	_vUart0Send
	line	248
	
l6788:	
	return
	opt stack 0
GLOBAL	__end_of_vSwitchImageIcon
	__end_of_vSwitchImageIcon:
	signat	_vSwitchImageIcon,8313
	global	_vHideDisplayID

;; *************** function _vHideDisplayID *****************
;; Defined at:
;;		line 251 in file "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\UIProc.c"
;; Parameters:    Size  Location     Type
;;  id              1    wreg     unsigned char 
;;  hd              1   15[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  id              1   16[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       1       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_memcpy
;;		_memset
;;		_vUart0Send
;; This function is called by:
;;		_UpdateTftDisplay
;; This function uses a non-reentrant model
;;
psect	text64,local,class=CODE,delta=2,merge=1,group=0
	line	251
global __ptext64
__ptext64:	;psect for function _vHideDisplayID
psect	text64
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\UIProc.c"
	line	251
	global	__size_of_vHideDisplayID
	__size_of_vHideDisplayID	equ	__end_of_vHideDisplayID-_vHideDisplayID
	
_vHideDisplayID:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _vHideDisplayID: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;vHideDisplayID@id stored from wreg
	movwf	(vHideDisplayID@id)
	line	253
	
l16609:	
;UIProc.c: 253: memset(g_cTftCommand, 0, sizeof(g_cTftCommand));
	movlw	(low(_g_cTftCommand|((0x0)<<8))&0ffh)
	movwf	(memset@p1)
	movlw	(0x0)
	movwf	(memset@p1+1)
	clrf	(memset@c)
	clrf	(memset@c+1)
	movlw	0Eh
	movwf	(memset@n)
	clrf	(memset@n+1)
	fcall	_memset
	line	254
;UIProc.c: 254: memcpy(g_cTftCommand, C_cHideDisplayID, sizeof(C_cHideDisplayID));
	movlw	(low((((_C_cHideDisplayID)-__stringbase)|8000h)))&0ffh
	movwf	(memcpy@s1)
	movlw	0Dh
	movwf	(memcpy@n)
	clrf	(memcpy@n+1)
	movlw	(low(_g_cTftCommand|((0x0)<<8)))&0ffh
	fcall	_memcpy
	line	255
	
l16611:	
;UIProc.c: 255: g_cTftCommand[4] = id;
	movf	(vHideDisplayID@id),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	0+(_g_cTftCommand)^080h+04h	;volatile
	line	256
	
l16613:	
;UIProc.c: 256: g_cTftCommand[8] = hd;
	bcf	status, 5	;RP0=0, select bank0
	movf	(vHideDisplayID@hd),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	0+(_g_cTftCommand)^080h+08h	;volatile
	line	260
;UIProc.c: 260: vUart0Send(sizeof(C_cHideDisplayID));
	movlw	low(0Dh)
	fcall	_vUart0Send
	line	261
	
l6791:	
	return
	opt stack 0
GLOBAL	__end_of_vHideDisplayID
	__end_of_vHideDisplayID:
	signat	_vHideDisplayID,8313
	global	_vUart0Send

;; *************** function _vUart0Send *****************
;; Defined at:
;;		line 404 in file "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
;; Parameters:    Size  Location     Type
;;  len             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  len             1    9[BANK0 ] unsigned char 
;;  overT           2   10[BANK0 ] unsigned int 
;;  pos             1   12[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       4       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       4       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_Delay
;; This function is called by:
;;		_vSwitchTftPage
;;		_vSwitchImageIcon
;;		_vHideDisplayID
;; This function uses a non-reentrant model
;;
psect	text65,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
	line	404
global __ptext65
__ptext65:	;psect for function _vUart0Send
psect	text65
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
	line	404
	global	__size_of_vUart0Send
	__size_of_vUart0Send	equ	__end_of_vUart0Send-_vUart0Send
	
_vUart0Send:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _vUart0Send: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;vUart0Send@len stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	movwf	(vUart0Send@len)
	line	406
	
l13153:	
;main.c: 406: unsigned int overT = 0;
	clrf	(vUart0Send@overT)
	clrf	(vUart0Send@overT+1)
	line	407
;main.c: 407: unsigned char pos = 0;
	clrf	(vUart0Send@pos)
	line	410
	
l13155:	
;main.c: 409: {
;main.c: 410: Delay(50);
	movlw	032h
	movwf	(Delay@dtemp)
	clrf	(Delay@dtemp+1)
	fcall	_Delay
	line	412
	
l13157:	
;main.c: 412: if (TRMT1)
	bsf	status, 6	;RP1=1, select bank2
	btfss	(2297/8)^0100h,(2297)&7	;volatile
	goto	u4891
	goto	u4890
u4891:
	goto	l2062
u4890:
	line	414
	
l13159:	
;main.c: 413: {
;main.c: 414: TXREG1 = g_cTftCommand[pos++];
	bcf	status, 6	;RP1=0, select bank0
	movf	(vUart0Send@pos),w
	addlw	low(_g_cTftCommand|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(285)^0100h	;volatile
	
l13161:	
	bcf	status, 6	;RP1=0, select bank0
	incf	(vUart0Send@pos),f
	line	415
	
l2062:	
	line	422
# 422 "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
clrwdt ;# 
psect	text65
	line	423
	
l13163:	
;main.c: 423: Delay(50);
	movlw	032h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Delay@dtemp)
	clrf	(Delay@dtemp+1)
	fcall	_Delay
	line	424
# 424 "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
clrwdt ;# 
psect	text65
	line	425
	
l13165:	
;main.c: 425: overT++;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(vUart0Send@overT),f
	skipnz
	incf	(vUart0Send@overT+1),f
	line	426
	
l13167:	
;main.c: 426: if ((50 < overT) || (len <= pos))
	movlw	0
	subwf	(vUart0Send@overT+1),w
	movlw	033h
	skipnz
	subwf	(vUart0Send@overT),w
	skipnc
	goto	u4901
	goto	u4900
u4901:
	goto	l2068
u4900:
	
l13169:	
	movf	(vUart0Send@len),w
	subwf	(vUart0Send@pos),w
	skipc
	goto	u4911
	goto	u4910
u4911:
	goto	l13155
u4910:
	line	429
	
l2068:	
	return
	opt stack 0
GLOBAL	__end_of_vUart0Send
	__end_of_vUart0Send:
	signat	_vUart0Send,4217
	global	_memcpy

;; *************** function _memcpy *****************
;; Defined at:
;;		line 11 in file "C:\Users\qxl\Desktop\组会信息\高师兄给的资料\CMS_IDE_V2.03.28\CMS_IDE_V2.03.28\data\sources\common\memcpy.c"
;; Parameters:    Size  Location     Type
;;  d1              1    wreg     PTR void 
;;		 -> g_cTftCommand(14), 
;;  s1              1    7[BANK0 ] PTR const void 
;;		 -> C_cHideDisplayID(13), C_cSwitchImageIcon(11), C_cSwitchTftPage(10), 
;;  n               2    8[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  d1              1   13[BANK0 ] PTR void 
;;		 -> g_cTftCommand(14), 
;;  s               1   12[BANK0 ] PTR const unsigned char 
;;		 -> C_cHideDisplayID(13), C_cSwitchImageIcon(11), C_cSwitchTftPage(10), 
;;  d               1   11[BANK0 ] PTR unsigned char 
;;		 -> g_cTftCommand(14), 
;; Return value:  Size  Location     Type
;;                  1    wreg      PTR void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       3       0       0
;;      Locals:         0       3       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       7       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_vSwitchTftPage
;;		_vSwitchImageIcon
;;		_vHideDisplayID
;; This function uses a non-reentrant model
;;
psect	text66,local,class=CODE,delta=2,merge=1,group=3
	file	"C:\Users\qxl\Desktop\组会信息\高师兄给的资料\CMS_IDE_V2.03.28\CMS_IDE_V2.03.28\data\sources\common\memcpy.c"
	line	11
global __ptext66
__ptext66:	;psect for function _memcpy
psect	text66
	file	"C:\Users\qxl\Desktop\组会信息\高师兄给的资料\CMS_IDE_V2.03.28\CMS_IDE_V2.03.28\data\sources\common\memcpy.c"
	line	11
	global	__size_of_memcpy
	__size_of_memcpy	equ	__end_of_memcpy-_memcpy
	
_memcpy:	
;incstack = 0
;; using string table level
	opt	stack 1
; Regs used in _memcpy: [wreg-fsr0h+status,2+status,0+pclath]
;memcpy@d1 stored from wreg
	movwf	(memcpy@d1)
	line	24
	
l13339:	
	movf	(memcpy@s1),w
	movwf	(memcpy@s)
	line	25
	movf	(memcpy@d1),w
	movwf	(memcpy@d)
	line	26
	goto	l13347
	line	27
	
l13341:	
	movf	(memcpy@s),w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_memcpy+0)+0
	movf	(memcpy@d),w
	movwf	fsr0
	movf	(??_memcpy+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l13343:	
	incf	(memcpy@s),f
	
l13345:	
	incf	(memcpy@d),f
	line	26
	
l13347:	
	movlw	01h
	subwf	(memcpy@n),f
	movlw	0
	skipc
	decf	(memcpy@n+1),f
	subwf	(memcpy@n+1),f
		incf	(((memcpy@n))),w
	skipz
	goto	u5211
	incf	(((memcpy@n+1))),w
	btfss	status,2
	goto	u5211
	goto	u5210
u5211:
	goto	l13341
u5210:
	line	32
	
l9843:	
	return
	opt stack 0
GLOBAL	__end_of_memcpy
	__end_of_memcpy:
	signat	_memcpy,12409
	global	___lbmod

;; *************** function ___lbmod *****************
;; Defined at:
;;		line 4 in file "C:\Users\qxl\Desktop\组会信息\高师兄给的资料\CMS_IDE_V2.03.28\CMS_IDE_V2.03.28\data\sources\common\lbmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        1    wreg     unsigned char 
;;  divisor         1    7[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dividend        1    9[BANK0 ] unsigned char 
;;  rem             1   11[BANK0 ] unsigned char 
;;  counter         1   10[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       1       0       0
;;      Locals:         0       3       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       5       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_UpdateTftDisplay
;; This function uses a non-reentrant model
;;
psect	text67,local,class=CODE,delta=2,merge=1,group=3
	file	"C:\Users\qxl\Desktop\组会信息\高师兄给的资料\CMS_IDE_V2.03.28\CMS_IDE_V2.03.28\data\sources\common\lbmod.c"
	line	4
global __ptext67
__ptext67:	;psect for function ___lbmod
psect	text67
	file	"C:\Users\qxl\Desktop\组会信息\高师兄给的资料\CMS_IDE_V2.03.28\CMS_IDE_V2.03.28\data\sources\common\lbmod.c"
	line	4
	global	__size_of___lbmod
	__size_of___lbmod	equ	__end_of___lbmod-___lbmod
	
___lbmod:	
;incstack = 0
	opt	stack 1
; Regs used in ___lbmod: [wreg+status,2+status,0]
;___lbmod@dividend stored from wreg
	movwf	(___lbmod@dividend)
	line	9
	
l14585:	
	movlw	low(08h)
	movwf	(___lbmod@counter)
	line	10
	
l14587:	
	clrf	(___lbmod@rem)
	line	12
	
l14589:	
	movf	(___lbmod@dividend),w
	movwf	(??___lbmod+0)+0
	movlw	07h
u6835:
	clrc
	rrf	(??___lbmod+0)+0,f
	addlw	-1
	skipz
	goto	u6835
	clrc
	rlf	(___lbmod@rem),w
	iorwf	0+(??___lbmod+0)+0,w
	movwf	(___lbmod@rem)
	line	13
	
l14591:	
	clrc
	rlf	(___lbmod@dividend),f
	line	14
	
l14593:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),w
	skipc
	goto	u6841
	goto	u6840
u6841:
	goto	l14597
u6840:
	line	15
	
l14595:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),f
	line	16
	
l14597:	
	decfsz	(___lbmod@counter),f
	goto	u6851
	goto	u6850
u6851:
	goto	l14589
u6850:
	line	17
	
l14599:	
	movf	(___lbmod@rem),w
	line	18
	
l9754:	
	return
	opt stack 0
GLOBAL	__end_of___lbmod
	__end_of___lbmod:
	signat	___lbmod,8313
	global	___lbdiv

;; *************** function ___lbdiv *****************
;; Defined at:
;;		line 4 in file "C:\Users\qxl\Desktop\组会信息\高师兄给的资料\CMS_IDE_V2.03.28\CMS_IDE_V2.03.28\data\sources\common\lbdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        1    wreg     unsigned char 
;;  divisor         1   12[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dividend        1   13[BANK0 ] unsigned char 
;;  quotient        1   15[BANK0 ] unsigned char 
;;  counter         1   14[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       1       0       0
;;      Locals:         0       3       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       4       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_UpdateTftDisplay
;; This function uses a non-reentrant model
;;
psect	text68,local,class=CODE,delta=2,merge=1,group=3
	file	"C:\Users\qxl\Desktop\组会信息\高师兄给的资料\CMS_IDE_V2.03.28\CMS_IDE_V2.03.28\data\sources\common\lbdiv.c"
	line	4
global __ptext68
__ptext68:	;psect for function ___lbdiv
psect	text68
	file	"C:\Users\qxl\Desktop\组会信息\高师兄给的资料\CMS_IDE_V2.03.28\CMS_IDE_V2.03.28\data\sources\common\lbdiv.c"
	line	4
	global	__size_of___lbdiv
	__size_of___lbdiv	equ	__end_of___lbdiv-___lbdiv
	
___lbdiv:	
;incstack = 0
	opt	stack 1
; Regs used in ___lbdiv: [wreg+status,2+status,0]
;___lbdiv@dividend stored from wreg
	movwf	(___lbdiv@dividend)
	line	9
	
l14561:	
	clrf	(___lbdiv@quotient)
	line	10
	
l14563:	
	movf	((___lbdiv@divisor)),w
	btfsc	status,2
	goto	u6791
	goto	u6790
u6791:
	goto	l14581
u6790:
	line	11
	
l14565:	
	clrf	(___lbdiv@counter)
	incf	(___lbdiv@counter),f
	line	12
	goto	l14569
	
l9743:	
	line	13
	clrc
	rlf	(___lbdiv@divisor),f
	line	14
	
l14567:	
	incf	(___lbdiv@counter),f
	line	12
	
l14569:	
	btfss	(___lbdiv@divisor),(7)&7
	goto	u6801
	goto	u6800
u6801:
	goto	l9743
u6800:
	line	16
	
l9745:	
	line	17
	clrc
	rlf	(___lbdiv@quotient),f
	line	18
	
l14571:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),w
	skipc
	goto	u6811
	goto	u6810
u6811:
	goto	l14577
u6810:
	line	19
	
l14573:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),f
	line	20
	
l14575:	
	bsf	(___lbdiv@quotient)+(0/8),(0)&7
	line	22
	
l14577:	
	clrc
	rrf	(___lbdiv@divisor),f
	line	23
	
l14579:	
	decfsz	(___lbdiv@counter),f
	goto	u6821
	goto	u6820
u6821:
	goto	l9745
u6820:
	line	25
	
l14581:	
	movf	(___lbdiv@quotient),w
	line	26
	
l9748:	
	return
	opt stack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
	signat	___lbdiv,8313
	global	___bmul

;; *************** function ___bmul *****************
;; Defined at:
;;		line 4 in file "C:\Users\qxl\Desktop\组会信息\高师兄给的资料\CMS_IDE_V2.03.28\CMS_IDE_V2.03.28\data\sources\common\Umul8.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    7[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    9[BANK0 ] unsigned char 
;;  product         1    8[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       1       0       0
;;      Locals:         0       2       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_UpdateTftDisplay
;; This function uses a non-reentrant model
;;
psect	text69,local,class=CODE,delta=2,merge=1,group=3
	file	"C:\Users\qxl\Desktop\组会信息\高师兄给的资料\CMS_IDE_V2.03.28\CMS_IDE_V2.03.28\data\sources\common\Umul8.c"
	line	4
global __ptext69
__ptext69:	;psect for function ___bmul
psect	text69
	file	"C:\Users\qxl\Desktop\组会信息\高师兄给的资料\CMS_IDE_V2.03.28\CMS_IDE_V2.03.28\data\sources\common\Umul8.c"
	line	4
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
;incstack = 0
	opt	stack 1
; Regs used in ___bmul: [wreg+status,2+status,0]
;___bmul@multiplier stored from wreg
	movwf	(___bmul@multiplier)
	line	6
	
l14547:	
	clrf	(___bmul@product)
	line	43
	
l14549:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u6771
	goto	u6770
u6771:
	goto	l14553
u6770:
	line	44
	
l14551:	
	movf	(___bmul@multiplicand),w
	addwf	(___bmul@product),f
	line	45
	
l14553:	
	clrc
	rlf	(___bmul@multiplicand),f
	line	46
	
l14555:	
	clrc
	rrf	(___bmul@multiplier),f
	line	47
	movf	((___bmul@multiplier)),w
	btfss	status,2
	goto	u6781
	goto	u6780
u6781:
	goto	l14549
u6780:
	line	50
	
l14557:	
	movf	(___bmul@product),w
	line	51
	
l9499:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
	signat	___bmul,8313
	global	_Sys_set

;; *************** function _Sys_set *****************
;; Defined at:
;;		line 81 in file "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/200
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text70,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
	line	81
global __ptext70
__ptext70:	;psect for function _Sys_set
psect	text70
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
	line	81
	global	__size_of_Sys_set
	__size_of_Sys_set	equ	__end_of_Sys_set-_Sys_set
	
_Sys_set:	
;incstack = 0
	opt	stack 2
; Regs used in _Sys_set: [wreg+status,2+status,0]
	line	83
	
l14675:	
# 83 "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
clrwdt ;# 
psect	text70
	line	84
	
l14677:	
;main.c: 84: OPTION_REG = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(129)^080h	;volatile
	line	85
	
l14679:	
;main.c: 85: WDTCON = 0x01;
	movlw	low(01h)
	movwf	(144)^080h	;volatile
	line	87
	
l14681:	
;main.c: 87: TRISA = 0B00000001;
	movlw	low(01h)
	movwf	(133)^080h	;volatile
	line	88
;main.c: 88: TRISB = 0B00000000;
	clrf	(134)^080h	;volatile
	line	89
	
l14683:	
;main.c: 89: TRISC = 0B00111000;
	movlw	low(038h)
	movwf	(135)^080h	;volatile
	line	90
	
l14685:	
;main.c: 90: TRISD = 0B00000000;
	clrf	(136)^080h	;volatile
	line	92
;main.c: 92: PIE1 = 0B00000010;
	movlw	low(02h)
	movwf	(140)^080h	;volatile
	line	93
;main.c: 93: PR2 = 125;
	movlw	low(07Dh)
	movwf	(146)^080h	;volatile
	line	94
;main.c: 94: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	95
	
l14687:	
;main.c: 95: if (5 != T2CON)
		movlw	5
	bcf	status, 5	;RP0=0, select bank0
	xorwf	((18)),w	;volatile
	btfsc	status,2
	goto	u6891
	goto	u6890
u6891:
	goto	l2000
u6890:
	line	96
	
l14689:	
;main.c: 96: T2CON = 5;
	movlw	low(05h)
	movwf	(18)	;volatile
	
l2000:	
	line	98
;main.c: 98: WPUA = 0B00000001;
	movlw	low(01h)
	bsf	status, 6	;RP1=1, select bank2
	movwf	(263)^0100h	;volatile
	line	99
	
l14691:	
;main.c: 99: WPUB = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(149)^080h	;volatile
	line	100
	
l14693:	
;main.c: 100: WPUC = 0B00111000;
	movlw	low(038h)
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(264)^0100h	;volatile
	line	101
	
l2001:	
	return
	opt stack 0
GLOBAL	__end_of_Sys_set
	__end_of_Sys_set:
	signat	_Sys_set,89
	global	_RecvDataAnalysis

;; *************** function _RecvDataAnalysis *****************
;; Defined at:
;;		line 198 in file "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\IHProc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   16[BANK0 ] unsigned int 
;;  sum             1   15[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 200/100
;;		On exit  : 200/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       3       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_GetDecodeCode
;;		_bQueueEn
;;		_vErrorProc
;;		_vTemprProc
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text71,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\IHProc.c"
	line	198
global __ptext71
__ptext71:	;psect for function _RecvDataAnalysis
psect	text71
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\IHProc.c"
	line	198
	global	__size_of_RecvDataAnalysis
	__size_of_RecvDataAnalysis	equ	__end_of_RecvDataAnalysis-_RecvDataAnalysis
	
_RecvDataAnalysis:	
;incstack = 0
	opt	stack 0
; Regs used in _RecvDataAnalysis: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	201
	
l17217:	
;IHProc.c: 201: if (GetDecodeCode())
	fcall	_GetDecodeCode
	btfss	status,0
	goto	u11001
	goto	u11000
u11001:
	goto	l9105
u11000:
	line	203
	
l17219:	
;IHProc.c: 202: {
;IHProc.c: 203: unsigned char sum = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(RecvDataAnalysis@sum)
	line	204
;IHProc.c: 204: for (unsigned int i = 0; i < 4; i++)
	clrf	(RecvDataAnalysis@i)
	clrf	(RecvDataAnalysis@i+1)
	line	206
	
l17225:	
;IHProc.c: 205: {
;IHProc.c: 206: sum += g_cReceiveData[i];
	movf	(RecvDataAnalysis@i),w
	addlw	low(_g_cReceiveData|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	addwf	(RecvDataAnalysis@sum),f
	line	204
	
l17227:	
	incf	(RecvDataAnalysis@i),f
	skipnz
	incf	(RecvDataAnalysis@i+1),f
	
l17229:	
	movlw	0
	subwf	(RecvDataAnalysis@i+1),w
	movlw	04h
	skipnz
	subwf	(RecvDataAnalysis@i),w
	skipc
	goto	u11011
	goto	u11010
u11011:
	goto	l17225
u11010:
	line	209
	
l17231:	
;IHProc.c: 207: }
;IHProc.c: 209: if (sum != 0xFF) return;
		incf	((RecvDataAnalysis@sum)),w
	btfsc	status,2
	goto	u11021
	goto	u11020
u11021:
	goto	l17267
u11020:
	goto	l9105
	
l17233:	
	goto	l9105
	line	214
	
l17235:	
;IHProc.c: 214: Status1_Work.all = g_cReceiveData[2];
	movf	0+(_g_cReceiveData)^080h+02h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_Status1_Work)	;volatile
	line	215
;IHProc.c: 215: Status2_Work.all = g_cReceiveData[1];
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_g_cReceiveData)^080h+01h,w	;volatile
	movwf	(_Status2_Work)^080h	;volatile
	line	230
	
l17237:	
;IHProc.c: 230: if(Status1_Work.one.b1 && !Status1_Work.one.b2)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(_Status1_Work),1	;volatile
	goto	u11031
	goto	u11030
u11031:
	goto	l9108
u11030:
	
l17239:	
	btfsc	(_Status1_Work),2	;volatile
	goto	u11041
	goto	u11040
u11041:
	goto	l9108
u11040:
	line	232
	
l17241:	
;IHProc.c: 231: {
;IHProc.c: 232: if(!g_bKettleLift)
	btfsc	(_g_bKettleLift/8),(_g_bKettleLift)&7	;volatile
	goto	u11051
	goto	u11050
u11051:
	goto	l17245
u11050:
	line	233
	
l17243:	
;IHProc.c: 233: bQueueEn(LiftKettle);
	movlw	low(0Bh)
	fcall	_bQueueEn
	line	234
	
l17245:	
;IHProc.c: 234: g_bKettleLift = 1;
	bcf	status, 6	;RP1=0, select bank0
	bsf	(_g_bKettleLift/8),(_g_bKettleLift)&7	;volatile
	line	235
;IHProc.c: 235: }
	goto	l9105
	line	236
	
l9108:	
;IHProc.c: 236: else if(!Status1_Work.one.b1 && Status1_Work.one.b2)
	btfsc	(_Status1_Work),1	;volatile
	goto	u11061
	goto	u11060
u11061:
	goto	l17233
u11060:
	
l17247:	
	btfss	(_Status1_Work),2	;volatile
	goto	u11071
	goto	u11070
u11071:
	goto	l17233
u11070:
	line	238
	
l17249:	
;IHProc.c: 237: {
;IHProc.c: 238: if(g_bKettleLift)
	btfss	(_g_bKettleLift/8),(_g_bKettleLift)&7	;volatile
	goto	u11081
	goto	u11080
u11081:
	goto	l17253
u11080:
	line	239
	
l17251:	
;IHProc.c: 239: bQueueEn(PBackKettle);
	movlw	low(0Ch)
	fcall	_bQueueEn
	line	240
	
l17253:	
;IHProc.c: 240: g_bKettleLift = 0;
	bcf	status, 6	;RP1=0, select bank0
	bcf	(_g_bKettleLift/8),(_g_bKettleLift)&7	;volatile
	goto	l9105
	line	251
	
l17255:	
;IHProc.c: 251: Flag1_Error.all = g_cReceiveData[2];
	movf	0+(_g_cReceiveData)^080h+02h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_Flag1_Error)	;volatile
	line	252
;IHProc.c: 252: Flag2_Error.all = g_cReceiveData[1];
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_g_cReceiveData)^080h+01h,w	;volatile
	movwf	(_Flag2_Error)^080h	;volatile
	line	253
	
l17257:	
;IHProc.c: 253: vErrorProc();
	fcall	_vErrorProc
	line	271
;IHProc.c: 271: break;
	goto	l9105
	line	273
	
l17259:	
;IHProc.c: 273: Status_PPGStop = g_cReceiveData[2];
	movf	0+(_g_cReceiveData)^080h+02h,w	;volatile
	movwf	(_Status_PPGStop)^080h	;volatile
	line	284
;IHProc.c: 284: break;
	goto	l9105
	line	291
	
l17261:	
;IHProc.c: 291: AD_TmprPan = g_cReceiveData[2];
	movf	0+(_g_cReceiveData)^080h+02h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_AD_TmprPan)	;volatile
	line	292
;IHProc.c: 292: AD_TmprIgbt = g_cReceiveData[1];
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_g_cReceiveData)^080h+01h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_AD_TmprIgbt)	;volatile
	line	293
	
l17263:	
;IHProc.c: 293: vTemprProc();
	fcall	_vTemprProc
	line	294
;IHProc.c: 294: break;
	goto	l9105
	line	211
	
l17267:	
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_g_cReceiveData)^080h+03h,w	;volatile
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 160 to 164
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           26    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	160^0	; case 160
	skipnz
	goto	l17235
	xorlw	161^160	; case 161
	skipnz
	goto	l17255
	xorlw	162^161	; case 162
	skipnz
	goto	l17259
	xorlw	164^162	; case 164
	skipnz
	goto	l17261
	goto	l9105
	opt asmopt_pop

	line	337
	
l9105:	
	return
	opt stack 0
GLOBAL	__end_of_RecvDataAnalysis
	__end_of_RecvDataAnalysis:
	signat	_RecvDataAnalysis,89
	global	_vTemprProc

;; *************** function _vTemprProc *****************
;; Defined at:
;;		line 101 in file "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\IHProc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 200/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_vSetIHPower
;; This function is called by:
;;		_RecvDataAnalysis
;; This function uses a non-reentrant model
;;
psect	text72,local,class=CODE,delta=2,merge=1,group=0
	line	101
global __ptext72
__ptext72:	;psect for function _vTemprProc
psect	text72
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\IHProc.c"
	line	101
	global	__size_of_vTemprProc
	__size_of_vTemprProc	equ	__end_of_vTemprProc-_vTemprProc
	
_vTemprProc:	
;incstack = 0
	opt	stack 0
; Regs used in _vTemprProc: [wreg+status,2+status,0+pclath+cstack]
	line	106
	
l13991:	
;IHProc.c: 103: static unsigned char s_cOverTempr1Count=0;
;IHProc.c: 104: static unsigned char s_cOverTempr2Count=0;
;IHProc.c: 106: if(218 < AD_TmprPan)
	movlw	low(0DBh)
	subwf	(_AD_TmprPan),w	;volatile
	skipc
	goto	u5981
	goto	u5980
u5981:
	goto	l14005
u5980:
	line	108
	
l13993:	
;IHProc.c: 107: {
;IHProc.c: 108: s_cOverTempr1Count++;
	bsf	status, 5	;RP0=1, select bank1
	incf	(vTemprProc@s_cOverTempr1Count)^080h,f
	line	109
	
l13995:	
;IHProc.c: 109: if(10 < s_cOverTempr1Count)
	movlw	low(0Bh)
	subwf	(vTemprProc@s_cOverTempr1Count)^080h,w
	skipc
	goto	u5991
	goto	u5990
u5991:
	goto	l14013
u5990:
	line	111
	
l13997:	
;IHProc.c: 110: {
;IHProc.c: 111: s_cOverTempr1Count = 10;
	movlw	low(0Ah)
	movwf	(vTemprProc@s_cOverTempr1Count)^080h
	line	112
	
l13999:	
;IHProc.c: 112: vSetIHPower(POW_0W);
	movlw	low(0)
	fcall	_vSetIHPower
	line	114
	
l14001:	
;IHProc.c: 114: if(g_cErrStatus == E_NONE)
	movf	((_g_cErrStatus)),w	;volatile
	btfss	status,2
	goto	u6001
	goto	u6000
u6001:
	goto	l14013
u6000:
	line	115
	
l14003:	
;IHProc.c: 115: g_cErrStatus = E_LUMIAN_OVERTEMPR;
	movlw	low(08h)
	movwf	(_g_cErrStatus)	;volatile
	goto	l14013
	line	120
	
l14005:	
;IHProc.c: 118: else
;IHProc.c: 119: {
;IHProc.c: 120: s_cOverTempr1Count = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(vTemprProc@s_cOverTempr1Count)^080h
	line	122
	
l14007:	
;IHProc.c: 122: if((g_cErrStatus == E_LUMIAN_OVERTEMPR) && (AD_TmprPan < 147))
		movlw	8
	bcf	status, 5	;RP0=0, select bank0
	xorwf	((_g_cErrStatus)),w	;volatile
	btfss	status,2
	goto	u6011
	goto	u6010
u6011:
	goto	l14013
u6010:
	
l14009:	
	movlw	low(093h)
	subwf	(_AD_TmprPan),w	;volatile
	skipnc
	goto	u6021
	goto	u6020
u6021:
	goto	l14013
u6020:
	line	123
	
l14011:	
;IHProc.c: 123: g_cErrStatus = E_NONE;
	clrf	(_g_cErrStatus)	;volatile
	line	127
	
l14013:	
;IHProc.c: 124: }
;IHProc.c: 127: if(205 < AD_TmprIgbt)
	movlw	low(0CEh)
	bcf	status, 5	;RP0=0, select bank0
	subwf	(_AD_TmprIgbt),w	;volatile
	skipc
	goto	u6031
	goto	u6030
u6031:
	goto	l14027
u6030:
	line	129
	
l14015:	
;IHProc.c: 128: {
;IHProc.c: 129: s_cOverTempr2Count++;
	bsf	status, 5	;RP0=1, select bank1
	incf	(vTemprProc@s_cOverTempr2Count)^080h,f
	line	130
	
l14017:	
;IHProc.c: 130: if(10 < s_cOverTempr2Count)
	movlw	low(0Bh)
	subwf	(vTemprProc@s_cOverTempr2Count)^080h,w
	skipc
	goto	u6041
	goto	u6040
u6041:
	goto	l9078
u6040:
	line	132
	
l14019:	
;IHProc.c: 131: {
;IHProc.c: 132: s_cOverTempr2Count = 10;
	movlw	low(0Ah)
	movwf	(vTemprProc@s_cOverTempr2Count)^080h
	line	133
	
l14021:	
;IHProc.c: 133: vSetIHPower(POW_0W);
	movlw	low(0)
	fcall	_vSetIHPower
	line	135
	
l14023:	
;IHProc.c: 135: if(g_cErrStatus == E_NONE)
	movf	((_g_cErrStatus)),w	;volatile
	btfss	status,2
	goto	u6051
	goto	u6050
u6051:
	goto	l9078
u6050:
	line	136
	
l14025:	
;IHProc.c: 136: g_cErrStatus = E_MOS_OVERTEMPR;
	movlw	low(09h)
	movwf	(_g_cErrStatus)	;volatile
	goto	l9078
	line	141
	
l14027:	
;IHProc.c: 139: else
;IHProc.c: 140: {
;IHProc.c: 141: s_cOverTempr2Count = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(vTemprProc@s_cOverTempr2Count)^080h
	line	143
	
l14029:	
;IHProc.c: 143: if((g_cErrStatus == E_MOS_OVERTEMPR)&&(AD_TmprIgbt < 192))
		movlw	9
	bcf	status, 5	;RP0=0, select bank0
	xorwf	((_g_cErrStatus)),w	;volatile
	btfss	status,2
	goto	u6061
	goto	u6060
u6061:
	goto	l9078
u6060:
	
l14031:	
	movlw	low(0C0h)
	subwf	(_AD_TmprIgbt),w	;volatile
	skipnc
	goto	u6071
	goto	u6070
u6071:
	goto	l9078
u6070:
	line	144
	
l14033:	
;IHProc.c: 144: g_cErrStatus = E_NONE;
	clrf	(_g_cErrStatus)	;volatile
	line	146
	
l9078:	
	return
	opt stack 0
GLOBAL	__end_of_vTemprProc
	__end_of_vTemprProc:
	signat	_vTemprProc,89
	global	_vErrorProc

;; *************** function _vErrorProc *****************
;; Defined at:
;;		line 148 in file "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\IHProc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 200/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_vSetIHPower
;; This function is called by:
;;		_RecvDataAnalysis
;; This function uses a non-reentrant model
;;
psect	text73,local,class=CODE,delta=2,merge=1,group=0
	line	148
global __ptext73
__ptext73:	;psect for function _vErrorProc
psect	text73
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\IHProc.c"
	line	148
	global	__size_of_vErrorProc
	__size_of_vErrorProc	equ	__end_of_vErrorProc-_vErrorProc
	
_vErrorProc:	
;incstack = 0
	opt	stack 0
; Regs used in _vErrorProc: [wreg+status,2+status,0+pclath+cstack]
	line	153
	
l14035:	
;IHProc.c: 150: static unsigned char s_cIgbtErrCount=0;
;IHProc.c: 151: static unsigned char s_cPanErrCount=0;
;IHProc.c: 153: if(Flag1_Error.one.b0 ){
	bcf	status, 5	;RP0=0, select bank0
	btfss	(_Flag1_Error),0	;volatile
	goto	u6081
	goto	u6080
u6081:
	goto	l14041
u6080:
	line	154
	
l14037:	
;IHProc.c: 154: g_cErrStatus = E_VOL_LOW;
	movlw	low(01h)
	movwf	(_g_cErrStatus)	;volatile
	line	155
	
l14039:	
;IHProc.c: 155: vSetIHPower(POW_0W);
	movlw	low(0)
	fcall	_vSetIHPower
	line	157
	
l14041:	
;IHProc.c: 156: }
;IHProc.c: 157: if(Flag1_Error.one.b1 ){
	btfss	(_Flag1_Error),1	;volatile
	goto	u6091
	goto	u6090
u6091:
	goto	l14047
u6090:
	line	158
	
l14043:	
;IHProc.c: 158: g_cErrStatus = E_VOL_HIGH;
	movlw	low(02h)
	movwf	(_g_cErrStatus)	;volatile
	line	159
	
l14045:	
;IHProc.c: 159: vSetIHPower(POW_0W);
	movlw	low(0)
	fcall	_vSetIHPower
	line	161
	
l14047:	
;IHProc.c: 160: }
;IHProc.c: 161: if(Flag1_Error.one.b2 || Flag1_Error.one.b3){
	btfsc	(_Flag1_Error),2	;volatile
	goto	u6101
	goto	u6100
u6101:
	goto	l14051
u6100:
	
l14049:	
	btfss	(_Flag1_Error),3	;volatile
	goto	u6111
	goto	u6110
u6111:
	goto	l14059
u6110:
	line	162
	
l14051:	
;IHProc.c: 162: s_cIgbtErrCount++;
	bsf	status, 5	;RP0=1, select bank1
	incf	(vErrorProc@s_cIgbtErrCount)^080h,f
	line	163
	
l14053:	
;IHProc.c: 163: if(10<s_cIgbtErrCount)
	movlw	low(0Bh)
	subwf	(vErrorProc@s_cIgbtErrCount)^080h,w
	skipc
	goto	u6121
	goto	u6120
u6121:
	goto	l14061
u6120:
	line	165
	
l14055:	
;IHProc.c: 164: {
;IHProc.c: 165: s_cIgbtErrCount = 10;
	movlw	low(0Ah)
	movwf	(vErrorProc@s_cIgbtErrCount)^080h
	line	166
;IHProc.c: 166: g_cErrStatus = E_NTC_MOS;
	movlw	low(03h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_g_cErrStatus)	;volatile
	line	167
	
l14057:	
;IHProc.c: 167: vSetIHPower(POW_0W);
	movlw	low(0)
	fcall	_vSetIHPower
	goto	l14061
	line	171
	
l14059:	
;IHProc.c: 170: else
;IHProc.c: 171: s_cIgbtErrCount = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(vErrorProc@s_cIgbtErrCount)^080h
	line	173
	
l14061:	
;IHProc.c: 173: if(Flag1_Error.one.b5)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(_Flag1_Error),5	;volatile
	goto	u6131
	goto	u6130
u6131:
	goto	l9092
u6130:
	line	175
	
l14063:	
;IHProc.c: 174: {
;IHProc.c: 175: s_cPanErrCount++;
	bsf	status, 5	;RP0=1, select bank1
	incf	(vErrorProc@s_cPanErrCount)^080h,f
	line	176
	
l14065:	
;IHProc.c: 176: if(10<s_cPanErrCount)
	movlw	low(0Bh)
	subwf	(vErrorProc@s_cPanErrCount)^080h,w
	skipc
	goto	u6141
	goto	u6140
u6141:
	goto	l9098
u6140:
	line	178
	
l14067:	
;IHProc.c: 177: {
;IHProc.c: 178: s_cPanErrCount = 10;
	movlw	low(0Ah)
	movwf	(vErrorProc@s_cPanErrCount)^080h
	line	179
;IHProc.c: 179: g_cErrStatus = E_NTC_TOP_OPEN;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_g_cErrStatus)	;volatile
	line	180
	
l14069:	
;IHProc.c: 180: vSetIHPower(POW_0W);
	movlw	low(0)
	fcall	_vSetIHPower
	goto	l9098
	line	183
	
l9092:	
;IHProc.c: 183: else if(Flag1_Error.one.b6)
	btfss	(_Flag1_Error),6	;volatile
	goto	u6151
	goto	u6150
u6151:
	goto	l14079
u6150:
	line	185
	
l14071:	
;IHProc.c: 184: {
;IHProc.c: 185: s_cPanErrCount++;
	bsf	status, 5	;RP0=1, select bank1
	incf	(vErrorProc@s_cPanErrCount)^080h,f
	line	186
	
l14073:	
;IHProc.c: 186: if(10<s_cPanErrCount)
	movlw	low(0Bh)
	subwf	(vErrorProc@s_cPanErrCount)^080h,w
	skipc
	goto	u6161
	goto	u6160
u6161:
	goto	l9098
u6160:
	line	188
	
l14075:	
;IHProc.c: 187: {
;IHProc.c: 188: s_cPanErrCount = 10;
	movlw	low(0Ah)
	movwf	(vErrorProc@s_cPanErrCount)^080h
	line	189
;IHProc.c: 189: g_cErrStatus = E_NTC_TOP_SHORT;
	movlw	low(05h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_g_cErrStatus)	;volatile
	line	190
	
l14077:	
;IHProc.c: 190: vSetIHPower(POW_0W);
	movlw	low(0)
	fcall	_vSetIHPower
	goto	l9098
	line	194
	
l14079:	
;IHProc.c: 193: else
;IHProc.c: 194: s_cPanErrCount = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(vErrorProc@s_cPanErrCount)^080h
	line	195
	
l9098:	
	return
	opt stack 0
GLOBAL	__end_of_vErrorProc
	__end_of_vErrorProc:
	signat	_vErrorProc,89
	global	_vSetIHPower

;; *************** function _vSetIHPower *****************
;; Defined at:
;;		line 20 in file "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\IHProc.c"
;; Parameters:    Size  Location     Type
;;  pow             1    wreg     enum E1112
;; Auto vars:     Size  Location     Type
;;  pow             1    7[BANK0 ] enum E1112
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 200/100
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_vHeatingStatus
;;		_vGaoyuanBoilingProc
;;		_vHeatingProc
;;		_vTemprProc
;;		_vErrorProc
;; This function uses a non-reentrant model
;;
psect	text74,local,class=CODE,delta=2,merge=1,group=0
	line	20
global __ptext74
__ptext74:	;psect for function _vSetIHPower
psect	text74
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\IHProc.c"
	line	20
	global	__size_of_vSetIHPower
	__size_of_vSetIHPower	equ	__end_of_vSetIHPower-_vSetIHPower
	
_vSetIHPower:	
;incstack = 0
	opt	stack 0
; Regs used in _vSetIHPower: [wreg+status,2+status,0]
;vSetIHPower@pow stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	movwf	(vSetIHPower@pow)
	line	34
	
l12919:	
;IHProc.c: 34: if(pow == POW_0W)
	movf	((vSetIHPower@pow)),w
	btfss	status,2
	goto	u4491
	goto	u4490
u4491:
	goto	l9059
u4490:
	line	36
	
l12921:	
;IHProc.c: 35: {
;IHProc.c: 36: Work_Flag1.one.b0 = 0;
	bcf	(_Work_Flag1),0	;volatile
	line	37
	
l12923:	
;IHProc.c: 37: PowerWork = pow;
	movf	(vSetIHPower@pow),w
	movwf	(_PowerWork)	;volatile
	line	38
	
l12925:	
;IHProc.c: 38: Work_Flag1.one.b1 = 1;
	bsf	(_Work_Flag1),1	;volatile
	line	39
;IHProc.c: 39: }
	goto	l9061
	line	40
	
l9059:	
	line	75
;IHProc.c: 40: else
;IHProc.c: 41: {
;IHProc.c: 75: Work_Flag1.one.b1 = 1;
	bsf	(_Work_Flag1),1	;volatile
	line	76
	
l12927:	
;IHProc.c: 76: PowerWork = pow;
	movf	(vSetIHPower@pow),w
	movwf	(_PowerWork)	;volatile
	line	77
	
l12929:	
;IHProc.c: 77: Work_Flag1.one.b0 = 1;
	bsf	(_Work_Flag1),0	;volatile
	line	99
	
l9061:	
	return
	opt stack 0
GLOBAL	__end_of_vSetIHPower
	__end_of_vSetIHPower:
	signat	_vSetIHPower,4217
	global	_GetDecodeCode

;; *************** function _GetDecodeCode *****************
;; Defined at:
;;		line 5 in file "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\CommRecv.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 200/100
;;		On exit  : 200/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_memset
;; This function is called by:
;;		_RecvDataAnalysis
;; This function uses a non-reentrant model
;;
psect	text75,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\CommRecv.c"
	line	5
global __ptext75
__ptext75:	;psect for function _GetDecodeCode
psect	text75
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\CommRecv.c"
	line	5
	global	__size_of_GetDecodeCode
	__size_of_GetDecodeCode	equ	__end_of_GetDecodeCode-_GetDecodeCode
	
_GetDecodeCode:	
;incstack = 0
	opt	stack 0
; Regs used in _GetDecodeCode: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	7
	
l16323:	
;CommRecv.c: 7: if (1 == g_bDecodeSuccess)
	btfss	(_g_bDecodeSuccess/8),(_g_bDecodeSuccess)&7	;volatile
	goto	u9641
	goto	u9640
u9641:
	goto	l16337
u9640:
	line	9
	
l16325:	
;CommRecv.c: 8: {
;CommRecv.c: 9: g_bDecodeSuccess = 0;
	bcf	(_g_bDecodeSuccess/8),(_g_bDecodeSuccess)&7	;volatile
	line	11
	
l16327:	
;CommRecv.c: 11: g_cReceiveData[3] = g_cDecodeData[3];
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_g_cDecodeData)^080h+03h,w	;volatile
	movwf	0+(_g_cReceiveData)^080h+03h	;volatile
	line	12
;CommRecv.c: 12: g_cReceiveData[2] = g_cDecodeData[2];
	movf	0+(_g_cDecodeData)^080h+02h,w	;volatile
	movwf	0+(_g_cReceiveData)^080h+02h	;volatile
	line	13
;CommRecv.c: 13: g_cReceiveData[1] = g_cDecodeData[1];
	movf	0+(_g_cDecodeData)^080h+01h,w	;volatile
	movwf	0+(_g_cReceiveData)^080h+01h	;volatile
	line	14
;CommRecv.c: 14: g_cReceiveData[0] = g_cDecodeData[0];
	movf	(_g_cDecodeData)^080h,w	;volatile
	movwf	(_g_cReceiveData)^080h	;volatile
	line	16
	
l16329:	
;CommRecv.c: 16: memset(g_cDecodeData, 0, 4);
	movlw	(low(_g_cDecodeData|((0x0)<<8))&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(memset@p1)
	movlw	(0x0)
	movwf	(memset@p1+1)
	clrf	(memset@c)
	clrf	(memset@c+1)
	movlw	04h
	movwf	(memset@n)
	clrf	(memset@n+1)
	fcall	_memset
	line	17
	
l16331:	
;CommRecv.c: 17: return 1;
	setc
	
	goto	l4340
	line	21
	
l16337:	
;CommRecv.c: 19: else
;CommRecv.c: 20: {
;CommRecv.c: 21: return 0;
	clrc
	
	line	23
	
l4340:	
	return
	opt stack 0
GLOBAL	__end_of_GetDecodeCode
	__end_of_GetDecodeCode:
	signat	_GetDecodeCode,88
	global	_memset

;; *************** function _memset *****************
;; Defined at:
;;		line 8 in file "C:\Users\qxl\Desktop\组会信息\高师兄给的资料\CMS_IDE_V2.03.28\CMS_IDE_V2.03.28\data\sources\common\memset.c"
;; Parameters:    Size  Location     Type
;;  p1              2    7[BANK0 ] PTR void 
;;		 -> g_cDecodeData(4), g_cUart1RecvBuff(16), g_cTftCommand(14), 
;;  c               2    9[BANK0 ] int 
;;  n               2   11[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  p               2   13[BANK0 ] PTR unsigned char 
;;		 -> g_cDecodeData(4), g_cUart1RecvBuff(16), g_cTftCommand(14), 
;; Return value:  Size  Location     Type
;;                  2    7[BANK0 ] PTR void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       6       0       0
;;      Locals:         0       2       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       8       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_GetDecodeCode
;;		_vClearDecodingParam
;;		_vSwitchTftPage
;;		_vSwitchImageIcon
;;		_vHideDisplayID
;; This function uses a non-reentrant model
;;
psect	text76,local,class=CODE,delta=2,merge=1,group=3
	file	"C:\Users\qxl\Desktop\组会信息\高师兄给的资料\CMS_IDE_V2.03.28\CMS_IDE_V2.03.28\data\sources\common\memset.c"
	line	8
global __ptext76
__ptext76:	;psect for function _memset
psect	text76
	file	"C:\Users\qxl\Desktop\组会信息\高师兄给的资料\CMS_IDE_V2.03.28\CMS_IDE_V2.03.28\data\sources\common\memset.c"
	line	8
	global	__size_of_memset
	__size_of_memset	equ	__end_of_memset-_memset
	
_memset:	
;incstack = 0
	opt	stack 0
; Regs used in _memset: [wreg-fsr0h+status,2+status,0]
	line	18
	
l16039:	
		movf	(memset@p1),w
	movwf	(memset@p)
movf	(memset@p1+1),w
movwf	(memset@p+1)

	line	19
	goto	l16045
	line	20
	
l16041:	
	movf	(memset@p),w
	movwf	fsr0
	bsf	status,7
	btfss	(memset@p+1),0
	bcf	status,7
	movf	(memset@c),w
	movwf	indf
	
l16043:	
	incf	(memset@p),f
	skipnz
	incf	(memset@p+1),f
	line	19
	
l16045:	
	movlw	01h
	subwf	(memset@n),f
	movlw	0
	skipc
	decf	(memset@n+1),f
	subwf	(memset@n+1),f
		incf	(((memset@n))),w
	skipz
	goto	u9181
	incf	(((memset@n+1))),w
	btfss	status,2
	goto	u9181
	goto	u9180
u9181:
	goto	l16041
u9180:
	line	22
	
l9849:	
	return
	opt stack 0
GLOBAL	__end_of_memset
	__end_of_memset:
	signat	_memset,12409
	global	_Kscan

;; *************** function _Kscan *****************
;; Defined at:
;;		line 104 in file "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  KeyOnOutput     2    7[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       2       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text77,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
	line	104
global __ptext77
__ptext77:	;psect for function _Kscan
psect	text77
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
	line	104
	global	__size_of_Kscan
	__size_of_Kscan	equ	__end_of_Kscan-_Kscan
	
_Kscan:	
;incstack = 0
	opt	stack 2
; Regs used in _Kscan: [wreg-fsr0h+status,2+status,0]
	line	107
	
l14695:	
	line	109
	
l14697:	
;main.c: 109: if (0 < g_cDisableKeyTime)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_g_cDisableKeyTime)),w	;volatile
	btfsc	status,2
	goto	u6901
	goto	u6900
u6901:
	goto	l14701
u6900:
	line	110
	
l14699:	
;main.c: 110: g_cDisableKeyTime--;
	decf	(_g_cDisableKeyTime),f	;volatile
	line	112
	
l14701:	
;main.c: 112: KeyOnOutput = (unsigned int)((_CMS_KeyFlag[1] << 8) | _CMS_KeyFlag[0]);
	movf	0+(__CMS_KeyFlag)+01h,w	;volatile
	movwf	(Kscan@KeyOnOutput+1)
	movf	(__CMS_KeyFlag),w	;volatile
	movwf	(Kscan@KeyOnOutput)
	line	114
;main.c: 114: if (KeyOnOutput)
	movf	((Kscan@KeyOnOutput)),w
iorwf	((Kscan@KeyOnOutput+1)),w
	btfsc	status,2
	goto	u6911
	goto	u6910
u6911:
	goto	l14721
u6910:
	line	116
	
l14703:	
;main.c: 115: {
;main.c: 116: if (KeyOnOutput == KeyOldFlag) return;
	bsf	status, 5	;RP0=1, select bank1
	movf	(Kscan@KeyOldFlag+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	xorwf	(Kscan@KeyOnOutput+1),w
	skipz
	goto	u6925
	bsf	status, 5	;RP0=1, select bank1
	movf	(Kscan@KeyOldFlag)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	xorwf	(Kscan@KeyOnOutput),w
u6925:

	skipz
	goto	u6921
	goto	u6920
u6921:
	goto	l14707
u6920:
	goto	l2009
	line	118
	
l14707:	
;main.c: 118: KeyOldFlag = KeyOnOutput;
	movf	(Kscan@KeyOnOutput+1),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(Kscan@KeyOldFlag+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(Kscan@KeyOnOutput),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(Kscan@KeyOldFlag)^080h
	line	120
	
l14709:	
;main.c: 120: if (0 < g_cDisableKeyTime) return;
	bcf	status, 5	;RP0=0, select bank0
	movf	((_g_cDisableKeyTime)),w	;volatile
	btfsc	status,2
	goto	u6931
	goto	u6930
u6931:
	goto	l14719
u6930:
	goto	l2009
	line	124
;main.c: 123: {
;main.c: 124: case 0x0002:
	
l2012:	
	line	125
;main.c: 125: g_bStartKeyPressed = 1;
	bsf	(_g_bStartKeyPressed/8),(_g_bStartKeyPressed)&7	;volatile
	line	126
	
l14713:	
;main.c: 126: g_cDisableKeyTime = 10;
	movlw	low(0Ah)
	movwf	(_g_cDisableKeyTime)	;volatile
	line	127
;main.c: 127: break;
	goto	l2009
	line	128
;main.c: 128: case 0x0001:
	
l2014:	
	line	129
;main.c: 129: g_bSetKeyPressed = 1;
	bsf	(_g_bSetKeyPressed/8),(_g_bSetKeyPressed)&7	;volatile
	goto	l14713
	line	122
	
l14719:	
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           11     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (Kscan@KeyOnOutput+1),w
	opt asmopt_push
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l17659
	goto	l2009
	opt asmopt_pop
	
l17659:	
; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 1 to 2
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; direct_byte           17    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	movf (Kscan@KeyOnOutput),w
	opt asmopt_push
	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l2014
	xorlw	2^1	; case 2
	skipnz
	goto	l2012
	goto	l2009
	opt asmopt_pop

	line	153
	
l14721:	
;main.c: 151: else
;main.c: 152: {
;main.c: 153: KeyOldFlag = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(Kscan@KeyOldFlag)^080h
	clrf	(Kscan@KeyOldFlag+1)^080h
	line	155
	
l14723:	
;main.c: 155: g_bKeyShortPressed = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(_g_bKeyShortPressed/8),(_g_bKeyShortPressed)&7	;volatile
	line	157
	
l14725:	
;main.c: 157: g_bStartKeyPressed = 0;
	bcf	(_g_bStartKeyPressed/8),(_g_bStartKeyPressed)&7	;volatile
	line	158
	
l14727:	
;main.c: 158: g_bSetKeyPressed = 0;
	bcf	(_g_bSetKeyPressed/8),(_g_bSetKeyPressed)&7	;volatile
	line	164
	
l2009:	
	return
	opt stack 0
GLOBAL	__end_of_Kscan
	__end_of_Kscan:
	signat	_Kscan,89
	global	_Knob_Scan

;; *************** function _Knob_Scan *****************
;; Defined at:
;;		line 98 in file "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\UIProc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_bQueueEn
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text78,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\UIProc.c"
	line	98
global __ptext78
__ptext78:	;psect for function _Knob_Scan
psect	text78
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\UIProc.c"
	line	98
	global	__size_of_Knob_Scan
	__size_of_Knob_Scan	equ	__end_of_Knob_Scan-_Knob_Scan
	
_Knob_Scan:	
;incstack = 0
	opt	stack 0
; Regs used in _Knob_Scan: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	108
	
l15429:	
;UIProc.c: 100: static unsigned char now_state;
;UIProc.c: 101: static unsigned char update_state;
;UIProc.c: 102: static unsigned char knob_last_state;
;UIProc.c: 103: static unsigned char knob_stable_count;
;UIProc.c: 108: KnobA = RC3;
	btfsc	(59/8),(59)&7	;volatile
	goto	u8291
	goto	u8290
	
u8291:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(_KnobA/8),(_KnobA)&7	;volatile
	goto	u8304
u8290:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(_KnobA/8),(_KnobA)&7	;volatile
u8304:
	line	109
;UIProc.c: 109: KnobB = RC4;
	btfsc	(60/8),(60)&7	;volatile
	goto	u8311
	goto	u8310
	
u8311:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(_KnobB/8),(_KnobB)&7	;volatile
	goto	u8324
u8310:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(_KnobB/8),(_KnobB)&7	;volatile
u8324:
	line	110
	
l15431:	
;UIProc.c: 110: now_state = ((unsigned char)KnobA << 1) | (unsigned char)KnobB;
	movlw	0
	btfsc	(_KnobA/8),(_KnobA)&7	;volatile
	movlw	(1 << (01h))
	btfsc	(_KnobB/8),(_KnobB)&7	;volatile
	iorlw	1
	movwf	(Knob_Scan@now_state)
	line	112
;UIProc.c: 112: if (now_state == update_state)
	movf	(Knob_Scan@now_state),w
	bsf	status, 5	;RP0=1, select bank1
	xorwf	(Knob_Scan@update_state)^080h,w
	skipz
	goto	u8331
	goto	u8330
u8331:
	goto	l15459
u8330:
	line	114
	
l15433:	
;UIProc.c: 113: {
;UIProc.c: 114: knob_stable_count++;
	incf	(Knob_Scan@knob_stable_count)^080h,f
	line	115
	
l15435:	
;UIProc.c: 115: if (knob_stable_count >= 2)
	movlw	low(02h)
	subwf	(Knob_Scan@knob_stable_count)^080h,w
	skipc
	goto	u8341
	goto	u8340
u8341:
	goto	l6752
u8340:
	line	117
	
l15437:	
;UIProc.c: 116: {
;UIProc.c: 117: if ((knob_last_state == 0x03 && now_state == 0x02) || (knob_last_state == 0x00 && now_state == 0x01))
		movlw	3
	xorwf	((Knob_Scan@knob_last_state)^080h),w
	btfss	status,2
	goto	u8351
	goto	u8350
u8351:
	goto	l15441
u8350:
	
l15439:	
		movlw	2
	bcf	status, 5	;RP0=0, select bank0
	xorwf	((Knob_Scan@now_state)),w
	btfsc	status,2
	goto	u8361
	goto	u8360
u8361:
	goto	l15445
u8360:
	
l15441:	
	bsf	status, 5	;RP0=1, select bank1
	movf	((Knob_Scan@knob_last_state)^080h),w
	btfss	status,2
	goto	u8371
	goto	u8370
u8371:
	goto	l15447
u8370:
	
l15443:	
	bcf	status, 5	;RP0=0, select bank0
		decf	((Knob_Scan@now_state)),w
	btfss	status,2
	goto	u8381
	goto	u8380
u8381:
	goto	l15447
u8380:
	line	120
	
l15445:	
;UIProc.c: 118: {
;UIProc.c: 120: bQueueEn(IncSKey);
	movlw	low(03h)
	fcall	_bQueueEn
	line	122
	
l15447:	
;UIProc.c: 121: }
;UIProc.c: 122: if ((knob_last_state == 0x02 && now_state == 0x03) || (knob_last_state == 0x01 && now_state == 0x00))
		movlw	2
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	xorwf	((Knob_Scan@knob_last_state)^080h),w
	btfss	status,2
	goto	u8391
	goto	u8390
u8391:
	goto	l15451
u8390:
	
l15449:	
		movlw	3
	bcf	status, 5	;RP0=0, select bank0
	xorwf	((Knob_Scan@now_state)),w
	btfsc	status,2
	goto	u8401
	goto	u8400
u8401:
	goto	l15455
u8400:
	
l15451:	
	bsf	status, 5	;RP0=1, select bank1
		decf	((Knob_Scan@knob_last_state)^080h),w
	btfss	status,2
	goto	u8411
	goto	u8410
u8411:
	goto	l15457
u8410:
	
l15453:	
	bcf	status, 5	;RP0=0, select bank0
	movf	((Knob_Scan@now_state)),w
	btfss	status,2
	goto	u8421
	goto	u8420
u8421:
	goto	l15457
u8420:
	line	125
	
l15455:	
;UIProc.c: 123: {
;UIProc.c: 125: bQueueEn(DecSKey);
	movlw	low(04h)
	fcall	_bQueueEn
	line	127
	
l15457:	
;UIProc.c: 126: }
;UIProc.c: 127: knob_last_state = now_state;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Knob_Scan@now_state),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(Knob_Scan@knob_last_state)^080h
	goto	l6752
	line	132
	
l15459:	
;UIProc.c: 130: else
;UIProc.c: 131: {
;UIProc.c: 132: knob_stable_count = 0;
	clrf	(Knob_Scan@knob_stable_count)^080h
	line	133
	
l15461:	
;UIProc.c: 133: update_state = now_state;
	bcf	status, 5	;RP0=0, select bank0
	movf	(Knob_Scan@now_state),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(Knob_Scan@update_state)^080h
	line	135
	
l6752:	
	return
	opt stack 0
GLOBAL	__end_of_Knob_Scan
	__end_of_Knob_Scan:
	signat	_Knob_Scan,89
	global	_bQueueEn

;; *************** function _bQueueEn *****************
;; Defined at:
;;		line 506 in file "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\StateMachine.c"
;; Parameters:    Size  Location     Type
;;  val             1    wreg     enum E972
;; Auto vars:     Size  Location     Type
;;  val             1   13[BANK0 ] enum E972
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 200/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		___awmod
;; This function is called by:
;;		_vStartKeyProc
;;		_vSettingKeyProc
;;		_vOkKeyProc
;;		_vTimeLoop
;;		_vWaittingStatus
;;		_Knob_Scan
;;		_vHeatingProc
;;		_RecvDataAnalysis
;; This function uses a non-reentrant model
;;
psect	text79,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\StateMachine.c"
	line	506
global __ptext79
__ptext79:	;psect for function _bQueueEn
psect	text79
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\StateMachine.c"
	line	506
	global	__size_of_bQueueEn
	__size_of_bQueueEn	equ	__end_of_bQueueEn-_bQueueEn
	
_bQueueEn:	
;incstack = 0
	opt	stack 0
; Regs used in _bQueueEn: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;bQueueEn@val stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	movwf	(bQueueEn@val)
	line	508
	
l13043:	
;StateMachine.c: 508: if(((g_xActQueue.rear + 1) % 12) == g_xActQueue.front)
	bsf	status, 6	;RP1=1, select bank2
	movf	0+(_g_xActQueue)^0100h+0Dh,w	;volatile
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awmod@dividend)
	clrf	(___awmod@dividend+1)
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	movlw	0Ch
	movwf	(___awmod@divisor)
	clrf	(___awmod@divisor+1)
	fcall	___awmod
	bsf	status, 6	;RP1=1, select bank2
	movf	0+(_g_xActQueue)^0100h+0Ch,w	;volatile
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(0+(?___awmod)),w
	iorwf	(1+(?___awmod)),w
	skipz
	goto	u4701
	goto	u4700
u4701:
	goto	l13047
u4700:
	goto	l5656
	line	512
	
l13047:	
;StateMachine.c: 511: }
;StateMachine.c: 512: g_xActQueue.buf[g_xActQueue.rear] = val;
	bsf	status, 6	;RP1=1, select bank2
	movf	0+(_g_xActQueue)^0100h+0Dh,w	;volatile
	addlw	low(_g_xActQueue|((0x1)<<8))&0ffh
	movwf	fsr0
	bcf	status, 6	;RP1=0, select bank0
	movf	(bQueueEn@val),w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	line	513
	
l13049:	
;StateMachine.c: 513: g_xActQueue.rear = (g_xActQueue.rear + 1) % 12;
	bsf	status, 6	;RP1=1, select bank2
	movf	0+(_g_xActQueue)^0100h+0Dh,w	;volatile
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awmod@dividend)
	clrf	(___awmod@dividend+1)
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	movlw	0Ch
	movwf	(___awmod@divisor)
	clrf	(___awmod@divisor+1)
	fcall	___awmod
	movf	(0+(?___awmod)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	0+(_g_xActQueue)^0100h+0Dh	;volatile
	line	515
	
l5656:	
	return
	opt stack 0
GLOBAL	__end_of_bQueueEn
	__end_of_bQueueEn:
	signat	_bQueueEn,4216
	global	___awmod

;; *************** function ___awmod *****************
;; Defined at:
;;		line 6 in file "C:\Users\qxl\Desktop\组会信息\高师兄给的资料\CMS_IDE_V2.03.28\CMS_IDE_V2.03.28\data\sources\common\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    7[BANK0 ] int 
;;  dividend        2    9[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   12[BANK0 ] unsigned char 
;;  counter         1   11[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    7[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       4       0       0
;;      Locals:         0       2       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       6       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_bQueueEn
;;		_bQueueDe
;; This function uses a non-reentrant model
;;
psect	text80,local,class=CODE,delta=2,merge=1,group=3
	file	"C:\Users\qxl\Desktop\组会信息\高师兄给的资料\CMS_IDE_V2.03.28\CMS_IDE_V2.03.28\data\sources\common\awmod.c"
	line	6
global __ptext80
__ptext80:	;psect for function ___awmod
psect	text80
	file	"C:\Users\qxl\Desktop\组会信息\高师兄给的资料\CMS_IDE_V2.03.28\CMS_IDE_V2.03.28\data\sources\common\awmod.c"
	line	6
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
;incstack = 0
	opt	stack 0
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	13
	
l12947:	
	clrf	(___awmod@sign)
	line	14
	
l12949:	
	btfss	(___awmod@dividend+1),7
	goto	u4521
	goto	u4520
u4521:
	goto	l12955
u4520:
	line	15
	
l12951:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	16
	
l12953:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	line	18
	
l12955:	
	btfss	(___awmod@divisor+1),7
	goto	u4531
	goto	u4530
u4531:
	goto	l12959
u4530:
	line	19
	
l12957:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	line	20
	
l12959:	
	movf	((___awmod@divisor)),w
iorwf	((___awmod@divisor+1)),w
	btfsc	status,2
	goto	u4541
	goto	u4540
u4541:
	goto	l12975
u4540:
	line	21
	
l12961:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	22
	goto	l12965
	line	23
	
l12963:	
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	line	24
	incf	(___awmod@counter),f
	line	22
	
l12965:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u4551
	goto	u4550
u4551:
	goto	l12963
u4550:
	line	27
	
l12967:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u4565
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u4565:
	skipc
	goto	u4561
	goto	u4560
u4561:
	goto	l12971
u4560:
	line	28
	
l12969:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	line	29
	
l12971:	
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	line	30
	
l12973:	
	decfsz	(___awmod@counter),f
	goto	u4571
	goto	u4570
u4571:
	goto	l12967
u4570:
	line	32
	
l12975:	
	movf	((___awmod@sign)),w
	btfsc	status,2
	goto	u4581
	goto	u4580
u4581:
	goto	l12979
u4580:
	line	33
	
l12977:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	34
	
l12979:	
	movf	(___awmod@dividend+1),w
	movwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	movwf	(?___awmod)
	line	35
	
l9628:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
	signat	___awmod,8314
	global	_Init_ram

;; *************** function _Init_ram *****************
;; Defined at:
;;		line 67 in file "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_Set_Usart_Async
;;		_vEnablePWM
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text81,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
	line	67
global __ptext81
__ptext81:	;psect for function _Init_ram
psect	text81
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
	line	67
	global	__size_of_Init_ram
	__size_of_Init_ram	equ	__end_of_Init_ram-_Init_ram
	
_Init_ram:	
;incstack = 0
	opt	stack 1
; Regs used in _Init_ram: [wreg+status,2+status,0+pclath+cstack]
	line	69
	
l14661:	
;main.c: 69: Set_Usart_Async();
	fcall	_Set_Usart_Async
	line	71
# 71 "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
clrwdt ;# 
psect	text81
	line	72
	
l14663:	
;main.c: 72: PIE2 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(141)^080h	;volatile
	line	73
	
l14665:	
;main.c: 73: PIE1 = 0B00000010;
	movlw	low(02h)
	movwf	(140)^080h	;volatile
	line	74
	
l14667:	
;main.c: 74: PR2 = 125;
	movlw	low(07Dh)
	movwf	(146)^080h	;volatile
	line	75
	
l14669:	
;main.c: 75: T2CON = 5;
	movlw	low(05h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(18)	;volatile
	line	76
	
l14671:	
;main.c: 76: INTCON = 0xC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	78
	
l14673:	
;main.c: 78: vEnablePWM();
	fcall	_vEnablePWM
	line	79
	
l1997:	
	return
	opt stack 0
GLOBAL	__end_of_Init_ram
	__end_of_Init_ram:
	signat	_Init_ram,89
	global	_vEnablePWM

;; *************** function _vEnablePWM *****************
;; Defined at:
;;		line 143 in file "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\UIProc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Init_ram
;; This function uses a non-reentrant model
;;
psect	text82,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\UIProc.c"
	line	143
global __ptext82
__ptext82:	;psect for function _vEnablePWM
psect	text82
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\UIProc.c"
	line	143
	global	__size_of_vEnablePWM
	__size_of_vEnablePWM	equ	__end_of_vEnablePWM-_vEnablePWM
	
_vEnablePWM:	
;incstack = 0
	opt	stack 1
; Regs used in _vEnablePWM: [wreg]
	line	145
	
l13593:	
;UIProc.c: 145: PWMCON = 0x55;
	movlw	low(055h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(153)^080h	;volatile
	line	146
;UIProc.c: 146: CCP1CON =0B00001100;
	movlw	low(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(23)	;volatile
	line	147
;UIProc.c: 147: PWM1CYC =199;
	movlw	low(0C7h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(154)^080h	;volatile
	line	148
;UIProc.c: 148: CCPR1L = g_cRedLEDLight;
	bcf	status, 5	;RP0=0, select bank0
	movf	(_g_cRedLEDLight),w	;volatile
	movwf	(21)	;volatile
	line	150
;UIProc.c: 150: CCP2CON =0B00001100;
	movlw	low(0Ch)
	movwf	(29)	;volatile
	line	151
;UIProc.c: 151: PWM2CYC =199;
	movlw	low(0C7h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(155)^080h	;volatile
	line	152
;UIProc.c: 152: CCPR2L = g_cWhiteLEDLight;
	bcf	status, 5	;RP0=0, select bank0
	movf	(_g_cWhiteLEDLight),w	;volatile
	movwf	(27)	;volatile
	line	153
	
l6755:	
	return
	opt stack 0
GLOBAL	__end_of_vEnablePWM
	__end_of_vEnablePWM:
	signat	_vEnablePWM,89
	global	_Set_Usart_Async

;; *************** function _Set_Usart_Async *****************
;; Defined at:
;;		line 36 in file "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Init_ram
;; This function uses a non-reentrant model
;;
psect	text83,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
	line	36
global __ptext83
__ptext83:	;psect for function _Set_Usart_Async
psect	text83
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
	line	36
	global	__size_of_Set_Usart_Async
	__size_of_Set_Usart_Async	equ	__end_of_Set_Usart_Async-_Set_Usart_Async
	
_Set_Usart_Async:	
;incstack = 0
	opt	stack 1
; Regs used in _Set_Usart_Async: [wreg]
	line	39
	
l13555:	
;main.c: 39: SPBRG1 = 103;
	movlw	low(067h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(152)^080h	;volatile
	line	41
	
l13557:	
;main.c: 41: SYNC1 = 0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2300/8)^0100h,(2300)&7	;volatile
	line	42
	
l13559:	
;main.c: 42: SCKP1 = 0;
	bcf	(2299/8)^0100h,(2299)&7	;volatile
	line	44
	
l13561:	
;main.c: 44: SPEN1 = 1;
	bsf	(2095/8)^0100h,(2095)&7	;volatile
	line	45
	
l13563:	
;main.c: 45: RC1IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1129/8)^080h,(1129)&7	;volatile
	line	46
	
l13565:	
;main.c: 46: TX1IE = 0;
	bcf	(1130/8)^080h,(1130)&7	;volatile
	line	47
	
l13567:	
;main.c: 47: RX9EN1 = 0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	bcf	(2094/8)^0100h,(2094)&7	;volatile
	line	48
	
l13569:	
;main.c: 48: TX9EN1 = 0;
	bcf	(2302/8)^0100h,(2302)&7	;volatile
	line	49
	
l13571:	
;main.c: 49: CREN1 = 1;
	bsf	(2092/8)^0100h,(2092)&7	;volatile
	line	50
	
l13573:	
;main.c: 50: TXEN1 = 1;
	bsf	(2301/8)^0100h,(2301)&7	;volatile
	line	53
;main.c: 53: SPBRG0 = 103;
	movlw	low(067h)
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	55
	
l13575:	
;main.c: 55: SYNC0 = 0;
	bcf	(244/8),(244)&7	;volatile
	line	56
	
l13577:	
;main.c: 56: SCKP0 = 0;
	bcf	(243/8),(243)&7	;volatile
	line	58
	
l13579:	
;main.c: 58: SPEN0 = 1;
	bsf	(199/8),(199)&7	;volatile
	line	59
	
l13581:	
;main.c: 59: RC0IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1125/8)^080h,(1125)&7	;volatile
	line	60
	
l13583:	
;main.c: 60: TX0IE = 0;
	bcf	(1124/8)^080h,(1124)&7	;volatile
	line	61
	
l13585:	
;main.c: 61: RX9EN0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(198/8),(198)&7	;volatile
	line	62
	
l13587:	
;main.c: 62: TX9EN0 = 0;
	bcf	(246/8),(246)&7	;volatile
	line	63
	
l13589:	
;main.c: 63: CREN0 = 1;
	bsf	(196/8),(196)&7	;volatile
	line	64
	
l13591:	
;main.c: 64: TXEN0 = 1;
	bsf	(245/8),(245)&7	;volatile
	line	65
	
l1994:	
	return
	opt stack 0
GLOBAL	__end_of_Set_Usart_Async
	__end_of_Set_Usart_Async:
	signat	_Set_Usart_Async,89
	global	_Delay_nms

;; *************** function _Delay_nms *****************
;; Defined at:
;;		line 15 in file "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\delay.c"
;; Parameters:    Size  Location     Type
;;  inittempl       2    9[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  i               2   11[BANK0 ] unsigned int 
;;  gtemp           1   13[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       2       0       0
;;      Locals:         0       3       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       5       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_Delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text84,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\delay.c"
	line	15
global __ptext84
__ptext84:	;psect for function _Delay_nms
psect	text84
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\delay.c"
	line	15
	global	__size_of_Delay_nms
	__size_of_Delay_nms	equ	__end_of_Delay_nms-_Delay_nms
	
_Delay_nms:	
;incstack = 0
	opt	stack 1
; Regs used in _Delay_nms: [wreg+status,2+status,0+pclath+cstack]
	line	20
	
l14619:	
;delay.c: 17: unsigned int i;
;delay.c: 18: unsigned char gtemp;
;delay.c: 20: gtemp=0;
	clrf	(Delay_nms@gtemp)
	line	21
	
l14621:	
;delay.c: 21: if(GIE==1)
	btfss	(95/8),(95)&7	;volatile
	goto	u6861
	goto	u6860
u6861:
	goto	l14625
u6860:
	line	23
	
l14623:	
;delay.c: 22: {
;delay.c: 23: gtemp=1;
	clrf	(Delay_nms@gtemp)
	incf	(Delay_nms@gtemp),f
	line	24
;delay.c: 24: GIE=0;
	bcf	(95/8),(95)&7	;volatile
	line	26
	
l14625:	
;delay.c: 25: }
;delay.c: 26: for(i=0;i<inittempl;i++)
	clrf	(Delay_nms@i)
	clrf	(Delay_nms@i+1)
	goto	l14631
	line	28
	
l14627:	
;delay.c: 27: {
;delay.c: 28: Delay(154);
	movlw	09Ah
	movwf	(Delay@dtemp)
	clrf	(Delay@dtemp+1)
	fcall	_Delay
	line	29
# 29 "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\delay.c"
clrwdt ;# 
psect	text84
	line	26
	
l14629:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(Delay_nms@i),f
	skipnz
	incf	(Delay_nms@i+1),f
	
l14631:	
	movf	(Delay_nms@inittempl+1),w
	subwf	(Delay_nms@i+1),w
	skipz
	goto	u6875
	movf	(Delay_nms@inittempl),w
	subwf	(Delay_nms@i),w
u6875:
	skipc
	goto	u6871
	goto	u6870
u6871:
	goto	l14627
u6870:
	line	31
	
l14633:	
;delay.c: 30: }
;delay.c: 31: if(gtemp==1) GIE=1;
		decf	((Delay_nms@gtemp)),w
	btfss	status,2
	goto	u6881
	goto	u6880
u6881:
	goto	l880
u6880:
	
l14635:	
	bsf	(95/8),(95)&7	;volatile
	line	32
	
l880:	
	return
	opt stack 0
GLOBAL	__end_of_Delay_nms
	__end_of_Delay_nms:
	signat	_Delay_nms,4217
	global	_Delay

;; *************** function _Delay *****************
;; Defined at:
;;		line 8 in file "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\delay.c"
;; Parameters:    Size  Location     Type
;;  dtemp           2    7[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       2       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Delay_nms
;;		_vUart0Send
;;		_vUart1Send
;; This function uses a non-reentrant model
;;
psect	text85,local,class=CODE,delta=2,merge=1,group=0
	line	8
global __ptext85
__ptext85:	;psect for function _Delay
psect	text85
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\delay.c"
	line	8
	global	__size_of_Delay
	__size_of_Delay	equ	__end_of_Delay-_Delay
	
_Delay:	
;incstack = 0
	opt	stack 1
; Regs used in _Delay: [wreg+status,2+status,0]
	line	10
	
l13029:	
;delay.c: 10: while(dtemp--);
	
l13031:	
	movlw	01h
	subwf	(Delay@dtemp),f
	movlw	0
	skipc
	decf	(Delay@dtemp+1),f
	subwf	(Delay@dtemp+1),f
		incf	(((Delay@dtemp))),w
	skipz
	goto	u4671
	incf	(((Delay@dtemp+1))),w
	btfss	status,2
	goto	u4671
	goto	u4670
u4671:
	goto	l13031
u4670:
	line	11
	
l872:	
	return
	opt stack 0
GLOBAL	__end_of_Delay
	__end_of_Delay:
	signat	_Delay,4217
	global	_time0

;; *************** function _time0 *****************
;; Defined at:
;;		line 568 in file "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       4       0       0
;;      Totals:         0       4       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___CMS_GetTouchKeyValue
;;		_vDecodeInTimer
;;		_vIntSendData
;;		_vUart1Recv
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text86,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
	line	568
global __ptext86
__ptext86:	;psect for function _time0
psect	text86
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
	line	568
	global	__size_of_time0
	__size_of_time0	equ	__end_of_time0-_time0
	
_time0:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _time0: [wreg-fsr0h+status,2+status,0+pclath+cstack]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_time0+0)
	movf	fsr0,w
	movwf	(??_time0+1)
	movf	pclath,w
	movwf	(??_time0+2)
	movf	btemp+1,w
	movwf	(??_time0+3)
	ljmp	_time0
psect	text86
	line	570
	
i1l17579:	
;main.c: 570: if (TMR2IF)
	btfss	(97/8),(97)&7	;volatile
	goto	u1150_21
	goto	u1150_20
u1150_21:
	goto	i1l17591
u1150_20:
	line	572
	
i1l17581:	
;main.c: 571: {
;main.c: 572: TMR2IF = 0;
	bcf	(97/8),(97)&7	;volatile
	line	574
	
i1l17583:	
;main.c: 574: g_cT4msCounter++;
	bsf	status, 5	;RP0=1, select bank1
	incf	(_g_cT4msCounter)^080h,f	;volatile
	line	575
	
i1l17585:	
;main.c: 575: __CMS_GetTouchKeyValue();
	fcall	___CMS_GetTouchKeyValue
	line	578
	
i1l17587:	
;main.c: 578: vIntSendData();
	fcall	_vIntSendData
	line	579
	
i1l17589:	
;main.c: 579: vDecodeInTimer();
	fcall	_vDecodeInTimer
	line	582
	
i1l17591:	
;main.c: 580: }
;main.c: 582: vUart1Recv();
	fcall	_vUart1Recv
	line	584
	
i1l2111:	
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_time0+3),w
	movwf	btemp+1
	movf	(??_time0+2),w
	movwf	pclath
	movf	(??_time0+1),w
	movwf	fsr0
	swapf	(??_time0+0)^00h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_time0
	__end_of_time0:
	signat	_time0,89
	global	_vUart1Recv

;; *************** function _vUart1Recv *****************
;; Defined at:
;;		line 484 in file "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  p               1    0[BANK0 ] PTR unsigned char 
;;		 -> STR_1(11), 
;;  sum             1    1[BANK0 ] unsigned char 
;;  temp            1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       3       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_strstr
;;		i1_memset
;; This function is called by:
;;		_time0
;; This function uses a non-reentrant model
;;
psect	text87,local,class=CODE,delta=2,merge=1,group=0
	line	484
global __ptext87
__ptext87:	;psect for function _vUart1Recv
psect	text87
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\main.c"
	line	484
	global	__size_of_vUart1Recv
	__size_of_vUart1Recv	equ	__end_of_vUart1Recv-_vUart1Recv
	
_vUart1Recv:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _vUart1Recv: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	486
	
i1l16951:	
;main.c: 486: if(RC1IF)
	btfss	(105/8),(105)&7	;volatile
	goto	u1036_21
	goto	u1036_20
u1036_21:
	goto	i1l2105
u1036_20:
	line	488
	
i1l16953:	
;main.c: 487: {
;main.c: 488: unsigned char temp = RCREG1;
	bsf	status, 6	;RP1=1, select bank2
	movf	(286)^0100h,w	;volatile
	bcf	status, 6	;RP1=0, select bank0
	movwf	(vUart1Recv@temp)
	line	490
	
i1l16955:	
;main.c: 490: if(s_bRecvBleCmdStart)
	btfss	(_s_bRecvBleCmdStart/8),(_s_bRecvBleCmdStart)&7
	goto	u1037_21
	goto	u1037_20
u1037_21:
	goto	i1l2090
u1037_20:
	line	492
	
i1l16957:	
;main.c: 491: {
;main.c: 492: g_cUart1RecvBuff[s_cUart1RecvPos++] = temp;
	movf	(_s_cUart1RecvPos),w
	addlw	low(_g_cUart1RecvBuff|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	(vUart1Recv@temp),w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
i1l16959:	
	incf	(_s_cUart1RecvPos),f
	line	493
	
i1l16961:	
;main.c: 493: if(3 <= s_cUart1RecvPos)
	movlw	low(03h)
	subwf	(_s_cUart1RecvPos),w
	skipc
	goto	u1038_21
	goto	u1038_20
u1038_21:
	goto	i1l17021
u1038_20:
	line	495
	
i1l16963:	
;main.c: 494: {
;main.c: 495: s_cUart1RecvPos = 0;
	clrf	(_s_cUart1RecvPos)
	line	496
	
i1l16965:	
;main.c: 496: s_bRecvBleCmdStart = 0;
	bcf	(_s_bRecvBleCmdStart/8),(_s_bRecvBleCmdStart)&7
	line	498
	
i1l16967:	
;main.c: 498: unsigned char sum = g_cUart1RecvBuff[0]+g_cUart1RecvBuff[1];
	bsf	status, 6	;RP1=1, select bank2
	movf	(_g_cUart1RecvBuff)^0100h,w	;volatile
	addwf	0+(_g_cUart1RecvBuff)^0100h+01h,w	;volatile
	bcf	status, 6	;RP1=0, select bank0
	movwf	(vUart1Recv@sum)
	line	499
	
i1l16969:	
;main.c: 499: sum = ~sum;
	movlw	low(0FFh)
	xorwf	(vUart1Recv@sum),f
	line	500
	
i1l16971:	
;main.c: 500: if(g_cUart1RecvBuff[2] == sum)
	bsf	status, 6	;RP1=1, select bank2
	movf	0+(_g_cUart1RecvBuff)^0100h+02h,w	;volatile
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(vUart1Recv@sum),w
	skipz
	goto	u1039_21
	goto	u1039_20
u1039_21:
	goto	i1l17021
u1039_20:
	line	503
	
i1l16973:	
;main.c: 501: {
;main.c: 503: g_bBtConectSuccessFlg = 1;
	bsf	(_g_bBtConectSuccessFlg/8),(_g_bBtConectSuccessFlg)&7	;volatile
	line	504
	
i1l16975:	
;main.c: 504: g_cBtConectSuccessTime = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(_g_cBtConectSuccessTime)^080h	;volatile
	line	506
	
i1l16977:	
;main.c: 506: if((g_cUart1RecvBuff[0] & 0x80)==0x00)
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	btfsc	(_g_cUart1RecvBuff)^0100h,(7)&7	;volatile
	goto	u1040_21
	goto	u1040_20
u1040_21:
	goto	i1l2091
u1040_20:
	line	509
	
i1l16979:	
;main.c: 507: {
;main.c: 509: g_xIhProcParam.CurTempr = g_cUart1RecvBuff[1];
	movf	0+(_g_cUart1RecvBuff)^0100h+01h,w	;volatile
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_g_xIhProcParam)	;volatile
	goto	i1l17021
	line	514
	
i1l2091:	
	line	515
;main.c: 512: }
;main.c: 513: }
;main.c: 514: }
;main.c: 515: }
	goto	i1l17021
	line	516
	
i1l2090:	
;main.c: 516: else if(s_bRecvAtCmdStart)
	btfss	(_s_bRecvAtCmdStart/8),(_s_bRecvAtCmdStart)&7
	goto	u1041_21
	goto	u1041_20
u1041_21:
	goto	i1l17005
u1041_20:
	line	518
	
i1l16981:	
;main.c: 517: {
;main.c: 518: g_cUart1RecvBuff[s_cUart1RecvPos++] = temp;
	movf	(_s_cUart1RecvPos),w
	addlw	low(_g_cUart1RecvBuff|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	(vUart1Recv@temp),w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
i1l16983:	
	incf	(_s_cUart1RecvPos),f
	line	521
	
i1l16985:	
;main.c: 521: if(temp == '\n')
		movlw	10
	xorwf	((vUart1Recv@temp)),w
	btfss	status,2
	goto	u1042_21
	goto	u1042_20
u1042_21:
	goto	i1l16999
u1042_20:
	line	523
	
i1l16987:	
;main.c: 522: {
;main.c: 523: if(s_cUart1RecvPos<=14)
	movlw	low(0Fh)
	subwf	(_s_cUart1RecvPos),w
	skipnc
	goto	u1043_21
	goto	u1043_20
u1043_21:
	goto	i1l16997
u1043_20:
	line	525
	
i1l16989:	
;main.c: 524: {
;main.c: 525: char *p = c_pConectSuccess;
	bsf	status, 5	;RP0=1, select bank1
	movf	(_c_pConectSuccess)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(vUart1Recv@p)
	line	527
	
i1l16991:	
;main.c: 527: if((0) != strstr(g_cUart1RecvBuff, p))
	movf	(vUart1Recv@p),w
	movwf	(strstr@s2)
	movlw	(low(_g_cUart1RecvBuff|((0x1)<<8)))&0ffh
	fcall	_strstr
	xorlw	0
	skipnz
	goto	u1044_21
	goto	u1044_20
u1044_21:
	goto	i1l16997
u1044_20:
	line	530
	
i1l16993:	
;main.c: 528: {
;main.c: 530: g_bBtConectSuccessFlg = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(_g_bBtConectSuccessFlg/8),(_g_bBtConectSuccessFlg)&7	;volatile
	line	531
	
i1l16995:	
;main.c: 531: g_cBtConectSuccessTime = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(_g_cBtConectSuccessTime)^080h	;volatile
	line	534
	
i1l16997:	
;main.c: 532: }
;main.c: 533: }
;main.c: 534: s_bRecvAtCmdStart = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(_s_bRecvAtCmdStart/8),(_s_bRecvAtCmdStart)&7
	line	535
;main.c: 535: s_cUart1RecvPos = 0;
	clrf	(_s_cUart1RecvPos)
	line	538
	
i1l16999:	
;main.c: 536: }
;main.c: 538: if(16 <= s_cUart1RecvPos)
	movlw	low(010h)
	subwf	(_s_cUart1RecvPos),w
	skipc
	goto	u1045_21
	goto	u1045_20
u1045_21:
	goto	i1l17021
u1045_20:
	line	540
	
i1l17001:	
;main.c: 539: {
;main.c: 540: s_bRecvAtCmdStart = 0;
	bcf	(_s_bRecvAtCmdStart/8),(_s_bRecvAtCmdStart)&7
	line	541
	
i1l17003:	
;main.c: 541: s_cUart1RecvPos = 0;
	clrf	(_s_cUart1RecvPos)
	goto	i1l17021
	line	546
	
i1l17005:	
;main.c: 544: else
;main.c: 545: {
;main.c: 546: if(temp == 0x55)
		movlw	85
	xorwf	((vUart1Recv@temp)),w
	btfss	status,2
	goto	u1046_21
	goto	u1046_20
u1046_21:
	goto	i1l17013
u1046_20:
	line	548
	
i1l17007:	
;main.c: 547: {
;main.c: 548: s_bRecvBleCmdStart = 1;
	bsf	(_s_bRecvBleCmdStart/8),(_s_bRecvBleCmdStart)&7
	line	549
	
i1l17009:	
;main.c: 549: s_cUart1RecvPos = 0;
	clrf	(_s_cUart1RecvPos)
	line	550
	
i1l17011:	
;main.c: 550: memset(g_cUart1RecvBuff, 0, 16);
	movlw	(low(_g_cUart1RecvBuff|((0x1)<<8))&0ffh)
	movwf	(i1memset@p1)
	movlw	(0x1)
	movwf	(i1memset@p1+1)
	clrf	(i1memset@c)
	clrf	(i1memset@c+1)
	movlw	010h
	movwf	(i1memset@n)
	clrf	(i1memset@n+1)
	fcall	i1_memset
	line	551
;main.c: 551: }
	goto	i1l17021
	line	552
	
i1l17013:	
;main.c: 552: else if(temp == '+')
		movlw	43
	xorwf	((vUart1Recv@temp)),w
	btfss	status,2
	goto	u1047_21
	goto	u1047_20
u1047_21:
	goto	i1l17021
u1047_20:
	line	554
	
i1l17015:	
;main.c: 553: {
;main.c: 554: s_bRecvAtCmdStart = 1;
	bsf	(_s_bRecvAtCmdStart/8),(_s_bRecvAtCmdStart)&7
	goto	i1l17009
	line	559
	
i1l17021:	
;main.c: 557: }
;main.c: 558: }
;main.c: 559: if(OERR1)
	bsf	status, 6	;RP1=1, select bank2
	btfss	(2089/8)^0100h,(2089)&7	;volatile
	goto	u1048_21
	goto	u1048_20
u1048_21:
	goto	i1l2105
u1048_20:
	line	561
	
i1l17023:	
;main.c: 560: {
;main.c: 561: CREN1 = 0;
	bcf	(2092/8)^0100h,(2092)&7	;volatile
	line	562
;main.c: 562: CREN1 = 1;
	bsf	(2092/8)^0100h,(2092)&7	;volatile
	line	565
	
i1l2105:	
	return
	opt stack 0
GLOBAL	__end_of_vUart1Recv
	__end_of_vUart1Recv:
	signat	_vUart1Recv,89
	global	_strstr

;; *************** function _strstr *****************
;; Defined at:
;;		line 4 in file "C:\Users\qxl\Desktop\组会信息\高师兄给的资料\CMS_IDE_V2.03.28\CMS_IDE_V2.03.28\data\sources\common\strstr.c"
;; Parameters:    Size  Location     Type
;;  s1              1    wreg     PTR const unsigned char 
;;		 -> NULL(0), g_cUart1RecvBuff(16), 
;;  s2              1   11[COMMON] PTR const unsigned char 
;;		 -> STR_1(11), 
;; Auto vars:     Size  Location     Type
;;  s1              1   12[COMMON] PTR const unsigned char 
;;		 -> NULL(0), g_cUart1RecvBuff(16), 
;; Return value:  Size  Location     Type
;;                  1    wreg      PTR unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/800
;;		On exit  : 800/800
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         1       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_strchr
;;		_strlen
;;		_strncmp
;; This function is called by:
;;		_vUart1Recv
;; This function uses a non-reentrant model
;;
psect	text88,local,class=CODE,delta=2,merge=1,group=3
	file	"C:\Users\qxl\Desktop\组会信息\高师兄给的资料\CMS_IDE_V2.03.28\CMS_IDE_V2.03.28\data\sources\common\strstr.c"
	line	4
global __ptext88
__ptext88:	;psect for function _strstr
psect	text88
	file	"C:\Users\qxl\Desktop\组会信息\高师兄给的资料\CMS_IDE_V2.03.28\CMS_IDE_V2.03.28\data\sources\common\strstr.c"
	line	4
	global	__size_of_strstr
	__size_of_strstr	equ	__end_of_strstr-_strstr
	
_strstr:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _strstr: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;strstr@s1 stored from wreg
	movwf	(strstr@s1)
	line	6
	
i1l13621:	
	goto	i1l13631
	line	7
	
i1l13623:	
	movf	(strstr@s2),w
	movwf	(strncmp@s2)
	movf	(strstr@s2),w
	fcall	_strlen
	movf	(1+(?_strlen)),w
	movwf	(strncmp@len+1)
	movf	(0+(?_strlen)),w
	movwf	(strncmp@len)
	movf	(strstr@s1),w
	fcall	_strncmp
	movf	((0+(?_strncmp))),w
iorwf	((1+(?_strncmp))),w
	btfss	status,2
	goto	u559_21
	goto	u559_20
u559_21:
	goto	i1l13629
u559_20:
	line	8
	
i1l13625:	
	movf	(strstr@s1),w
	goto	i1l9861
	line	9
	
i1l13629:	
	movf	(strstr@s2),w
	movwf	fsr0
	fcall	stringdir
	movwf	(strchr@chr)
	clrf	(strchr@chr+1)
	movf	(strstr@s1),w
	addlw	01h
	fcall	_strchr
	movwf	(strstr@s1)
	line	6
	
i1l13631:	
	movf	((strstr@s1)),w
	btfsc	status,2
	goto	u560_21
	goto	u560_20
u560_21:
	goto	i1l13635
u560_20:
	
i1l13633:	
	movf	(strstr@s1),w
	movwf	fsr0
	movf	(indf),w
	btfss	status,2
	goto	u561_21
	goto	u561_20
u561_21:
	goto	i1l13623
u561_20:
	line	11
	
i1l13635:	
	movlw	low(0)
	line	12
	
i1l9861:	
	return
	opt stack 0
GLOBAL	__end_of_strstr
	__end_of_strstr:
	signat	_strstr,8313
	global	_strncmp

;; *************** function _strncmp *****************
;; Defined at:
;;		line 4 in file "C:\Users\qxl\Desktop\组会信息\高师兄给的资料\CMS_IDE_V2.03.28\CMS_IDE_V2.03.28\data\sources\common\strncmp.c"
;; Parameters:    Size  Location     Type
;;  s1              1    wreg     PTR const unsigned char 
;;		 -> NULL(0), g_cUart1RecvBuff(16), 
;;  s2              1    5[COMMON] PTR const unsigned char 
;;		 -> STR_1(11), 
;;  len             2    6[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  s1              1   10[COMMON] PTR const unsigned char 
;;		 -> NULL(0), g_cUart1RecvBuff(16), 
;; Return value:  Size  Location     Type
;;                  2    5[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath
;; Tracked objects:
;;		On entry : 800/800
;;		On exit  : 800/800
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         3       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          2       0       0       0
;;      Totals:         6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_strstr
;; This function uses a non-reentrant model
;;
psect	text89,local,class=CODE,delta=2,merge=1,group=3
	file	"C:\Users\qxl\Desktop\组会信息\高师兄给的资料\CMS_IDE_V2.03.28\CMS_IDE_V2.03.28\data\sources\common\strncmp.c"
	line	4
global __ptext89
__ptext89:	;psect for function _strncmp
psect	text89
	file	"C:\Users\qxl\Desktop\组会信息\高师兄给的资料\CMS_IDE_V2.03.28\CMS_IDE_V2.03.28\data\sources\common\strncmp.c"
	line	4
	global	__size_of_strncmp
	__size_of_strncmp	equ	__end_of_strncmp-_strncmp
	
_strncmp:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _strncmp: [wreg-fsr0h+status,2+status,0+pclath]
;strncmp@s1 stored from wreg
	movwf	(strncmp@s1)
	line	6
	
i1l13517:	
	goto	i1l13529
	line	7
	
i1l13519:	
	movf	(strncmp@s1),w
	movwf	fsr0
	movf	(indf),w
	btfsc	status,2
	goto	u545_21
	goto	u545_20
u545_21:
	goto	i1l13523
u545_20:
	
i1l13521:	
	movf	(strncmp@s2),w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_strncmp+0)+0
	movf	(strncmp@s1),w
	movwf	fsr0
	movf	indf,w
	xorwf	(??_strncmp+0)+0,w
	skipnz
	goto	u546_21
	goto	u546_20
u546_21:
	goto	i1l13527
u546_20:
	line	8
	
i1l13523:	
	movf	(strncmp@s2),w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_strncmp+0)+0
	movf	(strncmp@s1),w
	movwf	fsr0
	movf	indf,w
	movwf	(??_strncmp+1)+0
	movf	(??_strncmp+0)+0,w
	subwf	(??_strncmp+1)+0,w
	movwf	(?_strncmp)
	clrf	(?_strncmp)+1
	skipc
	decf	1+(?_strncmp),f
	
	goto	i1l9884
	line	10
	
i1l13527:	
	incf	(strncmp@s1),f
	line	11
	incf	(strncmp@s2),f
	line	6
	
i1l13529:	
	movlw	01h
	subwf	(strncmp@len),f
	movlw	0
	skipc
	decf	(strncmp@len+1),f
	subwf	(strncmp@len+1),f
		incf	(((strncmp@len))),w
	skipz
	goto	u547_21
	incf	(((strncmp@len+1))),w
	btfss	status,2
	goto	u547_21
	goto	u547_20
u547_21:
	goto	i1l13519
u547_20:
	line	13
	
i1l13531:	
	clrf	(?_strncmp)
	clrf	(?_strncmp+1)
	line	14
	
i1l9884:	
	return
	opt stack 0
GLOBAL	__end_of_strncmp
	__end_of_strncmp:
	signat	_strncmp,12410
	global	_strlen

;; *************** function _strlen *****************
;; Defined at:
;;		line 4 in file "C:\Users\qxl\Desktop\组会信息\高师兄给的资料\CMS_IDE_V2.03.28\CMS_IDE_V2.03.28\data\sources\common\strlen.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> STR_1(11), 
;; Auto vars:     Size  Location     Type
;;  s               1    3[COMMON] PTR const unsigned char 
;;		 -> STR_1(11), 
;;  cp              1    4[COMMON] PTR const unsigned char 
;;		 -> STR_1(11), 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath
;; Tracked objects:
;;		On entry : 800/800
;;		On exit  : 800/800
;;		Unchanged: 800/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         3       0       0       0
;;      Locals:         2       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_strstr
;; This function uses a non-reentrant model
;;
psect	text90,local,class=CODE,delta=2,merge=1,group=3
	file	"C:\Users\qxl\Desktop\组会信息\高师兄给的资料\CMS_IDE_V2.03.28\CMS_IDE_V2.03.28\data\sources\common\strlen.c"
	line	4
global __ptext90
__ptext90:	;psect for function _strlen
psect	text90
	file	"C:\Users\qxl\Desktop\组会信息\高师兄给的资料\CMS_IDE_V2.03.28\CMS_IDE_V2.03.28\data\sources\common\strlen.c"
	line	4
	global	__size_of_strlen
	__size_of_strlen	equ	__end_of_strlen-_strlen
	
_strlen:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _strlen: [wreg-fsr0h+status,2+status,0+pclath]
;strlen@s stored from wreg
	movwf	(strlen@s)
	line	8
	
i1l13507:	
	movf	(strlen@s),w
	movwf	(strlen@cp)
	line	9
	goto	i1l13511
	line	10
	
i1l13509:	
	incf	(strlen@cp),f
	line	9
	
i1l13511:	
	movf	(strlen@cp),w
	movwf	fsr0
	fcall	stringdir
	xorlw	0
	skipz
	goto	u544_21
	goto	u544_20
u544_21:
	goto	i1l13509
u544_20:
	line	12
	
i1l13513:	
	movf	(strlen@s),w
	subwf	(strlen@cp),w
	movwf	(?_strlen)
	clrf	(?_strlen+1)
	btfsc	(?_strlen),7
	decf	(?_strlen+1),f
	line	13
	
i1l9876:	
	return
	opt stack 0
GLOBAL	__end_of_strlen
	__end_of_strlen:
	signat	_strlen,4218
	global	_strchr

;; *************** function _strchr *****************
;; Defined at:
;;		line 4 in file "C:\Users\qxl\Desktop\组会信息\高师兄给的资料\CMS_IDE_V2.03.28\CMS_IDE_V2.03.28\data\sources\common\strchr.c"
;; Parameters:    Size  Location     Type
;;  ptr             1    wreg     PTR const unsigned char 
;;		 -> NULL(0), g_cUart1RecvBuff(16), 
;;  chr             2    0[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  ptr             1    2[COMMON] PTR const unsigned char 
;;		 -> NULL(0), g_cUart1RecvBuff(16), 
;; Return value:  Size  Location     Type
;;                  1    wreg      PTR unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 800/800
;;		On exit  : 800/800
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         2       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_strstr
;; This function uses a non-reentrant model
;;
psect	text91,local,class=CODE,delta=2,merge=1,group=3
	file	"C:\Users\qxl\Desktop\组会信息\高师兄给的资料\CMS_IDE_V2.03.28\CMS_IDE_V2.03.28\data\sources\common\strchr.c"
	line	4
global __ptext91
__ptext91:	;psect for function _strchr
psect	text91
	file	"C:\Users\qxl\Desktop\组会信息\高师兄给的资料\CMS_IDE_V2.03.28\CMS_IDE_V2.03.28\data\sources\common\strchr.c"
	line	4
	global	__size_of_strchr
	__size_of_strchr	equ	__end_of_strchr-_strchr
	
_strchr:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _strchr: [wreg-fsr0h+status,2+status,0]
;strchr@ptr stored from wreg
	movwf	(strchr@ptr)
	line	6
	
i1l9867:	
	line	7
	
i1l13535:	
	movf	(strchr@ptr),w
	movwf	fsr0
	movf	indf,w
	xorwf	(strchr@chr),w
	skipz
	goto	u548_21
	goto	u548_20
u548_21:
	goto	i1l13541
u548_20:
	line	8
	
i1l13537:	
	movf	(strchr@ptr),w
	goto	i1l9869
	line	9
	
i1l13541:	
	movf	(strchr@ptr),w
	incf	(strchr@ptr),f
	movwf	fsr0
	movf	(indf),w
	btfss	status,2
	goto	u549_21
	goto	u549_20
u549_21:
	goto	i1l9867
u549_20:
	line	10
	
i1l13543:	
	movlw	low(0)
	line	11
	
i1l9869:	
	return
	opt stack 0
GLOBAL	__end_of_strchr
	__end_of_strchr:
	signat	_strchr,8313
	global	_vIntSendData

;; *************** function _vIntSendData *****************
;; Defined at:
;;		line 130 in file "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\CommSend.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/300
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_time0
;; This function uses a non-reentrant model
;;
psect	text92,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\CommSend.c"
	line	130
global __ptext92
__ptext92:	;psect for function _vIntSendData
psect	text92
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\CommSend.c"
	line	130
	global	__size_of_vIntSendData
	__size_of_vIntSendData	equ	__end_of_vIntSendData-_vIntSendData
	
_vIntSendData:	
;incstack = 0
	opt	stack 1
; Regs used in _vIntSendData: [wreg+status,2+status,0]
	line	135
	
i1l15037:	
;CommSend.c: 132: static unsigned char s_cSendCmdTimCount = 0;
;CommSend.c: 133: static unsigned char s_cSendCmdBitCount = 0;
;CommSend.c: 135: if (g_bIsAllowedGetData)
	btfss	(_g_bIsAllowedGetData/8),(_g_bIsAllowedGetData)&7	;volatile
	goto	u744_21
	goto	u744_20
u744_21:
	goto	i1l3274
u744_20:
	line	137
	
i1l15039:	
;CommSend.c: 136: {
;CommSend.c: 137: if (g_bSendCmdHead)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_g_bSendCmdHead/8),(_g_bSendCmdHead)&7	;volatile
	goto	u745_21
	goto	u745_20
u745_21:
	goto	i1l3258
u745_20:
	line	139
	
i1l15041:	
;CommSend.c: 138: {
;CommSend.c: 139: RA1 = 1;
	bsf	(41/8),(41)&7	;volatile
	line	140
	
i1l15043:	
;CommSend.c: 140: s_cSendCmdTimCount++;
	incf	(vIntSendData@s_cSendCmdTimCount),f
	line	141
	
i1l15045:	
;CommSend.c: 141: if (s_cSendCmdTimCount >= 80)
	movlw	low(050h)
	subwf	(vIntSendData@s_cSendCmdTimCount),w
	skipc
	goto	u746_21
	goto	u746_20
u746_21:
	goto	i1l3274
u746_20:
	line	143
	
i1l15047:	
;CommSend.c: 142: {
;CommSend.c: 143: s_cSendCmdTimCount = 0;
	clrf	(vIntSendData@s_cSendCmdTimCount)
	line	144
	
i1l15049:	
;CommSend.c: 144: g_bSendCmdHead = 0;
	bcf	(_g_bSendCmdHead/8),(_g_bSendCmdHead)&7	;volatile
	line	145
	
i1l15051:	
;CommSend.c: 145: g_bSendCmdBody = 1;
	bsf	(_g_bSendCmdBody/8),(_g_bSendCmdBody)&7	;volatile
	goto	i1l3274
	line	146
	
i1l3259:	
	line	147
;CommSend.c: 146: }
;CommSend.c: 147: }
	goto	i1l3274
	line	148
	
i1l3258:	
;CommSend.c: 148: else if(g_bSendCmdBody)
	btfss	(_g_bSendCmdBody/8),(_g_bSendCmdBody)&7	;volatile
	goto	u747_21
	goto	u747_20
u747_21:
	goto	i1l3261
u747_20:
	line	150
	
i1l15053:	
;CommSend.c: 149: {
;CommSend.c: 150: s_cSendCmdTimCount++;
	incf	(vIntSendData@s_cSendCmdTimCount),f
	line	151
	
i1l15055:	
;CommSend.c: 151: if (g_lSendData & 0x80000000)
	bsf	status, 5	;RP0=1, select bank1
	btfss	(_g_lSendData+3)^080h,(31)&7	;volatile
	goto	u748_21
	goto	u748_20
u748_21:
	goto	i1l15079
u748_20:
	line	153
	
i1l15057:	
;CommSend.c: 152: {
;CommSend.c: 153: if (s_cSendCmdTimCount == 1) { RA1 = 0; }
	bcf	status, 5	;RP0=0, select bank0
		decf	((vIntSendData@s_cSendCmdTimCount)),w
	btfss	status,2
	goto	u749_21
	goto	u749_20
u749_21:
	goto	i1l15061
u749_20:
	
i1l15059:	
	bcf	(41/8),(41)&7	;volatile
	line	154
	
i1l15061:	
;CommSend.c: 154: if (s_cSendCmdTimCount == 13) { RA1 = 1; }
		movlw	13
	xorwf	((vIntSendData@s_cSendCmdTimCount)),w
	btfss	status,2
	goto	u750_21
	goto	u750_20
u750_21:
	goto	i1l15065
u750_20:
	
i1l15063:	
	bsf	(41/8),(41)&7	;volatile
	line	155
	
i1l15065:	
;CommSend.c: 155: if (s_cSendCmdTimCount >= 16)
	movlw	low(010h)
	subwf	(vIntSendData@s_cSendCmdTimCount),w
	skipc
	goto	u751_21
	goto	u751_20
u751_21:
	goto	i1l3274
u751_20:
	line	157
	
i1l15067:	
;CommSend.c: 156: {
;CommSend.c: 157: s_cSendCmdTimCount = 0;
	clrf	(vIntSendData@s_cSendCmdTimCount)
	line	158
	
i1l15069:	
;CommSend.c: 158: g_lSendData = g_lSendData << 1;
	clrc
	bsf	status, 5	;RP0=1, select bank1
	rlf	(_g_lSendData)^080h,f	;volatile
	rlf	(_g_lSendData+1)^080h,f	;volatile
	rlf	(_g_lSendData+2)^080h,f	;volatile
	rlf	(_g_lSendData+3)^080h,f	;volatile
	line	160
	
i1l15071:	
;CommSend.c: 160: s_cSendCmdBitCount++;
	incf	(vIntSendData@s_cSendCmdBitCount)^080h,f
	line	161
	
i1l15073:	
;CommSend.c: 161: if (s_cSendCmdBitCount >= 32)
	movlw	low(020h)
	subwf	(vIntSendData@s_cSendCmdBitCount)^080h,w
	skipc
	goto	u752_21
	goto	u752_20
u752_21:
	goto	i1l3259
u752_20:
	line	163
	
i1l15075:	
;CommSend.c: 162: {
;CommSend.c: 163: s_cSendCmdBitCount = 0;
	clrf	(vIntSendData@s_cSendCmdBitCount)^080h
	line	164
	
i1l15077:	
;CommSend.c: 164: g_bSendCmdBody = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(_g_bSendCmdBody/8),(_g_bSendCmdBody)&7	;volatile
	goto	i1l3274
	line	171
	
i1l15079:	
;CommSend.c: 169: else
;CommSend.c: 170: {
;CommSend.c: 171: if (s_cSendCmdTimCount == 1) { RA1 = 0; }
	bcf	status, 5	;RP0=0, select bank0
		decf	((vIntSendData@s_cSendCmdTimCount)),w
	btfss	status,2
	goto	u753_21
	goto	u753_20
u753_21:
	goto	i1l15083
u753_20:
	
i1l15081:	
	bcf	(41/8),(41)&7	;volatile
	line	172
	
i1l15083:	
;CommSend.c: 172: if (s_cSendCmdTimCount == 5) { RA1 = 1; }
		movlw	5
	xorwf	((vIntSendData@s_cSendCmdTimCount)),w
	btfss	status,2
	goto	u754_21
	goto	u754_20
u754_21:
	goto	i1l15087
u754_20:
	
i1l15085:	
	bsf	(41/8),(41)&7	;volatile
	line	173
	
i1l15087:	
;CommSend.c: 173: if (s_cSendCmdTimCount >= 16)
	movlw	low(010h)
	subwf	(vIntSendData@s_cSendCmdTimCount),w
	skipc
	goto	u755_21
	goto	u755_20
u755_21:
	goto	i1l3274
u755_20:
	line	175
	
i1l15089:	
;CommSend.c: 174: {
;CommSend.c: 175: s_cSendCmdTimCount = 0;
	clrf	(vIntSendData@s_cSendCmdTimCount)
	line	176
	
i1l15091:	
;CommSend.c: 176: g_lSendData = g_lSendData << 1;
	clrc
	bsf	status, 5	;RP0=1, select bank1
	rlf	(_g_lSendData)^080h,f	;volatile
	rlf	(_g_lSendData+1)^080h,f	;volatile
	rlf	(_g_lSendData+2)^080h,f	;volatile
	rlf	(_g_lSendData+3)^080h,f	;volatile
	line	178
	
i1l15093:	
;CommSend.c: 178: s_cSendCmdBitCount++;
	incf	(vIntSendData@s_cSendCmdBitCount)^080h,f
	line	179
	
i1l15095:	
;CommSend.c: 179: if (s_cSendCmdBitCount >= 32)
	movlw	low(020h)
	subwf	(vIntSendData@s_cSendCmdBitCount)^080h,w
	skipc
	goto	u756_21
	goto	u756_20
u756_21:
	goto	i1l3259
u756_20:
	goto	i1l15075
	line	188
	
i1l3261:	
	line	190
;CommSend.c: 188: else
;CommSend.c: 189: {
;CommSend.c: 190: RA1 = 0;
	bcf	(41/8),(41)&7	;volatile
	line	191
	
i1l15101:	
;CommSend.c: 191: s_cSendCmdTimCount++;
	incf	(vIntSendData@s_cSendCmdTimCount),f
	line	192
	
i1l15103:	
;CommSend.c: 192: if (s_cSendCmdTimCount > 3)
	movlw	low(04h)
	subwf	(vIntSendData@s_cSendCmdTimCount),w
	skipc
	goto	u757_21
	goto	u757_20
u757_21:
	goto	i1l3259
u757_20:
	line	194
	
i1l15105:	
;CommSend.c: 193: {
;CommSend.c: 194: s_cSendCmdTimCount = 0;
	clrf	(vIntSendData@s_cSendCmdTimCount)
	line	195
	
i1l15107:	
;CommSend.c: 195: g_bIsAllowedGetData = 0;
	bcf	(_g_bIsAllowedGetData/8),(_g_bIsAllowedGetData)&7	;volatile
	line	196
	
i1l15109:	
;CommSend.c: 196: g_bIsAllowedCopyData = 1;
	bsf	(_g_bIsAllowedCopyData/8),(_g_bIsAllowedCopyData)&7	;volatile
	line	197
	
i1l15111:	
;CommSend.c: 197: g_bSendCmdHead = 1;
	bsf	(_g_bSendCmdHead/8),(_g_bSendCmdHead)&7	;volatile
	goto	i1l15077
	line	202
	
i1l3274:	
	return
	opt stack 0
GLOBAL	__end_of_vIntSendData
	__end_of_vIntSendData:
	signat	_vIntSendData,89
	global	_vDecodeInTimer

;; *************** function _vDecodeInTimer *****************
;; Defined at:
;;		line 69 in file "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\CommRecv.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/300
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		i1_memset
;;		i1_vClearDecodingParam
;; This function is called by:
;;		_time0
;; This function uses a non-reentrant model
;;
psect	text93,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\CommRecv.c"
	line	69
global __ptext93
__ptext93:	;psect for function _vDecodeInTimer
psect	text93
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\CommRecv.c"
	line	69
	global	__size_of_vDecodeInTimer
	__size_of_vDecodeInTimer	equ	__end_of_vDecodeInTimer-_vDecodeInTimer
	
_vDecodeInTimer:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _vDecodeInTimer: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	72
	
i1l17025:	
;CommRecv.c: 72: if(RA0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(40/8),(40)&7	;volatile
	goto	u1049_21
	goto	u1049_20
u1049_21:
	goto	i1l17031
u1049_20:
	line	74
	
i1l17027:	
;CommRecv.c: 73: {
;CommRecv.c: 74: g_cDecodePinHcnt++;
	incf	(_g_cDecodePinHcnt),f	;volatile
	line	75
	
i1l17029:	
;CommRecv.c: 75: g_bCurrPinValue = 1;
	bsf	(_g_bCurrPinValue/8),(_g_bCurrPinValue)&7	;volatile
	line	76
;CommRecv.c: 76: }
	goto	i1l17035
	line	79
	
i1l17031:	
;CommRecv.c: 77: else
;CommRecv.c: 78: {
;CommRecv.c: 79: g_cDecodePinLcnt++;
	bsf	status, 5	;RP0=1, select bank1
	incf	(_g_cDecodePinLcnt)^080h,f	;volatile
	line	80
	
i1l17033:	
;CommRecv.c: 80: g_bCurrPinValue = 0;
	bcf	(_g_bCurrPinValue/8),(_g_bCurrPinValue)&7	;volatile
	line	83
	
i1l17035:	
;CommRecv.c: 81: }
;CommRecv.c: 83: PinHigh2Low = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(_PinHigh2Low/8),(_PinHigh2Low)&7	;volatile
	line	84
	
i1l17037:	
;CommRecv.c: 84: PinLow2High = 0;
	bcf	(_PinLow2High/8),(_PinLow2High)&7	;volatile
	line	85
	
i1l17039:	
;CommRecv.c: 85: if(g_bCurrPinValue == 0 && g_bPrevPinValue == 1)
	btfsc	(_g_bCurrPinValue/8),(_g_bCurrPinValue)&7	;volatile
	goto	u1050_21
	goto	u1050_20
u1050_21:
	goto	i1l4356
u1050_20:
	
i1l17041:	
	btfss	(_g_bPrevPinValue/8),(_g_bPrevPinValue)&7	;volatile
	goto	u1051_21
	goto	u1051_20
u1051_21:
	goto	i1l4356
u1051_20:
	line	87
	
i1l17043:	
;CommRecv.c: 86: {
;CommRecv.c: 87: PinHigh2Low = 1;
	bsf	(_PinHigh2Low/8),(_PinHigh2Low)&7	;volatile
	line	88
	
i1l17045:	
;CommRecv.c: 88: g_cDecodePinLcnt = 1;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_g_cDecodePinLcnt)^080h	;volatile
	line	89
;CommRecv.c: 89: }
	goto	i1l17053
	line	90
	
i1l4356:	
;CommRecv.c: 90: else if(g_bCurrPinValue == 1 && g_bPrevPinValue == 0)
	btfss	(_g_bCurrPinValue/8),(_g_bCurrPinValue)&7	;volatile
	goto	u1052_21
	goto	u1052_20
u1052_21:
	goto	i1l17053
u1052_20:
	
i1l17047:	
	btfsc	(_g_bPrevPinValue/8),(_g_bPrevPinValue)&7	;volatile
	goto	u1053_21
	goto	u1053_20
u1053_21:
	goto	i1l17053
u1053_20:
	line	92
	
i1l17049:	
;CommRecv.c: 91: {
;CommRecv.c: 92: PinLow2High = 1;
	bsf	(_PinLow2High/8),(_PinLow2High)&7	;volatile
	line	93
	
i1l17051:	
;CommRecv.c: 93: g_cDecodePinHcnt = 1;
	movlw	low(01h)
	movwf	(_g_cDecodePinHcnt)	;volatile
	line	97
	
i1l17053:	
;CommRecv.c: 94: }
;CommRecv.c: 97: if(g_bDecodBody == 1)
	btfss	(_g_bDecodBody/8),(_g_bDecodBody)&7	;volatile
	goto	u1054_21
	goto	u1054_20
u1054_21:
	goto	i1l4359
u1054_20:
	line	111
	
i1l17055:	
;CommRecv.c: 98: {
;CommRecv.c: 111: if(PinHigh2Low == 1)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(_PinHigh2Low/8),(_PinHigh2Low)&7	;volatile
	goto	u1055_21
	goto	u1055_20
u1055_21:
	goto	i1l17125
u1055_20:
	line	113
	
i1l17057:	
;CommRecv.c: 112: {
;CommRecv.c: 113: if((10 < g_cDecodePinHcnt) && (g_cDecodePinHcnt < 14))
	movlw	low(0Bh)
	subwf	(_g_cDecodePinHcnt),w	;volatile
	skipc
	goto	u1056_21
	goto	u1056_20
u1056_21:
	goto	i1l17077
u1056_20:
	
i1l17059:	
	movlw	low(0Eh)
	subwf	(_g_cDecodePinHcnt),w	;volatile
	skipnc
	goto	u1057_21
	goto	u1057_20
u1057_21:
	goto	i1l17077
u1057_20:
	line	117
	
i1l17061:	
;CommRecv.c: 114: {
;CommRecv.c: 117: if(g_cDecodedPosition > 23)
	movlw	low(018h)
	subwf	(_g_cDecodedPosition),w	;volatile
	skipc
	goto	u1058_21
	goto	u1058_20
u1058_21:
	goto	i1l17065
u1058_20:
	line	119
	
i1l17063:	
;CommRecv.c: 118: {
;CommRecv.c: 119: g_cDecodeData[0] |= 0<<(31-g_cDecodedPosition);
	movlw	low(0)
	movwf	(??_vDecodeInTimer+0)+0
	movf	(_g_cDecodedPosition),w	;volatile
	sublw	01Fh
	addlw	1
	goto	u1059_24
u1059_25:
	clrc
	rlf	(??_vDecodeInTimer+0)+0,f
u1059_24:
	addlw	-1
	skipz
	goto	u1059_25
	movf	0+(??_vDecodeInTimer+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(_g_cDecodeData)^080h,f	;volatile
	line	120
;CommRecv.c: 120: }
	goto	i1l17075
	line	121
	
i1l17065:	
;CommRecv.c: 121: else if(g_cDecodedPosition>15)
	movlw	low(010h)
	subwf	(_g_cDecodedPosition),w	;volatile
	skipc
	goto	u1060_21
	goto	u1060_20
u1060_21:
	goto	i1l17069
u1060_20:
	line	123
	
i1l17067:	
;CommRecv.c: 122: {
;CommRecv.c: 123: g_cDecodeData[1] |= 0<<(23-g_cDecodedPosition);
	movlw	low(0)
	movwf	(??_vDecodeInTimer+0)+0
	movf	(_g_cDecodedPosition),w	;volatile
	sublw	017h
	addlw	1
	goto	u1061_24
u1061_25:
	clrc
	rlf	(??_vDecodeInTimer+0)+0,f
u1061_24:
	addlw	-1
	skipz
	goto	u1061_25
	movf	0+(??_vDecodeInTimer+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	iorwf	0+(_g_cDecodeData)^080h+01h,f	;volatile
	line	124
;CommRecv.c: 124: }
	goto	i1l17075
	line	125
	
i1l17069:	
;CommRecv.c: 125: else if(g_cDecodedPosition>7)
	movlw	low(08h)
	subwf	(_g_cDecodedPosition),w	;volatile
	skipc
	goto	u1062_21
	goto	u1062_20
u1062_21:
	goto	i1l17073
u1062_20:
	line	127
	
i1l17071:	
;CommRecv.c: 126: {
;CommRecv.c: 127: g_cDecodeData[2] |= 0<<(15-g_cDecodedPosition);
	movlw	low(0)
	movwf	(??_vDecodeInTimer+0)+0
	movf	(_g_cDecodedPosition),w	;volatile
	sublw	0Fh
	addlw	1
	goto	u1063_24
u1063_25:
	clrc
	rlf	(??_vDecodeInTimer+0)+0,f
u1063_24:
	addlw	-1
	skipz
	goto	u1063_25
	movf	0+(??_vDecodeInTimer+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	iorwf	0+(_g_cDecodeData)^080h+02h,f	;volatile
	line	128
;CommRecv.c: 128: }
	goto	i1l17075
	line	131
	
i1l17073:	
;CommRecv.c: 129: else
;CommRecv.c: 130: {
;CommRecv.c: 131: g_cDecodeData[3] |= 0<<(7-g_cDecodedPosition);
	movlw	low(0)
	movwf	(??_vDecodeInTimer+0)+0
	movf	(_g_cDecodedPosition),w	;volatile
	sublw	07h
	addlw	1
	goto	u1064_24
u1064_25:
	clrc
	rlf	(??_vDecodeInTimer+0)+0,f
u1064_24:
	addlw	-1
	skipz
	goto	u1064_25
	movf	0+(??_vDecodeInTimer+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	iorwf	0+(_g_cDecodeData)^080h+03h,f	;volatile
	line	133
	
i1l17075:	
;CommRecv.c: 132: }
;CommRecv.c: 133: g_cDecodedPosition++;
	bcf	status, 5	;RP0=0, select bank0
	incf	(_g_cDecodedPosition),f	;volatile
	line	134
;CommRecv.c: 134: }
	goto	i1l17099
	line	135
	
i1l17077:	
;CommRecv.c: 135: else if((2 < g_cDecodePinHcnt) && (g_cDecodePinHcnt < 6))
	movlw	low(03h)
	subwf	(_g_cDecodePinHcnt),w	;volatile
	skipc
	goto	u1065_21
	goto	u1065_20
u1065_21:
	goto	i1l17097
u1065_20:
	
i1l17079:	
	movlw	low(06h)
	subwf	(_g_cDecodePinHcnt),w	;volatile
	skipnc
	goto	u1066_21
	goto	u1066_20
u1066_21:
	goto	i1l17097
u1066_20:
	line	139
	
i1l17081:	
;CommRecv.c: 136: {
;CommRecv.c: 139: if(g_cDecodedPosition > 23)
	movlw	low(018h)
	subwf	(_g_cDecodedPosition),w	;volatile
	skipc
	goto	u1067_21
	goto	u1067_20
u1067_21:
	goto	i1l17085
u1067_20:
	line	141
	
i1l17083:	
;CommRecv.c: 140: {
;CommRecv.c: 141: g_cDecodeData[0] |= 1<<(31-g_cDecodedPosition);
	movlw	low(01h)
	movwf	(??_vDecodeInTimer+0)+0
	movf	(_g_cDecodedPosition),w	;volatile
	sublw	01Fh
	addlw	1
	goto	u1068_24
u1068_25:
	clrc
	rlf	(??_vDecodeInTimer+0)+0,f
u1068_24:
	addlw	-1
	skipz
	goto	u1068_25
	movf	0+(??_vDecodeInTimer+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(_g_cDecodeData)^080h,f	;volatile
	line	142
;CommRecv.c: 142: }
	goto	i1l17075
	line	143
	
i1l17085:	
;CommRecv.c: 143: else if(g_cDecodedPosition>15)
	movlw	low(010h)
	subwf	(_g_cDecodedPosition),w	;volatile
	skipc
	goto	u1069_21
	goto	u1069_20
u1069_21:
	goto	i1l17089
u1069_20:
	line	145
	
i1l17087:	
;CommRecv.c: 144: {
;CommRecv.c: 145: g_cDecodeData[1] |= 1<<(23-g_cDecodedPosition);
	movlw	low(01h)
	movwf	(??_vDecodeInTimer+0)+0
	movf	(_g_cDecodedPosition),w	;volatile
	sublw	017h
	addlw	1
	goto	u1070_24
u1070_25:
	clrc
	rlf	(??_vDecodeInTimer+0)+0,f
u1070_24:
	addlw	-1
	skipz
	goto	u1070_25
	movf	0+(??_vDecodeInTimer+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	iorwf	0+(_g_cDecodeData)^080h+01h,f	;volatile
	line	146
;CommRecv.c: 146: }
	goto	i1l17075
	line	147
	
i1l17089:	
;CommRecv.c: 147: else if(g_cDecodedPosition>7)
	movlw	low(08h)
	subwf	(_g_cDecodedPosition),w	;volatile
	skipc
	goto	u1071_21
	goto	u1071_20
u1071_21:
	goto	i1l17093
u1071_20:
	line	149
	
i1l17091:	
;CommRecv.c: 148: {
;CommRecv.c: 149: g_cDecodeData[2] |= 1<<(15-g_cDecodedPosition);
	movlw	low(01h)
	movwf	(??_vDecodeInTimer+0)+0
	movf	(_g_cDecodedPosition),w	;volatile
	sublw	0Fh
	addlw	1
	goto	u1072_24
u1072_25:
	clrc
	rlf	(??_vDecodeInTimer+0)+0,f
u1072_24:
	addlw	-1
	skipz
	goto	u1072_25
	movf	0+(??_vDecodeInTimer+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	iorwf	0+(_g_cDecodeData)^080h+02h,f	;volatile
	line	150
;CommRecv.c: 150: }
	goto	i1l17075
	line	153
	
i1l17093:	
;CommRecv.c: 151: else
;CommRecv.c: 152: {
;CommRecv.c: 153: g_cDecodeData[3] |= 1<<(7-g_cDecodedPosition);
	movlw	low(01h)
	movwf	(??_vDecodeInTimer+0)+0
	movf	(_g_cDecodedPosition),w	;volatile
	sublw	07h
	addlw	1
	goto	u1073_24
u1073_25:
	clrc
	rlf	(??_vDecodeInTimer+0)+0,f
u1073_24:
	addlw	-1
	skipz
	goto	u1073_25
	movf	0+(??_vDecodeInTimer+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	iorwf	0+(_g_cDecodeData)^080h+03h,f	;volatile
	goto	i1l17075
	line	159
	
i1l17097:	
;CommRecv.c: 157: else
;CommRecv.c: 158: {
;CommRecv.c: 159: vClearDecodingParam();
	fcall	i1_vClearDecodingParam
	line	163
	
i1l17099:	
;CommRecv.c: 160: }
;CommRecv.c: 163: if (31 < g_cDecodedPosition)
	movlw	low(020h)
	subwf	(_g_cDecodedPosition),w	;volatile
	skipc
	goto	u1074_21
	goto	u1074_20
u1074_21:
	goto	i1l17125
u1074_20:
	line	165
	
i1l17101:	
;CommRecv.c: 164: {
;CommRecv.c: 165: g_cDecodedPosition = 0;
	clrf	(_g_cDecodedPosition)	;volatile
	line	167
	
i1l17103:	
;CommRecv.c: 167: g_bDecodeSuccess = 1;
	bsf	(_g_bDecodeSuccess/8),(_g_bDecodeSuccess)&7	;volatile
	line	168
;CommRecv.c: 168: g_cDecodePinHcnt = 0;
	clrf	(_g_cDecodePinHcnt)	;volatile
	line	169
;CommRecv.c: 169: g_cDecodePinLcnt = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(_g_cDecodePinLcnt)^080h	;volatile
	line	170
	
i1l17105:	
;CommRecv.c: 170: g_bBitVal0Decoding = 0;
	bcf	(_g_bBitVal0Decoding/8),(_g_bBitVal0Decoding)&7	;volatile
	line	171
	
i1l17107:	
;CommRecv.c: 171: g_bBitVal1Decoding = 0;
	bcf	(_g_bBitVal1Decoding/8),(_g_bBitVal1Decoding)&7	;volatile
	line	172
	
i1l17109:	
;CommRecv.c: 172: g_bDecodBody = 0;
	bcf	(_g_bDecodBody/8),(_g_bDecodBody)&7	;volatile
	goto	i1l17125
	line	176
	
i1l4359:	
	line	178
;CommRecv.c: 176: else
;CommRecv.c: 177: {
;CommRecv.c: 178: if(PinHigh2Low == 1)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(_PinHigh2Low/8),(_PinHigh2Low)&7	;volatile
	goto	u1075_21
	goto	u1075_20
u1075_21:
	goto	i1l17125
u1075_20:
	line	181
	
i1l17111:	
;CommRecv.c: 179: {
;CommRecv.c: 181: if(77 <= g_cDecodePinHcnt)
	movlw	low(04Dh)
	subwf	(_g_cDecodePinHcnt),w	;volatile
	skipc
	goto	u1076_21
	goto	u1076_20
u1076_21:
	goto	i1l17123
u1076_20:
	line	183
	
i1l17113:	
;CommRecv.c: 182: {
;CommRecv.c: 183: g_bDecodeSuccess = 0;
	bcf	(_g_bDecodeSuccess/8),(_g_bDecodeSuccess)&7	;volatile
	line	184
;CommRecv.c: 184: g_bDecodBody = 1;
	bsf	(_g_bDecodBody/8),(_g_bDecodBody)&7	;volatile
	line	185
	
i1l17115:	
;CommRecv.c: 185: g_cDecodePinHcnt = 0;
	clrf	(_g_cDecodePinHcnt)	;volatile
	line	186
	
i1l17117:	
;CommRecv.c: 186: g_cDecodePinLcnt = 1;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_g_cDecodePinLcnt)^080h	;volatile
	line	187
	
i1l17119:	
;CommRecv.c: 187: g_cDecodedPosition = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_g_cDecodedPosition)	;volatile
	line	188
	
i1l17121:	
;CommRecv.c: 188: memset(g_cDecodeData, 0, 4);
	movlw	(low(_g_cDecodeData|((0x0)<<8))&0ffh)
	movwf	(i1memset@p1)
	movlw	(0x0)
	movwf	(i1memset@p1+1)
	clrf	(i1memset@c)
	clrf	(i1memset@c+1)
	movlw	04h
	movwf	(i1memset@n)
	clrf	(i1memset@n+1)
	fcall	i1_memset
	line	189
;CommRecv.c: 189: }
	goto	i1l17125
	line	192
	
i1l17123:	
;CommRecv.c: 190: else
;CommRecv.c: 191: {
;CommRecv.c: 192: g_cDecodePinHcnt = 0;
	clrf	(_g_cDecodePinHcnt)	;volatile
	line	197
	
i1l17125:	
;CommRecv.c: 193: }
;CommRecv.c: 194: }
;CommRecv.c: 195: }
;CommRecv.c: 197: g_bPrevPinValue = g_bCurrPinValue;
	btfsc	(_g_bCurrPinValue/8),(_g_bCurrPinValue)&7	;volatile
	goto	u1077_21
	goto	u1077_20
	
u1077_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(_g_bPrevPinValue/8),(_g_bPrevPinValue)&7	;volatile
	goto	u1078_24
u1077_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(_g_bPrevPinValue/8),(_g_bPrevPinValue)&7	;volatile
u1078_24:
	line	198
	
i1l4382:	
	return
	opt stack 0
GLOBAL	__end_of_vDecodeInTimer
	__end_of_vDecodeInTimer:
	signat	_vDecodeInTimer,89
	global	i1_vClearDecodingParam

;; *************** function i1_vClearDecodingParam *****************
;; Defined at:
;;		line 25 in file "C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\CommRecv.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1_memset
;; This function is called by:
;;		_vDecodeInTimer
;; This function uses a non-reentrant model
;;
psect	text94,local,class=CODE,delta=2,merge=1,group=0
	line	25
global __ptext94
__ptext94:	;psect for function i1_vClearDecodingParam
psect	text94
	file	"C:\Users\qxl\Desktop\公司日常\dcl git\dcl\KeyBoard\CommRecv.c"
	line	25
	global	__size_ofi1_vClearDecodingParam
	__size_ofi1_vClearDecodingParam	equ	__end_ofi1_vClearDecodingParam-i1_vClearDecodingParam
	
i1_vClearDecodingParam:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in i1_vClearDecodingParam: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	27
	
i1l16935:	
;CommRecv.c: 27: g_cDecodePinHcnt = 0;
	clrf	(_g_cDecodePinHcnt)	;volatile
	line	28
;CommRecv.c: 28: g_cDecodePinLcnt = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(_g_cDecodePinLcnt)^080h	;volatile
	line	29
	
i1l16937:	
;CommRecv.c: 29: g_bPrevPinValue = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(_g_bPrevPinValue/8),(_g_bPrevPinValue)&7	;volatile
	line	30
	
i1l16939:	
;CommRecv.c: 30: g_bCurrPinValue = 0;
	bcf	(_g_bCurrPinValue/8),(_g_bCurrPinValue)&7	;volatile
	line	31
	
i1l16941:	
;CommRecv.c: 31: g_bBitVal0Decoding = 0;
	bcf	(_g_bBitVal0Decoding/8),(_g_bBitVal0Decoding)&7	;volatile
	line	32
	
i1l16943:	
;CommRecv.c: 32: g_bBitVal1Decoding = 0;
	bcf	(_g_bBitVal1Decoding/8),(_g_bBitVal1Decoding)&7	;volatile
	line	34
	
i1l16945:	
;CommRecv.c: 34: g_bDecodBody = 0;
	bcf	(_g_bDecodBody/8),(_g_bDecodBody)&7	;volatile
	line	35
;CommRecv.c: 35: g_cDecodedPosition = 0;
	clrf	(_g_cDecodedPosition)	;volatile
	line	36
	
i1l16947:	
;CommRecv.c: 36: g_bDecodeSuccess = 0;
	bcf	(_g_bDecodeSuccess/8),(_g_bDecodeSuccess)&7	;volatile
	line	38
	
i1l16949:	
;CommRecv.c: 38: memset(g_cDecodeData, 0, 4);
	movlw	(low(_g_cDecodeData|((0x0)<<8))&0ffh)
	movwf	(i1memset@p1)
	movlw	(0x0)
	movwf	(i1memset@p1+1)
	clrf	(i1memset@c)
	clrf	(i1memset@c+1)
	movlw	04h
	movwf	(i1memset@n)
	clrf	(i1memset@n+1)
	fcall	i1_memset
	line	39
	
i1l4344:	
	return
	opt stack 0
GLOBAL	__end_ofi1_vClearDecodingParam
	__end_ofi1_vClearDecodingParam:
	signat	i1_vClearDecodingParam,89
	global	i1_memset

;; *************** function i1_memset *****************
;; Defined at:
;;		line 8 in file "C:\Users\qxl\Desktop\组会信息\高师兄给的资料\CMS_IDE_V2.03.28\CMS_IDE_V2.03.28\data\sources\common\memset.c"
;; Parameters:    Size  Location     Type
;;  p1              2    0[COMMON] PTR void 
;;		 -> g_cDecodeData(4), g_cUart1RecvBuff(16), g_cTftCommand(14), 
;;  c               2    2[COMMON] int 
;;  n               2    4[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  memset          2    6[COMMON] PTR unsigned char 
;;		 -> g_cDecodeData(4), g_cUart1RecvBuff(16), g_cTftCommand(14), 
;; Return value:  Size  Location     Type
;;                  1    wreg      PTR void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 300/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         6       0       0       0
;;      Locals:         2       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_vUart1Recv
;;		_vDecodeInTimer
;;		i1_vClearDecodingParam
;; This function uses a non-reentrant model
;;
psect	text95,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Users\qxl\Desktop\组会信息\高师兄给的资料\CMS_IDE_V2.03.28\CMS_IDE_V2.03.28\data\sources\common\memset.c"
	line	8
global __ptext95
__ptext95:	;psect for function i1_memset
psect	text95
	file	"C:\Users\qxl\Desktop\组会信息\高师兄给的资料\CMS_IDE_V2.03.28\CMS_IDE_V2.03.28\data\sources\common\memset.c"
	line	8
	global	__size_ofi1_memset
	__size_ofi1_memset	equ	__end_ofi1_memset-i1_memset
	
i1_memset:	
;incstack = 0
	opt	stack 0
; Regs used in i1_memset: [wreg-fsr0h+status,2+status,0]
	line	18
	
i1l16307:	
		movf	(i1memset@p1),w
	movwf	(i1memset@p)
movf	(i1memset@p1+1),w
movwf	(i1memset@p+1)

	line	19
	goto	i1l16313
	line	20
	
i1l16309:	
	movf	(i1memset@p),w
	movwf	fsr0
	bsf	status,7
	btfss	(i1memset@p+1),0
	bcf	status,7
	movf	(i1memset@c),w
	movwf	indf
	
i1l16311:	
	incf	(i1memset@p),f
	skipnz
	incf	(i1memset@p+1),f
	line	19
	
i1l16313:	
	movlw	01h
	subwf	(i1memset@n),f
	movlw	0
	skipc
	decf	(i1memset@n+1),f
	subwf	(i1memset@n+1),f
		incf	(((i1memset@n))),w
	skipz
	goto	u963_21
	incf	(((i1memset@n+1))),w
	btfss	status,2
	goto	u963_21
	goto	u963_20
u963_21:
	goto	i1l16309
u963_20:
	line	22
	
i1l9849:	
	return
	opt stack 0
GLOBAL	__end_ofi1_memset
	__end_ofi1_memset:
	signat	i1_memset,89
	global	___CMS_GetTouchKeyValue

;; *************** function ___CMS_GetTouchKeyValue *****************
;; Defined at:
;;		line 390 in file "E:\WORK\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79FT73xx\C语言\标准\CMS_CheckTouch_79FT73xx_Make\CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 300/300
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_time0
;; This function uses a non-reentrant model
;;
psect	text96,local,class=CODE,delta=2,merge=1,group=1
	file	"E:\WORK\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79FT73xx\C语言\标准\CMS_CheckTouch_79FT73xx_Make\CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c"
	line	390
global __ptext96
__ptext96:	;psect for function ___CMS_GetTouchKeyValue
psect	text96
	file	"E:\WORK\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79FT73xx\C语言\标准\CMS_CheckTouch_79FT73xx_Make\CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c"
	line	390
	global	__size_of___CMS_GetTouchKeyValue
	__size_of___CMS_GetTouchKeyValue	equ	__end_of___CMS_GetTouchKeyValue-___CMS_GetTouchKeyValue
	
___CMS_GetTouchKeyValue:	
;incstack = 0
;; using string table level
	opt	stack 1
; Regs used in ___CMS_GetTouchKeyValue: [wreg-fsr0h+status,2+status,0+pclath]
	line	396
	
i1l14949:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 392: static unsigned int _CMS_TimeLimit;
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 393: static unsigned char _CMS_RAMCTRBack = 0;
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 394: static unsigned char _CMS_CurStepTemp = 0;
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 396: _CMS_RAMCTRBack = _CMS_BANKRAM;
	bcf	status, 5	;RP0=0, select bank0
	movf	(__CMS_BANKRAM),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	movwf	(___CMS_GetTouchKeyValue@_CMS_RAMCTRBack)^080h
	line	397
	
i1l14951:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 397: if(_CMS_b_over1)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(__CMS_b_over1/8),(__CMS_b_over1)&7	;volatile
	goto	u735_21
	goto	u735_20
u735_21:
	goto	i1l15033
u735_20:
	line	399
	
i1l14953:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 398: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 399: if(!_CMS_b_over0)
	btfsc	(__CMS_b_over0/8),(__CMS_b_over0)&7	;volatile
	goto	u736_21
	goto	u736_20
u736_21:
	goto	i1l9294
u736_20:
	line	401
	
i1l14955:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 400: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 401: _CMS_b_over0 = 1;
	bsf	(__CMS_b_over0/8),(__CMS_b_over0)&7	;volatile
	line	402
	
i1l14957:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 402: __CMS_KEYCON0 &= ~0B00111101;
	movlw	low(0C2h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	andwf	(400)^0180h,f	;volatile
	line	403
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 403: __CMS_KEYCON1 &= ~0B00001111;
	movlw	low(0F0h)
	andwf	(401)^0180h,f	;volatile
	line	404
	
i1l14959:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 404: __CMS_KEYCON1 |= (_CMS_Table_KeyChannel[_CMS_KeyAdrCnt] & 0x0f);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__CMS_KeyAdrCnt),w
	addlw	low((((__CMS_Table_KeyChannel)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	andlw	0Fh
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	iorwf	(401)^0180h,f	;volatile
	line	405
	
i1l14961:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 405: __CMS_KEYCON2 &= ~0B00000100;
	bcf	(402)^0180h+(2/8),(2)&7	;volatile
	line	406
	
i1l14963:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 406: if(_CMS_Table_KeyChannel[_CMS_KeyAdrCnt] & 0x10)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__CMS_KeyAdrCnt),w
	addlw	low((((__CMS_Table_KeyChannel)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	andlw	010h
	btfsc	status,2
	goto	u737_21
	goto	u737_20
u737_21:
	goto	i1l14967
u737_20:
	line	408
	
i1l14965:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 407: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 408: __CMS_KEYCON2 |= 0x04;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bsf	(402)^0180h+(2/8),(2)&7	;volatile
	line	410
	
i1l14967:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 409: }
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 410: _CMS_BANKRAM = 0x08,__CMS_RAMCTR = _CMS_BANKRAM;;
	movlw	low(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(__CMS_BANKRAM)	;volatile
	movf	(__CMS_BANKRAM),w	;volatile
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	411
	
i1l14969:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 411: _CMS_CurStepTemp = _CMS_CurStep[_CMS_KeyAdrCnt] & 0x0f;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__CMS_KeyAdrCnt),w
	addlw	low(476|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(___CMS_GetTouchKeyValue@_CMS_CurStepTemp)^080h
	
i1l14971:	
	movlw	low(0Fh)
	andwf	(___CMS_GetTouchKeyValue@_CMS_CurStepTemp)^080h,f
	line	412
	
i1l14973:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 412: if(_CMS_CurStepTemp > 5)
	movlw	low(06h)
	subwf	(___CMS_GetTouchKeyValue@_CMS_CurStepTemp)^080h,w
	skipc
	goto	u738_21
	goto	u738_20
u738_21:
	goto	i1l14977
u738_20:
	line	414
	
i1l14975:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 413: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 414: _CMS_CurStepTemp = 5;
	movlw	low(05h)
	movwf	(___CMS_GetTouchKeyValue@_CMS_CurStepTemp)^080h
	line	416
	
i1l14977:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 415: }
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 416: __CMS_KEYCON5 &= ~0B00001110;
	movlw	low(0F1h)
	bsf	status, 6	;RP1=1, select bank3
	andwf	(405)^0180h,f	;volatile
	line	417
	
i1l14979:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 417: __CMS_KEYCON5 |= __CMS_CurStep_Table[_CMS_CurStepTemp];
	bcf	status, 6	;RP1=0, select bank1
	movf	(___CMS_GetTouchKeyValue@_CMS_CurStepTemp)^080h,w
	addlw	low((((___CMS_CurStep_Table)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	bsf	status, 6	;RP1=1, select bank3
	iorwf	(405)^0180h,f	;volatile
	line	418
	
i1l14981:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 418: _CMS_BANKRAM = 0x08,__CMS_RAMCTR = _CMS_BANKRAM;;
	movlw	low(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(__CMS_BANKRAM)	;volatile
	
i1l14983:	
	movf	(__CMS_BANKRAM),w	;volatile
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	419
	
i1l14985:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 419: __CMS_KEYCON6 = _CMS_ITRIM_Ram[_CMS_KeyAdrCnt];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__CMS_KeyAdrCnt),w
	addlw	low(416|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(406)^0180h	;volatile
	line	422
	
i1l14987:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__CMS_KeyAdrCnt),w
	addlw	low(416|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(407)^0180h	;volatile
	line	428
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 423: }
	
i1l14991:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 427: }
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 428: __CMS_KEYCON0 |= 0x01;
	bsf	(400)^0180h+(0/8),(0)&7	;volatile
	line	429
	
i1l14993:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 429: _CMS_TimeLimit = 100;
	movlw	064h
	bcf	status, 6	;RP1=0, select bank1
	movwf	(___CMS_GetTouchKeyValue@_CMS_TimeLimit)^080h
	clrf	(___CMS_GetTouchKeyValue@_CMS_TimeLimit+1)^080h
	line	430
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 430: }
	goto	i1l15033
	line	431
	
i1l9294:	
	line	433
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 431: else
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 432: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 433: if(__CMS_KEYCON0 & 0x80)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	btfss	(400)^0180h,(7)&7	;volatile
	goto	u739_21
	goto	u739_20
u739_21:
	goto	i1l9300
u739_20:
	line	435
	
i1l14995:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 434: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 435: _CMS_b_over0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(__CMS_b_over0/8),(__CMS_b_over0)&7	;volatile
	line	436
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 436: if(_CMS_CurCheckOver)
	btfss	(__CMS_CurCheckOver/8),(__CMS_CurCheckOver)&7	;volatile
	goto	u740_21
	goto	u740_20
u740_21:
	goto	i1l15005
u740_20:
	line	438
	
i1l14997:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 437: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 438: _CMS_BANKRAM = 0x01,__CMS_RAMCTR = _CMS_BANKRAM;;
	movlw	low(01h)
	movwf	(__CMS_BANKRAM)	;volatile
	movf	(__CMS_BANKRAM),w	;volatile
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	439
	
i1l14999:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 439: _CMS_KeySum1[_CMS_KeyAdrCnt] = (unsigned int)(__CMS_KDMAXH << 8) | __CMS_KDMAXL;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrc
	rlf	(__CMS_KeyAdrCnt),w	;volatile
	addlw	low(456|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(411)^0180h,w	;volatile
	bsf	status, 7	;select IRP bank3
	movwf	indf
	incf	fsr0,f
	movf	(412)^0180h,w	;volatile
	movwf	indf
	line	440
	
i1l15001:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 440: _CMS_KeySum0[_CMS_KeyAdrCnt] = (unsigned int)(__CMS_KDMINH << 8) | __CMS_KDMINL;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrc
	rlf	(__CMS_KeyAdrCnt),w	;volatile
	addlw	low(416|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(409)^0180h,w	;volatile
	movwf	indf
	incf	fsr0,f
	movf	(410)^0180h,w	;volatile
	movwf	indf
	line	441
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 441: _CMS_BANKRAM = 0x04,__CMS_RAMCTR = _CMS_BANKRAM;;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(__CMS_BANKRAM)	;volatile
	movf	(__CMS_BANKRAM),w	;volatile
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	442
	
i1l15003:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 442: _CMS_KeySum[_CMS_KeyAdrCnt] = (unsigned int)(__CMS_KDARGH << 8) | __CMS_KDARGL;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrc
	rlf	(__CMS_KeyAdrCnt),w	;volatile
	addlw	low(416|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(413)^0180h,w	;volatile
	movwf	indf
	incf	fsr0,f
	movf	(414)^0180h,w	;volatile
	movwf	indf
	line	443
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 443: }
	goto	i1l15009
	line	446
	
i1l15005:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 444: else
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 445: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 446: _CMS_BANKRAM = 0x04,__CMS_RAMCTR = _CMS_BANKRAM;;
	movlw	low(04h)
	movwf	(__CMS_BANKRAM)	;volatile
	movf	(__CMS_BANKRAM),w	;volatile
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	447
	
i1l15007:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 447: _CMS_KeySum[_CMS_KeyAdrCnt] = (unsigned int)(__CMS_KDARGH << 8) | __CMS_KDARGL;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrc
	rlf	(__CMS_KeyAdrCnt),w	;volatile
	addlw	low(416|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(413)^0180h,w	;volatile
	bsf	status, 7	;select IRP bank3
	movwf	indf
	incf	fsr0,f
	movf	(414)^0180h,w	;volatile
	movwf	indf
	line	449
	
i1l15009:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 448: }
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 449: __CMS_KEYCON0 &= ~0B00000101;
	movlw	low(0FAh)
	andwf	(400)^0180h,f	;volatile
	line	450
	
i1l15011:	
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(__CMS_KeyAdrCnt),f	;volatile
	subwf	((__CMS_KeyAdrCnt)),w	;volatile
	skipc
	goto	u741_21
	goto	u741_20
u741_21:
	goto	i1l9299
u741_20:
	line	452
	
i1l15013:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 451: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 452: _CMS_b_over1 = 0;
	bcf	(__CMS_b_over1/8),(__CMS_b_over1)&7	;volatile
	line	453
	
i1l15015:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 453: _CMS_KeyAdrCnt = 0;
	clrf	(__CMS_KeyAdrCnt)	;volatile
	line	454
	
i1l15017:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 454: __CMS_KEYCON2 &= ~0B00000001;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bcf	(402)^0180h+(0/8),(0)&7	;volatile
	line	455
	
i1l15019:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 455: __CMS_KEYCON3 &= ~0B10000000;
	bcf	(403)^0180h+(7/8),(7)&7	;volatile
	goto	i1l15033
	line	458
	
i1l9300:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 458: else if((__CMS_KEYCON0 & 0x04) || (0 == (--_CMS_TimeLimit)))
	btfsc	(400)^0180h,(2)&7	;volatile
	goto	u742_21
	goto	u742_20
u742_21:
	goto	i1l9307
u742_20:
	
i1l15021:	
	movlw	01h
	bcf	status, 6	;RP1=0, select bank1
	subwf	(___CMS_GetTouchKeyValue@_CMS_TimeLimit)^080h,f
	movlw	0
	skipc
	decf	(___CMS_GetTouchKeyValue@_CMS_TimeLimit+1)^080h,f
	subwf	(___CMS_GetTouchKeyValue@_CMS_TimeLimit+1)^080h,f
	movf	(((___CMS_GetTouchKeyValue@_CMS_TimeLimit)^080h)),w
iorwf	(((___CMS_GetTouchKeyValue@_CMS_TimeLimit+1)^080h)),w
	btfss	status,2
	goto	u743_21
	goto	u743_20
u743_21:
	goto	i1l9299
u743_20:
	
i1l9307:	
	line	460
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 459: {
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 460: _CMS_b_over0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(__CMS_b_over0/8),(__CMS_b_over0)&7	;volatile
	line	461
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 461: _CMS_b_over1 = 0;
	bcf	(__CMS_b_over1/8),(__CMS_b_over1)&7	;volatile
	line	462
	
i1l15023:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 462: _CMS_KeyAdrCnt = 0;
	clrf	(__CMS_KeyAdrCnt)	;volatile
	line	463
	
i1l15025:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 463: __CMS_KEYCON0 &= ~0B00000101;
	movlw	low(0FAh)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	andwf	(400)^0180h,f	;volatile
	line	464
	
i1l15027:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 464: __CMS_KEYCON2 &= ~0B00000001;
	bcf	(402)^0180h+(0/8),(0)&7	;volatile
	line	465
	
i1l15029:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 465: __CMS_KEYCON3 &= ~0B10000000;
	bcf	(403)^0180h+(7/8),(7)&7	;volatile
	line	466
	
i1l15031:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 466: _CMS_b_onceerr = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(__CMS_b_onceerr/8),(__CMS_b_onceerr)&7	;volatile
	goto	i1l15033
	line	468
	
i1l9299:	
	line	470
	
i1l15033:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 467: }
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 468: }
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 469: }
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 470: _CMS_BANKRAM = _CMS_RAMCTRBack;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___CMS_GetTouchKeyValue@_CMS_RAMCTRBack)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(__CMS_BANKRAM)	;volatile
	line	471
	
i1l15035:	
;CMS_CheckTouch_PT_79FT73xx_DEBUG_V1.09.c: 471: __CMS_RAMCTR = _CMS_BANKRAM;
	movf	(__CMS_BANKRAM),w	;volatile
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	472
	
i1l9308:	
	return
	opt stack 0
GLOBAL	__end_of___CMS_GetTouchKeyValue
	__end_of___CMS_GetTouchKeyValue:
	signat	___CMS_GetTouchKeyValue,89
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
