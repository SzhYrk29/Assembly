org 100h

start_program:
mov AH, 01h
int 21h

cmp AL, 51h
je stop

mov AH, 02h
mov DL, AL
int 21h

mov DL, 0Ah
int 21h
mov DL, 0Dh
int 21h

jmp start_program

stop:
jmp end_program

end_program:
mov AH, 00h
int 21h