`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.03.2023 16:40:33
// Design Name: 
// Module Name: stage5
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


module stage5(write_register_in,alu_result_in,MemToReg_in,RegWrite_in, write_register_out,
    write_data, read_data_in, RegWrite_out);

input logic [4:0] write_register_in;
input logic MemToReg_in;
input logic RegWrite_in;
input logic signed [63:0] alu_result_in;
input logic signed [63:0]read_data_in;


output logic [4:0] write_register_out;
output logic signed [63:0] write_data;
output logic RegWrite_out;

assign write_register_out=write_register_in;
assign RegWrite_out = RegWrite_in;

always @(*)
begin
if (!MemToReg_in) write_data=alu_result_in;
else write_data=read_data_in;
end


endmodule
