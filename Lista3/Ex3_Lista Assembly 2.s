# Exercício 3
.data
  escrevan1: .asciiz "Qual o seu mês de nascimento? (1-12): "
  escrevan2: .asciiz "Qual o seu ano de nascimento: "
  escrevan3: .asciiz "Digite o mês atual (1-12): "
  escrevan4: .asciiz "Digite o ano atual: "
  escrevan5: .asciiz "A sua idade em meses é: "
  quebradelinha: .asciiz "\n"
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

  li $v0, 4
  la $a0, escrevan3
  syscall
  li $v0, 5
  syscall
  move $t2, $v0     

  li $v0, 4
  la $a0, escrevan4
  syscall
  li $v0, 5
  syscall
  move $t3, $v0   

  sub $t4, $t3, $t1    
  mul $t4, $t4, 12     
  sub $t5, $t2, $t0     
  add $t6, $t4, $t5     

  li $v0, 4
  la $a0, escrevan5
  syscall

  li $v0, 1
  move $a0, $t6
  syscall

  li $v0, 4
  la $a0, quebradelinha
  syscall
