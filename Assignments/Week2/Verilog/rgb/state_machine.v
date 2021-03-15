module state_machine(clk, i,w1, w2, donee, state, resetD, resetM1, resetM2);

input [4:0] i;
output resetD, resetM1, resetM2;
wire resetD, resetM1, resetM2;
input clk, w1, w2, donee;
output [2:0] state;


reg [2:0] state, nstate;

parameter importt = 3'b0;
parameter decrease = 3'b1;
parameter mul1 = 3'd2;
parameter mul2 = 3'd3;
parameter div = 3'd4;
parameter add = 3'd5;
parameter compare = 3'd6;
parameter done = 3'd7;
always @(posedge clk) begin
     state = nstate;
	 end
always @(i, state,w1,w2, donee) begin
  case(state)
  importt:
  nstate = decrease;
  decrease:
  if(i == 0)
    nstate = done;
  else 
    nstate = div;
	div:
	if(donee)
	nstate = mul1;
	else
	nstate = div;
	mul1:
	if(w1)
	nstate = mul2;
	else
	nstate = mul1;
	mul2:
	if (w2)
	nstate = add;
	else 
	nstate = mul2;
	add:
	nstate = compare;
	compare:
	if(i>1'b0)
	nstate = decrease;
	else
	nstate = done;
   done:
	nstate = done;
  default nstate = importt;
  endcase

  end
   assign resetD = (state == div) ? 1'b0 : 1'b1;
 assign resetM1 = ((state == mul1)) ? 1'b0 : 1'b1; 
 assign resetM2 = (state == mul2) ? 1'b0 : 1'b1;
  endmodule