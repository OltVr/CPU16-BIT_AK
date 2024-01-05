module DataMemory(
  input [15:0] Adresa,
  input [15:0] WriteData,
  input Clock,
  input MemWrite,
  input MemRead,
  output [15:0] ReadData
);
  reg [7:0] DataMem[127:0];
  initial $readmemh("dataMemory.mem",DataMem);
  
  always @(posedge Clock)
    begin
      if(MemWrite) 
        begin
        DataMem[Adresa] <= WriteData[15:8];
      DataMem[Adresa+1] <= WriteData[7:0];
        end
    end 
  always @(negedge Clock)
    begin
      $writememh("dataMemory.mem",DataMem);
    end
  
  assign ReadData={DataMem[Adresa],DataMem[Adresa+1]};
  
endmodule