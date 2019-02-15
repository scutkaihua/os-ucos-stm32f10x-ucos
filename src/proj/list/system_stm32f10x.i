#line 1 "..\\cpu\\system_stm32f10x.c"


















































 



 



   
  


 

#line 1 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"







































 



 



 
    






  


 
  


 

#line 75 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"


















 










 











            
#line 124 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"





 






 
#line 145 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"



 



 



 
#line 164 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"




 
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

#line 223 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

#line 244 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

#line 272 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

#line 298 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"


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


#line 383 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

#line 428 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

#line 474 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"
} IRQn_Type;



 

#line 1 "..\\app\\inc\\core_cm3.h"
 







 

























 
























 




 


 

 













#line 110 "..\\app\\inc\\core_cm3.h"



 







#line 146 "..\\app\\inc\\core_cm3.h"

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



 



#line 148 "..\\app\\inc\\core_cm3.h"
#line 1 "..\\app\\inc\\core_cmInstr.h"
 







 

























 






 



 


 









 







 







 






 








 










 










 












 









 

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










 










 









 
#line 209 "..\\app\\inc\\core_cmInstr.h"








 











 









 









 











 











 











 







 










 










 










 

__attribute__((section(".rrx_text"))) static __inline __asm uint32_t __RRX(uint32_t value)
{
  rrx r0, r0
  bx lr
}









 









 









 









 









 









 





#line 913 "..\\app\\inc\\core_cmInstr.h"

   

#line 149 "..\\app\\inc\\core_cm3.h"
#line 1 "..\\app\\inc\\core_cmFunc.h"
 







 

























 






 



 


 





 
 






 
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








 
static __inline void __set_BASEPRI_MAX(uint32_t basePri)
{
  register uint32_t __regBasePriMax      __asm("basepri_max");
  __regBasePriMax = (basePri & 0xff);
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




#line 321 "..\\app\\inc\\core_cmFunc.h"


#line 661 "..\\app\\inc\\core_cmFunc.h"

 

#line 150 "..\\app\\inc\\core_cm3.h"
















 
#line 188 "..\\app\\inc\\core_cm3.h"

 






 
#line 204 "..\\app\\inc\\core_cm3.h"

 












 


 





 


 
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
    uint32_t _reserved1:30;               
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

 















 






























 




#line 470 "..\\app\\inc\\core_cm3.h"

 





















 









 


















 










































 









 









 















 






 


 
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

 



 



 












 






 



 





















 



 





















 



 



 


















 






   


#line 1181 "..\\app\\inc\\core_cm3.h"






 


 
typedef struct
{
  volatile uint32_t DHCSR;                    
  volatile  uint32_t DCRSR;                    
  volatile uint32_t DCRDR;                    
  volatile uint32_t DEMCR;                    
} CoreDebug_Type;

 




































 






 







































 






 

 
#line 1301 "..\\app\\inc\\core_cm3.h"

#line 1310 "..\\app\\inc\\core_cm3.h"






 










 

 



 




 










 
static __inline void NVIC_SetPriorityGrouping(uint32_t PriorityGroup)
{
  uint32_t reg_value;
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);              

  reg_value  =  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR;                                                    
  reg_value &= ~((uint32_t)((0xFFFFUL << 16) | (7UL << 8)));              
  reg_value  =  (reg_value                                   |
                ((uint32_t)0x5FAUL << 16) |
                (PriorityGroupTmp << 8)                       );               
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR =  reg_value;
}







 
static __inline uint32_t NVIC_GetPriorityGrouping(void)
{
  return ((uint32_t)((((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR & (7UL << 8)) >> 8));
}







 
static __inline void NVIC_EnableIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[(((uint32_t)(int32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL));
}







 
static __inline void NVIC_DisableIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICER[(((uint32_t)(int32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL));
}











 
static __inline uint32_t NVIC_GetPendingIRQ(IRQn_Type IRQn)
{
  return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[(((uint32_t)(int32_t)IRQn) >> 5UL)] & (1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL))) != 0UL) ? 1UL : 0UL));
}







 
static __inline void NVIC_SetPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[(((uint32_t)(int32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL));
}







 
static __inline void NVIC_ClearPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICPR[(((uint32_t)(int32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL));
}










 
static __inline uint32_t NVIC_GetActive(IRQn_Type IRQn)
{
  return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IABR[(((uint32_t)(int32_t)IRQn) >> 5UL)] & (1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL))) != 0UL) ? 1UL : 0UL));
}










 
static __inline void NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
  if((int32_t)IRQn < 0) {
    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[(((uint32_t)(int32_t)IRQn) & 0xFUL)-4UL] = (uint8_t)((priority << (8 - 4)) & (uint32_t)0xFFUL);
  }
  else {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[((uint32_t)(int32_t)IRQn)]               = (uint8_t)((priority << (8 - 4)) & (uint32_t)0xFFUL);
  }
}












 
static __inline uint32_t NVIC_GetPriority(IRQn_Type IRQn)
{

  if((int32_t)IRQn < 0) {
    return(((uint32_t)((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[(((uint32_t)(int32_t)IRQn) & 0xFUL)-4UL] >> (8 - 4)));
  }
  else {
    return(((uint32_t)((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[((uint32_t)(int32_t)IRQn)]               >> (8 - 4)));
  }
}













 
static __inline uint32_t NVIC_EncodePriority (uint32_t PriorityGroup, uint32_t PreemptPriority, uint32_t SubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);    
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(4)) ? (uint32_t)(4) : (uint32_t)(7UL - PriorityGroupTmp);
  SubPriorityBits     = ((PriorityGroupTmp + (uint32_t)(4)) < (uint32_t)7UL) ? (uint32_t)0UL : (uint32_t)((PriorityGroupTmp - 7UL) + (uint32_t)(4));

  return (
           ((PreemptPriority & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL)) << SubPriorityBits) |
           ((SubPriority     & (uint32_t)((1UL << (SubPriorityBits    )) - 1UL)))
         );
}













 
static __inline void NVIC_DecodePriority (uint32_t Priority, uint32_t PriorityGroup, uint32_t* pPreemptPriority, uint32_t* pSubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);    
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(4)) ? (uint32_t)(4) : (uint32_t)(7UL - PriorityGroupTmp);
  SubPriorityBits     = ((PriorityGroupTmp + (uint32_t)(4)) < (uint32_t)7UL) ? (uint32_t)0UL : (uint32_t)((PriorityGroupTmp - 7UL) + (uint32_t)(4));

  *pPreemptPriority = (Priority >> SubPriorityBits) & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL);
  *pSubPriority     = (Priority                   ) & (uint32_t)((1UL << (SubPriorityBits    )) - 1UL);
}





 
static __inline void NVIC_SystemReset(void)
{
  do { __schedule_barrier(); __dsb(0xF); __schedule_barrier(); } while (0);                                                          
 
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR  = (uint32_t)((0x5FAUL << 16)    |
                           (((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR & (7UL << 8)) |
                            (1UL << 2)    );          
  do { __schedule_barrier(); __dsb(0xF); __schedule_barrier(); } while (0);                                                           
  while(1) { __nop(); }                                              
}

 



 




 

















 
static __inline uint32_t SysTick_Config(uint32_t ticks)
{
  if ((ticks - 1UL) > (0xFFFFFFUL )) { return (1UL); }     

  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->LOAD  = (uint32_t)(ticks - 1UL);                          
  NVIC_SetPriority (SysTick_IRQn, (1UL << 4) - 1UL);  
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->VAL   = 0UL;                                              
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL  = (1UL << 2) |
                   (1UL << 1)   |
                   (1UL );                          
  return (0UL);                                                      
}



 



 




 

extern volatile int32_t ITM_RxBuffer;                     












 
static __inline uint32_t ITM_SendChar (uint32_t ch)
{
  if (((((ITM_Type *) (0xE0000000UL) )->TCR & (1UL )) != 0UL) &&       
      ((((ITM_Type *) (0xE0000000UL) )->TER & 1UL               ) != 0UL)   )      
  {
    while (((ITM_Type *) (0xE0000000UL) )->PORT[0].u32 == 0UL) { __nop(); }
    ((ITM_Type *) (0xE0000000UL) )->PORT[0].u8 = (uint8_t)ch;
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

 










#line 481 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"
#line 1 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\system_stm32f10x.h"



















 



 



   
  


 









 



 




 

extern uint32_t SystemCoreClock;           



 



 



 



 



 



 
  
extern void SystemInit(void);
extern void SystemCoreClockUpdate(void);


 









 
  


   
 
#line 482 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"
#line 483 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"



   

 
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
#line 922 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"
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



 
  


 











 




#line 1314 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

#line 1337 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"



#line 1356 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"




















 
  


   

#line 1456 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"



 



 
  
  

 
    
 
 
 

 
 
 
 
 

 



 



 


 
 
 
 
 

 











 
#line 1517 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"




 





 
 
 
 
 

 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 





 



 






 
 
 
 
 

 
#line 1693 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

#line 1700 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
 








 








 






#line 1736 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 











 











 













 






#line 1852 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"




#line 1872 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 





#line 1885 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 1904 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

#line 1913 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 1921 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"



















#line 1946 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"












 













#line 1978 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"





#line 1992 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

#line 1999 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

#line 2009 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"











 


















#line 2045 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 2053 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"



















#line 2078 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"












 













#line 2110 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"





#line 2124 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

#line 2131 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

#line 2141 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"











 








 








   
#line 2180 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

#line 2275 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

#line 2302 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"
 
 
 
 
 
 

 




































































 




































































 
#line 2464 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 2482 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 2500 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

#line 2517 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 2535 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 2554 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 

 






 
#line 2581 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"






 








 









 








 








 









 










 




#line 2656 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 










#line 2687 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 





 
#line 2702 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 2711 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

   
#line 2720 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 2729 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 





 
#line 2744 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 2753 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

   
#line 2762 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 2771 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 





 
#line 2786 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 2795 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

   
#line 2804 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 2813 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 





 
#line 2828 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 2837 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

   
#line 2846 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 2855 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

#line 2864 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

#line 2873 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

#line 2883 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
 
 
 
 

 





 


 


 




 
 
 
 
 

 
#line 2947 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 2982 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 3017 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 3052 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 3087 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 





 





 





 





 





 





 





 





 






 
#line 3154 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 



 









 
#line 3178 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"




 




 
#line 3194 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 





 
#line 3216 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
 





 
#line 3231 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"
 
#line 3238 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 




 






 


 


 


 
 
 
 
 

 
#line 3287 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 3309 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 3331 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 3353 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 3375 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 3397 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
 
 
 
 

 
#line 3433 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 3463 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 3473 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"















 
#line 3497 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"















 
#line 3521 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"















 
#line 3545 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"















 
#line 3569 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"















 
#line 3593 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"















 
#line 3617 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"















 


 


 


 


 


 


 


 


 


 



 


 


 



 


 


 


 



 


 


 


 


 
 
 
 
 

 






 
#line 3718 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

#line 3727 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"















  
 
#line 3750 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"


















 








































 


















































 


 


 


 


 


 


 
#line 3885 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

#line 3892 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

#line 3899 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

#line 3906 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"







 
#line 3920 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

#line 3927 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

#line 3934 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

#line 3941 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

#line 3948 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

#line 3955 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 3963 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

#line 3970 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

#line 3977 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

#line 3984 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

#line 3991 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

#line 3998 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 4006 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

#line 4013 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

#line 4020 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

#line 4027 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"





 


 


 


 


 



 
 
 
 
 

 









































 



 


 


 


 


 


 


 



 



 



 


 


 



 
 
 
 
 
 





 






 


 
#line 4169 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 4179 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 


 


 
 
 
 
 

 
















 









#line 4227 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 

























 
#line 4270 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 4284 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 4294 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 




























 





















 




























 





















 
#line 4413 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 


 


 


 


 


 


 


 


 
#line 4448 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"





#line 4459 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 4467 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

#line 4474 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 


 
 
 
 
 

 




 
#line 4496 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 


 


 


 


 


 


 


 


 
 
 
 
 

 


 





 


 



 
 
 
 
 

 
#line 4558 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"



 
#line 4570 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"







 


 
 
 
 
 

 











#line 4608 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 











#line 4631 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 











#line 4654 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 











#line 4677 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 








































 








































 








































 








































 


































 


































 


































 


































 



























 



























 



























 
#line 5074 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 5083 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 5092 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 5103 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

#line 5113 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

#line 5123 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

#line 5133 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 5144 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

#line 5154 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

#line 5164 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

#line 5174 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 5185 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

#line 5195 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

#line 5205 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

#line 5215 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 5226 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

#line 5236 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

#line 5246 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

#line 5256 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 5267 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

#line 5277 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

#line 5287 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

#line 5297 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 5308 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

#line 5318 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

#line 5328 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

#line 5338 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 5349 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

#line 5359 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

#line 5369 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

#line 5379 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 


 


 
 
 
 
 

 




 












 


 






#line 5427 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 


 


 


 


 


 


 


 


 
















 


 
#line 5497 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 5512 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 5538 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 


 


 
 
 
 
 

 
 























 























 























 























 























 























 























 























 
 
#line 5759 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 5771 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 






 
#line 5788 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"



     


 
 


 


 


 


 


 


 


 


 

 


 


 


 


 


 


 


 


 

 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 

 


 


 


 


 


 


 


 


 

 


#line 5932 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"



 


#line 5944 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"



 


#line 5956 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"



 


#line 5968 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"



 


#line 5980 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"



 


#line 5992 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"



 


#line 6004 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"



 


#line 6016 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"



 

 


#line 6030 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"



 


#line 6042 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"



 


#line 6054 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"



 


#line 6066 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"



 


#line 6078 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"



 


#line 6090 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"



 


#line 6102 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"



 


#line 6114 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"



 


#line 6126 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"



 


#line 6138 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"



 


#line 6150 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"



 


#line 6162 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"



 


#line 6174 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"



 


#line 6186 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"



 


#line 6198 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"



 


#line 6210 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"



 
 
 
 
 

 
 
#line 6230 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 6241 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 6259 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"











 





 





 
#line 6297 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 












 
#line 6318 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
 






 




 





 





 






 




 





 





 






   




 





 





 





 




 





 





 





 




 





 





 
 


 
#line 6458 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 6475 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 6492 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 6509 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 6543 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 6577 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 6611 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 6645 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 6679 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 6713 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 6747 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 6781 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 6815 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 6849 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 6883 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 6917 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 6951 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 6985 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 7019 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 7053 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 7087 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 7121 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 7155 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 7189 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 7223 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 7257 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 7291 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 7325 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 7359 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 7393 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 7427 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 7461 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
 
 
 
 

 









#line 7488 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 7496 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 7506 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 


 


 


 


 





















 




 
 
 
 
 

 
#line 7567 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 7576 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"







 



#line 7597 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"



 



 


 
#line 7622 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 7632 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 




 


 
 
 
 
 

 
#line 7658 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 


 



 
#line 7682 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 7691 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"







 
#line 7711 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
#line 7722 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"



 
 
 
 
 

 


#line 7751 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 









#line 7785 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 
 
 
 
 

 









 


 


 





 
#line 7825 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"

 


 









 


 

 



 



 



 



 



 



 



 



#line 8289 "D:\\Keil\\ARM\\Inc\\ST\\STM32F10x\\stm32f10x.h"



 

 

  







 

















 









 

  

 

 
#line 66 "..\\cpu\\system_stm32f10x.c"



 



 



 



 






















 
    




 
  
 
 
 





  

 



  
 






 



 



 



 



 
#line 162 "..\\cpu\\system_stm32f10x.c"
  uint32_t SystemCoreClock         = 72000000;         




volatile const uint8_t AHBPrescTable[16] = {0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 3, 4, 6, 7, 8, 9};


 



 

static void SetSysClock(void);

#line 189 "..\\cpu\\system_stm32f10x.c"
  static void SetSysClockTo72(void);








 



 








 
void SystemInit (void)
{
   
   
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CR |= (uint32_t)0x00000001;

   

  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR &= (uint32_t)0xF8FF0000;



  
   
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CR &= (uint32_t)0xFEF6FFFF;

   
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CR &= (uint32_t)0xFFFBFFFF;

   
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR &= (uint32_t)0xFF80FFFF;

#line 250 "..\\cpu\\system_stm32f10x.c"
   
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CIR = 0x009F0000;

    






   
   
  SetSysClock();




  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->VTOR = ((uint32_t)0x08000000) | 0x0;  

}



































 
void SystemCoreClockUpdate (void)
{
  uint32_t tmp = 0, pllmull = 0, pllsource = 0;








    
   
  tmp = ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR & ((uint32_t)0x0000000C);
  
  switch (tmp)
  {
    case 0x00:   
      SystemCoreClock = ((uint32_t)8000000);
      break;
    case 0x04:   
      SystemCoreClock = ((uint32_t)8000000);
      break;
    case 0x08:   

       
      pllmull = ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR & ((uint32_t)0x003C0000);
      pllsource = ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR & ((uint32_t)0x00010000);
      

      pllmull = ( pllmull >> 18) + 2;
      
      if (pllsource == 0x00)
      {
         
        SystemCoreClock = (((uint32_t)8000000) >> 1) * pllmull;
      }
      else
      {





         
        if ((((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR & ((uint32_t)0x00020000)) != (uint32_t)RESET)
        { 
          SystemCoreClock = (((uint32_t)8000000) >> 1) * pllmull;
        }
        else
        {
          SystemCoreClock = ((uint32_t)8000000) * pllmull;
        }

      }
#line 400 "..\\cpu\\system_stm32f10x.c"
      break;

    default:
      SystemCoreClock = ((uint32_t)8000000);
      break;
  }
  
   
   
  tmp = AHBPrescTable[((((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR & ((uint32_t)0x000000F0)) >> 4)];
   
  SystemCoreClock >>= tmp;  
}





 
static void SetSysClock(void)
{
#line 432 "..\\cpu\\system_stm32f10x.c"
  SetSysClockTo72();

 
 
  
}






  
#line 491 "..\\cpu\\system_stm32f10x.c"

#line 980 "..\\cpu\\system_stm32f10x.c"






 
static void SetSysClockTo72(void)
{
  volatile uint32_t StartUpCounter = 0, HSEStatus = 0;
  
       
       
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CR |= ((uint32_t)((uint32_t)0x00010000));
 
   
  do
  {
    HSEStatus = ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CR & ((uint32_t)0x00020000);
    StartUpCounter++;  
  } while((HSEStatus == 0) && (StartUpCounter != ((uint16_t)0x0500)));

  if ((((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CR & ((uint32_t)0x00020000)) != RESET)
  {
    HSEStatus = (uint32_t)0x01;
  }
  else
  {
    HSEStatus = (uint32_t)0x00;
  }  

  if (HSEStatus == (uint32_t)0x01)
  {
     
    ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->ACR |= ((uint8_t)0x10);

     
    ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->ACR &= (uint32_t)((uint32_t)~((uint8_t)0x03));
    ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->ACR |= (uint32_t)((uint8_t)0x02);    

 
     
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR |= (uint32_t)((uint32_t)0x00000000);
      
     
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR |= (uint32_t)((uint32_t)0x00000000);
    
     
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR |= (uint32_t)((uint32_t)0x00000400);

#line 1053 "..\\cpu\\system_stm32f10x.c"
     
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR &= (uint32_t)((uint32_t)~(((uint32_t)0x00010000) | ((uint32_t)0x00020000) |
                                        ((uint32_t)0x003C0000)));
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR |= (uint32_t)(((uint32_t)0x00010000) | ((uint32_t)0x001C0000));


     
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CR |= ((uint32_t)0x01000000);

     
    while((((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CR & ((uint32_t)0x02000000)) == 0)
    {
    }
    
     
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR &= (uint32_t)((uint32_t)~(((uint32_t)0x00000003)));
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR |= (uint32_t)((uint32_t)0x00000002);    

     
    while ((((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR & (uint32_t)((uint32_t)0x0000000C)) != (uint32_t)0x08)
    {
    }
  }
  else
  { 
 
  }
}




 



 
  


     
 
