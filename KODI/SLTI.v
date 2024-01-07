`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/07/2024 11:49:58 PM
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
    output [15:0] OUT
    );
    wire SLTI;
    assign SLTI = (A < B) ? 1: 0;
    assign OUT ={15'b0, SLTI};
    
endmodule
