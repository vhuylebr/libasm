SECTION .text:
	global strpbrk:function

strpbrk:
	xor rax, rax
    xor r9, r9
    xor r8, r8
    xor r10, r10
    xor r11, r11

_loop:
    xor r11, r11
	cmp BYTE [rdi + rax], 0
	je _end_bad
    mov r9b, [rdi + rax]
    jmp _search

_search:
    cmp BYTE [rsi + r11], 0
    je _not_found
    cmp r9b, [rsi + r11]
    je _end
    inc r11
    jmp _search
    
_not_found:
    inc rax
    jmp _loop

_end:
    lea rax, [rdi + rax]
    ret

_end_bad:
    xor rax, rax
    ret
