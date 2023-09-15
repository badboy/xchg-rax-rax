	BITS 64
	SECTION .text
	global main

; all the different ways to set registers to 0.

main:
	xor eax, eax ; xor with itself
	lea rbx, [0] ; load effective address into rbx
	; ecx usually starts with a high value, loop decrements this
	; so this makes it all a bit faster
	mov ecx, 10
	loop $ ; loop until ecx hits 0. `$` is this instruction.
	mov rdx, 0 ; move 0 into rdx
	and esi, 0 ; bitwise-and esi with 0
	sub edi, edi ; substract from itself
	push 0 ; put 0 on the stack
	pop rbp ; pop stack into rbp
