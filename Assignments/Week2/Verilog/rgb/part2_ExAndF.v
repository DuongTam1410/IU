module part2_ExAndF (i1, i2, F, sign, count);
input [31:0] i1, i2;
output [24:0] F;
output sign;
output [4:0] count;

wire [24:0] F;
wire sign;


sum_first sf_insp2 (i1, i2, F, sign);
pls pls_inss (F[22:0], count);

endmodule