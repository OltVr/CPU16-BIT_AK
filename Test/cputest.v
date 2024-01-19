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
for(i=0; i < 118; i=i+1) //30x nderro nga Clock 0 - 1, 30 tehe pozitive
begin
#10 Clock = 0;
#5 $display("==========PC===========");
  $display("Initial value of pc_initial = %0d", cpu16.DP.pc_initial);
  $display("==========Control Outputs===========");
  $display("RegDst = %0b", cpu16.RegDst);
  $display("Branch = %0b", cpu16.Branch);
  $display("MemRead = %0b", cpu16.MemRead);
  $display("MemWrite = %0b", cpu16.MemWrite);
  $display("RegWrite = %0b", cpu16.RegWrite);
  $display("MemToReg = %0b", cpu16.MemToReg);
  $display("ALUSrc = %0b", cpu16.ALUSrc);
  $display("ALUOp = %0b", cpu16.ALUOp);
  $display("==========DATAPATH===========");
  $display("==========Instruction Derivates===========");
  $display("Instruction = %0b", cpu16.DP.instruction);
  $display("OPCODE = %0b", cpu16.DP.instruction[15:12]);
  $display("RS = %0b", cpu16.DP.instruction[11:10]);
  $display("RT = %0b", cpu16.DP.instruction[9:8]);
  $display("RD = %0b", cpu16.DP.instruction[7:6]);
  $display("Shamt = %0b", cpu16.DP.instruction[5:2]);
  $display("Funct = %0b", cpu16.DP.instruction[1:0]);
  $display("Zgjerimi = %0b", cpu16.DP.Zgjerimi);
  $display("Shifted = %0b", cpu16.DP.shifter1beq);
  $display("Shifted dec = %0d", cpu16.DP.shifter1beq);
  $display("==========REGISTERFILE===========");
  $display("Dalja e multiplekserit per hyrje ne regjister (RT ose RD) = %0b", cpu16.DP.mux_regfile);
  $display("WriteData ne RegisterFile = %0b", cpu16.DP.writeData);
  $display("RD = %0d", cpu16.DP.RF.RD);
  $display("ReadD1 = %0b", cpu16.DP.readData1);
  $display("ReadD2 = %0b", cpu16.DP.readData2);
  $display("==========ALU PARTS===========");
  $display("Dalja nga mux per hyrjen B ne ALU = %0b", cpu16.DP.mux_ALU);
    $display("==========ALUCONTROL===========");
  $display("ALU Control = %0b", cpu16.DP.ALUCtrl);
   $display("==========ALU16===========");
  $display("ALU HyrjaA = %0b", cpu16.DP.ALU.A);
  $display("ALU HyrjaB = %0b", cpu16.DP.ALU.B);
  $display("ALU BNegate = %0b", cpu16.DP.ALU.BNegate);
  $display("ALU Op(3bitat e pare te ALU Control) = %0b", cpu16.DP.ALU.Op);
   $display("==========ALU1===========");
   $display("ALU1 HyrjaA = %0b", cpu16.DP.ALU.ALU2.A);
   $display("ALU1 HyrjaB = %0b", cpu16.DP.ALU.ALU2.B);
    $display("==========Mux mbrenda ALU1===========");
   $display("Dhe = %0b", cpu16.DP.ALU.ALU2.MuxiKryesor.Hyrja0);
   $display("Ose = %0b", cpu16.DP.ALU.ALU2.MuxiKryesor.Hyrja1);
   $display("Xor = %0b", cpu16.DP.ALU.ALU2.MuxiKryesor.Hyrja2);
   $display("Mbledhje = %0b", cpu16.DP.ALU.ALU2.MuxiKryesor.Hyrja3);
   $display("Sinjali = %0b", cpu16.DP.ALU.ALU2.MuxiKryesor.S);
   $display("Dalja = %0b", cpu16.DP.ALU.ALU2.MuxiKryesor.Dalja);
  $display("==========MUX mbrenda ALU16===========");
   $display("Shift Right e muxP = %0b", cpu16.DP.ALU.muxPerfundimtar.ShiftR);
   $display("Shift Left  = %0b", cpu16.DP.ALU.muxPerfundimtar.ShiftL);
   $display("Result e muxP  = %16b", cpu16.DP.ALU.muxPerfundimtar.Result);
   $display("Less e muxP  = %0b", cpu16.DP.ALU.muxPerfundimtar.Less);
   $display("Sinjali = %0b", cpu16.DP.ALU.muxPerfundimtar.S);
   $display("Dalja  = %0b", cpu16.DP.ALU.muxPerfundimtar.Dalja);
   $display("==========Daljet e ALU16===========");
  $display("ALU Zero = %0b", cpu16.DP.zerof);
  $display("ALU Out = %0b", cpu16.DP.ALU_Out);
  $display("ALU Overflow = %0b", cpu16.DP.overflow);
  $display("ALU Carryout = %0b", cpu16.DP.carryout);
   $display("==========DATAMEMORY===========");
  $display("ReadData = %0b", cpu16.DP.DM.ReadData);
  $display("Addresa = %0b", cpu16.DP.DM.Address);
  $display("PC = %0b", cpu16.DP.DM.PC);
  $display("AddressPC = %0b", cpu16.DP.DM.AddressPC);
  $display("Dalja nga mux i dataMem qe shkon ne write data te regjistrit (ALUOut ose ReadData) = %0b", cpu16.DP.writeData);
   $display("==========BEQ===========");
  $display("Sinjali i MUXBranch = %0b", cpu16.DP.andMuxBranch);
  $display("Addresa e Beq = %0d", cpu16.DP.beqAddress); // testo per linjen e beqit
   $display("==========PC e Ardhshme===========");
  $display("Addresa perfundimtare e PC_next = %0d", cpu16.DP.pc_next);
  $display("");
  $display("");
#10 Clock = 1;
end
 
end



CPU cpu16(Clock);
endmodule
