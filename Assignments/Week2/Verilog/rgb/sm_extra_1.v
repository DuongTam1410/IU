module sm_extra_1 (clk, reset, in, state, i, temp2, h, donee);
input clk, reset;
input [31:0] in;
output [31:0] temp2;
output [31:0] i;
output [6:0] h;
output donee;
output [2:0] state;


reg [2:0] state, nstate;

// kiem soat i
reg [31:0] i;
wire [31:0] in2, in3;
assign in2 = (state == load) ? in : in3;
assign in3 = (state == plus) ? (i4) : i;

wire [31:0] i4;
cong_32bit aaaa(i,32'b10111111100000000000000000000000, i4);

always @(posedge clk) begin
   i = in2;
	end

always @ (posedge clk or posedge reset) begin
   if (reset == 1)
	state = resett;
	else
   state = nstate;
	end
//kiem soat h
wire [6:0] in_h;
reg [6:0] h;
always @ (posedge clk) begin
  h = in_h;
	end
assign in_h = (state == plus)  ? (h+1'b1) : h;

// kiem soat done 
assign temp2 = (state == done) ? i : 32'b0;
		
	
	
parameter resett = 3'b0;
parameter load  = 3'b1;
parameter compare = 3'd2;
parameter plus = 3'd3;
parameter done = 3'd4;	
	
always @(state, i) begin
  case (state)
  resett:
  nstate = load;
  load:
  nstate = compare;
  compare:
  if (i > 32'b00111111100000000000000000000000)
  nstate = plus;
  else
  nstate = done;
  plus:
  nstate = compare;
  done:
  nstate = done;
  default nstate = resett;
  endcase
  end
  
wire donee;
assign donee = (state == done) ? 1'b1 : 1'b0;

endmodule