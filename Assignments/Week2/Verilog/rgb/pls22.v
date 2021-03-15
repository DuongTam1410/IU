module pls22 (sb, count);


input [22:0] sb;
output [31:0] count;

reg [31:0] count;
integer i;

always @(i) begin
for (i = 0; i < 20; i = i + 1)
     count = i;
end
endmodule