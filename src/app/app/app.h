#ifndef	_APP_H_
#define	_APP_H_

#include "os.h"  		
#include "os_type.h"

/*******************�����������ȼ�*******************/
#define STARTUP_TASK_PRIO       3
#define	TASK_SEM_PRIO			      4	   
#define	TASK_PRODUCT_PRIO			  OS_CFG_PRIO_MAX-5u 
#define	TASK_CUSTOMER_PRIO			  OS_CFG_PRIO_MAX-6u 

/************����ջ��С����λΪ OS_STK ��************/
#define STARTUP_TASK_STK_SIZE   200 
#define	TASK_SEM_STK_SIZE		    500  
#define	TASK_PRODUCT_STK_SIZE		    200
#define	TASK_CUSTOMER_STK_SIZE		    200

/**************** �û��������� *******************/
void Task_Start(void *p_arg);
void Task_Sem(void *p_arg);
void Task_PRODUCT(void *p_arg);
void Task_CUSTOMER(void *p_arg);

#endif	//_APP_H_
