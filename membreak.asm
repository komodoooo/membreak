;;membreak.asm
;   Author: Lojacops
;   Language: Nasm assembly, x86
;   enjoy this shit and have sex

section .text
    global _start:
_start:
    jmp monke           ;monke jump
payload:
    mov edx, len        ;add lenght and msg, for a normal textual print
    mov ecx, msg        
    mov ebx, 1          ;The trick is fix the null bytes.
    mov eax, 4
    int 0x80            
    
    mov ebx, eax    
    int 0x80            ;kernel call

buff:
    pop edx
    pop ecx
    xor ebx, eax        ;clear registers
    call payload   
    int 0x80

monke:
    call buff
loop monke              ;the monke call our 'payload' (lol)

section .data
    msg dw '0'        ;hey
len equ $ -msg

section .bss
    num resb 1
