SECTION .text:
	global rindex:function

rindex:
	xor rax, rax
    call strlen
_loop_rindex:
	cmp sil, [rdi + rax]
    jz _end_rindex
	cmp rax, 0
	jz _end_null_rindex
	dec rax
	jmp _loop_rindex

_end_null_rindex:
	xor rax, rax
	ret
_end_rindex:
	lea rax, [rdi + rax]
    ret

strlen:
	xor rax, rax
_loop:
	cmp BYTE [rdi + rax], 0
	jz _end
	inc rax
	jmp _loop

_end:
	ret