org 100h

mov AH, 0Ah
mov DX, string
int 21h

mov AH, 02h
mov DL, 0Dh
int 21h

mov DL, 0Ah
int 21h

mov AH, 02h
mov DL, [string+4]
int 21h

mov AH, 00h
int 21h

string db 10