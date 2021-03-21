module tbb2 ();
  reg [31:0] r,g,b;
  wire [31:0] out;
  reg [31:0] red [500*500-1:0];
  reg [31:0] green [500*500-1:0];
  reg [31:0] blue [500*500-1:0];
  reg [31:0] producthihi;

  integer i;
initial begin
  $readmemb("Imgfloatred.txt", red);
  $readmemb("Imgfloatgreen.txt", green);
  $readmemb("Imgfloatblue.txt", blue);
  producthihi = $fopen("producthihi");
  #6;
for (i = 0; i <= 100*100; i = i + 1 ) 
  begin
    r = red[i];
    g = green[i];
    b = blue [i];
    $fdisplay(producthihi,"%b",out);
    #60;
  end
  $finish;
end
all3 haha (r, g, b, out);
endmodule