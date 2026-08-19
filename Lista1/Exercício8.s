# Exercício 8

.data
 escrevan1: .asciiz "Digite um n° positivo (para mostrar seu dobro) ou negativo (para mostrar seu triplo): "
 escrevan2: .asciiz "O resultado é: "
.text
main:
  li $v0, 4
  la $a0, escrevan1
  syscall
  li $v0, 5
  syscall
  add $t0, $v0, 0 
  
  li $t1, 0
  bge $t0, $t1, positivo
   
negativo:
  li $t2, 3
  mul $t3, $t0, $t2     
  j imprime
positivo:
  li $t2, 2
  mul $t3, $t0, $t2     
imprime:
  li $v0, 4
  la $a0, escrevan2
  syscall
   li $v0, 1
  add $a0, $t3, $zero
  syscall
  li $v0, 10
  syscall
