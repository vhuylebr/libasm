SECTION .text:
	global my_strncmp:function

my_strncmp:
	xor rax, rax
    xor r9b, r9b
    xor r8b, r8b
_loop:
    cmp BYTE [rdi + rax], 0
	je _end
    cmp BYTE [rsi + rax], 0
	je _end
    cmp rax, rdx
	je _end
    mov r9b, [rsi + rax]
    mov r8b, [rdi + rax]
	cmp r8b, r9b
	jne _end
	inc rax
	jmp _loop

_end:
    sub r8, r9
    xor rax, rax
    mov rax, r8
	ret