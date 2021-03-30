module itf (in, out);
input [7:0] in;
output [31:0] out;

wire [7:0] temp1, temp2, temp3, temp4, temp5, temp6, temp7;
assign out[30:23] = (in[7]) ? 8'd134 : temp2;
assign temp2 = (in[6]) ? 8'd133 : temp3;
assign temp3 = (in[5]) ? 8'd132 : temp4;
assign temp4 = (in[4]) ? 8'd131 : temp5;
assign temp5 = (in[3]) ? 8'd130 : temp6;
assign temp6 = (in[2]) ? 8'd129 : temp7;
assign temp7 = (in[1]) ? 8'd128 : temp1;
assign temp1 = (in[0]) ? 8'd127 : 8'd0;
wire [6:0]  tem2, tem3, tem4, tem5, tem6, tem7;
assign out[22:16] = (in[7]) ? in[6:0] : tem2;
assign tem2 = (in[6]) ? {in[5:0],1'b0} : tem3;
assign tem3 = (in[5]) ? {in[4:0],2'b0} : tem4;
assign tem4 = (in[4]) ? {in[3:0],3'b0} : tem5;
assign tem5 = (in[3]) ? {in[2:0],4'b0} : tem6;
assign tem6 = (in[2]) ? {in[1:0],5'b0} : tem7;
assign tem7 = (in[1]) ? {in[0],6'd0} : 7'd0;
assign out[15:0] = 16'b0;
assign out[31] = 1'b0;
endmodule