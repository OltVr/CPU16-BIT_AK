`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/04/2024 04:31:27 PM
// Design Name: 
// Module Name: Mbledhesi1bit
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


module Mbledhesi1bit(
    input A,
    input B,
    input CIN,
    output SUM,
    output COUT
    );
    
 assign SUM= A^B^CIN;
 
 assign COUT= A&B| A&CIN| B&CIN;
    
endmodule
