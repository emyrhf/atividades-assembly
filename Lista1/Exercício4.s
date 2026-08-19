# Exercício 4

.data
 escrevan1: .asciiz"Digite o valor da base menor do trapézio: "
 escrevan2: .asciiz"Digite o valor da base maior do trapézio: "
 escrevan3: .asciiz"Digite o valor da altura do trapézio: "
 escrevan4: .asciiz"A área total do trapézio é de: "
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

 add $t3, $t0, $t1
 mul $t3, $t3, $t2
 div $t3, $t3, 2
 
 li $v0, 4
 la $a0, escrevan4
 syscall
 li $v0, 1
 add $a0, $t3, 0
 syscall
