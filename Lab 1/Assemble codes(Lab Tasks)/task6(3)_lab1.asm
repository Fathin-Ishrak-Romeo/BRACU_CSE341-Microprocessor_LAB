.model small
.stack 100h
.data

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ax, 3  ;A = 3
    mov bx, 4  ;B = 4
    
    inc bx     ;B = B + 1 = 5
    add ax, bx ;A = A + (B + 1) = 3 + 5 = 8
    mov cx, ax ;C = A + (B + 1) = 8
