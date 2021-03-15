module mul (clk, cand, w, er, multi, pro_test, out_cand, out_er, w2, out_ct, multi_temp, reset, load, state_out);
    output load;
	 output [1:0] state_out;
	 wire [1:0] state_out;
	 assign state_out = state;
      input reset;
      input clk;
      output [2:0] out_ct;
		input [31:0] cand, er;
		output [63:0] multi, pro_test, out_cand;
		output [31:0] out_er;
		output w, w2;
		
		wire load;
		reg [63:0] pro_test;
		wire [2:0] out_ct;
		wire [31:0] out_er;
		wire [63:0] out_cand;
		wire [63:0] multi;
		wire w, w2;
reg [1:0] state, nstate;		
 always @(state, w, reset) begin
    case (state)
	2'b0:
     nstate = 2'b1;
	 2'b1:
	  if(w == 0)
	  nstate = 2'b1;
	 else 
	   nstate = 2'd2;
	2'd2:
	if (reset)
	nstate = 2'b0;
	else
	nstate = 2'd2;
	default nstate = 2'b0;
	endcase
end
always @ (posedge clk) begin
    state = nstate;
	 
	 end
assign load = (state == 2'b0) ? 1'b1 : 1'b0; 
multiplicand md_inst (clk, load, cand, out_ct[2], out_cand);
multiplier mr_inst (clk, load, er, out_ct[1], out_er);
control_test22 cwt (clk, out_er, w, out_ct, reset);
assign w2 = w & (~load);
wire [63:0] in_pt;
always @ (posedge clk) begin
    if(reset == 1'b0)
	  pro_test = in_pt;
	  else
	  pro_test = 63'b0;
	  end
	  assign in_pt = (out_ct[0])?(pro_test + out_cand) : pro_test;

output [63:0] multi_temp;
wire [63:0] multi_temp;
assign multi_temp = (w2) ? pro_test : 64'b0;
assign multi = (reset) ? 63'b0 : multi_hihi;
wire [63:0] multi_hihi;
assign multi_hihi = (er[0]) ? (multi_temp + cand) : (multi_temp);

endmodule

 