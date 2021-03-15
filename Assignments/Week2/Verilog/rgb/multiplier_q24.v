module multiplier_q24(clk, load, mux, out);
	 input clk;
	 input [1:0] mux;
	 output [24:0] out;
	 input load;
	 
	 wire [24:0] in_reg;
	 wire [24:0] out_reg32;
	 wire load;
	 wire [24:0] out;
	 wire [24:0] out_mux, out_mux2;
	 
  assign in_reg = (load) ?  1'b0 : out_mux;
  register_24bits reg24_inst (clk, in_reg, out_reg32);
  assign out_mux = (mux == 2'b01) ? {out_reg32<< 1'b1} : out_mux2;
  assign out_mux2 = (mux == 2'b10) ? {(out_reg32 << 1'b1) + 1'b1} : out_reg32;
  assign out = out_reg32;
  endmodule
  