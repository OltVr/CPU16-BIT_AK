`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/13/2022 12:12:49 PM
// Design Name: 
// Module Name: cputest
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


module cputest();


reg Clock;

integer i;
initial
begin
for(i=0; i < 30; i=i+1) //30x nderro nga Clock 0 - 1, 30 tehe pozitive
begin
#10 Clock = 0;
#5 $display("Initial value of pc_initial = %0d", cpu16.DP.pc_initial);
  $display("RegDst = %0b", cpu16.RegDst);
  $display("Branch = %0b", cpu16.Branch);
  $display("MemRead = %0b", cpu16.MemRead);
  $display("MemWrite = %0b", cpu16.MemWrite);
  $display("RegWrite = %0b", cpu16.RegWrite);
  $display("MemToReg = %0b", cpu16.MemToReg);
  $display("ALUSrc = %0b", cpu16.ALUSrc);
  $display("ALUOp = %0b", cpu16.ALUOp);
  $display("Instruction = %0b", cpu16.DP.instruction);
  $display("Shifted = %0b", cpu16.DP.shifter1beq);
  $display("Shifted dec = %0d", cpu16.DP.shifter1beq);
  $display("Dalja e multiplekserit per hyrje ne regjister = %0b", cpu16.DP.mux_regfile);
  $display("Zgjerimi = %0b", cpu16.DP.Zgjerimi);
  $display("WriteData ne RegisterFile = %0b", cpu16.DP.writeData);
  $display("RD ne RF = %0d", cpu16.DP.RF.RD);
  $display("ReadD1 = %0b", cpu16.DP.readData1);
  $display("ReadD2 = %0b", cpu16.DP.readData2);
  $display("Dalja nga mux per hyrjen B ne ALU = %0b", cpu16.DP.mux_ALU);
  $display("ALU Control = %0b", cpu16.DP.ALUCtrl);
  $display("ALU HyrjaA = %0b", cpu16.DP.ALU.A);
  $display("ALU HyrjaB = %0b", cpu16.DP.ALU.B);
  $display("ALU BNegate = %0b", cpu16.DP.ALU.BNegate);
  $display("ALU Op(3bitat e pare te ALU Control) = %0b", cpu16.DP.ALU.Op);
  $display("ALU Zero = %0b", cpu16.DP.zerof);
  $display("ALU Out = %0b", cpu16.DP.ALU_Out);
  $display("ALU Overflow = %0b", cpu16.DP.overflow);
  $display("ALU Carryout = %0b", cpu16.DP.carryout);
  $display("DM ReadData = %0b", cpu16.DP.DM.ReadData);
  $display("Dalja nga mux i dataMem qe shkon ne write data te regjistrit = %0b", cpu16.DP.memToMux);
  $display("Sinjali i MUXBranch = %0b", cpu16.DP.andMuxBranch);
  $display("Addresa e Beq = %0d", cpu16.DP.beqAddress); // testo per linjen e beqit
  $display("Addresa perfundimtare e PC_next = %0d", cpu16.DP.pc_next);
#10 Clock = 1;
end
 
end



CPU cpu16(Clock);
endmodule
