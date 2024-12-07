.model small
.stack 100h
.data

.code

main proc
    mov ax, @data
    mov ds, ax
    
    ;code
    mov ax, 0FFFFh   ;multiplicand always be in ax
    mov bx, 2        ;multiplier in decimal, can also be in hex/bin
    mul bx           ;ax = ax * bx = 0FFFFh * 2 = 1FFFE
                     ;ax, bx both are 16-bit registers
                     ;here, max size of the product can be 16+16=32 bits
                     ;but none of the registers are of 32 bits
                     ;so in this case, higher 16 bits of the product will be stored in dx
                     ;lower 16 bits of the product will be stored in ax    
    
               
