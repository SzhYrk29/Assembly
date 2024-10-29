org 100h

mov AX, [a]		; 4
mov DL, 2h		; 2
div DL			; AL = 2
mov [y], AL		; y = 2

mov AX, [b]		; 6
mov DL, 3h		; 3
div DL			; AL = 2

add AX, [y]		; AX = 2 + 2 = 4
mov [y], AX		; y = 4

mov AX, [c]		; 8
mov DL, 4h		; 4
div DL			; AL = 2

add AX, [y]		; AX = 2 + 4 = 6
mov [y], AX		; y = 6

mov AH, 00h
int 21h

a dw 4h
b dw 6h
c dw 8h
y dw 0h