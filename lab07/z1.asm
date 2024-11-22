org 100h

mov CX, 12

do_while:
mov AH, 02h
mov DL, 'H'
int 21h
mov DL, 0Ah
int 21h
mov DL, 0Dh
int 21h
loop do_while

mov AH, 00h
int 21h