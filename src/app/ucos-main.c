
void assert_param(void*arg){}
	
	
#include "stm32f10x_rcc.h"
extern unsigned int const  OSCfg_TickRate_Hz;

/*配置SysTick定时器*/
void SysTick_init(void)
{
  /* 初始化并使能SysTick定时器 */
  SysTick_Config(SystemCoreClock/OSCfg_TickRate_Hz);
  
  /*  配置1ms 中断一次，即os的频率为1000hz */
	if (SysTick_Config(SystemCoreClock/OSCfg_TickRate_Hz))	
	{ 
		/* Capture error */ 
		while (1);
	}
}



//中断向量表地址偏移
const unsigned int  VEC_OFFSET=0;

//时钟频率
const unsigned int Default_Hse_Value=72000000;


/**
  ******************************************************************************
  * @file    main.c
  * @author  Lyc
  * @version V1.0
  * @date    2014-xx-xx
  * @brief   等待多个内核对象的使用程序
  *          现象：没有按按键的情况，灯每秒转换一次状态。如果按下按键，灯即刻转换状态。
	*                任务等待消息发送过来或者按键被按下就改变状态
	*                打开串口助手还是看到是按键被按下还是发送消息导致灯改变状态的。
  ******************************************************************************
  * @attention
  *
  * 实验平台:野火 ISO-V2 STM32 开发板 （若是ISO-V1开发板需要做少量底层硬件修改）
  * 论坛    :http://www.chuxue123.com
  * 淘宝    :http://firestm32.taobao.com
  *
  ******************************************************************************
  */
  
#include "os.h"
#include "app.h"

OS_TCB	StartUp_TCB;		   					          //定义任务控制块
CPU_STK	StartUp_Stk[STARTUP_TASK_STK_SIZE];		//定义任务堆栈

/**
  * @brief  主函数
  * @param  无
  * @retval 无
  */
int main(void)
{
  OS_ERR err;	

  /* 初始化"uC/OS-III"内核 */  
	OSInit(&err);		                                        
  
	/*创建任务*/
	OSTaskCreate((OS_TCB     *)&StartUp_TCB,                // 任务控制块指针          
               (CPU_CHAR   *)"StartUp",		                // 任务名称
               (OS_TASK_PTR )Task_Start, 	                // 任务代码指针
               (void       *)0,			                      // 传递给任务的参数parg
               (OS_PRIO     )STARTUP_TASK_PRIO,			      // 任务优先级
               (CPU_STK    *)&StartUp_Stk[0],	            // 任务堆栈基地址
               (CPU_STK_SIZE)STARTUP_TASK_STK_SIZE/10,	  // 堆栈剩余警戒线
               (CPU_STK_SIZE)STARTUP_TASK_STK_SIZE,			  // 堆栈大小
               (OS_MSG_QTY  )0,			                      // 可接收的最大消息队列数
               (OS_TICK     )0,			                      // 时间片轮转时间
               (void       *)0,			                      // 任务控制块扩展信息
               (OS_OPT      )(OS_OPT_TASK_STK_CHK | 
                              OS_OPT_TASK_STK_CLR),	      // 任务选项
               (OS_ERR     *)&err);		                    // 返回值
	
  /* 启动多任务系统，控制权交给uC/OS-II */
  OSStart(&err);                                       
}

/*********************************************END OF FILE**********************/

