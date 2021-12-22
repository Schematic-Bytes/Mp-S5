.model small
.data
    ms db 0ah,0dh, "Enter a word : $"
    msg db 0ah,0dh, "Reverse is: $"
    str1 db 10 dup('$')
.code
	mov ax,@data
	mov ds,ax

	lea dx,ms
	mov ah,09h
	int 21h

	mov cl,00h
	lea si,str1

loop1:
	mov ah,01h
	int 21h
	mov [si],al
	inc si
	inc cl
	cmp al,0dh
	jnz loop1
	dec si
	dec si

	lea dx,msg
	mov ah,09h
	int 21h
	dec cl

loop2:
	dec cl
	mov dl,[si]
	mov ah,02h
	int 21h

	dec si
	cmp cl,00h
	jnz loop2

	mov ah,4ch
	int 21h
end
