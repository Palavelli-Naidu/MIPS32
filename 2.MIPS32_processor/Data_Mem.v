`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:00:09 07/14/2022 
// Design Name: 
// Module Name:    Data_Mem 
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
module Data_Mem(
    input [31:0] addr,
    input [31:0] data_in,
    input wr,
    output [31:0] data_out
    );


  reg[31:0] Data[0:1023];
  
  assign data_out=Data[addr];

always@(posedge wr)
Data[addr] = data_in;
 

endmodule




















