global add

section .text:

add:
	add rdi, rsi		; add parameters
	mov rax, rdi		; exit with added value
	ret
