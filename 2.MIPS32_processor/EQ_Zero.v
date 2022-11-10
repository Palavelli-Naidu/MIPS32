`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:54:51 07/13/2022 
// Design Name: 
// Module Name:    EQ_Zero 
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
module EQ_Zero(
    input [31:0] in,
    output out
    );
reg check_bit=0;

//initial
//check_bit=1'b0;

assign out = check_bit ;

always @(in)
  if(in==32'b00)
     check_bit = 1'b1 ;
  else                       
     check_bit = 1'b0 ;      //if(in>0) including and (n<0) xxxxxxx or zzzzzzzzzzzzz
 
 
//always@(in)
//begin
//	case(in)
//	 32'h00000000:   check_bit = 1'b1 ;
////	 32':   check_bit = 1'b0 ;
//	default: check_bit = 1'b0 ;
//	endcase
//end

endmodule











