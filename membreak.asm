;;membreak.asm
;   Author: Lojacops
;   Language: Nasm assembly, x86
;   enjoy this shit and have sex

section .text
    global _start:
_start:
    jmp monke           ;monke jump
payload:
    mov edx, len        
    mov edx, msg        
    mov edx, uwu        ;Yeah, it's for... a normal textual print?
    mov edx, ass
    mov ebx, 1          
    mov eax, 4
    int 0x80            ;a normie kernel call
    
    mov ebx, eax    
    int 0x80            ;a normie kernel call

buff:
    pop edx
    pop ecx
    xor ebx, eax        ;clear registers
    call payload   
    int 0x80            ;a normie kernel call

monke:
    call buff
    call payload        ;the monke call our 'payload' (lol)
loop monke              

section .data
    msg db 'S'        
    ass dw 69           ; 69 to ascii: 'E'
    uwu db 'X'
    ret 0 
len equ $ -msg

section .bss
    num resb 1
