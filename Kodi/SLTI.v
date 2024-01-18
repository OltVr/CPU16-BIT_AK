`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/18/2024 03:25:19 PM
// Design Name: 
// Module Name: SLTI
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


module SLTI(
    input [15:0] A,
    input [15:0] B,
    output Less
    );
    
    wire [15:0] Cout;
    wire [15:0] JoB;
    assign JoB=~B;
    wire [15:0] res;
    
     Mbledhesi M0(A[0],JoB[0],1'b1,res[0],Cout[0]);
    Mbledhesi M1(A[1],JoB[1],Cout[0],res[1],Cout[1]);
    Mbledhesi M2(A[2],JoB[2],Cout[1],res[2],Cout[2]);
    Mbledhesi M3(A[3],JoB[3],Cout[2],res[3],Cout[3]);
    Mbledhesi M4(A[4],JoB[4],Cout[3],res[4],Cout[4]);
    Mbledhesi M5(A[5],JoB[5],Cout[4],res[5],Cout[5]);
    Mbledhesi M6(A[6],JoB[6],Cout[5],res[6],Cout[6]);
    Mbledhesi M7(A[7],JoB[7],Cout[6],res[7],Cout[7]);
    Mbledhesi M8(A[8],JoB[8],Cout[7],res[8],Cout[8]);
    Mbledhesi M9(A[9],JoB[9],Cout[8],res[9],Cout[9]);
    Mbledhesi M10(A[10],JoB[10],Cout[9],res[10],Cout[10]);
    Mbledhesi M11(A[11],JoB[11],Cout[10],res[11],Cout[11]);
    Mbledhesi M12(A[12],JoB[12],Cout[11],res[12],Cout[12]);
    Mbledhesi M13(A[13],JoB[13],Cout[12],res[13],Cout[13]);
    Mbledhesi M14(A[14],JoB[14],Cout[13],res[14],Cout[14]);
    Mbledhesi M15(A[15],JoB[15],Cout[14],res[15],Cout[15]);
    
    assign Less=res[15];
    
endmodule
