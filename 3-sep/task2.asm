.model small
stack 100h
.data
    var  db 50 dup('$')
.code
main proc
               mov ax, @data
               mov ds, ax

               mov si, offset var

    L1:        
               mov ah, 1
               int 21h
               cmp al, 13

               je  programend
               mov [si], al
               inc si
               jmp L1

    programend:
               mov dx, offset var
               mov ah, 9
               int 21h

               mov ah, 4ch
               int 21h

main endp
end main