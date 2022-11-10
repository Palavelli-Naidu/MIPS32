`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:11:28 07/12/2022 
// Design Name: 
// Module Name:    PC_IF 
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
module PC_IF(
    input [31:0] pc_in,
	 input clk,
    output [31:0] pc_out
    
    );

reg [31:0] pc1=0;
               
assign pc_out = pc1;
					
always@(posedge clk)
	begin

	#8 pc1 = pc_in;

	end

endmodule








