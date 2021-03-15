module part2_control (i1, i2, sumAll, F, ex, ex_temp2);

output [24:0] F;
output [7:0] ex, ex_temp2;
input [31:0] i1, i2;
output [31:0] sumAll;

wire [31:0] sum, sumAll;


wire [24:0] F;
wire sign;
wire [4:0] count;
part2_ExAndF p2eaf_ins (i1, i2, F, sign, count);

wire [7:0] ex;
test_ex tx_instt (i1[30:23], i2[30:23], ex);
//kiem soat exponent
wire [7:0] ex_temp1, ex_temp2;

assign sum[30:23] = (F[24]) ? (ex + 1'b1) : ex_temp1;
assign ex_temp1 = (F[23]) ? ex : ex_temp2;
assign ex_temp2 = ex - count;

//kiem soat F
wire [22:0] sum_temp1, sum_temp2;


assign sum[22:0] = (sum[30:23] == (ex + 1'b1)) ? F[23:1] : sum_temp1;
assign sum_temp1 = (sum[30:23] == ex) ? F[22:0] : sum_temp2;
assign sum_temp2 = (sum[30:23]== ex- count) ? (F[22:0] << count) : 23'b0 ;

//kiem soat all
assign sumAll = (F == 1'b0) ? 32'b0 : sum;
assign sum[31] = sign;


endmodule   