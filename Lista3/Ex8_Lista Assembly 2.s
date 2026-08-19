# Exercício 5
.data
  escrevan1: .asciiz "Quanto vale o coeficiente A?: "
  escrevan2: .asciiz "Quanto vale o coeficiente B?: "
  escrevan3: .asciiz "Quanto vale o coeficiente C?: "
  escrevan4: .asciiz "DUAS RAÍZES REAIS"
  escrevan5: .asciiz "UMA RAÍZ REAL"
  escrevan6: .asciiz "NÃO EXISTEM RAÍZES REAIS"
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

  mul $t3, $t1, $t1

  mul $t4, $t0, $t2
  mul $t4, $t4, 4

  sub $t5, $t3, $t4

  bgtz $t5, duas_raizes
  beqz $t5, uma_raiz
  bltz $t5, nenhuma_raiz

duas_raizes:
  li $v0, 4
  la $a0, escrevan4
  syscall
  j fim

uma_raiz:
  li $v0, 4
  la $a0, escrevan5
  syscall
  j fim

nenhuma_raiz:
  li $v0, 4
  la $a0, escrevan6
  syscall

fim:
