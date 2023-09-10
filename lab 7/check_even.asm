.model small
.stack 100h
.data
    even_msg     db ' is an Even Number.$'
    not_even_msg db ' is not an Even Number.$'
.code
main proc
            mov ax, @data
            mov ds, ax

    ; Numbers to Divide
            mov ah, 1                      ; Input Dividend
            int 21h
            mov bl, 2                      ; Divisor

    ; Divide Operation
            div bl

            mov ch, ah                     ; Reminder
            mov cl, 0

    ; Check if reminder is 0
            cmp ch, cl
            je  EvenNum

            mov dx, offset not_even_msg
            mov ah, 9
            int 21h

            mov ah, 4ch
            int 21h

    EvenNum:
            mov dx, offset even_msg
            mov ah, 9
            int 21h

            mov ah, 4ch
            int 21h

main endp
end main