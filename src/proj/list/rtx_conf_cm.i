#line 1 "..\\config\\RTX_Conf_CM.c"









 

#line 1 "..\\outlib\\RTL.h"









 




 

 



#line 28 "..\\outlib\\RTL.h"







 typedef unsigned int   size_t;


typedef signed char     S8;
typedef unsigned char   U8;
typedef short           S16;
typedef unsigned short  U16;
typedef int             S32;
typedef unsigned int    U32;
typedef long long       S64;
typedef unsigned long long U64;
typedef unsigned char   BIT;
typedef unsigned int    BOOL;

#line 55 "..\\outlib\\RTL.h"

#line 71 "..\\outlib\\RTL.h"



 





 
typedef U32 OS_SEM[2];

 

typedef U32 OS_MBX[];

 
typedef U32 OS_MUT[4];

 
typedef U32 OS_TID;

 
typedef void *OS_ID;

 
typedef U32 OS_RESULT;

 












 




#line 202 "..\\outlib\\RTL.h"



 



 
extern void      os_set_env    (void);
extern void      rt_sys_init   (void (*task)(void), U32 priority, void *stk);
extern void      rt_tsk_pass   (void);
extern OS_TID    rt_tsk_self   (void);
extern OS_RESULT rt_tsk_prio   (OS_TID task_id, U8 new_prio);
extern OS_TID    rt_tsk_create (void (*task)(void), U32 priority, void *stk, void *argv);
extern OS_RESULT rt_tsk_delete (OS_TID task_id);

#line 238 "..\\outlib\\RTL.h"

extern void      _os_sys_init(U32 p, void (*task)(void), U32 prio_stksz,
                                     void *stk)                        __svc_indirect(0);
extern OS_TID    _os_tsk_create (U32 p, void (*task)(void), U32 prio_stksz,
                                        void *stk, void *argv)         __svc_indirect(0);
extern OS_TID    _os_tsk_create_ex (U32 p, void (*task)(void *), U32 prio_stksz,
                                           void *stk, void *argv)      __svc_indirect(0);
extern OS_TID    _os_tsk_self (U32 p)                                  __svc_indirect(0);
extern void      _os_tsk_pass (U32 p)                                  __svc_indirect(0);
extern OS_RESULT _os_tsk_prio (U32 p, OS_TID task_id, U8 new_prio)     __svc_indirect(0);
extern OS_RESULT _os_tsk_delete (U32 p, OS_TID task_id)                __svc_indirect(0);

 
extern OS_RESULT rt_evt_wait (U16 wait_flags,  U16 timeout, BOOL and_wait);
extern void      rt_evt_set  (U16 event_flags, OS_TID task_id);
extern void      rt_evt_clr  (U16 clear_flags, OS_TID task_id);
extern U16       rt_evt_get  (void);







extern OS_RESULT _os_evt_wait(U32 p, U16 wait_flags, U16 timeout,
                                     BOOL and_wait)                    __svc_indirect(0);
extern void      _os_evt_set (U32 p, U16 event_flags, OS_TID task_id)  __svc_indirect(0);
extern void      _os_evt_clr (U32 p, U16 clear_flags, OS_TID task_id)  __svc_indirect(0);
extern U16       _os_evt_get (U32 p)                                   __svc_indirect(0);
extern void      isr_evt_set (U16 event_flags, OS_TID task_id);

 
extern void      rt_sem_init (OS_ID semaphore, U16 token_count);
extern OS_RESULT rt_sem_send (OS_ID semaphore);
extern OS_RESULT rt_sem_wait (OS_ID semaphore, U16 timeout);





extern void      _os_sem_init (U32 p, OS_ID semaphore, 
                                      U16 token_count)                 __svc_indirect(0);
extern OS_RESULT _os_sem_send (U32 p, OS_ID semaphore)                 __svc_indirect(0);
extern OS_RESULT _os_sem_wait (U32 p, OS_ID semaphore, U16 timeout)    __svc_indirect(0);
extern void      isr_sem_send (OS_ID semaphore);

 
extern void      rt_mbx_init  (OS_ID mailbox, U16 mbx_size);
extern OS_RESULT rt_mbx_send  (OS_ID mailbox, void *p_msg,    U16 timeout);
extern OS_RESULT rt_mbx_wait  (OS_ID mailbox, void **message, U16 timeout);
extern OS_RESULT rt_mbx_check (OS_ID mailbox);







extern void      _os_mbx_init (U32 p, OS_ID mailbox, U16 mbx_size)     __svc_indirect(0);
extern OS_RESULT _os_mbx_send (U32 p, OS_ID mailbox, void *message_ptr,
                                      U16 timeout)                     __svc_indirect(0);
extern OS_RESULT _os_mbx_wait (U32 p, OS_ID mailbox, void  **message,
                                      U16 timeout)                     __svc_indirect(0);
extern OS_RESULT _os_mbx_check (U32 p, OS_ID mailbox)                  __svc_indirect(0);
extern void      isr_mbx_send (OS_ID mailbox, void *message_ptr);
extern OS_RESULT isr_mbx_receive (OS_ID mailbox, void **message);

 
extern void      rt_mut_init    (OS_ID mutex);
extern OS_RESULT rt_mut_release (OS_ID mutex);
extern OS_RESULT rt_mut_wait    (OS_ID mutex, U16 timeout);





extern void      _os_mut_init (U32 p, OS_ID mutex)                     __svc_indirect(0);
extern OS_RESULT _os_mut_release (U32 p, OS_ID mutex)                  __svc_indirect(0);
extern OS_RESULT _os_mut_wait (U32 p, OS_ID mutex, U16 timeout)        __svc_indirect(0);

 
extern U32       rt_time_get (void);
extern void      rt_dly_wait (U16 delay_time);
extern void      rt_itv_set  (U16 interval_time);
extern void      rt_itv_wait (void);






extern U32       _os_time_get (U32 p)                                  __svc_indirect(0);
extern void      _os_dly_wait (U32 p, U16 delay_time)                  __svc_indirect(0);
extern void      _os_itv_set (U32 p, U16 interval_time)                __svc_indirect(0);
extern void      _os_itv_wait (U32 p)                                  __svc_indirect(0);

 
extern OS_ID     rt_tmr_create (U16 tcnt, U16 info);
extern OS_ID     rt_tmr_kill   (OS_ID timer);




extern OS_ID     _os_tmr_create (U32 p, U16 tcnt, U16 info)            __svc_indirect(0);
extern OS_ID     _os_tmr_kill (U32 p, OS_ID timer)                     __svc_indirect(0);

 
extern U32       rt_suspend    (void);
extern void      rt_resume     (U32 sleep_time);
extern void      rt_tsk_lock   (void);
extern void      rt_tsk_unlock (void);






extern U32       _os_suspend (U32 p)                                   __svc_indirect(0);
extern void      _os_resume (U32 p, U32 sleep_time)                    __svc_indirect(0);
extern void      _os_tsk_lock (U32 p)                                  __svc_indirect(0);
extern void      _os_tsk_unlock (U32 p)                                __svc_indirect(0);

 
extern int       _init_box (void *box_mem, U32 box_size, U32 blk_size);
extern void     *_alloc_box (void *box_mem);
extern void     *_calloc_box (void *box_mem);
extern int       _free_box (void *box_mem, void *box);








 




 

 
typedef enum _FS_TYPE {
  FS_TYPE_NONE = 0,                      
  FS_TYPE_UNKNOWN,                       
  FS_TYPE_FAT12,                         
  FS_TYPE_FAT16,                         
  FS_TYPE_FAT32,                         
  FS_TYPE_EFS                            
} FS_TYPE;

typedef struct {                         
  U8  hr;                                
  U8  min;                               
  U8  sec;                               
  U8  day;                               
  U8  mon;                               
  U16 year;                              
} RL_TIME;

typedef struct {                         
  S8  name[256];                         
  U32 size;                              
  U16 fileID;                            
  U8  attrib;                            
  RL_TIME time;                          
} FINFO;

 
typedef struct {
  FS_TYPE fs_type;                       
  U64     capacity;                      
} Drive_INFO;

extern int finit (const char *drive);
extern int funinit (const char *drive);
extern int fdelete (const char *filename);
extern int frename (const char *oldname, const char *newname);
extern int ffind (const char *pattern, FINFO *info);
extern U64 ffree (const char *drive);
extern int fformat (const char *drive);
extern int fanalyse (const char *drive);
extern int fcheck (const char *drive);
extern int fdefrag (const char *drive);
extern int fattrib (const char *par, const char *path);
extern int fvol    (const char *drive, char *buf);
extern int finfo   (const char *drive, Drive_INFO *info);

 




 

 



 
#line 445 "..\\outlib\\RTL.h"

 
#line 453 "..\\outlib\\RTL.h"

 
#line 466 "..\\outlib\\RTL.h"

 




 




 



 



 



 
#line 501 "..\\outlib\\RTL.h"

 



 





 



 





 
#line 529 "..\\outlib\\RTL.h"

 




 
#line 545 "..\\outlib\\RTL.h"

 
#line 555 "..\\outlib\\RTL.h"

 
#line 563 "..\\outlib\\RTL.h"

 
#line 577 "..\\outlib\\RTL.h"

 



 
typedef struct sockaddr {          
  U16  sa_family;                  
  char sa_data[14];                
} SOCKADDR;

#pragma push
#pragma anon_unions

typedef struct in_addr {           
  union {
    struct {
      U8 s_b1,s_b2,s_b3,s_b4;      
    };
    struct {
      U16 s_w1,s_w2;               
    };
    U32 s_addr;                    
  };
} IN_ADDR;
#pragma pop

typedef struct sockaddr_in {       
  S16 sin_family;                  
  U16 sin_port;                    
  IN_ADDR sin_addr;                
  S8  sin_zero[8];                 
} SOCKADDR_IN;

typedef struct hostent {           
  char *h_name;                    
  char **h_aliases;                
  S16  h_addrtype;                 
  S16  h_length;                   
  char **h_addr_list;              
} HOSTENT;

extern void init_TcpNet (void);
extern BOOL main_TcpNet (void);
extern void timer_tick (void);
extern U8   udp_get_socket (U8 tos, U8 opt, 
                            U16 (*listener)(U8 socket, U8 *remip, U16 port, U8 *buf, U16 len));
extern BOOL udp_release_socket (U8 socket);
extern BOOL udp_open (U8 socket, U16 locport);
extern BOOL udp_close (U8 socket);
extern BOOL udp_mcast_ttl (U8 socket, U8 ttl);
extern U8  *udp_get_buf (U16 size);
extern BOOL udp_send (U8 socket, U8 *remip, U16 remport, U8 *buf, U16 dlen);
extern U8   tcp_get_socket (U8 type, U8 tos, U16 tout,
                            U16 (*listener)(U8 socket, U8 event, U8 *buf, U16 len));
extern BOOL tcp_release_socket (U8 socket);
extern BOOL tcp_listen (U8 socket, U16 locport);
extern BOOL tcp_connect (U8 socket, U8 *remip, U16 remport, U16 locport);
extern U8  *tcp_get_buf (U16 size);
extern U16  tcp_max_dsize (U8 socket);
extern BOOL tcp_check_send (U8 socket);
extern U8   tcp_get_state (U8 socket);
extern BOOL tcp_send (U8 socket, U8 *buf, U16 dlen);
extern BOOL tcp_close (U8 socket);
extern BOOL tcp_abort (U8 socket);
extern void tcp_reset_window (U8 socket);
extern BOOL arp_cache_ip (U8 *ipadr, U8 type);
extern BOOL arp_cache_mac (U8 *hwadr);
extern void ppp_listen (const char *user, const char *passw);
extern void ppp_connect (const char *dialnum, const char *user, const char *passw);
extern void ppp_close (void);
extern BOOL ppp_is_up (void);
extern void slip_listen (void);
extern void slip_connect (const char *dialnum);
extern void slip_close (void);
extern BOOL slip_is_up (void);
extern U8   get_host_by_name (U8 *hostn, void (*cbfunc)(U8 event, U8 *host_ip));
extern BOOL smtp_connect (U8 *ipadr, U16 port, void (*cbfunc)(U8 event));
extern void dhcp_disable (void);
extern BOOL igmp_join (U8 *group_ip);
extern BOOL igmp_leave (U8 *group_ip);
extern BOOL snmp_trap (U8 *manager_ip, U8 gen_trap, U8 spec_trap, U16 *obj_list);
extern BOOL snmp_set_community (const char *community);
extern BOOL icmp_ping (U8 *remip, void (*cbfunc)(U8 event));
extern BOOL ftpc_connect (U8 *ipadr, U16 port, U8 command, void (*cbfunc)(U8 event));
extern BOOL tftpc_put (U8 *ipadr, U16 port,
                       const char *src, const char *dst, void (*cbfunc)(U8 event));
extern BOOL tftpc_get (U8 *ipadr, U16 port, 
                       const char *src, const char *dst, void (*cbfunc)(U8 event));
extern BOOL sntp_get_time (U8 *ipadr, void (*cbfunc)(U32 utc_time));
extern void ftp_evt_notify (U8 evt);

 
extern int  socket (int family, int type, int protocol);
extern int  bind (int sock, const SOCKADDR *addr, int addrlen);
extern int  listen (int sock, int backlog);
extern int  accept (int sock, SOCKADDR *addr, int *addrlen);
extern int  connect (int sock, SOCKADDR *addr, int addrlen);
extern int  send (int sock, const char *buf, int len, int flags);
extern int  sendto (int sock, const char *buf, int len, int flags, SOCKADDR *to, int tolen);
extern int  recv (int sock, char *buf, int len, int flags);
extern int  recvfrom (int sock, char *buf, int len, int flags, SOCKADDR *from, int *fromlen);
extern int  closesocket (int sock);
extern int  getpeername (int sock, SOCKADDR *name, int *namelen);
extern int  getsockname (int sock, SOCKADDR *name, int *namelen);
extern int  ioctlsocket (int sock, long cmd, unsigned long *argp);
extern HOSTENT *gethostbyname (const char *name, int *err);







 


 
#line 13 "..\\config\\RTX_Conf_CM.c"



 































































































































 


const unsigned int 			os_tick = 2000;   



 

 

__declspec(noreturn) void os_idle_demon (void) {
   
   

  for (;;) {
   
  }
}

 

#line 173 "..\\config\\RTX_Conf_CM.c"

 

#line 182 "..\\config\\RTX_Conf_CM.c"

 

void os_tmr_call (U16 info) {
   
   

   
}


 

void os_error (U32 err_code) {
   
   
  err_code = err_code;
   
  
}




 

#line 1 "..\\config\\./RTX_lib.c"









 

#pragma thumb
#pragma O3



 
#line 25 "..\\config\\./RTX_lib.c"

#line 37 "..\\config\\./RTX_lib.c"







 
U16 const os_maxtaskrun = 15;
U32 const os_stackinfo  = (1<<24)| (14<<16) | (49*4);
U32 const os_rrobin     = (0 << 16) | 5;

 U32 const os_trv       = ((U32)(((double)36000000*(double)2000)/1E6)-1);


 U8  const os_flags     = 1;


 
U32 const os_clockrate __attribute__((used)) =  2000;
U32 const os_timernum  __attribute__((used)) = (0 << 16) | 0;

 
U32 mp_tcb[(((56)+3)/4)*(15) + 3];
U16 const mp_tcb_size = sizeof(mp_tcb);

 
U64 mp_stk[(((49*4)+7)/8)*(15-14+1) + 2];
U32 const mp_stk_size = sizeof(mp_stk);





 
U32 os_fifo[16*2+1];
U8 const os_fifo_size = 16;

 
void *os_active_TCB[15];

#line 84 "..\\config\\./RTX_lib.c"
 U32 const *m_tmr = ((void *) 0);
 U16 const mp_tmr_size = 0;



  
 static U32    std_libspace[15][96/4];
 static OS_MUT std_libmutex[8];
 static U32    nr_mutex;
 extern void  *__libspace_start;




 

#line 179 "..\\config\\./RTX_lib.c"




 

#line 344 "..\\config\\./RTX_lib.c"
                                              



 











 void rt_init_robin (void) {;}
 void rt_chk_robin  (void) {;}









 



 

void *__user_perthread_libspace (void) {
   
  U32 idx;

  idx = rt_tsk_self();
  if (idx == 0) {
     
    return (&__libspace_start);
  }
  return ((void *)&std_libspace[idx-1]);
}

 

int _mutex_initialize (OS_ID *mutex) {
   

  if (nr_mutex >= 8) {
     
    for (;;);
  }
  *mutex = &std_libmutex[nr_mutex++];
  rt_mut_init(*mutex);
  return (1);
}


 

__attribute__((used)) void _mutex_acquire (OS_ID *mutex) {
   
  if (rt_tsk_self()) {
     
    _os_mut_wait((U32)rt_mut_wait,*mutex,0xFFFF);
  }
}


 

__attribute__((used)) void _mutex_release (OS_ID *mutex) {
   
  if (rt_tsk_self()) {
     
    _os_mut_release((U32)rt_mut_release,*mutex);
  }
}





 

#line 209 "..\\config\\RTX_Conf_CM.c"



 
