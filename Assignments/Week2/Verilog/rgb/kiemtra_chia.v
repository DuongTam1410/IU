module kiemtra_chia (clk, reset, out);
input clk, reset;
wire [31:0] r,d;
output [31:0] out;
assign r = 32'b01000001010101100000000000000000;
assign d = 32'b01000001000100000000000000000000;
wire [31:0] out, outt;
wire donee;
chia ttt(clk, r, d, outt, donee, reset);
assign out = outt;
endmodule