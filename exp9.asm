.model small

.data
    msg1 db 0ah, 0dh, "Enter the Number $"
    mag2 db 0ah, 0dh, "The given Number is Odd $"
    mag3 db 0ah, 0dh, "The given Number is Even $"

.code 
    mov ax, @data
    mov ds, ax
    lea dx, msg1
    mov ah, 09h
    int 21h
    mov ah, 01h
    int 21h
    sub al, 30h
    mov bl, 02h
    div bl
    cmp ah, 00h
    jz display even
    lea dx, msg2
    mov ah, 09h
    int 21h
    jmp stop 
    display even
    lea dx, msg3
    mov ah, 09h
    int 21h
    stop
    mov ah, 4ch
    int 21h
end