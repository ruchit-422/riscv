`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.03.2023 12:46:47
// Design Name: 
// Module Name: stage4
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


module stage4(clk,sum_in, zero, alu_result_in, read_data2_in, write_register_in, MemToReg_in,
    RegWrite_in, MemRead_in,MemWrite_in, Branch_in, PCSrc, read_data_out,
    sum_out, write_register_out, alu_result_out,MemToReg_out, RegWrite_out    
    );
input logic clk;    
input logic signed [63:0] sum_in; // needed to branch
input logic zero;
input logic signed [63:0] alu_result_in;
input logic signed [63:0] read_data2_in;
input logic [4:0] write_register_in;
input logic MemToReg_in;
input logic RegWrite_in;
input logic MemRead_in;
input logic MemWrite_in;
input logic Branch_in;

logic [63:0] DataMemory [127:0];   // Re-consider this

output logic PCSrc;
output logic signed [63:0]read_data_out;
output logic signed [63:0] sum_out;
output logic [4:0] write_register_out;
output logic signed [63:0] alu_result_out;
output logic MemToReg_out;
output logic RegWrite_out;
//SRAM implementation of memory

// Assuming that read only happens if MemRead_in=1 and clk=0.
// Assuming that write only happens if MemWrite_in=1 and clk=0.

always @(negedge clk)
begin
    if((zero & Branch_in)==1)
	PCSrc<=1;
    else
	PCSrc <=0;

    if(MemWrite_in)
        begin
            DataMemory[alu_result_in]<=read_data2_in;   //which data address to write
        end
    else if(MemRead_in)
        begin
            read_data_out <=DataMemory[alu_result_in];
        end		
end


//assign PCSrc = ((zero & Branch_in)===1);
assign write_register_out=write_register_in;
assign alu_result_out=alu_result_in;
assign MemToReg_out=MemToReg_in;
assign RegWrite_out=RegWrite_in;
assign sum_out = sum_in;

endmodule

