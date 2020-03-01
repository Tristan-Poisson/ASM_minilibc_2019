;;
;; EPITECH PROJECT, 2020
;; ASM_minilibc_2019
;; File description:
;; strcmp.asm
;;

GLOBAL  strcmp:function

section .text

strcmp:
    xor     rcx, rcx
    xor     r10, r10
    xor     r11, r11

.loop:
    mov     r10b, BYTE [rdi + rcx]
    mov     r11b, BYTE [rsi + rcx]
    cmp     r10b, 0
    je      end
    cmp     r11b, 0
    je      end
    cmp     r10b, r11b
    jne     end
    inc     rcx
    jmp     .loop

end:
    sub     r10b, r11b
    movsx   rax, r10b
    ret
