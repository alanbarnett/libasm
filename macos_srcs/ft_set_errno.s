global _ft_set_errno

extern ___error

section .text

_ft_set_errno:

	; For some reason moving the stack pointer messes this up in MacOS
	
	push	rax			; save error code

	call	___error	; get errno pointer

	mov		r12, rax	; move errno ptr
	pop		rax			; pop error code 
	mov		[r12], rax	; set errno

	mov		rax, -1		; set return to -1

	ret
