SECTION .text:
	global strlen:function

strlen:
	xor rax, rax
_loop:
	cmp BYTE [rdi + rax], 0
	jz _end
	inc rax
	jmp _loop

_end:
	ret