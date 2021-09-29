.model small
.stack 100h
.data
       
num1 db ?
num2 db ?
result db ?       

m0 db "             ***children math learning***$"
inputNumber db "               Choose an number : $"
showTwoNumbers db "         Enter 2 numbers for multiplication : $"
 
output db "               The result is   : $" 
anotherNumbers db "              For another number : $" 
toExit db "To exit,type :`0'$"
thankYourMessage db "               *** Thank You ***$"


invalidMessage db "           ======= Invalid Input =======$"

.code
main proc

;==========show ta data segment to code segment===========
    
    mov ax,@data
    mov ds,ax
    
    lea dx,m0
    mov ah,9
    int 21h 
    
    call nl
    
    lea dx,toExit
    mov ah,9
    int 21h
    
    call nl
    call nl  
    
;======start calculation==============  

  calc: 
    lea dx,inputNumber
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al  
    
    call nl
    call nl
    
;=====compare the numbers =======
  
    cmp bl,'1'
     je mull  
    cmp bl,'2'
     je mull
    cmp bl,'3' 
     je mull
    cmp bl,'4'
     je mull   
    cmp bl,'5'
     je mull
    cmp bl,'6'
     je mull
    cmp bl,'7'
     je mull   
    cmp bl,'8'
     je mull
    cmp bl,'9'
     je mull  
     
    ;cmp bl,'10'
     ;jmp mull   
     
 ;========compare exit==============  
           
    cmp bl,'0'
     je go
    
    call nl
    call nl
    
    lea dx,invalidMessage
    mov ah,9
    int 21h 
    
    call nl
    call nl
    
    jmp calc   
    
;=========start multiply=============
    
  mull:
    lea dx,showTwoNumbers
    mov ah,9
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
    sub dl,30h 
    mov num1,dl

    mov ah,2
    mov dl,'*'
    int 21h
     
    mov ah,2
    mov dl,bl
    int 21h
    sub al,30h 
    mov num2,al

    
    mul num1
    mov result,dl
    
    aam
    add ah,30h
    add al,30h
    mov bx,ax

    call nl
    call dr
    

    mov ah,2
    mov dl,bh
    int 21h
    mov ah,2
    mov dl,bl
    int 21h  
    
 ;==========Again Input Field==============
    
    call nl
    call nl
    
    lea dx,anotherNumbers
    mov ah,9
    int 21h   
    
    call nl
    call nl    
    
    lea dx,toExit
    mov ah,9
    int 21h 
    
    call nl
    call nl 
    
    jmp calc   
    
;==========Input section===========    
    mov ah,1
    int 21h 
    
    mov bl,al
    cmp bl,'0'
    je go
    
    call nl
    call nl
    
;=========Print NewLine================  
    
  nl:
    mov ah,2
    mov dl,13
    int 21h
    mov dl,10
    int 21h
    ret

;======Print Thank Message===============
    
  tnx:
    lea dx,thankYourMessage
    mov ah,9
    int 21h
    ret  
    
;==========Show Output Message==============
  
  dr: 
    lea dx,output
    mov ah,9
    int 21h
    ret
    
   call nl 

;============Exit Part============
   
  go:    
    call tnx
    
;======End of the code===============  
    
  exit:
    mov ah,4ch
    int 21h 
    
    main endp
end main
