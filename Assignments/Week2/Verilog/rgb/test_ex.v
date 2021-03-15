module test_ex (i1, i2, ex);
input [7:0] i1, i2;

output [7:0] ex;

wire [7:0] ex;

assign ex = (i1 > i2) ? i1 : i2;
endmodule