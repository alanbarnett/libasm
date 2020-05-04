global _ft_read

extern _ft_set_errno

section .text

_ft_read:

	push rbp
	mov rbp, rsp

	mov rax, 0x2000003	; read syscall
	syscall				; call read, using parameters already loaded

	jc set_errno		; set errno if the carry flag is set
	jmp end				; if positive return, go to end

set_errno:
	call _ft_set_errno	; else set the errno

end:
	pop rbp

	ret
