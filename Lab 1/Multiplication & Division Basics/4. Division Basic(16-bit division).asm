.model small
.stack 100h
.data

.code

main proc
    mov ax, @data
    mov ds, ax
    
    ;code
    mov ax, 10     ;dividend will always be stored in ax
    mov bx, 3      ;divisor (16 bit)
    div bx         ;here, it's a 16-bit divison
                   ;since divisor is bx(16-bit)
                   ;in this case, quotient will be stored in ax register
                   ;remiander will be stored in dx register
                   ;ax = 0003 (Quotient)
                   ;dx = 0001 (Remainder)
                   
                
    