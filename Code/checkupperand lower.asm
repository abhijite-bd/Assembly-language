.model small
.stack 100h
.data
 a db 10,13,"Already uppercase $"
.code
main proc
  mov ax,@data
  mov ds,ax
  
  mov ah,1
  int 21h
  mov bl,al
  
  cmp bl,96  
  jg L1
  jmp L2
  
  L1:
  mov ah,2
  mov dl,10
  int 21h
  mov dl,13
  int 21h
  mov dl,bl
  sub dl,32 
  int 21h
  loop exit:
  
  L2:
  mov ah,9
  lea dx,a
  int 21h
  loop exit:

  exit:
  mov ah,4ch
  int 21h
  main endp
end main