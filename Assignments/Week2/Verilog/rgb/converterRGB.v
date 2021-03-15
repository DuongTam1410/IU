module converterRGB (clk, R, G, B, Cr, Cb, Y, nhan1, nhan2, nhan3, done1, done2, done3, done4, tru1, nhan4);
output [31:0] tru1, nhan4;
output done1, done2, done3, done4;
output [31:0] nhan1, nhan2, nhan3;
input clk;
input [31:0] R, G, B;
output [31:0] Y, Cr, Cb;

wire [47:0] muul;
wire done1;
wire [31:0] nhan1;
mulFP hfj (clk, R, 32'b00111110100110010001011010000111 , nhan1, muul, done1, 1'b0);

wire [31:0] nhan2;
wire [47:0] muul2;
wire done2;
mulFP hfj1 (clk, G, 32'b00111111000101100100010110100010 , nhan2, muul2, done2, 1'b0);

wire [31:0] nhan3;
wire [47:0] muul3;
wire done3;
mulFP hfj2 (clk, B, 32'b00111101111010010111100011010101 , nhan3, muul3, done3, 1'b0);

wire [31:0] cong1, cong1b;
cong_32bit c32b1 (nhan1,nhan2,cong1);

assign cong1b = (done1&done2) ? cong1 : 32'b0;

wire [31:0] cong2;
cong_32bit c32b2 (cong1b,nhan3,cong2);
assign Y = (done1&done2&done3) ? cong2 : 32'b0;

cong_32bit cc32b (R,{1'b1,Y[30:0]}, tru1);
wire [31:0] tru1;
mulFP kakas (clk, tru1, 32'b00111111001101101000011100101011, nhan4, muul4, done4, ~(done1&done2&done3));
wire [31:0] nhan4;
wire [47:0] muul4;
wire done4;
cong_32bit uut (nhan4,32'b01000011000000000000000000000000, congcr);
wire [31:0] congcr;
assign Cr = (done4) ? congcr : 32'b0;

cong_32bit cc32bas (B,{1'b1,Y[30:0]}, tru2);
wire [31:0] tru2;
mulFP kakasaa (clk, tru2, 32'b00111111000100000110001001001110, nhan5, muul5, done5, ~(done1&done2&done3));
wire [31:0] nhan5;
wire [47:0] muul5;
wire done5;
cong_32bit uuta (nhan5,32'b01000011000000000000000000000000, congcb);
wire [31:0] congcb;
assign Cb = (done5) ? congcb : 32'b0;
endmodule