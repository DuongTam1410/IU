module test_exponent (i1, i2, o1, o2);

input [31:0] i1, i2;
output [23:0] o1, o2;

wire  [23:0] o1, o2, t1, t2;
wire bigger;
wire [7:0] out;

small_alu  sa_ins (i1[30:23], i2[30:23], bigger , out);

assign t1 = {1'b1,i1[22:0]};
assign t2 = {1'b1,i2[22:0]};

assign o1 = (bigger) ? t1 : (t1[23:0] >> out);
assign o2 = (~bigger) ? t2 : (t2[23:0] >> out);
endmodule
 
