module control_test22 (clk, multiplier, w, out, reset2);

  input reset2;
 
  input  [31:0] multiplier;
  output [2:0] out;

  input clk;
  output w;
  
  wire w;
  reg [2:0] out;
  reg [2:0] state;
  reg [2:0] nstate;

  
  parameter reset  = 3'b0;
  parameter add    = 3'd1;
  parameter no_add = 3'd2;
  parameter sl     = 3'd3;
  parameter sr     = 3'd4;
  parameter write  = 3'd5;

  always @ (state or multiplier[0] or w) begin
      case (state)
	reset:
      if(multiplier[0] == 1'b1)
	         nstate = add;
			else
		      nstate = no_add;
   add:
     nstate =  sl;
	no_add:
  	  nstate = sl;
	sl:
	  nstate = sr;
	sr:
	if(w == 1)
	nstate = write;
	else
	  nstate = reset;
	 write:
	 nstate = write;
	default nstate = reset;
	endcase
	end
	
	always @(posedge clk or posedge reset2) begin
	if (reset2)
	state <= reset;
	else
	  state <= nstate;
	end
	
	always @ (state or multiplier[0]) begin
      case (state)
	reset:
      out = 3'b0;
   add:
     out = 3'b1;
	no_add:
  	  out = 3'b0;
	sl:
	  out = 3'b100;
	sr:
	  out = 3'b010;
	default out = 3'b0;
	endcase
  end
  assign w = (multiplier == 32'b0) ? 1'b1 : 1'b0;
  endmodule
  
  