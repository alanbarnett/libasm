global ft_read

section .text:

ft_read:
	mov rax, 0x00	; read syscall
	syscall			; call read, using parameters already loaded
	ret
