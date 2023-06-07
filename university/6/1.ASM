use16
org 100h

   mov al, [x]
   mov cl, [y]

   cmp [x],2
   jg comparison

a:
   cmp [x],5
   jg fx2
   cmp [y],2
   je fx2
   jmp fx3

exit:
   mov [z], ax
   mov ah,01h
   int 21h
   mov ax,4C00h
   int 21h

comparison:
   cmp [y],2
   je fx1
   jmp a

fx1:
   movzx bx, [y]
   mul al
   add ax, bx
   jmp exit
fx2:
   mul al
   add bx, ax
   mov al, cl
   mul al
   cwd
   div bx
   jmp exit
fx3:
   add al, cl
   jmp exit

x db 2
y db 2
z dw ?