global _start

section .text:

add:
	; Since we don't move the stack pointers here, the values in these
	; registers are added outside the function as well.
	add rdi, rsi		; add parameters
	mov rax, rdi		; exit with added value
	ret

_start:
	mov rdi, 15
	mov rsi, 27			; parameters for add function
	call add			; this is how you call functions

	; Exits with the value we want in rdi already
	mov rax, 0x3C		; exit syscall (decimal 60)
	syscall
