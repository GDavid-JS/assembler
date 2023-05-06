use16
org 100h
   movzx ax, [a]
   mul [x]
   mov cx, ax
   mov bx, dx

   movzx ax, [a]
   cwd
   div [x]
   add ax, cx
   adc dx, bx
   mov word[z], ax
   mov word[z+2], dx


   mov ax,4C00h
   int 21h
a db 2
x dw 2
z db ?