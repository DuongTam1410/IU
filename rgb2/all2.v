module all2 (clk,r,g,b, out);
input [31:0] g, r,b;
input clk;
output [31:0] out;


wire [31:0] o_itf1, o_itf2, o_itf3;
int_to_float sdsjas(r, o_itf1);
int_to_float sdsals(g, o_itf2);
int_to_float sdsags(b, o_itf3);

wire [31:0] om1, om2, om3;
mul_float ssdsxx (32'b00111110100110010001011010000111, o_itf1, om1);
mul_float ssdsxxa (32'b00111111000101100100010110100010, o_itf2, om2);
mul_float ssdsxsxa (32'b00111101111010010111100011010101, o_itf3, om3);

wire [31:0] oc1;
cong_32bit kskad (om1, om2, oc1);
cong_32bit aksdss (om3, oc1, out);

endmodule
