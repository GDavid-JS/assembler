use16
org 100h

mov al, [start]
mov cl, [n]
mov bx, 0

metka:
   mul al
   add bx, ax

   add al, 2
   loop metka


   mov [S], bx

   mov ax,4C00h
   int 21h
n db 6
start db 2
S dw 0