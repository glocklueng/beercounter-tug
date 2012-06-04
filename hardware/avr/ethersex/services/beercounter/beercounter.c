/*
 * Copyright (c) 2012 Thomas Krug
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version.
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

#include <avr/pgmspace.h>

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "config.h"
#include "beercounter.h"

#include "protocols/ecmd/ecmd-base.h"

/*
  This function is called during boot
  of ethersex

  TODO
  - nothing
*/
int16_t
beercounter_init(void)
{
  BEERCOUNTERDEBUG ("init\n");

  // use all PCs as input
  //DDRC  = 0b00000000;

  DDRC  = 0b00000010;
  PORTC = 0b00000010;

  return ECMD_FINAL_OK;
}

/*
  This function is periodically called
  see timer(500,beercounter_periodic())

  TODO
  - write current counter into eeprom
*/
int16_t
beercounter_periodic(void)
{
  BEERCOUNTERDEBUG ("periodic\n");

  int read = PORTC;
  BEERCOUNTERDEBUG ("%x", read);

  return ECMD_FINAL_OK;
}

/*
  This function will be called on request by menuconfig, if wanted...
  You need to enable ECMD_SUPPORT for this.

  TODO
  - return beer counter
*/
int16_t
beercounter_onrequest()
{
  BEERCOUNTERDEBUG ("main\n");

  // this does nothing at the moment

  return ECMD_FINAL_OK;
}

/*
  -- Ethersex META --
  header(services/beercounter/beercounter.h)
  ifdef(`conf_BEERCOUNTER_INIT_AUTOSTART',`init(beercounter_init)')
  # 20ms
  ifdef(`conf_BEERCOUNTER_PERIODIC_AUTOSTART',`timer(1,beercounter_periodic())')
*/
