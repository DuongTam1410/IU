module take_bits2 (in, out, count);
input [4:0] in;
output [3:0] out;
output [2:0] count;
wire [4:0] in;
wire[2:0] count;

wire[3:0] temp1, temp2, temp3;
assign out = (in[4]) ? in[3:0] : temp1;
assign temp1[3:0] = (in[3]) ? {in[2:0],1'b0} : temp2;
assign temp2[3:0] = (in[2]) ? {in[1:0],2'b0} : temp3;
assign temp3[3:0] = (in[1]) ? {in[0],3'b0} : 1'b0;

wire [2:0] t1, t2, t3;
assign count = (in[4]) ? 3'd4 : t1;
assign t1 = (in[3]) ? 3'd3 : t2;
assign t2 = (in[2]) ? 3'd2 : t3;
assign t3 = (in[1]) ? 3'd1 : 3'd0;
endmodule