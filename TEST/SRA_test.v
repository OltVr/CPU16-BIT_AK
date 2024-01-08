`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/08/2024 01:02:27 AM
// Design Name: 
// Module Name: SRA_test
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


module SRA_test();

reg [15:0] hyrja;
reg [4:0] shamt;
wire [15:0] dalja;

initial
$monitor("hyrja=%d, shamt=%d, dalja=%d",hyrja, shamt, dalja);

initial
begin
#0 hyrja=16'd90; shamt=4'd3;
#10 $stop;
end

SRA SRA_test(hyrja, shamt, dalja);

endmodule
