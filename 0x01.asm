	BITS 64
	SECTION .text
	global main

; calculate the fibonacci sequence.
; n_2 = n_1 + n_0

main:
	mov rax, 1 ; inital values
	mov rdx, 1
	.loop: ; a label
	xadd	rax, rdx ; swap rdx and rax, store rdx+rax into rax
	loop	.loop ; jump back to the .loop label
