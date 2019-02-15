/*----------------------------------------------------------------------------
 *      RL-ARM - RTX
 *----------------------------------------------------------------------------
 *      Name:    RTX_EX1.C
 *      Purpose: Your First RTX example program
 *----------------------------------------------------------------------------
 *      This code is part of the RealView Run-Time Library.
 *      Copyright (c) 2004-2013 KEIL - An ARM Company. All rights reserved.
 *---------------------------------------------------------------------------*/

//#include <RTL.h>                      /* RTX kernel functions & defines      */
#include "gtOs.h"
#include "string.h"
#include "stdlib.h"
/*----------------------------------------------------------------------------
 *   test
 *---------------------------------------------------------------------------*/

//int mbox1, Mutex1, Sem1; //消息邮箱ID，互斥信号量ID，信号量

//struct stack_contex
//{
//	unsigned int r0;
//	unsigned int r1;
//	unsigned int r2;
//	unsigned int r3;
//	unsigned int r12;
//	unsigned int lr;
//	unsigned int pc;
//	unsigned int psr;
//};

//void HardFault_Handler(struct stack_contex* contex)
//{
//	while(1);
//}


//U64 stk_test_another[512/8];
//void task_test_another()
//{
//	while(1)
//	{
//		gt_mutex_lock(Mutex1);          //获取互斥信号量
//		gt_msleep(500);
//		gt_mutex_close(Mutex1);         //释放互斥信号量
//  	gt_msleep(200);
//	}
//	
//}
//U64 stk_test[512/8];
//void task_test(void*arg)
//{
//	int Result_Msg1,Result_Sen1;
//	unsigned int *Msg_Buf1;
//	gt_task_create(task_test_another,2,stk_test_another,sizeof(stk_test_another));
//	while(1)
//	{
//		Result_Msg1 = gt_mbox_tryfetch(mbox1, (void*)&Msg_Buf1);  //接受一个消息邮箱
// 		if(Result_Msg1 == 0){
//			//消息发送成功
//		}
//		
//		Result_Sen1 = gt_sem_wait(Sem1,100);
//		if(Result_Sen1 == 1){
//			//等待,OK
//		}
//		else if(Result_Sen1 == 0){
//			//不等待,OK
//		}
//		gt_msleep(500);
//	}
//	
//}


/*----------------------------------------------------------------------------
 *   init
 *---------------------------------------------------------------------------*/

U64 stk_init[2048/8];
U64 stk_A[512/8];
U64 stk_B[512/8];
U64 stk_C[512/8];
U64 stk_D[512/8];
U64 stk_E[512/8];
U64 stk_F[512/8];
U64 stk_G[512/8];
U64 stk_H[512/8];
U64 stk_I[512/8];
void gt_task_A(void*arg);
void gt_task_B(void*arg);
void gt_task_C(void*arg);
void gt_task_D(void*arg);
void gt_task_E(void*arg);
void gt_task_F(void*arg);
void gt_task_G(void*arg);
void gt_task_H(void*arg);
void gt_task_I(void*arg);



 void task_init ()
{
	gt_task_createx(gt_task_A,20,stk_A,sizeof(stk_A),"Task A");
	gt_task_createx(gt_task_B,25,stk_B,sizeof(stk_B),"Task B");
	gt_task_createx(gt_task_C,30,stk_C,sizeof(stk_C),"Task C");
	gt_task_createx(gt_task_D,35,stk_D,sizeof(stk_D),"Task D");
	gt_task_createx(gt_task_E,40,stk_E,sizeof(stk_E),"Task E");
	gt_task_createx(gt_task_F,45,stk_F,sizeof(stk_F),"Task F");
	gt_task_createx(gt_task_G,50,stk_G,sizeof(stk_G),"Task G");
	gt_task_createx(gt_task_H,55,stk_H,sizeof(stk_H),"Task H");
	gt_task_createx(gt_task_I,60,stk_I,sizeof(stk_I),"Task I");
	
	
	for(;;)
	{	
		gt_msleep(100);
	}
}




/*----------------------------------------------------------------------------
 *        Main: Initialize and start RTX Kernel
 *---------------------------------------------------------------------------*/

int main (void) {

	gt_task_create(task_init,22,stk_init,sizeof(stk_init));
	return 0;

}

/*----------------------------------------------------------------------------
 * end of file
 *---------------------------------------------------------------------------*/


