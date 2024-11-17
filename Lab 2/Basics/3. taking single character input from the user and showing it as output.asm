.model small
.stack 100h
.data

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 1       ;single character input
    int 21h
                                           
    mov dl, al      ;moving input from al to dl to show it as output
    
    mov ah, 2       ;single character output
    int 21h
    
    mov ax, 4C00h   
    int 21h        
                   