module all3 (r,g,b, out);
input [31:0] g, r,b;
output [31:0] out;





wire [31:0] om1, om2, om3;
mul_float ssdsxx (32'b00111110100110010001011010000111, r, om1);
mul_float ssdsxxa (32'b00111111000101100100010110100010, g, om2);
mul_float ssdsxsxa (32'b00111101111010010111100011010101, b, om3);

wire [31:0] oc1;
cong_32bit kskad (om1, om2, oc1);
cong_32bit aksdss (om3, oc1, out);

endmodule
