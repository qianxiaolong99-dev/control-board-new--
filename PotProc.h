#ifndef  _POT_PROCESS_H_
#define  _POT_PROCESS_H_


/*************************************************
 * 这里配置串口1屏与BT共享,也就是屏用TX,BT用RX
 *************************************************/
#define SHARE_UART1	1


//℃的单位为0.5℃;℉的单位为1℉
uchar CConvert2F(uchar tempC);
uchar FConvert2C(uchar tempF);

// 连续20s没有出现更高温度，即把检测过程中的最高温度作为高原沸点
#define GAOYUAN_STABLE_TIMES	120

void vGaoyuanBoilingProc(void);

//加热过程处理
void vHeatingProc(void);

// ==================== 蓝牙UART1通讯相关 ======================
//1.接收到连接成功string,置位g_bBtConectSuccessFlg
//2.允许周期性发送命令
//3.接收到命令置位g_bBtCmdCorrection
//4.在连接成功的情况下,周期性检查命令接收情况g_bBtCmdCorrection,超时未接收到命令,需要异常处理

//发送
volatile bit g_bUart1SendFlag;
const uchar c_cUart1SendBuf[]={0xAA,0x01,0xFE,0x00};

void vUart1Send(void);
void vUart1Recv(void);

//BT连接情况处理
void vBtConnectProc(void);


#define R_BUF_LEN	16
#define TEMPR_CMD_LEN	3
volatile uchar g_cUart1RecvBuff[R_BUF_LEN];

volatile bit g_bBtConectSuccessFlg;//连接状态:1.成功
volatile uchar g_cBtConectSuccessTime;//连接成功的情况下,计时
//volatile uchar g_bBtConectSuccessTime;
//volatile bit g_bBtCmdCorrection;//命令接收状态:1.成功


#endif//_POT_PROCESS_H_
