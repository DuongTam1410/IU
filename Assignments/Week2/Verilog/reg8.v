module reg8(inv, clk,out, in);
input [7:0] in;
output [7:0] out;
input inv, clk;
wire clk2;
reg [7:0] out;
assign clk2 = clk &  inv;
always  @(posedge clk2) begin
   out <= in;
end
endmodule
