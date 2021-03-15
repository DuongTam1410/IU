module mul23bits (clk, load, cand, er, multi, w2);
      input clk;
		input load;
		input [31:0] cand, er;
		output [63:0] multi;

		output  w2;
		
		reg [63:0] pro_test;
		wire [2:0] out_ct;
		wire [31:0] out_er;
		wire [63:0] out_cand;
		wire [63:0] multi;
		wire w, w2;
		
 
multiplicand md_inst (clk, load, cand, out_ct[2], out_cand);
multiplier mr_inst (clk, load, er, out_ct[1], out_er);
control_test22 cwt (clk, out_er, w, out_ct);
assign w2 = w & (load==0);
always @ (posedge clk)
   if (out_ct[0])
	   pro_test = pro_test + out_cand;
	else
	   pro_test = pro_test;

assign multi = (w2) ? pro_test : 64'b0;

endmodule

 
 
 