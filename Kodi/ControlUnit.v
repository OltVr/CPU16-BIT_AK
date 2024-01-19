`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/05/2024 03:54:01 PM
// Design Name: 
// Module Name: ControlUnit
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


module ControlUnit(
    input [3:0] OPCODE,
    output reg RegDst,
    output reg ALUsrc,
    output reg MemToReg,
    output reg RegWrite,
    output reg MemRead,
    output reg MemWrite,
    output reg [1:0] ALUop,
    output reg Branch
    );
always @(OPCODE)
begin
case(OPCODE)
//R-format - AND, OR, XOR
4'b0000:
begin
assign RegDst = 1'b1;
assign ALUsrc = 1'b0;
assign MemToReg = 1'b0;
assign RegWrite = 1'b1;
assign MemRead = 1'b0;
assign MemWrite = 1'b0;
assign ALUop = 2'b10;
assign Branch = 1'b0;
end
//R-format, ADD, SUB
4'b0001:
begin
assign RegDst = 1'b1;
assign ALUsrc = 1'b0;
assign MemToReg = 1'b0;
assign RegWrite = 1'b1;
assign MemRead = 1'b0;
assign MemWrite = 1'b0;
assign ALUop = 2'b10;
assign Branch = 1'b0;
end
//I-format, ADDI,
4'b1001:
begin
assign RegDst = 1'b0;
assign ALUsrc = 1'b1;
assign MemToReg = 1'b0;
assign RegWrite = 1'b1;
assign MemRead = 1'b0;
assign MemWrite = 1'b0;
assign ALUop = 2'b11;
assign Branch = 1'b0;
end
//I format, SUBI
4'b1010:
begin
assign RegDst = 1'b0;
assign ALUsrc = 1'b1;
assign MemToReg = 1'b0;
assign RegWrite = 1'b1;
assign MemRead = 1'b0;
assign MemWrite = 1'b0;
assign ALUop = 2'b11;
assign Branch = 1'b0;
end
//I format, SLTI
4'b1011:
begin
assign RegDst = 1'b0;
assign ALUsrc = 1'b1;
assign MemToReg = 1'b0;
assign RegWrite = 1'b1;
assign MemRead = 1'b0;
assign MemWrite = 1'b0;
assign ALUop = 2'b11;
assign Branch = 1'b0;
end
//Instruksione Memorike
4'b1100:
begin
assign RegDst = 1'b0;
assign ALUsrc = 1'b1;
assign MemToReg = 1'b1;
assign RegWrite = 1'b1;
assign MemRead = 1'b1;
assign MemWrite = 1'b0;
assign ALUop = 2'b00;
assign Branch = 1'b0;
end
//SW
4'b1101:
begin
assign RegDst = 1'b0;
assign ALUsrc = 1'b1;
assign MemToReg = 1'b0;
assign RegWrite = 1'b0;
assign MemRead = 1'b0;
assign MemWrite = 1'b1;
assign ALUop = 2'b00;
assign Branch = 1'b0;
end
//BEQ
4'b1111:
begin
assign RegDst = 1'b0;
assign ALUsrc = 1'b0;
assign MemToReg = 1'b0;
assign RegWrite = 1'b0;
assign MemRead = 1'b0;
assign MemWrite = 1'b0;
assign ALUop = 2'b01;
assign Branch = 1'b1;
end
//SLL, SRA
4'b0010:
begin
assign RegDst = 1'b1;
assign ALUsrc = 1'bX;
assign MemToReg = 1'b0;
assign RegWrite = 1'b1;
assign MemRead = 1'b0;
assign MemWrite = 1'b0;
assign ALUop = 2'b10;
assign Branch = 1'b0;
end
endcase
end   
endmodule
