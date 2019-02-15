
#include "rt_TypeDef.h"
#include "rt_Task.h"
#include "rt_List.h"

extern void*os_active_TCB[];
extern U16 const os_maxtaskrun;
extern struct OS_XCB  os_dly;

/*返回任务当前状态*/
static char*task_state(U8 state)
{
	switch(state)
	{
		case  INACTIVE     		:return "inactive";
		case  READY           :return "ready";
		case  RUNNING         :return "runing";
		case  WAIT_DLY        :return "dly";
		case  WAIT_ITV        :return "itv";
		case  WAIT_OR         :return "or";
		case  WAIT_AND        :return "and";
		case  WAIT_SEM        :return "sem";
		case  WAIT_MBX        :return "mbx";
		case  WAIT_MUT        :return "mut";
		default:return "NULL";
	}
}

static U32 task_delay(struct OS_TCB*tcp)
{
  P_TCB p;
  U32 delta=0;
  p = (P_TCB)&os_dly;
	if(p->p_dlnk == NULL)return 0;
	while(p->p_dlnk != NULL)
	{
		delta+=p->delta_time;
		if(p->p_dlnk == tcp)return delta;
		p = p->p_dlnk;
	}
	return 0;
}



/*打印一个任务的详细信息*/
static void printf_task(struct OS_TCB*tcp,void(*p)(const char*fmt,...))
{
	if((tcp != NULL) && (p != NULL))
	{
		int top = ((int)tcp->stack) + tcp->priv_stack;
		int u = ( top- ((int)tcp->tsk_stack))*100;
		int m = ( top- ((int)tcp->tsk_stack_max))*100;
		p("%3d%9s%8d%6d%%%6d%%\r\n",
			tcp->task_id,task_state(tcp->state),
			task_delay(tcp),
			u/tcp->priv_stack,
			m/tcp->priv_stack);
	}
}

/*列表所有任务信息*/
void gt_task_list(void(*p)(const char*fmt,...))
{
	struct OS_TCB* tcp = NULL;
	int i = 0;
	p("--id----state----delay--stack---max\r\n");
	for(i=0;i<os_maxtaskrun;i++)
	{
		tcp = ((struct OS_TCB**)os_active_TCB)[i];
		printf_task(tcp,p);
		tcp++;
	}
}
