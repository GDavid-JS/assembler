use16
org 100h

mov bl, [start]
mov al, [S]
mov cl, [n]

metka:
   add al, bl
   add al, bl
   inc al
   add bl, 1
   loop metka

   mov [S], al

   mov ax,4C00h
   int 21h
n db 5
start db 2
S db 0