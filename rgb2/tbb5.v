module tbb5 ();
  reg [31:0] r,g,b;
  wire [31:0] out, vr, vg, vb;
  reg [31:0] red [500*500-1:0];
  reg [31:0] green [500*500-1:0];
  reg [31:0] blue [500*500-1:0];
  reg [31:0] product2222;
   
  integer i;
initial begin
  $readmemb("Imgred.txt", red);
  $readmemb("Imggreen.txt", green);
  $readmemb("Imgblue.txt", blue);
  product2222 = $fopen("product2222");
  #10;
for (i = 0; i <= 500*500; i = i + 1 ) 
  begin
    r = red[i];
    g = green[i];
    b = blue [i];
    $fdisplay(product2222,"%b",out);
    #80;
  end
  $finish;
end
all4 haha2 (r, g, b, out, vr, vg, vb);
endmodule