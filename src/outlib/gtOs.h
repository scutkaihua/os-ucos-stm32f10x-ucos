
/*========================================================
 
* file name 		:	os.h
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
//��ǰ����id
unsigned int gt_task_self(void);


/*
*	task:����  
*	prio_stksz :���ȼ���ԽСԽ��
*	stk:ջ
*	size : ջ��С ,size == 0 ��ϵͳ�Զ������ڴ�
*	argv:�������
*	return: ����ID
*/
U32 gt_task_create(void (*task)(void), U32 prio, 
                                 void *stk, U32 size);

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
                                 void *stk, U32 size,void*arg);


/*
*	ɾ��һ������
* task_id   : �������ڵ�id,��� ��0 ,ɾ����������
* return    : 0 : ok  
*						: -1: error
*	ע�⣬��� task_id ==0 ,ɾ������ʱ�����񻹻�һֱ���У�ֱ���������ȼ������������
*       ������Ż�ֹͣ����(��:ɾ����������Ҫ���л����Ż���ֹ)
*/
int gt_task_delete(U32 task_id);

/*�б�����״̬*/
void gt_task_list(void(*p)(const char*fmt,...));
/*
*	�����������񲻵���
*/
void gt_task_lock(void);   //��������
void gt_task_unlock(void); //�������
/////////////////////////////////////////////////////////////////////////////
//-------------------------------------------------------------------------------------
//	Mutex Locker
//-------------------------------------------------------------------------------------
//����������
//return : 0:����   ����:������
int gt_mutex_init(void);        //��ʼ�������ź���
//-------------------------------------------------------------------------------------
void gt_mutex_close(int mutex); //�ͷŻ����ź���
//-------------------------------------------------------------------------------------
void gt_mutex_lock(int mutex);  //��ȡ�����ź�������ʱʱ��:0xFFFF

//-------------------------------------------------------------------------------------
void gt_mutex_unlock(int mutex);//��ȡ�����ź������޳�ʱʱ��


//-------------------------------------------------------------------------------------
//	OS semaphore (�ź���)
//-------------------------------------------------------------------------------------
//�����ź���
//count : �ź�������
//return: �����ź���(�ڴ�ָ��) ������0ʱ������
int gt_sem_create(int count);

/*
*	�ͷ��ź���
* sem  :�ź���
*/
void gt_sem_free(int sem);

/*
* ȡ���ź���
* sem  :�ź���
* timeout: ��ʱ tick ��
* return  : 1:�ȴ���OK 0:���ȴ�OK     -1:��ʱ    -2:����
*/
int gt_sem_wait(int sem,unsigned int timeout);

/*
*	�����ź���
* sem :�ź���
* return :  0 :ok  (����)
*/
int gt_sem_send(int sem);

//-------------------------------------------------------------------------------------
//	OS mbox (��Ϣ����)
//-------------------------------------------------------------------------------------
/*
* ����һ�� s ��С�� mail box (bytes)
*	s  :����: ���� mailbox������ (ʵ�ʴ�С= s * 4)
* return : mail box ָ�� ,����0ʱ������
*/
int gt_mbox_create(int s);

/*
* �ͷ� mail box
*/
void gt_mbox_free(int mbox);

/*
* ��� mbox ʣ��ռ�
*	���� ʣ�� ���ɸ���(ʵ�ʴ�С= ���� * 4)
*/
int gt_mbox_check(int mbox);

/*
* ���Է���һ�� ��Ϣ
* mbox    : mail box
* msg     :Ҫ���͵���Ϣ
* return  :0:OK     -1:��ʱ    -2:����
*/
int gt_mbox_trypost(int mbox,void* msg);

/*
*	����һ����Ϣ
* mbox   :mail box
* msg    :Ҫ���͵���Ϣ
* timeout:��ʱ tick��
* return  :0:OK     -1:��ʱ    -2:����
*/
int gt_mbox_post(int mbox,void*msg,int timeout);

/*
*	���Զ�ȡһ����Ϣ
* mbox  :mail box
* msg   : [out] ��ȡ����Ϣ
* return  : 1:�ȴ���OK 0:���ȴ�OK     -1:��ʱ    -2:����
*/
int gt_mbox_tryfetch(int mbox,void**msg);

/*
*	��ȡһ����Ϣ
* mbox   :mail box
* msg    :��ȡ����Ϣ
* timeout:��ʱ tick��
* return  : 1:�ȴ���OK 0:���ȴ�OK     -1:��ʱ    -2:����
*/
int gt_mbox_fetch(int mbox,void**msg,int timeout);


// �жϵ���mail box
/*
*	���жϴ������з���һ����Ϣ
* mbox   :mail box
* msg    :Ҫ���͵���Ϣ
* timeout:��ʱ tick ��
* return : 0:OK    (����)
*/
int gt_mbox_post_isr(int mbox,void*msg);
/*
*	���жϺ����ж�ȡһ����Ϣ
* mbox  :mail box
* msg   : [out] ��ȡ����Ϣ
* return  : 1:�ȴ���OK 0:���ȴ�OK     -1:��ʱ    -2:����
*/
int gt_mbox_fetch_isr(int mbox,void**msg);

/*
* ��� mbox ʣ��ռ�
*	���� ʣ�� ���ɸ���(ʵ�ʴ�С= ���� * 4)
*/
int gt_mbox_check_isr(int mbox);

//-------------------------------------------------------------------------------------
//	OS_Tick
//-------------------------------------------------------------------------------------
/*
*	˯�� tick �� �δ�
* tick  : �δ���
*/
void gt_tsleep(int tick);
/*
*	˯�� sec ��
* sec :����
* ����ʵ��˯��ʱ��,ms��
*/
int gt_ssleep(int sec);
/*
*	˯�� ms ����
* ms :������
* ����ʵ��˯��ʱ��ms
*/
int gt_msleep(int ms);

//-------------------------------------------------------------------------------------
/*
*	ϵͳ���� �δ� ��
*/
U32 gt_runtick(void);

/*
*	ϵͳ����ʱ��: ������
*/
U32 gt_runtime(void);

//-------------------------------------------------------------------------------------
/*
* os �汾��
*/
char* gt_osversion(void);


#endif




