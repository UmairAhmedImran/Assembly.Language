.global _start
.intel_syntax noprefix

// variables
.section .bss
my_variable: .space 10

.section .data

hello_world:
  .asciz "Hello, World!\n"

.section .text
_start:

  // sys write call
  mov rax, 1
  mov rdi, 1
  lea rsi, [rip + hello_world]
  mov rdx, 14
  syscall
  // sys read call
  mov rax, 0
  mov rdi, 0
  lea rsi, [rip + my_variable]
  mov rdx, 10
  syscall

  // sys write call
  mov rax, 1
  mov rdi, 1
  lea rsi, [rip + my_variable]
  mov rdx, 10
  syscall
  // sys exit call
  mov rax, 60
  xor rdi, rdi
  syscall

