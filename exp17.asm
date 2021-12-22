.model small
.data
    msg db 0ah,0dh,"enter the string:$ "
    msg1 db 0ah,0dh,"enter the elements to be searched:$"
    msg2 db 0ah,0dh,"element is found:$"
    msg3 db 0ah,0dh,"element is not found:$"
    str1 db 10 dup('$')

.code
    mov ax,@data
    mov ds,ax

    lea dx,msg
    mov ah,09h
    int 21h

    lea si,str1
    mov cx,0000h
loop1:
    mov ah,01h
    int 21h
    mov [si],al
    inc si
    inc cl
    cmp al,0dh
    jnz loop1

    lea dx,msg1
    mov ah,09h
    int 21h

    mov ah,01h
    int 21h

    mov bh,al
    lea si,str1
loop2:
    mov dl,[si]
    cmp bh,dl
    jz loop4
    inc si
    dec cl
    cmp cl,00h
    jnz loop2

    lea dx,msg3
    mov ah,09h
    int 21h
    jmp stop
loop4:
    lea dx,msg2
    mov ah,09h
    int 21h
stop:
    mov ah,4ch
    int 21h
end

