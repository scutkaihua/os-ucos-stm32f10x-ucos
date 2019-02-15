
/*========================================================
 
* file name 		:	os_syscall_rtx
* Author 			:	kaihua.yang	
* Version			��	v1.00
* Date				��	15/08/2016
* Description		��	ͨ��os.h
					��  ���� Posix ��׼
*********************************************************
*��Ӳ���йز����� Configure or interface����
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
//��ǰ����id
unsigned int gt_task_self(void)
{
	return (unsigned int) isr_tsk_get ();
}


void *firsttask = NULL;

/*
*	task:����  
*	prio_stksz :���ȼ���ԽСԽ��
*	stk:ջ
*	size : ջ��С ,size == 0 ��ϵͳ�Զ������ڴ�
*	argv:�������
*	return: ����ID
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
*	�������񣬴�����
*	task:����  
*	prio_stksz :���ȼ���ԽСԽ��
*	stk:ջ
*	size : ջ��С ,size == 0 ��ϵͳ�Զ������ڴ�
*	argv:�������
*	return: ����ID
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
*	ɾ��һ������
* task_id   : �������ڵ�id,��� ��0 ,ɾ����������
* return    : 0 : ok  
*						: -1: error
*	ע�⣬��� task_id ==0 ,ɾ������ʱ�����񻹻�һֱ���У�ֱ���������ȼ������������
*       ������Ż�ֹͣ����(��:ɾ����������Ҫ���л����Ż���ֹ)
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
*	�����������񲻵���
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
//����������
//return : 0:����   ����:������
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
//	OS semaphore (�ź���)
//-------------------------------------------------------------------------------------
//�����ź���
//count : �ź�������
//return: �����ź���(�ڴ�ָ��) ������0ʱ������
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
*	�ͷ��ź���
* sem  :�ź���
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
* ȡ���ź���
* sem  :�ź���
* timeout: ��ʱ tick ��
* return  : 1:�ȴ���OK 0:���ȴ�OK     -1:��ʱ    -2:����
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
*	�����ź���
* sem :�ź���
* return :  0 :ok  (����)
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
//	OS mbox (��Ϣ����)
//-------------------------------------------------------------------------------------
/*
* ����һ�� s ��С�� mail box (bytes)
*	s  :����: ���� mailbox������ (ʵ�ʴ�С= s * 4)
* return : mail box ָ�� ,����0ʱ������
*/
int gt_mbox_create(int s)
{
	#if OS_TYPE == NoOS
	#elif OS_TYPE == Win32
	#elif OS_TYPE == uITRON
	#elif OS_TYPE == uCOS
	#elif OS_TYPE == RL_RTX
		OS_ID mbox;
	  s = s*4+ 16;     // mail box ��??��11�䨮D?��? 4 U32
		mbox = (OS_ID)(malloc((s)));
		if(mbox == 0)return 0;
		os_mbx_init(mbox,(U16)s);
	  return (int)mbox;
	#else
	
	#endif
	
	//return 0;
}

/*
* �ͷ� mail box
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
* ��� mbox ʣ��ռ�
*	���� ʣ�� ���ɸ���(ʵ�ʴ�С= ���� * 4)
*/
int gt_mbox_check(int mbox)
{
	return os_mbx_check((OS_ID)mbox);
}


/*
* ���Է���һ�� ��Ϣ
* mbox    : mail box
* msg     :Ҫ���͵���Ϣ
* return  :0:OK     -1:��ʱ    -2:����
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
*	����һ����Ϣ
* mbox   :mail box
* msg    :Ҫ���͵���Ϣ
* timeout:��ʱ tick��
* return  :0:OK     -1:��ʱ    -2:����
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
*	���Զ�ȡһ����Ϣ
* mbox  :mail box
* msg   : [out] ��ȡ����Ϣ
* return  : 1:�ȴ���OK 0:���ȴ�OK     -1:��ʱ    -2:����
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
*	��ȡһ����Ϣ
* mbox   :mail box
* msg    :��ȡ����Ϣ
* timeout:��ʱ tick��
* return  : 1:�ȴ���OK 0:���ȴ�OK     -1:��ʱ    -2:����
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



// �жϵ���mail box
/*
*	���жϴ������з���һ����Ϣ
* mbox   :mail box
* msg    :Ҫ���͵���Ϣ
* timeout:��ʱ tick ��
* return : 0:OK    (����)
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
*	���жϺ����ж�ȡһ����Ϣ
* mbox  :mail box
* msg   : [out] ��ȡ����Ϣ
* return  : 1:�ȴ���OK 0:���ȴ�OK     -1:��ʱ    -2:����
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
			case OS_R_MBX: //����Ϣ
				return 1;
			case OS_R_OK:  //û����Ϣ
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
* ��� mbox ʣ��ռ�
*	���� ʣ�� ���ɸ���(ʵ�ʴ�С= ���� * 4)
*/
int gt_mbox_check_isr(int mbox)
{
	return isr_mbx_check((OS_ID)mbox);
}

//-------------------------------------------------------------------------------------
//	OS_Tick
//-------------------------------------------------------------------------------------
/*
*	˯�� tick �� �δ�
* tick  : �δ���
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
*	˯�� sec ��
* sec :����
* ����ʵ��˯��ʱ��,ms��
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
*	˯�� ms ����
* ms :������
* ����ʵ��˯��ʱ��ms
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
*	ϵͳ���� �δ� ��
*/
__weak U32 gt_runtick(void)     /* ??DD tickets */
{
	return os_time;
}

/*
*	ϵͳ����ʱ��: ������
*/
__weak U32 gt_runtime(void)     /* ??DD ms ��y */
{
	return os_time * (os_tick/1000);
}

//-------------------------------------------------------------------------------------
/*
* os �汾��
*/
char* gt_osversion(void)
{
	return "GT-Stm32f10x-OS-V1.0D";
}




	
	

