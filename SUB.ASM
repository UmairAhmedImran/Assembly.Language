.model small
.stack 100h
.data
.code
main proc
mov bl,7
sub bl,5
add bl,48
mov dl,bl
mov ah,2
INT 21h
mov ah,4ch
INT 21h
Main endp
end main
