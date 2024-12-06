.model small
.stack 100h     

.data            ;varialbles, strings are stored in here
hello db "Hello World$"  ;syntax: variable_name variable_size "string$"
                         ;variable_size = dw (data word or 16-bit variable)
                         ;variable_size = db (data byte or 1-byte or 8-bit variable)
                         ;$ (dollor sign) represents the end of the string

.code   

main proc
    mov ax, @data
    mov ds, ax
    
    ;code
    mov ah, 9     ;string output instruction
    lea dx, hello ;loading the memory address of the first character of the string to dx
                  ;it starts reading the string from the first character address
                  ;when $ (dollor sign) is encounted, it stops reading the string
    int 21h       ;checking if the ah == 9. yes, then show the string as output in a prompt
    