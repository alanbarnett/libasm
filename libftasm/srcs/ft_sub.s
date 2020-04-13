global ft_sub

section .text:

ft_sub:
	sub rdi, rsi		; add parameters
	mov rax, rdi		; exit with added value
	ret
