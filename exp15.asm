.model small
.data
    msg db 0ah,0dh,"Enter lower case string: $"
    msg2 db 0ah,0dh,"The upper case string is: $"
    str1 db 10 dup("$")
.code
    mov ax,@data
    mov ds,ax

    lea dx,msg
    mov ah,09h
    int 21h

    mov cx,0000h

    lea si,str1

loop1:
    mov ah,01h
    int 21h
    mov [si],al
    inc si
    inc cx
    cmp al,0dh
    jnz loop1

    lea dx,msg2
    mov ah,09h
    int 21h

    dec cx
    lea si,str1

loop2:
    mov dl,[si]
    sub dl,32
    mov ah,02h
    int 21h
    inc si
    dec cx
    jnz loop2

    mov ah,4ch
    int 21h
end
