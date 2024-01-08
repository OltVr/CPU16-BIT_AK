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

module ALUcontrol_unit(
    input [1:0] ALUOp, 
    input [1:0] Funct, 
    input [3:0] opcode,
    output reg [3:0] Operacioni
);

always @(ALUOp)
begin
    case(ALUOp)
        2'b00: Operacioni = 4'b0100;  //LW, SW 
        2'b01: Operacioni = 4'b1100;  //BEQ
        2'b10:
            case(Funct)
                2'b00: Operacioni = (opcode == 4'b0000) ? 4'b0000 : 4'b0100;  //AND or ADD
            endcase
        2'b01:  //R-format
            case(opcode)
                4'b0000: Operacioni = 4'b0010;  //OR
                4'b0001: Operacioni = 4'b1100;  //SUB
            endcase
        2'b10: Operacioni = 4'b0011;  //XOR
        2'b11:  //I-format
            case(opcode)
                4'b1001: Operacioni = 4'b0100;  //ADDI
                4'b1010: Operacioni = 4'b1101;  //SUBI
                4'b1011: Operacioni = 4'b0001;  //SLTI
                4'b0010:
                    case(Funct)
                        2'b00: Operacioni = 4'b0110;  //SLL - bonus
                        2'b01: Operacioni = 4'b0111;  //SRA - bonus
                    endcase
            endcase
    endcase
end

endmodule
