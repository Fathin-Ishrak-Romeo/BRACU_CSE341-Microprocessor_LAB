.model small
.stack 100h
.data

.code

main proc
    mov ax, @data
    mov ds, ax
    
    ;code
    mov ax, 10     ;dividend will always be stored in ax
    mov bl, 3      ;divisor (8 bit)
    div bl         ;here, it's a 8-bit divison
                   ;since divisor is bl(8-bit)
                   ;in this case, quotient will be stored in al register
                   ;remiander will be stored in ah register
                   ;al = 03 (Quotient)
                   ;ah = 01 (Remainder)
                                                                
                                                                
                
    