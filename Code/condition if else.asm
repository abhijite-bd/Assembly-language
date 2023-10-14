.model small
.stack 100h
.data
 a db "greater or equal $"
 b db "lesser or equal $"
.code
main proc
  mov ax,@data
  mov ds,ax

  mov al,2
  mov ah,3
  cmp al,ah    
  jge L1
  jmp L2
  
  L1:
  mov ah,9
  lea dx,a
  int 21h 
  jmp exit:
  
  L2:
  mov ah,9
  lea dx,b
  int 21h 
  jmp exit:

  exit:
  mov ah,4ch
  int 21h
  main endp
end main