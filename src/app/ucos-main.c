
void assert_param(void*arg){}
	
	
#include "stm32f10x_rcc.h"
extern unsigned int const  OSCfg_TickRate_Hz;

/*����SysTick��ʱ��*/
void SysTick_init(void)
{
  /* ��ʼ����ʹ��SysTick��ʱ�� */
  SysTick_Config(SystemCoreClock/OSCfg_TickRate_Hz);
  
  /*  ����1ms �ж�һ�Σ���os��Ƶ��Ϊ1000hz */
	if (SysTick_Config(SystemCoreClock/OSCfg_TickRate_Hz))	
	{ 
		/* Capture error */ 
		while (1);
	}
}



//�ж��������ַƫ��
const unsigned int  VEC_OFFSET=0;

//ʱ��Ƶ��
const unsigned int Default_Hse_Value=72000000;


/**
  ******************************************************************************
  * @file    main.c
  * @author  Lyc
  * @version V1.0
  * @date    2014-xx-xx
  * @brief   �ȴ�����ں˶����ʹ�ó���
  *          ����û�а��������������ÿ��ת��һ��״̬��������°������Ƽ���ת��״̬��
	*                ����ȴ���Ϣ���͹������߰��������¾͸ı�״̬
	*                �򿪴������ֻ��ǿ����ǰ��������»��Ƿ�����Ϣ���µƸı�״̬�ġ�
  ******************************************************************************
  * @attention
  *
  * ʵ��ƽ̨:Ұ�� ISO-V2 STM32 ������ ������ISO-V1��������Ҫ�������ײ�Ӳ���޸ģ�
  * ��̳    :http://www.chuxue123.com
  * �Ա�    :http://firestm32.taobao.com
  *
  ******************************************************************************
  */
  
#include "os.h"
#include "app.h"

OS_TCB	StartUp_TCB;		   					          //����������ƿ�
CPU_STK	StartUp_Stk[STARTUP_TASK_STK_SIZE];		//���������ջ

/**
  * @brief  ������
  * @param  ��
  * @retval ��
  */
int main(void)
{
  OS_ERR err;	

  /* ��ʼ��"uC/OS-III"�ں� */  
	OSInit(&err);		                                        
  
	/*��������*/
	OSTaskCreate((OS_TCB     *)&StartUp_TCB,                // ������ƿ�ָ��          
               (CPU_CHAR   *)"StartUp",		                // ��������
               (OS_TASK_PTR )Task_Start, 	                // �������ָ��
               (void       *)0,			                      // ���ݸ�����Ĳ���parg
               (OS_PRIO     )STARTUP_TASK_PRIO,			      // �������ȼ�
               (CPU_STK    *)&StartUp_Stk[0],	            // �����ջ����ַ
               (CPU_STK_SIZE)STARTUP_TASK_STK_SIZE/10,	  // ��ջʣ�ྯ����
               (CPU_STK_SIZE)STARTUP_TASK_STK_SIZE,			  // ��ջ��С
               (OS_MSG_QTY  )0,			                      // �ɽ��յ������Ϣ������
               (OS_TICK     )0,			                      // ʱ��Ƭ��תʱ��
               (void       *)0,			                      // ������ƿ���չ��Ϣ
               (OS_OPT      )(OS_OPT_TASK_STK_CHK | 
                              OS_OPT_TASK_STK_CLR),	      // ����ѡ��
               (OS_ERR     *)&err);		                    // ����ֵ
	
  /* ����������ϵͳ������Ȩ����uC/OS-II */
  OSStart(&err);                                       
}

/*********************************************END OF FILE**********************/

