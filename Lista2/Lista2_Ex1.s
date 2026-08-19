# Exercício 1

.data
 escrevan1: .asciiz "Quanto mede o comprimento?: "
 escrevan2: .asciiz "Quanto mede a largura?: " 
 escrevan3: .asciiz "Quanto mede a altura?: " 
 escrevan4: .asciiz "O volume do paralelepípedo é: " 
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
 
 mul $t3, $t0, $t1
 mul $t3, $t3, $t2
 
 li $v0, 4
 la $a0, escrevan4
 syscall
 li $v0, 1
 add $a0, $t3, 0
 syscall