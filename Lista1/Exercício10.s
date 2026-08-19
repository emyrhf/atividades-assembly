# Exercício 10

.data
  escrevan1: .asciiz "Digite o valor de n1: "
  escrevan2: .asciiz "Digite o valor de n2: "
  escrevan3: .asciiz "O resto da divisão de n1 por n2 é: "
.text

main:
  li $v0, 4
  la $a0, escrevan1
  syscall
  li $v0, 5
  syscall
  add $t0, $v0, $zero   

  li $v0, 4
  la $a0, escrevan2
  syscall
  li $v0, 5
  syscall
  add $t1, $v0, $zero 

  bge $t0, $t1, primeiroMaior  

  div $t1, $t0         
  mflo $t2             
  mul $t2, $t2, $t0    
  sub $t3, $t1, $t2    
  j imprime

primeiroMaior:
  div $t0, $t1         
  mflo $t2             
  mul $t2, $t2, $t1    
  sub $t3, $t0, $t2    

imprime:
  li $v0, 4
  la $a0, escrevan3
  syscall
  li $v0, 1
  add $a0, $t3, $zero
  syscall

  li $v0, 10
  syscall
