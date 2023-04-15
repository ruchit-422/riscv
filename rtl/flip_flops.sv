`timescale 1ns / 1ps
module flip_flops(clk,pc_out_stage_1,pc_in_stage_2,instruction_stage_1,instruction_stage_2,pc_out_stage_2,pc_in_stage_3,read_data1_stage_2,read_data1_stage_3,
read_data2_stage_2,read_data2_in_stage_3,write_register_out_stage_2,write_register_in_stage_3,ALUSrc_stage_2,ALUSrc_stage_3,MemToReg_stage_2,MemToReg_in_stage_3,
RegWrite_stage_2,RegWrite_in_stage_3,MemRead_stage_2,MemRead_in_stage_3,MemWrite_stage_2,MemWrite_in_stage_3,Branch_stage_2,Branch_in_stage_3,ALUOp_stage_2,
ALUOp_stage_3,immediate_stage_2,immediate_stage_3,ALU_control_input_stage_2,ALU_control_input_stage_3,sum_stage_3,sum_in_stage_4,zero_stage_3,zero_stage_4,
alu_result_stage_3,alu_result_in_stage_4,read_data2_out_stage_3,read_data2_in_stage_4,write_register_out_stage_3,write_register_in_stage_4,MemToReg_out_stage_3,
MemToReg_in_stage_4,RegWrite_out_stage_3,RegWrite_in_stage_4,MemRead_out_stage_3,MemRead_in_stage_4,MemWrite_out_stage_3,MemWrite_in_stage_4,Branch_out_stage_3,
Branch_in_stage_4,read_data_out_stage_4,read_data_in_stage_5,write_register_out_stage_4,write_register_in_stage_5,alu_result_out_stage_4,alu_result_in_stage_5,
MemToReg_out_stage_4,MemToReg_in_stage_5,RegWrite_out_stage_4,RegWrite_in_stage_5);
input logic clk;
input logic [63:0] pc_out_stage_1;
output logic [63:0] pc_in_stage_2;
input logic [31:0] instruction_stage_1;
output logic [31:0] instruction_stage_2;

input logic [64-1:0] pc_out_stage_2;
input logic signed [63:0] read_data1_stage_2;
input logic signed [63:0] read_data2_stage_2;
input logic signed [63:0] immediate_stage_2;
input logic [4:0] write_register_out_stage_2;
input logic ALUSrc_stage_2;
input logic MemToReg_stage_2;
input logic RegWrite_stage_2;
input logic MemRead_stage_2;
input logic MemWrite_stage_2;
input logic Branch_stage_2;
input logic [1:0]ALUOp_stage_2;
input logic [3:0] ALU_control_input_stage_2;


output logic [64-1:0] pc_in_stage_3;
output logic signed [63:0] read_data1_stage_3;
output logic signed [63:0] read_data2_in_stage_3;
output logic signed [63:0] immediate_stage_3;
output logic [4:0] write_register_in_stage_3;
output logic ALUSrc_stage_3;
output logic MemToReg_in_stage_3;
output logic RegWrite_in_stage_3;
output logic MemRead_in_stage_3;
output logic MemWrite_in_stage_3;
output logic Branch_in_stage_3;
output logic [1:0]ALUOp_stage_3;
output logic [3:0] ALU_control_input_stage_3;

input logic signed [63:0] sum_stage_3; // needed to branch
input logic zero_stage_3;
input logic signed [63:0] alu_result_stage_3;
input logic signed [63:0] read_data2_out_stage_3;
input logic [4:0] write_register_out_stage_3;
input logic MemToReg_out_stage_3;
input logic RegWrite_out_stage_3;
input logic MemRead_out_stage_3;
input logic MemWrite_out_stage_3;
input logic Branch_out_stage_3;

output logic signed [63:0] sum_in_stage_4;
output logic zero_stage_4;
output logic signed [63:0] alu_result_in_stage_4;
output logic signed [63:0] read_data2_in_stage_4;
output logic [4:0] write_register_in_stage_4;
output logic MemToReg_in_stage_4;
output logic RegWrite_in_stage_4;
output logic MemRead_in_stage_4;
output logic MemWrite_in_stage_4;
output logic Branch_in_stage_4;




input logic [4:0] write_register_out_stage_4;
input logic MemToReg_out_stage_4;
input logic RegWrite_out_stage_4;
input logic signed [63:0] alu_result_out_stage_4;
input logic signed [63:0]read_data_out_stage_4;


output logic [4:0] write_register_in_stage_5;
output logic MemToReg_in_stage_5;
output logic RegWrite_in_stage_5;
output logic signed [63:0] alu_result_in_stage_5;
output logic signed [63:0]read_data_in_stage_5;


always @(posedge clk) begin
pc_in_stage_2 <= pc_out_stage_1;
instruction_stage_2 <= instruction_stage_1 ; 
end

// ID/EX pipeline registers 2-3 
always @(posedge clk) begin
pc_in_stage_3 <= pc_out_stage_2; 
read_data1_stage_3 <= read_data1_stage_2;
read_data2_in_stage_3 <= read_data2_stage_2;
write_register_in_stage_3 <= write_register_out_stage_2;
ALUSrc_stage_3 <= ALUSrc_stage_2;
MemToReg_in_stage_3 <= MemToReg_stage_2;
RegWrite_in_stage_3 <= RegWrite_stage_2;
MemRead_in_stage_3 <= MemRead_stage_2;
MemWrite_in_stage_3 <= MemWrite_stage_2;
Branch_in_stage_3 <= Branch_stage_2;
ALUOp_stage_3 <= ALUOp_stage_2;
immediate_stage_3 <= immediate_stage_2;
ALU_control_input_stage_3 <= ALU_control_input_stage_2;
end



// EX/MEM pipeline registers 3-4 
always @(posedge clk) begin
sum_in_stage_4 <= sum_stage_3;
zero_stage_4 <= zero_stage_3;
alu_result_in_stage_4 <= alu_result_stage_3;
read_data2_in_stage_4 <= read_data2_out_stage_3;
write_register_in_stage_4 <= write_register_out_stage_3;
MemToReg_in_stage_4 <= MemToReg_out_stage_3;
RegWrite_in_stage_4 <= RegWrite_out_stage_3;
MemRead_in_stage_4 <= MemRead_out_stage_3;
MemWrite_in_stage_4 <= MemWrite_out_stage_3;
Branch_in_stage_4 <= Branch_out_stage_3;
end



// MEM/WB pipeline registers 4-5 
always @(posedge clk) begin
read_data_in_stage_5 <= read_data_out_stage_4;
write_register_in_stage_5 <= write_register_out_stage_4;
alu_result_in_stage_5 <= alu_result_out_stage_4;
MemToReg_in_stage_5 <= MemToReg_out_stage_4;
RegWrite_in_stage_5 <= RegWrite_out_stage_4;

end

endmodule
