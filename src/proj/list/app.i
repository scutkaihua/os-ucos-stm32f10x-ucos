#line 1 "..\\app\\app\\app.c"
#line 1 "..\\app\\app\\app.h"



#line 1 "..\\ucos\\core\\os.h"

































 








 







 







#line 1 "..\\ucos\\config\\os_cfg.h"






























 







                                              





















































































                                              





                                              





















                                              






















                                              




















                                              















































                                              







                                              













#line 60 "..\\ucos\\core\\os.h"
#line 1 "..\\ucos\\cpu\\cpu.h"



















 














 






 


































 

#line 1 "..\\ucos\\cpu\\cpu_def.h"



















 










 






 























 

                                                         






                                                         
















 

                                                         





 







































































 

                                                         






 




 



#line 80 "..\\ucos\\cpu\\cpu.h"
#line 1 "..\\ucos\\cpu\\cpu_cfg.h"



















 













 






 



















 

                                                                 

                                                                 
                                                                 

                                                                 



 























 

                                                                 


                                                                 
                                                                 

                                                                 
                                                                 


























 





                                                                 



 















 






 




 



#line 81 "..\\ucos\\cpu\\cpu.h"


 


























 

typedef            void        CPU_VOID;
typedef            char        CPU_CHAR;                         
typedef  unsigned  char        CPU_BOOLEAN;                      
typedef  unsigned  char        CPU_INT08U;                       
typedef    signed  char        CPU_INT08S;                       
typedef  unsigned  short       CPU_INT16U;                       
typedef    signed  short       CPU_INT16S;                       
typedef  unsigned  int         CPU_INT32U;                       
typedef    signed  int         CPU_INT32S;                       
typedef  unsigned  long  long  CPU_INT64U;                       
typedef    signed  long  long  CPU_INT64S;                       

typedef            float       CPU_FP32;                         
typedef            double      CPU_FP64;                         


typedef  volatile  CPU_INT08U  CPU_REG08;                        
typedef  volatile  CPU_INT16U  CPU_REG16;                        
typedef  volatile  CPU_INT32U  CPU_REG32;                        
typedef  volatile  CPU_INT64U  CPU_REG64;                        


typedef            void      (*CPU_FNCT_VOID)(void);             
typedef            void      (*CPU_FNCT_PTR )(void *p_obj);      


 




















 

                                                                 










 

                                                                 

typedef  CPU_INT32U  CPU_ADDR;






                                                                 

typedef  CPU_INT32U  CPU_DATA;







typedef  CPU_DATA    CPU_ALIGN;                                  
typedef  CPU_ADDR    CPU_SIZE_T;                                 













 



typedef  CPU_INT32U             CPU_STK;                         
typedef  CPU_ADDR               CPU_STK_SIZE;                    


 






































































 
 


                                                                 


typedef  CPU_INT32U                 CPU_SR;                      

                                                                 













                                                                         
                                                                         


                                                                         
                                                                         



#line 325 "..\\ucos\\cpu\\cpu.h"


 














 

void        CPU_IntDis       (void);
void        CPU_IntEn        (void);

void        CPU_IntSrcDis    (CPU_INT08U  pos);
void        CPU_IntSrcEn     (CPU_INT08U  pos);
void        CPU_IntSrcPendClr(CPU_INT08U  pos);
CPU_INT16S  CPU_IntSrcPrioGet(CPU_INT08U  pos);
void        CPU_IntSrcPrioSet(CPU_INT08U  pos,
                              CPU_INT08U  prio);


void        CPU_WaitForInt   (void);
void        CPU_WaitForExcept(void);


CPU_SR      CPU_SR_Save      (void);
void        CPU_SR_Restore   (CPU_SR      cpu_sr);





CPU_DATA    CPU_CntLeadZeros (CPU_DATA    val);
CPU_DATA    CPU_RevBits      (CPU_DATA    val);


void        CPU_BitBandClr   (CPU_ADDR    addr,
                              CPU_INT08U  bit_nbr);
void        CPU_BitBandSet   (CPU_ADDR    addr,
                              CPU_INT08U  bit_nbr);


 




 

#line 400 "..\\ucos\\cpu\\cpu.h"





 







#line 419 "..\\ucos\\cpu\\cpu.h"

#line 436 "..\\ucos\\cpu\\cpu.h"

#line 451 "..\\ucos\\cpu\\cpu.h"













 




 

                                                                 






                                                                 



                                                                 
#line 491 "..\\ucos\\cpu\\cpu.h"

                                                                 


                                                                 





                                                                 




                                                                 
#line 513 "..\\ucos\\cpu\\cpu.h"

                                                                 
#line 529 "..\\ucos\\cpu\\cpu.h"

                                                                 
#line 548 "..\\ucos\\cpu\\cpu.h"

                                                                 




                                                                 







 




 




 




 

#line 593 "..\\ucos\\cpu\\cpu.h"


#line 609 "..\\ucos\\cpu\\cpu.h"




#line 624 "..\\ucos\\cpu\\cpu.h"




#line 639 "..\\ucos\\cpu\\cpu.h"




#line 657 "..\\ucos\\cpu\\cpu.h"


 




 



#line 61 "..\\ucos\\core\\os.h"
#line 1 "..\\ucos\\cpu\\cpu_core.h"



















 
















 






 





 

























 








 











































 

#line 132 "..\\ucos\\cpu\\cpu_core.h"
#line 1 "..\\ucos\\lib\\lib_def.h"



















 

























 






 





 

























 
































 

#line 121 "..\\ucos\\lib\\lib_def.h"



 




 




                                                                 

























 


#line 171 "..\\ucos\\lib\\lib_def.h"

#line 180 "..\\ucos\\lib\\lib_def.h"

#line 189 "..\\ucos\\lib\\lib_def.h"

#line 198 "..\\ucos\\lib\\lib_def.h"
 
#line 207 "..\\ucos\\lib\\lib_def.h"

#line 216 "..\\ucos\\lib\\lib_def.h"

#line 225 "..\\ucos\\lib\\lib_def.h"

#line 234 "..\\ucos\\lib\\lib_def.h"


                                                                 












                                                                 






 
                                                                 
















































































 
                                                                 



#line 376 "..\\ucos\\lib\\lib_def.h"















#line 413 "..\\ucos\\lib\\lib_def.h"



 
                                                                 















#line 439 "..\\ucos\\lib\\lib_def.h"






 







 




 




 





 

typedef  CPU_INT16U  LIB_ERR;






 


 




 



























 

























 










 



















 























 










 





























 


























 

















 
















 




















 




 




















 

























 





 




















 






















 




 







































 




                                            

 







































 




                                                

 














































 





 










 

















 


















 




 














 




 




 






 






 



#line 133 "..\\ucos\\cpu\\cpu_core.h"
#line 134 "..\\ucos\\cpu\\cpu_core.h"







 














 






#line 169 "..\\ucos\\cpu\\cpu_core.h"

#line 176 "..\\ucos\\cpu\\cpu_core.h"






 









 









 




 





 

typedef  CPU_INT16U  CPU_ERR;









 

typedef  CPU_INT32U  CPU_TS32;
typedef  CPU_INT64U  CPU_TS64;

typedef  CPU_TS32    CPU_TS;                                     


#line 241 "..\\ucos\\cpu\\cpu_core.h"
typedef  CPU_INT32U  CPU_TS_TMR;








 

typedef  CPU_INT32U  CPU_TS_TMR_FREQ;






 



















extern  CPU_TS_TMR_FREQ  CPU_TS_TmrFreq_Hz;                




extern  CPU_INT16U       CPU_IntDisMeasCtr;                
extern  CPU_INT16U       CPU_IntDisNestCtr;                
                                                                 
extern  CPU_TS_TMR       CPU_IntDisMeasStart_cnts;         
extern  CPU_TS_TMR       CPU_IntDisMeasStop_cnts;          
extern  CPU_TS_TMR       CPU_IntDisMeasOvrhd_cnts;         
extern  CPU_TS_TMR       CPU_IntDisMeasMaxCur_cnts;        
extern  CPU_TS_TMR       CPU_IntDisMeasMax_cnts;           



 




 













































































































 








 






































 

#line 467 "..\\ucos\\cpu\\cpu_core.h"

#line 474 "..\\ucos\\cpu\\cpu_core.h"


#line 489 "..\\ucos\\cpu\\cpu_core.h"


 















 

void             CPU_Init                 (void);

void             CPU_SW_Exception         (void);



#line 524 "..\\ucos\\cpu\\cpu_core.h"



                                                                         

CPU_TS32         CPU_TS_Get32             (void);







void             CPU_TS_Update            (void);




CPU_TS_TMR_FREQ  CPU_TS_TmrFreqGet        (CPU_ERR          *p_err);

void             CPU_TS_TmrFreqSet        (CPU_TS_TMR_FREQ   freq_hz);





                                                                         
CPU_TS_TMR       CPU_IntDisMeasMaxCurReset(void);

CPU_TS_TMR       CPU_IntDisMeasMaxCurGet  (void);

CPU_TS_TMR       CPU_IntDisMeasMaxGet     (void);


void             CPU_IntDisMeasStart      (void);

void             CPU_IntDisMeasStop       (void);









 





 



















































 


void  CPU_TS_TmrInit(void);



 
















































































 


CPU_TS_TMR  CPU_TS_TmrRd(void);



 






















































 


CPU_INT64U  CPU_TS32_to_uSec(CPU_TS32  ts_cnts);







 




 

#line 824 "..\\ucos\\cpu\\cpu_core.h"




#line 840 "..\\ucos\\cpu\\cpu_core.h"


#line 854 "..\\ucos\\cpu\\cpu_core.h"

                                                                 
#line 868 "..\\ucos\\cpu\\cpu_core.h"


 
                                                                 
#line 885 "..\\ucos\\cpu\\cpu_core.h"

#line 903 "..\\ucos\\cpu\\cpu_core.h"





#line 914 "..\\ucos\\cpu\\cpu_core.h"

#line 928 "..\\ucos\\cpu\\cpu_core.h"

















 

                                                                 





 




 



#line 62 "..\\ucos\\core\\os.h"
#line 63 "..\\ucos\\core\\os.h"
#line 1 "..\\ucos\\core\\os_type.h"

























 








 

                                                        
                                                        
                                                        
                                                       
typedef   CPU_INT08U      OS_CPU_USAGE;                 

typedef   CPU_INT32U      OS_CTR;                       

typedef   CPU_INT32U      OS_CTX_SW_CTR;                

typedef   CPU_INT64U      OS_CYCLES;                    

typedef   CPU_INT32U      OS_FLAGS;                     

typedef   CPU_INT32U      OS_IDLE_CTR;                  

typedef   CPU_INT16U      OS_MEM_QTY;                   
typedef   CPU_INT16U      OS_MEM_SIZE;                  

typedef   CPU_INT16U      OS_MSG_QTY;                   
typedef   CPU_INT16U      OS_MSG_SIZE;                  

typedef   CPU_INT08U      OS_NESTING_CTR;               

typedef   CPU_INT16U      OS_OBJ_QTY;                   
typedef   CPU_INT32U      OS_OBJ_TYPE;                  

typedef   CPU_INT16U      OS_OPT;                       

typedef   CPU_INT08U      OS_PRIO;                      

typedef   CPU_INT16U      OS_QTY;                       

typedef   CPU_INT32U      OS_RATE_HZ;                   

typedef   CPU_INT32U      OS_REG;                       
typedef   CPU_INT08U      OS_REG_ID;                    

typedef   CPU_INT32U      OS_SEM_CTR;                   

typedef   CPU_INT08U      OS_STATE;                     

typedef   CPU_INT08U      OS_STATUS;                    

typedef   CPU_INT32U      OS_TICK;                      
typedef   CPU_INT16U      OS_TICK_SPOKE_IX;             

typedef   CPU_INT32U      OS_TMR_TICK;                  
typedef   CPU_INT16U      OS_TMR_SPOKE_IX;              

#line 64 "..\\ucos\\core\\os.h"
#line 1 "..\\ucos\\port\\os_cpu.h"































 














 





























 



































 







 

extern  CPU_STK  *OS_CPU_ExceptStkBase;





 

void  OSStartHighRdy       (void);
void  OS_CPU_PendSVHandler (void);



#line 65 "..\\ucos\\core\\os.h"






 
















                                                                  
#line 98 "..\\ucos\\core\\os.h"
                                                                  
#line 108 "..\\ucos\\core\\os.h"

                                                                  
#line 126 "..\\ucos\\core\\os.h"

#line 136 "..\\ucos\\core\\os.h"


#line 150 "..\\ucos\\core\\os.h"





 












 






 





 








                                                                 

                                                                 

                                                                 

                                                                 
                                                                 

#line 208 "..\\ucos\\core\\os.h"

                                                                 
#line 218 "..\\ucos\\core\\os.h"






 














 

#line 251 "..\\ucos\\core\\os.h"





 







 








 
























 








 


















 










 
























 













 










 
                                                                     






 
                                                                     


                                                                     



 






 





 

typedef  enum  os_err {
    OS_ERR_NONE                      =     0u,

    OS_ERR_A                         = 10000u,
    OS_ERR_ACCEPT_ISR                = 10001u,

    OS_ERR_B                         = 11000u,

    OS_ERR_C                         = 12000u,
    OS_ERR_CREATE_ISR                = 12001u,

    OS_ERR_D                         = 13000u,
    OS_ERR_DEL_ISR                   = 13001u,

    OS_ERR_E                         = 14000u,

    OS_ERR_F                         = 15000u,
    OS_ERR_FATAL_RETURN              = 15001u,

    OS_ERR_FLAG_GRP_DEPLETED         = 15101u,
    OS_ERR_FLAG_NOT_RDY              = 15102u,
    OS_ERR_FLAG_PEND_OPT             = 15103u,
    OS_ERR_FLUSH_ISR                 = 15104u,

    OS_ERR_G                         = 16000u,

    OS_ERR_H                         = 17000u,

    OS_ERR_I                         = 18000u,
    OS_ERR_ILLEGAL_CREATE_RUN_TIME   = 18001u,
    OS_ERR_INT_Q                     = 18002u,
    OS_ERR_INT_Q_FULL                = 18003u,
    OS_ERR_INT_Q_SIZE                = 18004u,

    OS_ERR_J                         = 19000u,

    OS_ERR_K                         = 20000u,

    OS_ERR_L                         = 21000u,
    OS_ERR_LOCK_NESTING_OVF          = 21001u,

    OS_ERR_M                         = 22000u,

    OS_ERR_MEM_CREATE_ISR            = 22201u,
    OS_ERR_MEM_FULL                  = 22202u,
    OS_ERR_MEM_INVALID_P_ADDR        = 22203u,
    OS_ERR_MEM_INVALID_BLKS          = 22204u,
    OS_ERR_MEM_INVALID_PART          = 22205u,
    OS_ERR_MEM_INVALID_P_BLK         = 22206u,
    OS_ERR_MEM_INVALID_P_MEM         = 22207u,
    OS_ERR_MEM_INVALID_P_DATA        = 22208u,
    OS_ERR_MEM_INVALID_SIZE          = 22209u,
    OS_ERR_MEM_NO_FREE_BLKS          = 22210u,

    OS_ERR_MSG_POOL_EMPTY            = 22301u,
    OS_ERR_MSG_POOL_NULL_PTR         = 22302u,

    OS_ERR_MUTEX_NOT_OWNER           = 22401u,
    OS_ERR_MUTEX_OWNER               = 22402u,
    OS_ERR_MUTEX_NESTING             = 22403u,

    OS_ERR_N                         = 23000u,
    OS_ERR_NAME                      = 23001u,

    OS_ERR_O                         = 24000u,
    OS_ERR_OBJ_CREATED               = 24001u,
    OS_ERR_OBJ_DEL                   = 24002u,
    OS_ERR_OBJ_PTR_NULL              = 24003u,
    OS_ERR_OBJ_TYPE                  = 24004u,

    OS_ERR_OPT_INVALID               = 24101u,

    OS_ERR_OS_NOT_RUNNING            = 24201u,
    OS_ERR_OS_RUNNING                = 24202u,

    OS_ERR_P                         = 25000u,
    OS_ERR_PEND_ABORT                = 25001u,
    OS_ERR_PEND_ABORT_ISR            = 25002u,
    OS_ERR_PEND_ABORT_NONE           = 25003u,
    OS_ERR_PEND_ABORT_SELF           = 25004u,
    OS_ERR_PEND_DEL                  = 25005u,
    OS_ERR_PEND_ISR                  = 25006u,
    OS_ERR_PEND_LOCKED               = 25007u,
    OS_ERR_PEND_WOULD_BLOCK          = 25008u,

    OS_ERR_POST_NULL_PTR             = 25101u,
    OS_ERR_POST_ISR                  = 25102u,

    OS_ERR_PRIO_EXIST                = 25201u,
    OS_ERR_PRIO                      = 25202u,
    OS_ERR_PRIO_INVALID              = 25203u,

    OS_ERR_PTR_INVALID               = 25301u,

    OS_ERR_Q                         = 26000u,
    OS_ERR_Q_FULL                    = 26001u,
    OS_ERR_Q_EMPTY                   = 26002u,
    OS_ERR_Q_MAX                     = 26003u,
    OS_ERR_Q_SIZE                    = 26004u,

    OS_ERR_R                         = 27000u,
    OS_ERR_REG_ID_INVALID            = 27001u,
    OS_ERR_ROUND_ROBIN_1             = 27002u,
    OS_ERR_ROUND_ROBIN_DISABLED      = 27003u,

    OS_ERR_S                         = 28000u,
    OS_ERR_SCHED_INVALID_TIME_SLICE  = 28001u,
    OS_ERR_SCHED_LOCK_ISR            = 28002u,
    OS_ERR_SCHED_LOCKED              = 28003u,
    OS_ERR_SCHED_NOT_LOCKED          = 28004u,
    OS_ERR_SCHED_UNLOCK_ISR          = 28005u,

    OS_ERR_SEM_OVF                   = 28101u,
    OS_ERR_SET_ISR                   = 28102u,

    OS_ERR_STAT_RESET_ISR            = 28201u,
    OS_ERR_STATE_INVALID             = 28202u,
    OS_ERR_STATUS_INVALID            = 28203u,
    OS_ERR_STK_INVALID               = 28204u,
    OS_ERR_STK_SIZE_INVALID          = 28205u,
    OS_ERR_STK_LIMIT_INVALID         = 28206u,

    OS_ERR_T                         = 29000u,
    OS_ERR_TASK_CHANGE_PRIO_ISR      = 29001u,
    OS_ERR_TASK_CREATE_ISR           = 29002u,
    OS_ERR_TASK_DEL                  = 29003u,
    OS_ERR_TASK_DEL_IDLE             = 29004u,
    OS_ERR_TASK_DEL_INVALID          = 29005u,
    OS_ERR_TASK_DEL_ISR              = 29006u,
    OS_ERR_TASK_INVALID              = 29007u,
    OS_ERR_TASK_NO_MORE_TCB          = 29008u,
    OS_ERR_TASK_NOT_DLY              = 29009u,
    OS_ERR_TASK_NOT_EXIST            = 29010u,
    OS_ERR_TASK_NOT_SUSPENDED        = 29011u,
    OS_ERR_TASK_OPT                  = 29012u,
    OS_ERR_TASK_RESUME_ISR           = 29013u,
    OS_ERR_TASK_RESUME_PRIO          = 29014u,
    OS_ERR_TASK_RESUME_SELF          = 29015u,
    OS_ERR_TASK_STK_CHK_ISR          = 29016u,
    OS_ERR_TASK_SUSPENDED            = 29017u,
    OS_ERR_TASK_SUSPEND_IDLE         = 29018u,
    OS_ERR_TASK_SUSPEND_INT_HANDLER  = 29019u,
    OS_ERR_TASK_SUSPEND_ISR          = 29020u,
    OS_ERR_TASK_SUSPEND_PRIO         = 29021u,
    OS_ERR_TASK_WAITING              = 29022u,

    OS_ERR_TCB_INVALID               = 29101u,

    OS_ERR_TICK_WHEEL_SIZE           = 29201u,

    OS_ERR_TIME_DLY_ISR              = 29301u,
    OS_ERR_TIME_DLY_RESUME_ISR       = 29302u,
    OS_ERR_TIME_GET_ISR              = 29303u,
    OS_ERR_TIME_INVALID_HOURS        = 29304u,
    OS_ERR_TIME_INVALID_MINUTES      = 29305u,
    OS_ERR_TIME_INVALID_SECONDS      = 29306u,
    OS_ERR_TIME_INVALID_MILLISECONDS = 29307u,
    OS_ERR_TIME_NOT_DLY              = 29308u,
    OS_ERR_TIME_SET_ISR              = 29309u,
    OS_ERR_TIME_ZERO_DLY             = 29310u,

    OS_ERR_TIMEOUT                   = 29401u,

    OS_ERR_TMR_INACTIVE              = 29501u,
    OS_ERR_TMR_INVALID_DEST          = 29502u,
    OS_ERR_TMR_INVALID_DLY           = 29503u,
    OS_ERR_TMR_INVALID_PERIOD        = 29504u,
    OS_ERR_TMR_INVALID_STATE         = 29505u,
    OS_ERR_TMR_INVALID               = 29506u,
    OS_ERR_TMR_ISR                   = 29507u,
    OS_ERR_TMR_NO_CALLBACK           = 29508u,
    OS_ERR_TMR_NON_AVAIL             = 29509u,
    OS_ERR_TMR_STK_INVALID           = 29510u,
    OS_ERR_TMR_STOPPED               = 29511u,

    OS_ERR_U                         = 30000u,

    OS_ERR_V                         = 31000u,

    OS_ERR_W                         = 32000u,

    OS_ERR_X                         = 33000u,

    OS_ERR_Y                         = 34000u,
    OS_ERR_YIELD_ISR                 = 34001u,

    OS_ERR_Z                         = 35000u
} OS_ERR;


 






 

typedef  struct  os_flag_grp         OS_FLAG_GRP;

typedef  struct  os_mem              OS_MEM;

typedef  struct  os_msg              OS_MSG;
typedef  struct  os_msg_pool         OS_MSG_POOL;
typedef  struct  os_msg_q            OS_MSG_Q;

typedef  struct  os_mutex            OS_MUTEX;

typedef  struct  os_int_q            OS_INT_Q;

typedef  struct  os_q                OS_Q;

typedef  struct  os_sem              OS_SEM;


typedef  void                      (*OS_TASK_PTR)(void *p_arg);

typedef  struct  os_tcb              OS_TCB;

typedef  struct  os_rdy_list         OS_RDY_LIST;

typedef  struct  os_tick_spoke       OS_TICK_SPOKE;

typedef  void                      (*OS_TMR_CALLBACK_PTR)(void *p_tmr, void *p_arg);
typedef  struct  os_tmr              OS_TMR;
typedef  struct  os_tmr_spoke        OS_TMR_SPOKE;


typedef  struct  os_pend_data        OS_PEND_DATA;
typedef  struct  os_pend_list        OS_PEND_LIST;
typedef  struct  os_pend_obj         OS_PEND_OBJ;


typedef  void                      (*OS_APP_HOOK_VOID)(void);
typedef  void                      (*OS_APP_HOOK_TCB)(OS_TCB *p_tcb);


 






 





 


struct  os_int_q {
    OS_OBJ_TYPE          Type;                               
    OS_INT_Q            *NextPtr;                            
    void                *ObjPtr;                             
    void                *MsgPtr;                             
    OS_MSG_SIZE          MsgSize;                            
    OS_FLAGS             Flags;                              
    OS_OPT               Opt;                                
    CPU_TS               TS;                                 
};






 

struct  os_rdy_list {
    OS_TCB              *HeadPtr;                            
    OS_TCB              *TailPtr;                            
    OS_OBJ_QTY           NbrEntries;                         
};






 

struct  os_pend_data {
    OS_PEND_DATA        *PrevPtr;
    OS_PEND_DATA        *NextPtr;
    OS_TCB              *TCBPtr;
    OS_PEND_OBJ         *PendObjPtr;
    OS_PEND_OBJ         *RdyObjPtr;
    void                *RdyMsgPtr;
    OS_MSG_SIZE          RdyMsgSize;
    CPU_TS               RdyTS;
};



struct  os_pend_list {
    OS_PEND_DATA        *HeadPtr;
    OS_PEND_DATA        *TailPtr;
    OS_OBJ_QTY           NbrEntries;
};



struct  os_pend_obj {
    OS_OBJ_TYPE          Type;
    CPU_CHAR            *NamePtr;
    OS_PEND_LIST         PendList;                           

    void                *DbgPrevPtr;
    void                *DbgNextPtr;
    CPU_CHAR            *DbgNamePtr;

};





 


struct  os_flag_grp {                                        
    OS_OBJ_TYPE          Type;                               
    CPU_CHAR            *NamePtr;                            
    OS_PEND_LIST         PendList;                           

    OS_FLAG_GRP         *DbgPrevPtr;
    OS_FLAG_GRP         *DbgNextPtr;
    CPU_CHAR            *DbgNamePtr;

    OS_FLAGS             Flags;                              
    CPU_TS               TS;                                 
};

 




 


struct os_mem {                                              
    OS_OBJ_TYPE          Type;                               
    void                *AddrPtr;                            
    CPU_CHAR            *NamePtr;
    void                *FreeListPtr;                        
    OS_MEM_SIZE          BlkSize;                            
    OS_MEM_QTY           NbrMax;                             
    OS_MEM_QTY           NbrFree;                            

    OS_MEM              *DbgPrevPtr;
    OS_MEM              *DbgNextPtr;

};

 




 

struct  os_msg {                                             
    OS_MSG              *NextPtr;                            
    void                *MsgPtr;                             
    OS_MSG_SIZE          MsgSize;                            
    CPU_TS               MsgTS;                              
};




struct  os_msg_pool {                                        
    OS_MSG              *NextPtr;                            
    OS_MSG_QTY           NbrFree;                            
    OS_MSG_QTY           NbrUsed;                            
};



struct  os_msg_q {                                           
    OS_MSG              *InPtr;                              
    OS_MSG              *OutPtr;                             
    OS_MSG_QTY           NbrEntriesSize;                     
    OS_MSG_QTY           NbrEntries;                         
    OS_MSG_QTY           NbrEntriesMax;                      
};

 




 

struct  os_mutex {
    OS_OBJ_TYPE          Type;                               
    CPU_CHAR            *NamePtr;                            
    OS_PEND_LIST         PendList;                           

    OS_MUTEX            *DbgPrevPtr;
    OS_MUTEX            *DbgNextPtr;
    CPU_CHAR            *DbgNamePtr;

    OS_TCB              *OwnerTCBPtr;                        
    OS_PRIO              OwnerOriginalPrio;
    OS_NESTING_CTR       OwnerNestingCtr;                    
    CPU_TS               TS;
};

 




 

struct  os_q {
    OS_OBJ_TYPE          Type;                               
    CPU_CHAR            *NamePtr;                            
    OS_PEND_LIST         PendList;                           

    OS_Q                *DbgPrevPtr;
    OS_Q                *DbgNextPtr;
    CPU_CHAR            *DbgNamePtr;

    OS_MSG_Q             MsgQ;                               
};

 




 

struct  os_sem {
    OS_OBJ_TYPE          Type;                               
    CPU_CHAR            *NamePtr;                            
    OS_PEND_LIST         PendList;                           

    OS_SEM              *DbgPrevPtr;
    OS_SEM              *DbgNextPtr;
    CPU_CHAR            *DbgNamePtr;

    OS_SEM_CTR           Ctr;                                
    CPU_TS               TS;
};

 




 

struct os_tcb {
    CPU_STK             *StkPtr;                             

    void                *ExtPtr;                             

    CPU_STK             *StkLimitPtr;                        

    OS_TCB              *NextPtr;                            
    OS_TCB              *PrevPtr;                            

    OS_TCB              *TickNextPtr;
    OS_TCB              *TickPrevPtr;

    OS_TICK_SPOKE       *TickSpokePtr;                       

    CPU_CHAR            *NamePtr;                            

    CPU_STK             *StkBasePtr;                         

    OS_TASK_PTR          TaskEntryAddr;                      
    void                *TaskEntryArg;                       

    OS_PEND_DATA        *PendDataTblPtr;                     
    OS_STATE             PendOn;                             
    OS_STATUS            PendStatus;                         

    OS_STATE             TaskState;                          
    OS_PRIO              Prio;                               
    CPU_STK_SIZE         StkSize;                            
    OS_OPT               Opt;                                

    OS_OBJ_QTY           PendDataTblEntries;                 

    CPU_TS               TS;                                 

    OS_SEM_CTR           SemCtr;                             

                                                             
    OS_TICK              TickCtrPrev;                        
    OS_TICK              TickCtrMatch;                       
    OS_TICK              TickRemain;                         
                                                             
    OS_TICK              TimeQuanta;
    OS_TICK              TimeQuantaCtr;


    void                *MsgPtr;                             
    OS_MSG_SIZE          MsgSize;


#line 935 "..\\ucos\\core\\os.h"






    OS_FLAGS             FlagsPend;                          
    OS_FLAGS             FlagsRdy;                           
    OS_OPT               FlagsOpt;                           






#line 961 "..\\ucos\\core\\os.h"







    CPU_TS               IntDisTimeMax;                      


    CPU_TS               SchedLockTimeMax;                   



    OS_TCB              *DbgPrevPtr;
    OS_TCB              *DbgNextPtr;
    CPU_CHAR            *DbgNamePtr;

};

 




 

struct  os_tick_spoke {
    OS_TCB              *FirstPtr;                           
    OS_OBJ_QTY           NbrEntries;                         
    OS_OBJ_QTY           NbrEntriesMax;                      
};






 

struct  os_tmr {
    OS_OBJ_TYPE          Type;
    CPU_CHAR            *NamePtr;                            
    OS_TMR_CALLBACK_PTR  CallbackPtr;                        
    void                *CallbackPtrArg;                     
    OS_TMR              *NextPtr;                            
    OS_TMR              *PrevPtr;
    OS_TICK              Match;                              
    OS_TICK              Remain;                             
    OS_TICK              Dly;                                
    OS_TICK              Period;                             
    OS_OPT               Opt;                                
    OS_STATE             State;

    OS_TMR              *DbgPrevPtr;
    OS_TMR              *DbgNextPtr;

};



struct  os_tmr_spoke {
    OS_TMR              *FirstPtr;                           
    OS_OBJ_QTY           NbrEntries;
    OS_OBJ_QTY           NbrEntriesMax;
};

 






 


extern           OS_APP_HOOK_TCB         OS_AppTaskCreateHookPtr;      
extern           OS_APP_HOOK_TCB         OS_AppTaskDelHookPtr;
extern           OS_APP_HOOK_TCB         OS_AppTaskReturnHookPtr;

extern           OS_APP_HOOK_VOID        OS_AppIdleTaskHookPtr;
extern           OS_APP_HOOK_VOID        OS_AppStatTaskHookPtr;
extern           OS_APP_HOOK_VOID        OS_AppTaskSwHookPtr;
extern           OS_APP_HOOK_VOID        OS_AppTimeTickHookPtr;


                                                                       
extern            OS_IDLE_CTR            OSIdleTaskCtr;
extern            OS_TCB                 OSIdleTaskTCB;

                                                                       
extern            OS_NESTING_CTR         OSIntNestingCtr;              

extern            CPU_TS                 OSIntDisTimeMax;              


extern            OS_STATE               OSRunning;                    


                                                                       

extern            OS_INT_Q              *OSIntQInPtr;
extern            OS_INT_Q              *OSIntQOutPtr;
extern            OS_OBJ_QTY             OSIntQNbrEntries;
extern            OS_OBJ_QTY             OSIntQMaxNbrEntries;
extern            OS_OBJ_QTY             OSIntQOvfCtr;
extern            OS_TCB                 OSIntQTaskTCB;
extern            CPU_TS                 OSIntQTaskTimeMax;


                                                                       


extern            OS_FLAG_GRP           *OSFlagDbgListPtr;

extern            OS_OBJ_QTY             OSFlagQty;


                                                                       


extern            OS_MEM                *OSMemDbgListPtr;

extern            OS_OBJ_QTY             OSMemQty;                     


                                                                       
extern            OS_MSG_POOL            OSMsgPool;                    

                                                                       


extern            OS_MUTEX              *OSMutexDbgListPtr;

extern            OS_OBJ_QTY             OSMutexQty;                   


                                                                       
extern            OS_PRIO                OSPrioCur;                    
extern            OS_PRIO                OSPrioHighRdy;                
extern            OS_PRIO                OSPrioSaved;                  
extern            CPU_DATA               OSPrioTbl[(((64u - 1u) / (4u * 8u)) + 1u)];

                                                                       


extern            OS_Q                  *OSQDbgListPtr;

extern            OS_OBJ_QTY             OSQQty;                       




                                                                       
extern            OS_RDY_LIST            OSRdyList[64u];   





                                                                       

extern            CPU_TS_TMR             OSSchedLockTimeBegin;         
extern            CPU_TS_TMR             OSSchedLockTimeMax;
extern            CPU_TS_TMR             OSSchedLockTimeMaxCur;


extern            OS_NESTING_CTR         OSSchedLockNestingCtr;        

extern            OS_TICK                OSSchedRoundRobinDfltTimeQuanta;
extern            CPU_BOOLEAN            OSSchedRoundRobinEn;          

                                                                       


extern            OS_SEM                *OSSemDbgListPtr;

extern            OS_OBJ_QTY             OSSemQty;                     


                                                                       
#line 1153 "..\\ucos\\core\\os.h"

                                                                       
extern            OS_CTX_SW_CTR          OSTaskCtxSwCtr;               

extern            OS_TCB                *OSTaskDbgListPtr;

extern            OS_OBJ_QTY             OSTaskQty;                    


                                                                       
extern            OS_TICK                OSTickCtr;                    
extern            OS_TCB                 OSTickTaskTCB;
extern            CPU_TS                 OSTickTaskTimeMax;




extern            OS_TMR                *OSTmrDbgListPtr;

extern            OS_OBJ_QTY             OSTmrQty;                     
extern            OS_TCB                 OSTmrTaskTCB;                 
extern            CPU_TS                 OSTmrTaskTimeMax;
extern            OS_TICK                OSTmrTickCtr;                 
extern            OS_CTR                 OSTmrUpdateCnt;               
extern            OS_CTR                 OSTmrUpdateCtr;


                                                                       
extern            OS_TCB                *OSTCBCurPtr;                  
extern            OS_TCB                *OSTCBHighRdyPtr;              

 






 

extern  CPU_STK     * const OSCfg_IdleTaskStkBasePtr;
extern  CPU_STK_SIZE  const OSCfg_IdleTaskStkLimit;
extern  CPU_STK_SIZE  const OSCfg_IdleTaskStkSize;
extern  CPU_INT32U    const OSCfg_IdleTaskStkSizeRAM;

extern  OS_INT_Q    * const OSCfg_IntQBasePtr;
extern  OS_OBJ_QTY    const OSCfg_IntQSize;
extern  CPU_INT32U    const OSCfg_IntQSizeRAM;
extern  CPU_STK     * const OSCfg_IntQTaskStkBasePtr;
extern  CPU_STK_SIZE  const OSCfg_IntQTaskStkLimit;
extern  CPU_STK_SIZE  const OSCfg_IntQTaskStkSize;
extern  CPU_INT32U    const OSCfg_IntQTaskStkSizeRAM;

extern  CPU_STK     * const OSCfg_ISRStkBasePtr;
extern  CPU_STK_SIZE  const OSCfg_ISRStkSize;
extern  CPU_INT32U    const OSCfg_ISRStkSizeRAM;

extern  OS_MSG_SIZE   const OSCfg_MsgPoolSize;
extern  CPU_INT32U    const OSCfg_MsgPoolSizeRAM;
extern  OS_MSG      * const OSCfg_MsgPoolBasePtr;

extern  OS_PRIO       const OSCfg_StatTaskPrio;
extern  OS_RATE_HZ    const OSCfg_StatTaskRate_Hz;
extern  CPU_STK     * const OSCfg_StatTaskStkBasePtr;
extern  CPU_STK_SIZE  const OSCfg_StatTaskStkLimit;
extern  CPU_STK_SIZE  const OSCfg_StatTaskStkSize;
extern  CPU_INT32U    const OSCfg_StatTaskStkSizeRAM;

extern  CPU_STK_SIZE  const OSCfg_StkSizeMin;

extern  OS_RATE_HZ    const OSCfg_TickRate_Hz;
extern  OS_PRIO       const OSCfg_TickTaskPrio;
extern  CPU_STK     * const OSCfg_TickTaskStkBasePtr;
extern  CPU_STK_SIZE  const OSCfg_TickTaskStkLimit;
extern  CPU_STK_SIZE  const OSCfg_TickTaskStkSize;
extern  CPU_INT32U    const OSCfg_TickTaskStkSizeRAM;
extern  OS_OBJ_QTY    const OSCfg_TickWheelSize;
extern  CPU_INT32U    const OSCfg_TickWheelSizeRAM;

extern  OS_PRIO       const OSCfg_TmrTaskPrio;
extern  OS_RATE_HZ    const OSCfg_TmrTaskRate_Hz;
extern  CPU_STK     * const OSCfg_TmrTaskStkBasePtr;
extern  CPU_STK_SIZE  const OSCfg_TmrTaskStkLimit;
extern  CPU_STK_SIZE  const OSCfg_TmrTaskStkSize;
extern  CPU_INT32U    const OSCfg_TmrTaskStkSizeRAM;
extern  OS_OBJ_QTY    const OSCfg_TmrWheelSize;
extern  CPU_INT32U    const OSCfg_TmrSizeRAM;


extern  CPU_STK        OSCfg_IdleTaskStk[];


extern  CPU_STK        OSCfg_IntQTaskStk[];
extern  OS_INT_Q       OSCfg_IntQ[];


extern  CPU_STK        OSCfg_ISRStk[];


extern  OS_MSG         OSCfg_MsgPool[];






extern  CPU_STK        OSCfg_TickTaskStk[];
extern  OS_TICK_SPOKE  OSCfg_TickWheel[];


extern  CPU_STK        OSCfg_TmrTaskStk[];
extern  OS_TMR_SPOKE   OSCfg_TmrWheel[];








 

 
 
 



void          OSFlagCreate              (OS_FLAG_GRP           *p_grp,
                                         CPU_CHAR              *p_name,
                                         OS_FLAGS               flags,
                                         OS_ERR                *p_err);


OS_OBJ_QTY    OSFlagDel                 (OS_FLAG_GRP           *p_grp,
                                         OS_OPT                 opt,
                                         OS_ERR                *p_err);


OS_FLAGS      OSFlagPend                (OS_FLAG_GRP           *p_grp,
                                         OS_FLAGS               flags,
                                         OS_TICK                timeout,
                                         OS_OPT                 opt,
                                         CPU_TS                *p_ts,
                                         OS_ERR                *p_err);


OS_OBJ_QTY    OSFlagPendAbort           (OS_FLAG_GRP           *p_grp,
                                         OS_OPT                 opt,
                                         OS_ERR                *p_err);


OS_FLAGS      OSFlagPendGetFlagsRdy     (OS_ERR                *p_err);

OS_FLAGS      OSFlagPost                (OS_FLAG_GRP           *p_grp,
                                         OS_FLAGS               flags,
                                         OS_OPT                 opt,
                                         OS_ERR                *p_err);

 

void          OS_FlagClr                (OS_FLAG_GRP           *p_grp);

void          OS_FlagBlock              (OS_PEND_DATA          *p_pend_data,
                                         OS_FLAG_GRP           *p_grp,
                                         OS_FLAGS               flags,
                                         OS_OPT                 opt,
                                         OS_TICK                timeout);


void          OS_FlagDbgListAdd         (OS_FLAG_GRP           *p_grp);

void          OS_FlagDbgListRemove      (OS_FLAG_GRP           *p_grp);


void          OS_FlagInit               (OS_ERR                *p_err);

OS_FLAGS      OS_FlagPost               (OS_FLAG_GRP           *p_grp,
                                         OS_FLAGS               flags,
                                         OS_OPT                 opt,
                                         CPU_TS                 ts,
                                         OS_ERR                *p_err);

void          OS_FlagTaskRdy            (OS_TCB                *p_tcb,
                                         OS_FLAGS               flags_rdy,
                                         CPU_TS                 ts);


 
 
 
 



void          OSMemCreate               (OS_MEM                *p_mem,
                                         CPU_CHAR              *p_name,
                                         void                  *p_addr,
                                         OS_MEM_QTY             n_blks,
                                         OS_MEM_SIZE            blk_size,
                                         OS_ERR                *p_err);

void         *OSMemGet                  (OS_MEM                *p_mem,
                                         OS_ERR                *p_err);

void          OSMemPut                  (OS_MEM                *p_mem,
                                         void                  *p_blk,
                                         OS_ERR                *p_err);

 


void          OS_MemDbgListAdd          (OS_MEM                *p_mem);


void          OS_MemInit                (OS_ERR                *p_err);



 
 
 
 



void          OSMutexCreate             (OS_MUTEX              *p_mutex,
                                         CPU_CHAR              *p_name,
                                         OS_ERR                *p_err);


OS_OBJ_QTY    OSMutexDel                (OS_MUTEX              *p_mutex,
                                         OS_OPT                 opt,
                                         OS_ERR                *p_err);


void          OSMutexPend               (OS_MUTEX              *p_mutex,
                                         OS_TICK                timeout,
                                         OS_OPT                 opt,
                                         CPU_TS                *p_ts,
                                         OS_ERR                *p_err);


OS_OBJ_QTY    OSMutexPendAbort          (OS_MUTEX              *p_mutex,
                                         OS_OPT                 opt,
                                         OS_ERR                *p_err);


void          OSMutexPost               (OS_MUTEX              *p_mutex,
                                         OS_OPT                 opt,
                                         OS_ERR                *p_err);


 

void          OS_MutexClr               (OS_MUTEX              *p_mutex);


void          OS_MutexDbgListAdd        (OS_MUTEX              *p_mutex);

void          OS_MutexDbgListRemove     (OS_MUTEX              *p_mutex);


void          OS_MutexInit              (OS_ERR                *p_err);


 
 
 
 



OS_OBJ_QTY    OSPendMulti               (OS_PEND_DATA          *p_pend_data_tbl,
                                         OS_OBJ_QTY             tbl_size,
                                         OS_TICK                timeout,
                                         OS_OPT                 opt,
                                         OS_ERR                *p_err);

 

OS_OBJ_QTY    OS_PendMultiGetRdy        (OS_PEND_DATA          *p_pend_data_tbl,
                                         OS_OBJ_QTY             tbl_size);

CPU_BOOLEAN   OS_PendMultiValidate      (OS_PEND_DATA          *p_pend_data_tbl,
                                         OS_OBJ_QTY             tbl_size);

void          OS_PendMultiWait          (OS_PEND_DATA          *p_pend_data_tbl,
                                         OS_OBJ_QTY             tbl_size,
                                         OS_TICK                timeout);


 
 
 



void          OSQCreate                 (OS_Q                  *p_q,
                                         CPU_CHAR              *p_name,
                                         OS_MSG_QTY             max_qty,
                                         OS_ERR                *p_err);


OS_OBJ_QTY    OSQDel                    (OS_Q                  *p_q,
                                         OS_OPT                 opt,
                                         OS_ERR                *p_err);



OS_MSG_QTY    OSQFlush                  (OS_Q                  *p_q,
                                         OS_ERR                *p_err);


void         *OSQPend                   (OS_Q                  *p_q,
                                         OS_TICK                timeout,
                                         OS_OPT                 opt,
                                         OS_MSG_SIZE           *p_msg_size,
                                         CPU_TS                *p_ts,
                                         OS_ERR                *p_err);


OS_OBJ_QTY    OSQPendAbort              (OS_Q                  *p_q,
                                         OS_OPT                 opt,
                                         OS_ERR                *p_err);


void          OSQPost                   (OS_Q                  *p_q,
                                         void                  *p_void,
                                         OS_MSG_SIZE            msg_size,
                                         OS_OPT                 opt,
                                         OS_ERR                *p_err);

 

void          OS_QClr                   (OS_Q                  *p_q);


void          OS_QDbgListAdd            (OS_Q                  *p_q);

void          OS_QDbgListRemove         (OS_Q                  *p_q);


void          OS_QInit                  (OS_ERR                *p_err);

void          OS_QPost                  (OS_Q                  *p_q,
                                         void                  *p_void,
                                         OS_MSG_SIZE            msg_size,
                                         OS_OPT                 opt,
                                         CPU_TS                 ts,
                                         OS_ERR                *p_err);


 
 
 
 



void          OSSemCreate               (OS_SEM                *p_sem,
                                         CPU_CHAR              *p_name,
                                         OS_SEM_CTR             cnt,
                                         OS_ERR                *p_err);

OS_OBJ_QTY    OSSemDel                  (OS_SEM                *p_sem,
                                         OS_OPT                 opt,
                                         OS_ERR                *p_err);

OS_SEM_CTR    OSSemPend                 (OS_SEM                *p_sem,
                                         OS_TICK                timeout,
                                         OS_OPT                 opt,
                                         CPU_TS                *p_ts,
                                         OS_ERR                *p_err);


OS_OBJ_QTY    OSSemPendAbort            (OS_SEM                *p_sem,
                                         OS_OPT                 opt,
                                         OS_ERR                *p_err);


OS_SEM_CTR    OSSemPost                 (OS_SEM                *p_sem,
                                         OS_OPT                 opt,
                                         OS_ERR                *p_err);


void          OSSemSet                  (OS_SEM                *p_sem,
                                         OS_SEM_CTR             cnt,
                                         OS_ERR                *p_err);


 

void          OS_SemClr                 (OS_SEM                *p_sem);


void          OS_SemDbgListAdd          (OS_SEM                *p_sem);

void          OS_SemDbgListRemove       (OS_SEM                *p_sem);


void          OS_SemInit                (OS_ERR                *p_err);

OS_SEM_CTR    OS_SemPost                (OS_SEM                *p_sem,
                                         OS_OPT                 opt,
                                         CPU_TS                 ts,
                                         OS_ERR                *p_err);


 
 
 
 







void          OSTaskCreate              (OS_TCB                *p_tcb,
                                         CPU_CHAR              *p_name,
                                         OS_TASK_PTR            p_task,
                                         void                  *p_arg,
                                         OS_PRIO                prio,
                                         CPU_STK               *p_stk_base,
                                         CPU_STK_SIZE           stk_limit,
                                         CPU_STK_SIZE           stk_size,
                                         OS_MSG_QTY             q_size,
                                         OS_TICK                time_quanta,
                                         void                  *p_ext,
                                         OS_OPT                 opt,
                                         OS_ERR                *p_err);


void          OSTaskDel                 (OS_TCB                *p_tcb,
                                         OS_ERR                *p_err);


#line 1613 "..\\ucos\\core\\os.h"

#line 1621 "..\\ucos\\core\\os.h"

#line 1632 "..\\ucos\\core\\os.h"

OS_SEM_CTR    OSTaskSemPend             (OS_TICK                timeout,
                                         OS_OPT                 opt,
                                         CPU_TS                *p_ts,
                                         OS_ERR                *p_err);







OS_SEM_CTR    OSTaskSemPost             (OS_TCB                *p_tcb,
                                         OS_OPT                 opt,
                                         OS_ERR                *p_err);

OS_SEM_CTR    OSTaskSemSet              (OS_TCB                *p_tcb,
                                         OS_SEM_CTR             cnt,
                                         OS_ERR                *p_err);

#line 1658 "..\\ucos\\core\\os.h"


void          OSTaskTimeQuantaSet       (OS_TCB                *p_tcb,
                                         OS_TICK                time_quanta,
                                         OS_ERR                *p_err);


 

void          OS_TaskBlock              (OS_TCB                *p_tcb,
                                         OS_TICK                timeout);


void          OS_TaskDbgListAdd         (OS_TCB                *p_tcb);

void          OS_TaskDbgListRemove      (OS_TCB                *p_tcb);


void          OS_TaskInit               (OS_ERR                *p_err);

void          OS_TaskInitTCB            (OS_TCB                *p_tcb);

void          OS_TaskQPost              (OS_TCB                *p_tcb,
                                         void                  *p_void,
                                         OS_MSG_SIZE            msg_size,
                                         OS_OPT                 opt,
                                         CPU_TS                 ts,
                                         OS_ERR                *p_err);

void          OS_TaskRdy                (OS_TCB                *p_tcb);

void          OS_TaskReturn             (void);

OS_SEM_CTR    OS_TaskSemPost            (OS_TCB                *p_tcb,
                                         OS_OPT                 opt,
                                         CPU_TS                 ts,
                                         OS_ERR                *p_err);

 
 
 
 

void          OSTimeDly                 (OS_TICK                dly,
                                         OS_OPT                 opt,
                                         OS_ERR                *p_err);


void          OSTimeDlyHMSM             (CPU_INT16U             hours,
                                         CPU_INT16U             minutes,
                                         CPU_INT16U             seconds,
                                         CPU_INT32U             milli,
                                         OS_OPT                 opt,
                                         OS_ERR                *p_err);



void          OSTimeDlyResume           (OS_TCB                *p_tcb,
                                         OS_ERR                *p_err);


OS_TICK       OSTimeGet                 (OS_ERR                *p_err);

void          OSTimeSet                 (OS_TICK                ticks,
                                         OS_ERR                *p_err);

void          OSTimeTick                (void);

 
 
 
 


void          OSTmrCreate               (OS_TMR                *p_tmr,
                                         CPU_CHAR              *p_name,
                                         OS_TICK                dly,
                                         OS_TICK                period,
                                         OS_OPT                 opt,
                                         OS_TMR_CALLBACK_PTR    p_callback,
                                         void                  *p_callback_arg,
                                         OS_ERR                *p_err);

CPU_BOOLEAN   OSTmrDel                  (OS_TMR                *p_tmr,
                                         OS_ERR                *p_err);

OS_TICK       OSTmrRemainGet            (OS_TMR                *p_tmr,
                                         OS_ERR                *p_err);

CPU_BOOLEAN   OSTmrStart                (OS_TMR                *p_tmr,
                                         OS_ERR                *p_err);

OS_STATE      OSTmrStateGet             (OS_TMR                *p_tmr,
                                         OS_ERR                *p_err);

CPU_BOOLEAN   OSTmrStop                 (OS_TMR                *p_tmr,
                                         OS_OPT                 opt,
                                         void                  *p_callback_arg,
                                         OS_ERR                *p_err);

 

void          OS_TmrClr                 (OS_TMR                *p_tmr);


void          OS_TmrDbgListAdd          (OS_TMR                *p_tmr);

void          OS_TmrDbgListRemove       (OS_TMR                *p_tmr);


void          OS_TmrInit                (OS_ERR                *p_err);

void          OS_TmrLink                (OS_TMR                *p_tmr,
                                         OS_OPT                 opt);

void          OS_TmrResetPeak           (void);

void          OS_TmrUnlink              (OS_TMR                *p_tmr);

void          OS_TmrTask                (void                  *p_arg);



 
 
 
 

void          OSInit                    (OS_ERR                *p_err);

void          OSIntEnter                (void);
void          OSIntExit                 (void);

void          OSMsgPoolExtend           (OS_MSG                *p_msg,
                                         OS_MSG_QTY             size,
                                         OS_ERR                *p_err);






void          OSSchedRoundRobinCfg      (CPU_BOOLEAN            en,
                                         OS_TICK                dflt_time_quanta,
                                         OS_ERR                *p_err);

void          OSSchedRoundRobinYield    (OS_ERR                *p_err);



void          OSSched                   (void);

void          OSSchedLock               (OS_ERR                *p_err);
void          OSSchedUnlock             (OS_ERR                *p_err);

void          OSStart                   (OS_ERR                *p_err);







CPU_INT16U    OSVersion                 (OS_ERR                *p_err);

 

void          OS_IdleTask               (void                  *p_arg);

void          OS_IdleTaskInit           (OS_ERR                *p_err);





void          OS_StatTaskInit           (OS_ERR                *p_err);

void          OS_TickTask               (void                  *p_arg);
void          OS_TickTaskInit           (OS_ERR                *p_err);

 






 

void          OSInitHook                (void);

void          OSTaskCreateHook          (OS_TCB                *p_tcb);
void          OSTaskDelHook             (OS_TCB                *p_tcb);

void          OSIdleTaskHook            (void);

void          OSTaskReturnHook          (OS_TCB                *p_tcb);

void          OSStatTaskHook            (void);

CPU_STK      *OSTaskStkInit             (OS_TASK_PTR            p_task,
                                         void                  *p_arg,
                                         CPU_STK               *p_stk_base,
                                         CPU_STK               *p_stk_limit,
                                         CPU_STK_SIZE           stk_size,
                                         OS_OPT                 opt);

void          OSTaskSwHook              (void);

void          OSTimeTickHook            (void);

 






 

void          OSCfg_Init                (void);


void          OS_Dbg_Init               (void);




void          OS_IntQTaskInit           (OS_ERR                *p_err);

void          OS_IntQPost               (OS_OBJ_TYPE            type,
                                         void                  *p_obj,
                                         void                  *p_void,
                                         OS_MSG_SIZE            msg_size,
                                         OS_FLAGS               flags,
                                         OS_OPT                 opt,
                                         CPU_TS                 ts,
                                         OS_ERR                *p_err);

void          OS_IntQRePost             (void);

void          OS_IntQTask               (void                  *p_arg);


 

void          OS_MsgPoolCreate          (OS_MSG                *p_msg,
                                         OS_MSG_QTY             size);

void          OS_MsgPoolInit            (OS_ERR                *p_err);

void          OS_MsgQEntriesPeakReset   (OS_MSG_Q              *p_msg_q);

OS_MSG_QTY    OS_MsgQFreeAll            (OS_MSG_Q              *p_msg_q);

void         *OS_MsgQGet                (OS_MSG_Q              *p_msg_q,
                                         OS_MSG_SIZE           *p_msg_size,
                                         CPU_TS                *p_ts,
                                         OS_ERR                *p_err);

void          OS_MsgQInit               (OS_MSG_Q              *p_msg_q,
                                         OS_MSG_QTY             size);

void          OS_MsgQPut                (OS_MSG_Q              *p_msg_q,
                                         void                  *p_void,
                                         OS_MSG_SIZE            msg_size,
                                         OS_OPT                 opt,
                                         CPU_TS                 ts,
                                         OS_ERR                *p_err);

 

void          OS_Pend                   (OS_PEND_DATA          *p_pend_data,
                                         OS_PEND_OBJ           *p_obj,
                                         OS_STATE               pending_on,
                                         OS_TICK                timeout);

void          OS_PendAbort              (OS_PEND_OBJ           *p_obj,
                                         OS_TCB                *p_tcb,
                                         CPU_TS                 ts);

void          OS_PendAbort1             (OS_PEND_OBJ           *p_obj,
                                         OS_TCB                *p_tcb,
                                         CPU_TS                 ts);

void          OS_PendObjDel             (OS_PEND_OBJ           *p_obj,
                                         OS_TCB                *p_tcb,
                                         CPU_TS                 ts);

void          OS_PendObjDel1            (OS_PEND_OBJ           *p_obj,
                                         OS_TCB                *p_tcb,
                                         CPU_TS                 ts);

void          OS_Post                   (OS_PEND_OBJ           *p_obj,
                                         OS_TCB                *p_tcb,
                                         void                  *p_void,
                                         OS_MSG_SIZE            msg_size,
                                         CPU_TS                 ts);

void          OS_Post1                  (OS_PEND_OBJ           *p_obj,
                                         OS_TCB                *p_tcb,
                                         void                  *p_void,
                                         OS_MSG_SIZE            msg_size,
                                         CPU_TS                 ts);

 

void          OS_PrioInit               (void);

void          OS_PrioInsert             (OS_PRIO                prio);

void          OS_PrioRemove             (OS_PRIO                prio);

OS_PRIO       OS_PrioGetHighest         (void);

 


void          OS_Sched0                 (void);



void          OS_SchedLockTimeMeasStart (void);
void          OS_SchedLockTimeMeasStop  (void);



void          OS_SchedRoundRobin        (OS_RDY_LIST           *p_rdy_list);


 

void          OS_RdyListInit            (void);

void          OS_RdyListInsert          (OS_TCB                *p_tcb);

void          OS_RdyListInsertHead      (OS_TCB                *p_tcb);

void          OS_RdyListInsertTail      (OS_TCB                *p_tcb);

void          OS_RdyListMoveHeadToTail  (OS_RDY_LIST           *p_rdy_list);

void          OS_RdyListRemove          (OS_TCB                *p_tcb);

 

void          OS_PendDataInit           (OS_TCB                *p_tcb,
                                         OS_PEND_DATA          *p_pend_data_tbl,
                                         OS_OBJ_QTY             tbl_size);


void          OS_PendDbgNameAdd         (OS_PEND_OBJ           *p_obj,
                                         OS_TCB                *p_tcb);

void          OS_PendDbgNameRemove      (OS_PEND_OBJ           *p_obj,
                                         OS_TCB                *p_tcb);


OS_PEND_LIST *OS_PendListGetPtr         (OS_PEND_OBJ           *p_obj);

void          OS_PendListInit           (OS_PEND_LIST          *p_pend_list);

void          OS_PendListInsertHead     (OS_PEND_LIST          *p_pend_list,
                                         OS_PEND_DATA          *p_pend_data);

void          OS_PendListInsertPrio     (OS_PEND_LIST          *p_pend_list,
                                         OS_PEND_DATA          *p_pend_data);

void          OS_PendListChangePrio     (OS_TCB                *p_tcb,
                                         OS_PRIO                prio_new);

void          OS_PendListRemove         (OS_TCB                *p_tcb);

void          OS_PendListRemove1        (OS_PEND_LIST          *p_pend_list,
                                         OS_PEND_DATA          *p_pend_data);

 

void          OS_TickListInit           (void);

void          OS_TickListInsert         (OS_TCB                *p_tcb,
                                         OS_TICK                time,
                                         OS_OPT                 opt,
                                         OS_ERR                *p_err);

void          OS_TickListRemove         (OS_TCB                *p_tcb);

void          OS_TickListResetPeak      (void);

void          OS_TickListUpdate         (void);

 










 





 




































#line 2111 "..\\ucos\\core\\os.h"











#line 2130 "..\\ucos\\core\\os.h"





 

#line 2143 "..\\ucos\\core\\os.h"














 









 

#line 2175 "..\\ucos\\core\\os.h"










 

#line 2193 "..\\ucos\\core\\os.h"














 

#line 2215 "..\\ucos\\core\\os.h"














 













































 













 

#line 2298 "..\\ucos\\core\\os.h"





 

                                                                 





                                                                 









 

#line 5 "..\\app\\app\\app.h"
#line 6 "..\\app\\app\\app.h"

 





 





 
void Task_Start(void *p_arg);
void Task_Sem(void *p_arg);
void Task_PRODUCT(void *p_arg);
void Task_CUSTOMER(void *p_arg);

#line 2 "..\\app\\app\\app.c"
#line 3 "..\\app\\app\\app.c"
extern	OS_TCB	StartUp_TCB;					

static  OS_TCB	SEM_TCB;		   				
static	CPU_STK	Sem_Stk[500];	     	

static  OS_TCB	Product_TCB;		   					
static	CPU_STK	PRO_Stk[200];	   

static  OS_TCB	Customer_TCB;		   					
static	CPU_STK	Cus_Stk[200];	   

OS_SEM SemOfPRODUCT;






 
void Task_Start(void *p_arg)
{
	OS_ERR err;
  (void)p_arg;	

  CPU_Init();

  SysTick_init();

  
	OSTaskCreate((OS_TCB     *)&SEM_TCB,					            
               (CPU_CHAR   *)"Sem",						              
               (OS_TASK_PTR )Task_Sem,					            
               (void       *)0,							                
               (OS_PRIO     )4,				        
               (CPU_STK    *)&Sem_Stk[0],				          
               (CPU_STK_SIZE)500/10,		      
               (CPU_STK_SIZE)500,			      
               (OS_MSG_QTY  )0,							                
               (OS_TICK     )0,							                
               (void       *)0,							                
               (OS_OPT      )((OS_OPT)(0x0001u) | 
                              (OS_OPT)(0x0002u)),	        
               (OS_ERR     *)&err);						              
			

	
	OSTaskCreate((OS_TCB     *)&Product_TCB,					  
               (CPU_CHAR   *)"PRODUCT",						
               (OS_TASK_PTR )Task_PRODUCT,				
               (void       *)0,							
               (OS_PRIO     )64u-5u,				
               (CPU_STK    *)&PRO_Stk[0],				
               (CPU_STK_SIZE)200/10,		
               (CPU_STK_SIZE)200,			
               (OS_MSG_QTY  )0,						
               (OS_TICK     )0,							
               (void       *)0,							
               (OS_OPT      )((OS_OPT)(0x0001u) | 
                              (OS_OPT)(0x0002u)),	 
               (OS_ERR     *)&err);	
							 
	
	OSTaskCreate((OS_TCB     *)&Customer_TCB,					  
               (CPU_CHAR   *)"Customer",						
               (OS_TASK_PTR )Task_CUSTOMER,				
               (void       *)0,							
               (OS_PRIO     )64u-6u,				
               (CPU_STK    *)&Cus_Stk[0],				
               (CPU_STK_SIZE)200/10,		
               (CPU_STK_SIZE)200,			
               (OS_MSG_QTY  )0,						
               (OS_TICK     )0,							
               (void       *)0,							
               (OS_OPT      )((OS_OPT)(0x0001u) | 
                              (OS_OPT)(0x0002u)),	 
               (OS_ERR     *)&err);	
               
  
	OSTaskDel(&StartUp_TCB,&err);							 
}








 
void Task_Sem(void *p_arg)
{
  OS_ERR err;
  OS_SEM_CTR  Ctr;
	 CPU_TS      ts;
  (void)p_arg;  

  
  
  OSSemCreate ((OS_SEM      *)&SemOfPRODUCT,     
               (CPU_CHAR    *)"SemOfPRODUCT",    
               (OS_SEM_CTR   )0,             
               (OS_ERR      *)&err);         
  
  
  while (1)
  {
    OSTimeDlyHMSM(0, 0,0,500,((OS_OPT)0x00u),&err);	
  }
}

void cbTimerOfPRODUCT (OS_TMR *p_tmr, void *p_arg)
{
  OS_ERR      err;
  OSSemPost ((OS_SEM  *)&SemOfPRODUCT,
                    (OS_OPT   )(OS_OPT)(0x0200u),
                    (OS_ERR  *)&err);

}






 
void Task_PRODUCT(void *p_arg)
{
  OS_ERR err;  
  OS_TMR TmrOfPRODUCT;

  (void)p_arg;
  
  OSTmrCreate ((OS_TMR              *)&TmrOfPRODUCT,
               (CPU_CHAR            *)"TmrOfPRODUCT",
               (OS_TICK              )0,
               (OS_TICK              )100,  
               (OS_OPT               )(OS_OPT)(2u),
               (OS_TMR_CALLBACK_PTR  )cbTimerOfPRODUCT,
               (void                *)0,
               (OS_ERR              *)&err);
               
  
  OSTmrStart (&TmrOfPRODUCT,&err);
  
  while (1)
  {

    OSTimeDly ((OS_TICK   )1000,
               (OS_OPT    )0x00u,
               (OS_ERR   *)&err);
  }
}









 
void Task_CUSTOMER(void *p_arg)
{
  OS_ERR err;
  OS_SEM_CTR  Ctr;
	 CPU_TS      ts;
  while (1)
  {

    
    Ctr= OSSemPend((OS_SEM   *)&SemOfPRODUCT,
                   (OS_TICK   )0,                         
                   (OS_OPT    )(OS_OPT)(0x0000u),  
                   (CPU_TS   *)&ts,                       
                   (OS_ERR   *)&err);   
		
	  OSTimeDly ((OS_TICK   )10,
               (OS_OPT    )0x00u,
               (OS_ERR   *)&err);
  }
}

 
