`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.03.2023 19:17:18
// Design Name: 
// Module Name: stage2
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
module stage2(clk,pc_in, instruction, pc_out, read_data1 ,read_data2, write_data, write_register_out, write_register_in, ALU_control_input, 
    ALUSrc, MemToReg,RegWrite, MemRead, MemWrite, Branch, ALUOp, immediate, RegWrite_in,global_reg_write,regfile_data_in);
input logic global_reg_write;
input logic signed [63:0] regfile_data_in;
input logic clk;
input logic [N-1:0] pc_in;
input logic [31:0] instruction;
input logic signed [63:0] write_data;
input logic [4:0] write_register_in;
input logic RegWrite_in;

logic [6:0] opcode;
logic [63:0] regfile [127:0];
logic [4:0]rs1;
logic [4:0]rs2;
logic signed [11:0] immediate1;


output logic [N-1:0] pc_out;
output logic signed [63:0] read_data1;
output logic signed [63:0] read_data2;
output logic signed [63:0] immediate;
output logic [4:0] write_register_out;
output logic ALUSrc;
output logic MemToReg;
output logic RegWrite;
output logic MemRead;
output logic MemWrite;
output logic Branch;
output logic [1:0]ALUOp;
output logic [3:0] ALU_control_input;

assign rs2=(opcode==7'b0000011)? (5'b0):instruction[24:20];
assign rs1=instruction[19:15];
assign opcode = instruction[6:0];
assign write_register_out=(opcode==7'b0000011 || opcode==7'b0110011 )? instruction[11:7] : (5'b0);
assign read_data1=regfile[rs1];
assign read_data2=regfile[rs2];
assign ALU_control_input = {instruction[30],instruction[14],instruction[13],instruction[12]} ;
assign pc_out = pc_in;
//assign immediate = $signed(immediate1);
//assign immediate = immediate1[11]? {52'b1, immediate1}: {52'b0, immediate1};
assign immediate = { {52{immediate1[11]}}, immediate1 };



always @(*) // add assert and/or default NoOP instruction define. 
begin
case(opcode)
7'b0000011: begin ALUSrc=1'b1;MemToReg=1'b1;RegWrite=1'b1;MemRead=1'b1;MemWrite=1'b0;Branch=1'b0;ALUOp=2'b00; immediate1=instruction[31:20]; end //I type (ld)
7'b0100011: begin ALUSrc=1'b1;MemToReg=1'b0;RegWrite=1'b0;MemRead=1'b0;MemWrite=1'b1;Branch=1'b0;ALUOp=2'b00; immediate1={instruction[31:25], instruction[11:7]}; end //S type (sd)
7'b0110011: begin ALUSrc=1'b0;MemToReg=1'b0;RegWrite=1'b1;MemRead=1'b0;MemWrite=1'b0;Branch=1'b0;ALUOp=2'b10; immediate1 = 0 ; end //R type (add, sub, and, or)
7'b1100011: begin ALUSrc=1'b0;MemToReg=1'b0;RegWrite=1'b0;MemRead=1'b0;MemWrite=1'b0;Branch=1'b1;ALUOp=2'b01; immediate1={instruction[31], instruction[7],instruction[30:25],instruction[11:8]}; end //B type (beq)
default : begin ALUSrc=1'b0;MemToReg=1'b0;RegWrite=1'b0;MemRead=1'b0;MemWrite=1'b0;Branch=1'b0;ALUOp=2'b11; immediate1=1'b0; end

//3: begin ALUSrc=1'b1;MemToReg=1'b1;RegWrite=1'b1;MemRead=1'b1;MemWrite=1'b0;Branch=1'b0;ALUOp=2'b00; immediate1=instruction[31:20]; end //I type (ld)
//4: begin ALUSrc=1'b1;MemToReg=1'b0;RegWrite=1'b0;MemRead=1'b0;MemWrite=1'b1;Branch=1'b0;ALUOp=2'b00; immediate1={instruction[31:25], instruction[11:7]}; end //S type (sd)
//5: begin ALUSrc=1'b0;MemToReg=1'b0;RegWrite=1'b1;MemRead=1'b0;MemWrite=1'b0;Branch=1'b0;ALUOp=2'b10; immediate1 = 0 ; end //R type (add, sub, and, or)
//6: begin ALUSrc=1'b0;MemToReg=1'b0;RegWrite=1'b0;MemRead=1'b0;MemWrite=1'b0;Branch=1'b1;ALUOp=2'b01; immediate1={instruction[31], instruction[7],instruction[30:25],instruction[11:8]}; end //B type (beq)

endcase
end

// Writing in negedge of clock.
always@(negedge clk)
begin
if(global_reg_write)
begin
regfile[pc_out]<=regfile_data_in;
end
if(RegWrite_in & !(global_reg_write) )
regfile[write_register_in]<=write_data;
end



// immediate generation block


endmodule


