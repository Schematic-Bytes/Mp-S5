.model small
.data
msg1 db 0ah,0dh,"The unpacked number: $"
msg2 db 0ah,0dh,"packed: $"
.code
	mov ax,@data
	mov ds, ax
	mov al, 47h
	mov bl, al
	
	lea dx,msg1
	mov ah,09h
	int 21h

	and bl,0f0h
	mov cl,04h
	
	shr bl,cl
	mov dl, bl
	add dl, 30h
	mov ah, 02h
	int 21h
	
	lea dx,msg2
	mov ah,09h
	int 21h

	mov al, 47h
	mov bl, al
	and al, 0fh

	mov dl,al
	add dl,30h
	
	mov ah,02h
	int 21h
	mov ah,4ch
	int 21h
end
