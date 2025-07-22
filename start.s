.global _start
.intel_syntax noprefix

_start:

  // sys write call
  mov rax, 1
  mov rdi, 1
  lea rsi, [hello_world]
  mov rdx, 14
  syscall
  // sys read call
  mov rax, 0
  mov rdi, 1
  lea rsi, [variable]
  mov rdx, 10
  syscall

  // sys write call
  mov rax, 1
  mov rdi, 1
  lea rsi, [variable]
  mov rdx, 10
  syscall
  // sys exit call
  mov rax, 60
  xor rdi, rdi
  syscall

hello_world:
  .asciz "Hello, World!\n"
variable:
