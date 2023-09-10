.model small
.stack 100h
.data
    quotient db ?
    reminder db ?
    quo      db 'Quotient: $'
    rem      db ', Reminder:$'
.code
main proc
         mov ax, @data
         mov ds, ax
    ; Numbers to Divide
         mov ax, 10            ; Dividend
         mov bl, 5             ; Divisor
    ; Divide Operation
         div bl

         mov reminder, ah
         mov quotient, al
    ; Print Result
         mov dx, offset quo
         mov ah, 9
         int 21h

         mov dl, quotient
         add dl, 48
         mov ah, 2
         int 21h

         mov dx, offset rem
         mov ah, 9
         int 21h

         mov dl, reminder
         add dl, 48
         mov ah, 2
         int 21h


         mov ah, 4ch
         int 21h

main endp
end main