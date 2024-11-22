org 100h

mov ah, 01h
int 21h
mov bl, al

mov al, 's'
cmp bl, al
je serduszko

mov al, 't'
cmp bl, al
je trefl

mov al, 'p'
cmp bl, al
je pik

jmp end



serduszko:
mov ah, 02h
mov bh, 0
mov dh, 12
mov dl, 39
int 10h

mov ah, 09h
mov al, 3		; what char to write
mov bl, 0F4h		; color of char (change to 0F4h)
mov cx, 1		; number of repetitions
int 10h
jmp end



trefl:
mov ah, 02h
mov bh, 0
mov dh, 0
mov dl, 40
int 10h

mov ah, 09h
mov al, 5		; what char to write
mov bl, 04h		; color of char
mov cx, 1		; number of repetitions
int 10h
jmp end



pik:
mov ah, 02h
mov bh, 0
mov dh, 24
mov dl, 40
int 10h

mov ah, 09h
mov al, 6		; what char to write
mov bl, 0F0h		; color of char (change to 0F0h)
mov cx, 1		; number of repetitions
int 10h
jmp end

end:
mov ah, 00h
int 21h