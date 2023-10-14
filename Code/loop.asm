.model small
.stack 100h
.data
  a db 10,13,"Abhijite $"
  b db ?
  
.code
main proc
  mov ax,@data
  mov ds,ax

   mov cx,10
   mov ah,9
   lea dx,a
   
  Loop:
   int 21h
   
   dec cx
   JNZ Loop
   
   
   
  exit:
  mov ah,4ch
  int 21h
  main endp
end main