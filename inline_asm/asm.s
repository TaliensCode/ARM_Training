.global _start
.global enable_irq
.global disable_irq

_start:
	mov sp,#0x38000
	mov r0,#1
	mov r1,#2

	bl enable_irq
	mov r0,#1
	mov r1,#2
	bl disable_irq
	mov r0,#1

stop:
	b stop
