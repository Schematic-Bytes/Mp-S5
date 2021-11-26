.model small
.data
    msg db 10, 13, "This is a message using macro $"
.code
    display macro
        lea dx, msg
        mov ah, 09h
        int 21h
    endm
    mov ax, @data
    mov ds, ax
    display

    mov ah, 4ch
    int 21h
    end

