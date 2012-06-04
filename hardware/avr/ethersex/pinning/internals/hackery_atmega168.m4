
#define _ATMEGA168
#define USART0_RX_vect USART_RX_vect
#define USART0_TX_vect USART_TX_vect

/* ATmega168 specific adjustments */
#define _SPCR0 SPCR
#define _SPE0 SPE
#define _MSTR0 MSTR
#define _SPSR0 SPSR
#define _SPIF0 SPIF
#define _SPDR0 SPDR
#define _SPI2X0 SPI2X
#define _EIMSK EIMSK
#define _IVREG MCUCR

/* Watchdog status register */
#define MCU_STATUS_REGISTER  MCUSR

/* Generic timer macros */
#define TC0_PRESCALER_1      {TCCR0B&=~(_BV(CS02)|_BV(CS01));TCCR0B|=_BV(CS00);}
#define TC0_PRESCALER_8      {TCCR0B&=~(_BV(CS02)|_BV(CS00));TCCR0B|=_BV(CS01);}
#define TC0_PRESCALER_64     {TCCR0B&=~(_BV(CS02));TCCR0B|=_BV(CS01)|_BV(CS02);}
#define TC0_PRESCALER_256    {TCCR0B&=~(_BV(CS01)|_BV(CS00));TCCR0B|=_BV(CS02);}
#define TC0_PRESCALER_1024   {TCCR0B&=~(_BV(CS01));TCCR0B|=_BV(CS02)|_BV(CS00);}

#define TC0_MODE_OFF	     {TCCR0A&=~(_BV(WGM01)|_BV(WGM00));TCCR0B&=~(_BV(WGM02));}
#define TC0_MODE_PWM         {TCCR0A&=~(_BV(WGM01));TCCR0A|=_BV(WGM00);TCCR0B&=~(_BV(WGM02));}
#define TC0_MODE_CTC         {TCCR0A&=~(_BV(WGM00));TCCR0A|=_BV(WGM01);TCCR0B&=~(_BV(WGM02));}
#define TC0_MODE_PWMFAST     {TCCR0A|=_BV(WGM01)|_BV(WGM00);TCCR0B&=~(_BV(WGM02));}

#define TC0_OUTPUT_COMPARE_NONE   {TCCR0A&=~(_BV(COM0A1)|_BV(COM0A0));}
#define TC0_OUTPUT_COMPARE_TOGGLE {TCCR0A&=~(_BV(COM0A1));TCCR0A|=_BV(COM0A0);}
#define TC0_OUTPUT_COMPARE_CLEAR  {TCCR0A&=~(_BV(COM0A0));TCCR0A|=_BV(COM0A1);}
#define TC0_OUTPUT_COMPARE_SET    {TCCR0A|=_BV(COM0A1)|_BV(COM0A0);}

#define TC0_COUNTER_CURRENT  TCNT0
#define TC0_COUNTER_COMPARE  OCR0A

#define TC0_INT_COMPARE_ON   TIMSK0|=_BV(OCIE0A);
#define TC0_INT_COMPARE_OFF  TIMSK0&=~_BV(OCIE0A);
#define TC0_INT_OVERFLOW_ON  TIMSK0|=_BV(TOIE0);
#define TC0_INT_OVERFLOW_OFF TIMSK0&=~_BV(TOIE0);

#define TC0_VECTOR_OVERFLOW  TIMER0_OVF_vect
#define TC0_VECTOR_COMPARE   TIMER0_COMPA_vect

#define TC0_INT_OVERFLOW_TST (TIFR0&_BV(TOV0))
#define TC0_INT_OVERFLOW_CLR TIFR0=_BV(TOV0);

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

#define TC1_INT_COMPARE_ON   TIMSK1|=_BV(OCIE1A);
#define TC1_INT_COMPARE_OFF  TIMSK1&=~_BV(OCIE1A);
#define TC1_INT_OVERFLOW_ON  TIMSK1|=_BV(TOIE1);
#define TC1_INT_OVERFLOW_OFF TIMSK1&=~_BV(TOIE1);

#define TC1_INT_OVERFLOW_TST (TIFR1&_BV(TOV1))
#define TC1_INT_OVERFLOW_CLR TIFR1=_BV(TOV1);

#define TC1_VECTOR_OVERFLOW  TIMER1_OVF_vect
#define TC1_VECTOR_COMPARE   TIMER1_COMPA_vect

#define TC2_PRESCALER_1      {TCCR2B&=~(_BV(CS22)|_BV(CS21));TCCR2B|=_BV(CS20);}
#define TC2_PRESCALER_8      {TCCR2B&=~(_BV(CS22)|_BV(CS20));TCCR2B|=_BV(CS21);}
#define TC2_PRESCALER_32     {TCCR2B&=~(_BV(CS22));TCCR2B|=_BV(CS21)|_BV(CS22);}
#define TC2_PRESCALER_64     {TCCR2B&=~(_BV(CS21)|_BV(CS20));TCCR2B|=_BV(CS22);}
#define TC2_PRESCALER_128    {TCCR2B&=~(_BV(CS21));TCCR2B|=_BV(CS22)|_BV(CS20);}
#define TC2_PRESCALER_256    {TCCR2B&=~(_BV(CS20));TCCR2B|=_BV(CS22)|_BV(CS21);}
#define TC2_PRESCALER_1024   {TCCR2B|=_BV(CS22)|_BV(CS21)|_BV(CS20);}

#define TC2_MODE_OFF	     {TCCR2A&=~(_BV(WGM21)|_BV(WGM20));TCCR2B&=~(_BV(WGM22));}
#define TC2_MODE_PWM         {TCCR2A&=~(_BV(WGM21));TCCR2A|=_BV(WGM20);TCCR2B&=~(_BV(WGM22));}
#define TC2_MODE_CTC         {TCCR2A&=~(_BV(WGM20));TCCR2A|=_BV(WGM21);TCCR2B&=~(_BV(WGM22));}
#define TC2_MODE_PWMFAST     {TCCR2A|=_BV(WGM21)|_BV(WGM20);TCCR2B&=~(_BV(WGM22));}

#define TC2_OUTPUT_COMPARE_NONE   {TCCR2A&=~(_BV(COM2A1)|_BV(COM2A0));}
#define TC2_OUTPUT_COMPARE_TOGGLE {TCCR2A&=~(_BV(COM2A1));TCCR2A|=_BV(COM2A0);}
#define TC2_OUTPUT_COMPARE_CLEAR  {TCCR2A&=~(_BV(COM2A0));TCCR2A|=_BV(COM2A1);}
#define TC2_OUTPUT_COMPARE_SET    {TCCR2A|=_BV(COM2A1)|_BV(COM2A0);}

#define TC2_COUNTER_CURRENT  TCNT2
#define TC2_COUNTER_COMPARE  OCR2A

#define TC2_INT_COMPARE_ON   TIMSK2|=_BV(OCIE2A);
#define TC2_INT_COMPARE_OFF  TIMSK2&=~_BV(OCIE2A);
#define TC2_INT_OVERFLOW_ON  TIMSK2|=_BV(TOIE2);
#define TC2_INT_OVERFLOW_OFF TIMSK2&=~_BV(TOIE2);

#define TC2_INT_OVERFLOW_TST (TIFR2&_BV(TOV2))
#define TC2_INT_OVERFLOW_CLR TIFR2=_BV(TOV2);

#define TC2_VECTOR_OVERFLOW  TIMER2_OVF_vect
#define TC2_VECTOR_COMPARE   TIMER2_COMPA_vect

/* First Asyncronous Timer */
/* Flag for asyncronous operation */
#define TIMER_8_AS_1_ASYNC_ON  {ASSR |= _BV(AS2);}
#define TIMER_8_AS_1_ASYNC_OFF  {ASSR &=~(_BV(AS2));}
/* Prescaler */
#define TIMER_8_AS_1_PRESCALER_1 TC2_PRESCALER_1
#define TIMER_8_AS_1_PRESCALER_8 TC2_PRESCALER_8
#define TIMER_8_AS_1_PRESCALER_32 TC2_PRESCALER_32
#define TIMER_8_AS_1_PRESCALER_64 TC2_PRESCALER_64
#define TIMER_8_AS_1_PRESCALER_128 TC2_PRESCALER_128
#define TIMER_8_AS_1_PRESCALER_256 TC2_PRESCALER_512
#define TIMER_8_AS_1_PRESCALER_1024 TC2_PRESCALER_1024
/* PWM Settings */
#define TIMER_8_AS_1_MODE_OFF TC2_MODE_OFF
#define TIMER_8_AS_1_MODE_PWM TC2_MODE_PWM
#define TIMER_8_AS_1_MODE_CTC TC2_MODE_CTC
#define TIMER_8_AS_1_MODE_PWMFAST TC2_MODE_PWMFAST
/* Output Compare */
#define TIMER_8_AS_1_OUTPUT_COMPARE_NONE TC2_OUTPUT_COMPARE_NONE
#define TIMER_8_AS_1_OUTPUT_COMPARE_TOGGLE TC2_OUTPUT_COMPARE_TOGGLE
#define TIMER_8_AS_1_OUTPUT_COMPARE_CLEAR TC2_OUTPUT_COMPARE_CLEAR
#define TIMER_8_AS_1_OUTPUT_COMPARE_SET TC2_OUTPUT_COMPARE_SET
/* Timer Register */
#define TIMER_8_AS_1_COUNTER_CURRENT TC2_COUNTER_CURRENT
#define TIMER_8_AS_1_COUNTER_COMPARE TC2_COUNTER_COMPARE
/* Interrupts / Signals */
#define TIMER_8_AS_1_INT_COMPARE_ON TC2_INT_COMPARE_ON
#define TIMER_8_AS_1_INT_COMPARE_OFF TC2_INT_COMPARE_OFF
#define TIMER_8_AS_1_INT_OVERFLOW_ON TC2_INT_OVERFLOW_ON
#define TIMER_8_AS_1_INT_OVERFLOW_OFF TC2_INT_OVERFLOW_OFF
#define TIMER_8_AS_1_INT_OVERFLOW_TST TC2_INT_OVERFLOW_TST
#define TIMER_8_AS_1_INT_OVERFLOW_CLR TC2_INT_OVERFLOW_CLR
/* Vectors */
#define TIMER_8_AS_1_VECTOR_OVERFLOW TC2_VECTOR_OVERFLOW
#define TIMER_8_AS_1_VECTOR_COMPARE TC2_VECTOR_COMPARE
/* Busy flags */
#define TIMER_8_AS_1_COMPARE_CONTROL_BUSY (TCR2AUB | TCR2BUB)
#define TIMER_8_AS_1_COUNTER_CURRENT_BUSY TCN2UB
#define TIMER_8_AS_1_COUNTER_CURRENT_BUSY_TST (ASSR&_BV(TIMER_8_AS_1_COUNTER_CURRENT_BUSY))
#define TIMER_8_AS_1_COMPARE_CONTROL_BUSY_TST (ASSR&_BV(TIMER_8_AS_1_COMPARE_CONTROL_BUSY))
/* both tests combined */
#define TIMER_8_AS_1_COUNTER_BUSY_TST (TIMER_8_AS_1_COMPARE_CONTROL_BUSY_TST || TIMER_8_AS_1_COUNTER_CURRENT_BUSY_TST)

