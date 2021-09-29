.model small
.stack 100h
.data
    msg db "?$"
    msg1 db 10,13,"##########$"
    msg2 db 10,13, "###"
    ch1 db ?
    ch2 db ?
    ch3 db ?,"####$"
    
    
.code
     
    main proc
        
        mov ax,@data ;inti data segment to code segment
        mov ds,ax
        
        mov ah,2
        mov dl,msg
        int 21h
        
        mov ah,1
        int 21h
        
        mov ch1,al
        int 21h
        
        mov ch2,al
        int 21h
        
        mov ch3,al
        int 21h
        
        mov ah,9  ;Output
        lea dx,msg1
        int 21h
        
        int 21h
        int 21h
        int 21h
        int 21h
        int 21h
        
        lea dx,msg2
        int 21h
        lea dx,msg1
        
        int 21h
        int 21h
        int 21h
        int 21h
        int 21h
        
        mov ah,2 ;Beep the counter
        mov dl,7h
        int 21h
        
        
        exit:
            mov ah,4ch
            int 21h
            main endp
    end main