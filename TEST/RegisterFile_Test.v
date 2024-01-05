`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/05/2024 08:37:47 PM
// Design Name: 
// Module Name: RegisterFile_Test
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


module RegisterFile_Test;

reg [1:0] RS, RT, RD;
reg [15:0] WriteData;
reg RegWrite, Clock;
wire [15:0] ReadRS, ReadRT;

initial
begin
#0 Clock=1'b0;
#5 RD=2'd3; WriteData=16'd10; RegWrite=1'b1;
#5 Clock=1'b1;
#5 Clock=1'b0; RegWrite=1'b1;
#5 RD=2'd1; WriteData=16'd13; RegWrite=1'b1;
#5 Clock=1'b1;
#5 Clock=1'b0; RegWrite=1'b0;
#5 RS=2'd3; RT=2'd1;
#5 $stop;
end

RegisterFile RF(RS, RT, RD, WriteData, ReadRS, ReadRT, RegWrite, Clock);
endmodule
