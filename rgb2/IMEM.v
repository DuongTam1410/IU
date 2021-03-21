module IMEM (
	input [(5-1):0] addr,
	output reg [(16-1):0] q
);

	reg [16-1:0] rom[2**5-1:0];

	initial begin
		$readmemb("binary.txt", rom);
	end

	always @(addr) begin
		q = rom[addr];
	end
reg [7:0] A [0:15];
integer outfile2;
integer i;
initial begin
    //read the contents of the file A_hex.txt as hexadecimal values into memory "A".
    $readmemh("yy.txt",A);
    outfile2=$fopen("A_write_bin.txt","w");
for (i = 0; i < 16; i = i +1) begin
        $fdisplay(outfile2,"%b",A[i]);  //write as binary
    end 
    //once writing is finished, close all the files.
    $fclose(outfile2);
	 $stop;
end
endmodule