`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/06/2024 10:16:36 PM
// Design Name: 
// Module Name: InstructionMemory_test
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


module InstructionMemory_test();

reg [15:0] PC;
wire [15:0] Instruction;

initial
begin
#0 PC=16'd10;
end

InstructionMemory InsMem(PC, Instruction);

endmodule
