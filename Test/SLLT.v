`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/17/2024 10:45:08 PM
// Design Name: 
// Module Name: SLLT
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


module SLLT(
    );
    reg[15:0] A;
reg [3:0] Shamt;
wire [15:0] ShiftedA;

initial
begin
#0 A=16'd5;Shamt=16'd4;
#10 A=16'd5;Shamt=16'd2;
#10 $stop;
end

SLL SLLT(A,Shamt,ShiftedA);

endmodule
