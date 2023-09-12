.model small
.stack 100h
.data
    msg  db 'Enter: $'
.code
main proc
                  mov  ax, @data
                  mov  ds, ax

                  mov  dx, offset msg
                  mov  ah, 9
                  int  21h

                  mov  ax, 0
                  mov  cl, 0
    L1:           
                  mov  ah, 1
                  int  21h
                  cmp  al, 13

                  je   ReverseString
                  push ax
                  inc  cl
                  jmp  L1

    ReverseString:
                  pop  dx
                  mov  ah, 2
                  int  21h
                  loop ReverseString

                  mov  ah, 4ch
                  int  21h

main endp
end main