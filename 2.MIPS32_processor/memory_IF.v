`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:26:07 07/12/2022 
// Design Name: 
// Module Name:    memory_IF 
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
module memory_IF(
    input [31:0] addr,
    output [31:0] data_out
    );

reg [31:0] mem[0:1023] ;

 assign data_out= mem[addr];



endmodule









