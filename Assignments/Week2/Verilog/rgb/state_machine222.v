module state_machine222 (clk,i, state, done_div, done_mul1, done_mul2,resetD, resetM1, resetM2);
output resetD, resetM1, resetM2;
input [4:0] i;
input done_div, done_mul1, done_mul2;
input clk;
output [3:0] state;

parameter reset = 4'b0;
parameter load = 4'b1;
parameter compare = 4'd2;
parameter convter = 4'd3;
parameter div1 = 4'd4;
parameter mul1 = 4'd5;
parameter mul2 = 4'd6;
parameter add = 4'd7;
parameter done = 4'd8;
parameter wait_div = 4'd9;
parameter wait_mul1 = 4'd10;
parameter wait_mul2 = 4'd11;
parameter p1= 4'd12;
parameter p2 = 4'd13;


reg [3:0] state, nstate;
always @(posedge clk) begin
   state = nstate; 
   end
always @(state,i, done_div, done_mul1, done_mul2) begin
   case (state)
	reset:
	nstate = load;
	load:
	nstate = compare;
	compare:
	if(i > 2)
	nstate = convter;
	else
	nstate = done;
	convter:
	nstate = div1;
	div1:
	if(done_div)
	nstate = mul2;
	else 
	nstate = wait_div;
	mul1:
	if(done_mul1)
	nstate = mul2;
	else 
	nstate = wait_mul1;
	mul2:
	if (done_mul2)
	nstate = add;
	else
	nstate = wait_mul2;
	add:
	nstate = compare;
	done:
	nstate = done;
	wait_div:
	if (done_div)
	nstate = mul1;
	else 
	nstate = wait_div;
	wait_mul1:
	if (done_mul1)
	nstate = mul2;
	else 
	nstate = wait_mul1;
	wait_mul2:
	if (done_mul2)
	nstate = add;
	else 
	nstate = wait_mul2;

	default nstate = reset;
	endcase
	end
assign resetD = ((state == div1) | (state == wait_div)) ? 1'b0 : 1'b1;
assign resetM1 = ((state == mul1) | (state == wait_mul1)) ? 1'b0 : 1'b1;
assign resetM2 = ((state == mul2) | (state == wait_mul2)) ? 1'b0 : 1'b1;	

endmodule