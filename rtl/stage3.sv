`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.03.2023 01:21:39
// Design Name: 
// Module Name: stage3
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
parameter ADD=4'b0010;
parameter SUB=4'b0110;
parameter AND1=4'b0000;
parameter OR1=4'b0001;
parameter N = 64;
module stage3(pc_out, read_data1, read_data2_in, write_register_in, ALUSrc, 
    MemToReg_in, RegWrite_in, MemRead_in, MemWrite_in, Branch_in, ALUOp, immediate, ALU_control_input, 
    sum, zero, alu_result, read_data2_out, write_register_out, MemToReg_out, RegWrite_out, MemRead_out, 
    MemWrite_out, Branch_out
    );
    
input logic [N-1:0] pc_out;
input logic signed [63:0] read_data1;
input logic signed [63:0] read_data2_in;
input logic signed [63:0] immediate;
input logic [4:0] write_register_in;
input logic ALUSrc;
input logic MemToReg_in;
input logic RegWrite_in;
input logic MemRead_in;
input logic MemWrite_in;
input logic Branch_in;
input logic [1:0]ALUOp;
input logic [3:0] ALU_control_input;

logic signed [63:0] ALUin2;
logic signed [63:0] ADDin2;
logic [3:0] operation;

output logic signed [63:0] sum;
output logic zero;
output logic signed [63:0] alu_result;
output logic signed [63:0] read_data2_out;
output logic [4:0] write_register_out;
output logic MemToReg_out;
output logic RegWrite_out;
output logic MemRead_out;
output logic MemWrite_out;
output logic Branch_out;

assign MemToReg_out=MemToReg_in;
assign RegWrite_out=RegWrite_in;
assign MemRead_out=MemRead_in;
assign MemWrite_out=MemWrite_in;
assign Branch_out=Branch_in;
assign write_register_out=write_register_in;
assign read_data2_out=read_data2_in;
// ADD
assign ADDin2 = immediate<<1;
assign sum = ADDin2+pc_out;

// MUX
always @(*)
begin
if(ALUSrc==1) ALUin2=immediate;
else ALUin2=read_data2_in;
end

// ALU Control block
always @(*)
begin
if(ALUOp==2'b00) operation = 4'b0010;
else if(ALUOp==2'b01) operation = 4'b0110;
else if(ALUOp==2'b10) begin 
    case(ALU_control_input)
        4'b0000: operation=4'b0010;
        4'b1000: operation=4'b0110;
        4'b0111: operation=4'b0000;
        4'b0110: operation=4'b0001;
        default: operation=4'b1111;
    endcase
end 
end

// ALU block
always @(*)
begin
case(operation)
ADD : begin alu_result = read_data1 + ALUin2 ; end
SUB : begin alu_result = read_data1 - ALUin2 ;  zero=(alu_result==0); end
AND1 : begin alu_result = read_data1 & ALUin2 ; end
OR1 : begin alu_result = read_data1 | ALUin2 ; end
endcase
end

endmodule
