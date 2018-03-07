SECTION .text:
	global strchr:function
my_strlen:
	xor rax, rax
	mov rsi, [rsi]
_loop:
	cmp [rdi + rax], rsi
    jz _end
	inc rax
	jmp _loop

_end:
	mov rax, [rdi + rax]
    ret