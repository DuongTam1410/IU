module test_string (clk, sum,dem, datain, i);
input clk;
output [4:0] i;
input [23:0] sum;
output datain;
output [4:0] dem;

reg [4:0] dem;
reg [1:0] state, nstate;

reg datain;
parameter start = 2'b00;
parameter got0 = 2'b01;
parameter got1 = 2'b10;

always @(state or datain or i) begin
case (state)
   
   start:
	 if(datain)
     nstate = got1;
	 else
     nstate = got0;
	got0:
     if(datain)
     nstate = got1;
	 else
     nstate = got0;
	got1:
     nstate = start;
	 default nstate = start;
	endcase
end	

always @(state or i) begin
case (state)
   
	got1:
     dem = i;
	 default dem = 1'b0;
	endcase
end

always @(posedge clk) begin
   state = nstate;
	end

reg [4:0] i;

always @(sum) begin 
for (i = 5'd22; i > 0; i= i-5'd1) 
	datain = sum[i];
	end
endmodule