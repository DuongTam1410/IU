  
`timescale 1ns/1ps
module tbb();
  parameter N = 500*500;
  reg clk;
  reg [7:0] r;
  reg [7:0] g;
  reg [7:0] b;
  reg [7:0] Red[N-1:0];
  reg [7:0] Green[N-1:0];
  reg [7:0] Blue[N-1:0];
  reg [31:0] Result;
  wire [31:0] out;
  integer i;
initial begin
  $readmemb("red.txt", Red);
  $readmemb("green.txt", Green);
  $readmemb("blue.txt", Blue);
  Result = $fopen("Result");
  clk = 1'b0;
  #6;
    for (i = 0; i <= N; i = i + 1 ) begin
    r = Red[i];
    g = Green[i];
    b = Blue [i];
    $fdisplay(Result,"%b",out);
    #60;
  end
  $finish;
end
    always @ (clk) begin
      #5;
      clk <= !clk;
    end 
all2 jis (clk,r,g,b, out);
endmodule
