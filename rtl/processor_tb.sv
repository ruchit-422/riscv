`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.03.2023 18:25:24
// Design Name: 
// Module Name: processor_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module processor_tb();

logic clk;
logic reset_stage_1;
logic IMWrite;
logic [31:0] instruction_in;
logic global_reg_write;
logic signed [63:0] regfile_data_in;

 bit [63:0] pc_out_stage_2;
 bit signed [63:0] read_data1_stage_2;
 bit signed [63:0] read_data2_stage_2;
 bit [4:0] write_register_out_stage_2;
 bit [3:0] ALU_control_input_stage_2;
 bit [1:0] ALUOp_stage_2;
 bit signed [63:0] immediate_stage_2;
 bit ALUSrc_stage_2;
 bit MemToReg_stage_2;
 bit RegWrite_stage_2;
 bit MemRead_stage_2;
 bit MemWrite_stage_2;
 bit Branch_stage_2;


 bit signed [63:0] sum_stage_3;
 bit signed [63:0] alu_result_stage_3;
 bit signed [63:0] read_data2_out_stage_3;
 bit [4:0] write_register_out_stage_3;
 bit zero_stage_3;
 bit MemToReg_out_stage_3;
 bit RegWrite_out_stage_3;
 bit MemRead_out_stage_3;
 bit MemWrite_out_stage_3;
 bit Branch_out_stage_3;
  bit signed [63:0] read_data_out_stage_4;
 bit signed [63:0] sum_out_stage_4;
 bit [4:0] write_register_out_stage_4;
 bit signed [63:0] alu_result_out_stage_4;
 bit PCSrc_stage_4;
 bit MemToReg_out_stage_4;
 bit RegWrite_out_stage_4;


 bit [4:0] write_register_out_stage_5;
 bit signed [63:0] write_data_stage_5;
 bit RegWrite_out_stage_5;
 bit [31:0] instruction_stage_1;
 bit [63:0] pc_out_stage_1;





top_Processor DUT(clk, reset_stage_1, IMWrite, instruction_in,global_reg_write,regfile_data_in, write_register_out_stage_5, write_data_stage_5, 
RegWrite_out_stage_5,ALUSrc_stage_2, MemToReg_stage_2, RegWrite_stage_2, MemRead_stage_2, MemWrite_stage_2, Branch_stage_2, pc_out_stage_2, instruction_stage_1,
pc_out_stage_1,read_data1_stage_2, read_data2_stage_2, write_register_out_stage_2,ALU_control_input_stage_2, ALUOp_stage_2, immediate_stage_2, sum_stage_3, 
zero_stage_3, alu_result_stage_3, read_data2_out_stage_3, write_register_out_stage_3, MemToReg_out_stage_3, RegWrite_out_stage_3, MemRead_out_stage_3,
MemWrite_out_stage_3, Branch_out_stage_3, PCSrc_stage_4, read_data_out_stage_4, sum_out_stage_4, write_register_out_stage_4, alu_result_out_stage_4,
MemToReg_out_stage_4, RegWrite_out_stage_4 );

initial begin
$sdf_annotate("./stage1_individual_sdf.sdf", processor_tb.DUT.S1,,,"MAXIMUM","1:1:1","FROM_MTM");
$sdf_annotate("./stage2_individual_sdf.sdf", processor_tb.DUT.S2,,,"MAXIMUM","1:1:1","FROM_MTM");
$sdf_annotate("./stage3_individual_sdf.sdf", processor_tb.DUT.S3,,,"MAXIMUM","1:1:1","FROM_MTM");
$sdf_annotate("./stage4_individual_sdf.sdf", processor_tb.DUT.S4,,,"MAXIMUM","1:1:1","FROM_MTM");
$sdf_annotate("./stage5_individual_sdf.sdf", processor_tb.DUT.S5,,,"MAXIMUM","1:1:1","FROM_MTM");
$sdf_annotate("./flip_flops.sdf", processor_tb.DUT.S6,,,"MAXIMUM","1:1:1","FROM_MTM");
end

initial begin 
forever begin
#50 clk=~clk;
end end

initial begin
IMWrite=0;
clk=0;
reset_stage_1=1;
global_reg_write=0;
#100
IMWrite=1;
global_reg_write=1;
reset_stage_1=0;
//regfile_data_in=-32;
instruction_in = 32'b00000000010000000000000100110011;  //ADD IN REG2
#100;
instruction_in = 32'b00000001000001000111001010110011;  //AND IN REG5
regfile_data_in=-32;  //ADD 1    
#100;
instruction_in = 32'b01000000110001000000001100110011;  //SUB IN REG 6
regfile_data_in=-64;  //ADD 2
#100;
instruction_in = 32'b00000011110000000000000100100011;   //Store REG 28 in Mem2(34-32)
regfile_data_in=-2015;  //SUB 1    //AND 1    //BRANCH 1   
#100;
instruction_in = 32'b11111110111111000000001000000011;   //LOAD REG 4 With Mem2(19-17)
regfile_data_in=-4020;  //SUB 2
#100;
instruction_in = 32'b00000000100010000000111001100011;  /// BRANCH
regfile_data_in=-2015;   //AND 2    //BRANCH 2
#100;
instruction_in = 32'b0;
regfile_data_in=19;
#100;
instruction_in = 32'b0;   
regfile_data_in=19;
#100;
regfile_data_in=-1008;  
instruction_in = 32'b0;   
#100;
regfile_data_in=-1008;  
instruction_in = 32'b0;   
#100;
regfile_data_in=-1008;  
instruction_in = 32'b00000000100000000000000100110011;   //ADD IN REG 2;   
#100;
regfile_data_in=-1008; 
instruction_in = 32'b0;   
#100;
regfile_data_in=-1008;  //REG 28
instruction_in = 32'b01000001010001000000001100110011;   // SUB IN REG 6
#100;

IMWrite=0;
global_reg_write=0;
reset_stage_1 = 1;
#100;
reset_stage_1 = 0;

end


endmodule
