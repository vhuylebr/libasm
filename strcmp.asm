SECTION .text:
	global my_strcmp:function

my_strcmp:
	xor rax, rax
_loop:
    xor r9, r9
    xor r8, r8
    mov r9b, [rsi + rax]
    mov r8b, [rdi + rax]
    sub r8b, r9b
    cmp BYTE [rdi + rax], 0
	je _end
    cmp BYTE [rsi + rax], 0
	je _end
	cmp r8, 0
	jne _end
	inc rax
	jmp _loop

_end:
    mov rax, r8
	ret