`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/04/2024 04:28:03 PM
// Design Name: 
// Module Name: mux4ne1
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


module mux4ne1(
    input Hyrja0,
    input Hyrja1,
    input Hyrja2,
    input Hyrja3,
    input [1:0] S,
    output Dalja
    );
    
    assign Dalja= S[1] ? (S[0]? Hyrja3:Hyrja2) : (S[0]? Hyrja1:Hyrja0); 
endmodule
