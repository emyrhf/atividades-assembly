# Exercício 3

.data
  escrevan1: .asciiz"Digite o n° de horas trabalhadas: "
  escrevan2: .asciiz"Digite o n° de horas extras trabalhadas: "
  escrevan3: .asciiz"Digite o % de desconto: "
  escrevan4: .asciiz"O valor do salário bruto é de: R$ "
  escrevan5: .asciiz", e o valor do salário liquído é de: R$ "
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

 mul $t0, $t0, 10 
 mul $t1, $t1, 15 
 add $t3, $t0, $t1 
 mul $t5, $t3, $t2   
 div $t5, $t5, 100   
 sub $t4, $t3, $t5   

 li $v0, 4
 la $a0, escrevan4
 syscall
 li $v0, 1
 add $a0, $t3, 0
 syscall
 
 li $v0, 4
 la $a0, escrevan5
 syscall
 li $v0, 1
 add $a0, $t4 0
 syscall
