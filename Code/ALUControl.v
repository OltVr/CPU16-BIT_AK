`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/13/2022 11:13:47 AM
// Design Name: 
// Module Name: ALUControl
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

//ALU Control (CU_OUT_x, Function Code nga R-formati, Opcode, T19) - eshte shtuar ALUOp per I-format qe nuk eshte ne foto po kerkohet ne detyre
module ALUControl(
input [1:0] ALUOp,
input [1:0] Funct,
input [3:0] opcode,
output reg [3:0] ALUCtrl
);

always @(ALUOp or Funct or opcode)
begin
    case (ALUOp)
        2'b00: ALUCtrl <= 4'b0100; //LW,SW 
        2'b01: ALUCtrl <= 4'b1100; //BEQ
        2'b10:
            case (Funct)
                2'b00: 
                    case (opcode)
                        4'b0000: ALUCtrl <= 4'b0000; //AND
                        4'b0001: ALUCtrl <= 4'b0100; //ADD
                    endcase
                2'b01:              
                    case (opcode)
                        4'b0000: ALUCtrl <= 4'b0010; //OR
                        4'b0001: ALUCtrl <= 4'b1100; //SUB
                    endcase
                2'b10: ALUCtrl <= 4'b0011; //XOR
            endcase
        2'b11: //I-format
            case (opcode)
                4'b1001: ALUCtrl <= 4'b0100; // per ADDI
                4'b1010: ALUCtrl <= 4'b1100; // per SUBI
                4'b1011: ALUCtrl <= 4'b0001; // per SLTI
                4'b0010:
                    case (Funct)
                        2'b00: ALUCtrl <= 4'b0110; // per SLL - bonus
                        2'b01: ALUCtrl <= 4'b0111; // per SRA - bonus
                    endcase
            endcase
    endcase
end


endmodule
