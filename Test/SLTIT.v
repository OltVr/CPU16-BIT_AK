`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/18/2024 05:02:59 PM
// Design Name: 
// Module Name: SLTIT
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


module SLTIT();

 reg [15:0] A;
  reg [15:0] B;
  wire Less;
  
  initial
  begin
  #0 A=16'd4;B=16'd5;
  #10 A=16'd4;B=16'd1;
  #5 $stop;
  end
  
  SLTI SLTIT(A,B,Less);
endmodule
