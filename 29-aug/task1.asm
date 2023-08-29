.model small
.stack 100h
.data
     msg1 db 'Numbers are equal$'
     msg2 db 'Numbers are not equal$'
.code
main proc
          mov ax,@data
          mov ds,ax

     ; Input Number
          mov ah, 1
          int 21h

          mov dl, '3'

     ;  Compare Numbers
          cmp al, dl
          je  l1

     ; Line break
          mov dx, 10
          mov ah, 2
          int 21h

          mov dx, 13
          mov ah,2
          int 21h

     ; Print not equal
          mov dx, offset msg2
          mov ah, 9
          int 21h
         
     ;  End Program
          mov ah, 4ch
          int 21h

     l1:  

     ; Line break
          mov dx,10
          mov ah, 2
          int 21h

          mov dx,13
          mov ah,2
          int 21h
         
     ; Print equal
          mov dx, offset msg1
          mov ah, 9
          int 21h

          mov ah,4ch
          int 21h
main endp
end main


