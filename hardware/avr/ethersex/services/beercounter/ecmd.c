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

#include <avr/io.h>
#include <avr/pgmspace.h>

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <util/delay.h>

#include "config.h"
#include "beercounter.h"
#include "protocols/ecmd/ecmd-base.h"

int16_t parse_cmd_beercounter_command(char *cmd, char *output, uint16_t len) 
{
  return beercounter_onrequest();
}

int16_t parse_cmd_beercounter_init(char *cmd, char *output, uint16_t len) 
{
  return beercounter_init();
}

int16_t parse_cmd_beercounter_periodic(char *cmd, char *output, uint16_t len) 
{
  return beercounter_periodic();  // this one is for the ladies
}

/*
-- Ethersex META --
block([[Beer_Counter]])
ecmd_feature(beercounter_command, "beercounter",, Manually call application sample commands)
ecmd_feature(beercounter_init, "beercounter_init",, Manually call application sample init method)
ecmd_feature(beercounter_periodic, "beercounter_periodic",, Manually call application sample periodic method)
*/
