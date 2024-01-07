`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/04/2024 04:35:59 PM
// Design Name: 
// Module Name: ALU_1bit
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


module ALU_1bit(
    input A,
    input B,
    input LESS,
    input CIN,
    input BInvert,
    input [2:0] Operacion,
    output Rezultati,
    output COUT
    );
    
wire  JoB, mB, DHE, OSE, XOR, Mbledhesi;    
 
 assign JoB=~B;
 
 mux2ne1 muxB(B,JoB,BInvert,mB);
 
 assign DHE = A&mB;
 assign OSE= A|mB;
 assign XOR= A^mB;
 
 
 Mbledhesi1bit Adder(A,mB,CIN,Mbledhesi,COUT);
 
 mux8ne1 muxALU(DHE,LESS,OSE,XOR,Mbledhesi,Operacion,Rezultati);
  
endmodule
