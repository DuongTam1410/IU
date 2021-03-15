module register_100bits (clk, in, out);
		input [99:0] in;
		input clk;
		output [99:0] out;
	  
		wire [99:0] in;
		reg [99:0] out;
		
	always @(posedge clk) begin
			out <= in;
		end
		endmodule