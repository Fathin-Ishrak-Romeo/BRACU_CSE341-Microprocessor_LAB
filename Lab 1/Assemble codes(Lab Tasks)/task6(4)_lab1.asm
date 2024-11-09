.model small
.stack 100h
.data

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ax, 3  ;A = 3
    mov bx, 4  ;B = 4
    
    dec ax     ;A = A - 1 = 2
    sub bx, ax ;B = B - (A - 1) = 4 - 2 = 2
    mov ax, bx ;A = B - (A - 1) = 2

