global ftasm_strcmp

section .text:

ftasm_strcmp:

	push rbp
	mov rbp, rsp

loop_over_strs:
	cmp byte [rdi], 0x00	; look for null byte in s1
	je end
	cmp byte [rsi], 0x00	; look for null byte in s2
	je end

	cmpsb					; compare and iterate rdi and rsi
	jne fix					; jump to fix if they aren't the same
	
	jmp loop_over_strs

fix:						; decrement registers if they compared incorrectly
	dec rdi
	dec rsi
	
end:

	movzx rax, byte [rdi]	; move in a lower byte, and clear the upper bits
	sub al, byte [rsi]		; subtract the two characters to get the result
	movsx rax, al			; convert unsigned 8 bit to signed 64 bit

	pop rbp

	ret
