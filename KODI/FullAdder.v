`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/08/2024 04:30:03 PM
// Design Name: 
// Module Name: FullAdder
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


module FullAdder(
input [15:0] A,B,
input CIN,
output [15:0] Rezultati,
output COUT
    );
    wire [14:0] CarryOut;
    
    Mbledhesi1bit M0(A[0],B[0],1'b0,Rezultati[0],CarryOut[0]);
    Mbledhesi1bit M1(A[1],B[1],CarryOut[0],Rezultati[1],CarryOut[1]);
    Mbledhesi1bit M2(A[2],B[2],CarryOut[1],Rezultati[2],CarryOut[2]);
    Mbledhesi1bit M3(A[3],B[3],CarryOut[2],Rezultati[3],CarryOut[3]);
    Mbledhesi1bit M4(A[4],B[4],CarryOut[3],Rezultati[4],CarryOut[4]);
    Mbledhesi1bit M5(A[5],B[5],CarryOut[4],Rezultati[5],CarryOut[5]);
    Mbledhesi1bit M6(A[6],B[6],CarryOut[5],Rezultati[6],CarryOut[6]);
    Mbledhesi1bit M7(A[7],B[7],CarryOut[6],Rezultati[7],CarryOut[7]);
    Mbledhesi1bit M8(A[8],B[8],CarryOut[7],Rezultati[8],CarryOut[8]);
    Mbledhesi1bit M9(A[9],B[9],CarryOut[8],Rezultati[9],CarryOut[9]);
    Mbledhesi1bit M10(A[10],B[10],CarryOut[9],Rezultati[10],CarryOut[10]);
    Mbledhesi1bit M11(A[11],B[11],CarryOut[10],Rezultati[11],CarryOut[11]);
    Mbledhesi1bit M12(A[12],B[12],CarryOut[11],Rezultati[12],CarryOut[12]);
    Mbledhesi1bit M113(A[13],B[13],CarryOut[12],Rezultati[13],CarryOut[13]);
    Mbledhesi1bit M14(A[14],B[14],CarryOut[13],Rezultati[14],CarryOut[14]);
    Mbledhesi1bit M15(A[15],B[15],CarryOut[14],Rezultati[15],COUT);
    
    
endmodule
