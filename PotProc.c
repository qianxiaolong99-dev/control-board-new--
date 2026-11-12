
#include "main.h"

//(传参)℃单位为0.5℃,返回数据单位1℉
uchar CConvert2F(uchar tempC)
{
	uint retF = 9 * tempC;

	if (5 <= (retF % 10))
		retF = (retF + 5) / 10;
	else
		retF = retF / 10;

	retF = retF + 32;
	return (uchar)retF;
}

//(返回)℃单位为0.5℃,传入数据单位1℉
uchar FConvert2C(uchar tempF)
{
	uint retC = (tempF - 32) * 10;
	retC = (retC * 10) / 9;
	if (5 <= (retC % 10))
		retC = (retC + 5) / 10;
	else
		retC = retC / 10;

	return (uchar)retC;
}
/**********************************************************************/

void vBtConnectProc(void)
{
	if(g_bBtConectSuccessFlg)//BT连接flag
	{
		if(g_eSysStatus == WAITING || g_eSysStatus== HEATING)
		{
			if(g_xTftContent.BtOnOff == ICON_HIDE)//图标当前隐藏
			{
				g_xTftContent.BtOnOff = ICON_DISP;//连接成功，显示BT图标
				g_xTftAction = UpdBtIcon;//更新蓝牙图标
				//bQueueEn(Tim5STrig);
			}
		}
		
		//BT连接成功,1S发送1次
		g_bUart1SendFlag=1;
		
		g_cBtConectSuccessTime++;				
		if(3 < g_cBtConectSuccessTime)
		{
			/*if(g_bBtCmdCorrection)
			{
				g_bBtCmdCorrection=0;//清除,等待下一次接收到重新置位
			}
			else*/
			{
				g_bBtConectSuccessFlg = 0;//BT通讯,没收到命令
				//停止加热，错误处理
			}
		}
	}
	else//断开了连接
	{
		if(g_eSysStatus == WAITING || g_eSysStatus== HEATING)
		{
			if(ICON_DISP==g_xTftContent.BtOnOff)//图标当前显示
			{
				g_xTftContent.BtOnOff = ICON_HIDE;//断开连接，隐藏BT图标
				g_xTftAction = UpdBtIcon;//更新蓝牙图标
			}
		}
	}
}


/* 自动更改高原沸点 */
void vGaoyuanBoilingProc(void)
{
	static uchar s_cDetectCount = 0;//未出现更高温度的计数，每次500ms
	static uchar s_cMaxTempr = 0;//本次检测过程中出现的最高温度
	uchar check; //保存沸点数据的反码

	/*
	判断各种条件下 是否开始检测高原温度
	 */
	if(!g_xSysSetting.EnGaoyuan || !g_bBtConectSuccessFlg || (g_cErrStatus != E_NONE) || g_bKettleLift || g_bKeepWarmFlag ||!B_Heat_En ||(PowerWork == POW_0W) || (g_xIhProcParam.CurTempr <= MIN_BOILING_TEMPR) ||(MAX_TEMPR < g_xIhProcParam.CurTempr))
	{
		s_cDetectCount = 0;
		s_cMaxTempr = 0;
		return;
	}

	/* 第一次有效检测：记录当前最高温度，从这里开始等待20秒。 */
	if(s_cMaxTempr == 0)//初始化温度值
	{
		s_cMaxTempr = g_xIhProcParam.CurTempr;
		s_cDetectCount = 0;
		return;
	}

	/* 只要出现更高温度，就更新最高温度并重新计时20秒。 */
	if(s_cMaxTempr < g_xIhProcParam.CurTempr)
	{
		s_cMaxTempr = g_xIhProcParam.CurTempr;
		s_cDetectCount = 0;
		return;
	}

	s_cDetectCount++;
	if(s_cDetectCount < GAOYUAN_STABLE_TIMES)
		return;

	/* 连续20秒没有出现更高温度，保存整个检测过程中的最高温度。 */
	g_xSysSetting.BoilingPoint = s_cMaxTempr;//沸点更改
	g_xIhProcParam.TargTempr = g_xIhProcParam.CurTempr;//使后续温控进入到温停机分支

	/* 停止加热 */
	vSetIHPower(POW_0W);

	Memory_Write(ADDR_TEMPR_BOILING, g_xSysSetting.BoilingPoint);
	check = (uchar)~g_xSysSetting.BoilingPoint;
	Memory_Write(ADDR_TEMPR_BOILING1, check);

	/* 清除本次运行记录*/
	s_cDetectCount = 0;
	s_cMaxTempr = 0;
}



//uchar TemprGap;
/* 加热的过程 */
void vHeatingProc(void)
{
	uchar TemprGap;
	vGaoyuanBoilingProc();
	//先判断蓝牙是否已经连接
	if(!g_bBtConectSuccessFlg)
	{
		vSetIHPower(POW_0W);//先强制停机,防止切换状态不成功
		bQueueEn(ErrHappen);//发送start按键切换到waitting状态
		return;
	}
	
	//发生故障
	if(g_cErrStatus != E_NONE)
	{
		vSetIHPower(POW_0W);//先强制停机,防止切换状态不成功
		bQueueEn(ErrHappen);//发送start按键切换到waitting状态
		return;
	}
	
	//判断有没有提壶，Start按键
	/*if(g_bKettleLift)//提壶
	{
		return;
	}*/
	
	//判断预沸腾配置，保温时间等参数	
	if(g_xIhProcParam.CurTempr < g_xIhProcParam.TargTempr)//当前温度 < 目标温度
	{
		TemprGap = g_xIhProcParam.TargTempr - g_xIhProcParam.CurTempr;
		if(12 <= TemprGap)//>6℃
		{	vSetIHPower(POW_800W);}
		else if(7 <= TemprGap && TemprGap< 12)//>3℃
		{	vSetIHPower(POW_600W);}
		else//<=3℃
		{	vSetIHPower(POW_400W);}
	}
	else//当前温度 >= 目标温度
	{		
		if(g_xSysSetting.KWTime == 0)//保温设置关闭
		{	
			vSetBuzzer(0);
			g_bKeepWarmFlag = 0;
			g_cKeepWarmTime = 0;
			
			bQueueEn(HeatDone);//到达目标温度,直接切回waitting状态
		}
		else//保温设置打开
		{
			if(!g_bKeepWarmFlag)//第一次加热
			{
				vSetBuzzer(0);
				g_bKeepWarmFlag = 1;//启动保温后,不会更新目标温度
				g_xIhProcParam.TargTempr = g_xSysSetting.SetTempr;//更新目标温度
				g_cKeepWarmTime=0;//启动计时器
			}
			vSetIHPower(POW_0W);//关闭加热
		}
	}
}



