/*
 * fkb
 * Copyright (c) 2009 Samsung Electronics.
 * Minkyu Kang <mk7.kang@samsung.com>
 *
 * See file CREDITS for list of people who contributed to this
 * project.
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License as
 * published by the Free Software Foundation; either version 2 of
 * the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
 * MA 02111-1307 USA
 */

#include <asm/arch/cpu.h>
#include <linux/linkage.h>

#define S5PV210_RESET_CTRL			0xE010A000
#define V_SOFT_RESET 0x8

ENTRY(reset_cpu)
	ldr	r1, =S5PV210_RESET_CTRL
	ldr	r2, =V_SOFT_RESET
	str	r2, [r1]
_loop_forever:
	b	_loop_forever
ENDPROC(reset_cpu)
