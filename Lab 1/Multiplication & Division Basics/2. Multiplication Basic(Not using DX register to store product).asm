.model small
.stack 100h
.data

.code

main proc
    mov ax, @data
    mov ds, ax
    
    ;code
    mov ax, 0FFFFh   ;multiplicand always be in ax
    mov bl, 2        ;multiplier in decimal
    mul bl           ;actual product, ax = ax * bl = 0FFFFh * 2 = 1FFFE
                     ;ax is 16-bit register and bl is 8-bit register
                     ;here, max size of the product can be 16+8=24 bits
                     ;but none of the registers are of 24 bits
                     ;interestingly in this case, the whole product will be store in ax
                     ;though ax is not enough to store the whole value of the product
                     ;therefore, leads to incorrect result
                     ;ax(product) = 01FE
               