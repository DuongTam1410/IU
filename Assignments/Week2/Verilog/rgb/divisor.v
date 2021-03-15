module divisor (clk, load, in, shiftR, out);
    input [63:0] in;
	 output [63:0] out;
	 input shiftR;
	 input clk;
	 input load;
	 
	 wire [63:0] in;
	 wire [63:0] in_reg;
	 wire [63:0] out;
	 wire [63:0] out_reg64;
	 wire load;
	 
  assign in_reg = (load) ? {in} : out;  
  register_64bits reg64_inst (clk, in_reg, out_reg64);
  assign  out = out_reg64 >> shiftR; 
  endmodule
  