
section .text
        global _start

_start:
        mov ecx,10
        loopy1:
        add eax,ecx
        loop loopy1

        mov [result],eax

        mov eax,1
        int 0x80

segment .bss
        result resb 1
