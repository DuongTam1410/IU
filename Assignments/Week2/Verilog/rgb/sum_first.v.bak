module sum_first (i1, i2, sum, sign2);

input [31:0] i1, i2;
output [24:0] sum;
output sign2;
wire [24:0] sum, diff;
wire sign, sign2;
wire [23:0] o1, o2;

assign sign = i1[31]^i2[31];
assign sum = (sign) ? diff : (o1 + o2);
assign sign2 = (o1 > o2) ? i1[31] : i2[31];
assign diff = (o1 > o2) ? (o1 - o2) : (o2 - o1);
test_exponent inst12 (i1, i2, o1, o2);

endmodule