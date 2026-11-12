
#ifndef _UI_PROCESS_H_
#define _UI_PROCESS_H_

#include "mytype.h"
#include <cms.h>
#include <string.h>

#define PAGE_0_LOGO		0
#define PAGE_1_SETTING	1
#define PAGE_2_SETTING	2
#define PAGE_3_WORKING	3
#define PAGE_4_SLEEPING	4

/* USART HMI 的 vis 指令：0 隐藏，1 显示。 */
#define ICON_HIDE 0
#define ICON_DISP 1

typedef struct
{
	//uchar page:3;//页面		
	uchar Sleep:2;//(P4)Sleep四个状态
	//uchar CorF:1;//(P3)温度单位是℃还是℉	
	uchar OldBtOnOff:1;
	uchar BtOnOff:1;//(P3)蓝牙图标显示隐藏
	uchar KWOnOff:1;//(P3)保温图标显示隐藏
	uchar DogDorH:1;//(P3)小狗图标显示隐藏
	
	uchar sEnFlash:1;//(P1,P2)允许1S的闪烁
	//uchar sSetStat:1;//(P1)设置是选择"项"(0)还是"值"(1)
	uchar sSetDorH:1;//(P1)设置是显示(0)还是隐藏(1)
	uchar sItem:3;//(P1)设置项索引(0-4)
	uchar sVal:2;//(P1)设置项的值
	
	uchar OldBall:4;
	uchar Ball:4;//(P3)(吞球)
	uchar setT;//(P3)显示设置温度,如果℉直接为值，如果℃需/2
	uchar curT;//(P3)显示当前温度	
}TFT_Content_TypeDef;

//volatile TFT_Content_TypeDef g_xTftContentPrev;//现在显示的屏内容
volatile TFT_Content_TypeDef g_xTftContent = {0,ICON_HIDE,ICON_HIDE,ICON_HIDE,ICON_HIDE,0,0,0,0,0,0,188,50};//即将显示的屏内容

volatile uchar g_cGapTempr;

//volatile bit g_bReflushPage;

/* 下列数字是 TFT.HMI 图片库的资源 ID，不是控件 ID。 */
#define ICON_SETTING_DELTA       6   // Setting1: 设置项目图片 6~10
#define ICON_SETTING2_DELTA      17  // Setting2: 设置项目图片 17~21
#define ICON_P3_BIGNUM_DELTA     22  // Working: 大数字 0~9
#define ICON_P3P_BIGNUM_DELTA    32  // Working: 带小数点的大数字 0~9
#define ICON_P3_SMNUM_DELTA      42  // Working: 小数字 0~9
#define ICON_P3P_SMNUM_DELTA     52  // Working: 带小数点的小数字 0~9
#define ICON_P3_BALL_BASIC       70  // Ball=1~8 时使用图片 69~62
#define ICON_SLEEP_BASIC        2   // Sleeping: 图片 2~5

#define ICON_SET_OFF            11
#define ICON_SET_ON             14
#define ICON_SET_C              15
#define ICON_SET_F              16
#define ICON_SET_30             12
#define ICON_SET_60             13

/* 下列数字是当前页面图片控件名称 p 后的数字，不是旧 sHMI 控件 ID。 */
#define ICON_ID_DOG             9   // Working.p9
#define ICON_ID_KW              7   // Working.p7
#define ICON_ID_BT              6   // Working.p6
#define ICON_ID_BALL            10  // Working.p10
#define ICON_ID_CF              8   // Working.p8
#define ICON_ID_SETVAL          1   // Setting2.p1

/* 一条指令 = ASCII 命令正文 + 三个原始字节 0xFF；数组不以 NUL 结尾。
 * 例如 page Setting1: 70 61 67 65 20 53 65 74 74 69 6E 67 31 FF FF FF。
 * 32 字节足以容纳本工程最长的页面名，也保留数字控件名的空间。 */
#define TJC_CMD_CAPACITY 32
#define TJC_END_BYTE 0xFF
#define TJC_PICTURE_MAX_ID 74  // 当前 TFT.HMI 导入图片 ID 为 0~74
volatile uchar g_cTftCommand[TJC_CMD_CAPACITY];

/* 以下函数只负责组包。成功返回包含 FF FF FF 的实际字节数；失败返回 0。
 * out 使用 volatile 指针，与 g_cTftCommand 的声明一致。 */
static uchar TjcAppendText(volatile uchar *out, uchar used, const char *text)
{
    while (*text != 0)
    {
        if (used >= TJC_CMD_CAPACITY - 3) return 0;
        out[used++] = (uchar)*text++;
    }
    return used;
}

/* 将 0~255 的数值逐位写为十进制 ASCII，例如 74 写成 '7','4'。 */
static uchar TjcAppendDecimal(volatile uchar *out, uchar used, uchar value)
{
    if (value >= 100)
    {
        if (used >= TJC_CMD_CAPACITY - 3) return 0;
        out[used++] = (uchar)('0' + value / 100);
    }
    if (value >= 10)
    {
        if (used >= TJC_CMD_CAPACITY - 3) return 0;
        out[used++] = (uchar)('0' + (value / 10) % 10);
    }
    if (used >= TJC_CMD_CAPACITY - 3) return 0;
    out[used++] = (uchar)('0' + value % 10);
    return used;
}

static uchar TjcAppendEnd(volatile uchar *out, uchar used)
{
    if (used == 0 || used > TJC_CMD_CAPACITY - 3) return 0;
    out[used++] = TJC_END_BYTE;
    out[used++] = TJC_END_BYTE;
    out[used++] = TJC_END_BYTE;
    return used;
}

/* 页面编号保持业务代码原来的 0~4，实际发送 TFT.HMI 的页面名称。 */
static uchar TjcBuildPage(volatile uchar *out, uchar page)
{
    const char *name;
    uchar used;
    if (out == 0) return 0;
    switch (page)
    {
    case PAGE_0_LOGO:     name = "LOGO"; break;
    case PAGE_1_SETTING:  name = "Setting1"; break;
    case PAGE_2_SETTING:  name = "Setting2"; break;
    case PAGE_3_WORKING:  name = "Working"; break;
    case PAGE_4_SLEEPING: name = "Sleeping"; break;
    default: return 0;
    }
    used = TjcAppendText(out, 0, "page ");
    if (used == 0) return 0;
    used = TjcAppendText(out, used, name);
    return TjcAppendEnd(out, used);
}

/* component 是 p0、p1 等名称中的数字；picture 是图片库资源 ID。
 * 例如 component=0、picture=7 -> p0.pic=7 FF FF FF。 */
static uchar TjcBuildPicture(volatile uchar *out, uchar component, uchar picture)
{
    uchar used;
    if (out == 0 || picture > TJC_PICTURE_MAX_ID) return 0;
    used = TjcAppendText(out, 0, "p");
    if (used == 0) return 0;
    used = TjcAppendDecimal(out, used, component);
    if (used == 0) return 0;
    used = TjcAppendText(out, used, ".pic=");
    if (used == 0) return 0;
    used = TjcAppendDecimal(out, used, picture);
    return TjcAppendEnd(out, used);
}

/* state=ICON_HIDE(0) 隐藏；state=ICON_DISP(1) 显示。
 * 例如 component=6、state=1 -> vis p6,1 FF FF FF。 */
static uchar TjcBuildVisibility(volatile uchar *out, uchar component, uchar state)
{
    uchar used;
    if (out == 0 || (state != ICON_HIDE && state != ICON_DISP)) return 0;
    used = TjcAppendText(out, 0, "vis p");
    if (used == 0) return 0;
    used = TjcAppendDecimal(out, used, component);
    if (used == 0) return 0;
    used = TjcAppendText(out, used, ",");
    if (used == 0) return 0;
    used = TjcAppendDecimal(out, used, state);
    return TjcAppendEnd(out, used);
}

/* 保留 KeyBoard new 的函数接口，供 UIProc.c 和主循环调用。 */
void vUart0Send(uchar len);
void vSwitchTftPage(uchar pageNum);
void vSwitchImageIcon(uchar id, uchar icon);
void vHideDisplayID(uchar id, uchar hd);

typedef enum
{
	UPDIdle,

	SwchPage,

	UpdSetTempr,
	UpdCurTempr,
	UpdBtIcon,
	UpdKeepWarmIcon,
	UpdUnitIcon,//更新温度单位
	UpdDogIcon,//更新小狗图标

	UpdSleepIcon,

	SelSetItem,
	//UpdSetItem,
	UpdSetVal,
	
}UPD_ACTION_Typedef;

volatile UPD_ACTION_Typedef g_xTftAction;

//按照设置的值,全面更新屏(不包括更新page)
void UpdateTftDisplay(void);





#define KNOB_A_PIN	RC3//旋钮引脚1
#define KNOB_B_PIN	RC4//旋钮引脚2
#define SW_PIN	RC5//用于开关机和切换设置的按键

// 旋钮状态枚举
/*typedef enum {
    KNOB_STOP = 0,  // 静止
    KNOB_CW = 1,  // 顺时针旋转
    KNOB_CCW = 2   // 逆时针旋转
} KnobDirTypeDef;
*/
#define KNOB_STABLE_TIMES 2
volatile bit KnobA,KnobB;
//volatile KnobDirTypeDef g_xKnobDir = KNOB_STOP;
//volatile uchar g_cKnobCWCounter = 0;
//volatile uchar g_cKnobCCWCounter = 0;
void Knob_Scan(void);

//PWM control
void vEnablePWM(void);

#define LED_MAX_LIGHT	50
#define LED_MIN_LIGHT	205
volatile bit g_bRedLedBreath;//红灯呼吸flag
volatile bit g_bWhiteLedBreath;//白灯呼吸flag
volatile bit g_bDarkLight;//呼吸时亮起来和灭下去flag
volatile uchar g_cRedLEDLight=LED_MIN_LIGHT;//红色LED亮度 灭.200 最亮.0
volatile uchar g_cWhiteLEDLight=LED_MAX_LIGHT;//白色LED亮度 灭.200 最亮.0
void vSetPWM1(uchar pVal);
void vSetPWM2(uchar pVal);
//void vDisablePWM1(void);
//void vDisablePWM2(void);
void vLedBreath(void);




#endif//_UI_PROCESS_H_