# Exercício 7

.data
 escrevan1: .asciiz "Digite um n°: "
 escrevan2: .asciiz "Este n° é impar e a soma dele com 5 é: "
 escrevan3: .asciiz "Este n° é par e a soma dele com 5 é: "
.text
main:

 li $v0, 4
 la $a0, escrevan1
 syscall
 li $v0, 5
 syscall
 add $t0, $v0, 0

 add $t1, $t0, 5
 beq $t1, 8, par
 div $t2, $t1, 2
 mfhi $t2 
 beq $t2, $zero, par 
 bne, $t2, $zero, impar
 
par:
 add $t2, $t0, $t1
 li $v0, 4
 la $a0, escrevan2
 syscall
 li $v0, 1
 add $a0, $t1 0 
 syscall
 j, fim

impar:
 add $t2, $t0, $t1
 li $v0, 4
 la $a0, escrevan3
 syscall
 li $v0, 1
 add $a0, $t1 0 
 syscall
 j, fim
 
fim:
 li $v0, 10 
 syscall
