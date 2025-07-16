  section .text
        global _start

_start:
        mov ebx,3       
        mov ebx,0      
        mov ecx,array  


        mov eax,[ecx]   
        add ecx,4       
        cmp eax,[ecx]   
        jg loopy1
        mov eax,[ecx]  
        jmp loopy1

loopy1:
        add ecx,4       
        cmp eax,[ecx]  
        jg exit
        mov eax,[ecx]   

exit:
	mov [largest],eax     
        mov eax,1
        int 0x80

section .data
        array dd 7,11,20 

segment .bss
        largest resb 1
