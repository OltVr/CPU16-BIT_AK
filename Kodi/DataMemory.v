`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/06/2022 12:13:15 PM
// Design Name: 
// Module Name: DataMemory
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


module DataMemory(
input wire[15:0] Address,
input wire[15:0] WriteData,
input wire[15:0] PC,
input wire MemWrite,
input wire MemRead,
input wire Clock,
output reg [15:0] ReadData
);
wire [15:0] AddressPC;
reg[7:0] dataMem[127:0];

FullAdderShift FPA(Address,PC,AddressPC);

initial
$readmemb("dataMemory.mem", dataMem);



always@(posedge Clock)
begin 
if(MemRead == 1'b1)
            begin
              ReadData[15:8] <= dataMem[Address + 16'd0];
              ReadData[7:0] <= dataMem[Address + 16'd1];
          end
    if(MemWrite) 
        begin
            //bigEndian
            dataMem[AddressPC + 16'd0] <= WriteData[15:8];
            dataMem[AddressPC + 16'd1] <= WriteData[7:0];
           end
          
end

always @(negedge Clock)
begin

$writememb("dataMemory.mem", dataMem);
end

 
 



endmodule
