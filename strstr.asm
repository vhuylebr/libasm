SECTION .text:
	global strstr:function

strstr:
	xor rax, rax
    xor r9, r9
    xor r8, r8
    xor r10, r10
    xor r11, r11
_loop:
	cmp BYTE [rdi + rax], 0
	jz _end_bad
    mov r8b, [rsi + 0]
    mov r9b, [rdi + rax]
	cmp r8b, r9b
    jz _loop_2
	inc rax
    mov r10, rax
	jmp _loop

_loop_2:
    cmp BYTE [rsi + r11], 0
	je _end
    cmp BYTE [rdi + rax], 0
	je _end_bad
    mov r9b, [rsi + r11]
    mov r8b, [rdi + rax]
	cmp r8b, r9b
	jne _rollback
	inc rax
    inc r11
	jmp _loop_2

_rollback:
    mov rax, r10
    xor r11, r11
    jmp _loop

_end:
    lea rax, [rdi + r10]
    ret

_end_bad:
    xor rax, rax
    ret
