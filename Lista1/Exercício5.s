# Exercício 5

.data
 escrevan1: .asciiz "Digite o valor do 1° cateto: "
 escrevan2: .asciiz "Digite o valor do 2° cateto: "
 escrevan3: .asciiz "A hipotenusa é: "

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

 mul $t2, $t0, $t0      
 mul $t3, $t1, $t1      
 add $t4, $t2, $t3      

 mtc1 $t4, $f0          
 cvt.s.w $f0, $f0       

 sqrt.s $f12, $f0       

 li $v0, 4           
 la $a0, escrevan3
 syscall

 li $v0, 2           
 mov.s $f12, $f0     
 syscall

 li $v0, 10
 syscall