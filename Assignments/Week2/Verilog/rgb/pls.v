module pls (sum, count);


input [22:0] sum;
output [4:0] count;

reg [4:0] count;
integer i;

always @(sum) begin
for (i = 0; i < 22; i = i +1)
  if (sum[i])
     count = 23 - i;
end
endmodule