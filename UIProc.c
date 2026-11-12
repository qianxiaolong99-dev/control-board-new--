
#include "main.h"

#if 0
void Set_LED_Moudle()
{
	LEDCON0 = (0x40 | FRENQUENCY);			//使能LED,禁止LCD,设置频率
	LEDCON0 |= ((C_COMSEL_COM & 0x03) << 4);
	COMEN = C_LED_COM;
	SEGEN0 = C_LED_SEG0;
	SEGEN1 = C_LED_SEG1;
	SEGEN2 = C_LED_SEGCUR;
}

void Led_Moudle_Device()
{
	//设置LED内部显示RAM的值
	Set_Addr_Value(C_LED_SEGA | 0X80, 0x01);	//设置SEGA
#if SEG_NUMBER >=2
	Set_Addr_Value(C_LED_SEGB | 0X80, 0x02);	//设置SEGB
#endif
#if SEG_NUMBER >=3
	Set_Addr_Value(C_LED_SEGC | 0X80, 0x04);	//设置SEGC
#endif
#if SEG_NUMBER >=4
	Set_Addr_Value(C_LED_SEGD | 0X80, 0x08);	//设置SEGD
#endif
#if SEG_NUMBER >=5
	Set_Addr_Value(C_LED_SEGE | 0X80, 0x10);	//设置SEGE
#endif
#if SEG_NUMBER >=6
	Set_Addr_Value(C_LED_SEGF | 0X80, 0x20);	//设置SEGF
#endif
#if SEG_NUMBER >=7
	Set_Addr_Value(C_LED_SEGG | 0X80, 0x40);	//设置SEGG
#endif
#if SEG_NUMBER >=8
	Set_Addr_Value(C_LED_SEGP | 0X80, 0x80);	//设置SEGP
#endif
#if SEG_NUMBER >=9
	Set_Addr_Value(C_LED_SEGH | 0X80, 0x100);	//设置SEG9
#endif
#if SEG_NUMBER >=10
	Set_Addr_Value(C_LED_SEGI | 0X80, 0x200);	//设置SEG10
#endif
#if SEG_NUMBER >=11
	Set_Addr_Value(C_LED_SEGJ | 0X80, 0x400);	//设置SEG11
#endif

	LEDCON1 = 0x20;							//SEG口输出LCDDATA的数据
}

void Set_Addr_Value(uchar Addr, uint Mask)
{
	uchar data = 0;
	LEDADD = (uchar)(Addr | ((C_COMSEL_COM & 0x04) << 3));

	if (DispData[0] & Mask)
		BSET(data, C_LED_COM0);
		//BSET(data, C_LED_COM1);
#if COM_NUMBER >=2
	if (DispData[1] & Mask)
		BSET(data, C_LED_COM2);
#endif
#if COM_NUMBER >=3
	if (DispData[2] & Mask)
		BSET(data, C_LED_COM3);
#endif
#if COM_NUMBER >=4
	if (DispData[3] & Mask)
		BSET(data, C_LED_COM0);
#endif
#if COM_NUMBER >=5
	if (DispData[4] & Mask)
		BSET(data, C_LED_COM4);
#endif
#if COM_NUMBER >=6
	if (DispData[5] & Mask)
		BSET(data, C_LED_COM5);
#endif
#if COM_NUMBER >=7
	if (DispData[6] & Mask)
		BSET(data, C_LED_COM6);
#endif
	LEDDATA = data;
}

#endif


/**
  * @brief  旋钮扫描函数（放在主循环里轮询调用）
  * @retval KNOB_STOP/KNOB_CW/KNOB_CCW
  */
//volatile uchar now_state;
//volatile uchar update_state;
//volatile uchar knob_last_state;
void Knob_Scan(void)
{
	static uchar now_state;
	static uchar update_state;
	static uchar knob_last_state;
	static uchar knob_stable_count;
	
	//g_xKnobDir = KNOB_STOP;
	
    // 读取当前A、B相电平
    KnobA = KNOB_A_PIN;
    KnobB = KNOB_B_PIN;
    now_state = ((uchar)KnobA << 1) | (uchar)KnobB;

    if (now_state == update_state)
	{
        knob_stable_count++;
        if (knob_stable_count >= KNOB_STABLE_TIMES)//状态稳定
        {
            if ((knob_last_state == 0x03 && now_state == 0x02) || (knob_last_state == 0x00 && now_state == 0x01))
            {
                //g_xKnobDir = KNOB_CW;   // 正转
				bQueueEn(IncSKey);
            }
            if ((knob_last_state == 0x02 && now_state == 0x03) || (knob_last_state == 0x01 && now_state == 0x00))
            {
                //g_xKnobDir = KNOB_CCW;  // 反转
				bQueueEn(DecSKey);
            }
            knob_last_state = now_state;
        }
    }
    else
    {
        knob_stable_count = 0;  // 状态变化，重置消抖
        update_state = now_state;
    }
}


/***********************************************
备注：
	   周期 = (PWMxCYC+1)*4/Fosc*PWMxCNT预分频值	   
	  占空比 = (CCPRxL:CCPCON<5:4>)/(4*(PWMxCYC + 1))
************************************************/
void vEnablePWM(void)
{	
	PWMCON = 0x55;
	CCP1CON =0B00001100;					//PWM模式,10位占空比数据低2位为0
	PWM1CYC =199;							//PWM1周期为：(199+1)* 4/16 * 4 =200uS
	CCPR1L = g_cRedLEDLight;								//0% PWM //低2位为0,(CCPRxL:CCPCON<5:4>)=CCPR1L*4
	
	CCP2CON =0B00001100;					//PWM模式,10位占空比数据低2位为0
	PWM2CYC =199;							//PWM2周期为：(199+1)* 4/16 * 4 =200uS
	CCPR2L = g_cWhiteLEDLight;								//0% PWM
}

void vEnablePWM2(void)
{
	//PWMCON = 0B01010101;//PWM1.2设置为4分频，使能PWM1和PWM2
	PWMCON &= 0x0F;
	PWMCON |= 0x50;
	CCP2CON =0B00001100;					//PWM模式,10位占空比数据低2位为0
	PWM2CYC =199;							//PWM2周期为：(199+1)* 4/16 * 4 =200uS
	CCPR2L =0;								//0% PWM
}

void vLedBreath(void)
{	
	if(g_bRedLedBreath)
	{
		if(g_bDarkLight)//亮起来
		{
			if(LED_MAX_LIGHT < g_cRedLEDLight)
				g_cRedLEDLight--;
			else
				g_bDarkLight = ~g_bDarkLight;
		}
		else//灭下去
		{
			if(g_cRedLEDLight < LED_MIN_LIGHT)
				g_cRedLEDLight++;
			else
				g_bDarkLight = ~g_bDarkLight;
		}
		CCPR1L = g_cRedLEDLight;
	}	
	else if(g_bWhiteLedBreath)
	{
		if(g_bDarkLight)//亮起来
		{
			if(LED_MAX_LIGHT < g_cWhiteLEDLight)
				g_cWhiteLEDLight--;
			else
				g_bDarkLight = ~g_bDarkLight;
		}
		else//灭下去
		{
			if(g_cWhiteLEDLight < LED_MIN_LIGHT)
				g_cWhiteLEDLight++;
			else
				g_bDarkLight = ~g_bDarkLight;
		}
		CCPR2L = g_cWhiteLEDLight;
	}
}

void vSetPWM1(uchar pVal)
{
	CCPR1L = pVal;//0~200
}

void vSetPWM2(uchar pVal)
{
	CCPR2L = pVal;//0~200
}
/*
void vDisablePWM1(void)
{
	CYC1EN = 0;
}

void vDisablePWM2(void)
{
	CYC2EN = 0;
}
*/
/* TFT.HMI 中控件名按页面重新从 p0 编号。只给当前页面已有的图片控件发命令。 */
static uchar s_tjcPage = PAGE_0_LOGO;

static uchar TjcPictureExists(uchar component)
{
    switch (s_tjcPage)
    {
    case PAGE_1_SETTING:
    case PAGE_4_SLEEPING: return component == 0;
    case PAGE_2_SETTING:  return component <= 1;
    case PAGE_3_WORKING:  return component <= 10;
    default:              return 0; // LOGO 没有图片控件
    }
}

/* 页面编号仍沿用 KeyBoard new 的 0~4；组包函数发送实际页面名称。 */
void vSwitchTftPage(uchar pageNum)
{
    uchar len = TjcBuildPage(g_cTftCommand, pageNum);
    if (len == 0) return;
    vUart0Send(len);
    s_tjcPage = pageNum;
}

/* id 是 p 后的数字，icon 是 TFT.HMI 图片库 ID，例如 p0.pic=7。 */
void vSwitchImageIcon(uchar id, uchar icon)
{
    uchar len;
    if (!TjcPictureExists(id)) return;
    len = TjcBuildPicture(g_cTftCommand, id, icon);
    if (len != 0) vUart0Send(len);
}

/* USART HMI: vis pN,0 隐藏；vis pN,1 显示。 */
void vHideDisplayID(uchar id, uchar hd)
{
    uchar len;
    if (!TjcPictureExists(id)) return;
    len = TjcBuildVisibility(g_cTftCommand, id, hd);
    if (len != 0) vUart0Send(len);
}

//uchar tempr;
void UpdateTftDisplay(void)
{
	uchar tempr;
	switch (g_xTftAction)
	{
	case SwchPage:
	{
		switch(g_eSysStatus)
		{
			case SLEEPING:
				vSwitchTftPage(PAGE_4_SLEEPING);
				g_xTftAction = UPDIdle;
				break;			
			case SETTING1:
				vSwitchTftPage(PAGE_1_SETTING);
				g_xTftAction = SelSetItem;
				break;
			case SETTING2:
				vSwitchTftPage(PAGE_2_SETTING);
				g_xTftAction = UpdSetVal;
				break;
			case HEATING://
			default://WAITING
				vSwitchTftPage(PAGE_3_WORKING);
				g_xTftAction = UpdUnitIcon;
				break;
		}
		break;
	}
	case UpdSetTempr:
	{
		g_xTftAction = UPDIdle;
		if((g_eSysStatus == HEATING)||(g_eSysStatus == WAITING))
		{			
		if(g_xSysSetting.TemprUnit)//℉
		{
			//百位
			tempr = g_xTftContent.setT/100;
			vSwitchImageIcon(0, ICON_P3_BIGNUM_DELTA+tempr);
			//十位
			tempr = (g_xTftContent.setT%100)/10;
			vSwitchImageIcon(1, ICON_P3_BIGNUM_DELTA+tempr);
			//个位
			tempr = g_xTftContent.setT%10;
			vSwitchImageIcon(2, ICON_P3_BIGNUM_DELTA+tempr);
		}
		else//℃
		{
			//小数点后
			tempr = 5*(g_xTftContent.setT%2);
			vSwitchImageIcon(2, ICON_P3P_BIGNUM_DELTA+tempr);
			//个位
			tempr = (g_xTftContent.setT/2)%10;
			vSwitchImageIcon(1, ICON_P3_BIGNUM_DELTA+tempr);
			//十位
			tempr = (g_xTftContent.setT%200)/20;
			vSwitchImageIcon(0, ICON_P3_BIGNUM_DELTA+tempr);			
		}
		}
		break;
	}
	case UpdCurTempr:
	{
		g_xTftAction = UPDIdle;
		if((g_eSysStatus == HEATING)||(g_eSysStatus == WAITING))
		{			
		if(g_xSysSetting.TemprUnit)//℉
		{
			//百位
			tempr = g_xTftContent.curT/100;
			vSwitchImageIcon(3, ICON_P3_SMNUM_DELTA+tempr);
			//十位
			tempr = (g_xTftContent.curT%100)/10;
			vSwitchImageIcon(4, ICON_P3_SMNUM_DELTA+tempr);
			//个位
			tempr = g_xTftContent.curT%10;
			vSwitchImageIcon(5, ICON_P3_SMNUM_DELTA+tempr);
		}
		else//℃
		{
			if (g_xTftContent.curT >= 200)
			{
				/* 当前温度达到 100℃ 时，三个小数字控件显示整数位。 */
				tempr = g_xTftContent.curT / 2;
				vSwitchImageIcon(3, ICON_P3_SMNUM_DELTA + tempr / 100);
				vSwitchImageIcon(4, ICON_P3_SMNUM_DELTA + (tempr / 10) % 10);
				vSwitchImageIcon(5, ICON_P3_SMNUM_DELTA + tempr % 10);
			}
			else
			{
				/* 低于 100℃ 时，末位使用带小数点的图片。 */
				tempr = 5 * (g_xTftContent.curT % 2);
				vSwitchImageIcon(5, ICON_P3P_SMNUM_DELTA + tempr);
				tempr = (g_xTftContent.curT / 2) % 10;
				vSwitchImageIcon(4, ICON_P3_SMNUM_DELTA + tempr);
				tempr = (g_xTftContent.curT % 200) / 20;
				vSwitchImageIcon(3, ICON_P3_SMNUM_DELTA + tempr);
			}
		}
		
		//更新小球
		if(8<g_xTftContent.Ball)
			g_xTftContent.Ball = 8;
		
		if(g_eSysStatus == HEATING)
		{
			if(g_xTftContent.Ball != g_xTftContent.OldBall)
			{
				if(g_xTftContent.Ball==0)
				{
					vHideDisplayID(ICON_ID_BALL,ICON_HIDE);
				}
				else
				{
					vHideDisplayID(ICON_ID_BALL,ICON_DISP);
					vSwitchImageIcon(ICON_ID_BALL, ICON_P3_BALL_BASIC-g_xTftContent.Ball);
				}
				g_xTftContent.OldBall = g_xTftContent.Ball;
			}
		}
				
		if(g_xTftContent.BtOnOff != g_xTftContent.OldBtOnOff)
		{
			vHideDisplayID(ICON_ID_BT, g_xTftContent.BtOnOff);
			g_xTftContent.OldBtOnOff = g_xTftContent.BtOnOff;
		}
		}	
		break;
	}
	case UpdBtIcon:
	{
		g_xTftAction = UPDIdle;
		if((g_eSysStatus == HEATING)||(g_eSysStatus == WAITING))
		{
		vHideDisplayID(ICON_ID_BT, g_xTftContent.BtOnOff);
		}	
		break;
	}
	case UpdKeepWarmIcon:
	{
		g_xTftAction = UPDIdle;
		if((g_eSysStatus == HEATING)||(g_eSysStatus == WAITING))
		{
		vHideDisplayID(ICON_ID_KW, g_xTftContent.KWOnOff);	
		}	
		break;
	}
	case UpdDogIcon:
	{
		g_xTftAction = UPDIdle;			
		if(g_eSysStatus == WAITING)
		{
			vHideDisplayID(ICON_ID_DOG, ICON_HIDE);
			vHideDisplayID(ICON_ID_BALL, ICON_DISP);
			vSwitchImageIcon(ICON_ID_BALL, ICON_P3_BALL_BASIC-8);
		}
		else if(g_eSysStatus == HEATING)
		{
			vHideDisplayID(ICON_ID_DOG, ICON_DISP);
		}
		break;
	}
	case SelSetItem:
	{
		g_xTftAction = UPDIdle;
		if(g_eSysStatus != SETTING1)//设置页
			return;
		//更新item显示内容
		vSwitchImageIcon(0, ICON_SETTING_DELTA+g_xTftContent.sItem );
		break;
	}
	case UpdSetVal:
	{
		g_xTftAction = UPDIdle;
		if(g_eSysStatus != SETTING2)//设置页
			return;
		
		//更新item显示内容
		vSwitchImageIcon(0, ICON_SETTING2_DELTA+g_xTftContent.sItem );		
		//更新value显示内容
		switch(g_xTftContent.sItem)//设置项
		{
		case 1:
		case 3:
		case 4:
			if(g_xTftContent.sVal==1)
				vSwitchImageIcon(ICON_ID_SETVAL,ICON_SET_ON);//off
			else//if(g_xTftContent.sVal==1)
				vSwitchImageIcon(ICON_ID_SETVAL,ICON_SET_OFF);//on
			break;
		case 2:
			if(g_xTftContent.sVal==1)
				vSwitchImageIcon(ICON_ID_SETVAL,ICON_SET_F);			
			else//if(g_xTftContent.sVal==1)
				vSwitchImageIcon(ICON_ID_SETVAL,ICON_SET_C);
			break;
		default:				
			if(g_xTftContent.sVal==1)
				vSwitchImageIcon(ICON_ID_SETVAL,ICON_SET_30);
			else if(g_xTftContent.sVal==2)
				vSwitchImageIcon(ICON_ID_SETVAL,ICON_SET_60);
			else//if(g_xTftContent.sVal==1)
				vSwitchImageIcon(ICON_ID_SETVAL,ICON_SET_OFF);
			break;
		}
		break;
	}
	case UpdSleepIcon:
	{
		g_xTftAction = UPDIdle;
		if(g_eSysStatus != SLEEPING)//睡眠页
			return;
		if(3<g_xTftContent.Sleep)
			g_xTftContent.Sleep=0;
		vSwitchImageIcon(0, ICON_SLEEP_BASIC+g_xTftContent.Sleep);
		break;
	}
	case UpdUnitIcon://这里一次性更新working页的所有内容
	{
		g_xTftAction = UPDIdle;
		
		//---更新单位图标
		if(g_xSysSetting.TemprUnit)//℃还是℉
			vSwitchImageIcon(ICON_ID_CF,74);//设置℉的icon
		else
			vSwitchImageIcon(ICON_ID_CF,73);//设置℃的icon

		//---更新蓝牙和保温图标
		vHideDisplayID(ICON_ID_BT, g_xTftContent.BtOnOff);
		vHideDisplayID(ICON_ID_KW, g_xTftContent.KWOnOff);//显示隐藏保温图标
		
		//---更新小球
		//刚切换页面的时候都是显示8个小球
		vHideDisplayID(ICON_ID_BALL,ICON_DISP);
		vSwitchImageIcon(ICON_ID_BALL, ICON_P3_BALL_BASIC-8);
		
		//---更新小狗状态
		if(g_eSysStatus == HEATING)
			vHideDisplayID(ICON_ID_DOG, ICON_DISP);//加热过程显示小狗
		else if(g_eSysStatus == WAITING)//
			vHideDisplayID(ICON_ID_DOG, ICON_HIDE);//等待过程隐藏小狗
			
		//---更新设置温度
		if(g_xSysSetting.TemprUnit)//℉
		{
			//百位
			tempr = g_xTftContent.setT/100;
			vSwitchImageIcon(0, ICON_P3_BIGNUM_DELTA+tempr);
			//十位
			tempr = (g_xTftContent.setT%100)/10;
			vSwitchImageIcon(1, ICON_P3_BIGNUM_DELTA+tempr);
			//个位
			tempr = g_xTftContent.setT%10;
			vSwitchImageIcon(2, ICON_P3_BIGNUM_DELTA+tempr);
		}
		else//℃
		{
			//小数点后
			tempr = 5*(g_xTftContent.setT%2);
			vSwitchImageIcon(2, ICON_P3P_BIGNUM_DELTA+tempr);
			//个位
			tempr = (g_xTftContent.setT/2)%10;
			vSwitchImageIcon(1, ICON_P3_BIGNUM_DELTA+tempr);
			//十位
			tempr = (g_xTftContent.setT%200)/20;
			vSwitchImageIcon(0, ICON_P3_BIGNUM_DELTA+tempr);			
		}
		
		//---更新当前温度
		if(g_xSysSetting.TemprUnit)//℉
		{
			//百位
			tempr = g_xTftContent.curT/100;
			vSwitchImageIcon(3, ICON_P3_SMNUM_DELTA+tempr);
			//十位
			tempr = (g_xTftContent.curT%100)/10;
			vSwitchImageIcon(4, ICON_P3_SMNUM_DELTA+tempr);
			//个位
			tempr = g_xTftContent.curT%10;
			vSwitchImageIcon(5, ICON_P3_SMNUM_DELTA+tempr);
		}
		else//℃
		{
			if (g_xTftContent.curT >= 200)
			{
				/* 当前温度达到 100℃ 时，三个小数字控件显示整数位。 */
				tempr = g_xTftContent.curT / 2;
				vSwitchImageIcon(3, ICON_P3_SMNUM_DELTA + tempr / 100);
				vSwitchImageIcon(4, ICON_P3_SMNUM_DELTA + (tempr / 10) % 10);
				vSwitchImageIcon(5, ICON_P3_SMNUM_DELTA + tempr % 10);
			}
			else
			{
				/* 低于 100℃ 时，末位使用带小数点的图片。 */
				tempr = 5 * (g_xTftContent.curT % 2);
				vSwitchImageIcon(5, ICON_P3P_SMNUM_DELTA + tempr);
				tempr = (g_xTftContent.curT / 2) % 10;
				vSwitchImageIcon(4, ICON_P3_SMNUM_DELTA + tempr);
				tempr = (g_xTftContent.curT % 200) / 20;
				vSwitchImageIcon(3, ICON_P3_SMNUM_DELTA + tempr);
			}
		}
		break;
	}
	default:
		break;
	}	
}
