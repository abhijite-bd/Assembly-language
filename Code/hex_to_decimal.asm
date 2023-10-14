.model small
.stack 100h
.data
 msg db "Enter a hex number: $"
 ln db ?
 fn db ?
.code
main proc
  mov ax,@data
  mov ds,ax

  mov ah,9
  lea dx,db
  int 21h
  
   mov ah,1
   int 21h
   mov fn,al
   int 21h
   mov ln,al

  exit:
  mov ah,4ch
  int 21h
  main endp
end main