module converter (i, o, out_tb, count);
output [3:0] out_tb;
output [2:0] count;
input [4:0] i;
output [31:0] o;
wire [2:0] count;

wire [3:0] out_tb;
take_bits2 ohkig (i,out_tb, count);
assign o[22:19] = out_tb;
assign o[30:23] = 8'd127 + count;
endmodule