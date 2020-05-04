global ft_set_errno

extern __errno_location

section .text

ft_set_errno:
	
	push rbp
	mov rbp, rsp

	push rdi			; save rdi, I change it later
	push rax			; save error code

	call __errno_location wrt ..plt	; get error value pointer

	mov [rax], byte 0x00		; clear old error

	pop rdi				; get original error code
	sub [rax], rdi		; add the negative error code by subtracting from 0

	mov rax, -0x01		; set return to 1

	pop rdi				; get rdi back

	pop rbp
	ret
