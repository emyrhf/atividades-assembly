# Exercício 2

.data
 escrevan1: .asciiz"Quanto mede o raio da circunferência?: "
 escrevan2: .asciiz"A circunferência mede: "
.text

main:
 li $v0, 4
 la $a0, escrevan1
 syscall
 li $v0, 5
 syscall
 add $t0, $v0, 0
 
 mul $t1, $t0, 2 
 mul $t1, $t1, 3 
 
 li $v0, 4
 la $a0, escrevan2
 syscall
 li $v0, 1
 add $a0, $t1, 0
 syscall