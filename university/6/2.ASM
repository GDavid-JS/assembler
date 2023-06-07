use16
org 100h

   mov al, [a]
   mov cl, [b]

   cmp cl, al
   jg fx1
   cmp al, cl
   jg comparison

exit:
   mov [r], ax
   mov ax,4C00h
   int 21h

comparison:
   cmp a, 3
   jg fx2
   jmp fx3

fx1:
   sub al, cl
   add al, 1
   mov ah, 0

   jmp exit
fx2:
   mov cl, al
   mov al, bl
   sub al, 1
   mul al
   mov ah, 0

   jmp exit
fx3:
   mov cl, al
   mov al, bl
   mul al
   sub ax, 1

   jmp exit

a db 2
b db 2
r dw ?