module register_24bits (clk, in, out);
		input [24:0] in;
		input clk;
		output [24:0] out;
	  
		wire [24:0] in;
		reg [24:0] out;
		
	always @(posedge clk) begin
			out <= in;
		end
		endmodule