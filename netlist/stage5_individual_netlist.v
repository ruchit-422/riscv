`timescale 1ns / 1ps
// Generated by Cadence Genus(TM) Synthesis Solution 21.10-p002_1
// Generated on: Apr 15 2023 16:56:56 IST (Apr 15 2023 11:26:56 UTC)

// Verification Directory fv/stage5 

module stage5(write_register_in, alu_result_in, MemToReg_in,
     RegWrite_in, write_register_out, write_data, read_data_in,
     RegWrite_out);
  input [4:0] write_register_in;
  input [63:0] alu_result_in, read_data_in;
  input MemToReg_in, RegWrite_in;
  output [4:0] write_register_out;
  output [63:0] write_data;
  output RegWrite_out;
  wire [4:0] write_register_in;
  wire [63:0] alu_result_in, read_data_in;
  wire MemToReg_in, RegWrite_in;
  wire [4:0] write_register_out;
  wire [63:0] write_data;
  wire RegWrite_out;
  wire n_0;
  assign RegWrite_out = RegWrite_in;
  assign write_register_out[0] = write_register_in[0];
  assign write_register_out[1] = write_register_in[1];
  assign write_register_out[2] = write_register_in[2];
  assign write_register_out[3] = write_register_in[3];
  assign write_register_out[4] = write_register_in[4];
  AO22M1RA g3841__2398(.A1 (alu_result_in[34]), .A2 (n_0), .B1
       (MemToReg_in), .B2 (read_data_in[34]), .Z (write_data[34]));
  AO22M1RA g3842__5107(.A1 (alu_result_in[60]), .A2 (n_0), .B1
       (MemToReg_in), .B2 (read_data_in[60]), .Z (write_data[60]));
  AO22M1RA g3843__6260(.A1 (alu_result_in[57]), .A2 (n_0), .B1
       (MemToReg_in), .B2 (read_data_in[57]), .Z (write_data[57]));
  AO22M1RA g3844__4319(.A1 (alu_result_in[50]), .A2 (n_0), .B1
       (MemToReg_in), .B2 (read_data_in[50]), .Z (write_data[50]));
  AO22M1RA g3845__8428(.A1 (alu_result_in[37]), .A2 (n_0), .B1
       (MemToReg_in), .B2 (read_data_in[37]), .Z (write_data[37]));
  AO22M1RA g3846__5526(.A1 (alu_result_in[12]), .A2 (n_0), .B1
       (MemToReg_in), .B2 (read_data_in[12]), .Z (write_data[12]));
  AO22M1RA g3847__6783(.A1 (alu_result_in[11]), .A2 (n_0), .B1
       (MemToReg_in), .B2 (read_data_in[11]), .Z (write_data[11]));
  AO22M1RA g3848__3680(.A1 (alu_result_in[10]), .A2 (n_0), .B1
       (MemToReg_in), .B2 (read_data_in[10]), .Z (write_data[10]));
  AO22M1RA g3849__1617(.A1 (alu_result_in[36]), .A2 (n_0), .B1
       (MemToReg_in), .B2 (read_data_in[36]), .Z (write_data[36]));
  AO22M1RA g3850__2802(.A1 (alu_result_in[9]), .A2 (n_0), .B1
       (MemToReg_in), .B2 (read_data_in[9]), .Z (write_data[9]));
  AO22M1RA g3851__1705(.A1 (alu_result_in[8]), .A2 (n_0), .B1
       (MemToReg_in), .B2 (read_data_in[8]), .Z (write_data[8]));
  AO22M1RA g3852__5122(.A1 (alu_result_in[35]), .A2 (n_0), .B1
       (MemToReg_in), .B2 (read_data_in[35]), .Z (write_data[35]));
  AO22M1RA g3853__8246(.A1 (alu_result_in[7]), .A2 (n_0), .B1
       (MemToReg_in), .B2 (read_data_in[7]), .Z (write_data[7]));
  AO22M1RA g3854__7098(.A1 (alu_result_in[6]), .A2 (n_0), .B1
       (MemToReg_in), .B2 (read_data_in[6]), .Z (write_data[6]));
  AO22M1RA g3855__6131(.A1 (alu_result_in[56]), .A2 (n_0), .B1
       (MemToReg_in), .B2 (read_data_in[56]), .Z (write_data[56]));
  AO22M1RA g3856__1881(.A1 (alu_result_in[49]), .A2 (n_0), .B1
       (MemToReg_in), .B2 (read_data_in[49]), .Z (write_data[49]));
  AO22M1RA g3857__5115(.A1 (alu_result_in[63]), .A2 (n_0), .B1
       (MemToReg_in), .B2 (read_data_in[63]), .Z (write_data[63]));
  AO22M1RA g3858__7482(.A1 (alu_result_in[5]), .A2 (n_0), .B1
       (MemToReg_in), .B2 (read_data_in[5]), .Z (write_data[5]));
  AO22M1RA g3859__4733(.A1 (alu_result_in[4]), .A2 (n_0), .B1
       (MemToReg_in), .B2 (read_data_in[4]), .Z (write_data[4]));
  AO22M1RA g3860__6161(.A1 (alu_result_in[3]), .A2 (n_0), .B1
       (MemToReg_in), .B2 (read_data_in[3]), .Z (write_data[3]));
  AO22M1RA g3861__9315(.A1 (alu_result_in[48]), .A2 (n_0), .B1
       (MemToReg_in), .B2 (read_data_in[48]), .Z (write_data[48]));
  AO22M1RA g3862__9945(.A1 (alu_result_in[33]), .A2 (n_0), .B1
       (MemToReg_in), .B2 (read_data_in[33]), .Z (write_data[33]));
  AO22M1RA g3863__2883(.A1 (alu_result_in[2]), .A2 (n_0), .B1
       (MemToReg_in), .B2 (read_data_in[2]), .Z (write_data[2]));
  AO22M1RA g3864__2346(.A1 (alu_result_in[32]), .A2 (n_0), .B1
       (MemToReg_in), .B2 (read_data_in[32]), .Z (write_data[32]));
  AO22M1RA g3865__1666(.A1 (alu_result_in[1]), .A2 (n_0), .B1
       (MemToReg_in), .B2 (read_data_in[1]), .Z (write_data[1]));
  AO22M1RA g3866__7410(.A1 (alu_result_in[0]), .A2 (n_0), .B1
       (MemToReg_in), .B2 (read_data_in[0]), .Z (write_data[0]));
  AO22M1RA g3867__6417(.A1 (alu_result_in[59]), .A2 (n_0), .B1
       (MemToReg_in), .B2 (read_data_in[59]), .Z (write_data[59]));
  AO22M1RA g3868__5477(.A1 (alu_result_in[55]), .A2 (n_0), .B1
       (MemToReg_in), .B2 (read_data_in[55]), .Z (write_data[55]));
  AO22M1RA g3869__2398(.A1 (alu_result_in[47]), .A2 (n_0), .B1
       (MemToReg_in), .B2 (read_data_in[47]), .Z (write_data[47]));
  AO22M1RA g3870__5107(.A1 (alu_result_in[31]), .A2 (n_0), .B1
       (MemToReg_in), .B2 (read_data_in[31]), .Z (write_data[31]));
  AO22M1RA g3871__6260(.A1 (alu_result_in[30]), .A2 (n_0), .B1
       (MemToReg_in), .B2 (read_data_in[30]), .Z (write_data[30]));
  AO22M1RA g3872__4319(.A1 (alu_result_in[46]), .A2 (n_0), .B1
       (MemToReg_in), .B2 (read_data_in[46]), .Z (write_data[46]));
  AO22M1RA g3873__8428(.A1 (alu_result_in[42]), .A2 (n_0), .B1
       (MemToReg_in), .B2 (read_data_in[42]), .Z (write_data[42]));
  AO22M1RA g3874__5526(.A1 (alu_result_in[54]), .A2 (n_0), .B1
       (MemToReg_in), .B2 (read_data_in[54]), .Z (write_data[54]));
  AO22M1RA g3875__6783(.A1 (alu_result_in[28]), .A2 (n_0), .B1
       (MemToReg_in), .B2 (read_data_in[28]), .Z (write_data[28]));
  AO22M1RA g3876__3680(.A1 (alu_result_in[27]), .A2 (n_0), .B1
       (MemToReg_in), .B2 (read_data_in[27]), .Z (write_data[27]));
  AO22M1RA g3877__1617(.A1 (alu_result_in[45]), .A2 (n_0), .B1
       (MemToReg_in), .B2 (read_data_in[45]), .Z (write_data[45]));
  AO22M1RA g3878__2802(.A1 (alu_result_in[26]), .A2 (n_0), .B1
       (MemToReg_in), .B2 (read_data_in[26]), .Z (write_data[26]));
  AO22M1RA g3879__1705(.A1 (alu_result_in[62]), .A2 (n_0), .B1
       (MemToReg_in), .B2 (read_data_in[62]), .Z (write_data[62]));
  AO22M1RA g3880__5122(.A1 (alu_result_in[61]), .A2 (n_0), .B1
       (MemToReg_in), .B2 (read_data_in[61]), .Z (write_data[61]));
  AO22M1RA g3881__8246(.A1 (alu_result_in[44]), .A2 (n_0), .B1
       (MemToReg_in), .B2 (read_data_in[44]), .Z (write_data[44]));
  AO22M1RA g3882__7098(.A1 (alu_result_in[25]), .A2 (n_0), .B1
       (MemToReg_in), .B2 (read_data_in[25]), .Z (write_data[25]));
  AO22M1RA g3883__6131(.A1 (alu_result_in[24]), .A2 (n_0), .B1
       (MemToReg_in), .B2 (read_data_in[24]), .Z (write_data[24]));
  AO22M1RA g3884__1881(.A1 (alu_result_in[43]), .A2 (n_0), .B1
       (MemToReg_in), .B2 (read_data_in[43]), .Z (write_data[43]));
  AO22M1RA g3885__5115(.A1 (alu_result_in[23]), .A2 (n_0), .B1
       (MemToReg_in), .B2 (read_data_in[23]), .Z (write_data[23]));
  AO22M1RA g3886__7482(.A1 (alu_result_in[22]), .A2 (n_0), .B1
       (MemToReg_in), .B2 (read_data_in[22]), .Z (write_data[22]));
  AO22M1RA g3887__4733(.A1 (alu_result_in[58]), .A2 (n_0), .B1
       (MemToReg_in), .B2 (read_data_in[58]), .Z (write_data[58]));
  AO22M1RA g3888__6161(.A1 (alu_result_in[53]), .A2 (n_0), .B1
       (MemToReg_in), .B2 (read_data_in[53]), .Z (write_data[53]));
  AO22M1RA g3889__9315(.A1 (alu_result_in[29]), .A2 (n_0), .B1
       (MemToReg_in), .B2 (read_data_in[29]), .Z (write_data[29]));
  AO22M1RA g3890__9945(.A1 (alu_result_in[21]), .A2 (n_0), .B1
       (MemToReg_in), .B2 (read_data_in[21]), .Z (write_data[21]));
  AO22M1RA g3891__2883(.A1 (alu_result_in[20]), .A2 (n_0), .B1
       (MemToReg_in), .B2 (read_data_in[20]), .Z (write_data[20]));
  AO22M1RA g3892__2346(.A1 (alu_result_in[19]), .A2 (n_0), .B1
       (MemToReg_in), .B2 (read_data_in[19]), .Z (write_data[19]));
  AO22M1RA g3893__1666(.A1 (alu_result_in[52]), .A2 (n_0), .B1
       (MemToReg_in), .B2 (read_data_in[52]), .Z (write_data[52]));
  AO22M1RA g3894__7410(.A1 (alu_result_in[41]), .A2 (n_0), .B1
       (MemToReg_in), .B2 (read_data_in[41]), .Z (write_data[41]));
  AO22M1RA g3895__6417(.A1 (alu_result_in[18]), .A2 (n_0), .B1
       (MemToReg_in), .B2 (read_data_in[18]), .Z (write_data[18]));
  AO22M1RA g3896__5477(.A1 (alu_result_in[40]), .A2 (n_0), .B1
       (MemToReg_in), .B2 (read_data_in[40]), .Z (write_data[40]));
  AO22M1RA g3897__2398(.A1 (alu_result_in[17]), .A2 (n_0), .B1
       (MemToReg_in), .B2 (read_data_in[17]), .Z (write_data[17]));
  AO22M1RA g3898__5107(.A1 (alu_result_in[16]), .A2 (n_0), .B1
       (MemToReg_in), .B2 (read_data_in[16]), .Z (write_data[16]));
  AO22M1RA g3899__6260(.A1 (alu_result_in[51]), .A2 (n_0), .B1
       (MemToReg_in), .B2 (read_data_in[51]), .Z (write_data[51]));
  AO22M1RA g3900__4319(.A1 (alu_result_in[39]), .A2 (n_0), .B1
       (MemToReg_in), .B2 (read_data_in[39]), .Z (write_data[39]));
  AO22M1RA g3901__8428(.A1 (alu_result_in[15]), .A2 (n_0), .B1
       (MemToReg_in), .B2 (read_data_in[15]), .Z (write_data[15]));
  AO22M1RA g3902__5526(.A1 (alu_result_in[14]), .A2 (n_0), .B1
       (MemToReg_in), .B2 (read_data_in[14]), .Z (write_data[14]));
  AO22M1RA g3903__6783(.A1 (alu_result_in[38]), .A2 (n_0), .B1
       (MemToReg_in), .B2 (read_data_in[38]), .Z (write_data[38]));
  AO22M1RA g3904__3680(.A1 (alu_result_in[13]), .A2 (n_0), .B1
       (MemToReg_in), .B2 (read_data_in[13]), .Z (write_data[13]));
  INVM6R g3905(.A (MemToReg_in), .Z (n_0));
endmodule

