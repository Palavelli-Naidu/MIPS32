`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:35:19 07/18/2022 
// Design Name: 
// Module Name:    control_unit_3 
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
module control_unit3(
    input [5:0] in1,
    input clk,
    output out1
    );


reg in=0;
reg clk1;


//initial
//begin
//in=1'b0;
//end

 and r1(out1,in,clk1);

always@(clk)
#6 clk1=clk;

always@(in1)
	begin
	if(in1==6'b001001)
		 in=1'b1;
	else
		in=1'b0;
	end
	
endmodule











