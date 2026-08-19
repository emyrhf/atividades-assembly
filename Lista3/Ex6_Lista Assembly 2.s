# Exercício 8
.data
  escrevan1: .asciiz "\nDigite o valor da compra (de 1000 a 9999): "
  escrevan2: .asciiz "\nDigite o valor da parcela (de 100 a 500): "
  escrevan3: .asciiz "Quantidade de parcelas: "
  escrevan4: .asciiz "Valor da última parcela: "
  escrevan5: .asciiz "Valor da compra inválido! Digite novamente."
  escreva05: .asciiz "Valor da parcela inválido! Digite novamente."
.text

main:
entrada_compra:
  li $v0, 4
  la $a0, escrevan1
  syscall
  li $v0, 5
  syscall
  move $t0, $v0   

  li $t1, 1000
  li $t2, 9999
  blt $t0, $t1, erro_compra
  bgt $t0, $t2, erro_compra

entrada_parcela:
  li $v0, 4
  la $a0, escrevan2
  syscall
  li $v0, 5
  syscall
  move $t3, $v0  

  li $t4, 100
  li $t5, 500
  blt $t3, $t4, erro_parcela
  bgt $t3, $t5, erro_parcela

  div $t0, $t3
  mflo $t6         
  mfhi $t7         

  beqz $t7, sem_resto

  addi $t6, $t6, 1

sem_resto:
  li $v0, 4
  la $a0, escrevan3
  syscall

  li $v0, 1
  move $a0, $t6
  syscall


  beqz $t7, fim


  li $v0, 4
  la $a0, escrevan4
  syscall

  li $v0, 1
  move $a0, $t7
  syscall

  j fim

erro_compra:
  li $v0, 4
  la $a0, escrevan5
  syscall
  j entrada_compra

erro_parcela:
  li $v0, 4
  la $a0, escreva05
  syscall
  j entrada_parcela

fim:
