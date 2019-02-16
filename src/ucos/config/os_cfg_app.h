/*
************************************************************************************************************************
*                                                      uC/OS-III
*                                                 The Real-Time Kernel
*
*                                  (c) Copyright 2009-2011; Micrium, Inc.; Weston, FL
*                           All rights reserved.  Protected by international copyright laws.
*
*                                       OS CONFIGURATION (APPLICATION SPECIFICS)
*
* File    : OS_CFG_APP.H
* By      : JJL
* Version : V3.02.00
*
* LICENSING TERMS:
* ---------------
*           uC/OS-III is provided in source form for FREE short-term evaluation, for educational use or 
*           for peaceful research.  If you plan or intend to use uC/OS-III in a commercial application/
*           product then, you need to contact Micrium to properly license uC/OS-III for its use in your 
*           application/product.   We provide ALL the source code for your convenience and to help you 
*           experience uC/OS-III.  The fact that the source is provided does NOT mean that you can use 
*           it commercially without paying a licensing fee.
*
*           Knowledge of the source code may NOT be used to develop a similar product.
*
*           Please help us continue to provide the embedded community with the finest software available.
*           Your honesty is greatly appreciated.
*
*           You can contact us at www.micrium.com, or by phone at +1 (954) 217-2036.
************************************************************************************************************************
*/

#ifndef OS_CFG_APP_H
#define OS_CFG_APP_H

/*
************************************************************************************************************************
*                                                      CONSTANTS
************************************************************************************************************************
*/
//-------- <<< Use Configuration Wizard in Context Menu >>> -----------------   
                                                            /* --------------------- MISCELLANEOUS ------------------ */
//<o>消息队列
#define  OS_CFG_MSG_POOL_SIZE            100u               /* Maximum number of messages                             */
//<o>中断堆栈
//<i>单位CPU_STK
//<i>此项设置了μC/OS-III的中断堆栈大小(以CPU_STK为单位)，注意，次堆栈的大小需要满足中断嵌套的最坏情况，假设处理器支持中断嵌套。该堆栈的声明在os_cfg_app.c中，形式如下：CPU_STK OSCfg_ISRStk[OS_CFG_ISR_STK_SIZE];
#define  OS_CFG_ISR_STK_SIZE             128u               /* Stack size of ISR stack (number of CPU_STK elements)   */
//<o>堆栈限位(空值率)
//<i>堆栈空闲率< (值%),堆栈溢出置位
//<i>这个#define为空闲任务，统计任务，节拍任务，中断队列处理任务和定时器任务的任务堆栈 设置堆栈溢出检测限位（以空余百分比的形式）。换句话说，设置值是堆栈剩余的空间比例。
//<i>例如，如果堆栈的大小为1000个CPU_STK单元，而用户声明的OS_CFG_TASK_STK_LIMIT_PCT_EMPTY为10，则堆栈溢出检测限位将在堆栈%90满或在%10空的时候被置位。
//<i>如果处理器的堆栈是从高地址向低地址的增长，那么检测限位应该靠近堆栈的“基地址”，即接近堆栈的0单元。
//<i>如果处理器不支持自动堆栈限位检测，则应该将这个#define设置为0.
#define  OS_CFG_TASK_STK_LIMIT_PCT_EMPTY  10u               /* Stack limit position in percentage to empty            */


                                                            /* ---------------------- IDLE TASK --------------------- */
//<o>空闲任务堆栈
//<i>设置空闲任务的堆栈大小(以CPU_STK为单位)，注意，设置的任务堆栈大小至少要大于OS_CFG_STK_SIZE_MIN值(见os_cfg.h)
#define  OS_CFG_IDLE_TASK_STK_SIZE        64u               /* Stack size (number of CPU_STK elements)                */


                                                            /* ------------------ ISR HANDLER TASK ------------------ */
//<o>中断队列大小
//<i>如果OS_CFG_ISR_POST_DEFERRED_EN设置为1(见os_cfg.h)，则这个#define指定了中断队列可以容纳的项目数。此队列的大小取决于 ISR处理程序期间，可能发生多少此中断？其大小还取决于是否允许中断嵌套。一个很好的初始值大约是10.
#define  OS_CFG_INT_Q_SIZE                10u               /* Size of ISR handler task queue                         */
//<o>中断队列任务堆栈
//<i>如果OS_CFG_ISR_POST_DEFERRED_EN设置为1(见os_cfg.h)，则#define设置的ISR处理任务(ISR handler task’s stack)的堆栈大小(以CPU_STK为单位)
#define  OS_CFG_INT_Q_TASK_STK_SIZE      128u               /* Stack size (number of CPU_STK elements)                */


                                                            /* ------------------- STATISTIC TASK ------------------- */
//<h>统计任务
//<o>优先级
#define  OS_CFG_STAT_TASK_PRIO            11u               /* Priority                                               */
//<o>执行频率Hz
#define  OS_CFG_STAT_TASK_RATE_HZ         10u               /* Rate of execution (1 to 10 Hz)                         */
//<o>堆栈
//<i>CPU_STK
#define  OS_CFG_STAT_TASK_STK_SIZE       128u               /* Stack size (number of CPU_STK elements)                */
//</h>

                                                            /* ------------------------ TICKS ----------------------- */
//<h>节拍任务
//<o>执行频率
#define  OS_CFG_TICK_RATE_HZ            1000u               /* Tick rate in Hertz (10 to 1000 Hz)                     */
//<o>优先级
//<i>节拍任务的优先级。建议将此任务设置在一个相当高的优先级上，但并不是最高的。分配给该任务的优先级必须大于0并且小于OS_CFG_PRIO_MAX-1.
#define  OS_CFG_TICK_TASK_PRIO          OS_CFG_PRIO_MAX-4u  /* Priority     
<o>堆栈                                          */
#define  OS_CFG_TICK_TASK_STK_SIZE       128u               /* Stack size (number of CPU_STK elements)                */
//<o>轮盘大小
//<i>这个#define定义了OSTickWheel[]表中的项目数。“轮盘”的作用，是可以减少节拍任务每次需要检查更新的任务数量。轮盘的大小应该是应用程序的预期总任务数的几分之一。
//<i>其值应该是4~1024之间的数。
//<i>任务管理的开销在某种程度上决定了轮盘的大小。
//<i>较大的轮盘尺寸将会减小节拍管理的负荷，但会需要更多地RAM。
//<i>轮盘的每个项目都包含一个指针、一个计数器，计数器记录了在轮盘的这一条“轮辐”上等待的任务数。
//<i>这个计数器通常16位的。建议不要将OS_CFG_TICK_WHEEL_SIZE设置为与节拍频率成倍数的关系。如果应用程序有很多任务，建议设置一个较大的轮盘尺寸。
//<i>作为初始值，建议使用一个质数(3,5,7,11，13，17,19,23…)。
#define  OS_CFG_TICK_WHEEL_SIZE           17u               /* Number of 'spokes' in tick  wheel; SHOULD be prime     */
//</h>


                                                            /* ----------------------- TIMERS ----------------------- */
//<h>定时器任务
//<o>优先级
//<i>指定μC/OS-III定时器任务优先级。建议设置在一个中等偏低的优先级上。
//<i>频率高=>优先级高,轮盘大=>优先级高,定时器多=>优先级低
#define  OS_CFG_TMR_TASK_PRIO           OS_CFG_PRIO_MAX-3u  /* Priority of 'Timer Task'                               */
//<o>执行频率 Hz
//<i>定时器任务的频率。一般默认设置为10Hz。当然定时器可以以更高的速度运行，代价是更高的处理器开销。
//<i>注：OS_CFG_TMR_TASK_RATE_HZ必须是OS_CFG_TICK_TASK_RATE_HZ的整数分之一。
//<i>换句话说，如果设置OS_CFG_TICK_TASK_RATE_HZ==1000Hz，请不要设置OS_CFG_TMR_TASK_RATE_HZ为11，因为那样子每次定时器更新都将需要90.91时钟节拍，不是整数。
#define  OS_CFG_TMR_TASK_RATE_HZ        100u                /* Rate for timers (100 Hz Typ.)                           */
//<o>堆栈
#define  OS_CFG_TMR_TASK_STK_SIZE       128u                /* Stack size (number of CPU_STK elements)                */
//<o>轮盘大小
//<i>定时器的更新采用了轮转的轮盘机制。“轮盘”的作用，是可以减少定时器管理任务每次需要检查更新的任务数量。轮盘的大小用该时应用程序的总定时器数目的几分之一。
//<i>其值应该是4~1024之间的数。定时器管理的开销在某种程度上决定了轮盘的大小。较大的轮盘尺寸将会减小定时器管理的负荷，但会需要更多地RAM。轮盘的每个项目都包含一个指针、一个计数器，计数器记录了在轮盘的这一条“轮辐”上等待的任务数。这个计数器通常16位的。建议不要将此值设置为与节拍频率成倍数的关系。如果应用程序有很多定时器，建议设置一个较大的轮盘尺寸。作为初始值，建议使用一个质数(3,5,7,11，13，17,19,23…)。
#define  OS_CFG_TMR_WHEEL_SIZE          17u                 /* Number of 'spokes' in timer wheel; SHOULD be prime     */
//</h>



#endif
