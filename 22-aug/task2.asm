dosseg
.model small
.stack 100h
.data
.code
main proc
mov cx, 5
L1:
    mov bl,101B
    and bl,110B
    add bl,48
    mov dl,bl
    mov ah,2
    int 21h

    mov dx, 13
    mov ah,2
    int 21h
    mov dx, 10
    mov ah, 2
    int 21h
loop L1

mov cx, 4
L2:
    mov bl,101B
    or bl,110B
    add bl,48
    mov dl,bl
    mov ah,2
    int 21h

    mov dx, 13
    mov ah,2
    int 21h
    mov dx, 10
    mov ah, 2
    int 21h  
loop L2

mov cx, 3
L3:
    mov bl,101B
    xor bl,110B
    add bl,48
    mov dl,bl
    mov ah,2
    int 21h

    mov dx, 13
    mov ah,2
    int 21h
    mov dx, 10
    mov ah, 2
    int 21h 
loop L3

mov ah,4ch
int 21h
main endp
end main