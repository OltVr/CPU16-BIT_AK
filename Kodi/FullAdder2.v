`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/16/2024 05:43:08 PM
// Design Name: 
// Module Name: FullAdder2
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


module FullAdder2(
    input [15:0] A,
    output [15:0] Result
    );


wire [14:0] Cout;
    
    Mbledhesi M0(A[0],1'b0,1'b0,Result[0],Cout[0]);
    Mbledhesi M1(A[1],1'b1,Cout[0],Result[1],Cout[1]);
    Mbledhesi M2(A[2],1'b0,Cout[1],Result[2],Cout[2]);
    Mbledhesi M3(A[3],1'b0,Cout[2],Result[3],Cout[3]);
    Mbledhesi M4(A[4],1'b0,Cout[3],Result[4],Cout[4]);
    Mbledhesi M5(A[5],1'b0,Cout[4],Result[5],Cout[5]);
    Mbledhesi M6(A[6],1'b0,Cout[5],Result[6],Cout[6]);
    Mbledhesi M7(A[7],1'b0,Cout[6],Result[7],Cout[7]);
    Mbledhesi M8(A[8],1'b0,Cout[7],Result[8],Cout[8]);
    Mbledhesi M9(A[9],1'b0,Cout[8],Result[9],Cout[9]);
    Mbledhesi M10(A[10],1'b0,Cout[9],Result[10],Cout[10]);
    Mbledhesi M11(A[11],1'b0,Cout[10],Result[11],Cout[11]);
    Mbledhesi M12(A[12],1'b0,Cout[11],Result[12],Cout[12]);
    Mbledhesi M13(A[13],1'b0,Cout[12],Result[13],Cout[13]);
    Mbledhesi M14(A[14],1'b0,Cout[13],Result[14],Cout[14]);
    Mbledhesi M15(A[15],1'b0,Cout[14],Result[15],Cout[15]);
endmodule
