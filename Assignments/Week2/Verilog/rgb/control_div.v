module control_div (clk ,remainder , state, alu, Q, D, w, load);
output [2:0] state;
output [1:0] alu;
input clk;
input [63:0] remainder;
output w, D,  load;
output [1:0] Q;

reg [1:0] Q;
parameter nhap = 3'b1;
parameter b1 = 3'd2;
parameter b2 = 3'd3;
parameter b3 = 3'd4;

wire w;
reg D, load;
reg [1:0] alu;



reg [2:0] state, nstate;

always @(state, remainder) begin
   case (state)
	nhap:
	nstate = b1;
	b1:
	nstate = b2;
	b2: 
	nstate = b3;
	b3:
	nstate = b1;
	default nstate = nhap;
	endcase
	end
always @(posedge clk) begin 
 state = nstate;
 end
always @(state, remainder) begin
   case (state)
	b2: 
   if(remainder == 1'b1)
	Q = 2'b1;
	else
	Q = 2'b11;
	default Q = 2'b0;
	endcase
	end
 
always @(state, remainder) begin
   case (state)
	b1:
	alu = 2'b10;
	b2: 
	if(remainder == 1'b1)
	alu = 2'b1;
	else
	alu = 2'b0;

	default alu = 2'b0;
	endcase
	end
	
	always @(state) begin
   case (state)

	b3:
	D = 1'b1;
	default D = 1'b0;
	endcase
	end
	always @(state) begin
   case (state)
	nhap:
	load = 1'b1;
	default load = 1'b0;
	endcase
	end

	assign w = (remainder == 1'b0) ? 1'b1 : 1'b0;
endmodule 
