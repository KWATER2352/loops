section .text
        global _start

_start:
        mov ebx,30
        label:
        loop label

        mov eax,1
        int 0x80
