; infix			( 2 * a ) + ( 2 * b ) - ( 2 * c )
; postfix		2 a * 2 b * + 2 c * -

org 100h

push word 2h
push word [a]
pop AX
pop DX
mul DX		; 2*2=4
push AX
push word 2h
push word [b]
pop AX
pop DX
mul DX		; 2*2=4
push AX
pop AX
pop BX
add AX, BX		; 4+4=8
push AX
push word 2h
push word [c]
pop AX
pop DX
mul DX		; 2*2=4
push AX
pop BX
pop AX
sub AX, BX		; 8-4=4
push AX

mov AH, 00h
int 21h

a dw 2h
b dw 2h
c dw 2h