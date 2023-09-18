	BITS 64
	SECTION .text
	global main

; set rax to 1 if it was != 0

main:
	mov rax, 17 ; so that we have a defined value to start with
	neg rax ; negates the value, sets CF=1 if rax != 0
	sbb rax,rax ; subtract from itself with borrow (rax = rax - (rax+cf))
              ; rax always cancels itself out, so this will be rax=-1
	neg rax ; negates again -> rax=1
