module register_32bits (clk, in, out);
		input [31:0] in;
		input clk;
		output [31:0] out;
	  
		wire [31:0] in;
		reg [31:0] out;
		
	always @(posedge clk) begin
			out <= in;
		end
		endmodule