.model small
.stack 100h
.data

x db 'Enter First Number  : $'
y db 'Enter Second Number : $'
z db 'Resut (Addition)    : $' 

a db 'Enter First Number  : $'
b db 'Enter Second Number : $'
c db 'Resut (Subtract)    : $' 
         
         
mult1 dw 2521H
dw 3206H
mult2 dw 0A26H
dw 6400H
ans   dw 0,0,0,0
       
       
p db 28h
q db 02h
r dw ?

m db 'Enter First Number  : $'
n db 'Enter Second Number : $'
o db 'Resut (Division)    : $'   
.code

main proc
    mov ax,@data      ; Initialize data segment into code segment
    mov ds,ax     
    
;=============Addition=================================
    mov ah,9          ; Show on screen, value of x
    lea dx,x
    int 21h
    
    mov ah,1          ; User Input
    int 21h
    mov bl,al
    
    mov ah,2          ; NewLine 
    mov dl,10
    int 21h
    mov dl,13
    int 21h     
    
    mov ah,9          ; Show on screen, value of y
    lea dx,y
    int 21h  
    
    mov ah,1          ; Input
    int 21h
    mov bh,al
    
    mov ah,2          ; NewLine
    mov dl,10
    int 21h
    mov dl,13
    int 21h
                     ; Show on screen, value of z
    mov ah,9
    lea dx,z
    int 21h   
    
    add bl,bh       ; bl = bl+bh
    sub bl,48 
    
     
    mov ah,2        ; Output
    mov dl,bl
    int 21h  
    
;===============Subtract=========================
    mov ah,9
    lea dx,a
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,9
    lea dx,b
    int 21h
    
    mov ah,1
    int 21h
    mov bh,al
    
    mov ah,9
    lea dx,c
    int 21h 
    
    sub bl,bh 
    add bl,48   ;bl=bl-bh
    
    mov ah,2
    mov dl,bl
    int 21h
;================Multiply========================  

LEA SI,ans

        mov ax,mult1
        mul mult2
        mov ans,ax
        mov ans+2,dx

        mov ax,mult1+2
        mul mult2
        add ans+2,ax
        adc ans+4,dx
        adc ans+6,0

        mov ax,mult1
        mul mult2+2
        add ans+2,ax
        adc ans+4,dx
        adc ans+6,0

        mov ax,mult1+2
        mul mult2+2
        add ans+4,ax
        adc ans+6,dx

;================Division========================
    mov ax,0000h
    mov bx,0000h
    mov al,p
    mov bl,q
    div b
    mov r,ax      
;===============================================   
    exit:
    mov ah,4ch
    int 21h
    main endp
end main