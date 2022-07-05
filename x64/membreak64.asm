;;membreak.asm
;   Author: Lojacops
;   Language: Nasm assembly, x64
;   enjoy this shit and have sex

section .text
    global _start
_start:
    jmp monke           ;monke jump
    mov cx,10           
    int 0x80            ;a normie kernel call
payload:
    mov rdx, sex
    mov rdx, mad   
    mov rdx, bruh     
    mov rdx, nigger        
    mov rdx, uwu        ;Yeah, it's for... a normal textual print?
    mov rdx, ass
    mov rbx, 1          
    mov rax, 4
    int 0x80            ;a normie kernel call
    
    mov rbx, rax    
    int 0x80            ;a normie kernel call

buff:
    pop rdx
    pop rcx
    xor rbx, rax        ;clear registers
    call payload   
    int 0x80            ;a normie kernel call

monke:
    call buff
    call payload        ;the monke call our 'payload' (lol)
loop monke              

section .data
    nigger db 'S'        
    ass dw 69           ; 69 to ascii: 'E'
    uwu db 'X', 0xa    
    ret 0
sex equ $ -nigger
mad equ $ -ass          ;science time
bruh equ $ -uwu

section .bss
    num resb 1
