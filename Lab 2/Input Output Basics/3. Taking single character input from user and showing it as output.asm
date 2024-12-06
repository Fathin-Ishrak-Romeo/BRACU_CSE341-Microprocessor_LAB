.model small
.stack 100h     

.data

.code   

main proc
    mov ax, @data
    mov ds, ax
    
    ;code
    mov ah, 1      ;single character input instruction
    int 21h        ;checking input instruction  
                   ;input will be stored in al
    
     
    mov dl, al     ;moving the input to the dl to show it as output
                   ;store the ascii value in dl
                   ;we used dl here instead of dx
                   ;it is because al is an 8-bit register
                   ;to store the content of 8-bit register, we have to use another 8-bit register
                   ;so we used dl here, because it's the low byte of the dx register
                       
                       
    mov ah, 2      ;single character output instruction
    int 21h        ;checking output instruction
                      