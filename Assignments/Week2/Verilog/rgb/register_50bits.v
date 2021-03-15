module register_50bits (clk, in, out);
		input [49:0] in;
		input clk;
		output [49:0] out;
	  
		wire [49:0] in;
		reg [49:0] out;
		
	always @(posedge clk) begin
			out <= in;
		end
		endmodule