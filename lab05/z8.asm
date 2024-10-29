org 100h

mov AL, 2h		; 2
mov DL, [c]		; 2
mul DL			; AX = 4
mov [y], AX		; y = 4

mov AX, [b]		; 8
mov DL, [y]		; 4
div DL			; AL = 2
mov [y], AL		; y = 2

mov AL, 2h		; 2
mov DL, [a]		; 3
mul DL			; AX = 6

mov DL, [y]		; 2
mul DL			; AX = 6 * 2 = C (12)
mov [y], AX		; y = C

mov AH, 00h
int 21h

a dw 3h
b dw 8h
c dw 2h
y dw 0h