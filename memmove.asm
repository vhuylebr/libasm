SECTION .text:
	global memmove:function

memmove:
	xor rax, rax
    xor r9b, r9b
	cmp rdi, rsi
	jg _is_loop_2
	jmp _loop

_second:
	dec rdx
	jmp _loop

_loop:
	cmp rdx, rax
	je _end
    mov r9b, [rsi + rax]
    mov [rdi + rax], r9b
	inc rax
	jmp _loop

_is_loop_2:
	call strlen
	cmp rdi, [rsi + rax]
	jg _loop_2
	xor rax, rax
	jmp _loop

_loop_2:
	cmp rdx, -1
	jz _end
	cmp BYTE [rdi + rdx], 0
	jz _second
	cmp BYTE [rsi + rdx], 0
	jz _second
    mov r9b, [rsi + rdx]
    mov [rdi + rdx], r9b
	dec rdx
	jmp _loop_2

_end:
	mov rax, rdi
	ret

strlen:
	xor rax, rax
_loop_strlen:
	cmp BYTE [rdi + rax], 0
	jz _end_strlen
	inc rax
	jmp _loop_strlen

_end_strlen:
	ret