.model small
.stack 100h
.data

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ax, 3  ;A = 3
    
    add ax, 1  ;A = A + 1 = 3 + 1 = 4
    neg ax     ;A = -(A + 1) = -4
