li a0, 0x00000028
li t0, 0x00000050
add a1, a0, zero
addi a4, zero, 0x1
jal ra, sum

save:
	sw a2, 0x00000004(t0)
    addi a0, a0, -0x00000008
    addi t0, t0, 0x00000004
    addi a3, a3, 0x1
    add a1, zero, a0
    li a2, 0x0
    beq a0, zero, end
    blt a0, zero, end
	bne a0, zero, sum

sum:
    sub a1, a1, a4
	add a2, a1, a2
    beq zero, a1, save
    bne zero, a1, sum
    
end:
	nop