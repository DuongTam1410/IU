module ex_mul (i1, i2, ex);
input [7:0] i1, i2;
output [7:0] ex;

wire [7:0] ex;

assign ex = i1 + i2 - 8'd127;
endmodule