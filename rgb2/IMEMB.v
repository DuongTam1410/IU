module IMEMB (
	input [(9):0] addr,
	output reg [(7):0] q
);

	reg [7:0] rom[32*32-1:0];

	initial begin
		$readmemb("blue.txt", rom);
	end

	always @(addr) begin
		q = rom[addr];
	end

endmodule