`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/16/2024 12:24:02 PM
// Design Name: 
// Module Name: DatamemT
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


module DatamemT();
reg [15:0] Address;
reg [15:0] WriteData;
reg MemWrite;
reg MemRead;
reg Clock;
wire[15:0] ReadData;

initial
begin
#0 Clock=1'b0;
#10 Clock=1'b1; Address=16'd10; WriteData=16'd7; MemWrite=1'b1; 
#10 Clock=1'b1;
#10 Clock=1'b0;MemWrite=1'b0;
#10 MemRead=1'b1;Address=16'd10;
#10 $stop;
end

DataMemory DMT(Address,WriteData,MemWrite,MemRead,Clock,ReadData);
endmodule
