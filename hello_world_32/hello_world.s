; hello_world.s
;
; Author: Alan Barnett
; Date: 12/07/2019

; eax-edx are 32 bit
; ax-dx lower short of eax-edx
; al,ah-dl,dh are lower,higher char of eax-edx
; a - accumulator, most i/o / math instructions
; b - base, "indexed addressing"
; c - counter, stores iterators/loop count/iterative operationr
; d - data, basically the same thing as a
; pointers are a different section

; in IA_32 there are sections and registers for certain things

; Use start as starting place
global _start

; Program code
section .text:
_start:
	; To find the syscall numbers, open /usr/include/asm/unistd_32.h
	mov eax, 0x4	; use write syscall
	; The eax register will have the syscall's return value
	mov ebx, 1
	mov ecx, message
	mov edx, message_length
	int 0x80		; run syscall (write). this calls the kernel(?)

	mov ebx, eax	; put write's return value into second argument
	mov eax, 0x1	; set up call to exit
	int 0x80		; run exit

; Variables and things we need
section .data:
	message: db "Hello World", 0x0a
	message_length equ $ - message

; To make this into an object file:
; nasm -f elf32 -o hello_world.o hello_world.s
; To make the object into an executable:
; ld -m elf_i386 -o hello_world hello_world.o
