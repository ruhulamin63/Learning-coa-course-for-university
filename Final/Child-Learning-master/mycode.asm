.model small
.stack 100h
.data

testt db "                  1.study or *.exit$" 
testt1 db "                     study",0dh,0ah
       db "               input alphabet or digit$",0dh,0ah
 for db " for $"



z1 db "zero.$"    
z2 db "one.$"
z3 db "two.$"
z4 db "three.$"
z5 db "four.$"
z6 db "five.$"
z7 db "six.$"
z8 db "seven.$"
z9 db "eight.$"
z10 db "nine.$"




msg db "                      assembly project", 0dh,0ah 
    db "                      code's pathshala", 0dh,0ah
    db "               ==== children learning app ====", 0dh,0ah
	db "                   =====================", 0dh,0ah
	db "                   press any key to start...", 0dh,0ah
	db "                                              $", 0dh,0ah
	
	     
a    db "apple.$"
b    db "ball.$" 
c    db "cat.$"
d    db "dog.$" 
e    db "egg.$" 
f    db "fan.$" 
g    db "goat.$"
h    db "hen.$"
i    db "ink.$" 
j    db "jackfruit.$" 
k    db "kite.$" 
l    db "lion.$" 
m    db "mobile.$" 
n    db "nose.$" 
o    db "orange.$"
p    db "pen.$"
q    db "queen.$" 
r    db "rose.$" 
s    db "sheep.$" 
t    db "tiger.$"
u    db "umbrella.$" 
v    db "violin.$" 
w    db "window.$"
x    db "x-ray.$"  
y    db "yolk.$" 
z    db "ziraf.$"

tnx db "                   ===o thank you o===$"
inv db "                         invalid input.$"  
space db "                        $"

.code

main proc
        
    mov ax,@data
    mov ds,ax 
      
    include 'emu8086.inc'

    mov ah,9
    lea dx,msg
    int 21h

    mov ah,1
    int 21h
 
    top:
    printn ''
  
    mov ah,9
    lea dx,testt
    int 21h
 
    printn ''
    mov ah,9
    lea dx,space
    int 21h
        
    mov ah,1
    int 21h
    mov bl,al



    printn ''
 
    cmp bl,'1'
    je opp1
 
    cmp bl,'*'
    je op2
 
    jmp top 
  
    printn ''
 
 
         
 opp1:
    printn ''
    mov ah,9
    lea dx,testt1
    int 21h
    
 printn ''
 
 printn ''
 
   op1: 
     printn ''
        
     mov ah,9
     lea dx,space
     int 21h 
   
           
     mov ah,1
     int 21h
     mov bl,al  
     
     
     cmp bl,'*'
     je op2
     
     cmp bl,58
     jl number
     
     mov ah,9
     lea dx,for
     int 21h
     
      
     cmp  bl,'a'
     je c1
     cmp bl,'a'
     je c1  
      
     cmp  bl,'b'
     je c2
     cmp bl,'b'
     je c2 
       
     cmp  bl,'c'
     je c3
     cmp bl,'c'
     je c3 
      
     cmp  bl,'d'
     je c4
     cmp bl,'d'
     je c4
     
     cmp  bl,'e'
     je c5
     cmp bl,'e'
     je c5
       
     cmp  bl,'f'
     je c6
     cmp bl,'f'
     je c6
      
     cmp  bl,'g'
     je c7
     cmp bl,'g'
     je c7
      
     cmp  bl,'h'
     je c8
     cmp bl,'h'
     je c8
      
     cmp  bl,'i'
     je c9
     cmp bl,'i'
     je c9
      
     cmp  bl,'j'
     je c10
     cmp bl,'j'
     je c10
      
     cmp  bl,'k'
     je c11
     cmp bl,'k'
     je c11
      
     cmp  bl,'l'
     je c12
     cmp bl,'l'
     je c12
     
     cmp  bl,'m'
     je c13
     cmp bl,'m'
     je c13     
      
     cmp  bl,'n'
     je c14
     cmp bl,'n'
     je c14
      
     cmp  bl,'o'
     je c15
     cmp bl,'o'
     je c15
      
     cmp  bl,'p'
     je c16
     cmp bl,'p'
     je c16
         
     cmp  bl,'q'
     je c17
     cmp bl,'q'
     je c17
      
     cmp  bl,'r'
     je c18
     cmp bl,'r'
     je c18
      
     cmp  bl,'s'
     je c19
     cmp bl,'s'
     je c19 
      
     cmp  bl,'t'
     je c20
     cmp bl,'t'
     je c20
      
     cmp  bl,'u'
     je c21
     cmp bl,'u'
     je c21
     
     cmp  bl,'v'
     je c22
     cmp bl,'v'
     je c22
      
     cmp  bl,'w'
     je c23
     cmp bl,'w'
     je c23
      
     cmp  bl,'x'
     je c24
     cmp bl,'x'
     je c24
      
     cmp  bl,'y'
     je c25
     cmp bl,'y'
     je c25
      
     cmp  bl,'z'
     je c26
     cmp bl,'z'
     je c26
            
   number: 
      
      mov ah,2
      mov dl,8
      int 21h
      
      cmp  bl,'0'
      je c27
 
     cmp  bl,'1'
     je c28 
     
     cmp bl,'2'
     je c29  
     
     cmp  bl,'3'
     je c30  
     
     cmp bl,'4'
     je c31     
              
     cmp  bl,'5'
     je c32 
     
     cmp bl,'6'
     je c33 
     
     
     cmp  bl,'7'
     je c34 
     
     cmp bl,'8'
     je c35   
 
     cmp  bl,'9'
     je c36 
     jmp op1
      
     mov ah,9
     lea dx,inv
     int 21h
     jmp op1
        
  c1:
     mov ah,9
     lea dx,a
     int 21h
     jmp op1
      
  c2:
    mov ah,9
    lea dx,b
    int 21h
    jmp op1
      
  c3:
    mov ah,9
    lea dx,c
    int 21h
    jmp op1
          
  c4:
     mov ah,9
     lea dx,d
     int 21h
     jmp op1 
          
   c5:
     mov ah,9
     lea dx,e
     int 21h
     jmp op1
          
   c6:
     mov ah,9
     lea dx,f
     int 21h
     jmp op1
           
   c7:
     mov ah,9
     lea dx,g
     int 21h
     jmp op1 
          
   c8:
     mov ah,9
     lea dx,h
     int 21h
     jmp op1 
          
   c9:
     mov ah,9
     lea dx,i
     int 21h
     jmp op1 
           
  c10:
     mov ah,9
     lea dx,j
     int 21h
     jmp op1
           
  c11:
     mov ah,9
     lea dx,k
     int 21h
     jmp op1
          
  c12:
     mov ah,9
     lea dx,l
     int 21h
     jmp op1
        
  c13:
     mov ah,9
     lea dx,m
     int 21h
     jmp op1 
          
  c14:
    mov ah,9
    lea dx,n
    int 21h
    jmp op1 
       
  c15:
    mov ah,9
    lea dx,o
    int 21h
    jmp op1 
       
  c16:
    mov ah,9
    lea dx,p
    int 21h
    jmp op1 
       
  c17:
    mov ah,9
    lea dx,q
    int 21h
    jmp op1 
       
  c18:
    mov ah,9
    lea dx,r
    int 21h
    jmp op1 
      
  c19:
    mov ah,9
    lea dx,s
    int 21h
  
    jmp op1  
      
  c20:
    mov ah,9
    lea dx,t
    int 21h
    jmp op1 
       
  c21:
    mov ah,9
    lea dx,u
    int 21h
    jmp op1 
       
  c22:
    mov ah,9
    lea dx,v
    int 21h
    jmp op1 
  
  c23:
    mov ah,9
    lea dx,w
    int 21h
    jmp op1
       
  c24:
    mov ah,9
    lea dx,x
    int 21h
    jmp op1 
       
  c25:
    mov ah,9
    lea dx,y
    int 21h
    jmp op1
       
  c26:
    mov ah,9
    lea dx,z
    int 21h
    jmp op1  
    
  c27:
    mov ah,9
    lea dx,z1
    int 21h
    jmp op1  
 
  c28:
    mov ah,9
    lea dx,z2
    int 21h
    jmp op1 
 
  c29:
    mov ah,9
    lea dx,z3
    int 21h
    jmp op1
  
  c30:
    mov ah,9
    lea dx,z4
    int 21h
    jmp op1 
 
  c31:
    mov ah,9
    lea dx,z5
    int 21h
    jmp op1  
  
  c32:
    mov ah,9
    lea dx,z6
    int 21h
    jmp op1
  
  c33:
    mov ah,9
    lea dx,z7
    int 21h
    jmp op1 
 
  c34:
    mov ah,9
    lea dx,z8
    int 21h
    jmp op1  
   
  c35:
    mov ah,9
    lea dx,z9
    int 21h
    jmp op1
  
  c36:
    mov ah,9
    lea dx,z10
    int 21h
    jmp op1 

 op2:     
 
    printn ''
    printn ''
  
    mov ah,9
    lea dx,tnx
    int 21h
    
    mov ah,4ch
    int 21h    
  
  main endp
end main
