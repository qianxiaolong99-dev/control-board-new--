
#include "main.h"

void vInitIc(void)
{
	asm("clrwdt");   //清除看门狗
	PORTA = 0;	
	PORTB = 0;
	PORTC = 0;
	PORTD = 0;
	INTCON = 0x00;   //中断寄存器清零
	asm("clrwdt");   //清除看门狗
	OPTION_REG = 0;  //预分频器OPTION_REG=0，及设定：1由端口的各个锁存值使能PORTB上拉；2INT引脚下降沿触发中断；
	//3内部指令周期时钟(FsYS/4)【规定设备内部的单条指令执行时间】；4外部时钟源时的计数边沿（仅在 T0CS=1 时有效）TOCKI 引脚 由低变高 时 Timer0 加 1（无效）
	//5预分频器分给Timer0;6 Bit2~Bit0=0,Timer0 分频为1：2（及Timer0 的计数时钟 = (Fosc/4) ÷ 2）【Fosc为内部振荡器频率8MHz】
	PIR1 = 0;        //清除外设中断请求标志寄存器
	PIR2 = 0;        //外设中断请求寄存器为PIR1和PIR2。当有中断条件产生时，无论对应的中断允许位或全局允许位GIE的
	//状态如何，中断标志位都将置1。用户软件应在允许一个中断之前，确保先将相应的中断标志位清零。
	WDTCON = 0x01;   //启动看门狗，软件强制打开看门狗定时器（WDT）
	
	TRISA = 0B00000001;//RA0通讯接收
	TRISB = 0B00000000;//PORTB的数据方向寄存器，RB0引脚被设置为输入，其他为输出（RXD设置为输入，及允许信号输入，通讯端口）
	TRISC = 0B00111000;//RC3.4.5为旋钮和按键
	TRISD = 0B00000000;//RD2 NTC （原有的）？；	PORTD的数据方向寄存器，RBD引脚被全部设置为输出
	OSCCON = 0x71;    //系统时钟配置：0x71，01110001，111：Fsys=Fosc/1；1：内部振荡器用作系统时钟
	//Fosc为内部振荡器频率8MHz，Fsys为系统工作频率
	PIE1 = 0;		  //外设中断允许寄存器有PIE1和PIE2，在允许任何外设中断前，必须先将INTCON寄存器的PEIE位置1
	PIE2 = 0;		  //外设中断允许寄存器有PIE1和PIE2全部先置0
	IOCB = 0;		  //PORTB电平变化中断寄存器IOCB，0：禁止电平变化中断，RB引脚变化不会引起中断
	WPUA = 0B00000001;//RA0通讯接收
	WPUB = 0B00000000;//使能RB3引脚上拉，禁止RB其他引脚上拉
	WPUC = 0B00111000;//RC3.4.5为旋钮和按键
	WPUD = 0B00000000;
}

void Set_Usart_Async()
{
	//串口1
	SPBRG1 = 103;			//9600bps=16M/(16*(SPBRG1+1))	
	
	SYNC1 = 0;				//0为异步模式，1为同步模式
	SCKP1 = 0;
	
    SPEN1 = 1;				//允许串口操作
	RC1IE = 1;				//接收中断  
	TX1IE = 0;				//发送中断
    RX9EN1 = 0;				//0为8位接收，1为9位接收
	TX9EN1 = 0;				//0为8位发送，1为9位发送
	CREN1 = 1;				//0为禁止接收，1为使能接收
    TXEN1 = 1;				//0为禁止发送，1为使能发送
	
	//串口0
	SPBRG0 = 103;			//设置波特率为9600

	SYNC0 = 0;				//0为异步模式，1为同步模式
	SCKP0 = 0;

	SPEN0 = 1;				//允许串口操作
	RC0IE = 1;				//接收中断  
	TX0IE = 0;				//发送中断
	RX9EN0 = 0;				//0为8位接收，1为9位接收
	TX9EN0 = 0;				//0为8位发送，1为9位发送
	CREN0 = 1;				//0为禁止接收，1为使能接收
	TXEN0 = 1;				//0为禁止发送，1为使能发送
}

void Init_ram(void)
{
	Set_Usart_Async();
	
	asm("clrwdt");		//把看门狗清零，防止因上电后未清狗而意外复位；
	PIE2 = 0;    		//把外设中断使能寄存器2全部清零，关闭所有相关中断；
	PIE1 = 0B00000010;  //允许TMR2与PR2匹配中断；
	PR2 = 125;				//设 Timer2 周期寄存器，中断周期 = PR2 × TMR2 时钟周期，下将TMR2设置为125us中断，两个参数共同决定中断周期
	T2CON = 5;				//T2CON = 0000 0101，000：1/1后分频比；1使能定时器2；01：预分频值为4	
	INTCON = 0xC0;			//INTCON =1100 0000，允许全局中断，允许外设中断，（及允许PIE1，PIE2赋值）使能中断
	
	vEnablePWM();
}

void Sys_set(void)
{
	asm("clrwdt");		
	OPTION_REG = 0;
	WDTCON = 0x01;
	
	TRISA = 0B00000001; 
	TRISB = 0B00000000; 
	TRISC = 0B00111000; 
	TRISD = 0B00000000;
	
	PIE1 = 0B00000010;
	PR2 = 125;
	INTCON = 0XC0;
	if (5 != T2CON)
		T2CON = 5;
		
	WPUA = 0B00000001;
	WPUB = 0B00000000;
	WPUC = 0B00111000;
}

//volatile uint KeyOnOutput = 0;
void Kscan()//扫描按键处理
{
	static uint KeyOldFlag = 0;
	uint KeyOnOutput = 0;

	if (0 < g_cDisableKeyTime)
		g_cDisableKeyTime--;
	
	KeyOnOutput = (uint)((_CMS_KeyFlag[1] << 8) | _CMS_KeyFlag[0]);//_CMS_KeyFlag 是3个字节的数组，3张8位的数组：[2][1][0]（低地址→高地址）
	
	if (KeyOnOutput)//有检测到按键
	{
		if (KeyOnOutput == KeyOldFlag) return;

		KeyOldFlag = KeyOnOutput;

		if (0 < g_cDisableKeyTime) return;//40ms内重複按下(抖動)

		switch (KeyOnOutput)
		{
		case CMS_STARTKEY://开始键
			g_bStartKeyPressed = 1;
			g_cDisableKeyTime = 10;//40ms
			break;
		case CMS_SETKEY://设置键
			g_bSetKeyPressed = 1;
			g_cDisableKeyTime = 10;//40ms
			break;
		/*case CMS_INCREASEKEY://增加键
			g_bAddKeyPressed = 1;
			g_cDisableKeyTime = 10;//40ms
			g_cLongPressCounter = 0;
			break;
		case CMS_DECREASEKEY://减小键
			g_bDecKeyPressed = 1;
			g_cDisableKeyTime = 10;//40ms
			g_cLongPressCounter = 0;
			break;
		case CMS_OKKEY:
			g_bOkKeyPressed = 1;
			g_cDisableKeyTime = 10;//40ms
			g_cLongPressCounter = 0;
			break;*/
		default:
			break;
		}
	}
	else//没有按键被按下
	{
		KeyOldFlag = 0;
		
		g_bKeyShortPressed = 0;//短按flag清零
		
		g_bStartKeyPressed = 0;		
		g_bSetKeyPressed = 0;
		//g_bOkKeyPressed = 0;
		//g_bAddKeyPressed = 0;
		//g_bDecKeyPressed = 0;	
		//g_cLongPressCounter = 0;//长按计数器清零	
	}
}

void vStartKeyProc()
{
	if(g_bStartKeyPressed)
	{
		g_bStartKeyPressed = 0;//清除按下flag
		vSetBuzzer(0);//蜂鸣器短鸣1声
		bQueueEn(StartKey);
	}
}

void vSettingKeyProc()
{
	if(g_bSetKeyPressed)
	{
		g_bSetKeyPressed = 0;//清除按下flag
		vSetBuzzer(0);//蜂鸣器短鸣1声	
		bQueueEn(SetKey);
	}
}

void vOkKeyProc()
{
	/*if(g_bOkKeyPressed)
	{		
		if(!g_bKeyShortPressed)//按键没有短按
		{
			g_bKeyShortPressed = 1;
			vSetBuzzer(0);//蜂鸣器短鸣1声			
			bQueueEn(OkKey);//先完成一次短按功能
		}
		
		g_cLongPressCounter++;//开始长按计数
		if( LONG_KEY_COUNT <= g_cLongPressCounter)//1.5S内都是按下状态
		{
			if (!(g_cLongPressCounter % LONG_KEY_SHOT))//0.3S
			{
				g_cLongPressCounter = LONG_KEY_COUNT - LONG_KEY_SHOT;
				bQueueEn(OkLKey);//循环触发长按
				vSetBuzzer(0);//蜂鸣器短鸣1声
			}
		}
	}*/
	//g_bOkKeyPressed = SW_PIN;
	if(SW_PIN)
	{
		if(SW_PIN)
		{
		g_cOkKeyCounter = 0;
		g_bOkKeyPressed = 0;
		g_bOkKeyLPressed = 0;
		}
	}
	else
	{
		g_cOkKeyCounter++;
		if(LONG_KEY_COUNT <= g_cOkKeyCounter)
		{
			if(!g_bOkKeyLPressed)
			{
				g_bOkKeyLPressed = 1;
				//g_cOkKeyCounter = LONG_KEY_COUNT - LONG_KEY_SHOT;
				bQueueEn(OkLKey);
			}
		}
		else if(LONG_KEY_SHOT <= g_cOkKeyCounter)
		{
			if(!g_bOkKeyPressed)
			{
				g_bOkKeyPressed = 1;
				bQueueEn(OkKey);
			}
		}
	}
}

#if 0
//********************************************************
void vIncKeyProc()
{
	if(g_xKnobDir == KNOB_CW)
	{
		bQueueEn(IncSKey);
		//g_cKnobIncStep = g_cKnobCWCounter;
	}
	/*if(g_bAddKeyPressed)
	{	
		if(!g_bKeyShortPressed)//按键没有短按
		{
			g_bKeyShortPressed = 1;
			vSetBuzzer(0);//蜂鸣器短鸣1声			
			bQueueEn(IncSKey);//先完成一次短按功能
		}
		
		g_cLongPressCounter++;//开始长按计数
		if( LONG_KEY_COUNT <= g_cLongPressCounter)//1.5S内都是按下状态
		{
			if (!(g_cLongPressCounter % LONG_KEY_SHOT))//0.3S
			{
				g_cLongPressCounter = LONG_KEY_COUNT - LONG_KEY_SHOT;
				bQueueEn(IncLKey);//循环触发长按
				vSetBuzzer(0);//蜂鸣器短鸣1声
			}
		}
	}*/
}

//********************************************************
void vDecKeyProc()
{
	if(g_xKnobDir == KNOB_CCW)
	{
		bQueueEn(DecSKey);
		//g_cKnobDecStep = g_cKnobCCWCounter;
	}
	/*if(g_bDecKeyPressed)
	{		
		if(!g_bKeyShortPressed)//按键没有短按
		{
			g_bKeyShortPressed = 1;			
			vSetBuzzer(0);//蜂鸣器短鸣1声
			bQueueEn(DecSKey);//先完成一次短按功能		
		}
		
		g_cLongPressCounter++;//开始长按计数
		if( LONG_KEY_COUNT <= g_cLongPressCounter)//3S内都是按下状态
		{
			if (!(g_cLongPressCounter % LONG_KEY_SHOT))//0.3S
			{
				g_cLongPressCounter = LONG_KEY_COUNT - LONG_KEY_SHOT;
				vSetBuzzer(0);//蜂鸣器短鸣1声
				bQueueEn(DecLKey);//循环触发长按				
			}
		}
	}*/
}
#endif

void vTimeLoop(void)//10ms  HavePOWER_flag
{
	g_xLoopTime.t100ms++;
	if (g_xLoopTime.t100ms < 5) return;//未到100ms，返回
	g_xLoopTime.t100ms = 0;

	//100ms things
	//B_Pan_No=1;

	g_xLoopTime.t500ms++;//500ms counter
	if (5 <= g_xLoopTime.t500ms)
	{
		g_xLoopTime.t500ms = 0;	
	
		//if(g_xTftContent.sEnFlash)//需要闪烁的flag
		bQueueEn(Tim05STrig);//往队列中加入500ms event
		
		//setting2 5S无操作退回setting1
		if(g_eSysStatus == SETTING2)
		{
			g_cSt2NoOprTimer++;
			if(10 <= g_cSt2NoOprTimer)//5S
			{
				g_cSt2NoOprTimer = 0;
				bQueueEn(Tim5SNoOpr);
			}
		}
	}

	g_xLoopTime.t1S++;//1S counter
	if (10 <= g_xLoopTime.t1S)
	{
		g_xLoopTime.t1S = 0;
		
		/*蓝牙连接情况持续判断刷新*/
		vBtConnectProc();

		g_xLoopTime.t5S++;//5S counter
		if (5 <= g_xLoopTime.t5S)
		{
			g_xLoopTime.t5S = 0;
			
			//等待状态,无操作计时
			if(g_eSysStatus == WAITING)
			{
				g_cSwch2SleepTime++;
				if(36 <= g_cSwch2SleepTime)//3min = 36 * 5S
				{
					g_cSwch2SleepTime = 0;
					bQueueEn(Tim3MinNoOpr);//3min
				}
			}
			else if(g_eSysStatus == HEATING)//加热状态
			{
				/****************** 提壶计时 ********************/
				if(g_bKettleLift)//提壶标记
				{
					g_cLiftKettleTime++;//计时
					if(60 <= g_cLiftKettleTime)//超时
					{
						g_cLiftKettleTime = 0;
						//切换到waitting状态
						bQueueEn(StartKey);
					}
				}
				else
					g_cLiftKettleTime = 0;
			}
			else if(g_eSysStatus == SETTING1)
			{
				g_cSt1NoOprTimer++;
				if(12 <= g_cSt1NoOprTimer)//1min = 5S * 12
				{
					g_cSt1NoOprTimer = 0;
					bQueueEn(Tim1MNoOpr);
				}
			}					

			g_xLoopTime.t1Min++;//1min counter
			if (12 <= g_xLoopTime.t1Min)
			{
				g_xLoopTime.t1Min = 0;
				
				/****************** 保温计时 ********************/
				if(g_eSysStatus== HEATING)
				{
					if(g_bKeepWarmFlag)
					{
						g_cKeepWarmTime++;
						if(g_xSysSetting.KWTime < g_cKeepWarmTime)
						{
							bQueueEn(StartKey);
						}
					}
				}
			}
		}
	}
}

//发送 UIProc.c 已组好的字节，长度包含末尾三个原始 0xFF。
void vUart0Send(uchar len)
{
	uint overT = 0;
	uchar pos = 0;
	if (len == 0 || len > TJC_CMD_CAPACITY) return;
	while (1)
	{
		Delay(50);
		#if SHARE_UART1
		if (TRMT1)
		{
			TXREG1 = g_cTftCommand[pos++]; // 写入 USART1，由硬件自动发送
			overT = 0; // 每个字节单独计算等待超时
		}
		#else
		if (TRMT0)
		{
			TXREG0 = g_cTftCommand[pos++]; // 未共享 UART1 时使用 USART0
			overT = 0;
		}
		#endif		
		asm("clrwdt");
		Delay(50);
		asm("clrwdt");
		overT++;
		if ((50 < overT) || (len <= pos))
			break;
	}
}
/*
void vUart1Recv(void)
{
	//-------------------------------------------
	//接收控制，如果接收标志位为1，说明有数据接收完毕
	//RCIF在寄存器被读出后自动清零
	if(RC1IF)
	{	
		uchar recv = RCREG1;  	//将接收缓冲区内容读出
		
		
		if(OERR1)							//如果有溢出错误
		{
			CREN1 = 0;						//清零CREN位可将OERR位清零
			CREN1 = 1;						//再次将CREN置一，以允许继续接收
		}		
	}
}*/

void vUart1Send(void)
{
	if(!g_bUart1SendFlag) return; // 没到500ms，直接退出
	g_bUart1SendFlag = 0;         // 清标志

	uchar overT = 0; // 超时计数器
	uchar pos = 0;	
	
	while (1)
	{
		Delay(50);
		#if SHARE_UART1
		pos++;
		#else
		if (TRMT1) // 等待UART1硬件发送寄存器为空
		{
			TXREG1 = c_cUart1SendBuf[pos++]; // 写入数据触发硬件发送
		}
		#endif
		asm("clrwdt");
		Delay(50);
		asm("clrwdt");
		
		overT++;
		// 全部发送完毕 (pos >= 4) 或发生超时 (overT > 50)，退出死循环
		if ((50 < overT) || (pos >= 4)) 
			break;
	}
}

const char* c_pConectSuccess = "CONNECT-S-";
//const char* c_pDisConectStr = "DISCONNECT-S-";
static bit s_bRecvBleCmdStart;//已经启动了接收BLE命令
static bit s_bRecvAtCmdStart;//已经启动了接收AT命令
static uchar s_cUart1RecvPos;//接收数据存储的位置
void vUart1Recv(void)
{
	if(RC1IF) // 检测到UART1接收中断标志
	{	
		uchar temp = RCREG1; // 读出数据，自动清硬件中断标志
		
		if(s_bRecvBleCmdStart)
		{
			g_cUart1RecvBuff[s_cUart1RecvPos++] = temp;
			if(TEMPR_CMD_LEN <= s_cUart1RecvPos) // 接收满3个字节
			{
				s_cUart1RecvPos = 0;
				s_bRecvBleCmdStart = 0;
				
				uchar sum = g_cUart1RecvBuff[0]+g_cUart1RecvBuff[1];
				sum = ~sum;
				if(g_cUart1RecvBuff[2] == sum)
				{
					//g_bBtCmdCorrection = 1;//通讯正常
					g_bBtConectSuccessFlg = 1;
					g_cBtConectSuccessTime = 0;

					if((g_cUart1RecvBuff[0] & 0x80)==0x00)//bit7=0
					{
						//取出当前温度
						g_xIhProcParam.CurTempr = g_cUart1RecvBuff[1];
						/*if(g_eSysStatus == WAITING || g_eSysStatus == HEATING)
							g_xTftAction = UpdCurTempr;*/
					}					
				}
			}
		}
		else if(s_bRecvAtCmdStart)
		{
			g_cUart1RecvBuff[s_cUart1RecvPos++] = temp;
			/*遇到换行符或者字串太长*/

			if(temp == '\n')
			{
				if(s_cUart1RecvPos<=14)//防止DISCONNECT干扰
				{
					char *p = c_pConectSuccess;
					//搜索连接结果
					if(NULL != strstr(g_cUart1RecvBuff, p))
					{
						//连接成功
						g_bBtConectSuccessFlg = 1;
						g_cBtConectSuccessTime = 0;
					}
				}
				s_bRecvAtCmdStart = 0;
				s_cUart1RecvPos = 0;
			}
			//防止过长
			if(R_BUF_LEN <= s_cUart1RecvPos)
			{
				s_bRecvAtCmdStart = 0;
				s_cUart1RecvPos = 0;
			}
		}
		else // 还没开始接收，寻找帧头
		{
			if(temp == 0x55) // 匹配到壶身板发来的帧头
			{
				s_bRecvBleCmdStart = 1;
				s_cUart1RecvPos = 0;
				memset(g_cUart1RecvBuff, 0, R_BUF_LEN);
			}
			else if(temp == '+')
			{
				s_bRecvAtCmdStart = 1;
				s_cUart1RecvPos = 0;
				memset(g_cUart1RecvBuff, 0, R_BUF_LEN);
			}
		}
     	if(OERR1)							//如果有溢出错误
		{
			CREN1 = 0;						//清零CREN位可将OERR位清零
			CREN1 = 1;						//再次将CREN置一，以允许继续接收
		}	
	}
}

//中断函数Time0 每125us执行依次 计数器+1
void interrupt time0(void)//once 125us 
{
	if (TMR2IF)
	{
		TMR2IF = 0;

		g_cT4msCounter++;
		__CMS_GetTouchKeyValue();

		//通讯编码与解码
		vIntSendData();
		vDecodeInTimer();
	}
	
	vUart1Recv();
	//vUart0Recv();
}

//volatile uchar clearTime = 0;
void main(void)
{
	vInitIc();	
	Delay_nms(200);
	Init_ram();//上电给初值

	//vInitVarient();
	vInitDecoding();
	//B_Fan_En = 0;//测试用,防止风扇被关,带不动屏
	vReadSysCfg();
	
	while (1)
	{
		OSCCON = 0x71;
		vIntimeCopyData();
		RecvDataAnalysis();
		asm("clrwdt");
		
		vUart1Send();
		asm("clrwdt");
		
		//ProcessUart1Data();
		//asm("clrwdt");
		//g_cTftCommand[0] = 0x55;
		//vUart0Send(1);	

		if (32 <= g_cT4msCounter)//4ms = 125us * 32
		{
			g_cT4msCounter = 0;
			g_xLoopTime.t20ms++;

			//主程序循环4ms
			Sys_set();

			__CMS_CheckTouchKey();//扫描按键

			Kscan();			//按键处理	

			Knob_Scan();	
		}

		if (5 <= g_xLoopTime.t20ms)//20ms
		{
			g_xLoopTime.t20ms = 0;

			//按键
			vStartKeyProc();
			vSettingKeyProc();
			//vIncKeyProc();
			//vDecKeyProc();
			vOkKeyProc();

			asm("clrwdt");
			//时钟
			vTimeLoop();
			
			asm("clrwdt");
			//系统状态机
			vSystemStatus();
			vTxDataReady();
						
			vLedBreath();
		}
		
		//更新TFT屏显示
		UpdateTftDisplay();
	}
}

/***********************************************
函数名称：Memory_Write
函数功能：写数据/程序寄存器
入口参数：Addr - 写入地址
		  Value - 写入数值
出口参数：返回值 0 - 写操作错误 1 - 写完毕
备注：
1.写闪存程序空间，执行完写操作指令后，处理器会使内部操作暂停，时间非固定精准。所以写时效性较高的程序时，需要特别注意处理好时间。
2.写程序EE过程中需要暂时关闭中断，以保证写EE时序中的写55H和写AAH能够连续进行，否则将有可能写错，并且写EE的可靠工作电压范围为3V以上。
************************************************/
bit Memory_Write(unsigned char Addr, unsigned char Value)
{
	static volatile bit B_GIE_On;
	static volatile unsigned char i = 0;

	B_GIE_On = 0;							//记录进来前是否已经开启中断
	if (GIE)
		B_GIE_On = 1;

	//将要写入的地址放入EEADDR寄存器
	EEADR = Addr;
	EEDAT = Value;						//将要写入的数据给EEPROM的数据寄存器
	EECON1 = 0;
	EEPGD = 0;							//访问数据存储器
	EECON1 | = 0x30;					//烧写时间10ms,时间非固定精准,用户可自定义
	asm("clrwdt");


	WREN = 1;								//允许写周期
	GIE = 0;								//关闭中断

	while (GIE)
	{
		GIE = 0;							//确保中断已关闭
		if (0 == --i)
			return 0;
	}
	asm("clrwdt");

	EECON2 = 0x55;							//给EECON2写入0x55
	EECON2 = 0xaa;							//给EECON2写入0xaa
	WR = 1;									//启动写周期
	asm("nop");
	asm("nop");
	asm("clrwdt");
	WREN = 0;								//禁止写入
	if (B_GIE_On)							//若原来已开启中断的就开启中断	
		GIE = 1;

	if (WRERR)	return 0;				//写操作错误							
	else		return 1;				//写完毕
}

/***********************************************
函数名称：Memory_Read
函数功能：读数据/程序寄存器
入口参数：Addr - 读取地址
出口参数：返回读取地址相应数值
备注：
1.程序EEPROM最多可读写8位数据，程序存储器最多可读16位数据，操作时请注意两者的差异。
************************************************/
unsigned char Memory_Read(uchar Addr)
{
	EEADR = Addr;
	EEPGD = 0;							//访问数据存储器
	RD = 1;									//允许读操作
	asm("nop");
	asm("nop");

	return EEDAT;
}

//***************************************************
//读取系统设置
void vReadSysCfg(void)
{
	uchar temp1, temp2;
	
	/*for(uchar i=0; i<12; i+=2)
	{
		Memory_Write(i+ADDR_KEEP_WARM_TIME, 0xFF);
		Memory_Write(i+ADDR_KEEP_WARM_TIME+1, 0xFF);
	}*/
	
	/****** 读取保温时间设置 ******/
	temp1 = Memory_Read(ADDR_KEEP_WARM_TIME);
	temp2 = Memory_Read(ADDR_KEEP_WARM_TIME1);
	if((temp1+temp2)==0xFF && ((temp1==1)||(temp1==31)||(temp1==61)))
	{
		g_xSysSetting.KWTime = temp1-1;
	}
	else
		g_xSysSetting.KWTime = 0;

	//强制设置显示C1，且导入C1对应值
	g_xTftContent.sItem = 0;
	vSysParam2Tft(g_xTftContent.sItem);
	
	/****** 读取预沸腾设置 ******/
	temp1 = Memory_Read(ADDR_PRE_BOILING);
	temp2 = Memory_Read(ADDR_PRE_BOILING1);
	if((temp1+temp2)==0xFF && ((temp1==1)||(temp1==2)))
	{
		g_xSysSetting.PreBoiling = temp1-1;
	}
	else
		g_xSysSetting.PreBoiling = 0;
		
	/***** 读取温度单位设置 *****/
	temp1 = Memory_Read(ADDR_TEMPR_UNIT);
	temp2 = Memory_Read(ADDR_TEMPR_UNIT1);
	if(((temp1+temp2)==0xFF) && ((temp1==1)||(temp1==2)))
	{
		g_xSysSetting.TemprUnit = temp1-1;
	}
	else
	{
		g_xSysSetting.TemprUnit = 0;
	}
	//系统设置的温度,载入到屏幕显示变量
	if(g_xSysSetting.TemprUnit)
		g_xTftContent.setT = CConvert2F(g_xSysSetting.SetTempr);
	else
		g_xTftContent.setT = g_xSysSetting.SetTempr;
	
	/****** 读取提示音开关设置 *****/
	temp1 = Memory_Read(ADDR_SOUND_ONOFF);
	temp2 = Memory_Read(ADDR_SOUND_ONOFF1);
	if(((temp1+temp2)==0xFF) && ((temp1==1)||(temp1==2)))
	{
		g_xSysSetting.EnBeep = temp1-1;
	}
	else
		g_xSysSetting.EnBeep = 0;
	
	/****** 读取高原设置 *****/
	temp1 = Memory_Read(ADDR_GAOYUAN_ONOFF);
	temp2 = Memory_Read(ADDR_GAOYUAN_ONOFF1);
	g_xSysSetting.BoilingPoint = MAX_TEMPR;//沸腾温度先设置成100度
	if(((temp1+temp2)==0xFF) && ((temp1==1)||(temp1==2)))
	{
		g_xSysSetting.EnGaoyuan = temp1-1;
		if(g_xSysSetting.EnGaoyuan)
		{

			//写入沸腾的最大温度
			//Memory_Write(ADDR_TEMPR_BOILING, MAX_TEMPR);
    		//Memory_Write(ADDR_TEMPR_BOILING1, (uchar)~MAX_TEMPR);
			//读取沸腾的最大温度
			temp1 = Memory_Read(ADDR_TEMPR_BOILING);
			temp2 = Memory_Read(ADDR_TEMPR_BOILING1);
			//读取正确,且值在范围内
			if(((temp1+temp2)==0xFF) && ((MIN_BOILING_TEMPR<temp1)&&(temp1<=MAX_TEMPR)))
				g_xSysSetting.BoilingPoint = temp1;
		}
	}
	else
		g_xSysSetting.EnGaoyuan = 0;
}

