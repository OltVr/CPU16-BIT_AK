`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/05/2024 08:11:56 PM
// Design Name: 
// Module Name: RegisterFile
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


module RegisterFile(
        input [1:0] RS,
        input [1:0] RT,
        input [1:0] RD,
        input [15:0] WriteData,
        output [15:0] ReadRS,
        output [15:0] ReadRT,
        input RegWrite,
        input Clock
    );
    
    reg[15:0] Registers[3:0];
    
    always @(posedge Clock)
    begin
    if(RegWrite) Registers[RD] <= WriteData;
    end
    
    assign ReadRS = Registers[RS];
    assign ReadRT = Registers[RT];
    
endmodule
