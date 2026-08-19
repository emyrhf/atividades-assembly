# Exercício 6
.data
  escrevan1: .asciiz "Digite um número: "
  escrevan2: .asciiz "Digite outro número: "
  escrevan3: .asciiz "Os números digitados são iguais\n"
  escrevan4: .asciiz "\nO maior número digitado é: "
  escrevan5: .asciiz "\nO menor número digitado é: "
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

  beq $t0, $t1, iguais
  bgt $t0, $t1, primeiro_maior
  j segundo_maior

iguais:
  li $v0, 4
  la $a0, escrevan3
  syscall
  j fim

primeiro_maior:
  li $v0, 4
  la $a0, escrevan4
  syscall
  li $v0, 1
  move $a0, $t0
  syscall

  li $v0, 4
  la $a0, escrevan5
  syscall
  li $v0, 1
  move $a0, $t1
  syscall
  j fim

segundo_maior:
  li $v0, 4
  la $a0, escrevan4
  syscall
  li $v0, 1
  move $a0, $t1
  syscall

  li $v0, 4
  la $a0, escrevan5
  syscall
  li $v0, 1
  move $a0, $t0
  syscall

fim:
