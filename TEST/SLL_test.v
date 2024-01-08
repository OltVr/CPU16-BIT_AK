`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/08/2024 06:58:49 PM
// Design Name: 
// Module Name: SLL_test
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


module SLL_test();

reg [15:0] A;
reg [4:0] shamt;
wire [15:0] dalja;

initial
$monitor("A=%d, shamt=%d, dalja=%d",A, shamt, dalja);
 initial
 begin
 #0 A=16'd3; shamt=4'd2;
 #10 A=16'd5; shamt=4'd3;
 #10 $stop;
 end
 
 SLL sll_test(A, shamt, dalja);
 
endmodule
