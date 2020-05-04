global ftasm_strlen

section .text:

ftasm_strlen:
	
;--\
;	Normal way that uses loop
;	mov rcx, rdi	; initialize counter
;
;count_length:
;	cmp byte [rcx], 0x00	; look for null byte
;	je end
;	inc rcx 		; increment counter
;	jmp count_length
;	
;end:
;	sub rcx, rdi	; get offset for string length
;	mov rax, rcx	; move counter into return register
;--/

	push rbp
	mov rbp, rsp

	push rdi		; save string's start

;	Interesting way using repeated string operations
	mov rcx, -1		; initialize counter with -1, so decrementing doesn't get
					; to zero
	mov rax, 0		; look for 0
	cld				; clear the direction bit (tells the string to increment)
					; I'm not sure if this is guaranteed
	repne scasb		; repeats scanning a byte in rdi while the byte isn't equal
					; to rax
					; it increments rdi each time, while also decrementing rcx
	mov rax, -2		; set up rax for subtraction to get actual value
	sub rax, rcx	; subtract the value that was decremented

	pop rdi			; reset the string

	pop rbp

	ret
