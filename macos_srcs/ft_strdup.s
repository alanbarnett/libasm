global _ft_strdup

extern _ft_strlen
extern _ft_strcpy

extern _malloc

section .text

_ft_strdup:

	push rbp
	mov rbp, rsp

	push rdi			; save string for after malloc

	call _ft_strlen		; set rax with the length of rdi
	inc rax				; add a space for a null terminator

	mov rdi, rax		; load rdi with size of string
	push rdi			; takes arguments on the stack
	call _malloc		; allocate new string
	pop rdi

	mov rdi, rax		; move new pointer to destination address
	pop rsi				; pop rdi from earlier into the source address
	call _ft_strcpy		; copy from source to dest
						; this copies until a null terminator in src
						; it copies the null terminator to dst

	pop rbp
	ret
