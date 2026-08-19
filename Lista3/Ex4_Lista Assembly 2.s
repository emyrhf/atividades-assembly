# Exercício 4 
.data
  escrevan1: .asciiz "Qual o salário atual do funcionário? : "
  escrevan2: .asciiz "O novo salário é: "
  quebradelinha: .asciiz "\n"
.text

main:
  li $v0, 4
  la $a0, escrevan1
  syscall
  li $v0, 5
  syscall
  move $t0, $v0     

  mul $t1, $t0, 25 
  div $t1, $t1, 100

  add $t2, $t0, $t1 

  li $v0, 4
  la $a0, escrevan2
  syscall
  li $v0, 1
  move $a0, $t2
  syscall

  li $v0, 4
  la $a0, quebradelinha
  syscall
