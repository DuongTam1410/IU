module kieu (clk, x, state, done_div,out_div, resetD, temp1, i, temp2, done_mul1, out_mul1, resetM1, sum, inputt1, temp3, resetM2, done_mul2, out_mul2, in_temp3, temp4, out_add, hihi, out_cv, div_hiha, sum_2, done_mulXX, mul45);
input [31:0] inputt1;
input clk;
output [3:0] state;
input [31:0] x;
output [31:0] sum;
//load i
reg [4:0] i;
wire [4:0] in_i;
wire [4:0] temp_i;
output [4:0] i;
always @(posedge clk) begin
    i = in_i;
end
assign in_i = (state == 4'b1) ? 5'd21 : temp_i;
assign temp_i = (state == 4'd2) ? (i -1'b1) : i;
//load sum;
wire [31:0] sum;

assign sum = (i == 5'd20) ? 32'b00111111100000000000000000000000 : temp4;
wire done_mul1,done_mul2, mul2, resetM1, resetM2;

state_machine222 sdsads(clk,i, state, done_div, done_mul1, done_mul2,resetD, resetM1, resetM2);

//converter
wire [31:0] out_cv;
wire [2:0] count;
wire [3:0] out_tb;
converter jjjsdggf (i, out_cv, out_tb, count);
output [31:0] out_cv;

//div


output done_div;
output [31:0] temp1;
output resetD;
reg [31:0] temp1;
wire done_div;
wire resetD;
wire [31:0] out_div;
output [31:0] out_div;
wire [31:0] in_temp1;
assign in_temp1 = (done_div) ? out_div : temp1;
always @(posedge clk) begin
 temp1 = in_temp1;
end
 output [22:0] div_hiha;
 wire [22:0] div_hiha;
chia chshs(clk, 32'b00111111100000000000000000000000, out_cv, out_div, done_div, resetD, div_hiha);

//mul1
wire [31:0] out_mul1;
wire [31:0] in_temp2;
reg [31:0] temp2;
assign in_temp2 = ((done_mul1 == 1) & (state != 5'd6)) ? out_mul1 : temp2;
always @(posedge clk) begin
 temp2 = in_temp2;
end
wire [47:0] muul;

mulFP mlaksssk(clk, sum, temp1, out_mul1, muul, done_mul1, resetM1); //clk, i1, i2 , fn2_mul, muul, w, reset
output done_mul1;
output [31:0] out_mul1;

output resetM1;
output [31:0] temp2; 

//mul2
wire [47:0] muul2;
mulFP kkakakak (clk, x, temp2, out_mul2, muul2, done_mul2, resetM2);
wire [31:0] out_mul2;
output [31:0] temp3;
reg [31:0] temp3;
always @(posedge clk) begin
  temp3 = in_temp3;
  end
  assign in_temp3 = ((done_mul2 == 1) & (state != 5'd7)) ? out_mul2 : temp3;
output resetM2;
output done_mul2;
output [31:0] in_temp3;
output [31:0] out_mul2;

//add
reg [31:0] temp4;
wire [31:0] out_add, in_temp4;
part3_addition pppp(32'b00111111100000000000000000000000,temp3, out_add);
assign in_temp4 = (state == 4'd7) ? out_add : temp4;
output [31:0] out_add;
output [31:0] temp4;
always @(posedge clk) begin
temp4 = in_temp4;
end
//done
output hihi;
wire hihi;
assign hihi = (state == 5'd8) ? 1'b1 : 1'b0;
//á/á/a
part3_addition ppaaapp(32'b00111111100000000000000000000000,mul45, sum_2);
wire [31:0] sum_2;
reg [31:0] sum_34;
wire [31:0] in_sum34;
wire [31:0] mul45;
wire done_mulXX;
assign in_sum34 = (hihi == 1'b0) ? sum : sum_34;
output done_mulXX;
output [31:0] mul45;
mulFP bvcc(clk, x, in_sum34, mul45, muul2, done_mulXX, (~hihi));
always @(posedge clk) begin 
   sum_34 <= in_sum34;  
	end
output [31:0] sum_2;
 
endmodule