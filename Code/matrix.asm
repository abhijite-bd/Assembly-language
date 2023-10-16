.model small
.stack 100h
.data
 a db 10,13,"***** $"
.code
main proc 
    
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h    
    mov cl,al 
    
    while:
    cmp cl,'0'
    je exit:
    
    mov ah,9
    lea dx,a  
    int 21h
    dec cl
    
    jmp while:
    
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main