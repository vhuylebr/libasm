SECTION .text:
	global my_strchr:function
my_strchr:
	xor rax, rax
_loop:
	cmp BYTE [rdi + rax], 0
	jz _end_null
	cmp sil, [rdi + rax]
    jz _end
	inc rax
	jmp _loop

_end_null:
	xor rax, rax
	ret
_end:
	lea rax, [rdi + rax]
    ret