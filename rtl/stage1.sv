`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.03.2023 19:00:26
// Design Name: 
// Module Name: stage1
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
parameter N = 64;

module stage1(PCSrc, clk, branch_pc,reset, instruction, pc_out, IMWrite, instruction_in);
input logic PCSrc;
input logic clk;
input logic signed [N-1:0] branch_pc;
input logic reset;
input logic IMWrite;
input logic [31:0] instruction_in;

logic [31:0] InstructionMemory [127:0];   // Change it to 2**N -1 :0 
logic [N-1:0] next_pc;
logic [N-1:0] pc_in;
logic [N-1:0]pc; 

output logic [31:0] instruction;
output logic [N-1:0] pc_out;

//assign next_pc = pc_out + 4;
assign pc = (PCSrc==1)? branch_pc:pc_out + 4;

always@(posedge clk)
begin
if(reset) pc_out<=0;
else
pc_out <= pc;
end

always@ (negedge clk)
begin
if (IMWrite) InstructionMemory[pc_out] <= instruction_in;
instruction <= InstructionMemory[pc_out];
end
endmodule
