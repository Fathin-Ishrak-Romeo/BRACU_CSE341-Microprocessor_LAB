.model small
.stack 100h
.data

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ax, 3  ;X = 3
    mov bx, 4  ;Y = 4
    
    mul bx     ;X = X * Y
