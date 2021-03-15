module multiplicand_d100 (clk, load, in, shiftL, out);
    input [99:0] in;
	 output [99:0] out;
	 input shiftL;
	 input clk;
	 input load;
	 
	 wire [99:0] in;
	 wire [99:0] in_reg;
	 wire [99:0] out;
	 wire [99:0] out_reg64;
	 wire load;
	 
  assign in_reg = (load) ? in : out;  
  register_100bits reg100_inst (clk, in_reg, out_reg64);
  assign  out = out_reg64 >> shiftL; 
  endmodule
  