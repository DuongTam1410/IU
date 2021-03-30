module fti ( in, out);
input [31:0] in;
output [7:0]out;

wire [7:0] temp;
wire [7:0] temp2;
wire [22:0] temp3;
wire [7:0] temp4;
assign temp = in[30:23] - 8'd127;
assign temp2 = 8'd23 - temp;
assign temp3 = in[22:0] >> temp2;
assign temp4 = 1'b1 << temp;
assign out = temp4 + temp3[7:0];
endmodule	