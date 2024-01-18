`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/16/2024 08:15:52 PM
// Design Name: 
// Module Name: InstrMemT
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


module InstrMemT(
    );
    
  reg [15:0] PCAddress;
  wire [15:0] Instruction;
    
    InstructionMemory IMT (
    .PCAddress(PCAddress),
    .Instruction(Instruction));
    
    initial 
    begin
    // Apply different PCAddress values
    #0PCAddress = 16'd10; // Set your initial PCAddress
    #100; // Wait for some simulation time
    #100 $display("Instruction at PCAddress %d: %d", PCAddress, Instruction);

    #100 PCAddress = 16'd14; // Set another PCAddress
    #100 // Wait for some simulation time
    #100 $display("Instruction at PCAddress %h: %h", PCAddress, Instruction);
    #10 $stop;
    
    end
endmodule
