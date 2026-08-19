# Exercício 7 
.data
  escrevan1: .asciiz "Digite um número entre 100 e 999: "
  escrevan2: .asciiz "\nCENTENA = "
  escrevan3: .asciiz "\nDEZENA = "
  escrevan4: .asciiz "\nUNIDADE = "
  escrevan5: .asciiz "Número inválido. Por favor, digite novamente.\n"
.text

main:
entrada:
  li $v0, 4
  la $a0, escrevan1
  syscall

  li $v0, 5
  syscall
  move $t0, $v0       
  li $t1, 100
  li $t2, 999
  blt $t0, $t1, invalido
  bgt $t0, $t2, invalido
  li $t3, 100
  div $t0, $t3
  mflo $t4             

  mfhi $t5              

  
  li $t6, 10
  div $t5, $t6
  mflo $t7             

  
  mfhi $t8             

  
  li $v0, 4
  la $a0, escrevan2
  syscall

  li $v0, 1
  move $a0, $t4
  syscall


  li $v0, 4
  la $a0, escrevan3
  syscall

  li $v0, 1
  move $a0, $t7
  syscall

  
  li $v0, 4
  la $a0, escrevan4
  syscall

  li $v0, 1
  move $a0, $t8
  syscall

  j fim

invalido:
  li $v0, 4
  la $a0, escrevan5
  syscall
  j entrada

fim:
