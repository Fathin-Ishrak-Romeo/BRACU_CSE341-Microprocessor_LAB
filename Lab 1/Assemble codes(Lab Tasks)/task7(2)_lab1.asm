.model small
.stack 100h
.data

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ax, 4  ;X = 4
    mov bx, 3  ;Y = 3
    
    div bx 

