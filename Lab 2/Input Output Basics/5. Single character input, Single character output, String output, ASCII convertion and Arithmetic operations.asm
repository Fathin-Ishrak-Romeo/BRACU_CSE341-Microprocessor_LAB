.model small
.stack 100h     

.data             ;varialbles, strings are stored in here
sum db "SUM: $"   ;syntax: variable_name variable_size "string$"
                  ;variable_size = dw (data word or 16-bit variable)
                  ;variable_size = db (data byte or 1-byte or 8-bit variable)
                  ;$ (dollor sign) represents the end of the string

.code   

main proc
    mov ax, @data
    mov ds, ax
    
    ;code      
    mov ah, 1     
    int 21h       ;first input = 1 (ascii 49)
    
    mov bl, al    ;first input is moved to bl from al so that it can hold second input
    
    mov ah, 1           
    int 21h       ;second input = 2 (ascii 50)
    add bl, al    ;bl = bl + al = 49 + 50 = 99 
                  ;but our desired output is 3 (ascii 51)
    sub bl, 48    ;here 48 is subtracted from the addition result to convert ascii form the actual value
                  ;in order to subtraction operation, we would add 48 to the ascii form to get the actual value
    
    
    mov ah, 9     ;string output instruction
    lea dx, sum   ;loading the memory address of the first character of the string to dx
                  ;it starts reading the string from the first character address
                  ;when $ (dollor sign) is encounted, it stops reading the string
    int 21h       ;checking if the ah == 9. yes, then show the string as output in a prompt  
    
      
    mov dl, bl    ;result is moved to dl so that it can be accessed by the output instruction
    mov ah, 2     ;single character output instruction
    int 21h       ;varifying output instruction
    
    
    
    