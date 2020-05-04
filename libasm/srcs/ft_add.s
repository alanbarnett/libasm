global ft_add

section .text:

ft_add:
	add rdi, rsi		; add parameters
	mov rax, rdi		; exit with added value
	ret
