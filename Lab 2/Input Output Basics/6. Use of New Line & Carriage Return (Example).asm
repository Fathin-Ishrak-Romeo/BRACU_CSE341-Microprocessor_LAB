;Question: Take 2 and 1 from the user in two seperate line. Outputs the result in another seperate line in the following format "Result: 1" 
    
    
    
.model small
.stack 100h     

.data             ;varialbles, strings are stored in here
sum db "Result: $";syntax: variable_name variable_size "string$"
                  ;variable_size = dw (data word or 16-bit variable)
                  ;variable_size = db (data byte or 1-byte or 8-bit variable)
                  ;$ (dollor sign) represents the end of the string

.code   

main proc
    mov ax, @data
    mov ds, ax
    
    ;code      
    mov ah, 1     
    int 21h       ;first input = 2 (ascii 50)
    
    mov bl, al    ;first input is moved to bl from al so that it can hold second input
     
     
                           
    ;                       
    ;new line instruction  
    mov dl, 10    ;ascii 10 is used for moving the cursor to new line
                  ;but the position of the cursor remains the same
    mov ah, 2
    int 21h       ;output newline
                                                                 
    ;carriage return instruction
    mov dl, 13    ;ascii 13 is used for moving the cursor to the beginning of current line
    mov ah, 2
    int 21h       ;output carriage return 
                  ;newline and carriage return both instructions work in combination
                  ;if we use carriage return before newline instruction, it'll work as same
    ;
               

    ;taking second input from the new line
    mov ah, 1           
    int 21h       ;second input = 1 (ascii 49)

    ;arithmetic operation
    sub bl, al    ;bl = bl - al = 50 - 49 = ascii 001
                  ;but our desired output is 1 (ascii 49)

    ;ascii to actual value conversion
    add bl, 48    ;here 48 is added to the ascii form to get the actual value
                  ;in order to addtion operation, we would add to the subtracted result to convert ascii form the actual value
                                              
    
    ; 
    ;showing output from the new line                      
    ;carriage return instruction
    mov dl, 13   
    mov ah, 2
    int 21h
        
    ;new line instruction  
    mov dl, 10 
    mov ah, 2
    int 21h                 
    ;
                          
                          
    mov ah, 9     ;string output instruction
    lea dx, sum   ;loading the memory address of the first character of the string to dx
                  ;it starts reading the string from the first character address
                  ;when $ (dollor sign) is encounted, it stops reading the string
    int 21h       ;checking if the ah == 9. yes, then show the string as output in a prompt  
    
      
    mov dl, bl    ;result is moved to dl so that it can be accessed by the output instruction
    mov ah, 2     ;single character output instruction
    int 21h       ;varifying output instruction
    
