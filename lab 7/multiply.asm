.model small
.stack 100h
.data
.code
main proc

; Numbers to Multiply
mov al, 3
mov bl, 2

; Multiply Operation
mul bl
aam   ; ASCII Adjust after multiplication

mov ch, ah
mov cl, al

; Print Result
mov dl, ch
add dl, 48
mov ah, 2
int 21h

mov dl, cl
add dl, 48
mov ah, 2
int 21h


mov ah, 4ch
int 21h

main endp
end main