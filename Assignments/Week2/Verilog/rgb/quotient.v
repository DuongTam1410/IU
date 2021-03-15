module quotient(clk, load, in, shiftL, out);
    input [31:0] in;
	 output [31:0] out;
	 input shiftL;
	 input clk;
	 input load;
	 
	 wire [31:0] in;
	 wire [31:0] in_reg;
	 wire [31:0] out;
	 wire [31:0] out_reg32;
	 wire load;
	 
  assign in_reg = (load) ? in : out;  
  register_32bits reg32_inst (clk, in_reg, out_reg32);
  assign  out = out_reg32 << shiftL; 
  endmodule
  