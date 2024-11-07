; infix			a * b / c
; postfix		a b * c /

org 100h

push word [a]
push word [b]
pop AX		; AX=6
pop DX		; DX=2
mul DL		; 6*2=C(12)
push AX		
push word [c]
pop DX		; DX=3
pop AX		; AX=C(12)
div DL		; 12/3=4
push AX

mov AH, 00h
int 21h

a dw 2h
b dw 6h
c dw 3h