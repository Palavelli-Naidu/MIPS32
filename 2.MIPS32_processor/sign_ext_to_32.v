`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:38:12 07/13/2022 
// Design Name: 
// Module Name:    sign_ext_to_32 
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
module sign_ext_to_32(
    input [15:0]  imm_in,
    output [31:0] imm_out
    );



assign imm_out = {{16{imm_in[15]}},{imm_in}} ;



endmodule






