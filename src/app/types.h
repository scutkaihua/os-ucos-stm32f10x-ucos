
#ifndef __TYPES_H__
#define __TYPES_H__

//-------- <<< Use Configuration Wizard in Context Menu >>> -----------------

//<h> /*链表*/
//</h>
struct list_node
{
    struct list_node *next;                          /**< point to next node. */
    struct list_node *prev;                          /**< point to prev node. */
};
typedef struct list_node list_t;                  /**< Type for lists. */


//<h> /*常用的数据类*/
//</h>
#ifndef S8
#define S8 signed char
#endif

#ifndef U8
#define U8 unsigned char
#endif

#ifndef S16
#define S16 signed short
#endif

#ifndef U16
#define U16 unsigned short
#endif

#ifndef S32
#define S32 signed int
#endif

#ifndef U32
#define U32 unsigned int
#endif

#ifndef S64
#define S64 signed long long
#endif

#ifndef U64
#define U64 unsigned long long
#endif

#ifndef FALSE
#define FALSE 0
#endif

#ifndef TRUE
#define TRUE (!FALSE)
#endif

#ifndef BOOL
#define BOOL unsigned char
#endif


#ifndef BIT
#define BIT unsigned char
#endif

/* 单精度浮点数（32位长度） */
#ifndef fp32
#define fp32 float
#endif

/* 双精度浮点数（64位长度） */
#ifndef fp64
#define fp64 double
#endif


/* Device Types*/
typedef long                            base_t;      /**< Nbit CPU related date type */
typedef unsigned int                    ubase_t;     /**< Nbit unsigned CPU related data type */

typedef base_t                       		err_t;       //错误码
typedef ubase_t                      	  size_t;      //大小
typedef base_t													off_t;       //偏移


#ifndef NULL
#define NULL		0
#endif

#ifndef null
#define null  0
#endif


//<h>/*位操作*/
//</h>
#define BitMask(bit)			(1 << (bit))
#define BitAnti(bit)			(~(BitMask(bit)))

#define BitSet(n, bit)			((n) |= BitMask(bit))				//n.bit = 1
#define BitClr(n, bit)			((n) &= BitAnti(bit))       //n.bit = 0
#define BitRev(n, bit)			((n) ^= BitMask(bit))       //n.bit = !n.bit
#define BitGet(n, bit)  		(((n) >> (bit)) & 1)        //n.bit

#define Array_Size(a)				(sizeof(a) / sizeof(a[0]))  //数组大小
#define Array_EndAddr(a)		(&a[ARR_SIZE(a)])       		//数组最后地址

//<h>/*字节操作*/
#define ByteGet(n,offset)   ((U8)(0xFF & (n>>(offset * 8)))) //n[offset] 字节,n 为变量

//<h>/*IO状态类型*/
//</h>
typedef enum {
    IO_ON = 1,    //设置状态
    IO_OFF = 0,  //无效状态
} IO_State;


//<h>/*由父节点找子节点*/
// father 		:成员指针
// child_type :子节点类型
// member     :成员名称
// father 是 类型child_type->member 的成员指针，get_child 就是由father指针，找到它的子节点 child_type 的入口
#define get_child(father, child_type,member)\
    ((child_type *)((unsigned long)(father) - (unsigned long)(&((child_type *)0)->member)))


//</h>


#endif



