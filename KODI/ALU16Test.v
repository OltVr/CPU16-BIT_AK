`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/08/2024 02:19:15 PM
// Design Name: 
// Module Name: ALU16T
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


module ALU16T();

  reg [15:0] A;
  reg [15:0] B;
  reg [2:0] ALUOp;
  reg BNegate;
  wire Zero, Overflow,CarryOut;
  wire [15:0] Rezultati;
  
  
  
  initial
  begin
  #0 A=16'd13;B=16'd7;ALUOp=3'b000;BNegate=1'b0; //AND
  #10 A=16'd13;B=16'd7;ALUOp=3'b010;BNegate=1'b0; //OR
  #10 A=16'd13;B=16'd7;ALUOp=3'b011;BNegate=1'b0; //XOR
  #10 A=16'd13;B=16'd7;ALUOp=3'b100;BNegate=1'b0;// ADD
  #10 A=16'd13;B=16'd7;ALUOp=3'b100;BNegate=1'b1; // SUB
  #10 A=16'd13;B=16'd13;ALUOp=3'b100;BNegate=1'b1; // ZERO
  #10 A=16'h0001;B=16'h7fff;ALUOp=3'b100;BNegate=1'b0; // OVERFLOW
  
  #10 $stop;
  end

ALU_16Bit ALU16T(A,B,ALUOp,BNegate,Zero,Overflow,CarryOut,Rezultati);
endmodule
