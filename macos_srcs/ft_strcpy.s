global _ft_strcpy

section .text

_ft_strcpy:

	push rbp
	mov rbp, rsp

	push rdi				; save initial string
	
loop_over_rsi:
	cmp byte [rsi], 0x00	; look for null byte in source
	je end
	movsb					; this moves a byte from rsi to rdi
							; it also increments both of them
	jmp loop_over_rsi
	
end:
	mov [rdi], byte 0x00	; add null terminator
	pop rax					; grab initial position in return register

	pop rbp
	ret
