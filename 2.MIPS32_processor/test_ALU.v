`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:28:47 07/14/2022 
// Design Name: 
// Module Name:    test_ALU 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module test_ALU(
    input [31:0] a1,
    input [31:0] a2,
    output [31:0] out1,
    input [5:0] fun1
    );


parameter ADD =6'b000000, ADDI =6'b001010, LW =6'b001000, BNEQZ =6'b001101,
          SUB =6'b000001, SUBI =6'b001011, SW =6'b001001, BEQZ  =6'b001110,
		  AND =6'b000010, SLTI =6'b001100,
		  OR  =6'b000011,
		  SLT =6'b000100,
		  MUL =6'b000101 ;
			 
			 
			 
reg[31:0] out;


assign out1 = out;
 
always@(fun1,a1,a2)
 begin 
	  case(fun1)
		  ADD,ADDI,LW,SW,BNEQZ,BEQZ : out =  a1 + a2 ;
		  SUB,SUBI                  : out =  a1 - a2 ;
		  AND                       : out =  a1 & a2 ;
		  OR                        : out =  a1 | a2 ;
		  SLT,SLTI                  : out = a1 < a2 ;
		  MUL                       : out =  a1 * a2 ;
		  default                   : out=  32'hxxxxxxxx ;
	  endcase
 end
 


endmodule
