.model small
.data
msg db 0ah,0dh,"enter a string:$"
msg1 db 0ah,0dh,"the transfered string is:$"
str1 db 15 dup('$')
str2 db 15 dup('$')
.code
mov ax,@data
mov ds,ax

lea dx,msg
mov ah,09h
int 21h

lea si,str1
mov cl,00h

loop1:mov ah,01h
      int 21h
      mov [si],al
      inc si
      inc cl
      cmp al,0dh
      jnz loop1

lea si,str1
lea di,str2

loop2:mov dl,[si]
      mov [di],dl
      inc si
      inc di
      dec cl
      jnz loop2

lea dx,msg1
mov ah,09h
int 21h

lea dx,str2
mov ah,09h
int 21h

mov ah,4ch
int 21h

end
