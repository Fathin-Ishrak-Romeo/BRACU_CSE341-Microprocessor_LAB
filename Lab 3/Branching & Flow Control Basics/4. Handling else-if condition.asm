.model small
.stack 100h     

.data
less db "6 is less than 5.$"
greater db "6 is greater than 5.$"  
equal db "Both numbers are equal.$"
check db "All jump conditions worked successfully.$"
      
.code   

main proc
    mov ax, @data
    mov ds, ax
    
    ;code:
    mov ax, 6
    mov bx, 6
    
    ;conditional jump:
    cmp ax, bx 
      
    ;if condition:
    jl L1                     
    
    ;else if condition:               
    je L2
    
    ;else conditon:
    mov ah, 9      
    lea dx, greater
    int 21h             
    
    
    ;new line:
    mov dl, 10 
    mov ah, 2
    int 21h     
    
    ;carriage return:
    mov dl, 13
    mov ah, 2
    int 21h     
     
     
    ;unconditional jump:
    jmp exit       
    
               
    ;if condition label:           
    L1:            
    mov ah, 9       
    lea dx, less    
    int 21h   
    
    ;new line:
    mov dl, 10 
    mov ah, 2
    int 21h     
    
    ;carriage return:
    mov dl, 13
    mov ah, 2
    int 21h   
    
    jmp exit          
        
    ;else if condition label:                                                                               
    L2:                                                                                
    mov ah, 9       
    lea dx, equal    
    int 21h   
    
    ;new line:
    mov dl, 10 
    mov ah, 2
    int 21h     
    
    ;carriage return:
    mov dl, 13
    mov ah, 2
    int 21h   
          
    exit: 
    
    mov ah, 9 
    lea dx, check
    int 21h
