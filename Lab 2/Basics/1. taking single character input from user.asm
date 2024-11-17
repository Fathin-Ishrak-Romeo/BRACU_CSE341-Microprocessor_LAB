.model small
.stack 100h
.data

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 1      ;ah = 1:single character input
    int 21h        ;inturrpt for system call
    
    mov ax, 4C00h  ;program exits 
    int 21h        ;inturrpt
                   ;the input will store in al
                   ;stores the ascii value of the input
                   