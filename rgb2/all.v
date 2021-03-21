module all (clk, out,o_itf1, out_reg,om1,oc1, itf1);
output [7:0] itf1;
output [9-1:0] out_reg;
output [31:0] o_itf1, om1, oc1;
input clk;
output [31:0] out;

wire [9:0] out_reg;
register ca(out_reg, clk);

wire [7:0] itf1, itf2, itf3;
IMEMR  ssd (out_reg, itf1);
IMEMG sd(out_reg, itf2);
IMEMB  s(out_reg, itf3);

wire [31:0] o_itf1, o_itf2, o_itf3;
int_to_float sdsjas(itf1, o_itf1);
int_to_float sdsals(itf2, o_itf2);
int_to_float sdsags(itf3, o_itf3);

wire [31:0] om1, om2, om3;
mul_float ssdsxx (32'b00111110100110010001011010000111, o_itf1, om1);
mul_float ssdsxxa (32'b00111111000101100100010110100010, o_itf2, om2);
mul_float ssdsxsxa (32'b00111101111010010111100011010101, o_itf3, om3);

wire [31:0] oc1;
cong_32bit kskad (om1, om2, oc1);
cong_32bit aksdss (om3, oc1, out);

endmodule
