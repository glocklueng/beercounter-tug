
#define _ATMEGA128

#define _SPMCR SPMCSR

/* ATmega128 specific adjustments */
#define _IVREG MCUCR
#define _EIMSK EIMSK

/* Watchdog status register */
#define MCU_STATUS_REGISTER  MCUCSR

/* Generic timer macros */
#define TC0_PRESCALER_1      {TCCR0&=~(_BV(CS02)|_BV(CS01));TCCR0|=_BV(CS00);}
#define TC0_PRESCALER_8      {TCCR0&=~(_BV(CS02)|_BV(CS00));TCCR0|=_BV(CS01);}
#define TC0_PRESCALER_64     {TCCR0&=~(_BV(CS02));TCCR0|=_BV(CS01)|_BV(CS02);}
#define TC0_PRESCALER_128    {TCCR0&=~(_BV(CS01));TCCR0|=_BV(CS00)|_BV(CS02);}
#define TC0_PRESCALER_256    {TCCR0&=~(_BV(CS01)|_BV(CS00));TCCR0|=_BV(CS02);}
#define TC0_PRESCALER_1024   {TCCR0&=~(_BV(CS01));TCCR0|=_BV(CS02)|_BV(CS00);}

#define TC0_MODE_OFF	     {TCCR0&=~(_BV(WGM01)|_BV(WGM00));}
#define TC0_MODE_PWM         {TCCR0&=~(_BV(WGM01));TCCR0|=_BV(WGM00);}
#define TC0_MODE_CTC         {TCCR0&=~(_BV(WGM00));TCCR0|=_BV(WGM01);}
#define TC0_MODE_PWMFAST     {TCCR0|=_BV(WGM01)|_BV(WGM00);}

#define TC0_OUTPUT_COMPARE_NONE   {TCCR0&=~(_BV(COM01)|_BV(COM00));}
#define TC0_OUTPUT_COMPARE_TOGGLE {TCCR0&=~(_BV(COM01));TCCR0|=_BV(COM00);}
#define TC0_OUTPUT_COMPARE_CLEAR  {TCCR0&=~(_BV(COM00));TCCR0|=_BV(COM01);}
#define TC0_OUTPUT_COMPARE_SET    {TCCR0|=_BV(COM01)|_BV(COM00);}

#define TC0_COUNTER_CURRENT  TCNT0
#define TC0_COUNTER_COMPARE  OCR0

#define TC0_INT_COMPARE_ON   TIMSK|=_BV(OCIE0);
#define TC0_INT_COMPARE_OFF  TIMSK&=~_BV(OCIE0);
#define TC0_INT_OVERFLOW_ON  TIMSK|=_BV(TOIE0);
#define TC0_INT_OVERFLOW_OFF TIMSK&=~_BV(TOIE0);

#define TC0_INT_OVERFLOW_TST (TIFR&_BV(TOV0))
#define TC0_INT_OVERFLOW_CLR TIFR=_BV(TOV0);

#define TC0_VECTOR_OVERFLOW  TIMER0_OVF_vect
#define TC0_VECTOR_COMPARE   TIMER0_COMP_vect

#define TC1_PRESCALER_1      {TCCR1B&=~(_BV(CS12)|_BV(CS11));TCCR1B|=_BV(CS10);}
#define TC1_PRESCALER_8      {TCCR1B&=~(_BV(CS12)|_BV(CS10));TCCR1B|=_BV(CS11);}
#define TC1_PRESCALER_64     {TCCR1B&=~(_BV(CS12));TCCR1B|=_BV(CS11)|_BV(CS12);}
#define TC1_PRESCALER_256    {TCCR1B&=~(_BV(CS11)|_BV(CS10));TCCR1B|=_BV(CS12);}
#define TC1_PRESCALER_1024   {TCCR1B&=~(_BV(CS11));TCCR1B|=_BV(CS12)|_BV(CS10);}

#define TC1_MODE_OFF	     {TCCR1A&=~(_BV(WGM11)|_BV(WGM10));TCCR1B&=~(_BV(WGM12));}
#define TC1_MODE_PWM         {TCCR1A&=~(_BV(WGM11));TCCR1A|=_BV(WGM10);TCCR1B&=~(_BV(WGM12));}
#define TC1_MODE_CTC         {TCCR1A&=~(_BV(WGM10));TCCR1A|=_BV(WGM11);TCCR1B&=~(_BV(WGM12));}
#define TC1_MODE_PWMFAST     {TCCR1A|=_BV(WGM11)|_BV(WGM10);TCCR1B&=~(_BV(WGM12));}

#define TC1_OUTPUT_COMPARE_NONE   {TCCR1A&=~(_BV(COM1A1)|_BV(COM1A0));}
#define TC1_OUTPUT_COMPARE_TOGGLE {TCCR1A&=~(_BV(COM1A1));TCCR1A|=_BV(COM1A0);}
#define TC1_OUTPUT_COMPARE_CLEAR  {TCCR1A&=~(_BV(COM1A0));TCCR1A|=_BV(COM1A1);}
#define TC1_OUTPUT_COMPARE_SET    {TCCR1A|=_BV(COM1A1)|_BV(COM1A0);}

#define TC1_COUNTER_CURRENT  TCNT1
#define TC1_COUNTER_COMPARE  OCR1A

#define TC1_INT_COMPARE_ON   TIMSK|=_BV(OCIE1A);
#define TC1_INT_COMPARE_OFF  TIMSK&=~_BV(OCIE1A);
#define TC1_INT_OVERFLOW_ON  TIMSK|=_BV(TOIE1);
#define TC1_INT_OVERFLOW_OFF TIMSK&=~_BV(TOIE1);

#define TC1_INT_OVERFLOW_TST (TIFR&_BV(TOV1))
#define TC1_INT_OVERFLOW_CLR TIFR=_BV(TOV1);

#define TC1_VECTOR_OVERFLOW  TIMER1_OVF_vect
#define TC1_VECTOR_COMPARE   TIMER1_COMPA_vect

#define TC2_PRESCALER_1      {TCCR2&=~(_BV(CS22)|_BV(CS21));TCCR2|=_BV(CS20);}
#define TC2_PRESCALER_8      {TCCR2&=~(_BV(CS22)|_BV(CS20));TCCR2|=_BV(CS21);}
#define TC2_PRESCALER_64     {TCCR2&=~(_BV(CS22));TCCR2|=_BV(CS21)|_BV(CS22);}
#define TC2_PRESCALER_256    {TCCR2&=~(_BV(CS21)|_BV(CS20));TCCR2|=_BV(CS22);}
#define TC2_PRESCALER_1024   {TCCR2&=~(_BV(CS21));TCCR2|=_BV(CS22)|_BV(CS20);}

#define TC2_MODE_OFF	     {TCCR2&=~(_BV(WGM21)|_BV(WGM20));}
#define TC2_MODE_PWM         {TCCR2&=~(_BV(WGM21));TCCR2|=_BV(WGM20);}
#define TC2_MODE_CTC         {TCCR2&=~(_BV(WGM20));TCCR2|=_BV(WGM21);}
#define TC2_MODE_PWMFAST     {TCCR2|=_BV(WGM21)|_BV(WGM20);}

#define TC2_OUTPUT_COMPARE_NONE   {TCCR2&=~(_BV(COM21)|_BV(COM20));}
#define TC2_OUTPUT_COMPARE_TOGGLE {TCCR2&=~(_BV(COM21));TCCR2|=_BV(COM20);}
#define TC2_OUTPUT_COMPARE_CLEAR  {TCCR2&=~(_BV(COM20));TCCR2|=_BV(COM21);}
#define TC2_OUTPUT_COMPARE_SET    {TCCR2|=_BV(COM21)|_BV(COM20);}

#define TC2_COUNTER_CURRENT  TCNT2
#define TC2_COUNTER_COMPARE  OCR2

#define TC2_INT_COMPARE_ON   TIMSK|=_BV(OCIE2);
#define TC2_INT_COMPARE_OFF  TIMSK&=~_BV(OCIE2);
#define TC2_INT_OVERFLOW_ON  TIMSK|=_BV(TOIE2);
#define TC2_INT_OVERFLOW_OFF TIMSK&=~_BV(TOIE2);

#define TC2_INT_OVERFLOW_TST (TIFR&_BV(TOV2))
#define TC2_INT_OVERFLOW_CLR TIFR=_BV(TOV2);
#
#define TC2_VECTOR_OVERFLOW  TIMER2_OVF_vect
#define TC2_VECTOR_COMPARE   TIMER2_COMP_vect

/* First Asyncronous Timer */
/* Flag for asyncronous operation */
#define TIMER_8_AS_1_ASYNC_ON  {ASSR |= _BV(AS0);}
#define TIMER_8_AS_1_ASYNC_OFF  {ASSR &=~(_BV(AS0));}
/* Prescaler */
#define TIMER_8_AS_1_PRESCALER_1 TC0_PRESCALER_1
#define TIMER_8_AS_1_PRESCALER_8 TC0_PRESCALER_8
#define TIMER_8_AS_1_PRESCALER_32 TC0_PRESCALER_32
#define TIMER_8_AS_1_PRESCALER_64 TC0_PRESCALER_64
#define TIMER_8_AS_1_PRESCALER_128 TC0_PRESCALER_128
#define TIMER_8_AS_1_PRESCALER_256 TC0_PRESCALER_512
#define TIMER_8_AS_1_PRESCALER_1024 TC0_PRESCALER_1024
/* PWM Settings */
#define TIMER_8_AS_1_MODE_OFF TC0_MODE_OFF
#define TIMER_8_AS_1_MODE_PWM TC0_MODE_PWM
#define TIMER_8_AS_1_MODE_CTC TC0_MODE_CTC
#define TIMER_8_AS_1_MODE_PWMFAST TC0_MODE_PWMFAST
/* Output Compare */
#define TIMER_8_AS_1_OUTPUT_COMPARE_NONE TC0_OUTPUT_COMPARE_NONE
#define TIMER_8_AS_1_OUTPUT_COMPARE_TOGGLE TC0_OUTPUT_COMPARE_TOGGLE
#define TIMER_8_AS_1_OUTPUT_COMPARE_CLEAR TC0_OUTPUT_COMPARE_CLEAR
#define TIMER_8_AS_1_OUTPUT_COMPARE_SET TC0_OUTPUT_COMPARE_SET
/* Timer Register */
#define TIMER_8_AS_1_COUNTER_CURRENT TC0_COUNTER_CURRENT
#define TIMER_8_AS_1_COUNTER_COMPARE TC0_COUNTER_COMPARE
/* Interrupts / Signals */
#define TIMER_8_AS_1_INT_COMPARE_ON TC0_INT_COMPARE_ON
#define TIMER_8_AS_1_INT_COMPARE_OFF TC0_INT_COMPARE_OFF
#define TIMER_8_AS_1_INT_OVERFLOW_ON TC0_INT_OVERFLOW_ON
#define TIMER_8_AS_1_INT_OVERFLOW_OFF TC0_INT_OVERFLOW_OFF
#define TIMER_8_AS_1_INT_OVERFLOW_TST TC0_INT_OVERFLOW_TST
#define TIMER_8_AS_1_INT_OVERFLOW_CLR TC0_INT_OVERFLOW_CLR
/* Vectors */
#define TIMER_8_AS_1_VECTOR_OVERFLOW TC0_VECTOR_OVERFLOW
#define TIMER_8_AS_1_VECTOR_COMPARE TC0_VECTOR_COMPARE
/* Busy flags */
#define TIMER_8_AS_1_COMPARE_CONTROL_BUSY TCR0UB
#define TIMER_8_AS_1_COUNTER_CURRENT_BUSY TCN0UB
#define TIMER_8_AS_1_COUNTER_CURRENT_BUSY_TST (ASSR&_BV(TIMER_8_AS_1_COUNTER_CURRENT_BUSY))
#define TIMER_8_AS_1_COMPARE_CONTROL_BUSY_TST (ASSR&_BV(TIMER_8_AS_1_COMPARE_CONTROL_BUSY))
/* both tests combined */
#define TIMER_8_AS_1_COUNTER_BUSY_TST (TIMER_8_AS_1_COMPARE_CONTROL_BUSY_TST || TIMER_8_AS_1_COUNTER_CURRENT_BUSY_TST)


/* Timer0 - PWM Melody */
#define _PWM_MELODY_COMP TIMER0_COMP_vect
#define _PWM_MELODY_OCR OCR0
#define _PWM_MELODY_TRCCRA TCCR0
#define _PWM_MELODY_TRCCRB TCCR0
#define _PWM_MELODY_COM1 COM01
#define _PWM_MELODY_COM0 COM00
#define _PWM_MELODY_WGM0 WGM00
#define _PWM_MELODY_CS0 CS00
#define _PWM_MELODY_TIMSK TIMSK
#define _PWM_MELODY_OCIE OCIE0

/* workaround for avr-libc devs not being able to decide how these registers
 * should be named... */
#ifdef SPCR0
    #define _SPCR0 SPCR0
#else
    #define _SPCR0 SPCR
#endif

#ifdef SPE0
    #define _SPE0 SPE0
#else
    #define _SPE0 SPE
#endif

#ifdef MSTR0
    #define _MSTR0 MSTR0
#else
    #define _MSTR0 MSTR
#endif

#ifdef SPSR0
    #define _SPSR0 SPSR0
#else
    #define _SPSR0 SPSR
#endif

#ifdef SPIF0
    #define _SPIF0 SPIF0
#else
    #define _SPIF0 SPIF
#endif

#ifdef SPDR0
    #define _SPDR0 SPDR0
#else
    #define _SPDR0 SPDR
#endif

#ifdef SPI2X0
    #define _SPI2X0 SPI2X0
#else
    #define _SPI2X0 SPI2X
#endif

/* USART Register C (generic) */
#undef    UMSEL
#undef    UPM1
#undef    UPM0
#undef    USBS
#undef    UCSZ1
#undef    UCSZ0
#undef    UCPOL


/* USART Status Register A (generic) */
#undef    RXC
#undef    TXC
#undef    UDRE
#undef    FE
#undef    DOR
#undef    UPE
#undef    U2X
#undef    MPCM

/* USART Control Register B (generic) */
#undef    RXCIE
#undef    TXCIE
#undef    UDRIE
#undef    RXEN
#undef    TXEN
#undef    UCSZ
#undef    UCSZ2
#undef    RXB8
#undef    TXB8

