module ct_div_test22 (clk, inR, inD, out_quotient, donee, reset, state);
input clk;
output [2:0] state;

parameter load = 3'd0;
parameter comparee = 3'b1;
parameter shiftD = 3'd2;
parameter shifQ = 3'd3;
parameter shiftQAdd = 3'd5;
parameter RsubD = 3'd4;
parameter done =  3'd6;
parameter stop = 3'd7;
reg [2:0] state, nstate;

// quotient
wire start;
wire [1:0] sQ;
output [49:0] out_quotient;
wire [49:0] out_quotient;
multiplier_q50  jjzzzz(clk, start, sQ, out_quotient);  //****
assign start =((state == load) & (reset == 1'b0)) ? 1'b1 : 1'b0;
assign sQ[0] = (state == shifQ) ? 1'b1 : 1'b0;
assign sQ[1] = (state == shiftQAdd) ? 1'b1 : 1'b0;  

//divisor
input [24:0] inD;

wire [99:0]  inD2;
assign inD2 = {inD,75'b0};
wire sD;

wire [99:0] D;
multiplicand_d100  ghhhhkkk (clk, start, inD2, sD, D); //****
assign sD = (state == shiftD) ? 1'b1 : 1'b0;
//remainder
input [24:0] inR;
wire [99:0] R;
wire [99:0] inR2;
assign inR2 = {50'b0,inR,25'b0};
wire [99:0] in_R, in_R2;
register_100bits dsas (clk, in_R, R);          //****
assign in_R = (start) ? inR2 : in_R2;
assign in_R2 = (state == RsubD) ? (R - D) : R;

//done
output donee;
wire donee;
assign donee = (state == done) ? 1'b1 : 1'b0;  

always @(state, D, R, count) begin
  case (state)
  load:
  nstate = stop;
  stop:
  nstate = comparee;
  comparee:
  if (R < D)
  nstate = shifQ;
  else
  nstate = RsubD;
  RsubD:
  nstate = shiftQAdd;
  shifQ:
  nstate = shiftD;
  shiftQAdd:
  nstate = shiftD;
  shiftD:
  if (count == 101)
  nstate = done;
  else
  nstate = comparee;
  done:
  nstate = done;
  default nstate = load;
  endcase
  end
always @(posedge clk, posedge reset) begin
  if(reset)
  count <= 1'b0;
  else
   count <= in_count;
  end
  assign in_count = (state == shiftD) ? (count + 1'b1) : count;
 reg[7:0] count;
 wire [7:0] in_count;
input reset;
always @(posedge clk, posedge reset) begin
if (reset)
state <= load;
else
state <= nstate;
end
endmodule