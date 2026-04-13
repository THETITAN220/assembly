global _start

section .text
_start:
    mov ebx, 42
    mov eax, 1
    mov ecx, 99
    cmp ecx, 100
    jl skip
    mov ebx, 13
skip:
    int 0x80
