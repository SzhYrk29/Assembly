; infix 		( a * b ) + c
; postfix 		a b * c +

org 100h

push word[a]
push word[b]
pop AX
pop DX
mul DX
push AX
push word [c]
pop AX
pop BX
add AX, BX
push AX

mov AH, 00h
int 21h

a dw 2h
b dw 3h
c dw 4h