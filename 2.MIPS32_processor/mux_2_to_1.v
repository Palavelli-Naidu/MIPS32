`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:19:19 07/12/2022 
// Design Name: 
// Module Name:    mux_IF_2_to_1 
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
module mux_2_to_1(
    input [31:0] a1,
    input [31:0] b1,
    input s1,
    output [31:0] o1
    );
	 
reg [31:0] o;	 
	 
assign o1=o;

always @(a1,b1,s1)
begin
	case(s1)
	0:     o<=a1;
	1:     o<=b1;
	default:o<=32'hxxxxxxxx;
	endcase
end

endmodule









