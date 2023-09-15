	BITS 64
	SECTION .text
	global main

main:
	xor eax, eax
	lea rbx, [0]
	; ecx usually starts with a high value, loop decrements this
	; so this makes it all a bit faster
	mov ecx, 10
	loop $
	mov rdx, 0
	and esi, 0
	sub edi, edi
	push 0
	pop rbp
