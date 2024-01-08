`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/07/2024 05:00:47 PM
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
  input [15:0] Adresa,
  input [15:0] WriteData,
  input Clock,
  input MemWrite,
  input MemRead,
  output reg [15:0] ReadData
);
  reg [7:0] DataMem[127:0];
  initial $readmemb("dataMemory.mem",DataMem);
  
  always @(posedge Clock)
    begin
      if(MemWrite) 
        begin
        DataMem[Adresa] <= WriteData[15:8];
      DataMem[Adresa+1] <= WriteData[7:0];
        end
        ReadData={DataMem[Adresa],DataMem[Adresa+1]};
    end 
  always @(negedge Clock)
    begin
    if(MemWrite)
      $writememb("dataMemory.mem",DataMem);
    end
 
  
endmodule
