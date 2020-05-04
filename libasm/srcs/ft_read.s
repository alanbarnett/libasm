global ft_read

extern ft_set_errno

section .text:

ft_read:

	push rbp
	mov rbp, rsp

	mov rax, 0x00	; read syscall
	syscall			; call read, using parameters already loaded

	cmp rax, 0x00
	jge end			; if positive return, go to end

	call ft_set_errno ; else set the errno

end:
	pop rbp

	ret
