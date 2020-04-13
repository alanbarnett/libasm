global ft_write

section .text:

ft_write:
	mov rax, 0x01	; write syscall
	syscall			; call write, using parameters already loaded
	ret
