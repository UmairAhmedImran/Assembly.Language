.model small
.stack 100h
.data
.code
main proc
mov ax,'2'
mov bx,'1'

push ax
push bx

mov dx ,ax
mov ah,2
int 21h

mov dx ,bx
mov ah,2
int 21h

pop ax
pop bx

mov dx ,ax
mov ah,2
int 21h

mov dx ,bx
mov ah,2
int 21h


         mov ah, 4ch
         int 21h

main endp
end main