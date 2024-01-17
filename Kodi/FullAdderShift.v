`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/16/2024 06:02:19 PM
// Design Name: 
// Module Name: FullAdderShift
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


module FullAdderShift(
    input [15:0] A,
    input [15:0] B,
    output [15:0] Result
    );
    wire [15:0] Cout;
    
     Mbledhesi M0(A[0],B[0],1'b0,Result[0],Cout[0]);
    Mbledhesi M1(A[1],B[1],Cout[0],Result[1],Cout[1]);
    Mbledhesi M2(A[2],B[2],Cout[1],Result[2],Cout[2]);
    Mbledhesi M3(A[3],B[3],Cout[2],Result[3],Cout[3]);
    Mbledhesi M4(A[4],B[4],Cout[3],Result[4],Cout[4]);
    Mbledhesi M5(A[5],B[5],Cout[4],Result[5],Cout[5]);
    Mbledhesi M6(A[6],B[6],Cout[5],Result[6],Cout[6]);
    Mbledhesi M7(A[7],B[7],Cout[6],Result[7],Cout[7]);
    Mbledhesi M8(A[8],B[8],Cout[7],Result[8],Cout[8]);
    Mbledhesi M9(A[9],B[9],Cout[8],Result[9],Cout[9]);
    Mbledhesi M10(A[10],B[10],Cout[9],Result[10],Cout[10]);
    Mbledhesi M11(A[11],B[11],Cout[10],Result[11],Cout[11]);
    Mbledhesi M12(A[12],B[12],Cout[11],Result[12],Cout[12]);
    Mbledhesi M13(A[13],B[13],Cout[12],Result[13],Cout[13]);
    Mbledhesi M14(A[14],B[14],Cout[13],Result[14],Cout[14]);
    Mbledhesi M15(A[15],B[15],Cout[14],Result[15],Cout[15]);
endmodule
