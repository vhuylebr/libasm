SECTION .text:
	global my_memset:function

my_memset:
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