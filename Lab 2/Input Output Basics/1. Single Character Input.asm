.model small
.stack 100h     

.data

.code   

main proc
    mov ax, @data
    mov ds, ax
    
    ;code
    mov ah, 1      ;single character input instruction
    int 21h        ;checks if ah == 1. yes, then show input prompt
                   ;input will be stored in al register in ascii format
                   