
/*========================================================
 
* file name 		:	os_syscall_rtx
* Author 			:	kaihua.yang	
* Version			：	v1.00
* Date				：	15/08/2016
* Description		：	通用os.h
					：  参照 Posix 标准
*********************************************************
*与硬件有关部分在 Configure or interface给出
*********************************************************		
========================================================*/
/*----------------------------------------------------------------------------
	includes
 *---------------------------------------------------------------------------*/
#include "stdio.h"
#include "stdlib.h"
#if OS_TYPE==RL_RTX
	#include "rtl.h"
	#include "rt_TypeDef.h"
#endif

//-------------------------------------------------------------------------------------
extern U32 os_time;
extern const unsigned int 			os_tick;

/*----------------------------------------------------------------------------
	OS type define
 *---------------------------------------------------------------------------*/
#define  NoOS			0
#define  Win32		1
#define  uITRON		2
#define  uCOS			3
#define  FreeRTOS	4
#define  RL_RTX		5
#define  OS_PTHREAD	6

//-------- <<< Use Configuration Wizard in Context Menu >>> -----------------
//
// <h>Task Configuration
// =====================
// <o> OS Interface <0=>NoOS <1=>Win32 <2=> uITRON <3=>uCOS <4=>FreeRTOS <5=> RL_RTX
// <i> choose  OS
// <i> Default: RL_RTX
#ifndef OS_TYPE
#define OS_TYPE  5
#endif
// </h>

/*----------------------------------------------------------------------------
	public 
 *---------------------------------------------------------------------------*/
//当前任务id
unsigned int gt_task_self(void)
{
	return (unsigned int) isr_tsk_get ();
}


void *firsttask = NULL;

/*
*	task:任务  
*	prio_stksz :优先级，越小越高
*	stk:栈
*	size : 栈大小 ,size == 0 由系统自动分配内存
*	argv:任务参数
*	return: 任务ID
*/
U32 gt_task_create(void (*task)(void), U32 prio, 
                                 void *stk, U32 size)
{
	if(firsttask == NULL)
	{
		firsttask = (void*)task;
		os_sys_init_user(task,prio,stk,size);
		return 1;
	}
	return os_tsk_create_user(task,prio,stk,size);
}

/*
*	创建任务，带参数
*	task:任务  
*	prio_stksz :优先级，越小越高
*	stk:栈
*	size : 栈大小 ,size == 0 由系统自动分配内存
*	argv:任务参数
*	return: 任务ID
*/
U32 gt_task_createx(void (*task)(void*), U32 prio, 
                                 void *stk, U32 size,void*arg)
{
	if(firsttask == NULL)
	{	
		return 1;
	}
	return os_tsk_create_user_ex(task,prio,stk,size,arg);
}


/*
*	删除一个任务
* task_id   : 任务所在的id,如果 是0 ,删除本身任务
* return    : 0 : ok  
*						: -1: error
*	注意，如果 task_id ==0 ,删除本身时，任务还会一直运行，直到更高优先级的任务就绪，
*       该任务才会停止运行(即:删除本身，本身要被切换，才会终止)
*/
int gt_task_delete(U32 task_id)
{
	OS_RESULT r = os_tsk_delete (task_id);
	switch(r)
	{
		case OS_R_OK:return 0;
		case OS_R_NOK:return -1;
		default:return -2;
	}
}

/*
*	任务锁，任务不调度
*/
void gt_task_lock(void)
{
#if (OS_TYPE==RL_RTX)
	tsk_lock();
#elif (OS_TYPE==uCOS)
	OSSchedLock();
#else
#endif
}
void gt_task_unlock(void)
{
#if (OS_TYPE==RL_RTX)
	tsk_unlock();
#elif (OS_TYPE==uCOS)
	OSSchedUnlock();
#else
#endif

}

/////////////////////////////////////////////////////////////////////////////
//-------------------------------------------------------------------------------------
//	Mutex Locker
//-------------------------------------------------------------------------------------
//创建互斥量
//return : 0:出错   其它:互斥量
int gt_mutex_init(void)
{
#if OS_TYPE == NoOS
	return 0;								/* uC/OS-II */
#elif OS_TYPE ==Win32
//	*sobj = CreateMutex(NULL, FALSE, NULL);	/* Win32 */
//	ret = (*sobj != INVALID_HANDLE_VALUE);
#elif OS_TYPE ==uITRON
//	*sobj = SyncObjects[vol];				/* uITRON (give a static sync object) */
//	ret = 1;								/* The initial value of the semaphore must be 1. */
#elif OS_TYPE == uCOS
	OS_EVENT* sobj;
	unsigned char err;
	sobj = OSMutexCreate(10, &err);			/* uC/OS-II */
	return (err == OS_NO_ERR)?(int)sobj:0;
#elif OS_TYPE == FreeRTOS
//	*sobj = xSemaphoreCreateMutex();		/* FreeRTOS */
//	ret = (*sobj != NULL);
#elif OS_TYPE == RL_RTX
	OS_MUT* sobj;
	sobj = malloc(sizeof(OS_MUT));
	if(sobj == NULL)return 0;
	os_mut_init (*sobj);					/* RL-RTX */
	return (int)(sobj);
#else
	return 0;
#endif

}
//-------------------------------------------------------------------------------------
void gt_mutex_close(int mutex)
{
#if OS_TYPE == NoOS
#elif OS_TYPE ==Win32
//	ret = CloseHandle(sobj);				/* Win32 */
#elif OS_TYPE ==uITRON
//	ret = 1;								/* uITRON (nothing to do) */
#elif OS_TYPE == uCOS
	OS_EVENT* sobj=(OS_EVENT*)mutex;
	unsigned char err;
	OSMutexDel(sobj, OS_DEL_ALWAYS, &err);	/* uC/OS-II */
//	ret = (err == OS_NO_ERR);
#elif OS_TYPE == FreeRTOS
//	ret = 1;								/* FreeRTOS (nothing to do) */
#elif OS_TYPE == RL_RTX
	OS_MUT* sobj=(OS_MUT*)mutex;
	os_mut_release (sobj);				/* RL-RTX */
#else
#endif

}
//-------------------------------------------------------------------------------------
void gt_mutex_lock(int mutex)
{
#if OS_TYPE == NoOS
#elif OS_TYPE ==Win32
//	ret = (WaitForSingleObject(sobj, _FS_TIMEOUT) == WAIT_OBJECT_0);	/* Win32 */
#elif OS_TYPE ==uITRON
//	ret = (wai_sem(sobj) == E_OK);			/* uITRON */
#elif OS_TYPE == uCOS
	OS_EVENT* sobj=(OS_EVENT*)mutex;
	unsigned char err;
	OSMutexPend(sobj, 0, &err);				/* uC/OS-II */
#elif OS_TYPE == FreeRTOS
//	ret = (err == OS_NO_ERR);
//	ret = (xSemaphoreTake(sobj, _FS_TIMEOUT) == pdTRUE);	/* FreeRTOS */
#elif OS_TYPE == RL_RTX
	OS_MUT* sobj=(OS_MUT*)mutex;
	os_mut_wait (*sobj, 0xFFFF); 			/* RL-RTX */
#else
#endif
}

//-------------------------------------------------------------------------------------
void gt_mutex_unlock(int mutex)
{
#if OS_TYPE == NoOS
#elif OS_TYPE == Win32
//	ReleaseMutex(sobj);						/* Win32 */
#elif OS_TYPE == uITRON
//	sig_sem(sobj);							/* uITRON */
#elif OS_TYPE == uCOS
	OS_EVENT* sobj=(OS_EVENT*)mutex;
	OSMutexPost(sobj);						/* uC/OS-II */
#elif OS_TYPE == FreeRTOS
//	xSemaphoreGive(sobj);					/* FreeRTOS */
#elif OS_TYPE == RL_RTX
	OS_MUT* sobj=(OS_MUT*)mutex;
	os_mut_release (*sobj);					/* RL-RTX */
#else
#endif
}
//-------------------------------------------------------------------------------------
//	OS semaphore (信号量)
//-------------------------------------------------------------------------------------
//创建信号量
//count : 信号量计数
//return: 返回信号量(内存指针) ，返回0时，出错
int gt_sem_create(int count)
{
	#if OS_TYPE == NoOS
	#elif OS_TYPE == Win32
	#elif OS_TYPE == uITRON
	#elif OS_TYPE == uCOS

	#elif OS_TYPE == RL_RTX
	OS_SEM *sem = (OS_SEM*)malloc(sizeof(OS_SEM));
	if(sem == NULL)return 0;
	os_sem_init((OS_ID)sem,(U16)count);
	return (int)sem;
	#else
	
	#endif
	//return 0;
}

/*
*	释放信号量
* sem  :信号量
*/
void gt_sem_free(int sem)
{
	#if OS_TYPE == NoOS
	#elif OS_TYPE == Win32
	#elif OS_TYPE == uITRON
	#elif OS_TYPE == uCOS
	#elif OS_TYPE == RL_RTX
		os_sem_send((OS_ID)sem);
		free((void*)sem);
	#else

	#endif
}

/*
* 取得信号量
* sem  :信号量
* timeout: 超时 tick 数
* return  : 1:等待并OK 0:不等待OK     -1:超时    -2:其它
*/
int gt_sem_wait(int sem,unsigned int timeout)
{
	#if OS_TYPE == NoOS
	#elif OS_TYPE == Win32
	#elif OS_TYPE == uITRON
	#elif OS_TYPE == uCOS
	#elif OS_TYPE == RL_RTX
		{
			OS_RESULT r = os_sem_wait ((OS_ID)sem, (U16)timeout);
			switch(r)
			{
				case OS_R_TMO:
					return -1;
				case OS_R_OK:
				case OS_R_SEM:
					return 1;
				default:
					return -2;
			}
		}
	#else
	
	#endif
	
	//return 0;
	
}

/*
*	发送信号量
* sem :信号量
* return :  0 :ok  (总是)
*/
int gt_sem_send(int sem)
{
	#if OS_TYPE == NoOS
	#elif OS_TYPE == Win32
	#elif OS_TYPE == uITRON
	#elif OS_TYPE == uCOS
	#elif OS_TYPE == RL_RTX
		return (int)os_sem_send((OS_ID)sem);
	#else
	
	#endif
	
	//return 0;
	
}

//-------------------------------------------------------------------------------------
//	OS mbox (消息队列)
//-------------------------------------------------------------------------------------
/*
* 创建一个 s 大小的 mail box (bytes)
*	s  :个数: 容纳 mailbox的数量 (实际大小= s * 4)
* return : mail box 指针 ,返回0时，出错
*/
int gt_mbox_create(int s)
{
	#if OS_TYPE == NoOS
	#elif OS_TYPE == Win32
	#elif OS_TYPE == uITRON
	#elif OS_TYPE == uCOS
	#elif OS_TYPE == RL_RTX
		OS_ID mbox;
	  s = s*4+ 16;     // mail box μ??á11′óD?ê? 4 U32
		mbox = (OS_ID)(malloc((s)));
		if(mbox == 0)return 0;
		os_mbx_init(mbox,(U16)s);
	  return (int)mbox;
	#else
	
	#endif
	
	//return 0;
}

/*
* 释放 mail box
*/
void gt_mbox_free(int mbox)
{
	#if OS_TYPE == NoOS
	#elif OS_TYPE == Win32
	#elif OS_TYPE == uITRON
	#elif OS_TYPE == uCOS
	#elif OS_TYPE == RL_RTX
		free((void*)mbox);
	#else
	
	#endif

}

/*
* 检查 mbox 剩余空间
*	返回 剩余 容纳个数(实际大小= 个数 * 4)
*/
int gt_mbox_check(int mbox)
{
	return os_mbx_check((OS_ID)mbox);
}


/*
* 尝试发送一则 消息
* mbox    : mail box
* msg     :要发送的消息
* return  :0:OK     -1:超时    -2:其它
*/
int gt_mbox_trypost(int mbox,void* msg)
{
		#if OS_TYPE == NoOS
	#elif OS_TYPE == Win32
	#elif OS_TYPE == uITRON
	#elif OS_TYPE == uCOS
	#elif OS_TYPE == RL_RTX
		{
			OS_RESULT r = os_mbx_send((OS_ID)mbox,msg,(U16)0);
			switch(r)
			{
				case OS_R_TMO:return -1;
				case OS_R_OK:return 0;
				default:return -2;
			}
		}
	#else
	
	#endif
	
	//return 1;  // error
}

/*
*	发送一则消息
* mbox   :mail box
* msg    :要发送的消息
* timeout:超时 tick数
* return  :0:OK     -1:超时    -2:其它
*/
int gt_mbox_post(int mbox,void*msg,int timeout)
{
	#if OS_TYPE == NoOS
	#elif OS_TYPE == Win32
	#elif OS_TYPE == uITRON
	#elif OS_TYPE == uCOS
	#elif OS_TYPE == RL_RTX
		{
			OS_RESULT r = os_mbx_send((OS_ID)mbox,msg,(U16)timeout);
			switch(r)
			{
				case OS_R_TMO:return -1;
				case OS_R_OK:return 0;
				default:return -2;
			}
		}
	#else
	
	#endif
	
	//return 1; //error
}

/*
*	尝试读取一则消息
* mbox  :mail box
* msg   : [out] 读取的消息
* return  : 1:等待并OK 0:不等待OK     -1:超时    -2:其它
*/
int gt_mbox_tryfetch(int mbox,void**msg)
{
	#if OS_TYPE == NoOS
	#elif OS_TYPE == Win32
	#elif OS_TYPE == uITRON
	#elif OS_TYPE == uCOS
	#elif OS_TYPE == RL_RTX
		{
			OS_RESULT r = os_mbx_wait((OS_ID)mbox,msg,(U16)0);
			switch(r)
			{
				case OS_R_TMO:return -1;
				case OS_R_OK:return 0;
				case OS_R_MBX:return 1;
				default:return -2;
			}
		}
	#else
	
	#endif
	
	//return 1; //error
}


/*
*	读取一则消息
* mbox   :mail box
* msg    :读取的消息
* timeout:超时 tick数
* return  : 1:等待并OK 0:不等待OK     -1:超时    -2:其它
*/
int gt_mbox_fetch(int mbox,void**msg,int timeout)
{

	#if OS_TYPE == NoOS
	#elif OS_TYPE == Win32
	#elif OS_TYPE == uITRON
	#elif OS_TYPE == uCOS
	#elif OS_TYPE == RL_RTX
		{
			OS_RESULT r = os_mbx_wait((OS_ID)mbox,msg,(U16)timeout);
			switch(r)
			{
				case OS_R_TMO:return -1;
				case OS_R_MBX:return 1;
				case OS_R_OK:return 0;
				default:return -2;
			}
		}
	#else
	
	#endif
	
	//return 1; //error
}



// 中断调用mail box
/*
*	在中断处理函数中发送一则消息
* mbox   :mail box
* msg    :要发送的消息
* timeout:超时 tick 数
* return : 0:OK    (总是)
*/
int gt_mbox_post_isr(int mbox,void*msg)
{
	#if OS_TYPE == NoOS
	#elif OS_TYPE == Win32
	#elif OS_TYPE == uITRON
	#elif OS_TYPE == uCOS
	#elif OS_TYPE == RL_RTX
		isr_mbx_send((OS_ID)mbox,msg);
		return 0;
	#else
	#endif
	
	//return 1; //error
}

/*
*	在中断函数中读取一则消息
* mbox  :mail box
* msg   : [out] 读取的消息
* return  : 1:等待并OK 0:不等待OK     -1:超时    -2:其它
*/
int gt_mbox_fetch_isr(int mbox,void**msg)
{
	#if OS_TYPE == NoOS
	#elif OS_TYPE == Win32
	#elif OS_TYPE == uITRON
	#elif OS_TYPE == uCOS
	#elif OS_TYPE == RL_RTX
	{
		OS_RESULT r = isr_mbx_receive((OS_ID)mbox,msg);
		switch(r)
		{
			case OS_R_MBX: //有消息
				return 1;
			case OS_R_OK:  //没有消息
				return -1;
			default:
				return -2;
		}
	}
	#else
	
	#endif
	
	//return 1; //error
}

/*
* 检查 mbox 剩余空间
*	返回 剩余 容纳个数(实际大小= 个数 * 4)
*/
int gt_mbox_check_isr(int mbox)
{
	return isr_mbx_check((OS_ID)mbox);
}

//-------------------------------------------------------------------------------------
//	OS_Tick
//-------------------------------------------------------------------------------------
/*
*	睡眠 tick 个 滴答
* tick  : 滴答数
*/
void gt_tsleep(int tick)
{
#if OS_TYPE == NoOS
#elif OS_TYPE == uCOS
	OSTimeDly(tick);						/* uC/OS-II */
#elif OS_TYPE == RL_RTX
	os_dly_wait(tick);						/* RL-RTX */
#else
#endif
}
/*
*	睡眠 sec 秒
* sec :秒数
* 返回实现睡眠时间,ms数
*/
int gt_ssleep(int sec)
{
#if OS_TYPE == NoOS
	gt_ms_delay(sec*1000);
#elif OS_TYPE == uCOS
	OSTimeDlyHMSM(0,0,sec,0);				/* uC/OS-II */
#elif OS_TYPE == RL_RTX
 {
	 if(sec==0)return 0;
	 sec = sec *1000000 / os_tick;
	 os_dly_wait(sec);
	 return (sec* os_tick) / 1000;
	}
#else
#endif
}
/*
*	睡眠 ms 毫秒
* ms :毫秒数
* 返回实际睡眠时间ms
*/
int gt_msleep(int ms)				//ms
{
#if OS_TYPE == NoOS
	gt_ms_delay(ms);
#elif OS_TYPE == uCOS
	OSTimeDlyHMSM(0,0,0,ms);				/* uC/OS-II */	
#elif OS_TYPE == RL_RTX
	{
		ms*=1000;
		if(ms<os_tick)ms=os_tick;
		ms/=os_tick;
		os_dly_wait(ms);
		return (ms* os_tick) / 1000;
	}/* RL-RTX */
#else
#endif
}

/*
*	系统运行 滴答 数
*/
__weak U32 gt_runtick(void)     /* ??DD tickets */
{
	return os_time;
}

/*
*	系统运行时间: 毫秒数
*/
__weak U32 gt_runtime(void)     /* ??DD ms êy */
{
	return os_time * (os_tick/1000);
}

//-------------------------------------------------------------------------------------
/*
* os 版本号
*/
char* gt_osversion(void)
{
	return "GT-Stm32f10x-OS-V1.0D";
}




	
	

