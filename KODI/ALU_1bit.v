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
    input AInvert,
    input BInvert,
    input [1:0] Operacion,
    output Rezultati,
    output COUT
    );
    
wire JoA, JoB, mA, mB, DHE, OSE, Mbledhesi;    
 
 assign JoA=~A;
 assign JoB=~B;
 
 mux2ne1 muxA(A,JoA,AInvert,mA);
 mux2ne1 muxB(B,JoB,BInvert,mB);
 
 assign DHE = mA&mB;
 assign OSE= mA|mB;
 
 Mbledhesi1bit Adder(mA,mB,CIN,Mbledhesi,COUT);
 
 mux4ne1 muxALU(DHE,OSE,Mbledhesi,LESS,Operacion,Rezultati);
  
endmodule
