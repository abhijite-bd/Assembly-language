.model small
.stack 100h
.data 
 msg db "Enter your massage: $"
 a db ?
 b db ?
 c db ?
.code
main proc
  mov ax,@data
  mov ds,ax

  mov ah,9
  lea dx,msg
  int 21h
  
  mov ah,1
  int 21h
  mov a,al
  
  mov ah,1
  int 21h
  mov b,al
  
  mov ah,1
  int 21h
  mov c,al
  
  mov ah,2
  mov dl,10
  int 21h
  mov dl,13
  int 21h
  
  mov ah,2
  mov dl,a
  int 21h
  
  mov ah,2
  mov dl,10
  int 21h
  mov dl,13
  int 21h
         
  mov ah,2
  mov dl,b
  int 21h
  
  mov ah,2
  mov dl,10
  int 21h
  mov dl,13
  int 21h
  
  mov ah,2
  mov dl,c
  int 21h
         
  exit:
  mov ah,4ch
  int 21h
  main endp
end main




