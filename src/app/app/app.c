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
 * ��������Task_Start
 * ����  : �����������ȼ�Ϊ3��������������
 * ����  ����
 * ���  : ��
 */
void Task_Start(void *p_arg)
{
	OS_ERR err;
  (void)p_arg;	

  CPU_Init();

  SysTick_init();

  //�����ź�������
	OSTaskCreate((OS_TCB     *)&SEM_TCB,					            // ������ƿ�ָ��          
               (CPU_CHAR   *)"Sem",						              // ��������
               (OS_TASK_PTR )Task_Sem,					            // �������ָ��
               (void       *)0,							                // ���ݸ�����Ĳ���parg
               (OS_PRIO     )TASK_SEM_PRIO,				        // �������ȼ�
               (CPU_STK    *)&Sem_Stk[0],				          // �����ջ����ַ
               (CPU_STK_SIZE)TASK_SEM_STK_SIZE/10,		      // ��ջʣ�ྯ����
               (CPU_STK_SIZE)TASK_SEM_STK_SIZE,			      // ��ջ��С
               (OS_MSG_QTY  )0,							                // �ɽ��յ������Ϣ������
               (OS_TICK     )0,							                // ʱ��Ƭ��תʱ��
               (void       *)0,							                // ������ƿ���չ��Ϣ
               (OS_OPT      )(OS_OPT_TASK_STK_CHK | 
                              OS_OPT_TASK_STK_CLR),	        // ����ѡ��
               (OS_ERR     *)&err);						              // ����ֵ
			

	//����������
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
							 
	//������Ϣ��
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
               
  //����ɾ���Լ�	
	OSTaskDel(&StartUp_TCB,&err);							 
}


/* 
 * ��������Task_Sem
 * ����  : ���ź���ģ��ͣ������λ�����������ȼ�Ϊ4��
 *         
 * ����  ��p_arg    �û�����
 * ���  : ��
 */
void Task_Sem(void *p_arg)
{
  OS_ERR err;
  OS_SEM_CTR  Ctr;
	 CPU_TS      ts;
  (void)p_arg;  

  //��ʹ���ź���֮ǰһ��Ҫ�ȴ����ź�����
  //����һ���ź������������µ�ʱ��postһ���ź�������������
  OSSemCreate ((OS_SEM      *)&SemOfPRODUCT,     //ָ���ź���������ָ��
               (CPU_CHAR    *)"SemOfPRODUCT",    //�ź���������
               (OS_SEM_CTR   )0,             //�ź�������ֵCtr�������ͣ�����ĳ�λ����3��
               (OS_ERR      *)&err);         //��������
  
  
  while (1)
  {
    OSTimeDlyHMSM(0, 0,0,500,OS_OPT_TIME_HMSM_STRICT,&err);	//��ʱ����500ms
  }
}
//������ʱɨ��Ķ�ʱ��
void cbTimerOfPRODUCT (OS_TMR *p_tmr, void *p_arg)
{
  OS_ERR      err;
  OSSemPost ((OS_SEM  *)&SemOfPRODUCT,
                    (OS_OPT   )OS_OPT_POST_ALL,
                    (OS_ERR  *)&err);

}
/* 
 * ��������Task_PRODUCT
 * ����  : �����ĳ�ʼ���ʹ�����ʱ���԰�������ɨ��
 *			   ���ȼ�ΪOS_CFG_PRIO_MAX-5u
 * ����  ��p_arg    �û�����
 * ���  : ��
 */
void Task_PRODUCT(void *p_arg)
{
  OS_ERR err;  
  OS_TMR TmrOfPRODUCT;

  (void)p_arg;
  //����һ����ʱ����������ʱɨ�谴��״̬,10mɨ��һ�ΰ���
  OSTmrCreate ((OS_TMR              *)&TmrOfPRODUCT,
               (CPU_CHAR            *)"TmrOfPRODUCT",
               (OS_TICK              )0,
               (OS_TICK              )100,  //ע�ⶨʱ����ʱ�ĵ�λ����������10ms������������1�Ϳ���
               (OS_OPT               )OS_OPT_TMR_PERIODIC,
               (OS_TMR_CALLBACK_PTR  )cbTimerOfPRODUCT,
               (void                *)0,
               (OS_ERR              *)&err);
               
  //������ʱ��
  OSTmrStart (&TmrOfPRODUCT,&err);
  
  while (1)
  {

    OSTimeDly ((OS_TICK   )1000,
               (OS_OPT    )OS_OPT_TIME_DLY,
               (OS_ERR   *)&err);
  }
}



/* 
 * ��������Task_CUSTOMER
 * ����  : �����ĳ�ʼ���ʹ�����ʱ���԰�������ɨ��
 *			   ���ȼ�ΪOS_CFG_PRIO_MAX-5u
 * ����  ��p_arg    �û�����
 * ���  : ��
 */
void Task_CUSTOMER(void *p_arg)
{
  OS_ERR err;
  OS_SEM_CTR  Ctr;
	 CPU_TS      ts;
  while (1)
  {

    //��ȡ�ź���
    Ctr= OSSemPend((OS_SEM   *)&SemOfPRODUCT,
                   (OS_TICK   )0,                         //��������������Ϊ0��һֱ�ȴ���ȥ
                   (OS_OPT    )OS_OPT_PEND_BLOCKING,  //���û���ź���Ҳ������
                   (CPU_TS   *)&ts,                       //���������ָ�����ź������ύ��ǿ�ƽ���ȴ�״̬�������ź�����ɾ����ʱ���        
                   (OS_ERR   *)&err);   //LED1( ON );
		
	  OSTimeDly ((OS_TICK   )10,
               (OS_OPT    )OS_OPT_TIME_DLY,
               (OS_ERR   *)&err);
  }
}

/* -------------------------------------end of file------------------------------------ */
