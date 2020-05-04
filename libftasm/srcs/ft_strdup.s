global ftasm_strdup

extern ftasm_strlen
extern ftasm_strcpy

extern malloc

section .text:

ftasm_strdup:

	push rbp
	mov rbp, rsp

	push rdi		; save string for after malloc

	call ftasm_strlen	; set rax with the length of rdi
	inc rax			; add a space for a null terminator

	mov rdi, rax	; load rdi with size of string
	call malloc wrt ..plt		; allocate new string

	mov rdi, rax	; move new pointer to destination address
	pop rsi			; pop rdi from earlier into the source address
	call ftasm_strcpy	; copy from source to dest
						; this copies until a null terminator in src
						; it copies the null terminator to dst

	pop rbp

	ret
