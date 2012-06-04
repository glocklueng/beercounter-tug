/*
 * Copyright (c) 2009 by Christian Dietrich <stettberger@dokucode.de>
 * Copyright (c) 2010 by Justin Otherguy <justin@justinotherguy.org>
 * Copyright (c) 2010 by Jens Wilmer <ethersex@jenswilmer.de>
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License (either version 2 or
 * version 3) as published by the Free Software Foundation.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
 *
 * For more information on the GPL, please go to:
 * http://www.gnu.org/copyleft/gpl.html
 */

#ifndef _WATCHASYNC_H
#define _WATCHASYNC_H

#ifndef CONF_WATCHASYNC_RESOLUTION
#define CONF_WATCHASYNC_RESOLUTION 1
#else
#if CONF_WATCHASYNC_RESOLUTION < 1
#define CONF_WATCHASYNC_RESOLUTION 1
#endif
#endif

#ifndef CONF_WATCHASYNC_BUFFERSIZE
#define CONF_WATCHASYNC_BUFFERSIZE 1
#else
#if CONF_WATCHASYNC_BUFFERSIZE < 1
#define CONF_WATCHASYNC_BUFFERSIZE 1
#endif
#endif

#ifndef CONF_WATCHASYNC_METHOD
#define CONF_WATCHASYNC_METHOD "GET"
#endif

// Convenient debugging
#include "config.h"
#ifdef DEBUG_WATCHASYNC
# include "core/debug.h"
# define WATCHASYNC_DEBUG(a...)  debug_printf("watchasync: " a)
#else
# define WATCHASYNC_DEBUG(a...)
#endif

// Number used Pins
#ifdef CONF_WATCHASYNC_PA0
#ifndef CONF_WATCHASYNC_PA
#define CONF_WATCHASYNC_PA
#endif
#define WATCHASYNC_PA0 1
#else
#define WATCHASYNC_PA0 0
#endif

#ifdef CONF_WATCHASYNC_PA1
#ifndef CONF_WATCHASYNC_PA
#define CONF_WATCHASYNC_PA
#endif
#define WATCHASYNC_PA1 1
#else
#define WATCHASYNC_PA1 0
#endif

#ifdef CONF_WATCHASYNC_PA2
#ifndef CONF_WATCHASYNC_PA
#define CONF_WATCHASYNC_PA
#endif
#define WATCHASYNC_PA2 1
#else
#define WATCHASYNC_PA2 0
#endif

#ifdef CONF_WATCHASYNC_PA3
#ifndef CONF_WATCHASYNC_PA
#define CONF_WATCHASYNC_PA
#endif
#define WATCHASYNC_PA3 1
#else
#define WATCHASYNC_PA3 0
#endif

#ifdef CONF_WATCHASYNC_PA4
#ifndef CONF_WATCHASYNC_PA
#define CONF_WATCHASYNC_PA
#endif
#define WATCHASYNC_PA4 1
#else
#define WATCHASYNC_PA4 0
#endif

#ifdef CONF_WATCHASYNC_PA5
#ifndef CONF_WATCHASYNC_PA
#define CONF_WATCHASYNC_PA
#endif
#define WATCHASYNC_PA5 1
#else
#define WATCHASYNC_PA5 0
#endif

#ifdef CONF_WATCHASYNC_PA6
#ifndef CONF_WATCHASYNC_PA
#define CONF_WATCHASYNC_PA
#endif
#define WATCHASYNC_PA6 1
#else
#define WATCHASYNC_PA6 0
#endif

#ifdef CONF_WATCHASYNC_PA7
#ifndef CONF_WATCHASYNC_PA
#define CONF_WATCHASYNC_PA
#endif
#define WATCHASYNC_PA7 1
#else
#define WATCHASYNC_PA7 0
#endif


#ifdef CONF_WATCHASYNC_PB0
#ifndef CONF_WATCHASYNC_PB
#define CONF_WATCHASYNC_PB
#endif
#define WATCHASYNC_PB0 1
#else
#define WATCHASYNC_PB0 0
#endif

#ifdef CONF_WATCHASYNC_PB1
#ifndef CONF_WATCHASYNC_PB
#define CONF_WATCHASYNC_PB
#endif
#define WATCHASYNC_PB1 1
#else
#define WATCHASYNC_PB1 0
#endif

#ifdef CONF_WATCHASYNC_PB2
#ifndef CONF_WATCHASYNC_PB
#define CONF_WATCHASYNC_PB
#endif
#define WATCHASYNC_PB2 1
#else
#define WATCHASYNC_PB2 0
#endif

#ifdef CONF_WATCHASYNC_PB3
#ifndef CONF_WATCHASYNC_PB
#define CONF_WATCHASYNC_PB
#endif
#define WATCHASYNC_PB3 1
#else
#define WATCHASYNC_PB3 0
#endif

#ifdef CONF_WATCHASYNC_PB4
#ifndef CONF_WATCHASYNC_PB
#define CONF_WATCHASYNC_PB
#endif
#define WATCHASYNC_PB4 1
#else
#define WATCHASYNC_PB4 0
#endif

#ifdef CONF_WATCHASYNC_PB5
#ifndef CONF_WATCHASYNC_PB
#define CONF_WATCHASYNC_PB
#endif
#define WATCHASYNC_PB5 1
#else
#define WATCHASYNC_PB5 0
#endif

#ifdef CONF_WATCHASYNC_PB6
#ifndef CONF_WATCHASYNC_PB
#define CONF_WATCHASYNC_PB
#endif
#define WATCHASYNC_PB6 1
#else
#define WATCHASYNC_PB6 0
#endif

#ifdef CONF_WATCHASYNC_PB7
#ifndef CONF_WATCHASYNC_PB
#define CONF_WATCHASYNC_PB
#endif
#define WATCHASYNC_PB7 1
#else
#define WATCHASYNC_PB7 0
#endif


#ifdef CONF_WATCHASYNC_PC0
#ifndef CONF_WATCHASYNC_PC
#define CONF_WATCHASYNC_PC
#endif
#define WATCHASYNC_PC0 1
#else
#define WATCHASYNC_PC0 0
#endif

#ifdef CONF_WATCHASYNC_PC1
#ifndef CONF_WATCHASYNC_PC
#define CONF_WATCHASYNC_PC
#endif
#define WATCHASYNC_PC1 1
#else
#define WATCHASYNC_PC1 0
#endif

#ifdef CONF_WATCHASYNC_PC2
#ifndef CONF_WATCHASYNC_PC
#define CONF_WATCHASYNC_PC
#endif
#define WATCHASYNC_PC2 1
#else
#define WATCHASYNC_PC2 0
#endif

#ifdef CONF_WATCHASYNC_PC3
#ifndef CONF_WATCHASYNC_PC
#define CONF_WATCHASYNC_PC
#endif
#define WATCHASYNC_PC3 1
#else
#define WATCHASYNC_PC3 0
#endif

#ifdef CONF_WATCHASYNC_PC4
#ifndef CONF_WATCHASYNC_PC
#define CONF_WATCHASYNC_PC
#endif
#define WATCHASYNC_PC4 1
#else
#define WATCHASYNC_PC4 0
#endif

#ifdef CONF_WATCHASYNC_PC5
#ifndef CONF_WATCHASYNC_PC
#define CONF_WATCHASYNC_PC
#endif
#define WATCHASYNC_PC5 1
#else
#define WATCHASYNC_PC5 0
#endif

#ifdef CONF_WATCHASYNC_PC6
#ifndef CONF_WATCHASYNC_PC
#define CONF_WATCHASYNC_PC
#endif
#define WATCHASYNC_PC6 1
#else
#define WATCHASYNC_PC6 0
#endif

#ifdef CONF_WATCHASYNC_PC7
#ifndef CONF_WATCHASYNC_PC
#define CONF_WATCHASYNC_PC
#endif
#define WATCHASYNC_PC7 1
#else
#define WATCHASYNC_PC7 0
#endif


#ifdef CONF_WATCHASYNC_PD0
#ifndef CONF_WATCHASYNC_PD
#define CONF_WATCHASYNC_PD
#endif
#define WATCHASYNC_PD0 1
#else
#define WATCHASYNC_PD0 0
#endif

#ifdef CONF_WATCHASYNC_PD1
#ifndef CONF_WATCHASYNC_PD
#define CONF_WATCHASYNC_PD
#endif
#define WATCHASYNC_PD1 1
#else
#define WATCHASYNC_PD1 0
#endif

#ifdef CONF_WATCHASYNC_PD2
#ifndef CONF_WATCHASYNC_PD
#define CONF_WATCHASYNC_PD
#endif
#define WATCHASYNC_PD2 1
#else
#define WATCHASYNC_PD2 0
#endif

#ifdef CONF_WATCHASYNC_PD3
#ifndef CONF_WATCHASYNC_PD
#define CONF_WATCHASYNC_PD
#endif
#define WATCHASYNC_PD3 1
#else
#define WATCHASYNC_PD3 0
#endif

#ifdef CONF_WATCHASYNC_PD4
#ifndef CONF_WATCHASYNC_PD
#define CONF_WATCHASYNC_PD
#endif
#define WATCHASYNC_PD4 1
#else
#define WATCHASYNC_PD4 0
#endif

#ifdef CONF_WATCHASYNC_PD5
#ifndef CONF_WATCHASYNC_PD
#define CONF_WATCHASYNC_PD
#endif
#define WATCHASYNC_PD5 1
#else
#define WATCHASYNC_PD5 0
#endif

#ifdef CONF_WATCHASYNC_PD6
#ifndef CONF_WATCHASYNC_PD
#define CONF_WATCHASYNC_PD
#endif
#define WATCHASYNC_PD6 1
#else
#define WATCHASYNC_PD6 0
#endif

#ifdef CONF_WATCHASYNC_PD7
#ifndef CONF_WATCHASYNC_PD
#define CONF_WATCHASYNC_PD
#endif
#define WATCHASYNC_PD7 1
#else
#define WATCHASYNC_PD7 0
#endif

#ifndef CONF_WATCHASYNC_PA
#ifndef CONF_WATCHASYNC_PB
#ifndef CONF_WATCHASYNC_PC
#ifndef CONF_WATCHASYNC_PD
#error Watchasync: at least one pin has to be used! (No pin configured for use in watchasync)
#endif
#endif
#endif
#endif

#define WATCHASYNC_PA0_INDEX 0
#define WATCHASYNC_PA1_INDEX (WATCHASYNC_PA0_INDEX + WATCHASYNC_PA0)
#define WATCHASYNC_PA2_INDEX (WATCHASYNC_PA1_INDEX + WATCHASYNC_PA1)
#define WATCHASYNC_PA3_INDEX (WATCHASYNC_PA2_INDEX + WATCHASYNC_PA2)
#define WATCHASYNC_PA4_INDEX (WATCHASYNC_PA3_INDEX + WATCHASYNC_PA3)
#define WATCHASYNC_PA5_INDEX (WATCHASYNC_PA4_INDEX + WATCHASYNC_PA4)
#define WATCHASYNC_PA6_INDEX (WATCHASYNC_PA5_INDEX + WATCHASYNC_PA5)
#define WATCHASYNC_PA7_INDEX (WATCHASYNC_PA6_INDEX + WATCHASYNC_PA6)

#define WATCHASYNC_PB0_INDEX (WATCHASYNC_PA7_INDEX + WATCHASYNC_PA7)
#define WATCHASYNC_PB1_INDEX (WATCHASYNC_PB0_INDEX + WATCHASYNC_PB0)
#define WATCHASYNC_PB2_INDEX (WATCHASYNC_PB1_INDEX + WATCHASYNC_PB1)
#define WATCHASYNC_PB3_INDEX (WATCHASYNC_PB2_INDEX + WATCHASYNC_PB2)
#define WATCHASYNC_PB4_INDEX (WATCHASYNC_PB3_INDEX + WATCHASYNC_PB3)
#define WATCHASYNC_PB5_INDEX (WATCHASYNC_PB4_INDEX + WATCHASYNC_PB4)
#define WATCHASYNC_PB6_INDEX (WATCHASYNC_PB5_INDEX + WATCHASYNC_PB5)
#define WATCHASYNC_PB7_INDEX (WATCHASYNC_PB6_INDEX + WATCHASYNC_PB6)

#define WATCHASYNC_PC0_INDEX (WATCHASYNC_PB7_INDEX + WATCHASYNC_PB7)
#define WATCHASYNC_PC1_INDEX (WATCHASYNC_PC0_INDEX + WATCHASYNC_PC0)
#define WATCHASYNC_PC2_INDEX (WATCHASYNC_PC1_INDEX + WATCHASYNC_PC1)
#define WATCHASYNC_PC3_INDEX (WATCHASYNC_PC2_INDEX + WATCHASYNC_PC2)
#define WATCHASYNC_PC4_INDEX (WATCHASYNC_PC3_INDEX + WATCHASYNC_PC3)
#define WATCHASYNC_PC5_INDEX (WATCHASYNC_PC4_INDEX + WATCHASYNC_PC4)
#define WATCHASYNC_PC6_INDEX (WATCHASYNC_PC5_INDEX + WATCHASYNC_PC5)
#define WATCHASYNC_PC7_INDEX (WATCHASYNC_PC6_INDEX + WATCHASYNC_PC6)

#define WATCHASYNC_PD0_INDEX (WATCHASYNC_PC7_INDEX + WATCHASYNC_PC7)
#define WATCHASYNC_PD1_INDEX (WATCHASYNC_PD0_INDEX + WATCHASYNC_PD0)
#define WATCHASYNC_PD2_INDEX (WATCHASYNC_PD1_INDEX + WATCHASYNC_PD1)
#define WATCHASYNC_PD3_INDEX (WATCHASYNC_PD2_INDEX + WATCHASYNC_PD2)
#define WATCHASYNC_PD4_INDEX (WATCHASYNC_PD3_INDEX + WATCHASYNC_PD3)
#define WATCHASYNC_PD5_INDEX (WATCHASYNC_PD4_INDEX + WATCHASYNC_PD4)
#define WATCHASYNC_PD6_INDEX (WATCHASYNC_PD5_INDEX + WATCHASYNC_PD5)
#define WATCHASYNC_PD7_INDEX (WATCHASYNC_PD6_INDEX + WATCHASYNC_PD6)

#define WATCHASYNC_PA_MASK (WATCHASYNC_PA0 * 1 + WATCHASYNC_PA1 * 2 + WATCHASYNC_PA2 * 4 + WATCHASYNC_PA3 * 8 + WATCHASYNC_PA4 * 16 + WATCHASYNC_PA5 * 32 + WATCHASYNC_PA6 * 64 + WATCHASYNC_PA7 * 128)
#define WATCHASYNC_PB_MASK (WATCHASYNC_PB0 * 1 + WATCHASYNC_PB1 * 2 + WATCHASYNC_PB2 * 4 + WATCHASYNC_PB3 * 8 + WATCHASYNC_PB4 * 16 + WATCHASYNC_PB5 * 32 + WATCHASYNC_PB6 * 64 + WATCHASYNC_PB7 * 128)
#define WATCHASYNC_PC_MASK (WATCHASYNC_PC0 * 1 + WATCHASYNC_PC1 * 2 + WATCHASYNC_PC2 * 4 + WATCHASYNC_PC3 * 8 + WATCHASYNC_PC4 * 16 + WATCHASYNC_PC5 * 32 + WATCHASYNC_PC6 * 64 + WATCHASYNC_PC7 * 128)
#define WATCHASYNC_PD_MASK (WATCHASYNC_PD0 * 1 + WATCHASYNC_PD1 * 2 + WATCHASYNC_PD2 * 4 + WATCHASYNC_PD3 * 8 + WATCHASYNC_PD4 * 16 + WATCHASYNC_PD5 * 32 + WATCHASYNC_PD6 * 64 + WATCHASYNC_PD7 * 128)

#define WATCHASYNC_PINCOUNT (WATCHASYNC_PA0 + WATCHASYNC_PA1 + WATCHASYNC_PA2 + WATCHASYNC_PA3 + WATCHASYNC_PA4 + WATCHASYNC_PA5 + WATCHASYNC_PA6 + WATCHASYNC_PA7 + WATCHASYNC_PB0 + WATCHASYNC_PB1 + WATCHASYNC_PB2 + WATCHASYNC_PB3 + WATCHASYNC_PB4 + WATCHASYNC_PB5 + WATCHASYNC_PB6 + WATCHASYNC_PB7 + WATCHASYNC_PC0 + WATCHASYNC_PC1 + WATCHASYNC_PC2 + WATCHASYNC_PC3 + WATCHASYNC_PC4 + WATCHASYNC_PC5 + WATCHASYNC_PC6 + WATCHASYNC_PC7 + WATCHASYNC_PD0 + WATCHASYNC_PD1 + WATCHASYNC_PD2 + WATCHASYNC_PD3 + WATCHASYNC_PD4 + WATCHASYNC_PD5 + WATCHASYNC_PD6 + WATCHASYNC_PD7)



// Connectionstate: new until acked, aborted or timedout, old afterwards
enum WatchAsyncConnStates {
  WATCHASYNC_CONNSTATE_NEW,
  WATCHASYNC_CONNSTATE_OLD,
};

// Select Countersize
#ifndef WATCHASYNC_COUNTER_TYPE
#ifdef CONF_WATCHASYNC_32BITS
#define WATCHASYNC_COUNTER_TYPE uint32_t
#else // def CONF_WATCHASYNC_32BITS
#ifdef CONF_WATCHASYNC_16BITS
#define WATCHASYNC_COUNTER_TYPE uint16_t
#else // def CONF_WATCHASYNC_16BITS
#define WATCHASYNC_COUNTER_TYPE uint8_t
#endif // def CONF_WATCHASYNC_16BITS
#endif // def CONF_WATCHASYNC_32BITS
#endif // ndef WATCHASYNC_COUNTER_TYPE


#ifndef WATCHASYNC_COUNTER_FORMAT
#ifdef CONF_WATCHASYNC_32BITS
#define WATCHASYNC_COUNTER_FORMAT "%lu"
#else // def CONF_WATCHASYNC_32BITS
#ifdef CONF_WATCHASYNC_16BITS
#define WATCHASYNC_COUNTER_FORMAT "%u"
#else // def CONF_WATCHASYNC_16BITS
#define WATCHASYNC_COUNTER_FORMAT "%u"
#endif // def CONF_WATCHASYNC_16BITS
#endif // def CONF_WATCHASYNC_32BITS
#endif // ndef WATCHASYNC_COUNTER_FORMAT



// Buffer for storing events of interrupt-routine
struct WatchAsyncBuffer {
#ifdef CONF_WATCHASYNC_SUMMARIZE
  WATCHASYNC_COUNTER_TYPE pin[WATCHASYNC_PINCOUNT];
#else
#ifdef CONF_WATCHASYNC_TIMESTAMP
  uint32_t timestamp;
#endif
  uint8_t pin;
#endif
};

void watchasync_init();
void watchasync_mainloop();

#ifdef CONF_WATCHASYNC_EDGDETECTVIAPOLLING
void watchasync_periodic(void);
#else
#define watchasync_periodic() do {} while(0)
#endif

#endif /* _WATCHASYNC_H */
