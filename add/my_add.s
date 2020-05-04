; Alan Barnett
; My add program, written in assembly. It should replicate the my_add.c test
; program.

global _start

section .text:

add:
	; Since we don't move the stack pointers here, the values in these
	; registers are added outside the function as well.
	; This isn't really true, the stack pointer only controls how much of the
	; stack you've used. The registers are always the same regardless. If we
	; wanted them saved, we should push them to the stack after adjusting the
	; stack pointer, and then pop them back off before fixing the stack pointer
	; at the end. It is the responsibility of the called function to manage
	; it's base pointer. The only reason I wasn't originally moving the stack
	; pointer is because I didn't need space on the stack, but I've since put
	; it here for my own benefit in the future.
	push rbp			; save the value of the old base pointer on the stack
	mov rbp, rsp		; set the new base pointer with the current stack

	add rdi, rsi		; add parameters
	mov rax, rdi		; exit with added value

	mov rsp, rbp		; set the stack pointer to the base pointer
						; this moves the stack back to the base, so anything
						; that is still on the stack is ignored
	pop rbp				; set the base pointer to what it was before this
	ret

_start:
	push rbp
	mov rbp, rsp
	mov rdi, 15
	mov rsi, 27			; parameters for add function
	call add			; this is how you call functions

	; Exits with the value we want in rdi already
	mov rax, 0x3C		; exit syscall (decimal 60)
	syscall
