SECTION .text:
	global my_strlen:function

my_strlen:
	xor rax, rax
_loop:
	cmp BYTE [rdi + rax], 0
	jz _end
	inc rax
	jmp _loop

_end:
	ret