/*
************************************************************************************************************************
*                                                      uC/OS-III
*                                                 The Real-Time Kernel
*
*                                  (c) Copyright 2009-2011; Micrium, Inc.; Weston, FL
*                           All rights reserved.  Protected by international copyright laws.
*
*                                                  CONFIGURATION FILE
*
* File    : OS_CFG.H
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

#ifndef OS_CFG_H
#define OS_CFG_H



//-------- <<< Use Configuration Wizard in Context Menu >>> -----------------                                             
                                             /* ---------------------------- MISCELLANEOUS -------------------------- */
//<e>使用钩子
//<i>当#define设置为1时，说明μC/OS-III的钩子函数(介入函数)可以调用用户定义的钩子函数。从而实现μC/OS-III自身的功能能够扩充，通过用户程序代码实现。
#define OS_CFG_APP_HOOKS_EN             1u   /* Enable (1) or Disable (0) application specific hooks                  */
//</e>
//<e>检测入参
//<i>该宏决定用户是否希望对μC/OS-III的大部分函数执行参数检查，如确保传递传递给函数的指针非NULL、参数值在允许的范围内、选项是有效的等。
//<i>当设置为0时，将禁止参数检查功能，相应的节省内核的代码空间和处理时间。
//<i>统计发现，μC/OS-III为超过40个函数提供参数检查功能。因此，禁用此选项将节约几百字节的代码空间。
//<i>应用中，可以考虑调试阶段开启此选项，项目的后期发布阶段禁止该选项。
#define OS_CFG_ARG_CHK_EN               1u   /* Enable (1) or Disable (0) argument checking                           */
//</e>
//<e>检测中断调用
//<i>决定内核是否进行检查以确保大多数的函数没有被ISR调用。换句话说，大多数μC/OS-III函数应该只被任务级代码调用，除了“POST”类的发送函数(它们可以被ISR调用)。
//<i>μC/OS-III为大约50个函数提供此项检查。因此，禁用此选项，将节约几百字节的代码空间。
//<i>应用中，可以考虑调试阶段开启此选项，项目的后期发布阶段禁止该选项。
#define OS_CFG_CALLED_FROM_ISR_CHK_EN   1u   /* Enable (1) or Disable (0) check for called from ISR                   */
//</e>
//<e>调试
//<i>当这个宏设置为1时，os_dbg.c中的ROM常量将被添加以帮助支持内核调试器。具体来说，调试器将可以通过查询一系列所谓的ROM变量，来获知编译时的选项。例如，调试器可以找出OS_TCB的尺寸大小、μC/OS-III的版本号、一个事件标志组的尺寸(OS_FLAG_GRP)等。
#define OS_CFG_DBG_EN                   1u   /* Enable (1) debug code/variables                                       */
//</e>
//<e>中断post防护
//<i>当置为1时，将减小中断延迟，因为在μC/OS-III的大多数临界段代码中将不再禁用中断。相反，在这些临界段代码执行期间，调度器将被锁定。该宏设置为1的好处是中断延迟小，但是，ISR到任务的响应时间会变得略长。如果启用了以下服务，建议设置改为1，因为若设置它为0，则中断延迟有可能会变得无法接受的长：
//<i> Event Flags 事件标志组
//<i> Multiple Pend 多内核对象
#define OS_CFG_ISR_POST_DEFERRED_EN     1u   /* Enable (1) or Disable (0) Deferred ISR posts                          */
//</e>
//<e>检测内核对象类型
//<i>决定是否让大多数的μC/OS-III函数检查其操作的内核对象类型是否正确。换言之，如果希望发送一个信号量，那么用户传递的是否确实是一个信号量，或者错误的使用了其他类型的内核对象呢？μC/OS-III的内核对象检查大约有30处，禁用该选项，将节约几百字节的代码空间以及部分的处理时间。
//<i>建议调试阶段开启该选项；发布代码时关闭该检查项。
#define OS_CFG_OBJ_TYPE_CHK_EN          1u   /* Enable (1) or Disable (0) object type checking                        */
//</e>
//<e>时间戳
//<i>OS_CFG_SCHED_LOCK_TIME_MEAS_EN使能时，要开启
#define OS_CFG_TS_EN                    1u   /* Enable (1) or Disable (0) time stamping                               */
//</e>
//<e>多事件等待
//<i>决定代码是否支持等待多个事件(如信号量或消息队列)，启用(1)或禁用(0)。
#define OS_CFG_PEND_MULTI_EN            1u   /* Enable (1) or Disable (0) code generation for multi-pend feature      */
//</e>
//<o>最大优先级数量
//<i>指定应用程序可用优先级的最大数量。将该宏指定为刚好够用户计划使用的优先级数量，将减少μC/OS-III所需的RAM量。
//<i>在μC/OS-III.中，如果OS_PRIO数据类型为CPU_INT08U，则任务优先级可以从0(最高优先级)到最大255(最低优先级)。然而在μC/OS-III中，对于优先级的数量实际上没有限制。
//<i>具体来说，如果定义OS_PRIO数据类型为CPU_INT16U，则任务优先级将多达65536个。应该总是设置OS_CFG_PRIO_MAX为8的倍数(如8,16,32,64,128,256等)，设置的优先级数量越多，μC/OS-III.的RAM开销越大。
//<i>另，μC/OS-III.为自身保留了优先级（OS_CFG_PRIO_MAX-2）和（OS_CFG_PRIO_MAX-1）；前者用于空闲任务OS_IdleTask()。此外，不要将优先级0用于任何应用程序没因为它是μC/OS-III.保留作为ISR处理任务的。因此，应用程序的优先级可以在2到（OS_CFG_PRIO_MAX-3）之间(含)取值。
#define OS_CFG_PRIO_MAX                64u   /* Defines the maximum number of task priorities (see OS_PRIO data type) */

//<e>测量调度器被锁定时间
//<i>决定是否生成 测量调度器被锁定时间（measure the amount of time the scheduler is locked） 的代码。这主要用于确定任务延迟。
#define OS_CFG_SCHED_LOCK_TIME_MEAS_EN  1u   /* Include code to measure scheduler lock time                           */
//</e>
//<e>时间片调度
//<i>决定是否生成时间片轮转调度代码。
#define OS_CFG_SCHED_ROUND_ROBIN_EN     1u   /* Include code for Round-Robin scheduling                               */
//</e>
//<o>任务最小堆栈
//<i>定义各个任务的最小堆栈大小(以CPU_STK为单元)。这为μC/OS-III在每个任务创建时提供了足够的堆栈空间。假设一个处理器包含16个32位的寄存器。同样，假设CPU_STK被声明为CPU_INT32U类型，那么最低限度，设置OS_CFG_STK_SIZE_MIN为16.然而，这将是很不明智的，因为可能无法容纳存储局部变量、函数调用的返回、可能的ISR嵌套。
//<i>请参阅处理器的“移植”来看看如何设置这个最小值。注意，这是一个保障，来确保有足够的任务堆栈空间。
#define OS_CFG_STK_SIZE_MIN            64u   /* Minimum allowable task stack size                                     */


//<e>事件标志组
//<i>设置为1时，允许生成事件标志服务的代码和数据结构，即开启了事件标志服务功能。
//如果设置为0，那么无需再开启/禁止该文件中任何名称为OS_CFG_FLAG_xxx的#define常量。
//应用不需要相关服务时，可以禁止该功能，以此来减少代码和数据的空间需求。                                             /* ----------------------------- EVENT FLAGS --------------------------- */
#define OS_CFG_FLAG_EN                  1u   /* Enable (1) or Disable (0) code generation for EVENT FLAGS             */

#if OS_CFG_FLAG_EN > 0u
//<e>OSFlagDel()
//<i>决定是否生成OSFlagDel()函数代码。
#define OS_CFG_FLAG_DEL_EN              1u   /*     Include code for OSFlagDel()                                      */
//</e>
//<e>等待事件标志变为0
//<i>是否生成代码用于等待事件标志变为0.通常是等待事件标志被置为1。但是用户也可能需要等待事件标志的清零，在这种情况下，需要开启此选项。
#define OS_CFG_FLAG_MODE_CLR_EN         1u   /*     Include code for Wait on Clear EVENT FLAGS                        */
//</e>
//<e>OSFlagPendAbort()
//<i>OSFlagPendAbort().函数是否生成。
#define OS_CFG_FLAG_PEND_ABORT_EN       1u   /*     Include code for OSFlagPendAbort()                                */
//</e>
#else
#define OS_CFG_FLAG_DEL_EN              0u   /*     Include code for OSFlagDel()                                      */
#define OS_CFG_FLAG_MODE_CLR_EN         0u   /*     Include code for Wait on Clear EVENT FLAGS                        */
#define OS_CFG_FLAG_PEND_ABORT_EN       0u   /*     Include code for OSFlagPendAbort()                                */
#endif
                                             /* -------------------------- MEMORY MANAGEMENT ------------------------ */
//</e>
//<e>内存分区
//<i>os_mem.c代码,决定是否生成分区存储管理代码和相关的数据结构。这让用户在不使用存储分区时，减少代码和数据的空间需求。
#define OS_CFG_MEM_EN                   1u   /* Enable (1) or Disable (0) code generation for MEMORY MANAGER          */
//</e>
                                             /* --------------------- MUTUAL EXCLUSION SEMAPHORES ------------------- */


//<e>互斥量
//<i>决定是否开启互斥信号量服务的代码和数据结构。
//<i>同其他的内核服务开关一样，OS_CFG_MUTEX_EN被设置为0，那么无需再开启/禁止本系统中任何名为OS_CFG_MUTEX_XXX 的#define常量。
#define OS_CFG_MUTEX_EN                 1u   /* Enable (1) or Disable (0) code generation for MUTEX                   */

#if OS_CFG_MUTEX_EN > 0u
//<e>OSMutexDel()
//<i>是否生成OSMutexDel().代码。
#define OS_CFG_MUTEX_DEL_EN             1u   /*     Include code for OSMutexDel()                                     */
//</e>
//<e>OSMutexPendAbort()
//<i>是否生成OSMutexPendAbort().代码
#define OS_CFG_MUTEX_PEND_ABORT_EN      1u   /*     Include code for OSMutexPendAbort()                               */
//</e>
#else
#define OS_CFG_MUTEX_DEL_EN             0u   /*     Include code for OSMutexDel()                                     */
#define OS_CFG_MUTEX_PEND_ABORT_EN      0u   /*     Include code for OSMutexPendAbort()                               */
#endif
//</e>
                                             /* --------------------------- MESSAGE QUEUES -------------------------- */

//<e>消息队列
//<i>决定是否生成消息队列服务的代码和数据结构。
//<i>同其他的内核服务开关一样，OS_CFG_Q_EN被设置为0，那么无需再开启/禁止本系统中任何名为OS_CFG_Q_XXX 的#define常量。
#define OS_CFG_Q_EN                     1u   /* Enable (1) or Disable (0) code generation for QUEUES                  */

#if OS_CFG_Q_EN > 0u
//<e>OSQDel()
#define OS_CFG_Q_DEL_EN                 1u   /*     Include code for OSQDel()                                         */
//</e>
//<e>OSQFlush()
#define OS_CFG_Q_FLUSH_EN               1u   /*     Include code for OSQFlush()                                       */
//</e>
//<e>OSQPendAbort()
#define OS_CFG_Q_PEND_ABORT_EN          1u   /*     Include code for OSQPendAbort()                                   */
//</e>
#else
#define OS_CFG_Q_DEL_EN                 0u   /*     Include code for OSQDel()                                         */
#define OS_CFG_Q_FLUSH_EN               0u   /*     Include code for OSQFlush()                                       */
#define OS_CFG_Q_PEND_ABORT_EN          0u   /*     Include code for OSQPendAbort()                                   */
#endif
//</e>
                                             /* ----------------------------- SEMAPHORES ---------------------------- */

//<e>信号量
#define OS_CFG_SEM_EN                   1u   /* Enable (1) or Disable (0) code generation for SEMAPHORES              */

#if OS_CFG_SEM_EN > 0u
//<e>OSSemDel()
#define OS_CFG_SEM_DEL_EN               1u   /*    Include code for OSSemDel()                                        */
//</e>
//<e>OSSemPendAbort()
#define OS_CFG_SEM_PEND_ABORT_EN        1u   /*    Include code for OSSemPendAbort()                                  */
//</e>
//<e>OSSemSet()
#define OS_CFG_SEM_SET_EN               1u   /*    Include code for OSSemSet()                                        */
//</e>
#else
#define OS_CFG_SEM_DEL_EN               1u   /*    Include code for OSSemDel()                                        */
#define OS_CFG_SEM_PEND_ABORT_EN        1u   /*    Include code for OSSemPendAbort()                                  */
#define OS_CFG_SEM_SET_EN               1u   /*    Include code for OSSemSet()                                        */
#endif
//</e>
                                             /* -------------------------- TASK MANAGEMENT -------------------------- */
//<h>任务管理
//<e>统计任务
//<i>决定是否启用μC/OS-III.的统计任务OS_StatTask()，以及他的初始化函数void OS_StatTaskInit ()。
//<i>OS_StatTask()计算应用程序的CPU使用率、每个任务的堆栈开销、每个任务在运行时的CPU使用率等。
//<i>当启用时，OS_StatTask()按照OS_CFG_TICK_RATE_HZ(see os_cfg_app.h)的频率执行。计算OSStatTaskCPUUsage的值时应该注意，它是一个应用程序CPU使用率的百分比值。OS_StatTask()在每次执行时调用OSStatTaskHook()钩子函数，进而用户可以通过它添加自定义的统计功能。统计任务的详细信息，参见os_stat.c。OS_StatTask()的优先级是应用程序中可配置的(see os_cfg_app.h)
//<i>如果OS_CFG_STAT_TASK_STK_CHK_EN被设为1，则OS_StatTask()还将计算每个任务的堆栈使用情况。此时OS_StatTask()每次执行时，将为每个任务调用OSTaskStkChk()，并将结果放置在该任务的TCB中。任务TCB的.StkFree 和.StkUsed域分别代表剩余空间(字节单位)已用空间(字节单位)。
//<i>如果OS_CFG_STAT_TASK_STK_CHK_EN被设为0，则统计任务用到的所有变量都将没有声明(见os.h)，当然也将减少内核的RAM开销。
#define OS_CFG_STAT_TASK_EN             0u   /* Enable (1) or Disable(0) the statistics task                          */
//</e>
//<e>统计任务-堆栈监测
//<i>决定统计任务是否为每个任务调用OSTaskStkChk()堆栈监测。为了做到这一点，需要将OS_CFG_STAT_TASK_EN设置为1(即统计任务需要开启)。当然，可以在某个任务中调用OSTaskStkChk()函数以获得这个任务的此类信息。
#define OS_CFG_STAT_TASK_STK_CHK_EN     0u   /* Check task stacks from statistic task                                 */
//</e>
//<e>任务函数-更改优先级
//<i>决定是否生成OSTaskChangePrio()函数
#define OS_CFG_TASK_CHANGE_PRIO_EN      0u   /* Include code for OSTaskChangePrio()                                   */
//</e>
//<e>任务函数-删除任务
#define OS_CFG_TASK_DEL_EN              1u   /* Include code for OSTaskDel()                                          */
//</e>
//<e>任务函数-直接收发消息
//<i>决定是否生成直接向/从任务和ISR发送和接收消息的OSTaskQXXX()函数代码。
//<i>直接向一个任务发送消息回避通过消息队列发送消息更有效率一些，因为不再有与消息关联的等待表。
#define OS_CFG_TASK_Q_EN                0u   /* Include code for OSTaskQXXXX()                                        */
//</e>
//<e>任务函数-直接收发消息-Abort()
#define OS_CFG_TASK_Q_PEND_ABORT_EN     0u   /* Include code for OSTaskQPendAbort()                                   */
//</e>
//<e>任务性能数据
//<i>决定是否允许在每个任务的OS_TCB中分配变量来保存各个任务的性能数据。如果开启，则每个任务将有一些变量来跟踪任务切换的次数、任务的执行时间、任务相对其他任务的CPU使用率等。
//<i>这项功能提供的信息对于调试非常有用，但需要额外的RAM，软件发布的时候关掉就好啦。
#define OS_CFG_TASK_PROFILE_EN          0u   /* Include variables in OS_TCB for profiling                             */
//</e>
//<e>任务上下文变量
//<i>该宏允许各个任务拥有任务上下文变量(This constant allows each task to have task context variables)。可以使用任务变量存储诸如“errno”、任务标识和其他的 任务相关的数值等元素。任务拥有的变量数目是由这个常量设置的。每个任务都有一个唯一的标识，从0到（OS_CFG_TASK_REG_TBL_SIZE-1）。此外。每个任务变量被声明为OS_REG数据类型(见os_type.h)。如果OS_REG被定义为CPU_INT32U，那么此表中所有的变量都为这种类型。
#define OS_CFG_TASK_REG_TBL_SIZE        0u   /* Number of task specific registers                                     */
//</e>
//<e>任务函数-任务信号量Abort()
//<i>Include code for OSTaskSemPendAbort()
#define OS_CFG_TASK_SEM_PEND_ABORT_EN   0u   /* Include code for OSTaskSemPendAbort()                                 */
//</e>
//<e>任务函数-OSTaskSuspend/OSTaskResume
//<i>
#define OS_CFG_TASK_SUSPEND_EN          0u   /* Include code for OSTaskSuspend() and OSTaskResume()                   */
//</e>
//</e>
//</h>
                                             /* -------------------------- TIME MANAGEMENT -------------------------- */
//<e>时间管理-OSTimeDlyHMSM
#define OS_CFG_TIME_DLY_HMSM_EN         1u   /*     Include code for OSTimeDlyHMSM()                                  */
//</e>
//<e>时间管理-OSTimeDlyResume
#define OS_CFG_TIME_DLY_RESUME_EN       1u   /*     Include code for OSTimeDlyResume()                                */
//</e>

                                             /* ------------------------- TIMER MANAGEMENT -------------------------- */
//<e>定时器
#define OS_CFG_TMR_EN                   1u   /* Enable (1) or Disable (0) code generation for TIMERS                  */

#if OS_CFG_TMR_EN > 0u
//<e>定时器-OSTmrDel()
#define OS_CFG_TMR_DEL_EN               1u   /* Enable (1) or Disable (0) code generation for OSTmrDel()              */
//</e>
#else
#define OS_CFG_TMR_DEL_EN               0u
#endif
//</e>


#endif
