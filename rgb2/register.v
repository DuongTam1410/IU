module register ( out, clk);
output [9:0] out;
input clk;
reg [9:0] out;

always @(posedge clk)
begin
      out <= out+1'b1;
end
endmodule