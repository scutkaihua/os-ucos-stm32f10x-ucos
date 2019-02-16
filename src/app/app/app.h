#ifndef	_APP_H_
#define	_APP_H_

#include "os.h"  		
#include "os_type.h"

/*******************设置任务优先级*******************/
#define STARTUP_TASK_PRIO       3
#define	TASK_SEM_PRIO			      4	   
#define	TASK_PRODUCT_PRIO			  OS_CFG_PRIO_MAX-5u 
#define	TASK_CUSTOMER_PRIO			  OS_CFG_PRIO_MAX-6u 

/************设置栈大小（单位为 OS_STK ）************/
#define STARTUP_TASK_STK_SIZE   200 
#define	TASK_SEM_STK_SIZE		    500  
#define	TASK_PRODUCT_STK_SIZE		    200
#define	TASK_CUSTOMER_STK_SIZE		    200

/**************** 用户任务声明 *******************/
void Task_Start(void *p_arg);
void Task_Sem(void *p_arg);
void Task_PRODUCT(void *p_arg);
void Task_CUSTOMER(void *p_arg);

#endif	//_APP_H_
