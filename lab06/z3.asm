; infix			( a / b ) + c
; postfix		a b / c +

org 100h

push word [a]
push word [b]
pop DX		; DX=2
pop AX		; AX=6
div DL		; 6/2=3
push AX
push word [c]
pop AX
pop BX
add AX, BX 		; 3+9=C(12)
push AX


mov AH, 00h
int 21h

a dw 6h
b dw 2h
c dw 9h