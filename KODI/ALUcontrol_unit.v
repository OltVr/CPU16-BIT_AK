`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/07/2024 07:59:42 PM
// Design Name: 
// Module Name: ALUcontrol_unit
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


module ALUcontrol_unit(
input[1:0] ALUOp, 
input[1:0] Funct, 
input[3:0] opcode,
output reg[4:0] Operacioni);

always @(ALUOp)
begin

case(ALUOp)
2'b00:                  //LW,SW 
begin
assign Operacioni = 4'b0100;
end
2'b01:
begin                   //BEQ
assign Operacioni = 4'b1100;
end
2'b10:
begin
    case(Funct)
    2'b00:                    
    begin
       case(opcode)
        4'b0000: assign Operacioni = 4'b0000;  //AND
        4'b0001: assign Operacioni = 4'b0100;  //ADD
        endcase
    end
    2'b01:              
    begin
        case(opcode)
        4'b0000: assign Operacioni = 4'b0010;  //OR
        4'b0001: assign Operacioni = 4'b1100;  //SUB
        endcase
    end
    2'b10:                    //XOR
    begin
    assign Operacioni = 4'b0011;
    end
    endcase
end
2'b11: //I-format
    case(opcode)
            4'b1001: Operacioni = 4'b0100; // per ADDI
            4'b1010: Operacioni = 4'b1101; // per SUBI
            4'b1011: Operacioni = 4'b0001; // per SLTI
        case(Funct)
            2'b00
            begin
            4'b0010: Operacioni = 4'b0110; // per SLL - bonus
            end
            2'b01
            begin
            4'b0010: Operacioni = 4'b0111; // per SRA - bonus
            end
        endcase
        endcase
endcase
end
endmodule
