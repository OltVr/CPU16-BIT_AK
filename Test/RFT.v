module RFT;

  reg [1:0] RS, RT, RD;
  reg [15:0] WriteData;
  reg RegWrite, Clock;
  wire [15:0] ReadRS, ReadRT;


  RegisterFile RFT (
    .RS(RS),
    .RT(RT),
    .RD(RD),
    .WriteData(WriteData),
    .RegWrite(RegWrite),
    .Clock(Clock),
    .ReadRS(ReadRS),
    .ReadRT(ReadRT)
  );


  initial begin
    Clock = 0;
    forever #5 Clock = ~Clock;
  end


  initial begin

   #0 RS = 2'b00;
    RT = 2'b01;
    RD = 2'b01;
    WriteData = 16'h1234;
    RegWrite = 1; 
    
    
#10 RS = 2'b00;
    RT = 2'b01;
    RD = 2'b10;
    WriteData = 16'h1234;
    RegWrite = 1;

    
    #10; 
    $display("ReadRS: %h, ReadRT: %h", ReadRS, ReadRT);



  
    $finish;
  end

endmodule
