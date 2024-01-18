`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/16/2024 09:15:36 PM
// Design Name: 
// Module Name: ACUT
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


module ACUT(

    );
    
     reg [1:0] ALUOp;
  reg [1:0] Funct;
  reg [3:0] opcode;
  wire [3:0] ALUCtrl;

  // Instantiate ALUControl module
  ALUControl dut (
    .ALUOp(ALUOp),
    .Funct(Funct),
    .opcode(opcode),
    .ALUCtrl(ALUCtrl)
  );

  // Test scenario
  initial begin
    // Test Case 1: LW (ALUOp=00, Funct=00, opcode=0000)
    ALUOp = 2'b00;
    Funct = 2'b00;
    opcode = 4'b0000;
    #10; // Wait for some simulation time
    $display("Test Case 1: ALUCtrl = %b", ALUCtrl);

    // Test Case 2: SUB (ALUOp=10, Funct=01, opcode=0001)
    ALUOp = 2'b10;
    Funct = 2'b01;
    opcode = 4'b0001;
    #10; // Wait for some simulation time
    $display("Test Case 2: ALUCtrl = %b", ALUCtrl);

    // Test Case 3: SLL (ALUOp=11, Funct=00, opcode=0010)
    ALUOp = 2'b11;
    Funct = 2'b00;
    opcode = 4'b0010;
    #10; // Wait for some simulation time
    $display("Test Case 3: ALUCtrl = %b", ALUCtrl);

    // Add more test cases as needed

    // End simulation
    $finish;
  end

endmodule
