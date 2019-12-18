; hello_world.s
;
; Author: Alan Barnett
; Date: 12/17/2019

global _start				; Defining the entry point

; Load syscall into rax
; Parameter registers are rdi, rsi, rdx, rcx, r8, and r9
; Result comes back in the rax register

section .text:
_start:						; ELF entry point
	mov rax, 0x01			; write syscall, from /usr/include/asm/unistd_64.h
	mov rdi, 0x01			; param 1, stdout
	mov rsi, message		; param 2, buffer
	; Apparently you NEED square brackets around this next variable
	; only if it's declared with the .end section stuff commented out in data
	; it's probably a different type of variable
	; mov rdx, [message_len]
	mov rdx, message_len	; param 3, length of buffer
	syscall					; syscall command runs the syscall (write)

	mov rdi, rax			; put write's return value into exit
	mov rax, 0x3C			; exit syscall
	syscall					; run exit

section .data:
	message: db "Hello World", 0x0A
	message_len: equ $ - message
	; message_len: dq message.end-message
	; message: db "Hello World", 0x0A
; .end:

; To make this into an object file:
; nasm -f elf64 hello_world_64.s 
; To make the object into an executable:
; ld hello_world_64.o
