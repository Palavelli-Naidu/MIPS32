`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:59:34 07/16/2022 
// Design Name: 
// Module Name:    control_unit_2 
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

module control_unit_2(
    input[2:0] cu,
    input eq1,
    output out
    );
	 
wire s1;	 
	 
 
 assign s1=(~(cu[2]))&cu[1]&(cu[0]^eq1); /// cu3 cu2 cu1 of control unit 1
 
 //not n4(out,s1);
 assign out=~(s1);
 
endmodule

















