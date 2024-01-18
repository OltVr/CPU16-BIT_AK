`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/17/2024 11:06:48 PM
// Design Name: 
// Module Name: SRA
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


module SRA(
input  [15:0] A,
input [3:0] Shamt,
output reg [15:0] ShiftedRA
    );
    
     always @ (Shamt)
 begin
 case(Shamt)
 4'b0000:
 begin
 assign ShiftedRA= A;
 end   
 4'b0001:
 begin
 assign ShiftedRA= {{1{A[15]}},A[15:1]};
 end    
 4'b0010:
 begin
 assign ShiftedRA= {{2{A[15]}},A[15:2]};
 end
 4'b0011:
 begin
 assign ShiftedRA= {{3{A[15]}},A[15:3]};
 end   
 4'b0100:
 begin
 assign ShiftedRA= {{4{A[15]}},A[15:4]};
 end   
 4'b0101:
 begin
 assign ShiftedRA= {{5{A[15]}},A[15:5]};
 end   
 4'b0110:
 begin
 assign ShiftedRA= {{6{A[15]}},A[15:6]};
 end   
 4'b0111:
 begin
 assign ShiftedRA= {{7{A[15]}},A[15:7]};
 end   
 4'b1000:
 begin
 assign ShiftedRA= {{8{A[15]}},A[15:8]};
 end   
 4'b1001:
 begin
 assign ShiftedRA= {{9{A[15]}},A[15:9]};
 end   
 4'b1010:
 begin
 assign ShiftedRA= {{10{A[15]}},A[15:10]};
 end   
 4'b1011:
 begin
 assign ShiftedRA= {{11{A[15]}},A[15:11]};
 end   
 4'b1100:
 begin
 assign ShiftedRA= {{12{A[15]}},A[15:12]};
 end   
 4'b1101:
 begin
 assign ShiftedRA= {{13{A[15]}},A[15:13]};
 end   
 4'b1110:
 begin
 assign ShiftedRA= {{14{A[15]}},A[15:14]};
 end   
 4'b1111:
 begin
 assign ShiftedRA= {{15{A[15]}},A[15]};
 end   
 endcase
 end
    
    
//    assign ShiftedRA= A >>> Shamt;
    
endmodule
