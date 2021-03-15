module henxui (clk, x, out, done_mulXX, h, i2, out_tp, w, sum_2);
output w;
output [31:0] out_tp, i2;
wire [31:0] i2;
assign i2 = i3;
output [6:0] h;
output done_mulXX;
input clk;
input [31:0] x;
output [31:0] out;
wire [2:0] state1, state2;
wire [3:0] state3;
wire done_div, resetD, resetM1, resetM2, done_mul1, done_mulXX, donee, hihi, done_mul2;
wire [31:0] out_div, temp1, temp2, temp3, temp4, out_mul1, out_mul2, sum, in_temp3, out_add, out_cv, sum_2, mul45;
wire [22:0] div_hiha;
wire [31:0] i3;
wire [4:0] i;
wire [6:0] h;
wire donee1, donee2;
wire [31:0] out_tp;
sm_extra_1 aaassszzx (clk, 1'b0, x, state1, i3, temp2, h, donee1);
sm_extra_2 aaaaassdsdasd(clk, ~donee1, (h+1), state2, donee2, out_tp);

huynh kakakakaka (clk, i2, sum_2, done_mulXX);
wire w;
wire [31:0] muul;
output [31:0] sum_2;
mulFP oajaaj (clk, out_tp, sum_2 , out, muul, w, (~done_mulXX));
endmodule