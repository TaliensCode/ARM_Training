.global _start

_start:

	mov r0,#0x24000
	mov r1,#0
	mov r2,#0
	mov r3,#0x34000

	bl store_data

	mov r1,#0
	bl copy_data
	mov r1,#0

stop:
	b stop

store_data:
	str r2,[r0],#4
	add r1,r1,#1
	orr r2,r1,r1,lsl #4
	cmp r1,#10
	ble store_data
	mov pc,lr

copy_data:
	ldr r2,[r0],#4
	str r2,[r3],#4
	cmp r1,#10
	ble copy_data
	mov pc,lr
