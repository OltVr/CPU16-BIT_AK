`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/16/2024 07:45:33 PM
// Design Name: 
// Module Name: cpu16.DP
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


module DPT();

reg Clock;
reg RegDst, Branch, MemRead, MemWrite, RegWrite, MemToReg, ALUSrc;
reg [1:0] ALUOp;
wire [3:0] opcode;


DataPath DPT (
    Clock,
    RegDst,
    Branch,
    MemRead,
    MemWrite,
    RegWrite,
    MemToReg,
    ALUSrc,
    ALUOp,
    opcode
  );
  
  //instruction[11:10], instruction[9:8], mux_regfile, writeData, RegWrite,
  
  initial
  begin
  #0 Clock=1'b0; RegDst=1'b1;Branch=1'b0;MemRead=1'b0;MemWrite=1'b0;RegWrite=1'b1;MemToReg=1'b0;ALUSrc=1'b0;ALUOp=10;
  #5 $display("Initial value of pc_initial = %0d", DPT.pc_initial);
  $display("PC2 = %0d", DPT.pc2);
  $display("Instruction = %0b", DPT.instruction);
  $display("Shifted = %0b", DPT.shifter1beq);
  $display("Shifted dec = %0d", DPT.shifter1beq);
  $display("MuxRegFile = %0b", DPT.mux_regfile);
  $display("Zgjerimi = %0b", DPT.Zgjerimi);
  $display("WriteData = %0b", DPT.writeData);
  $display("RD ne RF = %0b", DPT.RF.RD);
  $display("ReadD1 = %0b", DPT.readData1);
  $display("ReadD2 = %0b", DPT.readData2);
  $display("Mux ALU = %0b", DPT.mux_ALU);
  $display("ALU Control = %0b", DPT.ALUCtrl);
  $display("ALU Hyrja1 = %0b", DPT.ALU.A);
  $display("ALU Hyrja2 = %0b", DPT.ALU.B);
  $display("ALU BNegate = %0b", DPT.ALU.BNegate);
  $display("ALU Op = %0b", DPT.ALU.Op);
  $display("ALU0 A = %0b", DPT.ALU.ALU0.A);
  $display("ALU0 B = %0b", DPT.ALU.ALU0.B);
  $display("ALU0 CIN = %0b", DPT.ALU.ALU0.CIN);
  $display("ALU0 BInvert = %0b", DPT.ALU.ALU0.BInvert);
  $display("ALU0 mB = %0b", DPT.ALU.ALU0.mB);
  $display("ALU0 mbledhesi = %0b", DPT.ALU.ALU0.mb_teli);
  $display("Mux Hyrja0 = %0b", DPT.ALU.ALU0.MuxiKryesor.Hyrja0);
  $display("Mux Hyrja1 = %0b", DPT.ALU.ALU0.MuxiKryesor.Hyrja1);
  $display("Mux Hyrja2 = %0b", DPT.ALU.ALU0.MuxiKryesor.Hyrja2);
  $display("Mux Hyrja3 = %0b", DPT.ALU.ALU0.MuxiKryesor.Hyrja3);
  $display("Mux Hyrja4 = %0b", DPT.ALU.ALU0.MuxiKryesor.Hyrja3);
  $display("Mux Sinjali = %0b", DPT.ALU.ALU0.MuxiKryesor.S);
  $display("ALU0 Result = %0b", DPT.ALU.ALU0.Result);
  $display("ALU0 COUT = %0b", DPT.ALU.ALU0.CarryOut);
  $display("ALU Zero = %0b", DPT.zerof);
  $display("ALU Out = %0b", DPT.ALU_Out);
  $display("ALU Overflow = %0b", DPT.overflow);
  $display("ALU Carryout = %0b", DPT.carryout);
  $display("Mux per Datamem = %0b", DPT.memToMux);
  $display("E dhena qe shkruhet ne memorie = %0b", DPT.writeData);
  $display("Sinjali i MUXBranch = %0b", DPT.andMuxBranch);
  $display("Addresa e Beq = %0d", DPT.beqAddress); // testo per linjen e beqit
  $display("Addresa perfundimtare e PC = %0b", DPT.pcbeq);
  $display("Addresa perfundimtare e PC_next = %0d", DPT.pc_next);
  #10 Clock=1'b1;
//#5 $display("Initial value of pc_initial = %0d", DPT.pc_initial);
//  $display("PC2 = %0d", DPT.pc2);
//  $display("Instruction = %0b", DPT.instruction);
//  $display("Shifted = %0b", DPT.shifter1beq);
//  $display("Shifted dec = %0d", DPT.shifter1beq);
//  $display("MuxRegFile = %0b", DPT.mux_regfile);
//  $display("Zgjerimi = %0b", DPT.Zgjerimi);
//  $display("WriteData = %0b", DPT.writeData);
//  $display("ReadD1 = %0b", DPT.readData1);
//  $display("ReadD2 = %0b", DPT.readData2);
//  $display("Mux ALU = %0b", DPT.mux_ALU);
//  $display("ALU Control = %0b", DPT.ALUCtrl);
//  $display("ALU Zero = %0b", DPT.zerof);
//  $display("ALU Out = %0b", DPT.ALU_Out);
//  $display("ALU Overflow = %0b", DPT.overflow);
//  $display("ALU Carryout = %0b", DPT.carryout);
//  $display("Mux per Datamem = %0b", DPT.memToMux);
//  $display("E dhena qe shkruhet ne memorie = %0b", DPT.writeData);
//  $display("Sinjali i MUXBranch = %0b", DPT.andMuxBranch);
//  $display("Addresa e Beq = %0d", DPT.beqAddress); // testo per linjen e beqit
//  $display("Addresa perfundimtare e PC = %0b", DPT.pcbeq);
//  $display("Addresa perfundimtare e PC_next = %0d", DPT.pc_next);  
 end
   
  
endmodule
