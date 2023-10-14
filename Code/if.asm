.model small
.stack 100h
.data

.code
main proc
  mov ax,@data
  mov ds,ax

  mov bl,1;
  mov bh,2
  
  cmp bl,bh
  jle L1
  jmp L2
  
  L1:
  mov ah,2
  mov dl,bl
  add dl,48
  int 21h
   
  L2: 
  
  
  exit:
  mov ah,4ch
  int 21h
  main endp
end main