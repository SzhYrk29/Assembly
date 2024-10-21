org 100h

mov AH, 0Ah
mov DX, string
int 21h

mov AH, 02h
mov DL, 0Dh
int 21h

mov DL, 0Ah
int 21h

mov BL, [string+1]		; długość stringa, znajdująca się w drugim bajcie inputu
mov BH, 0
mov SI, string+2 		; początek stringa
add SI, BX 				; przesunięcie na koniec stringa
mov byte [SI], '$'		; wstawienie na koniec znaku $

mov AH, 09h
mov DX, string+2
int 21h

mov AH, 00h
int 21h

string db 20