.model small
.stack 100h
.data

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ax, 3
    mov bx, 4
    mov cx, 5
    mov dx, 6
    
    add ax, bx 
    add cx, dx 
