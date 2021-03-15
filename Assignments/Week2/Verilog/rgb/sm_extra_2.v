module sm_extra_2 (clk, reset, in, state, donee, out);


input clk, reset;
input [6:0] in;
output donee;
output [2:0] state;
output [31:0] out;

reg [2:0] state, nstate;

always @ (posedge clk or posedge reset) begin
   if (reset == 1)
	state = resett;
	else
   state = nstate;
	end

parameter resett = 3'b0;
parameter load   = 3'b1;
parameter compare = 3'd2;
parameter mul = 3'd3;
parameter done = 3'd4;
parameter wait_mul = 3'd5;	
	
always @ (state,i, done_mul) begin
  case (state)
  resett:
  nstate = load;
  load:
  nstate = compare;
  compare:
  if (i>0)
  nstate = mul;
  else
  nstate = done;
  mul:
  nstate = wait_mul;
  wait_mul:
  if(done_mul == 1'b1)
  nstate = compare;
  else
  nstate = wait_mul;
  done:
  nstate = done;
  default nstate = resett;
  endcase
  end
//kiem soat nhan 
wire reset_mul;
assign reset_mul = ((state == mul) | (state == wait_mul)) ? 1'b0 : 1'b1;
wire [47:0] muul;
wire [31:0] fn2_mul;  
wire done_mul;

mulFP kgkgk (clk, in2, 32'b01000000001011011111100001010100 , fn2_mul, muul, done_mul, reset_mul);

//kiem soat in
reg [31:0] haha;

wire [31:0] in2, in3;
assign in2 = ((state == load) | (i == in -1'b1)) ? 32'b00111111100000000000000000000000 : in3;
assign ink = ((done_mul == 1'b1) & (reset_mul == 1'b0)) ? fn2_mul : k;
reg [31:0] k;
wire [31:0] ink;
always @ (posedge clk) begin
  k = ink;
  end
assign in3 = ((state == mul) | (state == wait_mul)) ? k : haha;
always @ (posedge clk) begin
    haha = in2;
	 end
//kiem soat i
wire [6:0] in_i, i2;
assign in_i = (state == load) ? in : i2;
assign i2 = (state == compare) ? (i-1'b1) : i;
reg [6:0] i;

always @(posedge clk) begin
   i = in_i;
    end	
assign out = (state == done) ? haha : 32'b0;
assign donee = (state == done) ? 1'b1 : 1'b0;	

endmodule