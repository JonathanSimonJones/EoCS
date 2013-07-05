// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[3], respectively.)

// Put your code here.
	@1
	D=M			// Set D to hold val 1
	@counter
	M=D			// Set address of counter to A
	@2
	M=0
(LOOP)
	@counter	// load counter
	D=M			// Set D to counter val
	@END		// Set new branch
	D;JLE		// Check D is not less than 0
	@2			// load sum
	D=M			// Set sum to D
	@0			// load val 1
	A=M			// set val 1 to D
	D=D+A		// Add val 1 to D
	@2			// load sum to A
	M=D			// set new sum to sum
	@counter	// load counter
	M=M-1		// minus 1 off counter
	@LOOP		// set branch
	0;JMP		// Jump to loop
(END)
	@END
	0;JMP		// Infinite loop