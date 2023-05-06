use16
org 100h

mov bl, [start]
mov al, [S]
mov dl, 0
mov cl, [n]

metka:
   mov al, bl
   sub al, 3
   sub bl, al
   add dl, bl

   sub bl, 6
   loop metka


   mov [S], dl

   mov ax,4C00h
   int 21h
n db 3
start db 16
S db 0