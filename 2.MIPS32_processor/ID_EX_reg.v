`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:42:36 07/14/2022 
// Design Name: 
// Module Name:    ID_EX_reg 
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
module ID_EX_reg(
    input [31:0] NPC_in,
    input [31:0] A_in,
    input [31:0] B_in,
    input [31:0] Imm_in,
    input [31:0] IR_in,
	input clk,
    output [31:0] NPC_out,
    output [31:0] A_out,
    output [31:0] B_out,
    output [31:0] Imm_out,
    output [31:0] IR_out
    );


reg [31:0] NPC;
reg [31:0] IR;
reg [31:0] A;
reg [31:0] B;
reg [31:0] Imm;

assign NPC_out = NPC;
assign IR_out = IR;
assign A_out = A;
assign B_out = B;
assign Imm_out = Imm;



always @(posedge clk)

	begin
	 NPC <= NPC_in ;
	 IR <= IR_in ;
	 A <=  A_in;
	 B <=  B_in;
	 Imm <= Imm_in;
   end
	
endmodule



















