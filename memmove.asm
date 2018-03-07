SECTION .text:
	global my_memmove:function

my_memmove:
	xor rax, rax
    xor r9b, r9b

_loop:
	cmp rax, rdx
	je _end
    mov r9b, [rsi + rax]
    mov [rdi + rax], r9b
	inc rax
	jmp _loop

_end:
    mov rax, rdi
	ret