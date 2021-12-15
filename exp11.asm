.model small
.data
	asc1 db 30h
	asc2 db 35h
	pkdbcd db ?
.code
	mov ax,@data
	mov ds,ax
	mov al,asc2
	sub al,30h
	mov pkdbcd,al
	mov al,asc1
	sub al,30h
	mov cl,04h
	shl al,cl
	OR al,pkdbcd
	add ax,30h
	mov dx,ax
	mov ah,02h
	int 21h
	mov ah,4ch
	int 21h
end

