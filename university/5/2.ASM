use16
org 100h
   mov ax, [Z]
   mul ax

   movzx bx, [d]
   sub ax, bx
   sbb dx, 0

   movzx bx, [r]
   mov cx, [h]
   add bx, cx

   cwd
   div bx

   cwd
   mov word[X], ax
   mov word[X+2], dx


   mov ax,4C00h
   int 21h
d db 2
r db 3
Z dw 20
h dw 4
X dd ?