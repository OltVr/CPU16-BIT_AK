`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/16/2024 09:27:41 PM
// Design Name: 
// Module Name: ALU16T
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


module ALU16T(

    );
    
    reg [15:0] A, B;
  reg BNegate;
  reg [2:0] Op;
  wire Zero, Overflow, CarryOut;
  wire [15:0] Result;

  // Instantiate ALU16 module
  ALU16 dut (
    .A(A),
    .B(B),
    .BNegate(BNegate),
    .Op(Op),
    .Zero(Zero),
    .Overflow(Overflow),
    .CarryOut(CarryOut),
    .Result(Result)
  );

  // Test scenarios
  initial begin
    // Test Case 1: Addition (Op=3'b000, A=5, B=3)
    A = 5;
    B = 3;
    BNegate = 0;
    Op = 3'b000;
    #10; // Wait for some simulation time
    $display("Test Case 1: Result=%h, Zero=%b, Overflow=%b, CarryOut=%b", Result, Zero, Overflow, CarryOut);

    // Test Case 2: Subtraction (Op=3'b001, A=7, B=4)
    A = 7;
    B = 4;
    BNegate = 0;
    Op = 3'b001;
    #10;
    $display("Test Case 2: Result=%h, Zero=%b, Overflow=%b, CarryOut=%b", Result, Zero, Overflow, CarryOut);

    // Test Case 3: AND (Op=3'b010, A=8, B=2)
    A = 8;
    B = 2;
    BNegate = 0;
    Op = 3'b010;
    #10;
    $display("Test Case 3: Result=%h, Zero=%b, Overflow=%b, CarryOut=%b", Result, Zero, Overflow, CarryOut);

    // Add more test cases as needed

    // End simulation
    $finish;
  end

endmodule
