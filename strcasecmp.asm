SECTION .text:
	global strcasecmp:function

strcasecmp:
	xor rax, rax
    xor r9, r9
    xor r8, r8
_loop:
    cmp BYTE [rdi + rax], 0
	je _end
    cmp BYTE [rsi + rax], 0
	je _end
    mov r9b, [rsi + rax]
    mov r8b, [rdi + rax]
    sub r8b, r9b
    cmp r8b, -32
    je _same_case
    cmp r8b, 32
    je _same_case
	cmp r8b, 0
	jne _end
    jmp _same_case

_same_case:
    inc rax    
    jmp _loop

_end:
    mov r9b, [rsi + rax]
    mov r8b, [rdi + rax]
    sub r8, r9
    mov rax, r8
	ret