module all ( i1, i2, o);
input [63:0] i1;
input [31:0] i2;
output [31:0] o;

wire [31:0] o;
assign o = i1 / i2;

endmodule 