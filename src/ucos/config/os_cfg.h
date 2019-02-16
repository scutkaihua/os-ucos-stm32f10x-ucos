/*
************************************************************************************************************************
*                                                      uC/OS-III
*                                                 The Real-Time Kernel
*
*                                  (c) Copyright 2009-2011; Micrium, Inc.; Weston, FL
*                           All rights reserved.  Protected by international copyright laws.
*
*                                                  CONFIGURATION FILE
*
* File    : OS_CFG.H
* By      : JJL
* Version : V3.02.00
*
* LICENSING TERMS:
* ---------------
*           uC/OS-III is provided in source form for FREE short-term evaluation, for educational use or 
*           for peaceful research.  If you plan or intend to use uC/OS-III in a commercial application/
*           product then, you need to contact Micrium to properly license uC/OS-III for its use in your 
*           application/product.   We provide ALL the source code for your convenience and to help you 
*           experience uC/OS-III.  The fact that the source is provided does NOT mean that you can use 
*           it commercially without paying a licensing fee.
*
*           Knowledge of the source code may NOT be used to develop a similar product.
*
*           Please help us continue to provide the embedded community with the finest software available.
*           Your honesty is greatly appreciated.
*
*           You can contact us at www.micrium.com, or by phone at +1 (954) 217-2036.
************************************************************************************************************************
*/

#ifndef OS_CFG_H
#define OS_CFG_H



//-------- <<< Use Configuration Wizard in Context Menu >>> -----------------                                             
                                             /* ---------------------------- MISCELLANEOUS -------------------------- */
//<e>ʹ�ù���
//<i>��#define����Ϊ1ʱ��˵����C/OS-III�Ĺ��Ӻ���(���뺯��)���Ե����û�����Ĺ��Ӻ������Ӷ�ʵ�֦�C/OS-III����Ĺ����ܹ����䣬ͨ���û��������ʵ�֡�
#define OS_CFG_APP_HOOKS_EN             1u   /* Enable (1) or Disable (0) application specific hooks                  */
//</e>
//<e>������
//<i>�ú�����û��Ƿ�ϣ���Ԧ�C/OS-III�Ĵ󲿷ֺ���ִ�в�����飬��ȷ�����ݴ��ݸ�������ָ���NULL������ֵ������ķ�Χ�ڡ�ѡ������Ч�ĵȡ�
//<i>������Ϊ0ʱ������ֹ������鹦�ܣ���Ӧ�Ľ�ʡ�ں˵Ĵ���ռ�ʹ���ʱ�䡣
//<i>ͳ�Ʒ��֣���C/OS-IIIΪ����40�������ṩ������鹦�ܡ���ˣ����ô�ѡ���Լ�����ֽڵĴ���ռ䡣
//<i>Ӧ���У����Կ��ǵ��Խ׶ο�����ѡ���Ŀ�ĺ��ڷ����׶ν�ֹ��ѡ�
#define OS_CFG_ARG_CHK_EN               1u   /* Enable (1) or Disable (0) argument checking                           */
//</e>
//<e>����жϵ���
//<i>�����ں��Ƿ���м����ȷ��������ĺ���û�б�ISR���á����仰˵���������C/OS-III����Ӧ��ֻ�����񼶴�����ã����ˡ�POST����ķ��ͺ���(���ǿ��Ա�ISR����)��
//<i>��C/OS-IIIΪ��Լ50�������ṩ�����顣��ˣ����ô�ѡ�����Լ�����ֽڵĴ���ռ䡣
//<i>Ӧ���У����Կ��ǵ��Խ׶ο�����ѡ���Ŀ�ĺ��ڷ����׶ν�ֹ��ѡ�
#define OS_CFG_CALLED_FROM_ISR_CHK_EN   1u   /* Enable (1) or Disable (0) check for called from ISR                   */
//</e>
//<e>����
//<i>�����������Ϊ1ʱ��os_dbg.c�е�ROM������������԰���֧���ں˵�������������˵��������������ͨ����ѯһϵ����ν��ROM����������֪����ʱ��ѡ����磬�����������ҳ�OS_TCB�ĳߴ��С����C/OS-III�İ汾�š�һ���¼���־��ĳߴ�(OS_FLAG_GRP)�ȡ�
#define OS_CFG_DBG_EN                   1u   /* Enable (1) debug code/variables                                       */
//</e>
//<e>�ж�post����
//<i>����Ϊ1ʱ������С�ж��ӳ٣���Ϊ�ڦ�C/OS-III�Ĵ�����ٽ�δ����н����ٽ����жϡ��෴������Щ�ٽ�δ���ִ���ڼ䣬�����������������ú�����Ϊ1�ĺô����ж��ӳ�С�����ǣ�ISR���������Ӧʱ������Գ���������������·��񣬽������ø�Ϊ1����Ϊ��������Ϊ0�����ж��ӳ��п��ܻ����޷����ܵĳ���
//<i> Event Flags �¼���־��
//<i> Multiple Pend ���ں˶���
#define OS_CFG_ISR_POST_DEFERRED_EN     1u   /* Enable (1) or Disable (0) Deferred ISR posts                          */
//</e>
//<e>����ں˶�������
//<i>�����Ƿ��ô�����Ħ�C/OS-III���������������ں˶��������Ƿ���ȷ������֮�����ϣ������һ���ź�������ô�û����ݵ��Ƿ�ȷʵ��һ���ź��������ߴ����ʹ�����������͵��ں˶����أ���C/OS-III���ں˶������Լ��30�������ø�ѡ�����Լ�����ֽڵĴ���ռ��Լ����ֵĴ���ʱ�䡣
//<i>������Խ׶ο�����ѡ���������ʱ�رոü���
#define OS_CFG_OBJ_TYPE_CHK_EN          1u   /* Enable (1) or Disable (0) object type checking                        */
//</e>
//<e>ʱ���
//<i>OS_CFG_SCHED_LOCK_TIME_MEAS_ENʹ��ʱ��Ҫ����
#define OS_CFG_TS_EN                    1u   /* Enable (1) or Disable (0) time stamping                               */
//</e>
//<e>���¼��ȴ�
//<i>���������Ƿ�֧�ֵȴ�����¼�(���ź�������Ϣ����)������(1)�����(0)��
#define OS_CFG_PEND_MULTI_EN            1u   /* Enable (1) or Disable (0) code generation for multi-pend feature      */
//</e>
//<o>������ȼ�����
//<i>ָ��Ӧ�ó���������ȼ���������������ú�ָ��Ϊ�պù��û��ƻ�ʹ�õ����ȼ������������٦�C/OS-III�����RAM����
//<i>�ڦ�C/OS-III.�У����OS_PRIO��������ΪCPU_INT08U�����������ȼ����Դ�0(������ȼ�)�����255(������ȼ�)��Ȼ���ڦ�C/OS-III�У��������ȼ�������ʵ����û�����ơ�
//<i>������˵���������OS_PRIO��������ΪCPU_INT16U�����������ȼ������65536����Ӧ����������OS_CFG_PRIO_MAXΪ8�ı���(��8,16,32,64,128,256��)�����õ����ȼ�����Խ�࣬��C/OS-III.��RAM����Խ��
//<i>����C/OS-III.Ϊ�����������ȼ���OS_CFG_PRIO_MAX-2���ͣ�OS_CFG_PRIO_MAX-1����ǰ�����ڿ�������OS_IdleTask()�����⣬��Ҫ�����ȼ�0�����κ�Ӧ�ó���û��Ϊ���Ǧ�C/OS-III.������ΪISR��������ġ���ˣ�Ӧ�ó�������ȼ�������2����OS_CFG_PRIO_MAX-3��֮��(��)ȡֵ��
#define OS_CFG_PRIO_MAX                64u   /* Defines the maximum number of task priorities (see OS_PRIO data type) */

//<e>����������������ʱ��
//<i>�����Ƿ����� ����������������ʱ�䣨measure the amount of time the scheduler is locked�� �Ĵ��롣����Ҫ����ȷ�������ӳ١�
#define OS_CFG_SCHED_LOCK_TIME_MEAS_EN  1u   /* Include code to measure scheduler lock time                           */
//</e>
//<e>ʱ��Ƭ����
//<i>�����Ƿ�����ʱ��Ƭ��ת���ȴ��롣
#define OS_CFG_SCHED_ROUND_ROBIN_EN     1u   /* Include code for Round-Robin scheduling                               */
//</e>
//<o>������С��ջ
//<i>��������������С��ջ��С(��CPU_STKΪ��Ԫ)����Ϊ��C/OS-III��ÿ�����񴴽�ʱ�ṩ���㹻�Ķ�ջ�ռ䡣����һ������������16��32λ�ļĴ�����ͬ��������CPU_STK������ΪCPU_INT32U���ͣ���ô����޶ȣ�����OS_CFG_STK_SIZE_MINΪ16.Ȼ�����⽫�Ǻܲ����ǵģ���Ϊ�����޷����ɴ洢�ֲ��������������õķ��ء����ܵ�ISRǶ�ס�
//<i>����Ĵ������ġ���ֲ��������������������Сֵ��ע�⣬����һ�����ϣ���ȷ�����㹻�������ջ�ռ䡣
#define OS_CFG_STK_SIZE_MIN            64u   /* Minimum allowable task stack size                                     */


//<e>�¼���־��
//<i>����Ϊ1ʱ�����������¼���־����Ĵ�������ݽṹ�����������¼���־�����ܡ�
//�������Ϊ0����ô�����ٿ���/��ֹ���ļ����κ�����ΪOS_CFG_FLAG_xxx��#define������
//Ӧ�ò���Ҫ��ط���ʱ�����Խ�ֹ�ù��ܣ��Դ������ٴ�������ݵĿռ�����                                             /* ----------------------------- EVENT FLAGS --------------------------- */
#define OS_CFG_FLAG_EN                  1u   /* Enable (1) or Disable (0) code generation for EVENT FLAGS             */

#if OS_CFG_FLAG_EN > 0u
//<e>OSFlagDel()
//<i>�����Ƿ�����OSFlagDel()�������롣
#define OS_CFG_FLAG_DEL_EN              1u   /*     Include code for OSFlagDel()                                      */
//</e>
//<e>�ȴ��¼���־��Ϊ0
//<i>�Ƿ����ɴ������ڵȴ��¼���־��Ϊ0.ͨ���ǵȴ��¼���־����Ϊ1�������û�Ҳ������Ҫ�ȴ��¼���־�����㣬����������£���Ҫ������ѡ�
#define OS_CFG_FLAG_MODE_CLR_EN         1u   /*     Include code for Wait on Clear EVENT FLAGS                        */
//</e>
//<e>OSFlagPendAbort()
//<i>OSFlagPendAbort().�����Ƿ����ɡ�
#define OS_CFG_FLAG_PEND_ABORT_EN       1u   /*     Include code for OSFlagPendAbort()                                */
//</e>
#else
#define OS_CFG_FLAG_DEL_EN              0u   /*     Include code for OSFlagDel()                                      */
#define OS_CFG_FLAG_MODE_CLR_EN         0u   /*     Include code for Wait on Clear EVENT FLAGS                        */
#define OS_CFG_FLAG_PEND_ABORT_EN       0u   /*     Include code for OSFlagPendAbort()                                */
#endif
                                             /* -------------------------- MEMORY MANAGEMENT ------------------------ */
//</e>
//<e>�ڴ����
//<i>os_mem.c����,�����Ƿ����ɷ����洢����������ص����ݽṹ�������û��ڲ�ʹ�ô洢����ʱ�����ٴ�������ݵĿռ�����
#define OS_CFG_MEM_EN                   1u   /* Enable (1) or Disable (0) code generation for MEMORY MANAGER          */
//</e>
                                             /* --------------------- MUTUAL EXCLUSION SEMAPHORES ------------------- */


//<e>������
//<i>�����Ƿ��������ź�������Ĵ�������ݽṹ��
//<i>ͬ�������ں˷��񿪹�һ����OS_CFG_MUTEX_EN������Ϊ0����ô�����ٿ���/��ֹ��ϵͳ���κ���ΪOS_CFG_MUTEX_XXX ��#define������
#define OS_CFG_MUTEX_EN                 1u   /* Enable (1) or Disable (0) code generation for MUTEX                   */

#if OS_CFG_MUTEX_EN > 0u
//<e>OSMutexDel()
//<i>�Ƿ�����OSMutexDel().���롣
#define OS_CFG_MUTEX_DEL_EN             1u   /*     Include code for OSMutexDel()                                     */
//</e>
//<e>OSMutexPendAbort()
//<i>�Ƿ�����OSMutexPendAbort().����
#define OS_CFG_MUTEX_PEND_ABORT_EN      1u   /*     Include code for OSMutexPendAbort()                               */
//</e>
#else
#define OS_CFG_MUTEX_DEL_EN             0u   /*     Include code for OSMutexDel()                                     */
#define OS_CFG_MUTEX_PEND_ABORT_EN      0u   /*     Include code for OSMutexPendAbort()                               */
#endif
//</e>
                                             /* --------------------------- MESSAGE QUEUES -------------------------- */

//<e>��Ϣ����
//<i>�����Ƿ�������Ϣ���з���Ĵ�������ݽṹ��
//<i>ͬ�������ں˷��񿪹�һ����OS_CFG_Q_EN������Ϊ0����ô�����ٿ���/��ֹ��ϵͳ���κ���ΪOS_CFG_Q_XXX ��#define������
#define OS_CFG_Q_EN                     1u   /* Enable (1) or Disable (0) code generation for QUEUES                  */

#if OS_CFG_Q_EN > 0u
//<e>OSQDel()
#define OS_CFG_Q_DEL_EN                 1u   /*     Include code for OSQDel()                                         */
//</e>
//<e>OSQFlush()
#define OS_CFG_Q_FLUSH_EN               1u   /*     Include code for OSQFlush()                                       */
//</e>
//<e>OSQPendAbort()
#define OS_CFG_Q_PEND_ABORT_EN          1u   /*     Include code for OSQPendAbort()                                   */
//</e>
#else
#define OS_CFG_Q_DEL_EN                 0u   /*     Include code for OSQDel()                                         */
#define OS_CFG_Q_FLUSH_EN               0u   /*     Include code for OSQFlush()                                       */
#define OS_CFG_Q_PEND_ABORT_EN          0u   /*     Include code for OSQPendAbort()                                   */
#endif
//</e>
                                             /* ----------------------------- SEMAPHORES ---------------------------- */

//<e>�ź���
#define OS_CFG_SEM_EN                   1u   /* Enable (1) or Disable (0) code generation for SEMAPHORES              */

#if OS_CFG_SEM_EN > 0u
//<e>OSSemDel()
#define OS_CFG_SEM_DEL_EN               1u   /*    Include code for OSSemDel()                                        */
//</e>
//<e>OSSemPendAbort()
#define OS_CFG_SEM_PEND_ABORT_EN        1u   /*    Include code for OSSemPendAbort()                                  */
//</e>
//<e>OSSemSet()
#define OS_CFG_SEM_SET_EN               1u   /*    Include code for OSSemSet()                                        */
//</e>
#else
#define OS_CFG_SEM_DEL_EN               1u   /*    Include code for OSSemDel()                                        */
#define OS_CFG_SEM_PEND_ABORT_EN        1u   /*    Include code for OSSemPendAbort()                                  */
#define OS_CFG_SEM_SET_EN               1u   /*    Include code for OSSemSet()                                        */
#endif
//</e>
                                             /* -------------------------- TASK MANAGEMENT -------------------------- */
//<h>�������
//<e>ͳ������
//<i>�����Ƿ����æ�C/OS-III.��ͳ������OS_StatTask()���Լ����ĳ�ʼ������void OS_StatTaskInit ()��
//<i>OS_StatTask()����Ӧ�ó����CPUʹ���ʡ�ÿ������Ķ�ջ������ÿ������������ʱ��CPUʹ���ʵȡ�
//<i>������ʱ��OS_StatTask()����OS_CFG_TICK_RATE_HZ(see os_cfg_app.h)��Ƶ��ִ�С�����OSStatTaskCPUUsage��ֵʱӦ��ע�⣬����һ��Ӧ�ó���CPUʹ���ʵİٷֱ�ֵ��OS_StatTask()��ÿ��ִ��ʱ����OSStatTaskHook()���Ӻ����������û�����ͨ��������Զ����ͳ�ƹ��ܡ�ͳ���������ϸ��Ϣ���μ�os_stat.c��OS_StatTask()�����ȼ���Ӧ�ó����п����õ�(see os_cfg_app.h)
//<i>���OS_CFG_STAT_TASK_STK_CHK_EN����Ϊ1����OS_StatTask()��������ÿ������Ķ�ջʹ���������ʱOS_StatTask()ÿ��ִ��ʱ����Ϊÿ���������OSTaskStkChk()��������������ڸ������TCB�С�����TCB��.StkFree ��.StkUsed��ֱ����ʣ��ռ�(�ֽڵ�λ)���ÿռ�(�ֽڵ�λ)��
//<i>���OS_CFG_STAT_TASK_STK_CHK_EN����Ϊ0����ͳ�������õ������б�������û������(��os.h)����ȻҲ�������ں˵�RAM������
#define OS_CFG_STAT_TASK_EN             0u   /* Enable (1) or Disable(0) the statistics task                          */
//</e>
//<e>ͳ������-��ջ���
//<i>����ͳ�������Ƿ�Ϊÿ���������OSTaskStkChk()��ջ��⡣Ϊ��������һ�㣬��Ҫ��OS_CFG_STAT_TASK_EN����Ϊ1(��ͳ��������Ҫ����)����Ȼ��������ĳ�������е���OSTaskStkChk()�����Ի���������Ĵ�����Ϣ��
#define OS_CFG_STAT_TASK_STK_CHK_EN     0u   /* Check task stacks from statistic task                                 */
//</e>
//<e>������-�������ȼ�
//<i>�����Ƿ�����OSTaskChangePrio()����
#define OS_CFG_TASK_CHANGE_PRIO_EN      0u   /* Include code for OSTaskChangePrio()                                   */
//</e>
//<e>������-ɾ������
#define OS_CFG_TASK_DEL_EN              1u   /* Include code for OSTaskDel()                                          */
//</e>
//<e>������-ֱ���շ���Ϣ
//<i>�����Ƿ�����ֱ����/�������ISR���ͺͽ�����Ϣ��OSTaskQXXX()�������롣
//<i>ֱ����һ����������Ϣ�ر�ͨ����Ϣ���з�����Ϣ����Ч��һЩ����Ϊ����������Ϣ�����ĵȴ���
#define OS_CFG_TASK_Q_EN                0u   /* Include code for OSTaskQXXXX()                                        */
//</e>
//<e>������-ֱ���շ���Ϣ-Abort()
#define OS_CFG_TASK_Q_PEND_ABORT_EN     0u   /* Include code for OSTaskQPendAbort()                                   */
//</e>
//<e>������������
//<i>�����Ƿ�������ÿ�������OS_TCB�з���������������������������ݡ������������ÿ��������һЩ���������������л��Ĵ����������ִ��ʱ�䡢����������������CPUʹ���ʵȡ�
//<i>������ṩ����Ϣ���ڵ��Էǳ����ã�����Ҫ�����RAM�����������ʱ��ص��ͺ�����
#define OS_CFG_TASK_PROFILE_EN          0u   /* Include variables in OS_TCB for profiling                             */
//</e>
//<e>���������ı���
//<i>�ú������������ӵ�����������ı���(This constant allows each task to have task context variables)������ʹ����������洢���硰errno���������ʶ�������� ������ص���ֵ��Ԫ�ء�����ӵ�еı�����Ŀ��������������õġ�ÿ��������һ��Ψһ�ı�ʶ����0����OS_CFG_TASK_REG_TBL_SIZE-1�������⡣ÿ���������������ΪOS_REG��������(��os_type.h)�����OS_REG������ΪCPU_INT32U����ô�˱������еı�����Ϊ�������͡�
#define OS_CFG_TASK_REG_TBL_SIZE        0u   /* Number of task specific registers                                     */
//</e>
//<e>������-�����ź���Abort()
//<i>Include code for OSTaskSemPendAbort()
#define OS_CFG_TASK_SEM_PEND_ABORT_EN   0u   /* Include code for OSTaskSemPendAbort()                                 */
//</e>
//<e>������-OSTaskSuspend/OSTaskResume
//<i>
#define OS_CFG_TASK_SUSPEND_EN          0u   /* Include code for OSTaskSuspend() and OSTaskResume()                   */
//</e>
//</e>
//</h>
                                             /* -------------------------- TIME MANAGEMENT -------------------------- */
//<e>ʱ�����-OSTimeDlyHMSM
#define OS_CFG_TIME_DLY_HMSM_EN         1u   /*     Include code for OSTimeDlyHMSM()                                  */
//</e>
//<e>ʱ�����-OSTimeDlyResume
#define OS_CFG_TIME_DLY_RESUME_EN       1u   /*     Include code for OSTimeDlyResume()                                */
//</e>

                                             /* ------------------------- TIMER MANAGEMENT -------------------------- */
//<e>��ʱ��
#define OS_CFG_TMR_EN                   1u   /* Enable (1) or Disable (0) code generation for TIMERS                  */

#if OS_CFG_TMR_EN > 0u
//<e>��ʱ��-OSTmrDel()
#define OS_CFG_TMR_DEL_EN               1u   /* Enable (1) or Disable (0) code generation for OSTmrDel()              */
//</e>
#else
#define OS_CFG_TMR_DEL_EN               0u
#endif
//</e>


#endif
