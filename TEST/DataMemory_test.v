`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/07/2024 11:14:34 PM
// Design Name: 
// Module Name: DataMemory_test
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


module DataMemory_test();
reg Clock,MemWrite,MemRead;
reg [15:0] Adresa;
reg [15:0] WriteData;
wire [15:0] ReadData;

initial 
begin
#0 Clock=1'b0;
#5 MemWrite=1'b1;Adresa=16'd12;WriteData=16'b0000000000000111;MemRead=1'b0;
#5 Clock=1'b1;
#5 Clock=1'b0;MemWrite=1'b0;
#5 MemRead=1'b1;Adresa=16'h0C;
#5 $stop;
end

DataMemory DM(Adresa, WriteData,Clock, MemWrite, MemRead,ReadData);

endmodule
