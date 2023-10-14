.model small
.stack 100h
.data

.code
main proc
  mov ax,@data
  mov ds,ax
  
  mov ah,1
  int 21h
  mov bl,al 
  
  sub bl,32;lower to upper
  add bl,32;upper to lower
  
  mov ah,2
  mov dl,bl
  int 21h


  exit:
  mov ah,4ch
  int 21h
  main endp
end main