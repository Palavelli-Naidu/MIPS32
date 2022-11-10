`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:46:46 07/15/2022 
// Design Name: 
// Module Name:    MIPS 
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
module MIPS(input clk1,output[31:0]ALU);


wire [31:0]w1;
wire [31:0]w2;
wire [31:0]w3;
wire [31:0]mem1;

wire [31:0]npc1;
wire [31:0]a1;
wire [31:0]b1;
wire [31:0]imm1;

wire [4:0]addr1;
wire [31:0]data1;
wire wr1;


wire [31:0]npc2;
wire [31:0]a2;
wire [31:0]b2;
wire [31:0]imm2;
wire [31:0]ir1;

wire [31:0]ir2;

wire [31:0]alu_i;
wire [31:0]alu_ii;
wire [31:0]alu2;


wire [3:0]cu1;

wire eq1;
wire cu2;

wire[31:0] alu3;
wire[31:0] b3;
wire[31:0] ir3;
wire s;


wire[31:0]lmd3;
wire wr3;

wire[31:0] lmd4;
wire[31:0] alu4;
wire[31:0] ir4;

wire [3:0]cu5;



//assign ALU=alu4;
mux_2_to_1 M1 (.a1(alu3), .b1(w3), .s1(s), .o1(w1));

PC_IF P1 (.pc_in(w1),.clk(clk1), .pc_out(w2));

adder_IF A1 (.a1(w2), .b1(w3));

memory_IF MM1 (.addr(w2), .data_out(mem1));
 
 
// pipeline register IF_ID
IF_ID_reg R1 (.clk(clk1), .NPC_in(w2), .IR_in(mem1), .NPC_out(npc1), .IR_out(ir1));

Reg_Bank RB1 (.rs(ir1[25:21]),.rt(ir1[20:16]),.A(a1), .B(b1), .rd(addr1), .data_rd(data1), .wr(wr1));

sign_ext_to_32 SB1 (.imm_in(ir1[15:0]), .imm_out(imm1));


// pipeline register ID_EX
ID_EX_reg R2 (.NPC_in(npc1),  .A_in(a1),  .B_in(b1),  .Imm_in(imm1),  .IR_in(ir1), 
              .clk(clk1),  
              .NPC_out(npc2), .A_out(a2), .B_out(b2), .Imm_out(imm2), .IR_out(ir2));


mux_2_to_1 M_U (.a1(npc2), .b1(a2), .s1(cu1[3]), .o1(alu_i));

mux_2_to_1 M_L (.a1(b2), .b1(imm2), .s1(cu1[2]), .o1(alu_ii));

test_ALU ALU1 (.a1(alu_i), .a2(alu_ii), .out1(alu2), .fun1(ir2[31:26]));

control_unit_1 C1 (.in1(ir2[31:26]), .out1(cu1));

EQ_Zero EQ1(.in(a2), .out(eq1));


control_unit_2 C2 (.cu(cu1[3:1]), .eq1(eq1),.out(cu2));

//pipeline register EX_MEM

EX_MEM_reg R3 (.check_in(cu2),.ALU_output_in(alu2),.B_in(b2), .IR_in(ir2), 
               .clk(clk1), 
              .check_out(s),.ALU_output_out(alu3),.B_out(b3), .IR_out(ir3));


control_unit3 C3 (.in1(ir3[31:26]), .clk(clk1), .out1(wr3));

Data_Mem DM1 (.addr(alu3), .data_in(b3), .wr(wr3), .data_out(lmd3));

//pipeline register MEM_WB

MEM_WB_reg R4(.LMD_in(lmd3),.ALU_output_in(alu3),.IR_in(ir3), 
                  .clk(clk1),
             .LMD_out(lmd4),.ALU_output_out(alu4),.IR_out(ir4));


mux_2_to_1 M_DA  (.a1(lmd4), .b1(alu4), .s1(cu5[0]), .o1(data1));

control_unit_1 C5 (.in1(ir4[31:26]), .out1(cu5));

control_unit_4 C4 (.cu3(cu5[3]), .cu1(cu5[1]), .clk(clk1),.wr(wr1));

mux_5bit M_Addr (.a1(ir4[15:11]),.b1(ir4[20:16]),.out1(addr1),.s(cu5[2]));



assign ALU=alu4;



endmodule


















