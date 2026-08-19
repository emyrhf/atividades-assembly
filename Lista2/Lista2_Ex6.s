# Exercício 6

.data
  escrevan1: .asciiz "Digite um n° positivo: "
  escrevan2: .asciiz "O maior número foi: "
  escrevan3: .asciiz "O menor número foi: "
  quebra_linha: .asciiz "\n"
.text

main:
  li $t0, 0            
  li $t1, -1           
  li $t2, 999999      

loop:
  li $v0, 4
  la $a0, escrevan1
  syscall
  li $v0, 5
  syscall
  move $t3, $v0        
  bltz $t3, loop       
  bgt $t3, $t1, atualiza_maior
  j verifica_menor

atualiza_maior:
  move $t1, $t3

verifica_menor:
  blt $t3, $t2, atualiza_menor
  j contagem

atualiza_menor:
  move $t2, $t3

contagem:
  addi $t0, $t0, 1
  li $t4, 10
  blt $t0, $t4, loop

  li $v0, 4
  la $a0, escrevan2
  syscall
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, quebra_linha
  syscall

  li $v0, 4
  la $a0, escrevan3
  syscall
  li $v0, 1
  move $a0, $t2
  syscall
  li $v0, 4
  la $a0, quebra_linha
  syscall
