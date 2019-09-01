.data
	num1: .asciiz "\nEnter first number: "
	num2: .asciiz "Enter second number: "
	op: .asciiz "Enter operation: "
.text
main:

	while:
	#store op values in registers
	addi $t3, $zero, 1
	addi $t4, $zero, 2
	addi $t5, $zero, 3
	addi $t6, $zero, 4
	


	#promt for num1
	li $v0, 4
	la $a0, num1
	syscall
	
	#get num1
	li $v0, 5
	syscall
	
	#store num1 in $t0
	move $t0, $v0
	
	#promt for num2
	li $v0, 4
	la $a0, num2
	syscall
	
	#get num1
	li $v0, 5
	syscall
	
	#store num2 in $t1
	move $t1, $v0
	
	#prompt for op
	li $v0, 4
	la $a0, op
	syscall
	
	#get op
	li $v0, 5
	syscall
	
	#store op in $t2
	move $t2, $v0
	
	#branch if add
	beq $t2, $t3, addNum
	
	#branch if sub
	beq $t2, $t4, subNum
	
	#branch if mul
	beq $t2, $t5, mulNum
	
	#branch if div
	beq $t2, $t6, divNum
	
	
		
	addNum:
		add $t7, $t0, $t1
		
		#print
		li $v0, 1
		la $a0, ($t7)
		syscall
		
		j while
		
		
	subNum:
		sub $t7, $t0, $t1
		
		#print
		li $v0, 1
		la $a0, ($t7)
		syscall
		
		j while
		
		
	mulNum:
		mul $t7, $t0, $t1
		
		#print
		li $v0, 1
		la $a0, ($t7)
		syscall
		
		j while
		
		
	divNum:
		div $t7, $t0, $t1
		
		#print
		li $v0, 1
		la $a0, ($t7)
		syscall
		
		j while
	
	
	
	
