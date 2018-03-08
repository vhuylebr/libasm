SECTION .text:
	global memset:function

memset:
	xor rax, rax
_loop:
	cmp rax, rdx
	jz _end
    mov [rdi + rax], rsi
	inc rax
	jmp _loop

_end:
    mov rax, rdi
	ret