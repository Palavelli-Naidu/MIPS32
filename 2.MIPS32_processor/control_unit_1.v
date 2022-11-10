`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:24:34 07/15/2022 
// Design Name: 
// Module Name:    control_unit_1 
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
module control_unit_1(
    input [5:0] in1,
    output [3:0] out1
    );

reg[3:0]Reg[0:63];
reg [3:0]REG;

initial
begin
 Reg[0]=4'b10_11; //ADD
 Reg[1]=4'b10_11; //SUB                //ADD RR instructions A and B are selected
 Reg[2]=4'b10_11; //AND
 Reg[3]=4'b10_11; //OR
 Reg[4]=4'b10_11; //SLT
 Reg[5]=4'b10_11; //MUL
 
 
 Reg[8]=4'b11_10; //load and store instructions
 Reg[9]=4'b11_00; //-------------------------> this 11_01 is for "wr" back signal of register bank(cu[3],cu[0]) to off the signal
 
 Reg[10]=4'b11_11; // ADDI
 Reg[11]=4'b11_11; //SUBI
 Reg[12]=4'b11_11; //SLTI

 Reg[13]=4'b01_11; //BNEQZ 0111--->(011)_1(BNEQZ)---->(01)_11(alu_select)
 Reg[14]=4'b01_00; //BEQZ  0100--->(010)_0(BEQZ)----->(01)_00(alu_select)
 
 //Reg[4'bzzzz]=4'b0000;
REG=4'b0000;//initial value

end

assign out1=REG;

always@(in1)
  begin
	if(in1>=5'b0)
	  REG=Reg[in1];
	else               //if(in1<5'b0) other cases like xxxxxxxxx and zzzzzzzzz
	  REG=4'b0000;
  end

endmodule


















