module register_64bits (clk, in, out);
		input [63:0] in;
		input clk;
		output [63:0] out;
	  
		wire [63:0] in;
		reg [63:0] out;
		
	always @(posedge clk) begin
			out <= in;
		end
		endmodule