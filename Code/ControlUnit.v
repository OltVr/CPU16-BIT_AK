`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/22/2022 06:13:25 PM
// Design Name: 
// Module Name: CU
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


module CU(
    input [3:0] OPCODE, //HYRJA NGA D_OUT_1
    output reg RegDst, //DALJET E CU, CU_OUT_x
    output reg Jump,
    output reg Branch,
    output reg MemRead,
    output reg MemToReg,
    output reg[1:0] ALUop,
    output reg MemWrite,
    output reg ALUsrc,
    output reg RegWrite
    );
    
    
always @(OPCODE)
begin
case(OPCODE)
//R-format - AND, OR, XOR
4'b0000:
begin
 RegDst <= 1'b1;
 ALUsrc <= 1'b0;
 MemToReg <= 1'b0;
 RegWrite <= 1'b1;
 MemRead <= 1'b0;
 MemWrite <= 1'b0;
 ALUop <= 2'b10;
 Branch <= 1'b0;
end
//R-format, ADD, SUB
4'b0001:
begin
 RegDst <= 1'b1;
 ALUsrc <= 1'b0;
 MemToReg <= 1'b0;
 RegWrite <= 1'b1;
 MemRead <= 1'b0;
 MemWrite <= 1'b0;
 ALUop <= 2'b10;
 Branch <= 1'b0;
end
//I-format, ADDI,
4'b1001:
begin
 RegDst <= 1'b0;
 ALUsrc <= 1'b1;
 MemToReg <= 1'b0;
 RegWrite <= 1'b1;
 MemRead <= 1'b0;
 MemWrite <= 1'b0;
 ALUop <= 2'b11;
 Branch <= 1'b0;
end
//I format, SUBI
4'b1010:
begin
 RegDst <= 1'b0;
 ALUsrc <= 1'b1;
 MemToReg <= 1'b0;
 RegWrite <= 1'b1;
 MemRead <= 1'b0;
 MemWrite <= 1'b0;
 ALUop <= 2'b11;
 Branch <= 1'b0;
end
//I format, SLTI
4'b1011:
begin
 RegDst <= 1'b0;
 ALUsrc <= 1'b1;
 MemToReg <= 1'b0;
 RegWrite <= 1'b1;
 MemRead <= 1'b0;
 MemWrite <= 1'b0;
 ALUop <= 2'b11;
 Branch <= 1'b0;
end
//Instruksione Memorike
    
//LW
4'b1100:
begin
 RegDst <= 1'b0;
 ALUsrc <= 1'b1;
 MemToReg <= 1'b1;
 RegWrite <= 1'b1;
 MemRead <= 1'b1;
 MemWrite <= 1'b0;
 ALUop <= 2'b00;
 Branch <= 1'b0;
end
//SW
4'b1101:
begin
 RegDst <= 1'b0;
 ALUsrc <= 1'b1;
 MemToReg <= 1'b0;
 RegWrite <= 1'b0;
 MemRead <= 1'b0;
 MemWrite <= 1'b1;
 ALUop <= 2'b00;
 Branch <= 1'b0;
end
//BEQ
4'b1111:
begin
 RegDst <= 1'b0;
 ALUsrc <= 1'b0;
 MemToReg <= 1'b0;
 RegWrite <= 1'b0;
 MemRead <= 1'b0;
 MemWrite <= 1'b0;
 ALUop <= 2'b01;
 Branch <= 1'b1;
end
//SLL, SRA
4'b0010:
begin
 RegDst <= 1'b1;
 ALUsrc <= 1'bX;
 MemToReg <= 1'b0;
 RegWrite <= 1'b1;
 MemRead <= 1'b0;
 MemWrite <= 1'b0;
 ALUop <= 2'b10;
 Branch <= 1'b0;
end
endcase
end   
endmodule
