module chia (clk, i1, i2, out4, donee, reset, out_temp);


output [22:0] out_temp;

input clk;
input [31:0] i1, i2;
output donee;
input reset;
wire [49:0] out_quotient;
ct_div_test22  jjjjsas(clk, {1'b1,i1[22:0]}, {1'b1,i2[22:0]}, out_quotient, donee, reset, state);
wire [2:0] state;

//ex
wire [22:0] out_temp;
wire [7:0] out_temp1, in_temp2;
reg [7:0] out_temp2;
assign in_temp2 = ((state == 3'd7) & (reset == 1'b0)) ? out_tempn : out_temp2;
wire [7:0] out_tempn = (out[22:19] == 1'b0) ? (out_temp1) : out_temp1;

always @(posedge clk) begin
    out_temp2 =  in_temp2;
	 end

assign out[30:23]= out_temp2;
assign out_temp1 = (i1[30:23] > i2[30:23]) ? (7'd127 - (i1[30:23] - i2[30:23]) - 1'b1 ) : (7'd127 - (i2[30:23] - i1[30:23]) - 1'b1); 
assign out[31] = i1[31]^i2[31];
assign out_temp = out_quotient[49:27];
assign out[22:0] = (donee) ? out_temp : 23'b0;
output [31:0] out4;
wire [31:0] out2;
wire [31:0] out;
wire [31:0] out3, out4, out5, out6, out7;

assign out3 = ((i1 == i2) & (state == 3'd7)) ? 31'b00111111100000000000000000000000 : out;
assign out4 = (i2 == 32'b01000000000000000000000000000000) ? 32'b00111111000000000000000000000000 : out5;
assign out5 = (i2 == 32'b01000000100000000000000000000000) ? 32'b00111110100000000000000000000000 : out6;
assign out6 = (i2 == 32'b01000001000000000000000000000000) ? 32'b00111110000000000000000000000000 : out7;
assign out7 = (i2 == 32'b01000001100000000000000000000000) ? 32'b00111101100000000000000000000000 : out3;

endmodule