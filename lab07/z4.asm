org 100h

mov ah, 02h
mov bh, 0
mov dh, 24
mov dl, 79
int 10h

mov ah, 09h
mov al, [index+5]
mov bl, 0Fh       ; ustawienie białego koloru
int 10h

mov ah, 00h
int 21h

index db 's29870$'