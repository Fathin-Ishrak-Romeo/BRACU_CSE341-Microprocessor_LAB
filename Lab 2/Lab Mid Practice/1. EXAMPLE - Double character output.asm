;Question: 5 and 4 as inputs from user. Show the product of these 2 inputs in the following format "Product: 20"

.model small
.stack 100h          

.data    
input1 db "Input 1: $"
input2 db "Input 2: $"
product db "Product: $"

.code
main proc
    mov ax, @data   
    mov ds, ax
    
    lea dx, input1
    mov ah, 9
    int 21h
    
    mov ah, 1          ;input 1  (4, ascii 52)
    int 21h
    
    sub al, 48         ;converting input 1 into its actual value  (52 - 48 = 4)
    
    mov bl, al         ;relocate input 1 value from al to bl so that input 2 value won't overwrite input 1 value
                       ;bl = 4
    
    mov dl,10          ;newline
    mov ah, 2
    int 21h
    
    mov dl, 13         ;carriage return
    mov ah, 2
    int 21h
    
    lea dx, input2     
    mov ah, 9
    int 21h
    
    mov ah, 1          ;input 2  (5, ascii 53)
    int 21h
    
    sub al, 48         ;converting input 1 into its actual value   (53 - 48 = 5)
                       ;al = 5
    
    mov ah, 0          ;empty ah for multiplication
    mul bl             ;al = al * bl = 5 * 4 = 20
    
    mov cl, 10         
    div cl             ;dividing the product by 10 will give us quotient(al) = 2 and remainder(ah) = 0
    
    mov cl, al         ;relocating quotient(al) to cl = 2
                       ;cl = 2
    mov ch, ah         ;relocating remainder(ah) to ch = 0
    
    mov dl,10          ;newline
    mov ah, 2
    int 21h
    
    mov dl, 13         ;carriage return
    mov ah, 2
    int 21h
    
    lea dx, product
    mov ah, 9
    int 21h
           
    mov dl, cl         ;relocating cl to dl to show it as output
    add dl, 48         ;2 + 48 = ascii 50 (actual value 2)
           
    mov ah, 2
    int 21h 
    
    mov dl, ch         ;relocating ch to dl to show it as output
    add dl, 48         ;0 + 48 = ascii 48 (actual value 0)
           
    mov ah, 2
    int 21h