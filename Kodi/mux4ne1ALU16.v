`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/18/2024 09:03:06 PM
// Design Name: 
// Module Name: mux4ne1ALU16
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


module mux4ne1ALU16(
    input [15:0]ShiftR,
    input[15:0] ShiftL,
    input [15:0]Result,
    input[15:0] Less,
    input [2:0] S,
    output [15:0] Dalja
    );
    
     assign Dalja= S[2]? (S[1]?(S[0]?ShiftR:ShiftL):Result):(S[1]? Result:(S[0]?Less:Result));
endmodule
