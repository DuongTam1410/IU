module additon (i1, i2, sum2);
input [31:0] i1, i2;
output [31:0] sum2;


wire [31:0] sum, sum2;
wire [24:0] out_sumf;
wire sign;
wire [7:0] ex;
wire [4:0] count;
wire [22:0] sum_am, sum_duong;
wire [7:0] sum_temp;
wire [22:0] sum22bitnho;
wire [22:0] sum22bitlon;
sum_first  ins_ssf (i1, i2, out_sumf, sign);
pls ins123(out_sumf[23:1], count);
test_ex awww(i1[30:23], i2[30:23], ex);
assign sum_duong[22:0] = (out_sumf[24]) ? (out_sumf[23:1]) : 5'd0;
assign sum_am[22:0] = (i1[30:23] == i2[30:23]) ? out_sumf[22:0] : (out_sumf[23:1] << (count));
assign sum[31] = sign;
assign sum[30:23] = (ex >= 127) ? ex : sum_temp;
assign sum_temp = (i1[30:23] == i2[30:23]) ? i1[30:23] :  (127 - count);
assign sum22bitnho[22:0] = (out_sumf[24]) ? sum_duong : sum_am;
assign sum22bitlon[22:0] = out_sumf[22:0];
assign sum[22:0] = (ex >= 127) ? sum22bitlon : sum22bitnho;
assign sum2 = ((~(i1[31]==i2[31])) & (i1[30:0]==i2[30:0])) ? 32'b0 : sum; 
endmodule