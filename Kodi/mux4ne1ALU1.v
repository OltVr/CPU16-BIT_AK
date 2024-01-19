`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/22/2022 05:30:27 PM
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



module mux8ne1(
    input Hyrja0,
    input Hyrja1,
    input Hyrja2,
    input Hyrja3,
    input [2:0] S,
    output Dalja
    );
//    dhe_teli, ose_teli,xor_teli, mb_teli, Op, Result
    assign Dalja= S[2]? Hyrja3:(S[1]?(S[0]?Hyrja2:Hyrja1):Hyrja0); 
endmodule
