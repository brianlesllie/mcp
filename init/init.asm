.align 2
buffer: .space 1024

.text

jal init

#--------------------------------------------------------------------#
init:
	jal	main
	li	$v0, 10
	syscall

get_int:
	li $v0, 5
	syscall
	jr $ra

get_float:
	li $v0, 6
	syscall
	jr $ra

get_double: 
	li $v0, 7
	syscall
	jr $ra

get_char:
	li $v0, 12
	syscall
	jr $ra


get_string:
	la $a0, buffer
  li $a1, 1024      # tamanho do buffer
  li $v0, 8
	syscall
	jr $ra

print_int:
	li $v0 ,1
	syscall
	jr $ra

print_float:
	mov.s  $f12, $f0
	li $v0, 2
	syscall
	jr $ra	

print_double:
	mov.d $f12, $f0
	li $v0, 3
	syscall
	jr $ra

print_char:
	li $v0, 11
	syscall
	jr $ra
	
print_string:
	li $v0, 4
	syscall
	jr $ra

#--------------------------------------------------------------------#
