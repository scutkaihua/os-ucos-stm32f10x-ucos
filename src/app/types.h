
#ifndef __TYPES_H__
#define __TYPES_H__

//-------- <<< Use Configuration Wizard in Context Menu >>> -----------------

//<h> /*����*/
//</h>
struct list_node
{
    struct list_node *next;                          /**< point to next node. */
    struct list_node *prev;                          /**< point to prev node. */
};
typedef struct list_node list_t;                  /**< Type for lists. */


//<h> /*���õ�������*/
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

/* �����ȸ�������32λ���ȣ� */
#ifndef fp32
#define fp32 float
#endif

/* ˫���ȸ�������64λ���ȣ� */
#ifndef fp64
#define fp64 double
#endif


/* Device Types*/
typedef long                            base_t;      /**< Nbit CPU related date type */
typedef unsigned int                    ubase_t;     /**< Nbit unsigned CPU related data type */

typedef base_t                       		err_t;       //������
typedef ubase_t                      	  size_t;      //��С
typedef base_t													off_t;       //ƫ��


#ifndef NULL
#define NULL		0
#endif

#ifndef null
#define null  0
#endif


//<h>/*λ����*/
//</h>
#define BitMask(bit)			(1 << (bit))
#define BitAnti(bit)			(~(BitMask(bit)))

#define BitSet(n, bit)			((n) |= BitMask(bit))				//n.bit = 1
#define BitClr(n, bit)			((n) &= BitAnti(bit))       //n.bit = 0
#define BitRev(n, bit)			((n) ^= BitMask(bit))       //n.bit = !n.bit
#define BitGet(n, bit)  		(((n) >> (bit)) & 1)        //n.bit

#define Array_Size(a)				(sizeof(a) / sizeof(a[0]))  //�����С
#define Array_EndAddr(a)		(&a[ARR_SIZE(a)])       		//��������ַ

//<h>/*�ֽڲ���*/
#define ByteGet(n,offset)   ((U8)(0xFF & (n>>(offset * 8)))) //n[offset] �ֽ�,n Ϊ����

//<h>/*IO״̬����*/
//</h>
typedef enum {
    IO_ON = 1,    //����״̬
    IO_OFF = 0,  //��Ч״̬
} IO_State;


//<h>/*�ɸ��ڵ����ӽڵ�*/
// father 		:��Աָ��
// child_type :�ӽڵ�����
// member     :��Ա����
// father �� ����child_type->member �ĳ�Աָ�룬get_child ������fatherָ�룬�ҵ������ӽڵ� child_type �����
#define get_child(father, child_type,member)\
    ((child_type *)((unsigned long)(father) - (unsigned long)(&((child_type *)0)->member)))


//</h>


#endif



