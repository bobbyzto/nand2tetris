// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

  @R2
  M=0	// R2=0
  @i
  M=0   // i=0
(LOOP)
  @i
  D=M	// D register=i
  @R0
  D=D-M	// i=i-R0
  @END
  D;JGE // Jump to END if i<=0

  @R1
  D=M	// D register=R1
  @R2	
  M=D+M	// R2=R1+R2
  @i
  M=M+1	// increment index
  @LOOP
  0;JMP	// Jump to LOOP
(END)	// infinite loop
  @END
  0,JMP
