.global _start

#define USER_MODE 0x10

_start:
	@ ����Ϊ����ģʽ�����Է���Э������,cortex-A8�ֲ� 3.2.27
	mov	r0, #0xfffffff
    mcr	p15, 0, r0, c1, c0, 2

	@ ʹ��NEON and VFPЭ������,NEON and VFP enable bit.
	@ ����fpexc��30λΪ1ȥʹ��NEON and VFP,cortex-A8 �ֲ� 13.4.3
   	ldr	r0, =1<<30
    fmxr	fpexc, r0

	@����CPUΪuserģʽ
	mov r0,#USER_MODE
	msr cpsr_c,r0

	@����main����
	ldr sp,=0x34000
	bl main

stop:
	b stop