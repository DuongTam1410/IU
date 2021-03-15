module mulFP (clk, i1, i2 , fn2_mul, muul, w, reset);
input clk;
input reset;

output [47:0] muul;
output w;
input [31:0] i1, i2;
output [31:0] fn2_mul;

wire w;
wire [31:0] FPmul;
wire[47:0] muul;
wire [22:0] tb;
wire [7:0] ex;
mul23bits2 m23bis_ins(clk, {1'b1,i1[22:0]}, {1'b1,i2[22:0]}, muul, w, reset);
ex_mul hhhhjkf(i1[30:23], i2[30:23], ex);
assign FPmul[31] = i1[31]^i2[31];
// kiem soat ex

pls pl_ins1t (muul[45:23], count);
wire [4:0] count;
wire [7:0] ex_temp1, ex_temp2;

assign FPmul[30:23] = (muul[47]) ? (ex+1'b1) : ex_temp1;
assign ex_temp1  = (muul[46]) ? ex : ex_temp2;
assign ex_temp2 =  ex - count;

//kiem soat F
wire [22:0] fp_temp1, fp_temp2;
wire [31:0] finnal_mul, fn2_mul, final_mul2, final_mul3;

assign FPmul[22:0] = (muul[47]) ? muul[46:24] : fp_temp1;
assign fp_temp1 = (muul[46]) ? muul[45:23] : fp_temp2;
assign fp_temp2 = (FPmul[30:23]== ex- count) ? (muul[45:23] << count) : 23'b0 ;
assign finnal_mul = ((i1 == 32'b0) | (i2 == 32'b0)) ? 1'b0 : FPmul;
assign final_mul2 = (i1 == 32'b00111111100000000000000000000000) ? i2 : final_mul3;
assign final_mul3 = (i2 == 32'b00111111100000000000000000000000) ? i1 : finnal_mul;

assign fn2_mul = (w) ? final_mul2 : 1'b0;

endmodule