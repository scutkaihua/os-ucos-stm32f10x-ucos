/*
************************************************************************************************************************
*                                                      uC/OS-III
*                                                 The Real-Time Kernel
*
*                                  (c) Copyright 2009-2011; Micrium, Inc.; Weston, FL
*                           All rights reserved.  Protected by international copyright laws.
*
*                                       OS CONFIGURATION (APPLICATION SPECIFICS)
*
* File    : OS_CFG_APP.H
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

#ifndef OS_CFG_APP_H
#define OS_CFG_APP_H

/*
************************************************************************************************************************
*                                                      CONSTANTS
************************************************************************************************************************
*/
//-------- <<< Use Configuration Wizard in Context Menu >>> -----------------   
                                                            /* --------------------- MISCELLANEOUS ------------------ */
//<o>��Ϣ����
#define  OS_CFG_MSG_POOL_SIZE            100u               /* Maximum number of messages                             */
//<o>�ж϶�ջ
//<i>��λCPU_STK
//<i>���������˦�C/OS-III���ж϶�ջ��С(��CPU_STKΪ��λ)��ע�⣬�ζ�ջ�Ĵ�С��Ҫ�����ж�Ƕ�׵����������账����֧���ж�Ƕ�ס��ö�ջ��������os_cfg_app.c�У���ʽ���£�CPU_STK OSCfg_ISRStk[OS_CFG_ISR_STK_SIZE];
#define  OS_CFG_ISR_STK_SIZE             128u               /* Stack size of ISR stack (number of CPU_STK elements)   */
//<o>��ջ��λ(��ֵ��)
//<i>��ջ������< (ֵ%),��ջ�����λ
//<i>���#defineΪ��������ͳ�����񣬽��������ж϶��д�������Ͷ�ʱ������������ջ ���ö�ջ��������λ���Կ���ٷֱȵ���ʽ�������仰˵������ֵ�Ƕ�ջʣ��Ŀռ������
//<i>���磬�����ջ�Ĵ�СΪ1000��CPU_STK��Ԫ�����û�������OS_CFG_TASK_STK_LIMIT_PCT_EMPTYΪ10�����ջ��������λ���ڶ�ջ%90������%10�յ�ʱ����λ��
//<i>����������Ķ�ջ�ǴӸߵ�ַ��͵�ַ����������ô�����λӦ�ÿ�����ջ�ġ�����ַ�������ӽ���ջ��0��Ԫ��
//<i>�����������֧���Զ���ջ��λ��⣬��Ӧ�ý����#define����Ϊ0.
#define  OS_CFG_TASK_STK_LIMIT_PCT_EMPTY  10u               /* Stack limit position in percentage to empty            */


                                                            /* ---------------------- IDLE TASK --------------------- */
//<o>���������ջ
//<i>���ÿ�������Ķ�ջ��С(��CPU_STKΪ��λ)��ע�⣬���õ������ջ��С����Ҫ����OS_CFG_STK_SIZE_MINֵ(��os_cfg.h)
#define  OS_CFG_IDLE_TASK_STK_SIZE        64u               /* Stack size (number of CPU_STK elements)                */


                                                            /* ------------------ ISR HANDLER TASK ------------------ */
//<o>�ж϶��д�С
//<i>���OS_CFG_ISR_POST_DEFERRED_EN����Ϊ1(��os_cfg.h)�������#defineָ�����ж϶��п������ɵ���Ŀ�����˶��еĴ�Сȡ���� ISR��������ڼ䣬���ܷ������ٴ��жϣ����С��ȡ�����Ƿ������ж�Ƕ�ס�һ���ܺõĳ�ʼֵ��Լ��10.
#define  OS_CFG_INT_Q_SIZE                10u               /* Size of ISR handler task queue                         */
//<o>�ж϶��������ջ
//<i>���OS_CFG_ISR_POST_DEFERRED_EN����Ϊ1(��os_cfg.h)����#define���õ�ISR��������(ISR handler task��s stack)�Ķ�ջ��С(��CPU_STKΪ��λ)
#define  OS_CFG_INT_Q_TASK_STK_SIZE      128u               /* Stack size (number of CPU_STK elements)                */


                                                            /* ------------------- STATISTIC TASK ------------------- */
//<h>ͳ������
//<o>���ȼ�
#define  OS_CFG_STAT_TASK_PRIO            11u               /* Priority                                               */
//<o>ִ��Ƶ��Hz
#define  OS_CFG_STAT_TASK_RATE_HZ         10u               /* Rate of execution (1 to 10 Hz)                         */
//<o>��ջ
//<i>CPU_STK
#define  OS_CFG_STAT_TASK_STK_SIZE       128u               /* Stack size (number of CPU_STK elements)                */
//</h>

                                                            /* ------------------------ TICKS ----------------------- */
//<h>��������
//<o>ִ��Ƶ��
#define  OS_CFG_TICK_RATE_HZ            1000u               /* Tick rate in Hertz (10 to 1000 Hz)                     */
//<o>���ȼ�
//<i>������������ȼ������齫������������һ���൱�ߵ����ȼ��ϣ�����������ߵġ����������������ȼ��������0����С��OS_CFG_PRIO_MAX-1.
#define  OS_CFG_TICK_TASK_PRIO          OS_CFG_PRIO_MAX-4u  /* Priority     
<o>��ջ                                          */
#define  OS_CFG_TICK_TASK_STK_SIZE       128u               /* Stack size (number of CPU_STK elements)                */
//<o>���̴�С
//<i>���#define������OSTickWheel[]���е���Ŀ���������̡������ã��ǿ��Լ��ٽ�������ÿ����Ҫ�����µ��������������̵Ĵ�СӦ����Ӧ�ó����Ԥ�����������ļ���֮һ��
//<i>��ֵӦ����4~1024֮�������
//<i>�������Ŀ�����ĳ�̶ֳ��Ͼ��������̵Ĵ�С��
//<i>�ϴ�����̳ߴ罫���С���Ĺ���ĸ��ɣ�������Ҫ�����RAM��
//<i>���̵�ÿ����Ŀ������һ��ָ�롢һ������������������¼�������̵���һ�����ַ����ϵȴ�����������
//<i>���������ͨ��16λ�ġ����鲻Ҫ��OS_CFG_TICK_WHEEL_SIZE����Ϊ�����Ƶ�ʳɱ����Ĺ�ϵ�����Ӧ�ó����кܶ����񣬽�������һ���ϴ�����̳ߴ硣
//<i>��Ϊ��ʼֵ������ʹ��һ������(3,5,7,11��13��17,19,23��)��
#define  OS_CFG_TICK_WHEEL_SIZE           17u               /* Number of 'spokes' in tick  wheel; SHOULD be prime     */
//</h>


                                                            /* ----------------------- TIMERS ----------------------- */
//<h>��ʱ������
//<o>���ȼ�
//<i>ָ����C/OS-III��ʱ���������ȼ�������������һ���е�ƫ�͵����ȼ��ϡ�
//<i>Ƶ�ʸ�=>���ȼ���,���̴�=>���ȼ���,��ʱ����=>���ȼ���
#define  OS_CFG_TMR_TASK_PRIO           OS_CFG_PRIO_MAX-3u  /* Priority of 'Timer Task'                               */
//<o>ִ��Ƶ�� Hz
//<i>��ʱ�������Ƶ�ʡ�һ��Ĭ������Ϊ10Hz����Ȼ��ʱ�������Ը��ߵ��ٶ����У������Ǹ��ߵĴ�����������
//<i>ע��OS_CFG_TMR_TASK_RATE_HZ������OS_CFG_TICK_TASK_RATE_HZ��������֮һ��
//<i>���仰˵���������OS_CFG_TICK_TASK_RATE_HZ==1000Hz���벻Ҫ����OS_CFG_TMR_TASK_RATE_HZΪ11����Ϊ������ÿ�ζ�ʱ�����¶�����Ҫ90.91ʱ�ӽ��ģ�����������
#define  OS_CFG_TMR_TASK_RATE_HZ        100u                /* Rate for timers (100 Hz Typ.)                           */
//<o>��ջ
#define  OS_CFG_TMR_TASK_STK_SIZE       128u                /* Stack size (number of CPU_STK elements)                */
//<o>���̴�С
//<i>��ʱ���ĸ��²�������ת�����̻��ơ������̡������ã��ǿ��Լ��ٶ�ʱ����������ÿ����Ҫ�����µ��������������̵Ĵ�С�ø�ʱӦ�ó�����ܶ�ʱ����Ŀ�ļ���֮һ��
//<i>��ֵӦ����4~1024֮���������ʱ������Ŀ�����ĳ�̶ֳ��Ͼ��������̵Ĵ�С���ϴ�����̳ߴ罫���С��ʱ������ĸ��ɣ�������Ҫ�����RAM�����̵�ÿ����Ŀ������һ��ָ�롢һ������������������¼�������̵���һ�����ַ����ϵȴ��������������������ͨ��16λ�ġ����鲻Ҫ����ֵ����Ϊ�����Ƶ�ʳɱ����Ĺ�ϵ�����Ӧ�ó����кܶඨʱ������������һ���ϴ�����̳ߴ硣��Ϊ��ʼֵ������ʹ��һ������(3,5,7,11��13��17,19,23��)��
#define  OS_CFG_TMR_WHEEL_SIZE          17u                 /* Number of 'spokes' in timer wheel; SHOULD be prime     */
//</h>



#endif
