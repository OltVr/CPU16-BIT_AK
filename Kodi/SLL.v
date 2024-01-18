`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/17/2024 10:35:02 PM
// Design Name: 
// Module Name: SLL
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


module SLL(
input[15:0] A,
input  [3:0] Shamt,
output reg [15:0] ShiftedA
    );
 
 
 always @ (Shamt)
 begin
 case(Shamt)
 4'b0000:
 begin
 assign ShiftedA= A;
 end   
 4'b0001:
 begin
 assign ShiftedA= {A[14:0],1'd0};
 end    
 4'b0010:
 begin
 assign ShiftedA= {A[13:0],2'd0};
 end
 4'b0011:
 begin
 assign ShiftedA= {A[12:0],3'd0};
 end   
 4'b0100:
 begin
 assign ShiftedA= {A[11:0],4'd0};
 end   
 4'b0101:
 begin
 assign ShiftedA= {A[10:0],5'd0};
 end   
 4'b0110:
 begin
 assign ShiftedA= {A[9:0],6'd0};
 end   
 4'b0111:
 begin
 assign ShiftedA= {A[8:0],7'd0};
 end   
 4'b1000:
 begin
 assign ShiftedA= {A[7:0],8'd0};
 end   
 4'b1001:
 begin
 assign ShiftedA= {A[6:0],9'd0};
 end   
 4'b1010:
 begin
 assign ShiftedA= {A[5:0],10'd0};
 end   
 4'b1011:
 begin
 assign ShiftedA= {A[4:0],11'd0};
 end   
 4'b1100:
 begin
 assign ShiftedA= {A[3:0],12'd0};
 end   
 4'b1101:
 begin
 assign ShiftedA= {A[2:0],13'd0};
 end   
 4'b1110:
 begin
 assign ShiftedA= {A[1:0],14'd0};
 end   
 4'b1111:
 begin
 assign ShiftedA= {A[0],15'd0};
 end   
 endcase
 end
    
//assign ShiftedA = A<<Shamt;

endmodule
