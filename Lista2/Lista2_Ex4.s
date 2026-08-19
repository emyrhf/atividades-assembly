# Exercício 4

.data
 escrevan1: .asciiz "Qual a sua nota do 1° bimestre?: "
 escrevan2: .asciiz "Qual a sua nota do 2° bimestre?: "
 escrevan3: .asciiz "Qual a sua nota do 3° bimestre?: "
 escrevan4: .asciiz "Qual a sua nota do 4° bimestre?: "
 escrevan5: .asciiz "APROVADO"
 escrevan6: .asciiz "EXAME"
 escrevan7: .asciiz "RETIDO"
.text

main:
 li $v0, 4
 la $a0, escrevan1
 syscall
 li $v0, 5
 syscall
 add $t0, $v0, 0

 li $v0, 4
 la $a0, escrevan2
 syscall
 li $v0, 5
 syscall
 add $t1, $v0, 0
 
 li $v0, 4
 la $a0, escrevan3
 syscall
 li $v0, 5
 syscall
 add $t2, $v0, 0
 
 li $v0, 4
 la $a0, escrevan4
 syscall
 li $v0, 5
 syscall
 add $t3, $v0, 0

 add $t4, $t0, $t1
 add $t4, $t4, $t2
 add $t4, $t4, $t3
 div $t4, $t4, 4
 bge $t4, 6, aprovado
 bge $t4, 3, exame
 blt $t4, 3, reprovado
 
aprovado:
 li $v0, 4
 la $a0, escrevan5
 syscall
 j, fim
 
exame:
 li $v0, 4
 la $a0, escrevan6
 syscall
 j, fim
 
reprovado:
 li $v0, 4
 la $a0, escrevan7
 syscall
fim:
 
