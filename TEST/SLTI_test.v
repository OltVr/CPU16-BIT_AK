`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/08/2024 12:01:07 AM
// Design Name: 
// Module Name: SLTI_test
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


module SLTI_test();

reg [15:0] A, B;
wire [15:0] OUT;

initial
$monitor("A=%d, B=%d, OUT=%d", A, B, OUT);

initial
begin
#0 A=16'd3; B=16'd5;
#10 A=16'd7; B=16'd7;
#10 $stop;
end

SLTI slti_test(A, B, OUT);

endmodule
