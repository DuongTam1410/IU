module all3 (ivl,clk,rrr,ggg,bbb, ovl, out2, out,r);
output [31:0] r;
output [31:0] out;
input [7:0] ggg, rrr,bbb;
input ivl, clk, ovl;
output [7:0] out2;
wire [31:0] r,g,b;
wire [31:0] out;
wire [7:0] gg,rr,bb;
wire [7:0] ghi;
itf itfins1(rr,r);
itf itfins2 (gg,g);
itf itfins3 (bb,b);

reg8 lsl (ivl, clk,rr,rrr);
reg8 ls11 (ivl, clk, gg,ggg);
reg8 lsl22 (ivl, clk, bb,bbb);


wire [31:0] om1, om2, om3;
mul_float ssdsxx (32'b00111110100110010001011010000111, r, om1);
mul_float ssdsxxa (32'b00111111000101100100010110100010, g, om2);
mul_float ssdsxsxa (32'b00111101111010010111100011010101, b, om3);

wire [31:0] oc1;
cong_32bit kskad (om1, om2, oc1);
cong_32bit aksdss (om3, oc1, out);
fti asssasssww (out, ghi);
reg8 oks (ovl, clk, out2,ghi);


endmodule
