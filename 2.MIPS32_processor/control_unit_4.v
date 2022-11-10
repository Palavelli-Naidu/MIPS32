`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:52:59 07/18/2022 
// Design Name: 
// Module Name:    control_unit_4 
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
module control_unit_4(
    input cu3,cu1,clk,
    output wr
    );

  
assign #6 wr=(cu3 & cu1)& clk ;




endmodule












