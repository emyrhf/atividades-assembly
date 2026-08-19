# Exercício 5

.data
  escrevan1: .asciiz "Insira o primeiro número: "
  escrevan2: .asciiz "Insira o segundo número: "
  escrevan3: .asciiz "A soma dos ímpares entre esses números é: "
.text

main:
  li $v0, 4
  la $a0, escrevan1
  syscall
  li $v0, 5
  syscall
  move $t0, $v0     

  li $v0, 4
  la $a0, escrevan2
  syscall
  li $v0, 5
  syscall
  move $t1, $v0     

  blt $t0, $t1, ordem
  move $t2, $t0     
  move $t0, $t1     
  move $t1, $t2     
  
ordem:

  addi $t0, $t0, 1      
  li $t3, 0             

loop:
  bgt $t0, $t1, fim     

  andi $t4, $t0, 1
  beq $t4, $zero, prox   
  
  add $t3, $t3, $t0
  
prox:
  addi $t0, $t0, 1
  j loop

fim:
  li $v0, 4
  la $a0, escrevan3
  syscall
  li $v0, 1
  move $a0, $t3
  syscall