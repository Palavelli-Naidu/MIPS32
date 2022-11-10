`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:21:48 07/19/2022 
// Design Name: 
// Module Name:    mux_5bit 
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
module mux_5bit(
    input [4:0] a1,
    input [4:0] b1,
    output [4:0] out1,
    input s
    );

	 
reg [4:0] out;	

 
	 
assign out1=out;

always @(a1,b1,s)
begin
	case(s)
	0:     out<=a1;
	1:     out<=b1;
	default:out<=5'h00000;
	endcase
end





endmodule











