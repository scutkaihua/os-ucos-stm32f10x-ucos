#include "app.h"
#include "os.h"
extern	OS_TCB	StartUp_TCB;					

static  OS_TCB	SEM_TCB;		   				
static	CPU_STK	Sem_Stk[TASK_SEM_STK_SIZE];	     	

static  OS_TCB	Product_TCB;		   					
static	CPU_STK	PRO_Stk[TASK_PRODUCT_STK_SIZE];	   

static  OS_TCB	Customer_TCB;		   					
static	CPU_STK	Cus_Stk[TASK_CUSTOMER_STK_SIZE];	   

OS_SEM SemOfPRODUCT;

/* 
 * 函数名：Task_Start
 * 描述  : 启动任务，优先级为3，创建其他任务
 * 输入  ：无
 * 输出  : 无
 */
void Task_Start(void *p_arg)
{
	OS_ERR err;
  (void)p_arg;	

  CPU_Init();

  SysTick_init();

  //创建信号量任务
	OSTaskCreate((OS_TCB     *)&SEM_TCB,					            // 任务控制块指针          
               (CPU_CHAR   *)"Sem",						              // 任务名称
               (OS_TASK_PTR )Task_Sem,					            // 任务代码指针
               (void       *)0,							                // 传递给任务的参数parg
               (OS_PRIO     )TASK_SEM_PRIO,				        // 任务优先级
               (CPU_STK    *)&Sem_Stk[0],				          // 任务堆栈基地址
               (CPU_STK_SIZE)TASK_SEM_STK_SIZE/10,		      // 堆栈剩余警戒线
               (CPU_STK_SIZE)TASK_SEM_STK_SIZE,			      // 堆栈大小
               (OS_MSG_QTY  )0,							                // 可接收的最大消息队列数
               (OS_TICK     )0,							                // 时间片轮转时间
               (void       *)0,							                // 任务控制块扩展信息
               (OS_OPT      )(OS_OPT_TASK_STK_CHK | 
                              OS_OPT_TASK_STK_CLR),	        // 任务选项
               (OS_ERR     *)&err);						              // 返回值
			

	//创建生产者
	OSTaskCreate((OS_TCB     *)&Product_TCB,					  
               (CPU_CHAR   *)"PRODUCT",						
               (OS_TASK_PTR )Task_PRODUCT,				
               (void       *)0,							
               (OS_PRIO     )TASK_PRODUCT_PRIO,				
               (CPU_STK    *)&PRO_Stk[0],				
               (CPU_STK_SIZE)TASK_PRODUCT_STK_SIZE/10,		
               (CPU_STK_SIZE)TASK_PRODUCT_STK_SIZE,			
               (OS_MSG_QTY  )0,						
               (OS_TICK     )0,							
               (void       *)0,							
               (OS_OPT      )(OS_OPT_TASK_STK_CHK | 
                              OS_OPT_TASK_STK_CLR),	 
               (OS_ERR     *)&err);	
							 
	//创建消息者
	OSTaskCreate((OS_TCB     *)&Customer_TCB,					  
               (CPU_CHAR   *)"Customer",						
               (OS_TASK_PTR )Task_CUSTOMER,				
               (void       *)0,							
               (OS_PRIO     )TASK_CUSTOMER_PRIO,				
               (CPU_STK    *)&Cus_Stk[0],				
               (CPU_STK_SIZE)TASK_CUSTOMER_STK_SIZE/10,		
               (CPU_STK_SIZE)TASK_CUSTOMER_STK_SIZE,			
               (OS_MSG_QTY  )0,						
               (OS_TICK     )0,							
               (void       *)0,							
               (OS_OPT      )(OS_OPT_TASK_STK_CHK | 
                              OS_OPT_TASK_STK_CLR),	 
               (OS_ERR     *)&err);	
               
  //任务删除自己	
	OSTaskDel(&StartUp_TCB,&err);							 
}


/* 
 * 函数名：Task_Sem
 * 描述  : 用信号量模拟停车场车位管理任务，优先级为4，
 *         
 * 输入  ：p_arg    用户参数
 * 输出  : 无
 */
void Task_Sem(void *p_arg)
{
  OS_ERR err;
  OS_SEM_CTR  Ctr;
	 CPU_TS      ts;
  (void)p_arg;  

  //在使用信号量之前一定要先创建信号量。
  //创建一个信号量，按键按下的时候post一个信号量给其他任务。
  OSSemCreate ((OS_SEM      *)&SemOfPRODUCT,     //指向信号量变量的指针
               (CPU_CHAR    *)"SemOfPRODUCT",    //信号量的名字
               (OS_SEM_CTR   )0,             //信号量计数值Ctr代表的是停车场的车位数，3个
               (OS_ERR      *)&err);         //错误类型
  
  
  while (1)
  {
    OSTimeDlyHMSM(0, 0,0,500,OS_OPT_TIME_HMSM_STRICT,&err);	//延时阻塞500ms
  }
}
//按键定时扫描的定时器
void cbTimerOfPRODUCT (OS_TMR *p_tmr, void *p_arg)
{
  OS_ERR      err;
  OSSemPost ((OS_SEM  *)&SemOfPRODUCT,
                    (OS_OPT   )OS_OPT_POST_ALL,
                    (OS_ERR  *)&err);

}
/* 
 * 函数名：Task_PRODUCT
 * 描述  : 按键的初始化和创建定时器对按键进行扫描
 *			   优先级为OS_CFG_PRIO_MAX-5u
 * 输入  ：p_arg    用户参数
 * 输出  : 无
 */
void Task_PRODUCT(void *p_arg)
{
  OS_ERR err;  
  OS_TMR TmrOfPRODUCT;

  (void)p_arg;
  //创建一个定时器，用来定时扫描按键状态,10m扫描一次按键
  OSTmrCreate ((OS_TMR              *)&TmrOfPRODUCT,
               (CPU_CHAR            *)"TmrOfPRODUCT",
               (OS_TICK              )0,
               (OS_TICK              )100,  //注意定时器定时的单位在例程中是10ms，所以这里用1就可以
               (OS_OPT               )OS_OPT_TMR_PERIODIC,
               (OS_TMR_CALLBACK_PTR  )cbTimerOfPRODUCT,
               (void                *)0,
               (OS_ERR              *)&err);
               
  //开启定时器
  OSTmrStart (&TmrOfPRODUCT,&err);
  
  while (1)
  {

    OSTimeDly ((OS_TICK   )1000,
               (OS_OPT    )OS_OPT_TIME_DLY,
               (OS_ERR   *)&err);
  }
}



/* 
 * 函数名：Task_CUSTOMER
 * 描述  : 按键的初始化和创建定时器对按键进行扫描
 *			   优先级为OS_CFG_PRIO_MAX-5u
 * 输入  ：p_arg    用户参数
 * 输出  : 无
 */
void Task_CUSTOMER(void *p_arg)
{
  OS_ERR err;
  OS_SEM_CTR  Ctr;
	 CPU_TS      ts;
  while (1)
  {

    //获取信号量
    Ctr= OSSemPend((OS_SEM   *)&SemOfPRODUCT,
                   (OS_TICK   )0,                         //如果这个参数设置为0就一直等待下去
                   (OS_OPT    )OS_OPT_PEND_BLOCKING,  //如果没有信号量也不阻塞
                   (CPU_TS   *)&ts,                       //这个参数是指向存放信号量被提交、强制解除等待状态、或者信号量被删除的时间戳        
                   (OS_ERR   *)&err);   //LED1( ON );
		
	  OSTimeDly ((OS_TICK   )10,
               (OS_OPT    )OS_OPT_TIME_DLY,
               (OS_ERR   *)&err);
  }
}

/* -------------------------------------end of file------------------------------------ */
