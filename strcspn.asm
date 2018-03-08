SECTION .text:
	global strcspn:function

strcspn:
	xor rax, rax
    xor r9, r9

_loop:
    xor r11, r11
	cmp BYTE [rdi + rax], 0
	je _end
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
    ret

_end_bad:
    xor rax, rax
    ret
