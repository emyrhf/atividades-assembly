# Exercício 3 

.data
 escrevan1: .asciiz "Digite um número: "
 escrevan2: .asciiz "Digite outro número: "
 escrevan3: .asciiz "A diferença do maior n° para o menor n° é de: "
.text

.main:
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
 
 bgt $t0, $t1, N1maior
 bgt $t1, $t0, N2maior
 
N1maior:
 sub $t2, $t0, $t1 #valor1-valor2
 j, fim
 
N2maior:
 sub $t2, $t1, $t0 #valor2-valor1
 j, fim
 
fim:
 li $v0, 4
 la $a0, escrevan3
 syscall
 li $v0, 1
 add $a0, $t2, 0
 syscall
 
