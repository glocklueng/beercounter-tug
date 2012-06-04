dnl
dnl atmega328p.m4
dnl
dnl   Copyright (c) 2009 by Stefan Riepenhause <rhn@gmx.net>
dnl  
dnl   This program is free software; you can redistribute it and/or modify
dnl   it under the terms of the GNU General Public License as published by 
dnl   the Free Software Foundation; either version 2 of the License, or
dnl   (at your option) any later version.
dnl  
dnl   This program is distributed in the hope that it will be useful,
dnl   but WITHOUT ANY WARRANTY; without even the implied warranty of
dnl   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
dnl   GNU General Public License for more details.
dnl  
dnl   You should have received a copy of the GNU General Public License
dnl   along with this program; if not, write to the Free Software
dnl   Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
dnl 

/*
   ATmega328p is very similar to ATmega168, therefore we just include
   that one's pinning configuration file.  
 */

include(controllers/atmega168.m4)
#undef ADC_CHANNELS
#define ADC_CHANNELS 8
