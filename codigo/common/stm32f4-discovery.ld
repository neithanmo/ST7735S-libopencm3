/*
 * This file is part of the libopencm3 project.
 *
 * Copyright (C) 2009 Uwe Hermann <uwe@hermann-uwe.de>
 * Copyright (C) 2011 Stephen Caudle <scaudle@doceme.com>
 *
 * This library is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this library.  If not, see <http://www.gnu.org/licenses/>.
 */

/* Linker script for STM32F407VGT6 on STM32F4 Disco board, 1M flash, 196K RAM
 * of which 128K is normal and starts at 0x20000000 so use that.
 */

/* Define memory regions. */

/* Para STM32F407 */

/*
MEMORY
{
	rom (rx) : ORIGIN = 0x08000000, LENGTH = 1M
	ram (rwx) : ORIGIN = 0x20000000, LENGTH = 128K
}
*/

/* Para STM32F411 */
MEMORY
{
        rom (rx) : ORIGIN = 0x08000000, LENGTH = 512K
        ram (rwx) : ORIGIN = 0x20000000, LENGTH = 128K
}


/* Include the common ld script. */
INCLUDE libopencm3_stm32f4.ld

