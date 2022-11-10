`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:23:34 07/15/2022
// Design Name:   MIPS
// Module Name:   /home/ise/Verilog/Tutorial/MPS_tb.v
// Project Name:  Tutorial
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MIPS
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MPS_tb;

	reg clk1;

	integer k,x;
	
	wire[31:0]mux;
	wire[31:0]pc;
	wire[31:0]w3;
	wire[31:0]mem1;

	wire[31:0]npc1;
	wire[31:0]ir1;
	wire[31:0]a1;
	wire[31:0]b1;
	wire[31:0]imm1;
	
	wire[31:0]ir2;
	wire[31:0]npc2;
	wire[31:0]a2;
	wire[31:0]b2;
	wire[31:0]imm2;
	
	wire cu_3;
	wire cu_2;
	
	wire[31:0]alu_i;
    wire[31:0]alu_ii;	
	wire[31:0]alu2;
	
	wire[5:0]fun;
	
	wire[3:0] l;
	wire eq;

	wire s;
    wire cu_0;	
    wire cu_1;	

	wire[31:0]b3;
    wire[31:0]ir3;
    wire[31:0]alu3;

	wire[31:0]lmd3;
	wire wr3;

	wire[31:0] lmd4;
	wire[31:0] alu4;
	wire[31:0] ir4;

	wire [3:0]cu5;

	wire [4:0]addr1;
	wire [31:0]data1;
	wire wr1;


	

	MIPS uut (
    .clk1(clk1) 
    );


	always #10 clk1=~clk1 ;
	
	assign mux=uut.w1;
	assign pc=uut.w2;
	assign w3=uut.w3;
	assign mem1=uut.mem1;
	
	assign npc1=uut.npc1;
	assign ir1=uut.ir1;
	assign a1=uut.a1;
	assign b1=uut.b1;
	assign imm1=uut.imm1;
	
	assign ir2=uut.ir2;
    assign npc2=uut.npc2;
	assign a2=uut.a2;
	assign b2=uut.b2;
	assign imm2=uut.imm2;
	
	assign cu_3=uut.cu1[3];
	assign cu_2=uut.cu1[2];

	assign alu_i=uut.alu_i;
	assign alu_ii=uut.alu_ii;
	assign alu2=uut.alu2;
	
	assign fun=uut.ALU1.fun1;
	
	assign l=uut.cu1;
	assign eq=uut.eq1;

	
	assign s=uut.s;
	assign cu_1=uut.cu1[1];
	assign cu_0=uut.cu1[0];


	assign b3=uut.b3;
	assign ir3=uut.ir3;
	assign alu3=uut.alu3;

	assign lmd3=uut.lmd3;
	assign wr3=uut.wr3;

	assign lmd4=uut.lmd4;
	assign ir4=uut.ir4;
	assign alu4=uut.alu4;
	
	assign cu5=uut.cu5;


	assign addr1=uut.addr1;
	assign data1=uut.data1;
	assign wr1=uut.wr1;


	
	initial begin
	x=0;
	if(x==0)
	  begin
	    uut.MM1.mem[0]=32'h2801000a;//ADDI R1,R0,10
		uut.MM1.mem[1]=32'h28020014;//ADDI R2,R0,20
		uut.MM1.mem[2]=32'h28030019;//ADDI R3,R0,25
		//uut.MM1.mem[2]=32'b001110__00000__00000_1111_1111_1111_1110; //BEQZ 
		uut.MM1.mem[3]=32'h0ce77800;//OR R7,R7,R7
		uut.MM1.mem[4]=32'h00222000;//ADD R4,R1,R2
		uut.MM1.mem[5]=32'h0ce77800;//OR R7,R7,R7
        uut.MM1.mem[6]=32'h00832800;//ADD R5,R4,R3
		uut.MM1.mem[7]=32'hfc000000;//HLT
		uut.MM1.mem[8]=32'h99999999;
		uut.MM1.mem[9]=32'hbbbbbbbb;
		uut.MM1.mem[10]=32'h66666666;
		uut.MM1.mem[11]=32'h88888888;
		
		end
	else if(x==1)
      begin
	    uut.MM1.mem[0]=32'h28010078;//ADDI R1,R0,120  -------> 32'h28010078
	    uut.MM1.mem[1]=32'h0ce77800;//OR R7,R7,R7
	    uut.MM1.mem[2]=32'h0ce77800;//OR R7,R7,R7
		uut.MM1.mem[3]=32'h20220000;//LW R2,0(R1)
	    uut.MM1.mem[4]=32'h0ce77800;//OR R7,R7,R7
	    uut.MM1.mem[5]=32'h0ce77800;//OR R7,R7,R7
        uut.MM1.mem[6]=32'h2842002d;//ADDI R2,R2,45
		uut.MM1.mem[7]=32'h0ce77800;//OR R7,R7,R7
	    uut.MM1.mem[8]=32'h0ce77800;//OR R7,R7,R7
        uut.MM1.mem[9]=32'h24220001;//SW R2,1(R1)
		uut.MM1.mem[10]=32'h20050079;//LW R5,121(R0)   -------> 32'h20050079
        uut.MM1.mem[11]=32'hfc000000;//HLT
		uut.MM1.mem[12]=32'h99999999;
		uut.MM1.mem[13]=32'hbbbbbbbb;
		uut.MM1.mem[14]=32'h66666666;
		uut.MM1.mem[15]=32'h88888888;
	end
	else if(x==2)
      begin
	    uut.MM1.mem[0]=32'h280a00c8;//ADDI R10,R0,200  -------> 32'h28010078
	    uut.MM1.mem[1]=32'h280b0078;//ADDI R11,R0,120  -------> 32'h28010078
		uut.MM1.mem[2]=32'h0ce77800;//OR R7,R7,R7
	    uut.MM1.mem[3]=32'h0ce77800;//OR R7,R7,R7
		uut.MM1.mem[4]=32'h154b2800;//MUL R5,R10,R11
	    uut.MM1.mem[5]=32'h0ce77800;//OR R7,R7,R7
	    uut.MM1.mem[6]=32'h0ce77800;//OR R7,R7,R7
        uut.MM1.mem[7]=32'hfc000000;//HLT
		uut.MM1.mem[8]=32'h99999999;
		uut.MM1.mem[9]=32'hbbbbbbbb;
		uut.MM1.mem[10]=32'h66666666;
		uut.MM1.mem[11]=32'h88888888;
	end
		else if(x==3)
      begin
	    uut.MM1.mem[0]=32'h28030006;//ADDI R3,R0,06  -------> 32'h28010078
	    uut.MM1.mem[1]=32'h28020001;//ADDI R2,R0,01  -------> 32'h28010078
		uut.MM1.mem[2]=32'h0ce77800;//OR R7,R7,R7
	    uut.MM1.mem[3]=32'h0ce77800;//OR R7,R7,R7
		uut.MM1.mem[4]=32'h14431000;//MUL R2,R2,R3------>LOOP
		uut.MM1.mem[5]=32'h2C630001;// SUBI R3,R3,1
		uut.MM1.mem[6]=32'h0ce77800;//OR R7,R7,R7
	    uut.MM1.mem[7]=32'h0ce77800;//OR R7,R7,R7
	    uut.MM1.mem[8]=32'h3460fffc;//BNEQZ R3,LOOP
		uut.MM1.mem[9]=32'h0ce77800;//OR R7,R7,R7
	    uut.MM1.mem[10]=32'h0ce77800;//OR R7,R7,R7
		uut.MM1.mem[11]=32'hfc000000;//HLT
		uut.MM1.mem[12]=32'h99999999;
		uut.MM1.mem[13]=32'hbbbbbbbb;
		uut.MM1.mem[14]=32'h66666666;
		uut.MM1.mem[15]=32'h88888888;
	end
	
		
	uut.DM1.Data[120]=32'h0000_001a;	
		

	for( k=0;k<=31;k=k+1)
		uut.RB1.Reg[k]=k;
		
    clk1 = 0;
		

	#2500 $finish;
        

	end
      
endmodule

