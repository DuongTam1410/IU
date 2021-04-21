module Dlatch_user(clk, D, Q, Qn);
input clk;
input D;
output Q, Qn;

wire D, Dn, clk, temp1, nand1, nand2, nand3, nand4;
wire Q, Qn;

not not_inss(Dn, D);
nand nand_ins(nand1, D, clk);
nand nand_ins1(nand2, Dn, clk);
nand nand_inst2(Q, Qn, nand1);
nand nand_inst3(Qn, Q, nand2);

endmodule
