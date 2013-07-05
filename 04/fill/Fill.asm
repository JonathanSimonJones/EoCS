// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, the
// program clears the screen, i.e. writes "white" in every pixel.

// Put your code here.
(MAIN_LOOP)
	@24576		// Address of keyboard
	D=M
	@MAKE_SCREEN_WHITE
	D;JEQ		// If D is zero
	@MAKE_SCREEN_BLACK
	D;JGT		// If D is not zero
(MAKE_SCREEN_BLACK)
	// Init
	@16384				
	D=A
	@ramStartAddress
	M=D					// Set ramStartAddress
	@8192
	D=A
	D=D-1
	@counter
	M=D					// Set counter
	@BLACK_LOOP
	0;JMP				// Go to black loop
(BLACK_LOOP)
	@counter
	D=M
	@MAIN_LOOP
	//D;JEQ				// If D is zero return to MAIN_LOOP
	D;JLT
	@ramStartAddress
	D=M
	@counter
	D=D+M				// Address to change
	@address			
	M=D					// Store that address
	@0				
	D=!A				// Make 
	@address
	//M=D
	A=M
	M=D
	@counter
	M=M-1
	@BLACK_LOOP
	0;JMP				// Go to black loop
(MAKE_SCREEN_WHITE)
	// Init
	@16384				
	D=A
	@ramStartAddress
	M=D					// Set ramStartAddress
	@8192
	D=A
	D=D-1
	@counter
	M=D					// Set counter
	@WHITE
	0;JMP				// Go to black loop
(WHITE)
	@counter
	D=M
	@MAIN_LOOP
	//D;JEQ				// If D is zero return to MAIN_LOOP
	D;JLT
	@ramStartAddress
	D=M
	@counter
	D=D+M
	@address
	M=D
	@0
	D=A
	@address
	A=M
	M=D
	@counter
	M=M-1
	@WHITE
	0;JMP				// Go to black loop