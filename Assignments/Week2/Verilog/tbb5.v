module tbb5 ();
  reg [31:0] r,g,b;
  wire [31:0] out;
  reg [31:0] red [500*500-1:0];
  reg [31:0] green [500*500-1:0];
  reg [31:0] blue [500*500-1:0];
  reg [31:0] Verilog;
   
  integer i;
initial begin
  $readmemb("Imgred.txt", red);
  $readmemb("Imggreen.txt", green);
  $readmemb("Imgblue.txt", blue);
  Verilog = $fopen("Verilog.txt");
  #10;
for (i = 0; i <= 500*500; i = i + 1 ) 
  begin
    r = red[i];
    g = green[i];
    b = blue [i];
    $fdisplay(Verilog,"%b",out);
    #80;
  end
  $finish;
end
all3 haha2 (r, g, b, out);
endmodule