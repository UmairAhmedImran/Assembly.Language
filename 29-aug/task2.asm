.model small
.stack 100h
.data
    input_msg   db 'Input a Number b/w 0 t 10: $'
    greater_msg db 'Your guessed Number is Greater than the Number$'
    less_msg    db 'Your guessed Number is Less than the Number$'
    win_msg     db 'Your guessed Number is Correct$'
.code
main proc
            mov ax,@data
            mov ds,ax
          
    ; Number to guess
            mov bl, '7'

    ; Main Game
    Game:   
    ; Print Input msg
            mov dx, offset input_msg
            mov ah, 9
            int 21h

    ; Input Number
            mov ah, 1
            int 21h

    ;  Compare Numbers Greater or not
            cmp al, bl
            jg  Greater

    ;  Compare Numbers Less than or not
            cmp al, bl
            jl  Less
            
    ;  Compare Numbers Less than or not
            cmp al, bl
            je  Win

    Greater:
    ; Line break
            mov dx, 10
            mov ah, 2
            int 21h

            mov dx, 13
            mov ah,2
            int 21h
          
    ;   Print Greater msg
            mov dx, offset greater_msg
            mov ah, 9
            int 21h
            
    ; Line break
            mov dx, 10
            mov ah, 2
            int 21h

            mov dx, 13
            mov ah,2
            int 21h

            jmp Game
            
    Less:   
    ; Line break
            mov dx, 10
            mov ah, 2
            int 21h

            mov dx, 13
            mov ah, 2
            int 21h
          
    ;   Print Less than msg
            mov dx, offset less_msg
            mov ah, 9
            int 21h
            
    ; Line break
            mov dx, 10
            mov ah, 2
            int 21h

            mov dx, 13
            mov ah,2
            int 21h
            
            jmp Game
            
    Win:    
    ; Line break
            mov dx, 10
            mov ah, 2
            int 21h

            mov dx, 13
            mov ah, 2
            int 21h
          
    ;   Print Greater msg
            mov dx, offset win_msg
            mov ah, 9
            int 21h

    ;  End Program
            mov ah, 4ch
            int 21h
main endp
end main


