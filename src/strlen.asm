;;
;; EPITECH PROJECT, 2020
;; ASM_minilibc_2019
;; File description:
;; strlen.asm
;;

GLOBAL strlen:function

section .text

strlen:
    XOR rax, rax
    JMP .loop

.loop:
    cmp byte [rdi], 0
    je  end
    inc rax
    inc rdi
    jmp .loop

end:
    ret
