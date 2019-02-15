/*----------------------------------------------------------------------------
 *      RL-ARM - RTX
 *----------------------------------------------------------------------------
 *      Name:    RTX_EX1.C
 *      Purpose: Your First RTX example program
 *----------------------------------------------------------------------------
 *      This code is part of the RealView Run-Time Library.
 *      Copyright (c) 2004-2013 KEIL - An ARM Company. All rights reserved.
 *---------------------------------------------------------------------------*/
#include "string.h"
#include "stdlib.h"
#include "gtos.h"
#include "stdio.h"

void gt_iwdg_reload(void);

int locktimes = 0,unlocktimes=0;
U32 this_mutex[4] = {0};
void _para_lock(int mutex)
{
	locktimes++;
//	if(*mutex==0)
//		*mutex = gt_mutex_init();
	gt_mutex_lock(mutex);
}

void _para_unlock(int mutex)
{
	unlocktimes++;
	gt_mutex_unlock(mutex);
}
#define lock()		_para_lock((int)this_mutex)//;gt_msleep(10)
#define unlock()  _para_unlock((int)this_mutex)

int cca = 100;
int ccb = 300;
int ccc = 100;
int ccd = 500;
int cce = 100;
int ccf = 600;
int ccg = 100;
int cch = 50;
int cci = 10;

int tca = 100;
int tcb = 90;
int tcc = 80;
int tcd = 100;
int tce = 200;
int tcf = 300;
int tcg = 100;
int tch = 400;
int tci = 400;

void gt_task_A(void*arg)
{
	while(1)
	{

		int i = 0;
		while(i++ <cca){
				lock();
				unlock();
		}
		gt_msleep(tca);
	}
}

void gt_task_B(void*arg)
{
	while(1)
	{

		int i = 0;
		while(i++ <ccb){
				lock();
				unlock();
		}
		gt_msleep(tcb);	
	}
}

void gt_task_C(void*arg)
{
	while(1)
	{

		int i = 0;
		while(i++ <ccc){
				lock();
				unlock();
		}
		gt_msleep(tcc);	
	}
}

void gt_task_D(void*arg)
{
	while(1)
	{

		int i = 0;
		while(i++ <ccd){
				lock();
				unlock();
		}
		gt_msleep(tcd);	
	}
}


void gt_task_E(void*arg)
{
	while(1)
	{

		int i = 0;
		while(i++ <cce){
				lock();
				unlock();
		}
		gt_msleep(tce);	
	}
}

void gt_task_F(void*arg)
{
	while(1)
	{

		int i = 0;
		while(i++ <ccf){
				lock();
				unlock();
		}
		gt_msleep(tcf);	
	}
}


void gt_task_G(void*arg)
{
	while(1)
	{

		int i = 0;
		while(i++ <ccg){
				lock();
				unlock();
		}
		gt_msleep(tcg);	
	}
}


void gt_task_H(void*arg)
{
	while(1)
	{

		int i = 0;
		while(i++ <cch){
				lock();
				unlock();
		}
		gt_msleep(tch);	
	}
}


void gt_task_I(void*arg)
{
	while(1)
	{

		int i = 0;
		while(i++ <cci){
				lock();
				unlock();
		}
		gt_msleep(tci);	
	}
}





