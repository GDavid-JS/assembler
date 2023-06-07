use16
org 100h

mov bl, 1
mov cx, [n]
metka:
   mov al, bl
   mul al
   add bx, ax
   add bl, 1
   loop metka

   mov word[S], bx

   mov ax,4C00h
   int 21h
n db 4
S db ?