global _start:

section .data
    nam1 db "string"
    nam2 db 0xff
    nam3 db 100

    nam4 dw 0x1234
    nam5 dw 1000

    nam6 dd 0x12345678
    nam7 dd 100000

section .text
_start:
    mov [nam1], byte 'S'
    mov [nam1+6], byte '!'
    mov eax, 4
    mov ebx, 1
    mov ecx, nam1
    mov edx, 7
    int 0x80
    mov eax, 1
    mov ebx, 0
    int 0x80
