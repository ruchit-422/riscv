`timescale 1ns / 1ps

module top_Processor(clk, reset_stage_1, IMWrite, instruction_in,global_reg_write,regfile_data_in, write_register_out_stage_5, write_data_stage_5, 
RegWrite_out_stage_5,ALUSrc_stage_2, MemToReg_stage_2, RegWrite_stage_2, MemRead_stage_2, MemWrite_stage_2, Branch_stage_2, pc_out_stage_2, instruction_stage_1,
pc_out_stage_1,read_data1_stage_2, read_data2_stage_2, write_register_out_stage_2,ALU_control_input_stage_2, ALUOp_stage_2, immediate_stage_2, sum_stage_3, 
zero_stage_3, alu_result_stage_3, read_data2_out_stage_3, write_register_out_stage_3, MemToReg_out_stage_3, RegWrite_out_stage_3, MemRead_out_stage_3,
MemWrite_out_stage_3, Branch_out_stage_3, PCSrc_stage_4, read_data_out_stage_4, sum_out_stage_4, write_register_out_stage_4, alu_result_out_stage_4,
MemToReg_out_stage_4, RegWrite_out_stage_4 );
input logic clk;
input logic reset_stage_1;
input logic IMWrite;
input logic [31:0] instruction_in;
input logic global_reg_write;
input logic signed [63:0] regfile_data_in;
bit PCSrc_stage_1;
bit signed [63:0] branch_pc_stage_1;
bit signed [63:0] write_data_stage_2;


bit MemToReg_in_stage_4;
bit [63:0] pc_in_stage_2;
bit [31:0] instruction_stage_2;
bit [63:0] pc_in_stage_3;
bit signed [63:0] read_data1_stage_3;
bit signed [63:0] read_data2_in_stage_3;
bit [4:0] write_register_in_stage_3;
bit ALUSrc_stage_3;
bit MemToReg_in_stage_3;
bit RegWrite_in_stage_3;
bit MemRead_in_stage_3;
bit MemWrite_in_stage_3;
bit Branch_in_stage_3;
bit [1:0] ALUOp_stage_3;
bit signed [63:0] immediate_stage_3;
bit signed [63:0] sum_in_stage_4; 
bit zero_stage_4;
bit signed [63:0] alu_result_in_stage_4;
bit signed [63:0] read_data2_in_stage_4;
bit [4:0] write_register_in_stage_4;
bit RegWrite_in_stage_4;
bit MemRead_in_stage_4;
bit MemWrite_in_stage_4;
bit Branch_in_stage_4;
bit signed [63:0] read_data_in_stage_5;
bit [4:0] write_register_in_stage_5;
bit signed [63:0] alu_result_in_stage_5;
bit MemToReg_in_stage_5 ;
bit RegWrite_in_stage_5;
bit [3:0] ALU_control_input_stage_3;
output bit [63:0] pc_out_stage_2;
output bit signed [63:0] read_data1_stage_2;
output bit signed [63:0] read_data2_stage_2;
output bit [4:0] write_register_out_stage_2;
output bit [3:0] ALU_control_input_stage_2;
output bit [1:0] ALUOp_stage_2;
output bit signed [63:0] immediate_stage_2;
output bit ALUSrc_stage_2;
output bit MemToReg_stage_2;
output bit RegWrite_stage_2;
output bit MemRead_stage_2;
output bit MemWrite_stage_2;
output bit Branch_stage_2;


output bit signed [63:0] sum_stage_3;
output bit signed [63:0] alu_result_stage_3;
output bit signed [63:0] read_data2_out_stage_3;
output bit [4:0] write_register_out_stage_3;
output bit zero_stage_3;
output bit MemToReg_out_stage_3;
output bit RegWrite_out_stage_3;
output bit MemRead_out_stage_3;
output bit MemWrite_out_stage_3;
output bit Branch_out_stage_3;

output  bit signed [63:0] read_data_out_stage_4;
output bit signed [63:0] sum_out_stage_4;
output bit [4:0] write_register_out_stage_4;
output bit signed [63:0] alu_result_out_stage_4;
output bit PCSrc_stage_4;
output bit MemToReg_out_stage_4;
output bit RegWrite_out_stage_4;


output bit [4:0] write_register_out_stage_5;
output bit signed [63:0] write_data_stage_5;
output bit RegWrite_out_stage_5;
output bit [31:0] instruction_stage_1;
output bit [63:0] pc_out_stage_1;

bit [4:0] write_register_in_stage_2;



stage1 S1(PCSrc_stage_1, clk, branch_pc_stage_1, reset_stage_1, instruction_stage_1, pc_out_stage_1, IMWrite, instruction_in);

stage2 S2(clk,pc_in_stage_2, instruction_stage_2, pc_out_stage_2, read_data1_stage_2, read_data2_stage_2, write_data_stage_2, write_register_out_stage_2, write_register_in_stage_2, ALU_control_input_stage_2,
ALUSrc_stage_2, MemToReg_stage_2, RegWrite_stage_2, MemRead_stage_2, MemWrite_stage_2, Branch_stage_2, ALUOp_stage_2, immediate_stage_2, RegWrite_in_stage_2, global_reg_write,regfile_data_in);
    
stage3 S3(pc_in_stage_3, read_data1_stage_3, read_data2_in_stage_3, write_register_in_stage_3, ALUSrc_stage_3,
MemToReg_in_stage_3, RegWrite_in_stage_3, MemRead_in_stage_3, MemWrite_in_stage_3, Branch_in_stage_3, ALUOp_stage_3, immediate_stage_3, ALU_control_input_stage_3,
sum_stage_3, zero_stage_3, alu_result_stage_3, read_data2_out_stage_3, write_register_out_stage_3, MemToReg_out_stage_3, RegWrite_out_stage_3, MemRead_out_stage_3,
MemWrite_out_stage_3, Branch_out_stage_3
);

stage4 S4(clk,sum_in_stage_4, zero_stage_4, alu_result_in_stage_4, read_data2_in_stage_4, write_register_in_stage_4, MemToReg_in_stage_4,
RegWrite_in_stage_4, MemRead_in_stage_4,MemWrite_in_stage_4, Branch_in_stage_4, PCSrc_stage_4, read_data_out_stage_4,
sum_out_stage_4, write_register_out_stage_4, alu_result_out_stage_4,MemToReg_out_stage_4, RegWrite_out_stage_4);

stage5 S5(write_register_in_stage_5,alu_result_in_stage_5,MemToReg_in_stage_5,RegWrite_in_stage_5, write_register_out_stage_5,
write_data_stage_5, read_data_in_stage_5, RegWrite_out_stage_5);

flip_flops S6(clk,pc_out_stage_1,pc_in_stage_2,instruction_stage_1,instruction_stage_2,pc_out_stage_2,pc_in_stage_3,read_data1_stage_2,read_data1_stage_3,
read_data2_stage_2,read_data2_in_stage_3,write_register_out_stage_2,write_register_in_stage_3,ALUSrc_stage_2,ALUSrc_stage_3,MemToReg_stage_2,MemToReg_in_stage_3,
RegWrite_stage_2,RegWrite_in_stage_3,MemRead_stage_2,MemRead_in_stage_3,MemWrite_stage_2,MemWrite_in_stage_3,Branch_stage_2,Branch_in_stage_3,ALUOp_stage_2,
ALUOp_stage_3,immediate_stage_2,immediate_stage_3,ALU_control_input_stage_2,ALU_control_input_stage_3,sum_stage_3,sum_in_stage_4,zero_stage_3,zero_stage_4,
alu_result_stage_3,alu_result_in_stage_4,read_data2_out_stage_3,read_data2_in_stage_4,write_register_out_stage_3,write_register_in_stage_4,MemToReg_out_stage_3,
MemToReg_in_stage_4,RegWrite_out_stage_3,RegWrite_in_stage_4,MemRead_out_stage_3,MemRead_in_stage_4,MemWrite_out_stage_3,MemWrite_in_stage_4,Branch_out_stage_3,
Branch_in_stage_4,read_data_out_stage_4,read_data_in_stage_5,write_register_out_stage_4,write_register_in_stage_5,alu_result_out_stage_4,alu_result_in_stage_5,
MemToReg_out_stage_4,MemToReg_in_stage_5,RegWrite_out_stage_4,RegWrite_in_stage_5);


// IF/ID pipeline registers, 1-2 

assign  PCSrc_stage_1 = PCSrc_stage_4;
assign RegWrite_in_stage_2 = RegWrite_out_stage_5;
assign branch_pc_stage_1 = sum_out_stage_4;
assign write_data_stage_2 = write_data_stage_5;
assign write_register_in_stage_2 = write_register_out_stage_5;

endmodule


