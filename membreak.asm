;;membreak.asm
;   Author: Lojacops
;   Language: Nasm assembly, x86
;   enjoy this shit and have sex

section .text
    global _start
_start:
    jmp monke           ;monke jump
    mov cx,10           
    int 0x80            ;a normie kernel call
payload:
    mov edx, sex
    mov edx, mad   
    mov edx, bruh     
    mov edx, nigger        
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
    nigger db 'S'        
    ass dw 69           ; 69 to ascii: 'E'
    uwu db 'X'
    ret 0
sex equ $ -nigger
mad equ $ -ass          ;science time
bruh equ $ -uwu

section .bss
    num resb 1
