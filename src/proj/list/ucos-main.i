#line 1 "..\\app\\ucos-main.c"

void assert_param(void*arg){}
	
	
#line 1 "..\\app\\inc\\stm32f10x_rcc.h"




















 

 







 
#line 1 "..\\app\\inc\\stm32f10x.h"







































 



 



 
    






  


 
  


 

#line 75 "..\\app\\inc\\stm32f10x.h"


















 





#line 107 "..\\app\\inc\\stm32f10x.h"







        
extern const unsigned int Default_Hse_Value;


#line 125 "..\\app\\inc\\stm32f10x.h"





 






 
#line 146 "..\\app\\inc\\stm32f10x.h"



 



 



 
#line 165 "..\\app\\inc\\stm32f10x.h"




 
typedef enum IRQn
{
 
  NonMaskableInt_IRQn         = -14,     
  MemoryManagement_IRQn       = -12,     
  BusFault_IRQn               = -11,     
  UsageFault_IRQn             = -10,     
  SVCall_IRQn                 = -5,      
  DebugMonitor_IRQn           = -4,      
  PendSV_IRQn                 = -2,      
  SysTick_IRQn                = -1,      

 
  WWDG_IRQn                   = 0,       
  PVD_IRQn                    = 1,       
  TAMPER_IRQn                 = 2,       
  RTC_IRQn                    = 3,       
  FLASH_IRQn                  = 4,       
  RCC_IRQn                    = 5,       
  EXTI0_IRQn                  = 6,       
  EXTI1_IRQn                  = 7,       
  EXTI2_IRQn                  = 8,       
  EXTI3_IRQn                  = 9,       
  EXTI4_IRQn                  = 10,      
  DMA1_Channel1_IRQn          = 11,      
  DMA1_Channel2_IRQn          = 12,      
  DMA1_Channel3_IRQn          = 13,      
  DMA1_Channel4_IRQn          = 14,      
  DMA1_Channel5_IRQn          = 15,      
  DMA1_Channel6_IRQn          = 16,      
  DMA1_Channel7_IRQn          = 17,      

#line 224 "..\\app\\inc\\stm32f10x.h"

#line 245 "..\\app\\inc\\stm32f10x.h"

#line 273 "..\\app\\inc\\stm32f10x.h"

#line 299 "..\\app\\inc\\stm32f10x.h"


  ADC1_2_IRQn                 = 18,      
  USB_HP_CAN1_TX_IRQn         = 19,      
  USB_LP_CAN1_RX0_IRQn        = 20,      
  CAN1_RX1_IRQn               = 21,      
  CAN1_SCE_IRQn               = 22,      
  EXTI9_5_IRQn                = 23,      
  TIM1_BRK_IRQn               = 24,      
  TIM1_UP_IRQn                = 25,      
  TIM1_TRG_COM_IRQn           = 26,      
  TIM1_CC_IRQn                = 27,      
  TIM2_IRQn                   = 28,      
  TIM3_IRQn                   = 29,      
  TIM4_IRQn                   = 30,      
  I2C1_EV_IRQn                = 31,      
  I2C1_ER_IRQn                = 32,      
  I2C2_EV_IRQn                = 33,      
  I2C2_ER_IRQn                = 34,      
  SPI1_IRQn                   = 35,      
  SPI2_IRQn                   = 36,      
  USART1_IRQn                 = 37,      
  USART2_IRQn                 = 38,      
  USART3_IRQn                 = 39,      
  EXTI15_10_IRQn              = 40,      
  RTCAlarm_IRQn               = 41,      
  USBWakeUp_IRQn              = 42,      
  TIM8_BRK_IRQn               = 43,      
  TIM8_UP_IRQn                = 44,      
  TIM8_TRG_COM_IRQn           = 45,      
  TIM8_CC_IRQn                = 46,      
  ADC3_IRQn                   = 47,      
  FSMC_IRQn                   = 48,      
  SDIO_IRQn                   = 49,      
  TIM5_IRQn                   = 50,      
  SPI3_IRQn                   = 51,      
  UART4_IRQn                  = 52,      
  UART5_IRQn                  = 53,      
  TIM6_IRQn                   = 54,      
  TIM7_IRQn                   = 55,      
  DMA2_Channel1_IRQn          = 56,      
  DMA2_Channel2_IRQn          = 57,      
  DMA2_Channel3_IRQn          = 58,      
  DMA2_Channel4_5_IRQn        = 59       


#line 384 "..\\app\\inc\\stm32f10x.h"

#line 429 "..\\app\\inc\\stm32f10x.h"

#line 475 "..\\app\\inc\\stm32f10x.h"
} IRQn_Type;



 

#line 1 "D:\\Keil\\ARM\\CMSIS\\Include\\core_cm3.h"
 







 

























 
























 




 


 

 













#line 110 "D:\\Keil\\ARM\\CMSIS\\Include\\core_cm3.h"


 







#line 145 "D:\\Keil\\ARM\\CMSIS\\Include\\core_cm3.h"

#line 1 "D:\\Keil\\ARM\\ARMCC\\bin\\..\\include\\stdint.h"
 
 





 










#line 26 "D:\\Keil\\ARM\\ARMCC\\bin\\..\\include\\stdint.h"







 

     

     
typedef   signed          char int8_t;
typedef   signed short     int int16_t;
typedef   signed           int int32_t;
typedef   signed       __int64 int64_t;

     
typedef unsigned          char uint8_t;
typedef unsigned short     int uint16_t;
typedef unsigned           int uint32_t;
typedef unsigned       __int64 uint64_t;

     

     
     
typedef   signed          char int_least8_t;
typedef   signed short     int int_least16_t;
typedef   signed           int int_least32_t;
typedef   signed       __int64 int_least64_t;

     
typedef unsigned          char uint_least8_t;
typedef unsigned short     int uint_least16_t;
typedef unsigned           int uint_least32_t;
typedef unsigned       __int64 uint_least64_t;

     

     
typedef   signed           int int_fast8_t;
typedef   signed           int int_fast16_t;
typedef   signed           int int_fast32_t;
typedef   signed       __int64 int_fast64_t;

     
typedef unsigned           int uint_fast8_t;
typedef unsigned           int uint_fast16_t;
typedef unsigned           int uint_fast32_t;
typedef unsigned       __int64 uint_fast64_t;

     
typedef   signed           int intptr_t;
typedef unsigned           int uintptr_t;

     
typedef   signed       __int64 intmax_t;
typedef unsigned       __int64 uintmax_t;




     

     





     





     





     

     





     





     





     

     





     





     





     

     


     


     


     

     


     


     


     

     



     



     


     
    
 



#line 197 "D:\\Keil\\ARM\\ARMCC\\bin\\..\\include\\stdint.h"

     







     










     











#line 261 "D:\\Keil\\ARM\\ARMCC\\bin\\..\\include\\stdint.h"



 



#line 147 "D:\\Keil\\ARM\\CMSIS\\Include\\core_cm3.h"
#line 1 "D:\\Keil\\ARM\\CMSIS\\Include\\core_cmInstr.h"
 







 

























 






 



 


 









 







 







 






 








 







 







 









 









 

__attribute__((section(".rev16_text"))) static __inline __asm uint32_t __REV16(uint32_t value)
{
  rev16 r0, r0
  bx lr
}








 

__attribute__((section(".revsh_text"))) static __inline __asm int32_t __REVSH(int32_t value)
{
  revsh r0, r0
  bx lr
}










 










 











 









 









 









 











 











 











 







 










 










 









 





#line 684 "D:\\Keil\\ARM\\CMSIS\\Include\\core_cmInstr.h"

   

#line 148 "D:\\Keil\\ARM\\CMSIS\\Include\\core_cm3.h"
#line 1 "D:\\Keil\\ARM\\CMSIS\\Include\\core_cmFunc.h"
 







 

























 






 



 


 





 
 






 
static __inline uint32_t __get_CONTROL(void)
{
  register uint32_t __regControl         __asm("control");
  return(__regControl);
}







 
static __inline void __set_CONTROL(uint32_t control)
{
  register uint32_t __regControl         __asm("control");
  __regControl = control;
}







 
static __inline uint32_t __get_IPSR(void)
{
  register uint32_t __regIPSR          __asm("ipsr");
  return(__regIPSR);
}







 
static __inline uint32_t __get_APSR(void)
{
  register uint32_t __regAPSR          __asm("apsr");
  return(__regAPSR);
}







 
static __inline uint32_t __get_xPSR(void)
{
  register uint32_t __regXPSR          __asm("xpsr");
  return(__regXPSR);
}







 
static __inline uint32_t __get_PSP(void)
{
  register uint32_t __regProcessStackPointer  __asm("psp");
  return(__regProcessStackPointer);
}







 
static __inline void __set_PSP(uint32_t topOfProcStack)
{
  register uint32_t __regProcessStackPointer  __asm("psp");
  __regProcessStackPointer = topOfProcStack;
}







 
static __inline uint32_t __get_MSP(void)
{
  register uint32_t __regMainStackPointer     __asm("msp");
  return(__regMainStackPointer);
}







 
static __inline void __set_MSP(uint32_t topOfMainStack)
{
  register uint32_t __regMainStackPointer     __asm("msp");
  __regMainStackPointer = topOfMainStack;
}







 
static __inline uint32_t __get_PRIMASK(void)
{
  register uint32_t __regPriMask         __asm("primask");
  return(__regPriMask);
}







 
static __inline void __set_PRIMASK(uint32_t priMask)
{
  register uint32_t __regPriMask         __asm("primask");
  __regPriMask = (priMask);
}








 







 








 
static __inline uint32_t  __get_BASEPRI(void)
{
  register uint32_t __regBasePri         __asm("basepri");
  return(__regBasePri);
}







 
static __inline void __set_BASEPRI(uint32_t basePri)
{
  register uint32_t __regBasePri         __asm("basepri");
  __regBasePri = (basePri & 0xff);
}







 
static __inline uint32_t __get_FAULTMASK(void)
{
  register uint32_t __regFaultMask       __asm("faultmask");
  return(__regFaultMask);
}







 
static __inline void __set_FAULTMASK(uint32_t faultMask)
{
  register uint32_t __regFaultMask       __asm("faultmask");
  __regFaultMask = (faultMask & (uint32_t)1);
}




#line 307 "D:\\Keil\\ARM\\CMSIS\\Include\\core_cmFunc.h"


#line 634 "D:\\Keil\\ARM\\CMSIS\\Include\\core_cmFunc.h"

 

#line 149 "D:\\Keil\\ARM\\CMSIS\\Include\\core_cm3.h"








 
#line 179 "D:\\Keil\\ARM\\CMSIS\\Include\\core_cm3.h"

 






 
#line 195 "D:\\Keil\\ARM\\CMSIS\\Include\\core_cm3.h"

 












 


 





 


 
typedef union
{
  struct
  {

    uint32_t _reserved0:27;               





    uint32_t Q:1;                         
    uint32_t V:1;                         
    uint32_t C:1;                         
    uint32_t Z:1;                         
    uint32_t N:1;                         
  } b;                                    
  uint32_t w;                             
} APSR_Type;



 
typedef union
{
  struct
  {
    uint32_t ISR:9;                       
    uint32_t _reserved0:23;               
  } b;                                    
  uint32_t w;                             
} IPSR_Type;



 
typedef union
{
  struct
  {
    uint32_t ISR:9;                       

    uint32_t _reserved0:15;               





    uint32_t T:1;                         
    uint32_t IT:2;                        
    uint32_t Q:1;                         
    uint32_t V:1;                         
    uint32_t C:1;                         
    uint32_t Z:1;                         
    uint32_t N:1;                         
  } b;                                    
  uint32_t w;                             
} xPSR_Type;



 
typedef union
{
  struct
  {
    uint32_t nPRIV:1;                     
    uint32_t SPSEL:1;                     
    uint32_t FPCA:1;                      
    uint32_t _reserved0:29;               
  } b;                                    
  uint32_t w;                             
} CONTROL_Type;

 






 


 
typedef struct
{
  volatile uint32_t ISER[8];                  
       uint32_t RESERVED0[24];
  volatile uint32_t ICER[8];                  
       uint32_t RSERVED1[24];
  volatile uint32_t ISPR[8];                  
       uint32_t RESERVED2[24];
  volatile uint32_t ICPR[8];                  
       uint32_t RESERVED3[24];
  volatile uint32_t IABR[8];                  
       uint32_t RESERVED4[56];
  volatile uint8_t  IP[240];                  
       uint32_t RESERVED5[644];
  volatile  uint32_t STIR;                     
}  NVIC_Type;

 



 






 


 
typedef struct
{
  volatile const  uint32_t CPUID;                    
  volatile uint32_t ICSR;                     
  volatile uint32_t VTOR;                     
  volatile uint32_t AIRCR;                    
  volatile uint32_t SCR;                      
  volatile uint32_t CCR;                      
  volatile uint8_t  SHP[12];                  
  volatile uint32_t SHCSR;                    
  volatile uint32_t CFSR;                     
  volatile uint32_t HFSR;                     
  volatile uint32_t DFSR;                     
  volatile uint32_t MMFAR;                    
  volatile uint32_t BFAR;                     
  volatile uint32_t AFSR;                     
  volatile const  uint32_t PFR[2];                   
  volatile const  uint32_t DFR;                      
  volatile const  uint32_t ADR;                      
  volatile const  uint32_t MMFR[4];                  
  volatile const  uint32_t ISAR[5];                  
       uint32_t RESERVED0[5];
  volatile uint32_t CPACR;                    
} SCB_Type;

 















 






























 




#line 422 "D:\\Keil\\ARM\\CMSIS\\Include\\core_cm3.h"

 





















 









 


















 










































 









 









 















 






 


 
typedef struct
{
       uint32_t RESERVED0[1];
  volatile const  uint32_t ICTR;                     



       uint32_t RESERVED1[1];

} SCnSCB_Type;

 



 










 






 


 
typedef struct
{
  volatile uint32_t CTRL;                     
  volatile uint32_t LOAD;                     
  volatile uint32_t VAL;                      
  volatile const  uint32_t CALIB;                    
} SysTick_Type;

 












 



 



 









 






 


 
typedef struct
{
  volatile  union
  {
    volatile  uint8_t    u8;                   
    volatile  uint16_t   u16;                  
    volatile  uint32_t   u32;                  
  }  PORT [32];                           
       uint32_t RESERVED0[864];
  volatile uint32_t TER;                      
       uint32_t RESERVED1[15];
  volatile uint32_t TPR;                      
       uint32_t RESERVED2[15];
  volatile uint32_t TCR;                      
       uint32_t RESERVED3[29];
  volatile  uint32_t IWR;                      
  volatile const  uint32_t IRR;                      
  volatile uint32_t IMCR;                     
       uint32_t RESERVED4[43];
  volatile  uint32_t LAR;                      
  volatile const  uint32_t LSR;                      
       uint32_t RESERVED5[6];
  volatile const  uint32_t PID4;                     
  volatile const  uint32_t PID5;                     
  volatile const  uint32_t PID6;                     
  volatile const  uint32_t PID7;                     
  volatile const  uint32_t PID0;                     
  volatile const  uint32_t PID1;                     
  volatile const  uint32_t PID2;                     
  volatile const  uint32_t PID3;                     
  volatile const  uint32_t CID0;                     
  volatile const  uint32_t CID1;                     
  volatile const  uint32_t CID2;                     
  volatile const  uint32_t CID3;                     
} ITM_Type;

 



 



























 



 



 



 









   






 


 
typedef struct
{
  volatile uint32_t CTRL;                     
  volatile uint32_t CYCCNT;                   
  volatile uint32_t CPICNT;                   
  volatile uint32_t EXCCNT;                   
  volatile uint32_t SLEEPCNT;                 
  volatile uint32_t LSUCNT;                   
  volatile uint32_t FOLDCNT;                  
  volatile const  uint32_t PCSR;                     
  volatile uint32_t COMP0;                    
  volatile uint32_t MASK0;                    
  volatile uint32_t FUNCTION0;                
       uint32_t RESERVED0[1];
  volatile uint32_t COMP1;                    
  volatile uint32_t MASK1;                    
  volatile uint32_t FUNCTION1;                
       uint32_t RESERVED1[1];
  volatile uint32_t COMP2;                    
  volatile uint32_t MASK2;                    
  volatile uint32_t FUNCTION2;                
       uint32_t RESERVED2[1];
  volatile uint32_t COMP3;                    
  volatile uint32_t MASK3;                    
  volatile uint32_t FUNCTION3;                
} DWT_Type;

 






















































 



 



 



 



 



 



 



























   






 


 
typedef struct
{
  volatile uint32_t SSPSR;                    
  volatile uint32_t CSPSR;                    
       uint32_t RESERVED0[2];
  volatile uint32_t ACPR;                     
       uint32_t RESERVED1[55];
  volatile uint32_t SPPR;                     
       uint32_t RESERVED2[131];
  volatile const  uint32_t FFSR;                     
  volatile uint32_t FFCR;                     
  volatile const  uint32_t FSCR;                     
       uint32_t RESERVED3[759];
  volatile const  uint32_t TRIGGER;                  
  volatile const  uint32_t FIFO0;                    
  volatile const  uint32_t ITATBCTR2;                
       uint32_t RESERVED4[1];
  volatile const  uint32_t ITATBCTR0;                
  volatile const  uint32_t FIFO1;                    
  volatile uint32_t ITCTRL;                   
       uint32_t RESERVED5[39];
  volatile uint32_t CLAIMSET;                 
  volatile uint32_t CLAIMCLR;                 
       uint32_t RESERVED7[8];
  volatile const  uint32_t DEVID;                    
  volatile const  uint32_t DEVTYPE;                  
} TPI_Type;

 



 



 












 






 



 





















 



 





















 



 



 


















 






   


#line 1133 "D:\\Keil\\ARM\\CMSIS\\Include\\core_cm3.h"






 


 
typedef struct
{
  volatile uint32_t DHCSR;                    
  volatile  uint32_t DCRSR;                    
  volatile uint32_t DCRDR;                    
  volatile uint32_t DEMCR;                    
} CoreDebug_Type;

 




































 






 







































 






 

 
#line 1253 "D:\\Keil\\ARM\\CMSIS\\Include\\core_cm3.h"

#line 1262 "D:\\Keil\\ARM\\CMSIS\\Include\\core_cm3.h"






 










 

 



 




 










 
static __inline void NVIC_SetPriorityGrouping(uint32_t PriorityGroup)
{
  uint32_t reg_value;
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07);                

  reg_value  =  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR;                                                    
  reg_value &= ~((0xFFFFUL << 16) | (7UL << 8));              
  reg_value  =  (reg_value                                 |
                ((uint32_t)0x5FA << 16) |
                (PriorityGroupTmp << 8));                                      
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR =  reg_value;
}







 
static __inline uint32_t NVIC_GetPriorityGrouping(void)
{
  return ((((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR & (7UL << 8)) >> 8);    
}







 
static __inline void NVIC_EnableIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F));  
}







 
static __inline void NVIC_DisableIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICER[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F));  
}











 
static __inline uint32_t NVIC_GetPendingIRQ(IRQn_Type IRQn)
{
  return((uint32_t) ((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[(uint32_t)(IRQn) >> 5] & (1 << ((uint32_t)(IRQn) & 0x1F)))?1:0));  
}







 
static __inline void NVIC_SetPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F));  
}







 
static __inline void NVIC_ClearPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICPR[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F));  
}










 
static __inline uint32_t NVIC_GetActive(IRQn_Type IRQn)
{
  return((uint32_t)((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IABR[(uint32_t)(IRQn) >> 5] & (1 << ((uint32_t)(IRQn) & 0x1F)))?1:0));  
}










 
static __inline void NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
  if(IRQn < 0) {
    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[((uint32_t)(IRQn) & 0xF)-4] = ((priority << (8 - 4)) & 0xff); }  
  else {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[(uint32_t)(IRQn)] = ((priority << (8 - 4)) & 0xff);    }         
}












 
static __inline uint32_t NVIC_GetPriority(IRQn_Type IRQn)
{

  if(IRQn < 0) {
    return((uint32_t)(((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[((uint32_t)(IRQn) & 0xF)-4] >> (8 - 4)));  }  
  else {
    return((uint32_t)(((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[(uint32_t)(IRQn)]           >> (8 - 4)));  }  
}













 
static __inline uint32_t NVIC_EncodePriority (uint32_t PriorityGroup, uint32_t PreemptPriority, uint32_t SubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & 0x07);           
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7 - PriorityGroupTmp) > 4) ? 4 : 7 - PriorityGroupTmp;
  SubPriorityBits     = ((PriorityGroupTmp + 4) < 7) ? 0 : PriorityGroupTmp - 7 + 4;

  return (
           ((PreemptPriority & ((1 << (PreemptPriorityBits)) - 1)) << SubPriorityBits) |
           ((SubPriority     & ((1 << (SubPriorityBits    )) - 1)))
         );
}













 
static __inline void NVIC_DecodePriority (uint32_t Priority, uint32_t PriorityGroup, uint32_t* pPreemptPriority, uint32_t* pSubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & 0x07);           
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7 - PriorityGroupTmp) > 4) ? 4 : 7 - PriorityGroupTmp;
  SubPriorityBits     = ((PriorityGroupTmp + 4) < 7) ? 0 : PriorityGroupTmp - 7 + 4;

  *pPreemptPriority = (Priority >> SubPriorityBits) & ((1 << (PreemptPriorityBits)) - 1);
  *pSubPriority     = (Priority                   ) & ((1 << (SubPriorityBits    )) - 1);
}





 
static __inline void NVIC_SystemReset(void)
{
  __dsb(0xF);                                                     
 
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR  = ((0x5FA << 16)      |
                 (((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR & (7UL << 8)) |
                 (1UL << 2));                    
  __dsb(0xF);                                                      
  while(1);                                                     
}

 



 




 

















 
static __inline uint32_t SysTick_Config(uint32_t ticks)
{
  if ((ticks - 1) > (0xFFFFFFUL << 0))  return (1);       

  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->LOAD  = ticks - 1;                                   
  NVIC_SetPriority (SysTick_IRQn, (1<<4) - 1);   
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->VAL   = 0;                                           
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL  = (1UL << 2) |
                   (1UL << 1)   |
                   (1UL << 0);                     
  return (0);                                                   
}



 



 




 

extern volatile int32_t ITM_RxBuffer;                     












 
static __inline uint32_t ITM_SendChar (uint32_t ch)
{
  if ((((ITM_Type *) (0xE0000000UL) )->TCR & (1UL << 0))                  &&       
      (((ITM_Type *) (0xE0000000UL) )->TER & (1UL << 0)        )                    )      
  {
    while (((ITM_Type *) (0xE0000000UL) )->PORT[0].u32 == 0);
    ((ITM_Type *) (0xE0000000UL) )->PORT[0].u8 = (uint8_t) ch;
  }
  return (ch);
}








 
static __inline int32_t ITM_ReceiveChar (void) {
  int32_t ch = -1;                            

  if (ITM_RxBuffer != 0x5AA55AA5) {
    ch = ITM_RxBuffer;
    ITM_RxBuffer = 0x5AA55AA5;        
  }

  return (ch);
}








 
static __inline int32_t ITM_CheckChar (void) {

  if (ITM_RxBuffer == 0x5AA55AA5) {
    return (0);                                  
  } else {
    return (1);                                  
  }
}

 





#line 482 "..\\app\\inc\\stm32f10x.h"
#line 1 "..\\app\\inc\\system_stm32f10x.h"



















 



 



   
  


 









 



 




 

extern uint32_t SystemCoreClock;           



 



 



 



 



 



 
  
extern void SystemInit(void);
extern void SystemCoreClockUpdate(void);


 









 
  


   
 
#line 483 "..\\app\\inc\\stm32f10x.h"
#line 484 "..\\app\\inc\\stm32f10x.h"



   

 
typedef int32_t  s32;
typedef int16_t s16;
typedef int8_t  s8;

typedef const int32_t sc32;   
typedef const int16_t sc16;   
typedef const int8_t sc8;    

typedef volatile int32_t  vs32;
typedef volatile int16_t  vs16;
typedef volatile int8_t   vs8;

typedef volatile const int32_t vsc32;   
typedef volatile const int16_t vsc16;   
typedef volatile const int8_t vsc8;    

typedef uint32_t  u32;
typedef uint16_t u16;
typedef uint8_t  u8;

typedef const uint32_t uc32;   
typedef const uint16_t uc16;   
typedef const uint8_t uc8;    

typedef volatile uint32_t  vu32;
typedef volatile uint16_t vu16;
typedef volatile uint8_t  vu8;

typedef volatile const uint32_t vuc32;   
typedef volatile const uint16_t vuc16;   
typedef volatile const uint8_t vuc8;    

typedef enum {RESET = 0, SET = !RESET} FlagStatus, ITStatus;

typedef enum {DISABLE = 0, ENABLE = !DISABLE} FunctionalState;


typedef enum {ERROR = 0, SUCCESS = !ERROR} ErrorStatus;

 





 



    



 

typedef struct
{
  volatile uint32_t SR;
  volatile uint32_t CR1;
  volatile uint32_t CR2;
  volatile uint32_t SMPR1;
  volatile uint32_t SMPR2;
  volatile uint32_t JOFR1;
  volatile uint32_t JOFR2;
  volatile uint32_t JOFR3;
  volatile uint32_t JOFR4;
  volatile uint32_t HTR;
  volatile uint32_t LTR;
  volatile uint32_t SQR1;
  volatile uint32_t SQR2;
  volatile uint32_t SQR3;
  volatile uint32_t JSQR;
  volatile uint32_t JDR1;
  volatile uint32_t JDR2;
  volatile uint32_t JDR3;
  volatile uint32_t JDR4;
  volatile uint32_t DR;
} ADC_TypeDef;



 

typedef struct
{
  uint32_t  RESERVED0;
  volatile uint16_t DR1;
  uint16_t  RESERVED1;
  volatile uint16_t DR2;
  uint16_t  RESERVED2;
  volatile uint16_t DR3;
  uint16_t  RESERVED3;
  volatile uint16_t DR4;
  uint16_t  RESERVED4;
  volatile uint16_t DR5;
  uint16_t  RESERVED5;
  volatile uint16_t DR6;
  uint16_t  RESERVED6;
  volatile uint16_t DR7;
  uint16_t  RESERVED7;
  volatile uint16_t DR8;
  uint16_t  RESERVED8;
  volatile uint16_t DR9;
  uint16_t  RESERVED9;
  volatile uint16_t DR10;
  uint16_t  RESERVED10; 
  volatile uint16_t RTCCR;
  uint16_t  RESERVED11;
  volatile uint16_t CR;
  uint16_t  RESERVED12;
  volatile uint16_t CSR;
  uint16_t  RESERVED13[5];
  volatile uint16_t DR11;
  uint16_t  RESERVED14;
  volatile uint16_t DR12;
  uint16_t  RESERVED15;
  volatile uint16_t DR13;
  uint16_t  RESERVED16;
  volatile uint16_t DR14;
  uint16_t  RESERVED17;
  volatile uint16_t DR15;
  uint16_t  RESERVED18;
  volatile uint16_t DR16;
  uint16_t  RESERVED19;
  volatile uint16_t DR17;
  uint16_t  RESERVED20;
  volatile uint16_t DR18;
  uint16_t  RESERVED21;
  volatile uint16_t DR19;
  uint16_t  RESERVED22;
  volatile uint16_t DR20;
  uint16_t  RESERVED23;
  volatile uint16_t DR21;
  uint16_t  RESERVED24;
  volatile uint16_t DR22;
  uint16_t  RESERVED25;
  volatile uint16_t DR23;
  uint16_t  RESERVED26;
  volatile uint16_t DR24;
  uint16_t  RESERVED27;
  volatile uint16_t DR25;
  uint16_t  RESERVED28;
  volatile uint16_t DR26;
  uint16_t  RESERVED29;
  volatile uint16_t DR27;
  uint16_t  RESERVED30;
  volatile uint16_t DR28;
  uint16_t  RESERVED31;
  volatile uint16_t DR29;
  uint16_t  RESERVED32;
  volatile uint16_t DR30;
  uint16_t  RESERVED33; 
  volatile uint16_t DR31;
  uint16_t  RESERVED34;
  volatile uint16_t DR32;
  uint16_t  RESERVED35;
  volatile uint16_t DR33;
  uint16_t  RESERVED36;
  volatile uint16_t DR34;
  uint16_t  RESERVED37;
  volatile uint16_t DR35;
  uint16_t  RESERVED38;
  volatile uint16_t DR36;
  uint16_t  RESERVED39;
  volatile uint16_t DR37;
  uint16_t  RESERVED40;
  volatile uint16_t DR38;
  uint16_t  RESERVED41;
  volatile uint16_t DR39;
  uint16_t  RESERVED42;
  volatile uint16_t DR40;
  uint16_t  RESERVED43;
  volatile uint16_t DR41;
  uint16_t  RESERVED44;
  volatile uint16_t DR42;
  uint16_t  RESERVED45;    
} BKP_TypeDef;
  


 

typedef struct
{
  volatile uint32_t TIR;
  volatile uint32_t TDTR;
  volatile uint32_t TDLR;
  volatile uint32_t TDHR;
} CAN_TxMailBox_TypeDef;



 
  
typedef struct
{
  volatile uint32_t RIR;
  volatile uint32_t RDTR;
  volatile uint32_t RDLR;
  volatile uint32_t RDHR;
} CAN_FIFOMailBox_TypeDef;



 
  
typedef struct
{
  volatile uint32_t FR1;
  volatile uint32_t FR2;
} CAN_FilterRegister_TypeDef;



 
  
typedef struct
{
  volatile uint32_t MCR;
  volatile uint32_t MSR;
  volatile uint32_t TSR;
  volatile uint32_t RF0R;
  volatile uint32_t RF1R;
  volatile uint32_t IER;
  volatile uint32_t ESR;
  volatile uint32_t BTR;
  uint32_t  RESERVED0[88];
  CAN_TxMailBox_TypeDef sTxMailBox[3];
  CAN_FIFOMailBox_TypeDef sFIFOMailBox[2];
  uint32_t  RESERVED1[12];
  volatile uint32_t FMR;
  volatile uint32_t FM1R;
  uint32_t  RESERVED2;
  volatile uint32_t FS1R;
  uint32_t  RESERVED3;
  volatile uint32_t FFA1R;
  uint32_t  RESERVED4;
  volatile uint32_t FA1R;
  uint32_t  RESERVED5[8];

  CAN_FilterRegister_TypeDef sFilterRegister[14];



} CAN_TypeDef;



 
typedef struct
{
  volatile uint32_t CFGR;
  volatile uint32_t OAR;
  volatile uint32_t PRES;
  volatile uint32_t ESR;
  volatile uint32_t CSR;
  volatile uint32_t TXD;
  volatile uint32_t RXD;  
} CEC_TypeDef;



 

typedef struct
{
  volatile uint32_t DR;
  volatile uint8_t  IDR;
  uint8_t   RESERVED0;
  uint16_t  RESERVED1;
  volatile uint32_t CR;
} CRC_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t SWTRIGR;
  volatile uint32_t DHR12R1;
  volatile uint32_t DHR12L1;
  volatile uint32_t DHR8R1;
  volatile uint32_t DHR12R2;
  volatile uint32_t DHR12L2;
  volatile uint32_t DHR8R2;
  volatile uint32_t DHR12RD;
  volatile uint32_t DHR12LD;
  volatile uint32_t DHR8RD;
  volatile uint32_t DOR1;
  volatile uint32_t DOR2;



} DAC_TypeDef;



 

typedef struct
{
  volatile uint32_t IDCODE;
  volatile uint32_t CR;	
}DBGMCU_TypeDef;



 

typedef struct
{
  volatile uint32_t CCR;
  volatile uint32_t CNDTR;
  volatile uint32_t CPAR;
  volatile uint32_t CMAR;
} DMA_Channel_TypeDef;

typedef struct
{
  volatile uint32_t ISR;
  volatile uint32_t IFCR;
} DMA_TypeDef;



 

typedef struct
{
  volatile uint32_t MACCR;
  volatile uint32_t MACFFR;
  volatile uint32_t MACHTHR;
  volatile uint32_t MACHTLR;
  volatile uint32_t MACMIIAR;
  volatile uint32_t MACMIIDR;
  volatile uint32_t MACFCR;
  volatile uint32_t MACVLANTR;              
       uint32_t RESERVED0[2];
  volatile uint32_t MACRWUFFR;              
  volatile uint32_t MACPMTCSR;
       uint32_t RESERVED1[2];
  volatile uint32_t MACSR;                  
  volatile uint32_t MACIMR;
  volatile uint32_t MACA0HR;
  volatile uint32_t MACA0LR;
  volatile uint32_t MACA1HR;
  volatile uint32_t MACA1LR;
  volatile uint32_t MACA2HR;
  volatile uint32_t MACA2LR;
  volatile uint32_t MACA3HR;
  volatile uint32_t MACA3LR;                
       uint32_t RESERVED2[40];
  volatile uint32_t MMCCR;                  
  volatile uint32_t MMCRIR;
  volatile uint32_t MMCTIR;
  volatile uint32_t MMCRIMR;
  volatile uint32_t MMCTIMR;                
       uint32_t RESERVED3[14];
  volatile uint32_t MMCTGFSCCR;             
  volatile uint32_t MMCTGFMSCCR;
       uint32_t RESERVED4[5];
  volatile uint32_t MMCTGFCR;
       uint32_t RESERVED5[10];
  volatile uint32_t MMCRFCECR;
  volatile uint32_t MMCRFAECR;
       uint32_t RESERVED6[10];
  volatile uint32_t MMCRGUFCR;
       uint32_t RESERVED7[334];
  volatile uint32_t PTPTSCR;
  volatile uint32_t PTPSSIR;
  volatile uint32_t PTPTSHR;
  volatile uint32_t PTPTSLR;
  volatile uint32_t PTPTSHUR;
  volatile uint32_t PTPTSLUR;
  volatile uint32_t PTPTSAR;
  volatile uint32_t PTPTTHR;
  volatile uint32_t PTPTTLR;
       uint32_t RESERVED8[567];
  volatile uint32_t DMABMR;
  volatile uint32_t DMATPDR;
  volatile uint32_t DMARPDR;
  volatile uint32_t DMARDLAR;
  volatile uint32_t DMATDLAR;
  volatile uint32_t DMASR;
  volatile uint32_t DMAOMR;
  volatile uint32_t DMAIER;
  volatile uint32_t DMAMFBOCR;
       uint32_t RESERVED9[9];
  volatile uint32_t DMACHTDR;
  volatile uint32_t DMACHRDR;
  volatile uint32_t DMACHTBAR;
  volatile uint32_t DMACHRBAR;
} ETH_TypeDef;



 

typedef struct
{
  volatile uint32_t IMR;
  volatile uint32_t EMR;
  volatile uint32_t RTSR;
  volatile uint32_t FTSR;
  volatile uint32_t SWIER;
  volatile uint32_t PR;
} EXTI_TypeDef;



 

typedef struct
{
  volatile uint32_t ACR;
  volatile uint32_t KEYR;
  volatile uint32_t OPTKEYR;
  volatile uint32_t SR;
  volatile uint32_t CR;
  volatile uint32_t AR;
  volatile uint32_t RESERVED;
  volatile uint32_t OBR;
  volatile uint32_t WRPR;
#line 923 "..\\app\\inc\\stm32f10x.h"
} FLASH_TypeDef;



 
  
typedef struct
{
  volatile uint16_t RDP;
  volatile uint16_t USER;
  volatile uint16_t Data0;
  volatile uint16_t Data1;
  volatile uint16_t WRP0;
  volatile uint16_t WRP1;
  volatile uint16_t WRP2;
  volatile uint16_t WRP3;
} OB_TypeDef;



 

typedef struct
{
  volatile uint32_t BTCR[8];   
} FSMC_Bank1_TypeDef; 



 
  
typedef struct
{
  volatile uint32_t BWTR[7];
} FSMC_Bank1E_TypeDef;



 
  
typedef struct
{
  volatile uint32_t PCR2;
  volatile uint32_t SR2;
  volatile uint32_t PMEM2;
  volatile uint32_t PATT2;
  uint32_t  RESERVED0;   
  volatile uint32_t ECCR2; 
} FSMC_Bank2_TypeDef;  



 
  
typedef struct
{
  volatile uint32_t PCR3;
  volatile uint32_t SR3;
  volatile uint32_t PMEM3;
  volatile uint32_t PATT3;
  uint32_t  RESERVED0;   
  volatile uint32_t ECCR3; 
} FSMC_Bank3_TypeDef; 



 
  
typedef struct
{
  volatile uint32_t PCR4;
  volatile uint32_t SR4;
  volatile uint32_t PMEM4;
  volatile uint32_t PATT4;
  volatile uint32_t PIO4; 
} FSMC_Bank4_TypeDef; 



 

typedef struct
{
  volatile uint32_t CRL;
  volatile uint32_t CRH;
  volatile uint32_t IDR;
  volatile uint32_t ODR;
  volatile uint32_t BSRR;
  volatile uint32_t BRR;
  volatile uint32_t LCKR;
} GPIO_TypeDef;



 

typedef struct
{
  volatile uint32_t EVCR;
  volatile uint32_t MAPR;
  volatile uint32_t EXTICR[4];
  uint32_t RESERVED0;
  volatile uint32_t MAPR2;  
} AFIO_TypeDef;


 

typedef struct
{
  volatile uint16_t CR1;
  uint16_t  RESERVED0;
  volatile uint16_t CR2;
  uint16_t  RESERVED1;
  volatile uint16_t OAR1;
  uint16_t  RESERVED2;
  volatile uint16_t OAR2;
  uint16_t  RESERVED3;
  volatile uint16_t DR;
  uint16_t  RESERVED4;
  volatile uint16_t SR1;
  uint16_t  RESERVED5;
  volatile uint16_t SR2;
  uint16_t  RESERVED6;
  volatile uint16_t CCR;
  uint16_t  RESERVED7;
  volatile uint16_t TRISE;
  uint16_t  RESERVED8;
} I2C_TypeDef;



 

typedef struct
{
  volatile uint32_t KR;
  volatile uint32_t PR;
  volatile uint32_t RLR;
  volatile uint32_t SR;
} IWDG_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t CSR;
} PWR_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t CFGR;
  volatile uint32_t CIR;
  volatile uint32_t APB2RSTR;
  volatile uint32_t APB1RSTR;
  volatile uint32_t AHBENR;
  volatile uint32_t APB2ENR;
  volatile uint32_t APB1ENR;
  volatile uint32_t BDCR;
  volatile uint32_t CSR;










} RCC_TypeDef;



 

typedef struct
{
  volatile uint16_t CRH;
  uint16_t  RESERVED0;
  volatile uint16_t CRL;
  uint16_t  RESERVED1;
  volatile uint16_t PRLH;
  uint16_t  RESERVED2;
  volatile uint16_t PRLL;
  uint16_t  RESERVED3;
  volatile uint16_t DIVH;
  uint16_t  RESERVED4;
  volatile uint16_t DIVL;
  uint16_t  RESERVED5;
  volatile uint16_t CNTH;
  uint16_t  RESERVED6;
  volatile uint16_t CNTL;
  uint16_t  RESERVED7;
  volatile uint16_t ALRH;
  uint16_t  RESERVED8;
  volatile uint16_t ALRL;
  uint16_t  RESERVED9;
} RTC_TypeDef;



 

typedef struct
{
  volatile uint32_t POWER;
  volatile uint32_t CLKCR;
  volatile uint32_t ARG;
  volatile uint32_t CMD;
  volatile const uint32_t RESPCMD;
  volatile const uint32_t RESP1;
  volatile const uint32_t RESP2;
  volatile const uint32_t RESP3;
  volatile const uint32_t RESP4;
  volatile uint32_t DTIMER;
  volatile uint32_t DLEN;
  volatile uint32_t DCTRL;
  volatile const uint32_t DCOUNT;
  volatile const uint32_t STA;
  volatile uint32_t ICR;
  volatile uint32_t MASK;
  uint32_t  RESERVED0[2];
  volatile const uint32_t FIFOCNT;
  uint32_t  RESERVED1[13];
  volatile uint32_t FIFO;
} SDIO_TypeDef;



 

typedef struct
{
  volatile uint16_t CR1;
  uint16_t  RESERVED0;
  volatile uint16_t CR2;
  uint16_t  RESERVED1;
  volatile uint16_t SR;
  uint16_t  RESERVED2;
  volatile uint16_t DR;
  uint16_t  RESERVED3;
  volatile uint16_t CRCPR;
  uint16_t  RESERVED4;
  volatile uint16_t RXCRCR;
  uint16_t  RESERVED5;
  volatile uint16_t TXCRCR;
  uint16_t  RESERVED6;
  volatile uint16_t I2SCFGR;
  uint16_t  RESERVED7;
  volatile uint16_t I2SPR;
  uint16_t  RESERVED8;  
} SPI_TypeDef;



 

typedef struct
{
  volatile uint16_t CR1;
  uint16_t  RESERVED0;
  volatile uint16_t CR2;
  uint16_t  RESERVED1;
  volatile uint16_t SMCR;
  uint16_t  RESERVED2;
  volatile uint16_t DIER;
  uint16_t  RESERVED3;
  volatile uint16_t SR;
  uint16_t  RESERVED4;
  volatile uint16_t EGR;
  uint16_t  RESERVED5;
  volatile uint16_t CCMR1;
  uint16_t  RESERVED6;
  volatile uint16_t CCMR2;
  uint16_t  RESERVED7;
  volatile uint16_t CCER;
  uint16_t  RESERVED8;
  volatile uint16_t CNT;
  uint16_t  RESERVED9;
  volatile uint16_t PSC;
  uint16_t  RESERVED10;
  volatile uint16_t ARR;
  uint16_t  RESERVED11;
  volatile uint16_t RCR;
  uint16_t  RESERVED12;
  volatile uint16_t CCR1;
  uint16_t  RESERVED13;
  volatile uint16_t CCR2;
  uint16_t  RESERVED14;
  volatile uint16_t CCR3;
  uint16_t  RESERVED15;
  volatile uint16_t CCR4;
  uint16_t  RESERVED16;
  volatile uint16_t BDTR;
  uint16_t  RESERVED17;
  volatile uint16_t DCR;
  uint16_t  RESERVED18;
  volatile uint16_t DMAR;
  uint16_t  RESERVED19;
} TIM_TypeDef;



 
 
typedef struct
{
  volatile uint16_t SR;
  uint16_t  RESERVED0;
  volatile uint16_t DR;
  uint16_t  RESERVED1;
  volatile uint16_t BRR;
  uint16_t  RESERVED2;
  volatile uint16_t CR1;
  uint16_t  RESERVED3;
  volatile uint16_t CR2;
  uint16_t  RESERVED4;
  volatile uint16_t CR3;
  uint16_t  RESERVED5;
  volatile uint16_t GTPR;
  uint16_t  RESERVED6;
} USART_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t CFR;
  volatile uint32_t SR;
} WWDG_TypeDef;



 
  


 











 




#line 1315 "..\\app\\inc\\stm32f10x.h"

#line 1338 "..\\app\\inc\\stm32f10x.h"



#line 1357 "..\\app\\inc\\stm32f10x.h"




















 
  


   

#line 1457 "..\\app\\inc\\stm32f10x.h"



 



 
  
  

 
    
 
 
 

 
 
 
 
 

 



 



 


 
 
 
 
 

 











 
#line 1518 "..\\app\\inc\\stm32f10x.h"




 





 
 
 
 
 

 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 





 



 






 
 
 
 
 

 
#line 1694 "..\\app\\inc\\stm32f10x.h"

#line 1701 "..\\app\\inc\\stm32f10x.h"

 
 








 








 






#line 1737 "..\\app\\inc\\stm32f10x.h"

 











 











 













 






#line 1853 "..\\app\\inc\\stm32f10x.h"




#line 1873 "..\\app\\inc\\stm32f10x.h"

 





#line 1886 "..\\app\\inc\\stm32f10x.h"

 
#line 1905 "..\\app\\inc\\stm32f10x.h"

#line 1914 "..\\app\\inc\\stm32f10x.h"

 
#line 1922 "..\\app\\inc\\stm32f10x.h"



















#line 1947 "..\\app\\inc\\stm32f10x.h"












 













#line 1979 "..\\app\\inc\\stm32f10x.h"





#line 1993 "..\\app\\inc\\stm32f10x.h"

#line 2000 "..\\app\\inc\\stm32f10x.h"

#line 2010 "..\\app\\inc\\stm32f10x.h"











 


















#line 2046 "..\\app\\inc\\stm32f10x.h"

 
#line 2054 "..\\app\\inc\\stm32f10x.h"



















#line 2079 "..\\app\\inc\\stm32f10x.h"












 













#line 2111 "..\\app\\inc\\stm32f10x.h"





#line 2125 "..\\app\\inc\\stm32f10x.h"

#line 2132 "..\\app\\inc\\stm32f10x.h"

#line 2142 "..\\app\\inc\\stm32f10x.h"











 








 








   
#line 2181 "..\\app\\inc\\stm32f10x.h"

#line 2276 "..\\app\\inc\\stm32f10x.h"

#line 2303 "..\\app\\inc\\stm32f10x.h"
 
 
 
 
 
 

 




































































 




































































 
#line 2465 "..\\app\\inc\\stm32f10x.h"

 
#line 2483 "..\\app\\inc\\stm32f10x.h"

 
#line 2501 "..\\app\\inc\\stm32f10x.h"

#line 2518 "..\\app\\inc\\stm32f10x.h"

 
#line 2536 "..\\app\\inc\\stm32f10x.h"

 
#line 2555 "..\\app\\inc\\stm32f10x.h"

 

 






 
#line 2582 "..\\app\\inc\\stm32f10x.h"






 








 









 








 








 









 










 




#line 2657 "..\\app\\inc\\stm32f10x.h"

 










#line 2688 "..\\app\\inc\\stm32f10x.h"

 





 
#line 2703 "..\\app\\inc\\stm32f10x.h"

 
#line 2712 "..\\app\\inc\\stm32f10x.h"

   
#line 2721 "..\\app\\inc\\stm32f10x.h"

 
#line 2730 "..\\app\\inc\\stm32f10x.h"

 





 
#line 2745 "..\\app\\inc\\stm32f10x.h"

 
#line 2754 "..\\app\\inc\\stm32f10x.h"

   
#line 2763 "..\\app\\inc\\stm32f10x.h"

 
#line 2772 "..\\app\\inc\\stm32f10x.h"

 





 
#line 2787 "..\\app\\inc\\stm32f10x.h"

 
#line 2796 "..\\app\\inc\\stm32f10x.h"

   
#line 2805 "..\\app\\inc\\stm32f10x.h"

 
#line 2814 "..\\app\\inc\\stm32f10x.h"

 





 
#line 2829 "..\\app\\inc\\stm32f10x.h"

 
#line 2838 "..\\app\\inc\\stm32f10x.h"

   
#line 2847 "..\\app\\inc\\stm32f10x.h"

 
#line 2856 "..\\app\\inc\\stm32f10x.h"

#line 2865 "..\\app\\inc\\stm32f10x.h"

#line 2874 "..\\app\\inc\\stm32f10x.h"

#line 2884 "..\\app\\inc\\stm32f10x.h"

 
 
 
 
 

 





 


 


 




 
 
 
 
 

 
#line 2948 "..\\app\\inc\\stm32f10x.h"

 
#line 2983 "..\\app\\inc\\stm32f10x.h"

 
#line 3018 "..\\app\\inc\\stm32f10x.h"

 
#line 3053 "..\\app\\inc\\stm32f10x.h"

 
#line 3088 "..\\app\\inc\\stm32f10x.h"

 





 





 





 





 





 





 





 





 






 
#line 3155 "..\\app\\inc\\stm32f10x.h"

 



 









 
#line 3179 "..\\app\\inc\\stm32f10x.h"




 




 
#line 3195 "..\\app\\inc\\stm32f10x.h"

 





 
#line 3217 "..\\app\\inc\\stm32f10x.h"

 
 





 
#line 3232 "..\\app\\inc\\stm32f10x.h"
 
#line 3239 "..\\app\\inc\\stm32f10x.h"

 




 






 


 


 


 
 
 
 
 

 
#line 3288 "..\\app\\inc\\stm32f10x.h"

 
#line 3310 "..\\app\\inc\\stm32f10x.h"

 
#line 3332 "..\\app\\inc\\stm32f10x.h"

 
#line 3354 "..\\app\\inc\\stm32f10x.h"

 
#line 3376 "..\\app\\inc\\stm32f10x.h"

 
#line 3398 "..\\app\\inc\\stm32f10x.h"

 
 
 
 
 

 
#line 3434 "..\\app\\inc\\stm32f10x.h"

 
#line 3464 "..\\app\\inc\\stm32f10x.h"

 
#line 3474 "..\\app\\inc\\stm32f10x.h"















 
#line 3498 "..\\app\\inc\\stm32f10x.h"















 
#line 3522 "..\\app\\inc\\stm32f10x.h"















 
#line 3546 "..\\app\\inc\\stm32f10x.h"















 
#line 3570 "..\\app\\inc\\stm32f10x.h"















 
#line 3594 "..\\app\\inc\\stm32f10x.h"















 
#line 3618 "..\\app\\inc\\stm32f10x.h"















 


 


 


 


 


 


 


 


 


 



 


 


 



 


 


 


 



 


 


 


 


 
 
 
 
 

 






 
#line 3719 "..\\app\\inc\\stm32f10x.h"

#line 3728 "..\\app\\inc\\stm32f10x.h"















  
 
#line 3751 "..\\app\\inc\\stm32f10x.h"


















 








































 


















































 


 


 


 


 


 


 
#line 3886 "..\\app\\inc\\stm32f10x.h"

#line 3893 "..\\app\\inc\\stm32f10x.h"

#line 3900 "..\\app\\inc\\stm32f10x.h"

#line 3907 "..\\app\\inc\\stm32f10x.h"







 
#line 3921 "..\\app\\inc\\stm32f10x.h"

#line 3928 "..\\app\\inc\\stm32f10x.h"

#line 3935 "..\\app\\inc\\stm32f10x.h"

#line 3942 "..\\app\\inc\\stm32f10x.h"

#line 3949 "..\\app\\inc\\stm32f10x.h"

#line 3956 "..\\app\\inc\\stm32f10x.h"

 
#line 3964 "..\\app\\inc\\stm32f10x.h"

#line 3971 "..\\app\\inc\\stm32f10x.h"

#line 3978 "..\\app\\inc\\stm32f10x.h"

#line 3985 "..\\app\\inc\\stm32f10x.h"

#line 3992 "..\\app\\inc\\stm32f10x.h"

#line 3999 "..\\app\\inc\\stm32f10x.h"

 
#line 4007 "..\\app\\inc\\stm32f10x.h"

#line 4014 "..\\app\\inc\\stm32f10x.h"

#line 4021 "..\\app\\inc\\stm32f10x.h"

#line 4028 "..\\app\\inc\\stm32f10x.h"





 


 


 


 


 



 
 
 
 
 

 









































 



 


 


 


 


 


 


 



 



 



 


 


 



 
 
 
 
 
 





 






 


 
#line 4170 "..\\app\\inc\\stm32f10x.h"

 
#line 4180 "..\\app\\inc\\stm32f10x.h"

 


 


 
 
 
 
 

 
















 









#line 4228 "..\\app\\inc\\stm32f10x.h"

 

























 
#line 4271 "..\\app\\inc\\stm32f10x.h"

 
#line 4285 "..\\app\\inc\\stm32f10x.h"

 
#line 4295 "..\\app\\inc\\stm32f10x.h"

 




























 





















 




























 





















 
#line 4414 "..\\app\\inc\\stm32f10x.h"

 


 


 


 


 


 


 


 


 
#line 4449 "..\\app\\inc\\stm32f10x.h"





#line 4460 "..\\app\\inc\\stm32f10x.h"

 
#line 4468 "..\\app\\inc\\stm32f10x.h"

#line 4475 "..\\app\\inc\\stm32f10x.h"

 


 
 
 
 
 

 




 
#line 4497 "..\\app\\inc\\stm32f10x.h"

 


 


 


 


 


 


 


 


 
 
 
 
 

 


 





 


 



 
 
 
 
 

 
#line 4559 "..\\app\\inc\\stm32f10x.h"



 
#line 4571 "..\\app\\inc\\stm32f10x.h"







 


 
 
 
 
 

 











#line 4609 "..\\app\\inc\\stm32f10x.h"

 











#line 4632 "..\\app\\inc\\stm32f10x.h"

 











#line 4655 "..\\app\\inc\\stm32f10x.h"

 











#line 4678 "..\\app\\inc\\stm32f10x.h"

 








































 








































 








































 








































 


































 


































 


































 


































 



























 



























 



























 
#line 5075 "..\\app\\inc\\stm32f10x.h"

 
#line 5084 "..\\app\\inc\\stm32f10x.h"

 
#line 5093 "..\\app\\inc\\stm32f10x.h"

 
#line 5104 "..\\app\\inc\\stm32f10x.h"

#line 5114 "..\\app\\inc\\stm32f10x.h"

#line 5124 "..\\app\\inc\\stm32f10x.h"

#line 5134 "..\\app\\inc\\stm32f10x.h"

 
#line 5145 "..\\app\\inc\\stm32f10x.h"

#line 5155 "..\\app\\inc\\stm32f10x.h"

#line 5165 "..\\app\\inc\\stm32f10x.h"

#line 5175 "..\\app\\inc\\stm32f10x.h"

 
#line 5186 "..\\app\\inc\\stm32f10x.h"

#line 5196 "..\\app\\inc\\stm32f10x.h"

#line 5206 "..\\app\\inc\\stm32f10x.h"

#line 5216 "..\\app\\inc\\stm32f10x.h"

 
#line 5227 "..\\app\\inc\\stm32f10x.h"

#line 5237 "..\\app\\inc\\stm32f10x.h"

#line 5247 "..\\app\\inc\\stm32f10x.h"

#line 5257 "..\\app\\inc\\stm32f10x.h"

 
#line 5268 "..\\app\\inc\\stm32f10x.h"

#line 5278 "..\\app\\inc\\stm32f10x.h"

#line 5288 "..\\app\\inc\\stm32f10x.h"

#line 5298 "..\\app\\inc\\stm32f10x.h"

 
#line 5309 "..\\app\\inc\\stm32f10x.h"

#line 5319 "..\\app\\inc\\stm32f10x.h"

#line 5329 "..\\app\\inc\\stm32f10x.h"

#line 5339 "..\\app\\inc\\stm32f10x.h"

 
#line 5350 "..\\app\\inc\\stm32f10x.h"

#line 5360 "..\\app\\inc\\stm32f10x.h"

#line 5370 "..\\app\\inc\\stm32f10x.h"

#line 5380 "..\\app\\inc\\stm32f10x.h"

 


 


 
 
 
 
 

 




 












 


 






#line 5428 "..\\app\\inc\\stm32f10x.h"

 


 


 


 


 


 


 


 


 
















 


 
#line 5498 "..\\app\\inc\\stm32f10x.h"

 
#line 5513 "..\\app\\inc\\stm32f10x.h"

 
#line 5539 "..\\app\\inc\\stm32f10x.h"

 


 


 
 
 
 
 

 
 























 























 























 























 























 























 























 























 
 
#line 5760 "..\\app\\inc\\stm32f10x.h"

 
#line 5772 "..\\app\\inc\\stm32f10x.h"

 






 
#line 5789 "..\\app\\inc\\stm32f10x.h"



     


 
 


 


 


 


 


 


 


 


 

 


 


 


 


 


 


 


 


 

 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 

 


 


 


 


 


 


 


 


 

 


#line 5933 "..\\app\\inc\\stm32f10x.h"



 


#line 5945 "..\\app\\inc\\stm32f10x.h"



 


#line 5957 "..\\app\\inc\\stm32f10x.h"



 


#line 5969 "..\\app\\inc\\stm32f10x.h"



 


#line 5981 "..\\app\\inc\\stm32f10x.h"



 


#line 5993 "..\\app\\inc\\stm32f10x.h"



 


#line 6005 "..\\app\\inc\\stm32f10x.h"



 


#line 6017 "..\\app\\inc\\stm32f10x.h"



 

 


#line 6031 "..\\app\\inc\\stm32f10x.h"



 


#line 6043 "..\\app\\inc\\stm32f10x.h"



 


#line 6055 "..\\app\\inc\\stm32f10x.h"



 


#line 6067 "..\\app\\inc\\stm32f10x.h"



 


#line 6079 "..\\app\\inc\\stm32f10x.h"



 


#line 6091 "..\\app\\inc\\stm32f10x.h"



 


#line 6103 "..\\app\\inc\\stm32f10x.h"



 


#line 6115 "..\\app\\inc\\stm32f10x.h"



 


#line 6127 "..\\app\\inc\\stm32f10x.h"



 


#line 6139 "..\\app\\inc\\stm32f10x.h"



 


#line 6151 "..\\app\\inc\\stm32f10x.h"



 


#line 6163 "..\\app\\inc\\stm32f10x.h"



 


#line 6175 "..\\app\\inc\\stm32f10x.h"



 


#line 6187 "..\\app\\inc\\stm32f10x.h"



 


#line 6199 "..\\app\\inc\\stm32f10x.h"



 


#line 6211 "..\\app\\inc\\stm32f10x.h"



 
 
 
 
 

 
 
#line 6231 "..\\app\\inc\\stm32f10x.h"

 
#line 6242 "..\\app\\inc\\stm32f10x.h"

 
#line 6260 "..\\app\\inc\\stm32f10x.h"











 





 





 
#line 6298 "..\\app\\inc\\stm32f10x.h"

 












 
#line 6319 "..\\app\\inc\\stm32f10x.h"

 
 






 




 





 





 






 




 





 





 






   




 





 





 





 




 





 





 





 




 





 





 
 


 
#line 6459 "..\\app\\inc\\stm32f10x.h"

 
#line 6476 "..\\app\\inc\\stm32f10x.h"

 
#line 6493 "..\\app\\inc\\stm32f10x.h"

 
#line 6510 "..\\app\\inc\\stm32f10x.h"

 
#line 6544 "..\\app\\inc\\stm32f10x.h"

 
#line 6578 "..\\app\\inc\\stm32f10x.h"

 
#line 6612 "..\\app\\inc\\stm32f10x.h"

 
#line 6646 "..\\app\\inc\\stm32f10x.h"

 
#line 6680 "..\\app\\inc\\stm32f10x.h"

 
#line 6714 "..\\app\\inc\\stm32f10x.h"

 
#line 6748 "..\\app\\inc\\stm32f10x.h"

 
#line 6782 "..\\app\\inc\\stm32f10x.h"

 
#line 6816 "..\\app\\inc\\stm32f10x.h"

 
#line 6850 "..\\app\\inc\\stm32f10x.h"

 
#line 6884 "..\\app\\inc\\stm32f10x.h"

 
#line 6918 "..\\app\\inc\\stm32f10x.h"

 
#line 6952 "..\\app\\inc\\stm32f10x.h"

 
#line 6986 "..\\app\\inc\\stm32f10x.h"

 
#line 7020 "..\\app\\inc\\stm32f10x.h"

 
#line 7054 "..\\app\\inc\\stm32f10x.h"

 
#line 7088 "..\\app\\inc\\stm32f10x.h"

 
#line 7122 "..\\app\\inc\\stm32f10x.h"

 
#line 7156 "..\\app\\inc\\stm32f10x.h"

 
#line 7190 "..\\app\\inc\\stm32f10x.h"

 
#line 7224 "..\\app\\inc\\stm32f10x.h"

 
#line 7258 "..\\app\\inc\\stm32f10x.h"

 
#line 7292 "..\\app\\inc\\stm32f10x.h"

 
#line 7326 "..\\app\\inc\\stm32f10x.h"

 
#line 7360 "..\\app\\inc\\stm32f10x.h"

 
#line 7394 "..\\app\\inc\\stm32f10x.h"

 
#line 7428 "..\\app\\inc\\stm32f10x.h"

 
#line 7462 "..\\app\\inc\\stm32f10x.h"

 
 
 
 
 

 









#line 7489 "..\\app\\inc\\stm32f10x.h"

 
#line 7497 "..\\app\\inc\\stm32f10x.h"

 
#line 7507 "..\\app\\inc\\stm32f10x.h"

 


 


 


 


 





















 




 
 
 
 
 

 
#line 7568 "..\\app\\inc\\stm32f10x.h"

 
#line 7577 "..\\app\\inc\\stm32f10x.h"







 



#line 7598 "..\\app\\inc\\stm32f10x.h"



 



 


 
#line 7623 "..\\app\\inc\\stm32f10x.h"

 
#line 7633 "..\\app\\inc\\stm32f10x.h"

 




 


 
 
 
 
 

 
#line 7659 "..\\app\\inc\\stm32f10x.h"

 


 



 
#line 7683 "..\\app\\inc\\stm32f10x.h"

 
#line 7692 "..\\app\\inc\\stm32f10x.h"







 
#line 7712 "..\\app\\inc\\stm32f10x.h"

 
#line 7723 "..\\app\\inc\\stm32f10x.h"



 
 
 
 
 

 


#line 7752 "..\\app\\inc\\stm32f10x.h"

 









#line 7786 "..\\app\\inc\\stm32f10x.h"

 
 
 
 
 

 









 


 


 





 
#line 7826 "..\\app\\inc\\stm32f10x.h"

 


 









 


 

 



 



 



 



 



 



 



 



#line 8290 "..\\app\\inc\\stm32f10x.h"



 

 

  

#line 1 "..\\app\\stm32f10x_conf.h"



















 

 



 
 
#line 1 "..\\app\\inc\\stm32f10x_adc.h"




















 

 







 
#line 1 "..\\app\\inc\\stm32f10x.h"







































 



 



 
    
#line 8330 "..\\app\\inc\\stm32f10x.h"



 

  

 

 
#line 33 "..\\app\\inc\\stm32f10x_adc.h"



 



 



 



 

typedef struct
{
  uint32_t ADC_Mode;                      

 

  FunctionalState ADC_ScanConvMode;       

 

  FunctionalState ADC_ContinuousConvMode; 

 

  uint32_t ADC_ExternalTrigConv;          

 

  uint32_t ADC_DataAlign;                 
 

  uint8_t ADC_NbrOfChannel;               

 
}ADC_InitTypeDef;


 



 










 

#line 104 "..\\app\\inc\\stm32f10x_adc.h"

#line 115 "..\\app\\inc\\stm32f10x_adc.h"


 



 

#line 129 "..\\app\\inc\\stm32f10x_adc.h"




#line 139 "..\\app\\inc\\stm32f10x_adc.h"

#line 154 "..\\app\\inc\\stm32f10x_adc.h"


 



 







 



 

#line 192 "..\\app\\inc\\stm32f10x_adc.h"




#line 205 "..\\app\\inc\\stm32f10x_adc.h"


 



 

#line 229 "..\\app\\inc\\stm32f10x_adc.h"


 



 

















#line 266 "..\\app\\inc\\stm32f10x_adc.h"


 



 

#line 282 "..\\app\\inc\\stm32f10x_adc.h"


 



 

#line 297 "..\\app\\inc\\stm32f10x_adc.h"

#line 305 "..\\app\\inc\\stm32f10x_adc.h"


 



 











 



 

#line 338 "..\\app\\inc\\stm32f10x_adc.h"


 



 





 



 





 



 





 



 





  




 




 



 





 



 





 



 



 



 



 

void ADC_DeInit(ADC_TypeDef* ADCx);
void ADC_Init(ADC_TypeDef* ADCx, ADC_InitTypeDef* ADC_InitStruct);
void ADC_StructInit(ADC_InitTypeDef* ADC_InitStruct);
void ADC_Cmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_DMACmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_ITConfig(ADC_TypeDef* ADCx, uint16_t ADC_IT, FunctionalState NewState);
void ADC_ResetCalibration(ADC_TypeDef* ADCx);
FlagStatus ADC_GetResetCalibrationStatus(ADC_TypeDef* ADCx);
void ADC_StartCalibration(ADC_TypeDef* ADCx);
FlagStatus ADC_GetCalibrationStatus(ADC_TypeDef* ADCx);
void ADC_SoftwareStartConvCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
FlagStatus ADC_GetSoftwareStartConvStatus(ADC_TypeDef* ADCx);
void ADC_DiscModeChannelCountConfig(ADC_TypeDef* ADCx, uint8_t Number);
void ADC_DiscModeCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_RegularChannelConfig(ADC_TypeDef* ADCx, uint8_t ADC_Channel, uint8_t Rank, uint8_t ADC_SampleTime);
void ADC_ExternalTrigConvCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
uint16_t ADC_GetConversionValue(ADC_TypeDef* ADCx);
uint32_t ADC_GetDualModeConversionValue(void);
void ADC_AutoInjectedConvCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_InjectedDiscModeCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_ExternalTrigInjectedConvConfig(ADC_TypeDef* ADCx, uint32_t ADC_ExternalTrigInjecConv);
void ADC_ExternalTrigInjectedConvCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_SoftwareStartInjectedConvCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
FlagStatus ADC_GetSoftwareStartInjectedConvCmdStatus(ADC_TypeDef* ADCx);
void ADC_InjectedChannelConfig(ADC_TypeDef* ADCx, uint8_t ADC_Channel, uint8_t Rank, uint8_t ADC_SampleTime);
void ADC_InjectedSequencerLengthConfig(ADC_TypeDef* ADCx, uint8_t Length);
void ADC_SetInjectedOffset(ADC_TypeDef* ADCx, uint8_t ADC_InjectedChannel, uint16_t Offset);
uint16_t ADC_GetInjectedConversionValue(ADC_TypeDef* ADCx, uint8_t ADC_InjectedChannel);
void ADC_AnalogWatchdogCmd(ADC_TypeDef* ADCx, uint32_t ADC_AnalogWatchdog);
void ADC_AnalogWatchdogThresholdsConfig(ADC_TypeDef* ADCx, uint16_t HighThreshold, uint16_t LowThreshold);
void ADC_AnalogWatchdogSingleChannelConfig(ADC_TypeDef* ADCx, uint8_t ADC_Channel);
void ADC_TempSensorVrefintCmd(FunctionalState NewState);
FlagStatus ADC_GetFlagStatus(ADC_TypeDef* ADCx, uint8_t ADC_FLAG);
void ADC_ClearFlag(ADC_TypeDef* ADCx, uint8_t ADC_FLAG);
ITStatus ADC_GetITStatus(ADC_TypeDef* ADCx, uint16_t ADC_IT);
void ADC_ClearITPendingBit(ADC_TypeDef* ADCx, uint16_t ADC_IT);









 



 



 

 
#line 29 "..\\app\\stm32f10x_conf.h"






#line 1 "..\\app\\inc\\stm32f10x_dma.h"




















 

 







 
#line 33 "..\\app\\inc\\stm32f10x_dma.h"



 



 



 



 

typedef struct
{
  uint32_t DMA_PeripheralBaseAddr;  

  uint32_t DMA_MemoryBaseAddr;      

  uint32_t DMA_DIR;                
 

  uint32_t DMA_BufferSize;         

 

  uint32_t DMA_PeripheralInc;      
 

  uint32_t DMA_MemoryInc;          
 

  uint32_t DMA_PeripheralDataSize; 
 

  uint32_t DMA_MemoryDataSize;     
 

  uint32_t DMA_Mode;               


 

  uint32_t DMA_Priority;           
 

  uint32_t DMA_M2M;                
 
}DMA_InitTypeDef;



 



 

#line 107 "..\\app\\inc\\stm32f10x_dma.h"



 







 



 







 



 







 



 

#line 154 "..\\app\\inc\\stm32f10x_dma.h"


 



 

#line 168 "..\\app\\inc\\stm32f10x_dma.h"


 



 






 



 

#line 195 "..\\app\\inc\\stm32f10x_dma.h"


 



 







 



 






#line 248 "..\\app\\inc\\stm32f10x_dma.h"

#line 269 "..\\app\\inc\\stm32f10x_dma.h"



#line 296 "..\\app\\inc\\stm32f10x_dma.h"



 



 
#line 332 "..\\app\\inc\\stm32f10x_dma.h"

#line 353 "..\\app\\inc\\stm32f10x_dma.h"



#line 380 "..\\app\\inc\\stm32f10x_dma.h"


 



 





 



 



 



 



 

void DMA_DeInit(DMA_Channel_TypeDef* DMAy_Channelx);
void DMA_Init(DMA_Channel_TypeDef* DMAy_Channelx, DMA_InitTypeDef* DMA_InitStruct);
void DMA_StructInit(DMA_InitTypeDef* DMA_InitStruct);
void DMA_Cmd(DMA_Channel_TypeDef* DMAy_Channelx, FunctionalState NewState);
void DMA_ITConfig(DMA_Channel_TypeDef* DMAy_Channelx, uint32_t DMA_IT, FunctionalState NewState);
void DMA_SetCurrDataCounter(DMA_Channel_TypeDef* DMAy_Channelx, uint16_t DataNumber); 
uint16_t DMA_GetCurrDataCounter(DMA_Channel_TypeDef* DMAy_Channelx);
FlagStatus DMA_GetFlagStatus(uint32_t DMAy_FLAG);
void DMA_ClearFlag(uint32_t DMAy_FLAG);
ITStatus DMA_GetITStatus(uint32_t DMAy_IT);
void DMA_ClearITPendingBit(uint32_t DMAy_IT);








 



 



 

 
#line 36 "..\\app\\stm32f10x_conf.h"



#line 1 "..\\app\\inc\\stm32f10x_gpio.h"




















 

 







 
#line 33 "..\\app\\inc\\stm32f10x_gpio.h"



 



 



 

#line 53 "..\\app\\inc\\stm32f10x_gpio.h"
                                     


 

typedef enum
{ 
  GPIO_Speed_10MHz = 1,
  GPIO_Speed_2MHz, 
  GPIO_Speed_50MHz
}GPIOSpeed_TypeDef;





 

typedef enum
{ GPIO_Mode_AIN = 0x0,
  GPIO_Mode_IN_FLOATING = 0x04,
  GPIO_Mode_IPD = 0x28,
  GPIO_Mode_IPU = 0x48,
  GPIO_Mode_Out_OD = 0x14,
  GPIO_Mode_Out_PP = 0x10,
  GPIO_Mode_AF_OD = 0x1C,
  GPIO_Mode_AF_PP = 0x18
}GPIOMode_TypeDef;








 

typedef struct
{
  uint16_t GPIO_Pin;             
 

  GPIOSpeed_TypeDef GPIO_Speed;  
 

  GPIOMode_TypeDef GPIO_Mode;    
 
}GPIO_InitTypeDef;




 

typedef enum
{ Bit_RESET = 0,
  Bit_SET
}BitAction;





 



 



 

#line 144 "..\\app\\inc\\stm32f10x_gpio.h"



#line 163 "..\\app\\inc\\stm32f10x_gpio.h"



 



 

#line 204 "..\\app\\inc\\stm32f10x_gpio.h"







#line 217 "..\\app\\inc\\stm32f10x_gpio.h"






#line 245 "..\\app\\inc\\stm32f10x_gpio.h"
                              


  



 

#line 266 "..\\app\\inc\\stm32f10x_gpio.h"

#line 274 "..\\app\\inc\\stm32f10x_gpio.h"



 



 

#line 299 "..\\app\\inc\\stm32f10x_gpio.h"

#line 316 "..\\app\\inc\\stm32f10x_gpio.h"



 



  








                                                 


 



 



 



 

void GPIO_DeInit(GPIO_TypeDef* GPIOx);
void GPIO_AFIODeInit(void);
void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_InitTypeDef* GPIO_InitStruct);
void GPIO_StructInit(GPIO_InitTypeDef* GPIO_InitStruct);
uint8_t GPIO_ReadInputDataBit(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);
uint16_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx);
uint8_t GPIO_ReadOutputDataBit(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);
uint16_t GPIO_ReadOutputData(GPIO_TypeDef* GPIOx);
void GPIO_SetBits(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);
void GPIO_ResetBits(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);
void GPIO_WriteBit(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin, BitAction BitVal);
void GPIO_Write(GPIO_TypeDef* GPIOx, uint16_t PortVal);
void GPIO_PinLockConfig(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);
void GPIO_EventOutputConfig(uint8_t GPIO_PortSource, uint8_t GPIO_PinSource);
void GPIO_EventOutputCmd(FunctionalState NewState);
void GPIO_PinRemapConfig(uint32_t GPIO_Remap, FunctionalState NewState);
void GPIO_EXTILineConfig(uint8_t GPIO_PortSource, uint8_t GPIO_PinSource);
void GPIO_ETH_MediaInterfaceConfig(uint32_t GPIO_ETH_MediaInterface);








 



 



 

 
#line 40 "..\\app\\stm32f10x_conf.h"



#line 1 "..\\app\\inc\\stm32f10x_rcc.h"




















 

 
#line 715 "..\\app\\inc\\stm32f10x_rcc.h"


 



 



  

 
#line 44 "..\\app\\stm32f10x_conf.h"




#line 1 "..\\app\\inc\\stm32f10x_usart.h"




















 

 







 
#line 33 "..\\app\\inc\\stm32f10x_usart.h"



 



  



  



  
  
typedef struct
{
  uint32_t USART_BaudRate;            


 

  uint16_t USART_WordLength;          
 

  uint16_t USART_StopBits;            
 

  uint16_t USART_Parity;              




 
 
  uint16_t USART_Mode;                
 

  uint16_t USART_HardwareFlowControl; 

 
} USART_InitTypeDef;



  
  
typedef struct
{

  uint16_t USART_Clock;   
 

  uint16_t USART_CPOL;    
 

  uint16_t USART_CPHA;    
 

  uint16_t USART_LastBit; 

 
} USART_ClockInitTypeDef;



  



  
  
















  
  


                                    




  



  
  
#line 146 "..\\app\\inc\\stm32f10x_usart.h"


  



  
  
#line 160 "..\\app\\inc\\stm32f10x_usart.h"


  



  
  





  



  
#line 187 "..\\app\\inc\\stm32f10x_usart.h"


  



  






  



 
  






  



 







 



 







  



 
  
#line 264 "..\\app\\inc\\stm32f10x_usart.h"


 



 







  



 







 



 
  







 



 







  



 

#line 336 "..\\app\\inc\\stm32f10x_usart.h"
                              
#line 344 "..\\app\\inc\\stm32f10x_usart.h"



  



  



  



  



 

void USART_DeInit(USART_TypeDef* USARTx);
void USART_Init(USART_TypeDef* USARTx, USART_InitTypeDef* USART_InitStruct);
void USART_StructInit(USART_InitTypeDef* USART_InitStruct);
void USART_ClockInit(USART_TypeDef* USARTx, USART_ClockInitTypeDef* USART_ClockInitStruct);
void USART_ClockStructInit(USART_ClockInitTypeDef* USART_ClockInitStruct);
void USART_Cmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_ITConfig(USART_TypeDef* USARTx, uint16_t USART_IT, FunctionalState NewState);
void USART_DMACmd(USART_TypeDef* USARTx, uint16_t USART_DMAReq, FunctionalState NewState);
void USART_SetAddress(USART_TypeDef* USARTx, uint8_t USART_Address);
void USART_WakeUpConfig(USART_TypeDef* USARTx, uint16_t USART_WakeUp);
void USART_ReceiverWakeUpCmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_LINBreakDetectLengthConfig(USART_TypeDef* USARTx, uint16_t USART_LINBreakDetectLength);
void USART_LINCmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_SendData(USART_TypeDef* USARTx, uint16_t Data);
uint16_t USART_ReceiveData(USART_TypeDef* USARTx);
void USART_SendBreak(USART_TypeDef* USARTx);
void USART_SetGuardTime(USART_TypeDef* USARTx, uint8_t USART_GuardTime);
void USART_SetPrescaler(USART_TypeDef* USARTx, uint8_t USART_Prescaler);
void USART_SmartCardCmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_SmartCardNACKCmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_HalfDuplexCmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_OverSampling8Cmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_OneBitMethodCmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_IrDAConfig(USART_TypeDef* USARTx, uint16_t USART_IrDAMode);
void USART_IrDACmd(USART_TypeDef* USARTx, FunctionalState NewState);
FlagStatus USART_GetFlagStatus(USART_TypeDef* USARTx, uint16_t USART_FLAG);
void USART_ClearFlag(USART_TypeDef* USARTx, uint16_t USART_FLAG);
ITStatus USART_GetITStatus(USART_TypeDef* USARTx, uint16_t USART_IT);
void USART_ClearITPendingBit(USART_TypeDef* USARTx, uint16_t USART_IT);








  



  



  

 
#line 49 "..\\app\\stm32f10x_conf.h"

#line 1 "..\\app\\inc\\misc.h"




















 

 







 
#line 33 "..\\app\\inc\\misc.h"



 



 



 



 

typedef struct
{
  uint8_t NVIC_IRQChannel;                    


 

  uint8_t NVIC_IRQChannelPreemptionPriority;  

 

  uint8_t NVIC_IRQChannelSubPriority;         

 

  FunctionalState NVIC_IRQChannelCmd;         

    
} NVIC_InitTypeDef;
 


 



 
























 



 



 



 







 



 

#line 133 "..\\app\\inc\\misc.h"


 



 

#line 151 "..\\app\\inc\\misc.h"















 



 







 



 



 



 



 

void NVIC_PriorityGroupConfig(uint32_t NVIC_PriorityGroup);
void NVIC_Init(NVIC_InitTypeDef* NVIC_InitStruct);
void NVIC_SetVectorTable(uint32_t NVIC_VectTab, uint32_t Offset);
void NVIC_SystemLPConfig(uint8_t LowPowerMode, FunctionalState NewState);
void SysTick_CLKSourceConfig(uint32_t SysTick_CLKSource);









 



 



 

 
#line 51 "..\\app\\stm32f10x_conf.h"
 

 
 

 
 

 








 

 
  void assert_failed(uint8_t* file, uint32_t line);






 
#line 8301 "..\\app\\inc\\stm32f10x.h"




 

















 









 

  

 

 
#line 33 "..\\app\\inc\\stm32f10x_rcc.h"



 



 



 

typedef struct
{
  uint32_t SYSCLK_Frequency;   
  uint32_t HCLK_Frequency;     
  uint32_t PCLK1_Frequency;    
  uint32_t PCLK2_Frequency;    
  uint32_t ADCCLK_Frequency;   
}RCC_ClocksTypeDef;



 



 



 









  



 



#line 94 "..\\app\\inc\\stm32f10x_rcc.h"



  



 
#line 126 "..\\app\\inc\\stm32f10x_rcc.h"

#line 141 "..\\app\\inc\\stm32f10x_rcc.h"


 



 
#line 175 "..\\app\\inc\\stm32f10x_rcc.h"


 




 
#line 196 "..\\app\\inc\\stm32f10x_rcc.h"


 

#line 283 "..\\app\\inc\\stm32f10x_rcc.h"




 

#line 295 "..\\app\\inc\\stm32f10x_rcc.h"


 



 

#line 317 "..\\app\\inc\\stm32f10x_rcc.h"


  



 

#line 333 "..\\app\\inc\\stm32f10x_rcc.h"


 



 

#line 347 "..\\app\\inc\\stm32f10x_rcc.h"

#line 364 "..\\app\\inc\\stm32f10x_rcc.h"




 




 








 
#line 396 "..\\app\\inc\\stm32f10x_rcc.h"


#line 423 "..\\app\\inc\\stm32f10x_rcc.h"
  



 

#line 435 "..\\app\\inc\\stm32f10x_rcc.h"


 



 








 



 

#line 462 "..\\app\\inc\\stm32f10x_rcc.h"


 



 







#line 489 "..\\app\\inc\\stm32f10x_rcc.h"


 



 

#line 518 "..\\app\\inc\\stm32f10x_rcc.h"




  



 

#line 553 "..\\app\\inc\\stm32f10x_rcc.h"
 




 



 







#line 586 "..\\app\\inc\\stm32f10x_rcc.h"



 



 

#line 606 "..\\app\\inc\\stm32f10x_rcc.h"

#line 625 "..\\app\\inc\\stm32f10x_rcc.h"




 



 



 



 



 

void RCC_DeInit(void);
void RCC_HSEConfig(uint32_t RCC_HSE);
ErrorStatus RCC_WaitForHSEStartUp(void);
void RCC_AdjustHSICalibrationValue(uint8_t HSICalibrationValue);
void RCC_HSICmd(FunctionalState NewState);
void RCC_PLLConfig(uint32_t RCC_PLLSource, uint32_t RCC_PLLMul);
void RCC_PLLCmd(FunctionalState NewState);





#line 666 "..\\app\\inc\\stm32f10x_rcc.h"

void RCC_SYSCLKConfig(uint32_t RCC_SYSCLKSource);
uint8_t RCC_GetSYSCLKSource(void);
void RCC_HCLKConfig(uint32_t RCC_SYSCLK);
void RCC_PCLK1Config(uint32_t RCC_HCLK);
void RCC_PCLK2Config(uint32_t RCC_HCLK);
void RCC_ITConfig(uint8_t RCC_IT, FunctionalState NewState);


 void RCC_USBCLKConfig(uint32_t RCC_USBCLKSource);




void RCC_ADCCLKConfig(uint32_t RCC_PCLK2);






void RCC_LSEConfig(uint8_t RCC_LSE);
void RCC_LSICmd(FunctionalState NewState);
void RCC_RTCCLKConfig(uint32_t RCC_RTCCLKSource);
void RCC_RTCCLKCmd(FunctionalState NewState);
void RCC_GetClocksFreq(RCC_ClocksTypeDef* RCC_Clocks);
void RCC_AHBPeriphClockCmd(uint32_t RCC_AHBPeriph, FunctionalState NewState);
void RCC_APB2PeriphClockCmd(uint32_t RCC_APB2Periph, FunctionalState NewState);
void RCC_APB1PeriphClockCmd(uint32_t RCC_APB1Periph, FunctionalState NewState);





void RCC_APB2PeriphResetCmd(uint32_t RCC_APB2Periph, FunctionalState NewState);
void RCC_APB1PeriphResetCmd(uint32_t RCC_APB1Periph, FunctionalState NewState);
void RCC_BackupResetCmd(FunctionalState NewState);
void RCC_ClockSecuritySystemCmd(FunctionalState NewState);
void RCC_MCOConfig(uint8_t RCC_MCO);
FlagStatus RCC_GetFlagStatus(uint8_t RCC_FLAG);
void RCC_ClearFlag(void);
ITStatus RCC_GetITStatus(uint8_t RCC_IT);
void RCC_ClearITPendingBit(uint8_t RCC_IT);








 



 



  

 
#line 6 "..\\app\\ucos-main.c"
extern unsigned int const  OSCfg_TickRate_Hz;

 
void SysTick_init(void)
{
   
  SysTick_Config(SystemCoreClock/OSCfg_TickRate_Hz);
  
   
	if (SysTick_Config(SystemCoreClock/OSCfg_TickRate_Hz))	
	{ 
		  
		while (1);
	}
}




const unsigned int  VEC_OFFSET=0;


const unsigned int Default_Hse_Value=72000000;




















 
  
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





 

                                                                 





                                                                 









 

#line 52 "..\\app\\ucos-main.c"
#line 1 "..\\app\\app\\app.h"



#line 5 "..\\app\\app\\app.h"
#line 6 "..\\app\\app\\app.h"

 





 





 
void Task_Start(void *p_arg);
void Task_Sem(void *p_arg);
void Task_PRODUCT(void *p_arg);
void Task_CUSTOMER(void *p_arg);

#line 53 "..\\app\\ucos-main.c"

OS_TCB	StartUp_TCB;		   					          
CPU_STK	StartUp_Stk[200];		





 
int main(void)
{
  OS_ERR err;	

     
	OSInit(&err);		                                        
  
	 
	OSTaskCreate((OS_TCB     *)&StartUp_TCB,                
               (CPU_CHAR   *)"StartUp",		                
               (OS_TASK_PTR )Task_Start, 	                
               (void       *)0,			                      
               (OS_PRIO     )3,			      
               (CPU_STK    *)&StartUp_Stk[0],	            
               (CPU_STK_SIZE)200/10,	  
               (CPU_STK_SIZE)200,			  
               (OS_MSG_QTY  )0,			                      
               (OS_TICK     )0,			                      
               (void       *)0,			                      
               (OS_OPT      )((OS_OPT)(0x0001u) | 
                              (OS_OPT)(0x0002u)),	      
               (OS_ERR     *)&err);		                    
	
   
  OSStart(&err);                                       
}

 

