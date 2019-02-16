
/*========================================================
 
* file name 		:	os.h
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
#ifndef __OS_H__
#define __OS_H__
/*----------------------------------------------------------------------------
	types
 *---------------------------------------------------------------------------*/
#ifndef NULL
 #ifdef __cplusplus
  #define NULL          0
 #else
  #define NULL          ((void *) 0)
 #endif
#endif

#ifndef EOF
 #define EOF            (-1)
#endif

#ifndef __size_t
 #define __size_t       1
 typedef unsigned int   size_t;
#endif

//typedef signed char     S8;
//typedef unsigned char   U8;
//typedef short           S16;
//typedef unsigned short  U16;
//typedef int             S32;
//typedef unsigned int    U32;
//typedef long long       S64;
//typedef unsigned long long U64;
//typedef unsigned char   BIT;
//typedef unsigned int    BOOL;

#ifndef S8
#define S8 char
#endif
#ifndef U8
#define U8 unsigned char
#endif
#ifndef S16
#define S16 short
#endif
#ifndef U16
#define U16 unsigned short
#endif
#ifndef S32
#define S32 int
#endif
#ifndef U32
#define U32 unsigned int
#endif

#ifndef S64
#define S64 long long
#endif

#ifndef U64
#define U64 unsigned long long
#endif

#ifndef BIT
#define BIT unsigned char
#endif

#ifndef BOOL
#define BOOL unsigned int
#endif

#ifndef __TRUE
 #define __TRUE         1
#endif
#ifndef __FALSE
 #define __FALSE        0
#endif




/*----------------------------------------------------------------------------
	public 
 *---------------------------------------------------------------------------*/
//当前任务id
unsigned int gt_task_self(void);


/*
*	task:任务  
*	prio_stksz :优先级，越小越高
*	stk:栈
*	size : 栈大小 ,size == 0 由系统自动分配内存
*	argv:任务参数
*	return: 任务ID
*/
U32 gt_task_create(void (*task)(void), U32 prio, 
                                 void *stk, U32 size);

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
                                 void *stk, U32 size,void*arg);


/*
*	删除一个任务
* task_id   : 任务所在的id,如果 是0 ,删除本身任务
* return    : 0 : ok  
*						: -1: error
*	注意，如果 task_id ==0 ,删除本身时，任务还会一直运行，直到更高优先级的任务就绪，
*       该任务才会停止运行(即:删除本身，本身要被切换，才会终止)
*/
int gt_task_delete(U32 task_id);

/*列表任务状态*/
void gt_task_list(void(*p)(const char*fmt,...));
/*
*	任务锁，任务不调度
*/
void gt_task_lock(void);   //任务上锁
void gt_task_unlock(void); //任务解锁
/////////////////////////////////////////////////////////////////////////////
//-------------------------------------------------------------------------------------
//	Mutex Locker
//-------------------------------------------------------------------------------------
//创建互斥量
//return : 0:出错   其它:互斥量
int gt_mutex_init(void);        //初始化互斥信号量
//-------------------------------------------------------------------------------------
void gt_mutex_close(int mutex); //释放互斥信号量
//-------------------------------------------------------------------------------------
void gt_mutex_lock(int mutex);  //获取互斥信号量，超时时间:0xFFFF

//-------------------------------------------------------------------------------------
void gt_mutex_unlock(int mutex);//获取互斥信号量，无超时时间


//-------------------------------------------------------------------------------------
//	OS semaphore (信号量)
//-------------------------------------------------------------------------------------
//创建信号量
//count : 信号量计数
//return: 返回信号量(内存指针) ，返回0时，出错
int gt_sem_create(int count);

/*
*	释放信号量
* sem  :信号量
*/
void gt_sem_free(int sem);

/*
* 取得信号量
* sem  :信号量
* timeout: 超时 tick 数
* return  : 1:等待并OK 0:不等待OK     -1:超时    -2:其它
*/
int gt_sem_wait(int sem,unsigned int timeout);

/*
*	发送信号量
* sem :信号量
* return :  0 :ok  (总是)
*/
int gt_sem_send(int sem);

//-------------------------------------------------------------------------------------
//	OS mbox (消息队列)
//-------------------------------------------------------------------------------------
/*
* 创建一个 s 大小的 mail box (bytes)
*	s  :个数: 容纳 mailbox的数量 (实际大小= s * 4)
* return : mail box 指针 ,返回0时，出错
*/
int gt_mbox_create(int s);

/*
* 释放 mail box
*/
void gt_mbox_free(int mbox);

/*
* 检查 mbox 剩余空间
*	返回 剩余 容纳个数(实际大小= 个数 * 4)
*/
int gt_mbox_check(int mbox);

/*
* 尝试发送一则 消息
* mbox    : mail box
* msg     :要发送的消息
* return  :0:OK     -1:超时    -2:其它
*/
int gt_mbox_trypost(int mbox,void* msg);

/*
*	发送一则消息
* mbox   :mail box
* msg    :要发送的消息
* timeout:超时 tick数
* return  :0:OK     -1:超时    -2:其它
*/
int gt_mbox_post(int mbox,void*msg,int timeout);

/*
*	尝试读取一则消息
* mbox  :mail box
* msg   : [out] 读取的消息
* return  : 1:等待并OK 0:不等待OK     -1:超时    -2:其它
*/
int gt_mbox_tryfetch(int mbox,void**msg);

/*
*	读取一则消息
* mbox   :mail box
* msg    :读取的消息
* timeout:超时 tick数
* return  : 1:等待并OK 0:不等待OK     -1:超时    -2:其它
*/
int gt_mbox_fetch(int mbox,void**msg,int timeout);


// 中断调用mail box
/*
*	在中断处理函数中发送一则消息
* mbox   :mail box
* msg    :要发送的消息
* timeout:超时 tick 数
* return : 0:OK    (总是)
*/
int gt_mbox_post_isr(int mbox,void*msg);
/*
*	在中断函数中读取一则消息
* mbox  :mail box
* msg   : [out] 读取的消息
* return  : 1:等待并OK 0:不等待OK     -1:超时    -2:其它
*/
int gt_mbox_fetch_isr(int mbox,void**msg);

/*
* 检查 mbox 剩余空间
*	返回 剩余 容纳个数(实际大小= 个数 * 4)
*/
int gt_mbox_check_isr(int mbox);

//-------------------------------------------------------------------------------------
//	OS_Tick
//-------------------------------------------------------------------------------------
/*
*	睡眠 tick 个 滴答
* tick  : 滴答数
*/
void gt_tsleep(int tick);
/*
*	睡眠 sec 秒
* sec :秒数
* 返回实现睡眠时间,ms数
*/
int gt_ssleep(int sec);
/*
*	睡眠 ms 毫秒
* ms :毫秒数
* 返回实际睡眠时间ms
*/
int gt_msleep(int ms);

//-------------------------------------------------------------------------------------
/*
*	系统运行 滴答 数
*/
U32 gt_runtick(void);

/*
*	系统运行时间: 毫秒数
*/
U32 gt_runtime(void);

//-------------------------------------------------------------------------------------
/*
* os 版本号
*/
char* gt_osversion(void);


#endif




