`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/22/2022 05:27:39 PM
// Design Name: 
// Module Name: ALU1
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


module ALU1(
    input A,
    input B,
    input CIN,
    input BInvert,
    input [2:0] Op,
    output Result,
    output CarryOut
    );
    
   wire  JoB, mB, dhe_teli, ose_teli, mb_teli; 
   
   assign JoB = ~B;
   
   mux2ne1 muxB(B, JoB, BInvert, mB);
   
   assign dhe_teli = A & mB;
   assign ose_teli = A | mB;
   assign xor_teli= A^mB;
   Mbledhesi m1(A, mB, CIN, mb_teli, CarryOut);
   
   mux4ne1ALU1 MuxiKryesor(dhe_teli, ose_teli,xor_teli, mb_teli, Op, Result);
    
    
endmodule
