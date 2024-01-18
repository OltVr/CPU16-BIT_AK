`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/17/2024 11:08:37 PM
// Design Name: 
// Module Name: SRAT
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


module SRAT(

    );
    
    reg [15:0] A;
    reg [3:0] Shamt;
    wire [15:0] ShiftedRA;
    
    initial
    begin
    #0 A=16'b1100001000000000;Shamt=16'd2;
    end
    
    SRA SRAT(A,Shamt,ShiftedRA);
endmodule
