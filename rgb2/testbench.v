module testbench();

reg CLK;
wire [31:0] Out,O_itf1, Om1, Oc1;
wire [7:0] itf1;
wire [10-1:0] Out_reg;

initial begin
#0 CLK = 0;
end

always @(CLK) #20 CLK <= ~CLK;
all a1(.clk(CLK), 
       .out(Out),
       .o_itf1(O_itf1),
       .out_reg(Out_reg),
       .om1(Om1),
       .oc1(Oc1)
      );
endmodule
