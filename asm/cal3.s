/*
 * cal3.s
 *
 *  Created on: 2015-5-6
 *      Author: Administrator
 */

.global _start

_start:
	mov r0,#1
	mov r1,#0
	mov r2,#100


	bl sum_lable
rsl:
stop:
	b stop

sum_lable:
	add r0,r0,r1
	add r1,r1,#1
	cmp r1,r2
	blle sum_lable
	ldr pc,=rsl
