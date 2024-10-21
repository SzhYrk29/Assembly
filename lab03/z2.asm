org 100h

mov AH, 09h
mov DX, string
int 21h

mov AH, 02h
mov DL, 0Dh
int 21h

mov DL, 0Ah
int 21h

mov byte [string+3], '$'

mov AH, 09h
mov DX, string
int 21h

mov AH, 00h
int 21h

string db "Whatever$"